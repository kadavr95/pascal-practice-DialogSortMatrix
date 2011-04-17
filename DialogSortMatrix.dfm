object Form2: TForm2
  Left = 394
  Top = 444
  Caption = 'Form2'
  ClientHeight = 80
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Open: TButton
    Left = 224
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = OpenClick
  end
  object Save: TButton
    Left = 328
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveClick
  end
  object odlg: TOpenDialog
  end
  object sdlg: TSaveDialog
    Left = 32
  end
  object tme: TTimer
    Interval = 1
    Left = 64
  end
end
