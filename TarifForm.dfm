inherited Tarifs: TTarifs
  Caption = #1058#1072#1088#1080#1092#1080
  ClientHeight = 629
  ClientWidth = 790
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  ExplicitWidth = 806
  ExplicitHeight = 667
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 790
    TabOrder = 3
    ExplicitWidth = 790
    inherited cxButton6: TcxButton
      OnClick = cxButton6Click
    end
    inherited cxButton7: TcxButton
      OnClick = cxButton7Click
    end
    object cxButton1: TcxButton [4]
      Left = 211
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
      OnClick = cxButton1Click
    end
    inherited cxButton5: TcxButton
      TabOrder = 5
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 169
    Top = 89
    Width = 621
    Height = 403
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 175
    ExplicitTop = 95
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
      DataController.DataSource = DSTARIF_MES
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_PLAN
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_FACT
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_RN
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_RK
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_END
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1END_BL
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1END_L
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = cxGrid1DBTableView1TARIF_PLAN
            end
            item
              Column = cxGrid1DBTableView1TARIF_FACT
            end>
          SummaryItems = <
            item
            end>
        end>
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072
        DataBinding.FieldName = 'NAME'
        Width = 248
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = '...'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        Options.ShowEditButtons = isebAlways
        Width = 20
      end
      object cxGrid1DBTableView1TARIF_PLAN: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1086#1074#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_PLAN'
        Options.Editing = False
      end
      object cxGrid1DBTableView1TARIF_FACT: TcxGridDBColumn
        Caption = #1060#1072#1082#1090#1080#1095#1085#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_FACT'
        Options.Editing = False
      end
      object cxGrid1DBTableView1TARIF_RN: TcxGridDBColumn
        Caption = #1042#1110#1076#1093'.'#1090#1072#1088'.'#1079#1072'.'#1087#1086#1087#1077#1088'.'#1084#1110#1089#1103#1094#1100' '
        DataBinding.FieldName = 'TARIF_RN'
      end
      object cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn
        Caption = #1042#1110#1076#1093#1080#1083#1077#1085#1085#1103' '#1090#1072#1088#1080#1092#1091' '
        DataBinding.FieldName = 'TARIF_RK'
        Options.Editing = False
      end
      object cxGrid1DBTableView1TARIF_END: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093#1086#1074#1072#1085#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_END'
      end
      object cxGrid1DBTableView1NORMA: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
        Width = 106
      end
      object cxGrid1DBTableView1PLAN_BL: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_BL'
        Visible = False
      end
      object cxGrid1DBTableView1FACT_BL: TcxGridDBColumn
        DataBinding.FieldName = 'FACT_BL'
        Visible = False
      end
      object cxGrid1DBTableView1END_BL: TcxGridDBColumn
        Caption = #1041#1077#1079' '#1083#1110#1092#1090#1072
        DataBinding.FieldName = 'END_BL'
        Options.Editing = False
      end
      object cxGrid1DBTableView1END_L: TcxGridDBColumn
        Caption = #1051#1110#1092#1090
        DataBinding.FieldName = 'END_L'
        Options.Editing = False
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
      Left = 169
      Top = 6
      Width = 137
      Height = 33
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080'  SoftProekt'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = cxButton2Click
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
      Properties.ListSource = DІPERIOD
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
    TabOrder = 4
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
        Caption = #1058#1072#1088#1080#1092' '#1076#1083#1103' '#1082#1074#1072#1088#1090#1087#1083#1072#1090#1080
        DataBinding.FieldName = 'NAME'
        Width = 217
      end
      object cxGridDBTableView1SUMM: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'SUMM'
      end
      object cxGridDBTableView1NORMA: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
      end
      object cxGridDBTableView1KL_NTAR: TcxGridDBColumn
        DataBinding.FieldName = 'KL_NTAR'
      end
      object cxGridDBTableView1FL_LIFT: TcxGridDBColumn
        Caption = #1051#1110#1092#1090
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
    Width = 169
    Height = 403
    Align = alLeft
    TabOrder = 9
    object DBLookupListBox1: TDBLookupListBox
      Left = 1
      Top = 1
      Width = 167
      Height = 116
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = DSPOSL
      ParentFont = False
      TabOrder = 0
      OnClick = DBLookupListBox1Click
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 117
      Width = 167
      Height = 285
      Align = alClient
      TabOrder = 1
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
          Caption = #1041#1091#1076#1080#1085#1082#1080
          DataBinding.FieldName = 'NAME'
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  inherited IBTransaction1: TIBTransaction
    Top = 600
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
  object IBTARIFUPD: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIFUPDBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_MES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_MES'
      
        '  (ID, ID_TARIF, DATA, TARIF_PLAN, TARIF_FACT, TARIF_RN, TARIF_R' +
        'K, NORMA, '
      '   TARIF_END, PLAN_BL, FACT_BL, END_BL, END_L)'
      'values'
      
        '  (:ID, :ID_TARIF, :DATA, :TARIF_PLAN, :TARIF_FACT, :TARIF_RN, :' +
        'TARIF_RK, '
      '   :NORMA, :TARIF_END, :PLAN_BL, :FACT_BL, :END_BL, :END_L)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  DATA,'
      '  TARIF_PLAN,'
      '  TARIF_FACT,'
      '  TARIF_RN,'
      '  TARIF_RK,'
      '  NORMA,'
      '  TARIF_END,'
      '  PLAN_BL,'
      '  FACT_BL,'
      '  END_BL,'
      '  END_L'
      'from TARIF_MES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select tarif_mes.*,posl.wid, posl.name as posl, tarif_dom.name a' +
        's dom from TARIF, TARIF_MES, POSL, TARIF_DOM where tarif_mes.dat' +
        'a=:dt and tarif.id_posl=posl.id and tarif_mes.id_tarif=tarif.id ' +
        'and tarif_mes.id=tarif_dom.id_tarifmes')
    ModifySQL.Strings = (
      'update TARIF_MES'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  DATA = :DATA,'
      '  TARIF_PLAN = :TARIF_PLAN,'
      '  TARIF_FACT = :TARIF_FACT,'
      '  TARIF_RN = :TARIF_RN,'
      '  TARIF_RK = :TARIF_RK,'
      '  NORMA = :NORMA,'
      '  TARIF_END = :TARIF_END,'
      '  PLAN_BL = :PLAN_BL,'
      '  FACT_BL = :FACT_BL,'
      '  END_BL = :END_BL,'
      '  END_L = :END_L'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_MES_ID'
    Left = 48
    Top = 520
    object IBTARIFUPDID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_MES"."ID"'
      Required = True
    end
    object IBTARIFUPDID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_MES"."ID_TARIF"'
    end
    object IBTARIFUPDDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TARIF_MES"."DATA"'
    end
    object IBTARIFUPDTARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      Origin = '"TARIF_MES"."TARIF_PLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDTARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      Origin = '"TARIF_MES"."TARIF_FACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDTARIF_RN: TIBBCDField
      FieldName = 'TARIF_RN'
      Origin = '"TARIF_MES"."TARIF_RN"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDTARIF_RK: TIBBCDField
      FieldName = 'TARIF_RK'
      Origin = '"TARIF_MES"."TARIF_RK"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDNORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_MES"."NORMA"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDTARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      Origin = '"TARIF_MES"."TARIF_END"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDPLAN_BL: TIBBCDField
      FieldName = 'PLAN_BL'
      Origin = '"TARIF_MES"."PLAN_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDFACT_BL: TIBBCDField
      FieldName = 'FACT_BL'
      Origin = '"TARIF_MES"."FACT_BL"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDEND_BL: TIBBCDField
      FieldName = 'END_BL'
      Origin = '"TARIF_MES"."END_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDEND_L: TIBBCDField
      FieldName = 'END_L'
      Origin = '"TARIF_MES"."END_L"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDWID: TIBStringField
      FieldName = 'WID'
      Origin = '"POSL"."WID"'
      Size = 2
    end
    object IBTARIFUPDPOSL: TIBStringField
      FieldName = 'POSL'
      Origin = '"POSL"."NAME"'
    end
    object IBTARIFUPDDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"TARIF_DOM"."NAME"'
      Size = 50
    end
  end
  object DSTARIFUPD: TDataSource
    DataSet = IBTARIFUPD
    Left = 48
    Top = 568
  end
  object IBPOSL: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBPOSLBeforePost
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
    Left = 424
    Top = 520
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
    Left = 424
    Top = 568
  end
  object IBTARIF_COMP: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIF_COMPBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_COMP'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_COMP'
      
        '  (ID, ID_TARIF, ID_TARIFMES, NAME, SUMM, KL_NTAR, FL_LIFT, NORM' +
        'A, SPLAN, '
      '   SFACT, SUMM_BL, SUMM_L)'
      'values'
      
        '  (:ID, :ID_TARIF, :ID_TARIFMES, :NAME, :SUMM, :KL_NTAR, :FL_LIF' +
        'T, :NORMA, '
      '   :SPLAN, :SFACT, :SUMM_BL, :SUMM_L)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  ID_TARIFMES,'
      '  NAME,'
      '  SUMM,'
      '  KL_NTAR,'
      '  FL_LIFT,'
      '  NORMA,'
      '  SPLAN,'
      '  SFACT,'
      '  SUMM_BL,'
      '  SUMM_L'
      'from TARIF_COMP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from TARIF_COMP')
    ModifySQL.Strings = (
      'update TARIF_COMP'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  ID_TARIFMES = :ID_TARIFMES,'
      '  NAME = :NAME,'
      '  SUMM = :SUMM,'
      '  KL_NTAR = :KL_NTAR,'
      '  FL_LIFT = :FL_LIFT,'
      '  NORMA = :NORMA,'
      '  SPLAN = :SPLAN,'
      '  SFACT = :SFACT,'
      '  SUMM_BL = :SUMM_BL,'
      '  SUMM_L = :SUMM_L'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_COMP_ID'
    DataSource = DSTARIF_MES
    Left = 112
    Top = 520
    object IBTARIF_COMPID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_COMP"."ID"'
      Required = True
    end
    object IBTARIF_COMPID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_COMP"."ID_TARIF"'
    end
    object IBTARIF_COMPID_TARIFMES: TIntegerField
      FieldName = 'ID_TARIFMES'
      Origin = '"TARIF_COMP"."ID_TARIFMES"'
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
    object IBTARIF_COMPSPLAN: TIBBCDField
      FieldName = 'SPLAN'
      Origin = '"TARIF_COMP"."SPLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_COMPSFACT: TIBBCDField
      FieldName = 'SFACT'
      Origin = '"TARIF_COMP"."SFACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_COMPSUMM_BL: TIBBCDField
      FieldName = 'SUMM_BL'
      Origin = '"TARIF_COMP"."SUMM_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_COMPSUMM_L: TIBBCDField
      FieldName = 'SUMM_L'
      Origin = '"TARIF_COMP"."SUMM_L"'
      Precision = 18
      Size = 2
    end
  end
  object DSTARIF_COMP: TDataSource
    DataSet = IBTARIF_COMP
    Left = 112
    Top = 568
  end
  object IBQSoftproect1: TIBQuery
    Database = DataM.IBDatabase2
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      ' select ID_HOUSE,'
      '       '#39'ub'#39' as WID,'
      '       STREET,'
      '       ID_STREET,'
      '       N_BUD,'
      '       sum(FACT_SUMM_BEZ_LIFT) FACT_BL,'
      '       sum(NORM_SUMM_BEZ_LIFT) NORM_BL,'
      '       sum(FACT_SUMM_S_LIFT) FACT,'
      '       sum(NORM_SUMM_S_LIFT) NORM'
      'from'
      '('
      '    select'
      '        1                               "IsNotFirstFloat",'
      '        B.id                            ID_HOUSE,'
      '        "TaStreets"."Name"              STREET,'
      '        "TaStreets".Id              ID_STREET,'
      '        B."Number"                      N_BUD,'
      '        0                               FACT_SUMM_BEZ_LIFT,'
      '        0                               NORM_SUMM_BEZ_LIFT,'
      '        T."PolID"                         USL,'
      '        T."FactZatrat"                  FACT_SUMM_S_LIFT,'
      '        T."NormatTarif"                 NORM_SUMM_S_LIFT'
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
      '        B.id                            ID_HOUSE,'
      '        "TaStreets"."Name"              STREET,'
      '        "TaStreets".Id                ID_STREET,'
      '        B."Number"                      N_BUD,'
      '        T."FactZatrat"                  FACT_SUMM_BEZ_LIFT,'
      '        T."NormatTarif"                 NORM_SUMM_BEZ_LIFT,'
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
      'group by ID_HOUSE, STREET,ID_STREET, N_BUD'
      'order by ID_HOUSE, STREET,ID_STREET, N_BUD')
    Left = 296
    Top = 112
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
    BeforePost = IBTARIF_DOMBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_DOM'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_DOM'
      '  (ID, ID_TARIF, ID_TARIFMES, ID_DOM, NAME)'
      'values'
      '  (:ID, :ID_TARIF, :ID_TARIFMES, :ID_DOM, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  ID_TARIFMES,'
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
      '  ID_TARIFMES = :ID_TARIFMES,'
      '  ID_DOM = :ID_DOM,'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_DOM_ID'
    DataSource = DSTARIF_MES
    Left = 168
    Top = 520
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
    object IBTARIF_DOMID_TARIFMES: TIntegerField
      FieldName = 'ID_TARIFMES'
      Origin = '"TARIF_DOM"."ID_TARIFMES"'
    end
  end
  object DSTARIF_DOM: TDataSource
    DataSet = IBTARIF_DOM
    Left = 168
    Top = 568
  end
  object IBDOM: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBDOMBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DOM'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into DOM'
      '  (ID, NAME, ID_UL, DOM, ID_HOUSE)'
      'values'
      '  (:ID, :NAME, :ID_UL, :DOM, :ID_HOUSE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  ID_UL,'
      '  DOM,'
      '  CH,'
      '  ID_HOUSE'
      'from DOM '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from DOM')
    ModifySQL.Strings = (
      'update DOM'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME,'
      '  ID_UL = :ID_UL,'
      '  DOM = :DOM,'
      '  ID_HOUSE = :ID_HOUSE'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_DOM_ID'
    Left = 504
    Top = 520
    object IBDOMID: TIntegerField
      FieldName = 'ID'
      Origin = '"DOM"."ID"'
      Required = True
    end
    object IBDOMNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"DOM"."NAME"'
      Size = 50
    end
    object IBDOMID_UL: TIntegerField
      FieldName = 'ID_UL'
      Origin = '"DOM"."ID_UL"'
    end
    object IBDOMDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"DOM"."DOM"'
      Size = 5
    end
    object IBDOMCH: TSmallintField
      FieldName = 'CH'
      Origin = '"DOM"."CH"'
    end
    object IBDOMID_HOUSE: TIntegerField
      FieldName = 'ID_HOUSE'
      Origin = '"DOM"."ID_HOUSE"'
    end
  end
  object IBUL: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBULBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from UL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into UL'
      '  (ID, NAME, KL, ID_STREET, VAL)'
      'values'
      '  (:ID, :NAME, :KL, :ID_STREET, :VAL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  KL,'
      '  ID_STREET,'
      '  VAL'
      'from UL '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * from UL'
      '')
    ModifySQL.Strings = (
      'update UL'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME,'
      '  KL = :KL,'
      '  ID_STREET = :ID_STREET,'
      '  VAL = :VAL'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_UL_ID'
    Left = 464
    Top = 520
    object IBULID: TIntegerField
      FieldName = 'ID'
      Origin = '"UL"."ID"'
      Required = True
    end
    object IBULNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"UL"."NAME"'
      Size = 40
    end
    object IBULKL: TIntegerField
      FieldName = 'KL'
      Origin = '"UL"."KL"'
    end
    object IBULID_STREET: TIntegerField
      FieldName = 'ID_STREET'
      Origin = '"UL"."ID_STREET"'
    end
    object IBULVAL: TIntegerField
      FieldName = 'VAL'
      Origin = '"UL"."VAL"'
    end
  end
  object DSUL: TDataSource
    DataSet = IBUL
    Left = 464
    Top = 576
  end
  object DSDOM: TDataSource
    DataSet = IBDOM
    Left = 504
    Top = 576
  end
  object IBQuery2: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 376
    Top = 176
  end
  object IBPERIOD: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PERIOD'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PERIOD'
      '  (ID, DATA)'
      'values'
      '  (:ID, :DATA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATA'
      'from PERIOD '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from PERIOD order by data desc')
    ModifySQL.Strings = (
      'update PERIOD'
      'set'
      '  ID = :ID,'
      '  DATA = :DATA'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_PERIOD_ID'
    Left = 32
    Top = 288
    object IBPERIODID: TIntegerField
      FieldName = 'ID'
      Origin = '"PERIOD"."ID"'
      Required = True
    end
    object IBPERIODDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PERIOD"."DATA"'
    end
  end
  object DІPERIOD: TDataSource
    DataSet = IBPERIOD
    Left = 32
    Top = 336
  end
  object IBTARIF_MES: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    AfterEdit = IBTARIF_MESAfterEdit
    BeforePost = IBTARIF_MESBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_MES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_MES'
      
        '  (ID, ID_TARIF, DATA, TARIF_PLAN, TARIF_FACT, TARIF_RN, TARIF_R' +
        'K, NORMA, '
      '   TARIF_END, PLAN_BL, FACT_BL, END_BL, END_L)'
      'values'
      
        '  (:ID, :ID_TARIF, :DATA, :TARIF_PLAN, :TARIF_FACT, :TARIF_RN, :' +
        'TARIF_RK, '
      '   :NORMA, :TARIF_END, :PLAN_BL, :FACT_BL, :END_BL, :END_L)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  DATA,'
      '  TARIF_PLAN,'
      '  TARIF_FACT,'
      '  TARIF_RN,'
      '  TARIF_RK,'
      '  NORMA,'
      '  TARIF_END,'
      '  PLAN_BL,'
      '  FACT_BL,'
      '  END_BL,'
      '  END_L'
      'from TARIF_MES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select TARIF_MES.*, TARIF.NAME from TARIF_MES, TARIF WHERE TARIF' +
        '_MES.ID_TARIF=TARIF.ID ')
    ModifySQL.Strings = (
      'update TARIF_MES'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  DATA = :DATA,'
      '  TARIF_PLAN = :TARIF_PLAN,'
      '  TARIF_FACT = :TARIF_FACT,'
      '  TARIF_RN = :TARIF_RN,'
      '  TARIF_RK = :TARIF_RK,'
      '  NORMA = :NORMA,'
      '  TARIF_END = :TARIF_END,'
      '  PLAN_BL = :PLAN_BL,'
      '  FACT_BL = :FACT_BL,'
      '  END_BL = :END_BL,'
      '  END_L = :END_L'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_MES_ID'
    DataSource = DSPOSL
    Left = 232
    Top = 520
    object IBTARIF_MESID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_MES"."ID"'
      Required = True
    end
    object IBTARIF_MESID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_MES"."ID_TARIF"'
    end
    object IBTARIF_MESDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TARIF_MES"."DATA"'
    end
    object IBTARIF_MESTARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      Origin = '"TARIF_MES"."TARIF_PLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESTARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      Origin = '"TARIF_MES"."TARIF_FACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESTARIF_RN: TIBBCDField
      FieldName = 'TARIF_RN'
      Origin = '"TARIF_MES"."TARIF_RN"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESTARIF_RK: TIBBCDField
      FieldName = 'TARIF_RK'
      Origin = '"TARIF_MES"."TARIF_RK"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESNORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_MES"."NORMA"'
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESTARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      Origin = '"TARIF_MES"."TARIF_END"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESPLAN_BL: TIBBCDField
      FieldName = 'PLAN_BL'
      Origin = '"TARIF_MES"."PLAN_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESFACT_BL: TIBBCDField
      FieldName = 'FACT_BL'
      Origin = '"TARIF_MES"."FACT_BL"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF"."NAME"'
      OnChange = IBTARIF_MESNAMEChange
      Size = 50
    end
    object IBTARIF_MESEND_BL: TIBBCDField
      FieldName = 'END_BL'
      Origin = '"TARIF_MES"."END_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESEND_L: TIBBCDField
      FieldName = 'END_L'
      Origin = '"TARIF_MES"."END_L"'
      Precision = 18
      Size = 2
    end
  end
  object DSTARIF_MES: TDataSource
    DataSet = IBTARIF_MES
    Left = 232
    Top = 568
  end
  object IBSERVICE: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SERVICE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SERVICE'
      '  (ID, ADMINPW, FL_RASH)'
      'values'
      '  (:ID, :ADMINPW, :FL_RASH)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ADMINPW,'
      '  FL_RASH'
      'from SERVICE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from SERVICE')
    ModifySQL.Strings = (
      'update SERVICE'
      'set'
      '  ID = :ID,'
      '  ADMINPW = :ADMINPW,'
      '  FL_RASH = :FL_RASH'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SERVICE_ID'
    Left = 96
    Top = 291
    object IBSERVICEID: TIntegerField
      FieldName = 'ID'
      Origin = '"SERVICE"."ID"'
      Required = True
    end
    object IBSERVICEADMINPW: TIBStringField
      FieldName = 'ADMINPW'
      Origin = '"SERVICE"."ADMINPW"'
      Size = 10
    end
    object IBSERVICEFL_RASH: TIntegerField
      FieldName = 'FL_RASH'
      Origin = '"SERVICE"."FL_RASH"'
    end
  end
  object DІSERVICE: TDataSource
    DataSet = IBSERVICE
    Left = 96
    Top = 339
  end
  object IBTARIF_VID: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_VID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_VID'
      '  (ID, ID_POSL, NAME, CODE_SERVI)'
      'values'
      '  (:ID, :ID_POSL, :NAME, :CODE_SERVI)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_POSL,'
      '  NAME,'
      '  CODE_SERVI'
      'from TARIF_VID '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from TARIF_VID')
    ModifySQL.Strings = (
      'update TARIF_VID'
      'set'
      '  ID = :ID,'
      '  ID_POSL = :ID_POSL,'
      '  NAME = :NAME,'
      '  CODE_SERVI = :CODE_SERVI'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_VID_ID'
    Left = 368
    Top = 520
    object IBTARIF_VIDID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_VID"."ID"'
      Required = True
    end
    object IBTARIF_VIDID_POSL: TIntegerField
      FieldName = 'ID_POSL'
      Origin = '"TARIF_VID"."ID_POSL"'
      Required = True
    end
    object IBTARIF_VIDNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF_VID"."NAME"'
      Size = 301
    end
    object IBTARIF_VIDCODE_SERVI: TIntegerField
      FieldName = 'CODE_SERVI'
      Origin = '"TARIF_VID"."CODE_SERVI"'
    end
  end
  object DSTARIF_VID: TDataSource
    DataSet = IBTARIF_VID
    Left = 368
    Top = 568
  end
  object IBQSoftproect2: TIBQuery
    Database = DataM.IBDatabase2
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '    B.id                    ID_HOUSE,'
      '    '#39'ub'#39' as WID,'
      '    "TaStreets"."Name"    STREET, '
      '    "TaStreets".id         id_street,  '
      '    B."Number"            N_BUD, '
      '    T."PolName",         '
      '    T."Code"                CODE_SERVI,'
      '    T."FactZatrat"          FACT,'
      '    T."NormatTarif"         NORM '
      'from'
      '    "TaBuilding" B'
      
        '        left join "PrRepSravnTarifDifuchetAnalit"(:BDate, :EDate' +
        ', B."Analitika") T on 0=0'
      '        left join "TaStreets" on "TaStreets".id = b."Street"'
      'where'
      '   T."InTarif" = 1'
      'order by "TaStreets"."Name", B."Number", T."Code"')
    Left = 384
    Top = 112
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
      end>
  end
  object IBQuery1: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 296
    Top = 176
  end
  object IBTARIF_INF: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_INF'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_INF'
      '  (ID, ID_TARIF, ID_TARIFMES, ID_TARVID, S_PLAN, S_FACT)'
      'values'
      '  (:ID, :ID_TARIF, :ID_TARIFMES, :ID_TARVID, :S_PLAN, :S_FACT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  ID_TARIFMES,'
      '  ID_TARVID,'
      '  S_PLAN,'
      '  S_FACT'
      'from TARIF_INF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select TARIF_INF.* from TARIF_INF')
    ModifySQL.Strings = (
      'update TARIF_INF'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  ID_TARIFMES = :ID_TARIFMES,'
      '  ID_TARVID = :ID_TARVID,'
      '  S_PLAN = :S_PLAN,'
      '  S_FACT = :S_FACT'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_INF_ID'
    Left = 304
    Top = 520
  end
  object DSTARIF_INF: TDataSource
    DataSet = IBTARIF_INF
    Left = 304
    Top = 568
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
      '  (ID, NAME, ID_POSL, NOTE)'
      'values'
      '  (:ID, :NAME, :ID_POSL, :NOTE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  ID_POSL,'
      '  NOTE'
      'from TARIF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from TARIF')
    ModifySQL.Strings = (
      'update TARIF'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME,'
      '  ID_POSL = :ID_POSL,'
      '  NOTE = :NOTE'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_ID'
    Left = 160
    Top = 296
    object IBTARIFID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF"."ID"'
      Required = True
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
  end
  object DSTARIF: TDataSource
    DataSet = IBTARIF
    Left = 160
    Top = 344
  end
end
