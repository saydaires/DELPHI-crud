unit uProduto;

interface
uses
    System.SysUtils,
    System.Variants,
    System.Classes;

type
    TProduto = class
        private
            FCodigoBarras: String;
            FNome: String;
            FDescricao: String;
            FPreco: Double;
            FQuantidade: Integer;
            FCategoria: String;
        public
            property CodigoBarras: String read FCodigoBarras write FCodigoBarras;
            property Nome: String read FNome write FNome;
            property Descricao: String read FDescricao write FDescricao;
            property Preco: Double read FPreco write FPreco;
            property Quantidade: Integer read FQuantidade write FQuantidade;
            property Categoria: String read FCategoria write FCategoria;
    end;

implementation

end.
