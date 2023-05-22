unit Recebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  AdvGlowButton, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  inifiles, MemDS, DBAccess, Uni;

type
  TRecebimento = record
    Confirma: Boolean;
    ValorPago, Troco, Desconto, Acrescimo: Double;
    CancelaImpressaoCozinha: Boolean
  end;

  TfrmRecebimento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnDinheiro: TAdvGlowButton;
    btnCartaoCR: TAdvGlowButton;
    btnCheque: TAdvGlowButton;
    Panel6: TPanel;
    Panel7: TPanel;
    pnTroco: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    pnTotal: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    pnDesconto: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    pnAcrescimo: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    pnSaldo: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Image1: TImage;
    pnDinheiro: TPanel;
    Image2: TImage;
    Panel33: TPanel;
    pnRecebido: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    pnTEF: TPanel;
    Image3: TImage;
    pnConvenio: TPanel;
    Image4: TImage;
    pnCrediario: TPanel;
    Image5: TImage;
    pnCartaoDebito: TPanel;
    Image6: TImage;
    pnCartaoCredito: TPanel;
    Image7: TImage;
    pnChque: TPanel;
    Panel44: TPanel;
    btnFinalizar: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    Action10: TAction;
    Action11: TAction;
    Panel45: TPanel;
    lCouvert: TLabel;
    lTaxa: TLabel;
    vGarcom: TLabel;
    vCouvert: TLabel;
    edCancelaImpressaoCozinha: TCheckBox;
    btnDesconto: TAdvGlowButton;
    btnAcrescimo: TAdvGlowButton;
    btnConvenio: TAdvGlowButton;
    btnCartaoDE: TAdvGlowButton;
    btnCrediario: TAdvGlowButton;
    btnTef: TAdvGlowButton;
    procedure Action11Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
  private
    { Private declarations }
    RecDinheiro, RecCrediario, RecConvenio, RecCartaoCR, RecCartaoDE, RecCheque, RecTEF, Desconto, Acrescimo, Recebido, Troco, TotalReceber, NovoAcrescimo, Saldo: Double;
    Continua: Boolean;
    procedure MostraDados;
    procedure LancaAutomatico(Tipo:string;Valor:Double);
  public
    { Public declarations }
    NovoDesconto: Double;
  end;

function EfetuaRecebimento(ValorTotal, ValorCouvert, ValorGarcom, ValorDesconto, ValorAcrescimo: Double): TRecebimento;

var
  frmRecebimento: TfrmRecebimento;

implementation

uses
  Receber_Valor, venda, venda_crediario, principal, uBandeira, pcnConversao,
  System.Math, venda_convenio, senha_supervisor, modulo, uTEF;

{$R *.dfm}

function EfetuaRecebimento(ValorTotal, ValorCouvert, ValorGarcom, ValorDesconto, ValorAcrescimo: Double): TRecebimento;
begin
  Application.CreateForm(TfrmRecebimento, frmRecebimento);
  Try
    with frmRecebimento do
    begin
      TotalReceber := ValorTotal;
      Continua := False;
      if ValorCouvert > 0 then begin
        lCouvert.Visible := True;
        vCouvert.Visible := True;
        vCouvert.Caption := 'R$ ' + FormatFloat('#,##0.00', ValorCouvert);
      end;
      if ValorGarcom > 0 then begin
        lTaxa.Visible := True;
        vGarcom.Visible := True;
        vGarcom.Caption := 'R$ ' + FormatFloat('#,##0.00', ValorGarcom);
      end;
      pnTotal.Caption := 'R$ ' + FormatFloat('#,##0.00', ValorTotal);
      pnSaldo.Caption := 'R$ ' + FormatFloat('#,##0.00', ValorTotal);
      pnDesconto.Caption := 'R$ ' + FormatFloat('#,##0.00', 0);
      pnAcrescimo.Caption := 'R$ ' + FormatFloat('#,##0.00', ValorAcrescimo);
      Acrescimo := ValorAcrescimo;
      Desconto := ValorDesconto;
      NovoDesconto := 0;
      NovoAcrescimo := 0;
      Saldo := ValorTotal;
      if (LancaRecebimento.ValorDesconto > 0) then
        LancaAutomatico('D',LancaRecebimento.ValorDesconto);
      if (LancaRecebimento.ValorAcressimo > 0) then
        LancaAutomatico('A',LancaRecebimento.ValorAcressimo);
      ShowModal;
      Result.Confirma := Continua;
      Result.Troco := Troco;
      Result.CancelaImpressaoCozinha := edCancelaImpressaoCozinha.Checked;
      Result.ValorPago := Recebido;
      Result.Desconto := NovoDesconto;
      Result.Acrescimo := NovoAcrescimo;
    end;
  Finally
    FreeAndNil(frmRecebimento);
  End;

end;

procedure TfrmRecebimento.Action10Execute(Sender: TObject);
begin
  if Saldo > 0 then begin
    Application.MessageBox('Existe saldo a receber!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;
  frmVenda.ACBrSATExtratoFortes1.Site := 'vendedor = ' + sVendedorNome;
  Continua := True;
  Close;
end;

procedure TfrmRecebimento.Action11Execute(Sender: TObject);
begin
  Continua := False;
  Close;
end;

procedure TfrmRecebimento.Action1Execute(Sender: TObject);
var
  Valor: tValorReceber;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('N�o existe mais saldo para receber!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;
  RecebeCupomCredito.id := -1;
  RecebeCupomCredito.Cupom := '';
  RecebeCupomCredito.Valor := 0;

  if not Assigned(frmReceber_Valor) then
    Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

  frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
  Valor := RetornaValorRecebimento(Saldo, True, tmDinheiro, tvRecebimento);

  if Valor.Confirma then
  begin
    RecDinheiro := Roundto(RecDinheiro + Valor.Valor, -2);

    Troco := Roundto(Saldo - Valor.Valor, -2);
    if Troco < 0 then
    begin
      Troco := Troco * (-1);
      Saldo := 0;
    end
    else
    begin
      Troco := 0;
      Saldo := Roundto(Saldo - Valor.Valor, -2);
    end;

    Recebido := Recebido + Valor.Valor;
    with frmVenda do begin
      cdsRecebimento.Append;
      cdsRecebimentoTipo.AsString := StRecDinheiro;
      cdsRecebimentovalor.AsFloat := Valor.Valor;
      if RecebeCupomCredito.id > 0 then begin
        cdsRecebimentoCupomCreditoID.AsInteger := RecebeCupomCredito.id;
        cdsRecebimentoCupomCreditoCupom.AsString := RecebeCupomCredito.Cupom;
        cdsRecebimentoCupomCreditoValor.AsFloat := RecebeCupomCredito.Valor;
      end;
      cdsRecebimento.Post;
    end;
  end;

  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action2Execute(Sender: TObject);
var
  Valor: tValorReceber;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('N�o existe mais saldo para receber!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;

  if not Assigned(frmReceber_Valor) then
    Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

  frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
  Valor := RetornaValorRecebimento(Saldo, False, tmCrediario, tvRecebimento);

  if Valor.Confirma then begin
    with frmVenda do begin
      bContinua := False;
      frmVenda_Crediario := TfrmVenda_Crediario.Create(Self);
      frmVenda_Crediario.lbTotal.Caption := 'R$ ' + FormatFloat('#,##0.00',rTotal_Venda);
      frmVenda_Crediario.lbTotalParcelar.Caption := 'R$ ' + FormatFloat('#,##0.00',Valor.Valor);
      frmVenda_Crediario.lbValorParcela.Caption := 'R$ ' + FormatFloat('#,##0.00',0);
      frmVenda_Crediario.ValorReceber := Valor.Valor;
      if sConsumidor_CPF <> '' then
        frmVenda_Crediario.edCliente.Text := sConsumidor_CPF;
      frmVenda_Crediario.ShowModal;
      if not bContinua then begin
        Exit;
      end;
      bCadastra_Crediario := True;
      rvalor_total_crediario := Valor.Valor;
      cdsRecebimento.Append;
      cdsRecebimentoTipo.AsString := StRecCrediario;
      cdsRecebimentovalor.AsFloat := Valor.Valor;
      cdsRecebimentocliente.AsString := sCli_codigo;
      cdsRecebimentoParcelas.AsInteger := iCrediario_prestacao;
      cdsRecebimento.Post;
    end;
    RecCrediario := Roundto(RecCrediario + Valor.Valor, -2);
    Saldo := Roundto(Saldo - Valor.Valor, -2);
    Recebido := Roundto(Recebido + Valor.Valor, -2);
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action3Execute(Sender: TObject);
var
  Valor: tValorReceber;
  calConvenio: Double;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('N�o existe mais saldo para receber!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;
  with frmVenda do begin
    bContinua := False;
    frmVenda_convenio := TfrmVenda_convenio.Create(Self);
    if sConsumidor_CPF <> '' then
      frmVenda_convenio.ed_cred_cliente.Text := sConsumidor_CPF;
    frmVenda_convenio.ShowModal;
    if not bContinua then
      Exit;
    calConvenio := 0;
    if frmVenda_convenio.DescontoConvenio > 0 then begin
      calConvenio := RoundTo((TotalReceber * frmVenda_convenio.DescontoConvenio) / 100, -2);
      TotalReceber := RoundTo(TotalReceber - calConvenio, -2);
      NovoDesconto := RoundTo(NovoDesconto + calConvenio, -2);
      Saldo := TotalReceber;
    end;

    if not Assigned(frmReceber_Valor) then
      Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

    frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
    Valor := RetornaValorRecebimento(Saldo, False, tmConvenio, tvRecebimento);

    if Valor.Confirma then begin
      rvalor_total_convenio := Valor.Valor;
      bCadastra_Convenio := True;
      cdsRecebimento.Append;
      cdsRecebimentoTipo.AsString := StRecConvenio;
      cdsRecebimentovalor.AsFloat := Valor.Valor;
      cdsRecebimentocliente.AsString := sCli_codigo;
      cdsRecebimentoParcelas.AsInteger := 1;
      cdsRecebimento.Post;
      RecConvenio := Roundto(RecConvenio + Valor.Valor, -2);
      Saldo := Roundto(Saldo - Valor.Valor, -2);
      Recebido := Roundto(Recebido + Valor.Valor, -2);
    end
    else begin
      TotalReceber := RoundTo(TotalReceber + calConvenio, -2);
      Saldo := TotalReceber;
      NovoDesconto := NovoDesconto - calConvenio;
    end;
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action4Execute(Sender: TObject);
var
  Valor: tValorReceber;
  Banceira: TBaneira;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('N�o existe mais saldo para receber!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;

  if not Assigned(frmReceber_Valor) then
    Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

  frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
  Valor := RetornaValorRecebimento(Saldo, False, tmCartaoCredito, tvRecebimento);

  if Valor.Confirma then begin
    Banceira := RetBandeira(Valor.Valor, tcCredito);
    if Banceira.Numero > 0 then begin
      with frmVenda do begin
        cdsRecebimento.Append;
        cdsRecebimentoTipo.AsString := StRecCartaoCR;
        cdsRecebimentoParcelas.AsInteger := Banceira.Parcela.Parcelas;
        cdsRecebimentoBanco.AsInteger := Banceira.Numero;
        cdsRecebimentobandeira.AsString := BandeiraCartaoToDescStr(Banceira.Bandeira);
        cdsRecebimentovalor.AsFloat := Valor.Valor;
        cdsRecebimento.Post;
      end;
      RecCartaoCR := Roundto(RecCartaoCR + Valor.Valor, -2);
      Saldo := Roundto(Saldo - Valor.Valor, -2);
      Recebido := Roundto(Recebido + Valor.Valor, -2);
      if not CartaoNaoInterfere then
        if (TipoDeCupom <> tcSimples) then
          frmPrincipal.TipoImpressora := SemImpressora;
      frmVenda.CorEditTotaL;
    end;
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action5Execute(Sender: TObject);
var
  Valor: tValorReceber;
  Banceira: TBaneira;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('N�o existe mais saldo para receber!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;

  if not Assigned(frmReceber_Valor) then
    Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

  frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
  Valor := RetornaValorRecebimento(Saldo, False, tmCartaoDebito, tvRecebimento);

  if Valor.Confirma then begin
    Banceira := RetBandeira(Valor.Valor, tcDebito);
    if Banceira.Numero > 0 then begin
      with frmVenda do begin
        cdsRecebimento.Append;
        cdsRecebimentoTipo.AsString := StRecCartaoDE;
        cdsRecebimentoParcelas.AsInteger := Banceira.Parcela.Parcelas;
        cdsRecebimentoBanco.AsInteger := Banceira.Numero;
        cdsRecebimentobandeira.AsString := BandeiraCartaoToDescStr(Banceira.Bandeira);
        cdsRecebimentovalor.AsFloat := Valor.Valor;
        cdsRecebimento.Post;
      end;
      RecCartaoDE := Roundto(RecCartaoDE + Valor.Valor, -2);
      Saldo := Roundto(Saldo - Valor.Valor, -2);
      Recebido := Roundto(Recebido + Valor.Valor, -2);
      if not CartaoNaoInterfere then
        if (TipoDeCupom <> tcSimples) then
          frmPrincipal.TipoImpressora := SemImpressora;
      frmVenda.CorEditTotaL;
    end;
  end;
  MostraDados;
  if Saldo = 0 then
    btnFinalizar.SetFocus;
end;

procedure TfrmRecebimento.Action7Execute(Sender: TObject);
var
  Valor: tValorReceber;
  I: integer;
  qtdei: integer;
  Banceira: TBaneira;
  ret:tRetTef;
  podefinalizar: boolean;
begin
  if Saldo <= 0 then begin
    Application.MessageBox('N�o existe mais saldo para receber!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;
  podefinalizar:=false;

  if not Assigned(frmReceber_Valor) then
    Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

  frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
  Valor := RetornaValorRecebimento(Saldo, True, tmTEF, tvRecebimento);

  if Valor.Confirma then
  begin
    try
      ActionList1.State := asSuspended;
      try
        if Valor.Valor <= 0 then
          raise Exception.Create('Valores de pagamento n�o deve ser Zero');
        Banceira := RetBandeira(Valor.Valor, tcDebito);
        if Banceira.Numero > 0 then begin
          with frmVenda do begin
            if TipoDeCupom <> tcPafECF then
            begin
              ret := frmTEF.RecebeTEF(Valor.Valor);

              if ret.Confirmado then
              begin
                {if frmTef.cpPosPrinter.Ativo then
                begin
                  frmTef.cpPosPrinter.Imprimir;
                  frmTef.cpPosPrinter.Desativar;
                end;
                frmTef.cpPosPrinter.ativar;
                frmTef.cpPosPrinter.BUFFER.Add('</ae>');
                frmTef.cpPosPrinter.BUFFER.Add('PAGAMENTO CONFIRMADO');
                frmTef.cpPosPrinter.BUFFER.Add('====================');
                frmTef.cpPosPrinter.BUFFER.Add(ret.TipoDeCartcao) ;
                frmTef.cpPosPrinter.BUFFER.Add(bandeiraCartaoToDescStr(Banceira.Bandeira));
                frmTef.cpPosPrinter.BUFFER.Add('Numero: '+inttostr(Banceira.Numero ));
                frmTef.cpPosPrinter.BUFFER.Add('Valor: R$ '+formatfloat('###,###,##0.00',valor.valor));
                frmTef.cpPosPrinter.BUFFER.Add('Parcelas: '+inttostr(ret.Parcelas));
                frmTef.cpPosPrinter.BUFFER.Add('Autoriza��o: '+ret.CodigoAutorizacao);
                frmTef.cpPosPrinter.BUFFER.Add('</pular_linhas>');
                frmTef.cpPosPrinter.BUFFER.Add('</corte_parcial>');
                frmTef.cpPosPrinter.Imprimir;}

                cdsRecebimento.Append;
                cdsRecebimentoTipo.AsString := ret.TipoDeCartcao;
                cdsRecebimentovalor.AsFloat := Valor.Valor;
                cdsRecebimentoParcelas.AsInteger := ret.Parcelas;
                cdsRecebimentoBanco.AsInteger := Banceira.Numero;
                cdsRecebimentotef_cnpj.AsString := Banceira.cnpj;
                cdsRecebimentobandeira.AsString := BandeiraCartaoToDescStr(Banceira.Bandeira);
                cdsRecebimentotef_codigo_autorizacao.AsString := ret.CodigoAutorizacao;
                cdsRecebimentocod_adm_sat.AsString := Banceira.cod_adm_sat;
                cdsRecebimentoRec1.AsString:=Ret.Rec1;
                cdsRecebimentoRec2.AsString:=Ret.Rec2;
                cdsRecebimento.Post;
                podefinalizar:=true;
              end;
            end
            else
            begin
              cdsRecebimento.Append;
              cdsRecebimentoTipo.AsString := 'TEF';
              cdsRecebimentovalor.AsFloat := Valor.Valor;
              cdsRecebimentoParcelas.AsInteger := 0;
              cdsRecebimentoBanco.AsInteger := Banceira.Numero;
              cdsRecebimentotef_cnpj.AsString := Banceira.cnpj;
              cdsRecebimentobandeira.AsString := BandeiraCartaoToDescStr(Banceira.Bandeira);
              cdsRecebimentotef_codigo_autorizacao.AsString := '';
              cdsRecebimentocod_adm_sat.AsString := Banceira.cod_adm_sat;
              cdsRecebimento.Post;
              podefinalizar:=true;
            end;
          end;
        end;
      except
        ActionList1.State := asNormal;
        Exit;
      end;
    finally
      ActionList1.State := asNormal;
    end;

    if podefinalizar then
    begin
      RecTEF := Roundto(RecTEF + Valor.Valor, -2);
      Saldo := Roundto(Saldo - Valor.Valor, -2);
      Recebido := Recebido + Valor.Valor;

      if Saldo < 0 then
      begin
        Troco := -Saldo;
        Saldo := 0;
      end;
      MostraDados;
      if Saldo = 0 then
        btnFinalizar.Click;
    end
    Else
      Application.MessageBox('Opera��o n�o conlu�da!', 'Aten��o!', MB_ICONINFORMATION);
  end;
  //ActionList1.State := asNormal;
end;

procedure TfrmRecebimento.Action8Execute(Sender: TObject);
var
  Valor: tValorReceber;
  rd: Double;
begin
  if Recebido > 0 then begin
    Application.MessageBox('N�o � permitido dar desconto ap�s lan�amento de recebimento!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;
  TotalReceber := RoundTo(TotalReceber + NovoDesconto, -2);
  Saldo := TotalReceber;

  if not Assigned(frmReceber_Valor) then
    Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

  frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
  Valor := RetornaValorRecebimento(Saldo, True, tmDesconto, tvDesconto);

  if not Valor.Confirma then begin
    TotalReceber := RoundTo(TotalReceber - NovoDesconto, -2);
    Saldo := TotalReceber;
    Exit;
  end;
  if rDesconto_maximo > 0 then begin
    rd := RoundTo(((Valor.Valor + Desconto) / (rTotal_Venda + Desconto)) * 100, -2);
    if rd > rDesconto_maximo then begin
      frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
      frmSenha_Supervisor.ValidaDesconto := True;
      frmSenha_Supervisor.showmodal;
      if not bSupervisor_autenticado then begin
        TotalReceber := RoundTo(TotalReceber - NovoDesconto, -2);
        Saldo := TotalReceber;
        Exit;
      end;
    end;
  end;
  NovoDesconto := Valor.Valor;
  TotalReceber := RoundTo(TotalReceber - NovoDesconto, -2);
  Saldo := TotalReceber;
  MostraDados;
end;

procedure TfrmRecebimento.Action9Execute(Sender: TObject);
var
  Valor: tValorReceber;
  rd: Double;
begin
  if Recebido > 0 then begin
    Application.MessageBox('N�o � permitido lan�ar Acr�scimo ap�s lan�amento de recebimento!', 'Aten��o!', MB_ICONINFORMATION);
    Exit;
  end;
  TotalReceber := RoundTo(TotalReceber + NovoAcrescimo, -2);
  Saldo := TotalReceber;

  if not Assigned(frmReceber_Valor) then
    Application.CreateForm(TfrmReceber_Valor,frmReceber_Valor);

  frmReceber_Valor.TrocoMaximo := frmModulo.qrConfigPDVTROCO_MAXIMO.Value;
  Valor := RetornaValorRecebimento(Saldo, True, tmAcrescimo, tvAcrescimo);

  if not Valor.Confirma then begin
    TotalReceber := RoundTo(TotalReceber - NovoAcrescimo, -2);
    Saldo := TotalReceber;
    Exit;
  end;
  NovoAcrescimo := Valor.Valor;
  TotalReceber := RoundTo(TotalReceber + NovoAcrescimo, -2);
  Saldo := TotalReceber;
  MostraDados;
end;

procedure TfrmRecebimento.FormCreate(Sender: TObject);
begin
  RecDinheiro := 0;
  RecCrediario := 0;
  RecConvenio := 0;
  RecCartaoCR := 0;
  RecCartaoDE := 0;
  RecCheque := 0;
  RecTEF := 0;
  Desconto := 0;
  Acrescimo := 0;
  Recebido := 0;
  Troco := 0;
  TotalReceber := 0;

  frmModulo.qrConfigPDV.Close;
  frmModulo.qrConfigPDV.Open;
end;

procedure TfrmRecebimento.FormShow(Sender: TObject);
begin
  edCancelaImpressaoCozinha.Visible := bImpressaoCozinha;
  Action7.Enabled := TEF_Ativo;
end;

procedure TfrmRecebimento.LancaAutomatico(Tipo: string; Valor: Double);
var
  rd: Double;
begin
  if Tipo = 'D' then begin
    Saldo := TotalReceber;
    if rDesconto_maximo > 0 then begin
      rd := RoundTo(((Valor + Desconto) / (rTotal_Venda + Desconto)) * 100, -2);
      if rd > rDesconto_maximo then begin
        frmSenha_Supervisor := TfrmSenha_Supervisor.create(Self);
        frmSenha_Supervisor.ValidaDesconto := True;
        frmSenha_Supervisor.showmodal;
        if not bSupervisor_autenticado then begin
          TotalReceber := RoundTo(TotalReceber - NovoDesconto, -2);
          Saldo := TotalReceber;
          Exit;
        end;
      end;
    end;
    NovoDesconto := Valor;
    TotalReceber := RoundTo(TotalReceber - NovoDesconto, -2);
    Saldo := TotalReceber;
    MostraDados;
  end else begin
    Saldo := TotalReceber;
    NovoAcrescimo := Valor;
    TotalReceber := RoundTo(TotalReceber + NovoAcrescimo, -2);
    Saldo := TotalReceber;
    MostraDados;
  end;
end;

procedure TfrmRecebimento.MostraDados;
begin
  pnDinheiro.Caption := 'R$ ' + FormatFloat('#,##0.00', RecDinheiro);
  pnCrediario.Caption := 'R$ ' + FormatFloat('#,##0.00', RecCrediario);
  pnConvenio.Caption := 'R$ ' + FormatFloat('#,##0.00', RecConvenio);
  pnCartaoCredito.Caption := 'R$ ' + FormatFloat('#,##0.00', RecCartaoCR);
  pnCartaoDebito.Caption := 'R$ ' + FormatFloat('#,##0.00', RecCartaoDE);
  pnChque.Caption := 'R$ ' + FormatFloat('#,##0.00', RecCheque);
  pnTEF.Caption := 'R$ ' + FormatFloat('#,##0.00', RecTEF);

  pnDesconto.Caption := 'R$ ' + FormatFloat('#,##0.00', NovoDesconto);
  pnAcrescimo.Caption := 'R$ ' + FormatFloat('#,##0.00', NovoAcrescimo);
  pnRecebido.Caption := 'R$ ' + FormatFloat('#,##0.00', Recebido);
  pnSaldo.Caption := 'R$ ' + FormatFloat('#,##0.00', Saldo);
  pnTroco.Caption := 'R$ ' + FormatFloat('#,##0.00', Troco);
end;

end.

