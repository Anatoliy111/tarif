inherited Tarifs: TTarifs
  Caption = #1058#1072#1088#1080#1092#1080
  ClientHeight = 629
  ClientWidth = 790
  OnCreate = FormCreate
  ExplicitWidth = 806
  ExplicitHeight = 667
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 790
    TabOrder = 6
    ExplicitWidth = 790
    object cxButton1: TcxButton
      Left = 168
      Top = 1
      Width = 120
      Height = 39
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1056#1086#1079#1088#1072#1093#1091#1074#1072#1090#1080' '#1090#1072#1088#1080#1092#1080
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 145
    Top = 89
    Width = 645
    Height = 403
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 206
    ExplicitTop = 104
    ExplicitWidth = 494
    ExplicitHeight = 284
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSTARIF
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 203
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
      object cxGrid1DBTableView1TARIF_END: TcxGridDBColumn
        DataBinding.FieldName = 'TARIF_END'
      end
      object cxGrid1DBTableView1NORMA: TcxGridDBColumn
        DataBinding.FieldName = 'NORMA'
      end
      object cxGrid1DBTableView1NOTE: TcxGridDBColumn
        DataBinding.FieldName = 'NOTE'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 41
    Width = 790
    Height = 48
    Align = alTop
    TabOrder = 2
    object cxButton2: TcxButton
      Left = 151
      Top = 5
      Width = 137
      Height = 33
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080'  SoftProekt'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      TabOrder = 2
      Width = 132
    end
  end
  inherited Panel4: TPanel
    Top = 576
    Width = 790
    Height = 53
    TabOrder = 0
    ExplicitTop = 576
    ExplicitWidth = 790
    ExplicitHeight = 53
    inherited Panel3: TPanel
      Left = 633
      Height = 28
      ExplicitLeft = 633
      ExplicitHeight = 28
      inherited cxButton4: TcxButton
        Top = 3
        ExplicitTop = 3
      end
      inherited cxButton3: TcxButton
        Top = 3
        ExplicitTop = 3
      end
    end
    inherited dxStatusBar1: TdxStatusBar
      Top = 32
      Width = 782
      Height = 17
      ExplicitTop = 32
      ExplicitWidth = 782
      ExplicitHeight = 17
    end
  end
  object cxGrid2: TcxGrid [4]
    Left = 0
    Top = 492
    Width = 790
    Height = 84
    Align = alBottom
    TabOrder = 8
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSTARIF_COMP
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGridDBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 217
      end
      object cxGridDBTableView1SUMM: TcxGridDBColumn
        DataBinding.FieldName = 'SUMM'
      end
      object cxGridDBTableView1NORMA: TcxGridDBColumn
        DataBinding.FieldName = 'NORMA'
      end
      object cxGridDBTableView1KL_NTAR: TcxGridDBColumn
        DataBinding.FieldName = 'KL_NTAR'
      end
      object cxGridDBTableView1FL_LIFT: TcxGridDBColumn
        DataBinding.FieldName = 'FL_LIFT'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel5: TPanel [5]
    Left = 0
    Top = 89
    Width = 145
    Height = 403
    Align = alLeft
    TabOrder = 9
    object DBLookupListBox1: TDBLookupListBox
      Left = 1
      Top = 1
      Width = 143
      Height = 160
      Align = alTop
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = DSPOSL
      TabOrder = 0
      OnClick = DBLookupListBox1Click
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 161
      Width = 143
      Height = 241
      Align = alClient
      TabOrder = 1
      ExplicitLeft = -9
      ExplicitTop = 184
      ExplicitWidth = 154
      ExplicitHeight = 219
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSTARIF_DOM
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView2NAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  inherited IBTransaction1: TIBTransaction
    Active = True
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
      
        '  (ID, DATA, NAME, ID_POSL, NOTE, TARIF_PLAN, TARIF_FACT, TARIF_' +
        'RN, TARIF_RK, '
      '   NORMA, TARIF_END)'
      'values'
      
        '  (:ID, :DATA, :NAME, :ID_POSL, :NOTE, :TARIF_PLAN, :TARIF_FACT,' +
        ' :TARIF_RN, '
      '   :TARIF_RK, :NORMA, :TARIF_END)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  NAME,'
      '  ID_POSL,'
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
      Size = 3
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
      '  (ID, DATA, ID_TARIF, NAME, SUMM, KL_NTAR, FL_LIFT, NORMA)'
      'values'
      
        '  (:ID, :DATA, :ID_TARIF, :NAME, :SUMM, :KL_NTAR, :FL_LIFT, :NOR' +
        'MA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA,'
      '  ID_TARIF,'
      '  NAME,'
      '  SUMM,'
      '  KL_NTAR,'
      '  FL_LIFT,'
      '  NORMA'
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
      '  SUMM = :SUMM,'
      '  KL_NTAR = :KL_NTAR,'
      '  FL_LIFT = :FL_LIFT,'
      '  NORMA = :NORMA'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_COMP_ID'
    DataSource = DSTARIF
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
    object IBTARIF_COMPKL_NTAR: TIntegerField
      FieldName = 'KL_NTAR'
      Origin = '"TARIF_COMP"."KL_NTAR"'
    end
    object IBTARIF_COMPFL_LIFT: TIntegerField
      FieldName = 'FL_LIFT'
      Origin = '"TARIF_COMP"."FL_LIFT"'
    end
    object IBTARIF_COMPNORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_COMP"."NORMA"'
      Precision = 18
      Size = 3
    end
  end
  object DSTARIF_COMP: TDataSource
    DataSet = IBTARIF_COMP
    Left = 208
    Top = 448
  end
  object IBQuery1: TIBQuery
    Database = DataM.IBDatabase2
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '        select ID_HOUSE,'
      '       STREET,'
      '       N_BUD,'
      '       sum(FACT_SUMM_BEZ_LIFT) FACT_SUMM_BEZ_LIFT,'
      '       sum(NORM_SUMM_BEZ_LIFT) NORM_SUMM_BEZ_LIFT,'
      '       sum(FACT_SUMM_S_LIFT) FACT_SUMM_S_LIFT,'
      '       sum(NORM_SUMM_S_LIFT) NORM_SUMM_S_LIFT'
      'from'
      '('
      '    select'
      '        1                               "IsNotFirstFloat",'
      
        '        B.id                            ID_HOUSE, --'#1059#1085#1080#1082#1072#1083#1100#1085#1099#1081' '#1080 +
        #1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1076#1086#1084#1072
      '        "TaStreets"."Name"              STREET, --'#1059#1083#1080#1094#1072
      '        B."Number"                      N_BUD, --'#1053#1086#1084#1077#1088' '#1076#1086#1084#1072
      '        0                               FACT_SUMM_BEZ_LIFT,'
      '        0                               NORM_SUMM_BEZ_LIFT,'
      '        T."PolID"                         USL,'
      
        '        T."FactZatrat"                  FACT_SUMM_S_LIFT, -- '#1060#1072#1082 +
        #1090#1080#1095#1077#1089#1082#1080#1081' '#1090#1072#1088#1080#1092
      
        '        T."NormatTarif"                 NORM_SUMM_S_LIFT --'#1059#1090#1074#1077#1088 +
        #1078#1076#1077#1085#1085#1099#1081' '#1090#1072#1088#1080#1092
      '    from'
      '        "TaBuilding" B'
      
        '            left join "PrRepSravnTarifDifuchetAnalit"(:BDate, :E' +
        'Date, B."Analitika") T on 0=0'
      '            left join "TaStreets" on "TaStreets".id = b."Street"'
      '    where'
      '        T."InTarif" = 1'
      '  union'
      '    select'
      '        0                               "IsNotFirstFloat",'
      
        '        B.id                            ID_HOUSE, --'#1059#1085#1080#1082#1072#1083#1100#1085#1099#1081' '#1080 +
        #1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1076#1086#1084#1072
      '        "TaStreets"."Name"              STREET, --'#1059#1083#1080#1094#1072
      '        B."Number"                      N_BUD, --'#1053#1086#1084#1077#1088' '#1076#1086#1084#1072
      
        '        T."FactZatrat"                  FACT_SUMM_BEZ_LIFT, -- '#1060 +
        #1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1090#1072#1088#1080#1092
      
        '        T."NormatTarif"                 NORM_SUMM_BEZ_LIFT, --'#1059#1090 +
        #1074#1077#1088#1078#1076#1077#1085#1085#1099#1081' '#1090#1072#1088#1080#1092
      '        T."PolID"                         USL,'
      '        0                               FACT_SUMM_S_LIFT,'
      '        0                               NORM_SUMM_S_LIFT'
      '    from'
      '        "TaBuilding" B'
      
        '            left join "PrRepSravnTarifDifuchetAnalit"(:BDate, :E' +
        'Date, B."Analitika") T on 0=0'
      '            left join "TaStreets" on "TaStreets".id = b."Street"'
      '    where'
      '        T."InTarif" = 1'
      '        and coalesce(T."IsNotFirstFloat",0) = 0'
      ')'
      'group by ID_HOUSE, STREET, N_BUD'
      'order by ID_HOUSE, STREET, N_BUD')
    Left = 448
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EDate'
        ParamType = ptUnknown
      end>
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DataM.IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 448
    Top = 456
  end
  object IBTARIF_DOM: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIFBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_DOM'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_DOM'
      '  (ID, ID_TARIF, ID_DOM, NAME)'
      'values'
      '  (:ID, :ID_TARIF, :ID_DOM, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  ID_DOM,'
      '  NAME'
      'from TARIF_DOM '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from TARIF_DOM')
    ModifySQL.Strings = (
      'update TARIF_DOM'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  ID_DOM = :ID_DOM,'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_DOM_ID'
    DataSource = DSTARIF
    Left = 288
    Top = 400
    object IBTARIF_DOMID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_DOM"."ID"'
      Required = True
    end
    object IBTARIF_DOMID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_DOM"."ID_TARIF"'
    end
    object IBTARIF_DOMID_DOM: TIntegerField
      FieldName = 'ID_DOM'
      Origin = '"TARIF_DOM"."ID_DOM"'
    end
    object IBTARIF_DOMNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF_DOM"."NAME"'
      Size = 50
    end
  end
  object DSTARIF_DOM: TDataSource
    DataSet = IBTARIF_DOM
    Left = 288
    Top = 448
  end
end
