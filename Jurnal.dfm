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
    Left = 256
    Top = 56
    Width = 488
    Height = 450
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSTARIF
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
  object CheckListBox1: TCheckListBox [2]
    Left = 128
    Top = 224
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 6
  end
  inherited IBTransaction1: TIBTransaction
    Active = True
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
  object IBTARIF: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIFBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF'
      
        '  (ID, DATA, NAME, ID_POSL, ID_TARDOM, NOTE, TARIF_PLAN, TARIF_F' +
        'ACT, TARIF_RN, '
      '   TARIF_RK, NORMA, TARIF_END)'
      'values'
      
        '  (:ID, :DATA, :NAME, :ID_POSL, :ID_TARDOM, :NOTE, :TARIF_PLAN, ' +
        ':TARIF_FACT, '
      '   :TARIF_RN, :TARIF_RK, :NORMA, :TARIF_END)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  NAME,'
      '  ID_POSL,'
      '  ID_TARDOM,'
      '  NOTE,'
      '  TARIF_PLAN,'
      '  TARIF_FACT,'
      '  TARIF_RN,'
      '  TARIF_RK,'
      '  NORMA,'
      '  TARIF_END'
      'from TARIF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from TARIF')
    ModifySQL.Strings = (
      'update TARIF'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  NAME = :NAME,'
      '  ID_POSL = :ID_POSL,'
      '  ID_TARDOM = :ID_TARDOM,'
      '  NOTE = :NOTE,'
      '  TARIF_PLAN = :TARIF_PLAN,'
      '  TARIF_FACT = :TARIF_FACT,'
      '  TARIF_RN = :TARIF_RN,'
      '  TARIF_RK = :TARIF_RK,'
      '  NORMA = :NORMA,'
      '  TARIF_END = :TARIF_END'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_ID'
    Left = 80
    Top = 400
    object IBTARIFID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF"."ID"'
      Required = True
    end
    object IBTARIFDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TARIF"."DATA"'
    end
    object IBTARIFNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF"."NAME"'
      Size = 50
    end
    object IBTARIFID_POSL: TIntegerField
      FieldName = 'ID_POSL'
      Origin = '"TARIF"."ID_POSL"'
    end
    object IBTARIFID_TARDOM: TIntegerField
      FieldName = 'ID_TARDOM'
      Origin = '"TARIF"."ID_TARDOM"'
    end
    object IBTARIFNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TARIF"."NOTE"'
      Size = 100
    end
    object IBTARIFTARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      Origin = '"TARIF"."TARIF_PLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIFTARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      Origin = '"TARIF"."TARIF_FACT"'
      Precision = 18
      Size = 2
    end
    object IBTARIFTARIF_RN: TIBBCDField
      FieldName = 'TARIF_RN'
      Origin = '"TARIF"."TARIF_RN"'
      Precision = 18
      Size = 2
    end
    object IBTARIFTARIF_RK: TIBBCDField
      FieldName = 'TARIF_RK'
      Origin = '"TARIF"."TARIF_RK"'
      Precision = 18
      Size = 2
    end
    object IBTARIFNORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF"."NORMA"'
      Precision = 18
      Size = 2
    end
    object IBTARIFTARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      Origin = '"TARIF"."TARIF_END"'
      Precision = 18
      Size = 2
    end
  end
  object DSTARIF: TDataSource
    DataSet = IBTARIF
    Left = 80
    Top = 448
  end
  object IBPOSL: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIFBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from POSL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into POSL'
      '  (ID, WID, NAME, FL_ZAGR, FL_ROZRAH)'
      'values'
      '  (:ID, :WID, :NAME, :FL_ZAGR, :FL_ROZRAH)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  WID,'
      '  NAME,'
      '  FL_ZAGR,'
      '  FL_ROZRAH'
      'from POSL '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from  POSL')
    ModifySQL.Strings = (
      'update POSL'
      'set'
      '  ID = :ID,'
      '  WID = :WID,'
      '  NAME = :NAME,'
      '  FL_ZAGR = :FL_ZAGR,'
      '  FL_ROZRAH = :FL_ROZRAH'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_POSL_ID'
    Left = 136
    Top = 400
    object IBPOSLID: TIntegerField
      FieldName = 'ID'
      Origin = '"POSL"."ID"'
      Required = True
    end
    object IBPOSLWID: TIBStringField
      FieldName = 'WID'
      Origin = '"POSL"."WID"'
      Size = 2
    end
    object IBPOSLNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"POSL"."NAME"'
    end
    object IBPOSLFL_ZAGR: TIntegerField
      FieldName = 'FL_ZAGR'
      Origin = '"POSL"."FL_ZAGR"'
    end
    object IBPOSLFL_ROZRAH: TIntegerField
      FieldName = 'FL_ROZRAH'
      Origin = '"POSL"."FL_ROZRAH"'
    end
  end
  object DSPOSL: TDataSource
    DataSet = IBPOSL
    Left = 136
    Top = 448
  end
end
