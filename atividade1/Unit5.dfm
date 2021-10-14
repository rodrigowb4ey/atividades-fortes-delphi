object Calculadora: TCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora de Parcelas'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 40
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Valor de venda:'
  end
  object Edit2: TEdit
    Left = 192
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'N'#176' de parcelas:'
  end
  object Parcelas: TMemo
    Left = 40
    Top = 96
    Width = 393
    Height = 89
    Lines.Strings = (
      'Parcelas')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 344
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
end
