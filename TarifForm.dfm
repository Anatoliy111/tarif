inherited Tarifs: TTarifs
  Caption = #1058#1072#1088#1080#1092#1080
  ClientHeight = 588
  ClientWidth = 910
  OnCreate = FormCreate
  ExplicitWidth = 926
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 910
    TabOrder = 8
    ExplicitWidth = 910
  end
  object cxGrid1: TcxGrid [1]
    Left = 137
    Top = 105
    Width = 773
    Height = 414
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSTARIF
      DataController.KeyFieldNames = 'KL'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 236
      end
      object cxGrid1DBTableView1ID_TARDOM: TcxGridDBColumn
        DataBinding.FieldName = 'ID_TARDOM'
        Width = 87
      end
      object cxGrid1DBTableView1NOTE: TcxGridDBColumn
        DataBinding.FieldName = 'NOTE'
        Width = 135
      end
      object cxGrid1DBTableView1TARIF_PLAN: TcxGridDBColumn
        DataBinding.FieldName = 'TARIF_PLAN'
      end
      object cxGrid1DBTableView1TARIF_FACT: TcxGridDBColumn
        DataBinding.FieldName = 'TARIF_FACT'
      end
      object cxGrid1DBTableView1TARIF_RN: TcxGridDBColumn
        DataBinding.FieldName = 'TARIF_RN'
      end
      object cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn
        DataBinding.FieldName = 'TARIF_RK'
      end
      object cxGrid1DBTableView1NORMA: TcxGridDBColumn
        DataBinding.FieldName = 'NORMA'
      end
      object cxGrid1DBTableView1TARIF_END: TcxGridDBColumn
        DataBinding.FieldName = 'TARIF_END'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 41
    Width = 910
    Height = 64
    Align = alTop
    TabOrder = 3
    object cxLabel5: TcxLabel
      Left = 41
      Top = 41
      Caption = #1055#1086#1089#1083#1091#1075#1080
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel1: TcxLabel
      Left = 475
      Top = 41
      Caption = #1058#1072#1088#1080#1092#1080
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxButton1: TcxButton
      Left = 175
      Top = 23
      Width = 120
      Height = 33
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1056#1086#1079#1088#1072#1093#1091#1074#1072#1090#1080' '#1090#1072#1088#1080#1092#1080
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 301
      Top = 23
      Width = 120
      Height = 33
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080' '#1090#1072#1088#1080#1092#1080
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object cxLabel2: TcxLabel
      Left = 37
      Top = 5
      Caption = #1055#1077#1088#1110#1086#1076
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 5
      Top = 23
      Properties.KeyFieldNames = 'DATA'
      Properties.ListColumns = <
        item
          FieldName = 'DATA'
        end>
      Properties.ListSource = Main.DІPERIOD
      Properties.OnChange = cxLookupComboBox1PropertiesChange
      TabOrder = 5
      Width = 132
    end
  end
  object DBLookupListBox1: TDBLookupListBox [3]
    Left = 0
    Top = 105
    Width = 137
    Height = 407
    Align = alLeft
    KeyField = 'ID'
    ListField = 'NAME'
    ListSource = DSPOSL
    TabOrder = 2
    OnClick = DBLookupListBox1Click
  end
  inherited Panel4: TPanel
    Top = 519
    Width = 910
    TabOrder = 0
    ExplicitTop = 519
    ExplicitWidth = 910
    inherited Panel3: TPanel
      Left = 753
      Height = 44
      ExplicitLeft = 753
      ExplicitHeight = 44
    end
    inherited dxStatusBar1: TdxStatusBar
      Top = 48
      Width = 902
      Height = 17
      ExplicitTop = 48
      ExplicitWidth = 902
      ExplicitHeight = 17
    end
  end
  inherited IBTransaction1: TIBTransaction
    Left = 24
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
    Left = 640
    Top = 296
    DockControlHeights = (
      0
      0
      0
      0)
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
    DataSource = DSPOSL
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
      'select * from POSL')
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
  object IBTARIF_COMP: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIFBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_COMP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_COMP'
      '  (ID, DATA, ID_TARIF, NAME, SUMM)'
      'values'
      '  (:ID, :DATA, :ID_TARIF, :NAME, :SUMM)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  ID_TARIF,'
      '  NAME,'
      '  SUMM'
      'from TARIF_COMP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from TARIF_COMP')
    ModifySQL.Strings = (
      'update TARIF_COMP'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA,'
      '  ID_TARIF = :ID_TARIF,'
      '  NAME = :NAME,'
      '  SUMM = :SUMM'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_COMP_ID'
    DataSource = DSPOSL
    Left = 208
    Top = 400
    object IBTARIF_COMPID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_COMP"."ID"'
      Required = True
    end
    object IBTARIF_COMPDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TARIF_COMP"."DATA"'
    end
    object IBTARIF_COMPID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_COMP"."ID_TARIF"'
    end
    object IBTARIF_COMPNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF_COMP"."NAME"'
      Size = 50
    end
    object IBTARIF_COMPSUMM: TIBBCDField
      FieldName = 'SUMM'
      Origin = '"TARIF_COMP"."SUMM"'
      Precision = 18
      Size = 2
    end
  end
  object DSTARIF_COMP: TDataSource
    DataSet = IBTARIF_COMP
    Left = 208
    Top = 448
  end
end
