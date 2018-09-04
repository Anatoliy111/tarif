inherited Jurn: TJurn
  Caption = #1046#1091#1088#1085#1072#1083
  ClientHeight = 524
  ClientWidth = 768
  OnCreate = FormCreate
  ExplicitWidth = 784
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxStatusBar1: TdxStatusBar
    Top = 501
    Width = 762
    ExplicitTop = 501
    ExplicitWidth = 762
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 28
    Width = 768
    Height = 470
    Align = alClient
    TabOrder = 4
    ExplicitTop = 26
    ExplicitHeight = 472
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSDOC
      DataController.KeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1KL: TcxGridDBColumn
        DataBinding.FieldName = 'KL'
      end
      object cxGrid1DBTableView1KL_DOC: TcxGridDBColumn
        DataBinding.FieldName = 'KL_DOC'
      end
      object cxGrid1DBTableView1KL_PLAT: TcxGridDBColumn
        DataBinding.FieldName = 'KL_PLAT'
      end
      object cxGrid1DBTableView1KL_BANK_RAX_DT: TcxGridDBColumn
        DataBinding.FieldName = 'KL_BANK_RAX_DT'
      end
      object cxGrid1DBTableView1KL_BANK_RAX_KR: TcxGridDBColumn
        DataBinding.FieldName = 'KL_BANK_RAX_KR'
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
      end
      object cxGrid1DBTableView1NUM_DOC: TcxGridDBColumn
        DataBinding.FieldName = 'NUM_DOC'
      end
      object cxGrid1DBTableView1DATA_DOC: TcxGridDBColumn
        DataBinding.FieldName = 'DATA_DOC'
      end
      object cxGrid1DBTableView1KL_CEX: TcxGridDBColumn
        DataBinding.FieldName = 'KL_CEX'
      end
      object cxGrid1DBTableView1KL_SKL: TcxGridDBColumn
        DataBinding.FieldName = 'KL_SKL'
      end
      object cxGrid1DBTableView1KL_KLIENT: TcxGridDBColumn
        DataBinding.FieldName = 'KL_KLIENT'
      end
      object cxGrid1DBTableView1PRIZ: TcxGridDBColumn
        DataBinding.FieldName = 'PRIZ'
      end
      object cxGrid1DBTableView1MOL: TcxGridDBColumn
        DataBinding.FieldName = 'MOL'
      end
      object cxGrid1DBTableView1NUM_RAX: TcxGridDBColumn
        DataBinding.FieldName = 'NUM_RAX'
      end
      object cxGrid1DBTableView1DATA_RAX: TcxGridDBColumn
        DataBinding.FieldName = 'DATA_RAX'
      end
      object cxGrid1DBTableView1NOTE: TcxGridDBColumn
        DataBinding.FieldName = 'NOTE'
      end
      object cxGrid1DBTableView1DATA_NOW: TcxGridDBColumn
        DataBinding.FieldName = 'DATA_NOW'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = Main.ImageList3
    ImageOptions.LargeImages = Main.ImageList3
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 560
    Top = 64
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'jurn'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 706
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      LargeImageIndex = 5
    end
    object dxBarButton2: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
    end
    object dxBarButton3: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
      ImageIndex = 6
    end
  end
  object IBDOC: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBDOCBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DOCUMENT'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into DOCUMENT'
      
        '  (DATA_DOC, DATA_NOW, DATA_RAX, KL, KL_BANK_RAX_DT, KL_BANK_RAX' +
        '_KR, KL_CEX, '
      
        '   KL_DOC, KL_KLIENT, KL_PLAT, KL_SKL, MOL, NOTE, NUM_DOC, NUM_R' +
        'AX, PRIZ, '
      '   SUMMA)'
      'values'
      
        '  (:DATA_DOC, :DATA_NOW, :DATA_RAX, :KL, :KL_BANK_RAX_DT, :KL_BA' +
        'NK_RAX_KR, '
      
        '   :KL_CEX, :KL_DOC, :KL_KLIENT, :KL_PLAT, :KL_SKL, :MOL, :NOTE,' +
        ' :NUM_DOC, '
      '   :NUM_RAX, :PRIZ, :SUMMA)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  KL_DOC,'
      '  KL_PLAT,'
      '  KL_BANK_RAX_DT,'
      '  KL_BANK_RAX_KR,'
      '  SUMMA,'
      '  NUM_DOC,'
      '  DATA_DOC,'
      '  KL_CEX,'
      '  KL_SKL,'
      '  KL_KLIENT,'
      '  PRIZ,'
      '  MOL,'
      '  NUM_RAX,'
      '  DATA_RAX,'
      '  NOTE,'
      '  DATA_NOW'
      'from DOCUMENT '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'SELECT DOCUMENT.KL, DOCUMENT.KL_DOC, DOCUMENT.KL_PLAT, DOCUMENT.' +
        'KL_BANK_RAX_DT, DOCUMENT.KL_BANK_RAX_KR, DOCUMENT.SUMMA, DOCUMEN' +
        'T.NUM_DOC, DOCUMENT.DATA_DOC, DOCUMENT.KL_CEX, DOCUMENT.KL_SKL, ' +
        'DOCUMENT.KL_KLIENT, DOCUMENT.PRIZ, DOCUMENT.MOL, DOCUMENT.NUM_RA' +
        'X, DOCUMENT.DATA_RAX, DOCUMENT.NOTE, DOCUMENT.DATA_NOW'
      'FROM DOCUMENT WHERE KL_DOC=:TDOC ORDER BY KL')
    ModifySQL.Strings = (
      'update DOCUMENT'
      'set'
      '  DATA_DOC = :DATA_DOC,'
      '  DATA_NOW = :DATA_NOW,'
      '  DATA_RAX = :DATA_RAX,'
      '  KL = :KL,'
      '  KL_BANK_RAX_DT = :KL_BANK_RAX_DT,'
      '  KL_BANK_RAX_KR = :KL_BANK_RAX_KR,'
      '  KL_CEX = :KL_CEX,'
      '  KL_DOC = :KL_DOC,'
      '  KL_KLIENT = :KL_KLIENT,'
      '  KL_PLAT = :KL_PLAT,'
      '  KL_SKL = :KL_SKL,'
      '  MOL = :MOL,'
      '  NOTE = :NOTE,'
      '  NUM_DOC = :NUM_DOC,'
      '  NUM_RAX = :NUM_RAX,'
      '  PRIZ = :PRIZ,'
      '  SUMMA = :SUMMA'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_DOCUMENT_ID'
    Left = 40
    Top = 40
    object IBDOCKL: TIntegerField
      FieldName = 'KL'
      Origin = '"DOCUMENT"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDOCKL_DOC: TIntegerField
      FieldName = 'KL_DOC'
      Origin = '"DOCUMENT"."KL_DOC"'
      Required = True
    end
    object IBDOCKL_PLAT: TIntegerField
      FieldName = 'KL_PLAT'
      Origin = '"DOCUMENT"."KL_PLAT"'
    end
    object IBDOCKL_BANK_RAX_DT: TIntegerField
      FieldName = 'KL_BANK_RAX_DT'
      Origin = '"DOCUMENT"."KL_BANK_RAX_DT"'
    end
    object IBDOCKL_BANK_RAX_KR: TIntegerField
      FieldName = 'KL_BANK_RAX_KR'
      Origin = '"DOCUMENT"."KL_BANK_RAX_KR"'
    end
    object IBDOCSUMMA: TIBBCDField
      FieldName = 'SUMMA'
      Origin = '"DOCUMENT"."SUMMA"'
      Precision = 18
      Size = 2
    end
    object IBDOCNUM_DOC: TIBStringField
      FieldName = 'NUM_DOC'
      Origin = '"DOCUMENT"."NUM_DOC"'
      Size = 15
    end
    object IBDOCDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
      Origin = '"DOCUMENT"."DATA_DOC"'
    end
    object IBDOCKL_CEX: TIntegerField
      FieldName = 'KL_CEX'
      Origin = '"DOCUMENT"."KL_CEX"'
    end
    object IBDOCKL_SKL: TIntegerField
      FieldName = 'KL_SKL'
      Origin = '"DOCUMENT"."KL_SKL"'
    end
    object IBDOCKL_KLIENT: TIntegerField
      FieldName = 'KL_KLIENT'
      Origin = '"DOCUMENT"."KL_KLIENT"'
    end
    object IBDOCPRIZ: TIBStringField
      FieldName = 'PRIZ'
      Origin = '"DOCUMENT"."PRIZ"'
      Size = 250
    end
    object IBDOCMOL: TIBStringField
      FieldName = 'MOL'
      Origin = '"DOCUMENT"."MOL"'
      Size = 100
    end
    object IBDOCNUM_RAX: TIBStringField
      FieldName = 'NUM_RAX'
      Origin = '"DOCUMENT"."NUM_RAX"'
      Size = 10
    end
    object IBDOCDATA_RAX: TDateField
      FieldName = 'DATA_RAX'
      Origin = '"DOCUMENT"."DATA_RAX"'
    end
    object IBDOCNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"DOCUMENT"."NOTE"'
      Size = 128
    end
    object IBDOCDATA_NOW: TDateField
      FieldName = 'DATA_NOW'
      Origin = '"DOCUMENT"."DATA_NOW"'
    end
  end
  object DSDOC: TDataSource
    DataSet = IBDOC
    Left = 40
    Top = 72
  end
end
