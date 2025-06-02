object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastrar Produto'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 256
    Top = 27
    Width = 108
    Height = 15
    Caption = 'CODIGO DE BARRAS'
  end
  object Label2: TLabel
    Left = 256
    Top = 91
    Width = 35
    Height = 15
    Caption = 'NOME'
  end
  object Label3: TLabel
    Left = 256
    Top = 227
    Width = 37
    Height = 15
    Caption = 'PRE'#199'O'
  end
  object Label4: TLabel
    Left = 256
    Top = 155
    Width = 63
    Height = 15
    Caption = 'DESCRI'#199#195'O'
  end
  object Label5: TLabel
    Left = 256
    Top = 299
    Width = 73
    Height = 15
    Caption = 'QUANTIDADE'
  end
  object Label6: TLabel
    Left = 256
    Top = 365
    Width = 62
    Height = 15
    Caption = 'CATEGORIA'
  end
  object PanelCadastro: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 441
    Align = alLeft
    TabOrder = 0
    object btnSalvar: TButton
      Left = 24
      Top = 19
      Width = 97
      Height = 87
      Caption = 'SALVAR'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnLimpar: TButton
      Left = 24
      Top = 147
      Width = 97
      Height = 95
      Caption = 'LIMPAR CAMPOS'
      TabOrder = 1
      OnClick = btnLimparClick
    end
    object btnSair: TButton
      Left = 24
      Top = 326
      Width = 97
      Height = 95
      Caption = 'SAIR'
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object EditCodBarras: TEdit
    Left = 256
    Top = 48
    Width = 217
    Height = 23
    NumbersOnly = True
    TabOrder = 1
  end
  object EditNome: TEdit
    Left = 256
    Top = 112
    Width = 217
    Height = 23
    TabOrder = 2
  end
  object EditDescricao: TEdit
    Left = 256
    Top = 176
    Width = 217
    Height = 23
    TabOrder = 3
  end
  object SpinPreco: TSpinEdit
    Left = 256
    Top = 248
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
  object EditQuantidade: TEdit
    Left = 256
    Top = 320
    Width = 217
    Height = 23
    NumbersOnly = True
    TabOrder = 5
  end
  object EditCategoria: TEdit
    Left = 256
    Top = 386
    Width = 217
    Height = 23
    TabOrder = 6
  end
end
