object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'CRUD PRODUTOS'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    ActivePage = TabMenuPrincipal
    Align = alClient
    TabOrder = 0
    object TabMenuPrincipal: TTabSheet
      Caption = 'MENU'
      object Label1: TLabel
        Left = 280
        Top = 144
        Width = 183
        Height = 15
        Caption = 'DELETAR POR CODIGO DE BARRAS'
      end
      object PanelMenuPrincipal: TPanel
        Left = 0
        Top = 0
        Width = 137
        Height = 411
        Align = alLeft
        TabOrder = 0
        object btnNovo: TButton
          Left = 8
          Top = 24
          Width = 121
          Height = 105
          Caption = 'NOVO PRODUTO'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnAtualizar: TButton
          Left = 8
          Top = 272
          Width = 121
          Height = 108
          Caption = 'ATUALIZAR PRODUTO'
          TabOrder = 1
          OnClick = btnAtualizarClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 143
        Top = 232
        Width = 470
        Height = 176
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object EditCodBarras: TEdit
        Left = 280
        Top = 165
        Width = 217
        Height = 23
        NumbersOnly = True
        TabOrder = 2
      end
      object btnListar: TButton
        Left = 143
        Top = 201
        Width = 75
        Height = 25
        Caption = 'LISTAR'
        TabOrder = 3
      end
      object btnSair: TButton
        Left = 492
        Top = 3
        Width = 121
        Height = 105
        Caption = 'SAIR'
        TabOrder = 4
        OnClick = btnSairClick
      end
      object btnDeletar: TButton
        Left = 280
        Top = 201
        Width = 75
        Height = 25
        Caption = 'DELETAR'
        TabOrder = 5
        OnClick = btnDeletarClick
      end
    end
  end
end
