object AllMDICh: TAllMDICh
  Left = 0
  Top = 0
  Caption = 'AllMDICh'
  ClientHeight = 517
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar1: TdxStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 494
    Width = 752
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = DataM.IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Top = 488
  end
end
