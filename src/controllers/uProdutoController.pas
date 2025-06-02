unit uProdutoController;

interface
uses
    System.SysUtils,
    System.Variants,
    System.Classes,
    uProduto,
    uProdutoService;

type
    TProdutoController = class
        private
        public
            function cadastrar(produto: TProduto): Boolean;
            function atualizar(produto: TProduto): Boolean;
            function deletar(codigoBarras: String): Boolean;
    end;
implementation
function TProdutoController.cadastrar(produto: TProduto): Boolean;
var service: TProdutoService;
begin
    Result := service.inserirProduto(produto);
end;

function TProdutoController.atualizar(produto: TProduto): Boolean;
var service: TProdutoService;
begin
    Result := service.atualizarProduto(produto);
end;

function TProdutoController.deletar(codigoBarras: String): Boolean;
var service: TProdutoService;
begin
    Result := service.deletarProduto(codigoBarras);
end;

end.
