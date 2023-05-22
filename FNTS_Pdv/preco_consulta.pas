unit preco_consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, jpeg, ExtCtrls, AdvOfficeImage, Mask, RzEdit,
  Menus, AdvMenus, DB, DBAccess, pngimage, frxClass, Uni, MemDS;

type
  TfrmPreco_consulta = class(TForm)
    pop_principal: TAdvPopupMenu;
    N2: TMenuItem;
    Retornar1: TMenuItem;
    Estoque1: TMenuItem;
    query: TUniQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    pnFundo: TPanel;
    Image1: TImage;
    lb_status: TRzLabel;
    lb_promocao: TRzLabel;
    lb_produto: TRzLabel;
    lb_preco: TRzLabel;
    lb_nome_produto: TRzLabel;
    img_foto: TImage;
    RzLabel1: TRzLabel;
    ed_barra: TRzEdit;
    procedure FormCreate(Sender: TObject);
    procedure ed_barraEnter(Sender: TObject);
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure Retornar1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreco_consulta: TfrmPreco_consulta;

implementation

uses funcoes, modulo, venda, principal, consulta_estoque;

{$R *.dfm}

procedure TfrmPreco_consulta.FormCreate(Sender: TObject);
begin
    Self.DoubleBuffered := True;
  top := 0;
  left := 0;
  img_foto.Picture := nil;
end;

procedure TfrmPreco_consulta.ed_barraEnter(Sender: TObject);
begin
  lb_status.Caption := 'Informe o C�digo Barras ou Nome do Produto...';
end;

procedure TfrmPreco_consulta.ed_barraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ed_barra.Text <> '' then
    begin
      iPesquisa_produto := 1;
      if frmVenda.Localizar_Produto(ed_barra.text) then
      begin
        lb_nome_produto.caption := sProd_nome;
        lb_preco.caption := FormatFloat('###,###,##0.00',rprod_preco);
        if bBusca_foto_produto then
        begin
          if FileExists(sPasta_foto_produto+'\'+sProd_barra+'.jpg') then
            img_foto.Picture.LoadFromFile(sPasta_foto_produto+'\'+sProd_barra+'.jpg')
          else
            img_foto.Picture := nil;
        end;
        
        ed_barra.selectall;
      end
      else
      begin
        img_foto.Picture := nil;
        lb_preco.Caption := '---';
        lb_promocao.Visible := false;
        lb_nome_produto.Caption := '';
        lb_produto.Font.color := clred;
        lb_produto.caption := 'Nenhum produto encontrado!';
        Application.ProcessMessages;
        Sleep(1500);
        lb_produto.Font.color := clwhite;
        lb_produto.Caption := 'Consulta de produto';
        ED_barra.TEXT := '';
        ed_barra.SelectAll;
      end;
    end;
  end
  else
  begin
    if key = #27 then
      close
  end;
end;

procedure TfrmPreco_consulta.Retornar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPreco_consulta.Estoque1Click(Sender: TObject);
begin
  if lb_nome_produto.Caption = '' then exit;

  // filtrar as vendas deste produto que nao foram exportados
  query.close;
  query.sql.clear;
  query.sql.add('select');
  query.sql.add('(select sum(qtde) from cupom_item, cupom');
  query.sql.add('  where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('  and cupom.ex = 0');
  query.sql.add('  and cupom_item.cancelado = 1');
  query.sql.add('  and cupom_item.cod_produto = '+IntToStr(iProd_codigo)+') as total_cancelado,');
  query.sql.add('sum(qtde) as total_vendido from cupom_item, cupom');
  query.sql.add('  where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('  and cupom.ex = 0');
  query.sql.add('  and cupom_item.cancelado = 0');
  query.sql.add('  and cupom_item.cod_produto = '+IntToStr(iProd_codigo));
  query.open;

  frmConsulta_Estoque := tfrmConsulta_Estoque.create(self);
  frmConsulta_Estoque.lb_estoque.Caption :=
    FormatFloat('###,###,##0.00',rProd_Estoque-query.fieldbyname('total_vendido').asfloat+
                                 query.fieldbyname('total_cancelado').asfloat)+' '+sProd_unidade;
  frmConsulta_Estoque.StatusBar1.Panels[0].Text := 'Atualizado em: '+sCarga_data+' �s '+scarga_hora;
  frmConsulta_Estoque.showmodal;
end;


end.
