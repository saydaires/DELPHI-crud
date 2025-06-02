unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, uFormCadastro, uFormAtualizar, uProdutoController, uVerificacao;

type
  TFormPrincipal = class(TForm)
    PageControl: TPageControl;
    TabMenuPrincipal: TTabSheet;
    PanelMenuPrincipal: TPanel;
    DBGrid1: TDBGrid;
    EditCodBarras: TEdit;
    btnListar: TButton;
    Label1: TLabel;
    btnNovo: TButton;
    btnAtualizar: TButton;
    btnSair: TButton;
    btnDeletar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.btnAtualizarClick(Sender: TObject);
var tabAtualizar: TTabSheet;
var formAtualizar: TFormAtualizar;
begin
    tabAtualizar := TTabSheet.Create(PageControl);
    tabAtualizar.PageControl := PageControl;
    tabAtualizar.Caption := 'ATUALIZAR';
    formAtualizar := TFormAtualizar.Create(Self);
    formAtualizar.setPageControl(PageControl);
    formAtualizar.Parent := tabAtualizar;
    formAtualizar.BorderStyle := bsNone;
    formAtualizar.Align := alClient;
    formAtualizar.Visible := True;
    PageControl.ActivePage := tabAtualizar;
end;

procedure TFormPrincipal.btnDeletarClick(Sender: TObject);
var codBarras: String;
var controller: TProdutoController;
var verificador: TVerificacao;
begin
    codBarras := EditCodBarras.Text;
    if not codBarras.IsEmpty then
    begin
        if verificador.verificarCodBarras(codBarras) then
        begin
            controller.deletar(codBarras);
            ShowMessage('PRODUTO DELETADO COM SUCESSO!');
        end
        else
            ShowMessage('CODIGO DE BARRAS INVALIDO!');
    end
    else
        ShowMessage('CAMPO VAZIO!');
end;

procedure TFormPrincipal.btnNovoClick(Sender: TObject);
var formCadastro: TFormCadastro;
var tabCadastro: TTabSheet;
begin
    tabCadastro := TTabSheet.Create(PageControl);
    tabCadastro.PageControl := PageControl;
    tabCadastro.Caption := 'CADASTRO';

    formCadastro := TFormCadastro.Create(Self);
    formCadastro.setPageControl(PageControl);
    formCadastro.Parent := tabCadastro;
    formCadastro.Align := alClient;
    formCadastro.BorderStyle := bsNone;
    formCadastro.Visible := True;
    PageControl.ActivePage := tabCadastro;
end;

procedure TFormPrincipal.btnSairClick(Sender: TObject);
begin
    Self.Close;
end;

end.
