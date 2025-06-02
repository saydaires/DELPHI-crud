object dmConexaoBancoDados: TdmConexaoBancoDados
  Height = 480
  Width = 640
  object fdConnectionDB: TFDConnection
    Params.Strings = (
      'User_Name=delphi_crud_final'
      'Password=senha123'
      'Database=XEPDB1'
      'DriverID=Ora')
    Left = 200
    Top = 216
  end
  object fdQuery: TFDQuery
    Connection = fdConnectionDB
    Left = 376
    Top = 224
  end
end
