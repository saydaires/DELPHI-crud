unit uProdutoDAO;

interface
uses
    System.SysUtils,
    System.Variants,
    System.Classes,
    udmConexaoBancoDados,
    uProduto;

type
    TProdutoDAO = class
        private
        public
            procedure salvar(produto: TProduto);
            procedure atualizar(produto: TProduto);
            procedure deletar(codigoBarras: String);
    end;

implementation
procedure TProdutoDAO.salvar(produto: TProduto);
var conexao: TdmConexaoBancoDados;
begin
    conexao := TdmConexaoBancoDados.Create(nil);
    conexao.fdQuery.SQL.Clear;

    conexao
    .fdQuery
    .SQL
    .Add('INSERT INTO PRODUTO(codigo_de_barras, nome, descricao, preco, quantidade, categoria)');

    conexao
    .fdQuery
    .SQL
    .Add(' VALUES (:p_codigo_de_barras, :p_nome, :p_descricao, :p_preco, :p_quantidade, :p_categoria)');

    conexao.fdQuery.ParamByName('p_codigo_de_barras').AsString := produto.CodigoBarras;
    conexao.fdQuery.ParamByName('p_nome').AsString := produto.Nome;
    conexao.fdQuery.ParamByName('p_descricao').AsString := produto.Descricao;
    conexao.fdQuery.ParamByName('p_preco').AsFloat := produto.Preco;
    conexao.fdQuery.ParamByName('p_quantidade').AsInteger := produto.Quantidade;
    conexao.fdQuery.ParamByName('p_categoria').AsString := produto.Categoria;

    conexao.fdQuery.ExecSQL;
end;

procedure TProdutoDAO.atualizar(produto: TProduto);
var conexao: TdmConexaoBancoDados;
begin
    conexao := TdmConexaoBancoDados.Create(nil);
    conexao.fdQuery.SQL.Clear;

    conexao
    .fdQuery
    .SQL
    .Add('UPDATE PRODUTO SET preco = :p_preco, quantidade = :p_quantidade WHERE codigo_de_barras = :p_codigo_de_barras');

    conexao.fdQuery.ParamByName('p_preco').AsFloat := produto.Preco;
    conexao.fdQuery.ParamByName('p_quantidade').AsInteger := produto.Quantidade;
    conexao.fdQuery.ParamByName('p_codigo_de_barras').AsString := produto.CodigoBarras;

    conexao.fdQuery.ExecSQL;
end;

procedure TProdutoDAO.deletar(codigoBarras: String);
var conexao: TdmConexaoBancoDados;
begin
    conexao := TdmConexaoBancoDados.Create(nil);
    conexao.fdQuery.SQL.Clear;

    conexao
    .fdQuery
    .SQL
    .Add('DELETE FROM PRODUTO WHERE codigo_de_barras = :p_codigo_de_barras');

    conexao.fdQuery.ParamByName('p_codigo_de_barras').AsString := codigoBarras;

    conexao.fdQuery.ExecSQL;
end;

end.
