object FizzBuzz: TFizzBuzz
  Left = 0
  Top = 0
  Caption = 'Fizz, Buzz ou FizzBuzz?'
  ClientHeight = 385
  ClientWidth = 457
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
    Left = 32
    Top = 29
    Width = 126
    Height = 13
    Caption = 'Digite um n'#250'mero m'#225'ximo:'
  end
  object Label2: TLabel
    Left = 56
    Top = 211
    Width = 18
    Height = 13
    Caption = 'Fizz'
  end
  object Label3: TLabel
    Left = 52
    Top = 251
    Width = 22
    Height = 13
    Caption = 'Buzz'
  end
  object Label4: TLabel
    Left = 34
    Top = 291
    Width = 40
    Height = 13
    Caption = 'FizzBuzz'
  end
  object Label5: TLabel
    Left = 64
    Top = 168
    Width = 60
    Height = 13
    Caption = 'CONTADOR '
  end
  object Edit1: TEdit
    Left = 32
    Top = 48
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = 'GO!'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 208
    Top = 32
    Width = 185
    Height = 321
    DragCursor = crHourGlass
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 80
    Top = 208
    Width = 59
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 80
    Top = 248
    Width = 59
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 80
    Top = 288
    Width = 59
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 5
  end
end
