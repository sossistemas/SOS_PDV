unit xloc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons,
  AdvGlowButton, MemDS, DBAccess, Uni;

type
  Tfrmxloc_produto = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    FlatPanel2: TFlatPanel;
    Bevel3: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    Bevel5: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    Cadastrarnovoprodutos1: TMenuItem;
    Label12: TLabel;
    AlterarProduto1: TMenuItem;
    Bevel8: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    bitbtn1: TAdvGlowButton;
    balterar: TAdvGlowButton;
    combo_situacao: TComboBox;
    Bevel9: TBevel;
    Label11: TLabel;
   // query: TIBCQuery;
 //   query2: TIBCQuery;
  {  queryCODIGO: TStringField;
    queryCODBARRA: TStringField;
    queryPRODUTO: TStringField;
    queryUNIDADE: TStringField;
    queryESTOQUE_ATUAL: TFloatField;
    queryPRECOVENDA: TFloatField;
    queryFORNECEDOR: TStringField;
    queryESTOQUE: TFloatField;
    queryDATA_CADASTRO: TDateTimeField;
    queryCODGRUPO: TStringField;
    queryCODSUBGRUPO: TStringField;
    queryCODFORNECEDOR: TStringField;
    queryCODMARCA: TStringField;
    queryDATA_ULTIMACOMPRA: TDateTimeField;
    queryNOTAFISCAL: TStringField;
    queryPRECOCUSTO: TFloatField;
    queryDATA_ULTIMAVENDA: TDateTimeField;
    queryESTOQUEMINIMO: TFloatField;
    queryCODALIQUOTA: TStringField;
    queryAPLICACAO: TMemoField;
    queryLOCALICAZAO: TStringField;
    queryPESO: TFloatField;
    queryVALIDADE: TStringField;
    queryCOMISSAO: TFloatField;
    queryUSA_BALANCA: TIntegerField;
    queryUSA_SERIAL: TIntegerField;
    queryUSA_GRADE: TIntegerField;
    queryCODRECEITA: TStringField;
    queryFOTO: TStringField;
    queryDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    queryNOTAFISCAL_ANTERIOR: TStringField;
    queryCODFORNECEDOR_ANTERIOR: TStringField;
    queryPRECOCUSTO_ANTERIOR: TFloatField;
    queryPRECOVENDA_ANTERIOR: TFloatField;
    queryCUSTOMEDIO: TFloatField;
    queryAUTO_APLICACAO: TStringField;
    queryAUTO_COMPLEMENTO: TStringField;
    queryDATA_REMARCACAO_CUSTO: TDateTimeField;
    queryDATA_REMARCACAO_VENDA: TDateTimeField;
    queryPRECO_PROMOCAO: TFloatField;
    queryDATA_PROMOCAO: TDateTimeField;
    queryFIM_PROMOCAO: TDateTimeField;
    queryMARCA: TStringField;
    queryGRUPO: TStringField;
    querySUBGRUPO: TStringField;  }
    query: TUniQuery;
    query2: TUniQuery;
    queryCODIGO: TStringField;
    queryCODBARRA: TStringField;
    queryPRODUTO: TStringField;
    queryDATA_CADASTRO: TDateTimeField;
    queryCODGRUPO: TStringField;
    queryCODSUBGRUPO: TStringField;
    queryCODFORNECEDOR: TStringField;
    queryCODMARCA: TStringField;
    queryDATA_ULTIMACOMPRA: TDateTimeField;
    queryNOTAFISCAL: TStringField;
    queryPRECOCUSTO: TFloatField;
    queryPRECOVENDA: TFloatField;
    queryDATA_ULTIMAVENDA: TDateTimeField;
    queryESTOQUE: TFloatField;
    queryESTOQUEMINIMO: TFloatField;
    queryCODALIQUOTA: TStringField;
    queryAPLICACAO: TMemoField;
    queryLOCALICAZAO: TStringField;
    queryPESO: TFloatField;
    queryVALIDADE: TStringField;
    queryCOMISSAO: TFloatField;
    queryUSA_BALANCA: TIntegerField;
    queryUSA_SERIAL: TIntegerField;
    queryUSA_GRADE: TIntegerField;
    queryCODRECEITA: TStringField;
    queryFOTO: TStringField;
    queryDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    queryNOTAFISCAL_ANTERIOR: TStringField;
    queryCODFORNECEDOR_ANTERIOR: TStringField;
    queryPRECOCUSTO_ANTERIOR: TFloatField;
    queryPRECOVENDA_ANTERIOR: TFloatField;
    queryCUSTOMEDIO: TFloatField;
    queryAUTO_APLICACAO: TStringField;
    queryAUTO_COMPLEMENTO: TStringField;
    queryDATA_REMARCACAO_CUSTO: TDateTimeField;
    queryDATA_REMARCACAO_VENDA: TDateTimeField;
    queryPRECO_PROMOCAO: TFloatField;
    queryDATA_PROMOCAO: TDateTimeField;
    queryFIM_PROMOCAO: TDateTimeField;
    queryCST: TStringField;
    queryCLASSIFICACAO_FISCAL: TStringField;
    queryNBM: TStringField;
    queryNCM: TStringField;
    queryALIQUOTA: TFloatField;
    queryIPI: TFloatField;
    queryREDUCAO: TFloatField;
    queryQTDE_EMBALAGEM: TFloatField;
    queryTIPO: TStringField;
    queryPESO_LIQUIDO: TFloatField;
    queryFARMACIA_CONTROLADO: TStringField;
    queryFARMACIA_APRESENTACAO: TIntegerField;
    queryFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    queryFARMACIA_PMC: TFloatField;
    queryULTIMA_ALTERACAO: TDateTimeField;
    queryULTIMA_CARGA: TDateTimeField;
    queryDATA_INVENTARIO: TDateTimeField;
    queryCUSTO_INVENTARIO: TFloatField;
    queryESTOQUE_INVENTARIO: TFloatField;
    queryESTOQUE_ANTERIOR: TFloatField;
    queryPRECOVENDA_NOVO: TFloatField;
    queryUSA_RENTABILIDADE: TIntegerField;
    queryQUANTIDADE_MINIMA_FAB: TFloatField;
    queryAPRESENTACAO: TStringField;
    querySITUACAO: TIntegerField;
    queryPRECOVENDA1: TFloatField;
    queryPRECOVENDA2: TFloatField;
    queryPRECOVENDA3: TFloatField;
    queryPRECOVENDA4: TFloatField;
    queryPRECOVENDA5: TFloatField;
    queryDESCONTO_PRECOVENDA: TFloatField;
    queryDATA_INVENTARIO_ATUAL: TDateTimeField;
    queryCUSTO_INVENTARIO_ATUAL: TFloatField;
    queryESTOQUE_INVENTARIO_ATUAL: TFloatField;
    queryMARGEM_MINIMA: TFloatField;
    queryPISCOFINS: TStringField;
    queryREFERENCIA_FORNECEDOR: TStringField;
    queryCOMISSAO1: TFloatField;
    queryMARGEM_DESCONTO: TFloatField;
    queryTAMANHO: TStringField;
    queryCOR: TStringField;
    queryINCIDENCIA_PISCOFINS: TStringField;
    queryVEIC_CHASSI: TStringField;
    queryVEIC_SERIE: TStringField;
    queryVEIC_POTENCIA: TStringField;
    queryVEIC_PESO_LIQUIDO: TStringField;
    queryVEIC_PESO_BRUTO: TStringField;
    queryVEIC_TIPO_COMBUSTIVEL: TStringField;
    queryVEIC_RENAVAM: TStringField;
    queryVEIC_ANO_FABRICACAO: TIntegerField;
    queryVEIC_ANO_MODELO: TIntegerField;
    queryVEIC_TIPO: TStringField;
    queryVEIC_TIPO_PINTURA: TStringField;
    queryVEIC_COD_COR: TStringField;
    queryVEIC_COR: TStringField;
    queryVEIC_VIN: TStringField;
    queryVEIC_NUMERO_MOTOR: TStringField;
    queryVEIC_CMKG: TStringField;
    queryVEIC_CM3: TStringField;
    queryVEIC_DISTANCIA_EIXO: TStringField;
    queryVEIC_COD_MARCA: TStringField;
    queryVEIC_ESPECIE: TStringField;
    queryVEIC_CONDICAO: TStringField;
    queryLOTE_FABRICACAO: TStringField;
    queryLOTE_VALIDADE: TDateTimeField;
    queryMARGEM_AGREGADA: TFloatField;
    queryCODBARRA_NOVARTIS: TStringField;
    queryFARMACIA_DCB: TStringField;
    queryFARMACIA_ABCFARMA: TStringField;
    queryFARMACIA_APRESENTACAO_CAIXA: TStringField;
    queryFARMACIA_PRINCIPIOATIVO: TStringField;
    queryULTIMA_COMPRA: TDateTimeField;
    queryFARMACIA_DATAVIGENCIA: TDateTimeField;
    queryFARMACIA_TIPO: TStringField;
    queryUSA_COMBUSTIVEL: TStringField;
    queryREFERENCIA: TStringField;
    queryPERDA: TFloatField;
    queryCOMPOSICAO1: TStringField;
    queryCOMPOSICAO2: TStringField;
    queryIAT: TStringField;
    queryIPPT: TStringField;
    querySITUACAO_TRIBUTARIA: TStringField;
    queryFLAG_SIS: TStringField;
    queryFLAG_ACEITO: TStringField;
    queryFLAG_EST: TStringField;
    queryCSOSN: TStringField;
    queryCODORIGINAL: TStringField;
    queryCUSTO_ATACADO: TFloatField;
    queryUNIDADE_ATACADO: TStringField;
    queryQTDE_EMBALAGEMATACADO: TFloatField;
    queryPMARGEM1: TFloatField;
    queryPMARGEM2: TFloatField;
    queryPMARGEM3: TFloatField;
    queryPMARGEM4: TFloatField;
    queryPMARGEM5: TFloatField;
    queryPMARGEMATACADO1: TFloatField;
    queryPMARGEMATACADO2: TFloatField;
    queryPMARGEMATACADO3: TFloatField;
    queryPMARGEMATACADO4: TFloatField;
    queryPMARGEMATACADO5: TFloatField;
    queryPMARGEMATACADO6: TFloatField;
    queryPRECOATACADO1: TFloatField;
    queryPRECOATACADO2: TFloatField;
    queryPRECOATACADO3: TFloatField;
    queryPRECOATACADO4: TFloatField;
    queryPRECOATACADO5: TFloatField;
    queryIND_CFOP: TStringField;
    queryCFOP_DESC: TStringField;
    queryUSA_LOTE: TIntegerField;
    queryIND_CFOP_VENDA_DENTRO: TStringField;
    queryCODCONTA: TStringField;
    queryIND_CFOP_VENDA_FORA: TStringField;
    queryIND_CFOP_DEVOLUCAO_DENTRO: TStringField;
    queryIND_CFOP_DEVOLUCAO_FORA: TStringField;
    queryIND_CFOP_GARANTIA_DENTRO: TStringField;
    queryIND_CFOP_GARANTIA_FORA: TStringField;
    queryUSA_TB_PC: TStringField;
    queryCODPRODUTO: TStringField;
    queryCODFILIAL: TStringField;
    queryESTOQUE_INICIAL: TFloatField;
    queryENTRADAS: TFloatField;
    querySAIDAS: TFloatField;
    queryESTOQUE_ATUAL: TFloatField;
    queryULTIMA_ENTRADA: TDateTimeField;
    queryULTIMA_SAIDA: TDateTimeField;
    queryNOTA_FISCAL: TStringField;
    queryUNIDADE: TStringField;
    queryATIVA: TStringField;
    queryCEST: TStringField;
    queryORIGEM: TIntegerField;
    queryIND_CFOP_NFCE: TStringField;
    queryFOTOBD: TBlobField;
    queryID_TIPO_SERVICO: TIntegerField;
    queryNAO_MOVIMENTA_ESTOQUE: TStringField;
    queryPESAGEM_AUOTMATICA: TStringField;
    queryINFORMA_CODIGO_BARRA_XML: TStringField;
    queryCODIGO_ANP: TStringField;
    queryCOMBO: TStringField;
    queryIND_CFOP_DEV_COMPRA_DENTRO: TStringField;
    queryIND_CFOP_DEV_COMPRA_FORA: TStringField;
    queryPIZZA: TStringField;
    queryPERCGLNN: TFloatField;
    queryPERCGLGNI: TFloatField;
    queryPGLP: TFloatField;
    queryVPART: TFloatField;
    queryECF_ICMS: TStringField;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_produto: Tfrmxloc_produto;
  voltar : boolean;
  situacao : string;

implementation

uses modulo, principal;


{$R *.dfm}

procedure Tfrmxloc_produto.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_produto.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmxloc_produto.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_produto.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    IF PPROCURA.Visible THEN WWDBGRID1.SetFocus ELSE grid.setfocus;
  end;
end;

procedure Tfrmxloc_produto.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_produto.locKeyPress(Sender: TObject; var Key: Char);
var ref, tipo : string;
begin
  if key = #13 then
  begin
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
    if combo_localizar.ItemIndex < 3 then
    begin
      case combo_localizar.ItemIndex  OF
      0:TIPO := 'prod.PRODUTO';
      1:TIPO := 'prod.CODIGO';
      2:TIPO := 'prod.CODBARRA';
      end;
      try
        query.close;
        query.sql.clear;
        if loc.text = '' then
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and prod.codigo is null')
        ELSE if loc.text = '*' then
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao)
        else
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
        query.open;
      except
      end;
    end
    else
    begin
      IF PPROCURA.Visible THEN
      BEGIN
        IF combo_localizar.ItemIndex = 3 THEN
        BEGIN
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and prod.CODFORNECEDOR = '''+query2.fieldbyname('codigo').asstring+''' order by prod.produto');
          query.open;
          pprocura.Visible := false;
        END;
        IF combo_localizar.ItemIndex = 4 THEN
        BEGIN
          query.close;
          query.sql.clear;
          query.sql.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and  prod.CODmarca = '''+query2.fieldbyname('codigo').asstring+''' order by prod.produto');
          query.open;
          pprocura.Visible := false;
        END;
      END
      ELSE
      BEGIN
        if query.RecNo > 0 then
        begin
          resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
          close;
        end;
      END;
    end;
  end;
end;

procedure Tfrmxloc_produto.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_produto.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmxloc_produto.FormShow(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := '';

  voltar := false;
  if loc.text = '' then
  begin
    query.Close;
    query.SQL.clear;
    query.SQL.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null');
    query.open;
    loc.setfocus;
  end
  else
  begin
    query.Close;
    query.SQL.clear;
    query.SQL.Add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto '+situacao+' and upper(prod.produto) like '''+ansiuppercase(loc.text)+'%'' order by produto');
    query.open;
    grid.setfocus;
  end;

  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    combo_localizar.ItemIndex := 2;
end;

procedure Tfrmxloc_produto.GRIDEnter(Sender: TObject);
begin
  voltar := true;
 // lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_produto.GRIDExit(Sender: TObject);
begin
 // lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_produto.locChange(Sender: TObject);
var ref, tipo : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  IF COMBO_LOCALIZAR.ITEMINDEX < 3 THEN
  BEGIN
   //
  END
  ELSE
  BEGIN
    IF COMBO_LOCALIZAR.ItemIndex = 3 THEN // FORNECEDOR
    BEGIN
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000009 where codigo = ''xxxxxx''')
      ELSE
        QUERY2.SQL.ADD('SELECT * FROM C000009 where upper(NOME) like '''+ref+loc.Text+'%'' order by NOME');
      QUERY2.OPEN;
      IF QUERY2.RecordCount > 0 THEN
      BEGIN
        PPROCURA.Visible := TRUE;
      END
      else
        PPROCURA.Visible := false;

    END;

    IF COMBO_LOCALIZAR.ItemIndex = 4 THEN // marca
    BEGIN
      QUERY2.Close;
      QUERY2.SQL.CLEAR;
      if loc.text = '' then
        query2.sql.Add('select * from c000019 where codigo = ''xxxxxx''')
      ELSE
        QUERY2.SQL.ADD('SELECT * FROM C000019 where upper(NOME) like '''+ref+loc.Text+'%'' order by NOME');
      QUERY2.OPEN;
      IF QUERY2.RecordCount > 0 THEN
      BEGIN
        PPROCURA.Visible := TRUE;
      END
      else
        PPROCURA.Visible := false;
    END;
  END;



end;

procedure Tfrmxloc_produto.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('PRODUTO').asstring;
      close;

end;

procedure Tfrmxloc_produto.wwDBGrid1Enter(Sender: TObject);
begin
  voltar := true;
 // lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_produto.wwDBGrid1Exit(Sender: TObject);
begin
 // lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_produto.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then locKeyPress(frmxloc_produto,key);
  loc.setfocus;
end;

procedure Tfrmxloc_produto.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  loc.setfocus;
end;

procedure Tfrmxloc_produto.combo_situacaoChange(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := '';
end;

end.
