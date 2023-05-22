unit caixa_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ComCtrls, DB,
  DBAccess, Menus, AdvMenus, pngimage, AdvGlowButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, Uni,
  MemDS, JvExMask, JvToolEdit, principal, frxClass, frxExportPDF, frxDBSet,
  frxDesgn, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, frxExportBaseDialog;

type
  TfrmCaixa_Fechamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ed_operador: TRzEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    grid_resumo: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    grid_forma: TNextGrid;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    grid_aliquota: TNextGrid;
    NxNumberColumn5: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn6: TNxNumberColumn;
    grid_outros: TNextGrid;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn8: TNxNumberColumn;
 //   query: TIBCQuery;
    ed_data: TJvDateEdit;
    Label3: TLabel;
    ed_ecf: TRzEdit;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    NxNumberColumn7: TNxTextColumn;
    TabSheet5: TTabSheet;
    grid_venda: TNextGrid;
    NxTextColumn8: TNxTextColumn;
    NxDateColumn2: TNxDateColumn;
    NxTextColumn9: TNxTextColumn;
    NxNumberColumn14: TNxNumberColumn;
    NxTextColumn10: TNxTextColumn;
    NxNumberColumn15: TNxNumberColumn;
    NxNumberColumn16: TNxNumberColumn;
    NxNumberColumn17: TNxNumberColumn;
    NxNumberColumn18: TNxNumberColumn;
   // qrArquivo: TIBCQuery;
  //  qrDAV: TIBCQuery;
    TabSheet6: TTabSheet;
    grid_dav: TNextGrid;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn11: TNxNumberColumn;
    TabSheet7: TTabSheet;
    grid_abastecimento: TNextGrid;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxTextColumn15: TNxTextColumn;
    NxNumberColumn20: TNxNumberColumn;
    NxNumberColumn21: TNxNumberColumn;
    NxNumberColumn22: TNxNumberColumn;
    NxNumberColumn23: TNxNumberColumn;
    NxNumberColumn24: TNxNumberColumn;
    NxNumberColumn25: TNxNumberColumn;
  //  qrAbastecimento: TIBCQuery;
    TabSheet8: TTabSheet;
    grid_mesa: TNextGrid;
    NxNumberColumn9: TNxNumberColumn;
    NxDateColumn3: TNxDateColumn;
    NxTextColumn16: TNxTextColumn;
    NxNumberColumn10: TNxNumberColumn;
  //  qrMesa: TIBCQuery;
    NxTextColumn17: TNxTextColumn;
   // qrEncerrante: TIBCQuery;
    Panel3: TPanel;
    Button1: TButton;
    bt_cupom_encerrante: TButton;
    TabFechamento: TTabSheet;
  //  qrFechamento: TIBCQuery;
    GridFechamento: TNextGrid;
    NxTextColumn18: TNxTextColumn;
    NxTextColumn19: TNxTextColumn;
    NxNumberColumn11: TNxTextColumn;
    NxNumberColumn12: TNxTextColumn;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    Panel4: TPanel;
    bt_fechamento01: TAdvGlowButton;
    bt_fechamento02: TAdvGlowButton;
    bt_fechamento03: TAdvGlowButton;
    bt_fechamento04: TAdvGlowButton;
    bt_fechamento05: TAdvGlowButton;
    bt_fechamento06: TAdvGlowButton;
    bt_fechamento07: TAdvGlowButton;
    bt_fechamento08: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Panel5: TPanel;
    qrAbastecimento: TUniQuery;
    qrMesa: TUniQuery;
    qrEncerrante: TUniQuery;
    qrDAV: TUniQuery;
    query: TUniQuery;
    qrPre_Venda: TUniQuery;
    qrArquivo: TUniQuery;
    qrFechamento: TUniQuery;
    frxDesigner1: TfrxDesigner;
    fxFechamento: TfrxReport;
    frxEmitente: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    cdsDados: TClientDataSet;
    frxDados: TfrxDBDataset;
    cdsDadosDescricao: TStringField;
    cdsDadosValor: TStringField;
    cdsDadosnegrito: TStringField;
    AdvGlowButton2: TAdvGlowButton;
    cdsDadoslinha: TIntegerField;
    lbEdicao: TLabel;
    ActionManager1: TActionManager;
    Action1: TAction;
    F1: TMenuItem;
    I1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure grid_resumoCellFormating(Sender: TObject; ACol,
      ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure FormShow(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure VendaBruta1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bt_fechamento01Click(Sender: TObject);
    procedure bt_fechamento02Click(Sender: TObject);
    procedure bt_fechamento03Click(Sender: TObject);
    procedure bt_fechamento04Click(Sender: TObject);
    procedure bt_fechamento05Click(Sender: TObject);
    procedure bt_fechamento06Click(Sender: TObject);
    procedure bt_fechamento07Click(Sender: TObject);
    procedure bt_fechamento08Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fxFechamentoBeforePrint(Sender: TfrxReportComponent);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
    TipoImp: TImpressora;
    Editar:Boolean;
    function relatorio_dav():boolean;
    function relatorio_mesa():boolean;

    procedure Z_Resumo();
    procedure z_Forma();
    procedure z_aliquota();
    procedure z_outros();
    procedure z_fechamento();

  public
    { Public declarations }
    Pergunta:Boolean;
  end;

var
  frmCaixa_Fechamento: TfrmCaixa_Fechamento;
  fechamento: string;

implementation

uses modulo, funcoes, senha_supervisor, venda,
  msg_Operador, Math, UFuncoes, System.IniFiles;

{$R *.dfm}

// -------------------------------------------------------------------------- //
function tfrmcaixa_fechamento.relatorio_mesa():boolean;
var iqtde : integer;
    rtotal : real;
begin
  qrMesa.close;
  qrMesa.sql.clear;
  qrMesa.sql.add('select sum(r000002.total) soma,');
  qrMesa.sql.add('r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('from r000001, r000002');
  qrMesa.sql.add('where r000001.codigo = r000002.cod_mesa');
  qrMesa.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
  qrMesa.sql.add('order by r000001.codigo');
  qrMesa.open;

  sNumero_Cupom := Zerar( FloatToStr(Max('')), 5);
  if Length(sNumero_Cupom) = 5 then
  sNumero_Cupom := '9' + sNumero_Cupom; // Insere o identificador nao fiscal

  sGNF := Zerar( FloatToStr( max('')), 5);
  sGRG := Zerar( sGNF, 5);
  if Length(sGNF) = 5 then
    sGNF := '9' + sGNF;
  if Length(sGRG) = 5 then
    sGRG := '9' + sGRG;

  frmModulo.query_servidor.close;
  frmmodulo.query_servidor.sql.clear;
  frmmodulo.query_servidor.sql.add('select sum(r000002.total) soma,');
  frmmodulo.query_servidor.sql.add('r000001.codigo, r000001.data, r000001.hora');
  frmmodulo.query_servidor.sql.add('from r000001, r000002');
  frmmodulo.query_servidor.sql.add('where r000001.codigo = r000002.cod_mesa');
  frmmodulo.query_servidor.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
  frmmodulo.query_servidor.sql.add('order by r000001.codigo');
  frmmodulo.query_servidor.open;

  frmmodulo.query_servidor.First;

  with frmmodulo do begin
    qrGravaNaoFiscal.Close;
    qrGravaNaoFiscal.Open;
    qrGravaNaoFiscal.Insert;
    qrGravaNaoFiscalcodigo.asstring := codifica_cupom;
    qrGravaNaoFiscalecf.asstring := sCaixa;
    qrGravaNaoFiscaldata.asdatetime := dData_Sistema;
    qrGravaNaoFiscalhora.AsDateTime := Time;
    qrGravaNaoFiscalindice.asstring := 'RG';
    qrGravaNaoFiscalDescricao.asstring := 'RELAT�RIO GERENCIAL';
    qrGravaNaoFiscalvalor.asfloat := 0;
    qrGravaNaoFiscalCOO.asstring := sNumero_Cupom;
    qrGravaNaoFiscalGNF.asstring := sGNF;
    qrGravaNaoFiscalGRG.asstring := sGRG;
    qrGravaNaoFiscalCDC.Clear;
    qrGravaNaoFiscalDENOMINACAO.asstring := 'RG';
    qrGravaNaoFiscal.Post;
    result := true;
  end;
  frmMsg_Operador.Hide;
end;

// -------------------------------------------------------------------------- //
function tfrmcaixa_fechamento.relatorio_dav():boolean;
var iqtde : integer;
    rtotal : real;
begin
  qrdav.close;
  qrdav.sql.clear;
  qrdav.sql.add('select * from DAV');
  qrdav.sql.add('where ECF = '''+sCaixa+'''');
  qrdav.sql.add('and data = :datai');
  qrdav.sql.add('order by numero, data');
  qrdav.parambyname('datai').asdatetime := ed_data.date;
  qrdav.open;
  if qrdav.RecordCount > 0 then begin
    frmMsg_Operador.lb_msg.Caption := 'Aguarde! Imprimindo rela��o de DAV...';
    frmMsg_Operador.Show;
    frmMsg_Operador.Refresh;

    // impressao em relatorio gerencial
    sNumero_Cupom := Zerar( FloatToStr( max('')), 5);
    if Length(sNumero_Cupom) = 5 then
      sNumero_Cupom := '9' + sNumero_Cupom; // Insere o identificador nao fiscal
    sGNF := Zerar( FloatToStr( max('')), 5);
    sGRG := Zerar( sGNF, 5);
    if Length(sGNF) = 5 then
      sGNF := '9' + sGNF;
    if Length(sGRG) = 5 then
      sGRG := '9' + sGRG;

    // davs emitidos pelo ecf
    // rodar os davs emitidos pelo ecf
    iqtde := 0;
    rtotal := 0;
    qrDav.first;
    while not qrdav.eof do begin
      inc(iqtde);
      rtotal := rtotal + qrdav.FieldByName('valor').asfloat;
      qrdav.next;
    end;
    // registrar Gerencial no banco de dados
    with frmmodulo do begin
      qrGravaNaoFiscal.Close;
      qrGravaNaoFiscal.Open;
      qrGravaNaoFiscal.Insert;
      qrGravaNaoFiscalcodigo.asstring := codifica_cupom;
      qrGravaNaoFiscalecf.asstring := sCaixa;
      qrGravaNaoFiscaldata.asdatetime := dData_Sistema;
      qrGravaNaoFiscalhora.AsDateTime := Time;
      qrGravaNaoFiscalindice.asstring := 'RG';
      qrGravaNaoFiscalDescricao.asstring := 'RELAT�RIO GERENCIAL';
      qrGravaNaoFiscalvalor.asfloat := 0;
      qrGravaNaoFiscalCOO.asstring := sNumero_Cupom;
      qrGravaNaoFiscalGNF.asstring := sGNF;
      qrGravaNaoFiscalGRG.asstring := sGRG;
      qrGravaNaoFiscalCDC.Clear;
      qrGravaNaoFiscalDENOMINACAO.asstring := 'RG';
      qrGravaNaoFiscal.Post;
      result := true;
    end;
    frmMsg_Operador.Hide;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.Action1Execute(Sender: TObject);
begin
  if Editar then
    Editar := False
  else
    Editar := True;
  lbEdicao.Visible := Editar;
end;

procedure TfrmCaixa_Fechamento.AdvGlowButton2Click(Sender: TObject);
var
  i,a:Integer;
  lIdx, lIdxC, lIdxD, lIdxLimite: Integer;
  Ini: TIniFile;
  str: String;
begin
  fxFechamento.LoadFromFile(ExtractFilePath(application.ExeName) + '\rel\F000003.fr3');
  cdsDados.Close;
  cdsDados.CreateDataSet;
  a:=0;
  Ini := TIniFile.Create(sConfiguracoes);
  if Ini.ReadBool('Fortes','InverterOrderImpressao', False) then
  begin
    lIdxLimite := 0;
    lIdxC := 0;
    for lIdx := 0 to GridFechamento.RowCount -1 do
    begin
      if lIdxLimite > 0 then
        Break;
      str := GridFechamento.Cells[2,lIdx];
      if str.StartsWith('Resumo') then
      begin
        for i := lIdx to GridFechamento.RowCount -1 do
        begin
          Inc(a);
          Inc(lIdxC);
          if GridFechamento.Cell[3,i].FontStyle = [fsBold] then begin
            cdsDados.Insert;
            cdsDadoslinha.AsInteger := a;
            cdsDados.Post;
            Inc(a);
          end;
          cdsDados.Insert;
          cdsDadoslinha.AsInteger := lIdxC;
          cdsDadosDescricao.AsString := GridFechamento.Cells[2,i];
          cdsDadosValor.AsString := GridFechamento.Cells[3,i];
          if GridFechamento.Cell[3,i].FontStyle = [fsBold] then
            cdsDadosnegrito.AsString := 'S'
          else
            cdsDadosnegrito.AsString := 'N';
          cdsDados.Post;
          if lIdxLimite = 0 then
          begin
            lIdxLimite := 1;
            cdsDados.Insert;
            cdsDadoslinha.AsInteger := a;
            cdsDados.Post;
            Inc(a);
          end;
        end;
        lIdxLimite := Pred(lIdx);
      end;
    end;
    ///
    cdsDados.Insert;
    cdsDadoslinha.AsInteger := i;
    cdsDadosDescricao.AsString := 'Historico de fechamento';
    cdsDadosValor.AsString := '-------------------------';
    cdsDadosnegrito.AsString := 'N';
    cdsDados.Post;
    Inc(i);
    cdsDados.Insert;
    cdsDadoslinha.AsInteger := i;
    cdsDados.Post;
    lIdx := i;
    ///
    for i := 0 to lIdxLimite do
    begin
      cdsDados.Insert;
      cdsDadoslinha.AsInteger := i + lIdx;
      cdsDadosDescricao.AsString := GridFechamento.Cells[2,i];
      cdsDadosValor.AsString := GridFechamento.Cells[3,i];
      if GridFechamento.Cell[3,i].FontStyle = [fsBold] then
        cdsDadosnegrito.AsString := 'S'
      else
        cdsDadosnegrito.AsString := 'N';
      cdsDados.Post;
    end;

//    lIdxD := Pred(GridFechamento.RowCount);
//    lIdxLimite := lIdxD;
//    while lIdxD >= 0 do
//    begin
//      str := GridFechamento.Cells[2,lIdxD];
//      if str.StartsWith('Resumo') or (lIdxD = 0) then
//        for lIdxC := lIdxD to lIdxLimite do
//        begin
//          str := GridFechamento.Cells[2,lIdxC];
//          Inc(a);
//
//          if lIdxC = 0 then
//          begin
//            cdsDados.Insert;
//            cdsDadoslinha.AsInteger := a;
//            cdsDadosDescricao.AsString := 'Historico de fechamento';
//            cdsDadosValor.AsString := '--------';
//            cdsDadosnegrito.AsString := 'N';
//            cdsDados.Post;
//            Inc(a);
//            cdsDados.Insert;
//            cdsDadoslinha.AsInteger := a;
//            cdsDados.Post;
//            lIdxLimite := Pred(lIdxD);
//            Inc(a);
//          end;
//
//          cdsDados.Insert;
//          cdsDadoslinha.AsInteger := a;
//          cdsDadosDescricao.AsString := GridFechamento.Cells[2,lIdxC];
//          cdsDadosValor.AsString := GridFechamento.Cells[3,lIdxC];
//          if GridFechamento.Cell[3,lIdxC].FontStyle = [fsBold] then
//            cdsDadosnegrito.AsString := 'S'
//          else
//            cdsDadosnegrito.AsString := 'N';
//          cdsDados.Post;
//          ///
//          if lIdxC = lIdxLimite then
//          begin
//            cdsDados.Insert;
//            cdsDadoslinha.AsInteger := a;
//            cdsDados.Post;
//            lIdxLimite := Pred(lIdxD);
//            Inc(a);
//          end;
//        end;
//      Dec(lIdxD);
//    end;
  end
  else
  begin
    for i := 0 to GridFechamento.RowCount -1 do  begin
      Inc(a);
      if GridFechamento.Cell[3,i].FontStyle = [fsBold] then begin
        cdsDados.Insert;
        cdsDadoslinha.AsInteger := a;
        cdsDados.Post;
        Inc(a);
      end;
      cdsDados.Insert;
      cdsDadoslinha.AsInteger := i;
      cdsDadosDescricao.AsString := GridFechamento.Cells[2,i];
      cdsDadosValor.AsString := GridFechamento.Cells[3,i];
      if GridFechamento.Cell[3,i].FontStyle = [fsBold] then
        cdsDadosnegrito.AsString := 'S'
      else
        cdsDadosnegrito.AsString := 'N';
      cdsDados.Post;
    end;
  end;
  Ini.Free;

  if Editar then
    fxFechamento.DesignReport
  else
    fxFechamento.ShowReport;
end;

procedure TfrmCaixa_Fechamento.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.Z_REsumo();
var
  bMovCaixa:Boolean;
begin
  bMovCaixa := True;
  if frmModulo.qrconfigVENDAS_SIMPLES_NAO_MOV_CAIXA.AsString = 'S' then
    bMovCaixa := False;

  query.close;
  query.sql.clear;
  // venda bruta
  query.sql.add('select sum(cupom_item.valor_total) as venda_bruta,');
  // desconto icms
  query.sql.add('       ((select sum(cupom_item.valor_desconto) from cupom_item, cupom where cupom_item.cod_cupom = cupom.codigo and cupom.data + cupom.hora >= :data and cupom_item.cancelado = 0)');
  query.sql.add('       +(select sum(cupom.valor_desconto) from cupom where cupom.data + cupom.hora >= :data and cupom.cancelado = 0)) as desconto_icms,');
  // acrescimo icms
  query.sql.add('       ((select sum(cupom_item.valor_acrescimo) from cupom_item, cupom where cupom_item.cod_cupom = cupom.codigo and cupom.data + cupom.hora >= :data and cupom_item.cancelado = 0)');
  query.sql.add('       +(select sum(cupom.valor_acrescimo) from cupom where cupom.data + cupom.hora >= :data and cupom.cancelado = 0)) as acrescimo_icms');
  query.sql.add('from cupom_item, cupom where cupom.cancelado <> 1 and  cupom_item.cod_cupom = cupom.codigo and cupom.data + cupom.hora >= :data and cupom.cod_vendedor = :codvendedor');
  if not bMovCaixa then
    query.sql.add('and cupom.naofisc <> ' + QuotedStr('S'));
  query.parambyname('data').AsString := fechamento;
  query.parambyname('codvendedor').Value := icodigo_Usuario;
  query.open;


  // limpar o grid
  grid_resumo.ClearRows;
  // Iniciar a alimenta��o
  // 1 - Venda Bruta Di�ria
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 1;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Venda Bruta Di�ria';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := query.fieldbyname('venda_bruta').asfloat;
  // 3 - Desconto ICMS
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 3;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Desconto ICMS';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := query.fieldbyname('desconto_icms').asfloat;
  // 4 - Total de ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 4;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Total de ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
  // 5 - Cancelamento de ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 5;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Cancelamento ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
  // 6 - Desconto de ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 6;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Desconto ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
  // 7 - Venda Liquida
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 7;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Venda L�quida';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat :=
      query.fieldbyname('venda_bruta').asfloat -
      query.fieldbyname('desconto_icms').asfloat;
  // 8 - Acr�scimo ICMS
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 8;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Acr�scimo ICMS';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := query.fieldbyname('acrescimo_icms').asfloat;
  // 9 - Acr�scimo ISSQN
    grid_resumo.AddRow(1);
    grid_resumo.Cell[0,grid_resumo.LastAddedRow].AsInteger := 9;
    grid_resumo.Cell[1,grid_resumo.LastAddedRow].AsString := 'Acr�scimo ISSQN';
    grid_resumo.Cell[2,grid_resumo.LastAddedRow].AsFloat := 0;
end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.z_Forma();
var
  bMovCaixa:Boolean;
begin
  bMovCaixa := True;
  if frmModulo.qrconfigVENDAS_SIMPLES_NAO_MOV_CAIXA.AsString = 'S' then
    bMovCaixa := False;
  // filtrar a tabela de formas de pagamento
  query.close;
  query.sql.clear;
  query.sql.add('  select');
  query.sql.add('      Forma,');
  query.sql.add('      sum(Valor) as total');
  query.sql.add('    from');
  query.sql.add('      (Select');
  query.sql.add('         cupom_forma.forma as Forma,');
  query.sql.add('         cupom_forma.valor as Valor');
  query.sql.add('       from');
  query.sql.add('         cupom_forma, cupom');
  query.sql.add('       where');
  query.sql.add('         cupom_forma.cod_cupom = cupom.codigo and');
  query.sql.add('         cupom.DATA + cupom.hora >= :data and');
  query.sql.add('         cupom.COD_VENDEDOR = :codvendedor and cupom.cancelado <> 1');
  if not bMovCaixa then
    query.sql.add('         and cupom.naofisc <> ' + QuotedStr('S'));
  query.sql.add('         )');
  query.sql.add('       group by Forma');
  query.ParamByName('data').AsString := fechamento;
  query.ParamByName('codvendedor').Value := icodigo_Usuario;
  query.open;

  // limpar o grid
  grid_forma.ClearRows;
  // rodar a tabela para alimentar o grid
  while not query.eof do
  begin
    grid_forma.AddRow(1);
    grid_forma.Cell[0,grid_forma.LastAddedRow].AsInteger := grid_forma.LastAddedRow + 1;
    grid_forma.Cell[1,grid_forma.LastAddedRow].AsString := query.fieldbyname('forma').asstring;
    grid_forma.Cell[2,grid_forma.LastAddedRow].AsFloat := query.fieldbyname('total').asfloat;
    query.Next;
  end;
end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.z_aliquota();
var
  bMovCaixa:Boolean;
begin
  bMovCaixa := True;
  if frmModulo.qrconfigVENDAS_SIMPLES_NAO_MOV_CAIXA.AsString = 'S' then
    bMovCaixa := False;
  // filtrar a tabela de itens do cupom agrupando por aliquota
  query.close;
  query.sql.clear;
  query.sql.add('select cupom_item.cst, cupom_item.aliquota, sum(cupom_item.valor_total) total');
  query.sql.add('from cupom_item, cupom');
  query.sql.add('where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('and cupom.data + cupom.hora >= :data and cupom.cancelado = 0');
  query.sql.add('and cupom.cod_vendedor = :codvendedor');
  if not bMovCaixa then
    query.sql.add('and cupom.naofisc <> ' + QuotedStr('S'));
  query.sql.add('group by cupom_item.cst, cupom_item.aliquota');
  query.sql.add('order by cupom_item.cst, cupom_item.aliquota');
  query.ParamByName('data').AsString := fechamento;
  query.ParamByName('codvendedor').Value := icodigo_Usuario;
  query.open;
  query.first;
  // limpar o grid
  grid_aliquota.ClearRows;
  // rodar a tabela para alimentar o grid
  while not query.eof do
  begin
    grid_aliquota.AddRow(1);
    grid_aliquota.Cell[0,grid_aliquota.LastAddedRow].AsInteger := grid_aliquota.LastAddedRow + 1;
    grid_aliquota.Cell[1,grid_aliquota.LastAddedRow].AsString := '';
    grid_aliquota.Cell[2,grid_aliquota.LastAddedRow].AsFloat := query.fieldbyname('total').asfloat;
    query.Next;
  end;
end;

// -------------------------------------------------------------------------- //
procedure tfrmCaixa_Fechamento.z_outros();
begin
  // filtrar a tabela de documentos naos fiscais agrupando por indice e descricao
  query.close;
  query.sql.clear;
  query.sql.add('select indice, descricao, sum(valor) total');
  query.sql.add('from nao_fiscal');
  query.sql.add('where data + hora >= :data');
  query.sql.add('and codvendedor = :codvendedor');
  query.sql.add('group by indice, descricao');
  query.sql.add('order by indice');
  query.parambyname('data').AsString := fechamento;
  query.parambyname('codvendedor').Value := icodigo_Usuario;
  query.open;
  // limpara o grid
  grid_outros.ClearRows;
  // rodar a tabela para alimentar o grid
  while not query.eof do
  begin
    grid_outros.AddRow(1);
    grid_outros.Cell[0,grid_outros.LastAddedRow].Asstring :=
      zerar(query.fieldbyname('indice').asstring,2);
    grid_outros.Cell[1,grid_outros.LastAddedRow].AsString :=query.fieldbyname('descricao').asstring;
    grid_outros.Cell[2,grid_outros.LastAddedRow].AsFloat := query.fieldbyname('total').asfloat;
    query.Next;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmPrincipal.TipoImpressora := TipoImp;
  action := cafree;
end;

procedure TfrmCaixa_Fechamento.FormCreate(Sender: TObject);
begin
  Editar := False;
  Pergunta := False;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.grid_resumoCellFormating(Sender: TObject;
  ACol, ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if grid_resumo.Cell[0,ARow].AsInteger = 7 then
  begin
    FontStyle := [fsBold];
  end;
end;

procedure TfrmCaixa_Fechamento.Panel1Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.FormShow(Sender: TObject);
var
  i : integer;
  bMovCaixa:Boolean;
begin
  TipoImp := frmPrincipal.TipoImpressora;
  frmPrincipal.TipoImpressora := NaoFiscal;

  qrEncerrante.close;
  qrEncerrante.sql.clear;
  qrEncerrante.sql.add('select * from Config Where codigo=0');
  qrEncerrante.Open;
  qrEncerrante.First;
  fechamento := formatdatetime('yyyy-mm-dd hh:mm:ss', qrEncerrante.fieldbyname('fechamento').AsDateTime);

  ed_data.Date := dData_Movimento;

  PDV_OnLine := False;
  if not frmModulo.Conexao_Servidor.Connected then begin
    try
      frmModulo.Conexao_Servidor.Connected := False;
      frmModulo.Conexao_Servidor.Connected := True;
      PDV_OnLine := True;
    except
    end;
  end;

  If PDV_OnLine then begin  //Pre Vendas Em Aberto
    qrPre_Venda.CLOSE;
    qrPre_Venda.SQL.CLEAR;
    qrPre_Venda.SQL.ADD('select');
    qrPre_Venda.SQL.ADD('  c000074.*,');
    qrPre_Venda.SQL.ADD('  c000007.Nome Cliente,');
    qrPre_Venda.SQL.ADD('  c000008.Nome Vendedor');
    qrPre_Venda.SQL.ADD('from');
    qrPre_Venda.SQL.ADD('  c000074, c000007, c000008');
    qrPre_Venda.SQL.ADD('where');
    qrPre_Venda.SQL.ADD('  c000074.codcliente = c000007.codigo and');
    qrPre_Venda.SQL.ADD('  c000074.codvendedor = c000008.codigo and');
    qrPre_Venda.SQL.ADD('  c000074.tipo <> 9 and');
    qrPre_Venda.sql.add('  c000074.situacao = 1');
    qrpre_venda.sql.add('  and c000074.data <= :datam');
    qrPre_Venda.sql.add('ORDER BY c000074.CODIGO');
    qrpre_venda.ParamByName('datam').asdatetime := ed_data.date - 1;
    qrPre_Venda.OPEN;


    grid_venda.ClearRows;

    qrpre_venda.First;
    while not qrpre_venda.Eof do
    begin
      i := grid_venda.AddRow(1);
      grid_venda.Cell[0,i].Asstring := qrPre_Venda.fieldbyname('codigo').asstring;
      grid_venda.Cell[1,i].AsDateTime := qrpre_venda.fieldbyname('data').asdatetime;
      grid_venda.Cell[2,i].Asstring := qrPre_Venda.fieldbyname('cliente').asstring;
      grid_venda.Cell[3,i].Asfloat := qrPre_Venda.fieldbyname('total').asfloat;
      grid_venda.Cell[4,i].Asstring := qrPre_Venda.fieldbyname('vendedor').asstring;
      grid_venda.Cell[5,i].Asinteger := qrPre_Venda.fieldbyname('codcliente').asinteger;
      grid_venda.Cell[6,i].Asinteger := qrPre_Venda.fieldbyname('codvendedor').asinteger;
      grid_venda.Cell[7,i].Asfloat := qrPre_Venda.fieldbyname('desconto').asfloat;
      grid_venda.Cell[8,i].Asfloat := qrPre_Venda.fieldbyname('acrescimo').asfloat;
      qrpre_venda.Next;
    end;
    // mesas
    qrMesa.close;
    qrMesa.sql.clear;
    qrMesa.sql.add('select sum(r000002.total) soma,');
    qrMesa.sql.add('r000001.codigo, r000001.data, r000001.hora');
    qrMesa.sql.add('from r000001, r000002');
    qrMesa.sql.add('where r000001.codigo = r000002.cod_mesa');
    qrMesa.sql.add('group by r000001.codigo, r000001.data, r000001.hora');
    qrMesa.sql.add('order by r000001.codigo');
    qrMesa.open;

    grid_mesa.ClearRows;

    qrMesa.First;
    while not qrMesa.Eof do
    begin
      i := grid_mesa.AddRow(1);


      grid_mesa.Cell[0,i].Asstring := qrMesa.fieldbyname('codigo').asstring;
      grid_mesa.Cell[1,i].Asdatetime := qrMesa.fieldbyname('data').asdatetime;
      grid_mesa.Cell[2,i].Asstring := qrMesa.fieldbyname('hora').asstring;
      grid_mesa.Cell[3,i].Asfloat := qrMesa.fieldbyname('soma').asfloat;

      qrMesa.Next;
    end;
  end;

  ed_operador.Text := sNome_Operador;
  ed_ecf.Text := sCaixa;
  // resumo da reducao z
  Z_Resumo;
  // resumo por forma de pagamento
  z_Forma;
  // resumo por aliquota
  z_aliquota;
  // resumo de outros documentos
  z_outros;

  z_fechamento;

  // davs

  qrdav.close;
  qrdav.sql.clear;
  qrdav.sql.add('select * from DAV');
  qrdav.sql.add('where ECF = '''+sCaixa+'''');
  qrdav.sql.add('and data = :datai');
  qrdav.sql.add('order by numero, data');
  qrdav.parambyname('datai').asdatetime := ed_data.date;
  qrdav.open;

  grid_dav.ClearRows;
  qrdav.first;
  while not qrdav.eof do
  begin
    i := grid_dav.AddRow(1);
    grid_dav.Cell[0,i].asstring := qrdav.fieldbyname('coo').asstring;
    grid_dav.Cell[1,i].asstring := qrdav.fieldbyname('NUMERO').asstring;
    grid_dav.Cell[2,i].asstring := qrdav.fieldbyname('TITULO').asstring;
    grid_dav.Cell[3,i].asFLOAT  := qrdav.fieldbyname('VALOR').asFLOAT;
    qrdav.Next;
  end;
end;

procedure TfrmCaixa_Fechamento.fxFechamentoBeforePrint(
  Sender: TfrxReportComponent);
begin
  if TfrxMemoView(Sender).Name = 'mCaixa' then
    TfrxMemoView(Sender).Text := 'Caixa: ' + IntToStr(iNumCaixa);
  if TfrxMemoView(Sender).Name = 'mOperador' then
    TfrxMemoView(Sender).Text := 'Operador: ' + ed_operador.Text;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.bt_okClick(Sender: TObject);
var
  scodRZ:string;
  i : integer;
  pTexto : PAnsiChar;
  iMes : integer;
  brefaz_dav : boolean;
  dData_movto : tdatetime;
  Continua:Boolean;

begin
  // verificar serial do ecf
  Continua := False;
  if not Pergunta then begin
    if application.messagebox(pwidechar('Aten��o!'+#13+
                                        'Deseja efetuar o fechamento do Caixa?'),
                                        'Aten��o',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idyes then
      Continua := True;
  end else
    Continua := True;
  if Continua then begin
    brefaz_dav := false;
    if not relatorio_dav() then brefaz_dav := true;

    (* mesas abertas *)
    if grid_mesa.RowCount > 0 then
      relatorio_mesa();

    frmMsg_Operador.lb_msg.caption := 'Aguarde! Salvando informa��es do fechamento...';

    frmMsg_Operador.show;
    frmMsg_Operador.Refresh;
    with frmModulo do begin
      // verificar se eh para excluir as prevendas (caso a reducao z seja feita no outro dia)

      (******************* P R E   -   V E N D A S ******************************)
      // verificar a existencia de prevendas abertas
      if brefaz_dav then begin
        (* imprimir a relacao de dav *)
        relatorio_dav;
      end;
      // atualizar os dados no servidor
      // criar o arquivo fiscal automaticamente
      frmMsg_Operador.hide;
      // atualizando a tabela de config com a data do movimento e situacao fechado
      query.Close;
      query.sql.clear;
      query.sql.add('update config set  caixa_situacao = ''FECHADO'',');
      query.sql.add('caixa_data_movto = :data, ');
      query.sql.Add('fechamento = :datafechamento');
      query.ParamByName('datafechamento').asstring := formatdatetime('yyyy-mm-dd hh:mm:ss', now);
      query.ParamByName('data').asdatetime := ed_data.Date;
      query.ExecSQL;
      if not Pergunta then
        Application.MessageBox('Procedimento conclu�do com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
      CLOSE;
      if frmVenda <> nil then
        if FRMVENDA.Visible then
          FRMVENDA.CLOSE;
    end;
  end;
end;

procedure TfrmCaixa_Fechamento.Cancelar1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.bt_fechamento01Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 8;
end;

procedure TfrmCaixa_Fechamento.bt_fechamento02Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 7;
end;

procedure TfrmCaixa_Fechamento.bt_fechamento03Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 5;
end;

procedure TfrmCaixa_Fechamento.bt_fechamento04Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 4;
end;

procedure TfrmCaixa_Fechamento.bt_fechamento05Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 3;
end;

procedure TfrmCaixa_Fechamento.bt_fechamento06Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 2;
end;

procedure TfrmCaixa_Fechamento.bt_fechamento07Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 1;
end;

procedure TfrmCaixa_Fechamento.bt_fechamento08Click(Sender: TObject);
begin
  Pagecontrol1.ActivePageIndex := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.VendaBruta1Click(Sender: TObject);
begin
end;

// -------------------------------------------------------------------------- //
procedure TfrmCaixa_Fechamento.z_fechamento;
var
  codOperador:string;
  dValor, dSangria, dSuprimento, dTotal, dTroco, dDinheiro:double;
  bMovCaixa:Boolean;
begin
  bMovCaixa := True;
  if frmModulo.qrconfigVENDAS_SIMPLES_NAO_MOV_CAIXA.AsString = 'S' then
    bMovCaixa := False;
  dValor := 0;  dSangria := 0;  dSuprimento := 0;  dTotal := 0; dDinheiro:=0; dTroco := 0;


  qrFechamento.close;
  qrFechamento.sql.clear;
  qrFechamento.sql.add('select Sum(Valor_Troco) as Troco');
  qrFechamento.sql.add('from cupom');
  qrFechamento.sql.add('Where cupom.cancelado <> 1 and cupom.DATA + cupom.Hora >= :data');
  if not bMovCaixa then
    qrFechamento.sql.add('and cupom.naofisc <> ' + QuotedStr('S'));
  qrFechamento.Params.ParamByName('data').asstring := fechamento;
  qrFechamento.Open;
  if qrFechamento.RecNo > 0 then
  begin
     dTroco :=  qrFechamento.fieldbyName('Troco').AsFloat;
  end;

  codOperador := '';

  qrFechamento.close;
  qrFechamento.sql.clear;
  qrFechamento.sql.add('select');
  qrFechamento.sql.add('  CodOperador,');
  qrFechamento.sql.add('  Operador,');
  qrFechamento.sql.add('  Forma,');
  qrFechamento.sql.add('  sum(Valor) as total');
  qrFechamento.sql.add('from');
  qrFechamento.sql.add(' (select');
  qrFechamento.sql.add('    cupom.COD_VENDEDOR as CodOperador,');
  qrFechamento.sql.add('    (select info1 from adm where codigo = cupom.COD_VENDEDOR) as Operador,');
  qrFechamento.sql.add('    cupom_forma.FORMA as forma,');
  qrFechamento.sql.add('    cupom_forma.VALOR as valor');
  qrFechamento.sql.add('  from');
  qrFechamento.sql.add('    cupom_forma, cupom');
  qrFechamento.sql.add('  where cupom.cancelado <> 1 and cupom_forma.COD_CUPOM = cupom.CODIGO and');
  qrFechamento.sql.add('        cupom.DATA + cupom.Hora >= :data');
  if not bMovCaixa then
    qrFechamento.sql.add('       and cupom.naofisc <> ' + QuotedStr('S'));

  qrFechamento.sql.add('  ) as tmp');
  qrFechamento.sql.add('  group by  CodOperador,  Operador,  Forma');
  qrFechamento.sql.add('  order by codoperador');
  qrFechamento.Params.ParamByName('data').asstring := fechamento;
  qrFechamento.Open;
  qrFechamento.First;

  while not qrFechamento.Eof do begin
    codOperador := qrFechamento.fieldbyname('codoperador').AsString;
    GridFechamento.AddRow(1);
    GridFechamento.Cell[0,GridFechamento.LastAddedRow].AsInteger := qrFechamento.fieldbyname('codoperador').Value;
    GridFechamento.Cell[1,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('operador').AsString;
    GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString;
    GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat,2,false);
    dValor := dValor + qrFechamento.fieldbyname('total').AsFloat;

    qrFechamento.Next;

    if codOperador <> qrFechamento.fieldbyname('codoperador').AsString then begin
      GridFechamento.AddRow(1);
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Sub-Total';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(dValor + dSuprimento - dSangria ,2,false);
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].FontStyle := [fsBold];
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].FontStyle := [fsBold];
      dValor := 0;  dSangria := 0;  dSuprimento := 0;  dTotal := 0;
      GridFechamento.AddRow(1);
      GridFechamento.AddRow(1);
    end;
  end;      // cmed62


  qrFechamento.close;
  qrFechamento.sql.clear;
  qrFechamento.sql.add('select');
  qrFechamento.sql.add('  CodOperador,');
  qrFechamento.sql.add('  Operador,');
  qrFechamento.sql.add('  Forma,');
  qrFechamento.sql.add('  sum(Valor) as total');
  qrFechamento.sql.add('from');
  qrFechamento.sql.add(' (select');
  qrFechamento.sql.add('    nao_fiscal.CODVENDEDOR as CodOperador,');
  qrFechamento.sql.add('    (select info1 from adm where codigo = nao_fiscal.CODVENDEDOR) as Operador,');
  qrFechamento.sql.add('    nao_fiscal.DESCRICAO as forma,');
  qrFechamento.sql.add('    nao_fiscal.VALOR as valor');
  qrFechamento.sql.add('  from');
  qrFechamento.sql.add('    NAO_FISCAL');
  qrFechamento.sql.add('  where nao_fiscal.Data + nao_fiscal.hora >= :data and nao_fiscal.INDICE <> '+QuotedStr('RG'));
  qrFechamento.sql.add('  ) as tmp');
  qrFechamento.sql.add('  group by  CodOperador,  Operador,  Forma');
  qrFechamento.sql.add('  order by codoperador');
  qrFechamento.Params.ParamByName('data').asstring := fechamento;
  qrFechamento.Open;
  qrFechamento.First;

  while not qrFechamento.Eof do begin
    codOperador := qrFechamento.fieldbyname('codoperador').AsString;
    GridFechamento.AddRow(1);
    GridFechamento.Cell[0,GridFechamento.LastAddedRow].AsInteger := qrFechamento.fieldbyname('codoperador').Value;
    GridFechamento.Cell[1,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('operador').AsString;

    if qrFechamento.fieldbyname('forma').AsString = 'SANGRIA' then begin
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString + ' (-)';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat * (-1),2,false);
      dSangria := dSangria + qrFechamento.fieldbyname('total').AsFloat;
    end else if qrFechamento.fieldbyname('forma').AsString = 'SUPRIMENTO' then begin
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString + ' (+)';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat,2,false);
      dSuprimento := dSuprimento + qrFechamento.fieldbyname('total').AsFloat;
    end;
    qrFechamento.Next;
    if codOperador <> qrFechamento.fieldbyname('codoperador').AsString then begin
      GridFechamento.AddRow(1);
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Sub-Total';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(dValor + dSuprimento - dSangria ,2,false);
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].FontStyle := [fsBold];
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].FontStyle := [fsBold];
      dValor := 0;  dSangria := 0;  dSuprimento := 0;  dTotal := 0;
      GridFechamento.AddRow(1);
      GridFechamento.AddRow(1);
    end;
  end;      // cmed62

  GridFechamento.AddRow(1);
  GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Troco ';
  GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(-dTroco,2,false);

  {totaliza o ultimo usu�rio}
  begin
   GridFechamento.AddRow(1);
   GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Sub-Total';
   GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(dValor + dSuprimento - dSangria-dTroco,2,false);
   GridFechamento.Cell[2,GridFechamento.LastAddedRow].FontStyle := [fsBold];
   GridFechamento.Cell[3,GridFechamento.LastAddedRow].FontStyle := [fsBold];
  end;

  qrFechamento.close;
  qrFechamento.sql.clear;
  qrFechamento.sql.add('select');
  qrFechamento.sql.add('  Forma,');
  qrFechamento.sql.add('  sum(Valor) as total');
  qrFechamento.sql.add('from');
  qrFechamento.sql.add(' (select');
  qrFechamento.sql.add('    nao_fiscal.DESCRICAO as forma,');
  qrFechamento.sql.add('    nao_fiscal.VALOR as valor');
  qrFechamento.sql.add('  from');
  qrFechamento.sql.add('    NAO_FISCAL');
  qrFechamento.sql.add('  where nao_fiscal.Data + nao_fiscal.Hora >= :data and nao_fiscal.INDICE <> '+QuotedStr('RG'));
  qrFechamento.sql.add('  ) as tmp');
  qrFechamento.sql.add('  group by   Forma');
  qrFechamento.Params.ParamByName('data').asstring := fechamento;
  qrFechamento.Open;
  qrFechamento.First;



  GridFechamento.AddRow(1);
  GridFechamento.Cell[0,GridFechamento.LastAddedRow].AsString := '-----';
  GridFechamento.Cell[1,GridFechamento.LastAddedRow].AsString := '----------------------------------------';
  GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Resumo - Dinheiro em Caixa';
  GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := '-----------------------';
  GridFechamento.Cell[2,GridFechamento.LastAddedRow].FontStyle := [fsBold];

  while not qrFechamento.Eof do
  begin

    GridFechamento.AddRow(1);
    if qrFechamento.fieldbyname('forma').AsString = 'SANGRIA' then
    begin
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString + ' (-)';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat * (-1),2,false);
      dDinheiro := dDinheiro - qrFechamento.fieldbyname('total').AsFloat;
    end
    else
    if qrFechamento.fieldbyname('forma').AsString = 'SUPRIMENTO' then
    begin
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString + ' (+)';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat ,2,false);
      dDinheiro := dDinheiro + qrFechamento.fieldbyname('total').AsFloat;
    end;
    qrFechamento.Next;

  end;




  qrFechamento.close;
  qrFechamento.sql.clear;
  qrFechamento.sql.add('select');
  qrFechamento.sql.add('  Forma,');
  qrFechamento.sql.add('  sum(Valor) as total');
  qrFechamento.sql.add('from');
  qrFechamento.sql.add(' (select');
  qrFechamento.sql.add('    cupom_forma.FORMA as forma,');
  qrFechamento.sql.add('    cupom_forma.VALOR as valor');
  qrFechamento.sql.add('  from');
  qrFechamento.sql.add('    cupom_forma, cupom');
  qrFechamento.sql.add('  where cupom.cancelado <> 1 and cupom_forma.COD_CUPOM = cupom.CODIGO and');
  qrFechamento.sql.add('        cupom.DATA + cupom.Hora >= :data and (upper(cupom_forma.Forma) =''DINHEIRO'')');
  if not bMovCaixa then
    qrFechamento.sql.add('    and cupom.naofisc <> ' + QuotedStr('S'));
  qrFechamento.sql.add('  ) as tmp');
  qrFechamento.sql.add('  group by   Forma');
  qrFechamento.Params.ParamByName('data').asstring := fechamento;
  qrFechamento.Open;
  qrFechamento.First;

  while not qrFechamento.Eof do begin
    GridFechamento.AddRow(1);
    GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString;
    GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat - dTroco,2,false);
    dDinheiro := dDinheiro + qrFechamento.fieldbyname('total').AsFloat;
    qrFechamento.Next;
  end;






//  GridFechamento.AddRow(1);
//  GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Troco (-)';
//  GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(-dTroco,2,false);


   GridFechamento.AddRow(1);
   GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'TOTAL EM DINHEIRO';
   GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(dDinheiro-dTroco,2,false);
   GridFechamento.Cell[2,GridFechamento.LastAddedRow].FontStyle := [fsBold];
   GridFechamento.Cell[3,GridFechamento.LastAddedRow].FontStyle := [fsBold];



  qrFechamento.close;
  qrFechamento.sql.clear;
  qrFechamento.sql.add('select');
  qrFechamento.sql.add('  Forma,');
  qrFechamento.sql.add('  sum(Valor) as total');
  qrFechamento.sql.add('from');
  qrFechamento.sql.add(' (select');
  qrFechamento.sql.add('    cupom_forma.FORMA as forma,');
  qrFechamento.sql.add('    cupom_forma.VALOR as valor');
  qrFechamento.sql.add('  from');
  qrFechamento.sql.add('    cupom_forma, cupom');
  qrFechamento.sql.add('  where cupom.cancelado <> 1 and cupom_forma.COD_CUPOM = cupom.CODIGO and');
  qrFechamento.sql.add('        cupom.DATA + cupom.Hora >= :data');
  if not bMovCaixa then
    qrFechamento.sql.add('       and cupom.naofisc <> ' + QuotedStr('S'));
  qrFechamento.sql.add('  ) as tmp');
  qrFechamento.sql.add('  group by  Forma');
  qrFechamento.Params.ParamByName('data').asstring := fechamento;
  qrFechamento.Open;
  qrFechamento.First;



  GridFechamento.AddRow(1);
  GridFechamento.AddRow(1);
  GridFechamento.Cell[0,GridFechamento.LastAddedRow].AsString := '-----';
  GridFechamento.Cell[1,GridFechamento.LastAddedRow].AsString := '----------------------------------------';
  GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Resumo Geral';
  GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := '-----------------------';
  GridFechamento.Cell[2,GridFechamento.LastAddedRow].FontStyle := [fsBold];
  GridFechamento.AddRow(1);
  dTotal := 0;
  while not qrFechamento.Eof do begin

//    if qrFechamento.fieldbyname('forma').AsString = 'SANGRIA' then
//    else if qrFechamento.fieldbyname('forma').AsString = 'SUPRIMENTO' then
//    BEGIN

       GridFechamento.AddRow(1);
       GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString;
       if qrFechamento.fieldbyname('forma').AsString = 'DINHEIRO' then
       begin
         GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat - dTroco,2,false);
         dTotal := dTotal + (qrFechamento.fieldbyname('total').AsFloat  - dTroco);
       end
       else
       begin
         GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat,2,false);
         dTotal := dTotal + qrFechamento.fieldbyname('total').AsFloat;
       end;
  //  end;
    qrFechamento.Next;
  end;




//  qrFechamento.close;
//  qrFechamento.sql.clear;
//  qrFechamento.sql.add('select');
//  qrFechamento.sql.add('  Forma,');
//  qrFechamento.sql.add('  sum(Valor) as total');
//  qrFechamento.sql.add('from');
//  qrFechamento.sql.add(' (select');
//  qrFechamento.sql.add('    nao_fiscal.DESCRICAO as forma,');
//  qrFechamento.sql.add('    nao_fiscal.VALOR as valor');
//  qrFechamento.sql.add('  from');
//  qrFechamento.sql.add('    NAO_FISCAL');
//  qrFechamento.sql.add('  where nao_fiscal.Data + nao_fiscal.Hora >= :data and nao_fiscal.INDICE <> '+QuotedStr('RG'));
//  qrFechamento.sql.add('  ) as tmp');
//  qrFechamento.sql.add('  group by  Forma');
//  qrFechamento.Params.ParamByName('data').asstring := fechamento;
//  qrFechamento.Open;
//  qrFechamento.First;
//  dSangria := 0;
//  dSuprimento := 0;
  (*
  while not qrFechamento.Eof do begin

    GridFechamento.AddRow(1);
    if qrFechamento.fieldbyname('forma').AsString = 'SANGRIA' then
    begin
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString + ' (-)';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat * (-1),2,false);
      dSangria := dSangria + qrFechamento.fieldbyname('total').AsFloat ;
    end
    else
    if qrFechamento.fieldbyname('forma').AsString = 'SUPRIMENTO' then
    begin
      GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := qrFechamento.fieldbyname('forma').AsString + ' (+)';
      GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(qrFechamento.fieldbyname('total').AsFloat,2,false);
      dSuprimento := dSuprimento + qrFechamento.fieldbyname('total').AsFloat;
    end;

    dTotal := dTotal + qrFechamento.fieldbyname('total').AsFloat;

    qrFechamento.Next;

  end;
    *)


(*   GridFechamento.AddRow(1);
   GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'Troco ';
   GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(-dTroco,2,false);
  *)
   GridFechamento.AddRow(1);
   GridFechamento.Cell[2,GridFechamento.LastAddedRow].AsString := 'TOTAL DE VENDAS';
   //GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(dTotal - dSangria - dSangria - dTroco,2,false);
   GridFechamento.Cell[3,GridFechamento.LastAddedRow].AsString := FormatarValor(dTotal ,2,false);
   GridFechamento.Cell[2,GridFechamento.LastAddedRow].FontStyle := [fsBold];
   GridFechamento.Cell[3,GridFechamento.LastAddedRow].FontStyle := [fsBold];

end;

end.





