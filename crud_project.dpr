program crud_project;

uses
  Vcl.Forms,
  udmConexaoBancoDados in 'src\configs\udmConexaoBancoDados.pas' {dmConexaoBancoDados: TDataModule},
  uProduto in 'src\models\uProduto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexaoBancoDados, dmConexaoBancoDados);
  Application.Run;
end.
