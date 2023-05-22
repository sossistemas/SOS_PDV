unit FechamentoCego;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls, JvExMask,
  JvToolEdit, Vcl.Mask, RzEdit, Vcl.ExtCtrls, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, ACBrBase, ACBrEnterTab, Data.DB, MemDS, DBAccess, Uni;

type
  TfrmFechamentoCego = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label1: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ed_operador: TRzEdit;
    ed_data: TJvDateEdit;
    ed_ecf: TRzEdit;
    bt_cupom_encerrante: TButton;
    Panel2: TPanel;
    edDinheiro: TRzNumericEdit;
    Label5: TLabel;
    Label6: TLabel;
    edCheque: TRzNumericEdit;
    AdvSmoothExpanderPanel2: TAdvSmoothExpanderPanel;
    AdvGlowButton1: TAdvGlowButton;
    ACBrEnterTab1: TACBrEnterTab;
    query: TUniQuery;
    queryCAIXA_SITUACAO: TStringField;
    queryNUMCAIXA: TIntegerField;
    queryCAIXA_DATA_MOVTO: TDateField;
    edCartaoCredito: TRzNumericEdit;
    Label7: TLabel;
    edCartaoDebito: TRzNumericEdit;
    Label8: TLabel;
    Label9: TLabel;
    edConvenio: TRzNumericEdit;
    Label10: TLabel;
    edCrediario: TRzNumericEdit;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechamentoCego: TfrmFechamentoCego;

implementation

uses
  modulo, principal, senha_supervisor, venda;

{$R *.dfm}

procedure TfrmFechamentoCego.AdvGlowButton1Click(Sender: TObject);
begin
  if application.messagebox(pwidechar('Aten��o!'+#13+
                                      'Deseja efetuar o fechamento do Caixa?'),
                                      'Aten��o',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idyes then begin
    with frmModulo do begin
      query.Close;
      query.sql.clear;
      query.sql.add('insert into fechamento_cego (Data, hora, operador, dinheiro, cheque, cartao_credito, cartao_debito, convenio, crediario, ex) values (:Data, :hora, :operador, :dinheiro, :cheque, :cartao_credito, :cartao_debito, :convenio, :crediario, :ex)');
      query.ParamByName('ex').asstring := 'N';
      query.ParamByName('data').asdatetime := ed_data.Date;
      query.ParamByName('hora').AsString := FormatDateTime('HH:MM:SS',Time);
      query.ParamByName('operador').AsInteger := icodigo_Usuario;
      query.ParamByName('dinheiro').AsFloat := edDinheiro.Value;
      query.ParamByName('cheque').AsFloat := edCheque.Value;
      query.ParamByName('cartao_credito').AsFloat := edCartaoCredito.Value;
      query.ParamByName('cartao_debito').AsFloat := edCartaoDebito.Value;
      query.ParamByName('convenio').AsFloat := edConvenio.Value;
      query.ParamByName('crediario').AsFloat := edCrediario.Value;
      query.ExecSQL;

      query.Close;
      query.sql.clear;
      query.sql.add('update config set  caixa_situacao = ''FECHADO'',');
      query.sql.add('caixa_data_movto = :data, ');
      query.sql.Add('fechamento = :datafechamento');
      query.ParamByName('datafechamento').asstring := formatdatetime('yyyy-mm-dd hh:mm:ss', now);
      query.ParamByName('data').asdatetime := ed_data.Date;
      query.ExecSQL;
      Application.MessageBox('Procedimento conclu�do com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
    end;
    CLOSE;
      if frmVenda <> nil then
        if FRMVENDA.Visible then
          FRMVENDA.CLOSE;
  end;

end;

procedure TfrmFechamentoCego.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmFechamentoCego.FormShow(Sender: TObject);
begin
  query.Close;
  query.Open;
  query.First;
  ed_data.Date := queryCAIXA_DATA_MOVTO.AsDateTime;
  ed_operador.Text := sNome_Operador;
  ed_ecf.Text := sCaixa;
end;

end.
