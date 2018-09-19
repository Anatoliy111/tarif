object InsForm: TInsForm
  Left = 0
  Top = 0
  Caption = #1044#1086#1076#1072#1090#1080
  ClientHeight = 538
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 500
    Width = 561
    Height = 38
    Align = alBottom
    TabOrder = 0
    object cxButton3: TcxButton
      Left = 336
      Top = 5
      Width = 105
      Height = 25
      Caption = 'OK'
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 447
      Top = 5
      Width = 105
      Height = 25
      Caption = #1047#1072#1087#1080#1089#1072#1090#1080
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnClick = cxButton4Click
    end
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DataM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 8
    Top = 504
  end
end
