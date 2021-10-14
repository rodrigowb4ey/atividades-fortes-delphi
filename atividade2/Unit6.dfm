object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Tri'#226'ngulo XYZ'
  ClientHeight = 326
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Lado X'
  end
  object Label2: TLabel
    Left = 216
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Lado Y'
  end
  object Label3: TLabel
    Left = 400
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Lado Z'
  end
  object Edit1: TEdit
    Left = 40
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 216
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 400
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 216
    Top = 120
    Width = 121
    Height = 49
    Caption = 'Este tri'#226'ngulo '#233':'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit4: TEdit
    Left = 216
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
