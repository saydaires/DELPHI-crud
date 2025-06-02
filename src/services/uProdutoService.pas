unit uProdutoService;

interface
uses
    System.SysUtils,
    System.Variants,
    System.Classes, uProduto, uProdutoDAO, uVerificacao;

type
    TProdutoService = class
          private
          public
              function inserirProduto(produto: TProduto): Boolean;
              function atualizarProduto(produto: TProduto): Boolean;
              function deletarProduto(codigoBarras: String): Boolean;
    end;

implementation
function TProdutoService.inserirProduto(produto: TProduto): Boolean;
var verificador: TVerificacao;
var dao: TProdutoDAO;
begin
    if verificador.verificarCodBarras(produto.CodigoBarras) then
    begin
        dao.salvar(produto);
        Result := True;
    end
    else
        Result := False;
end;

function TProdutoService.atualizarProduto(produto: TProduto): Boolean;
var verificador: TVerificacao;
var dao: TProdutoDAO;
begin
    if verificador.verificarCodBarras(produto.CodigoBarras) then
    begin
        dao.atualizar(produto);
        Result := True;
    end
    else
        Result := False;
end;

function TProdutoService.deletarProduto(codigoBarras: String): Boolean;
var verificador: TVerificacao;
var dao: TProdutoDAO;
begin
    if verificador.verificarCodBarras(codigoBarras) then
    begin
        dao.deletar(codigoBarras);
        Result := True;
    end
    else
        Result := False;
end;

end.
