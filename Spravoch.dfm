inherited Sprav: TSprav
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  ClientHeight = 534
  ClientWidth = 767
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  ExplicitWidth = 783
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 41
    Width = 767
    Height = 424
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet5
    Properties.CustomButtons.Buttons = <>
    Properties.TabHeight = 2
    ClientRectBottom = 420
    ClientRectLeft = 4
    ClientRectRight = 763
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      AlignWithMargins = True
      Caption = #1055#1086#1089#1083#1091#1075#1080
      DragMode = dmAutomatic
      ImageIndex = 0
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 753
        Height = 97
        Align = alTop
        TabOrder = 0
        object cxLabel8: TcxLabel
          Left = 8
          Top = 3
          Caption = #1042#1080#1076' ('#1086#1079#1085#1072#1082#1072' '#1087#1086#1089#1083#1091#1075#1080')'
        end
        object cxTextEdit7: TcxTextEdit
          Left = 12
          Top = 22
          Properties.MaxLength = 2
          TabOrder = 0
          Width = 39
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 47
          Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103
        end
        object cxTextEdit1: TcxTextEdit
          Left = 8
          Top = 64
          TabOrder = 1
          Width = 329
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 97
        Width = 753
        Height = 293
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSPOSL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1WID: TcxGridDBColumn
            DataBinding.FieldName = 'WID'
            Width = 41
          end
          object cxGrid1DBTableView1NAME: TcxGridDBColumn
            DataBinding.FieldName = 'NAME'
          end
          object cxGrid1DBTableView1FL_ZAGR: TcxGridDBColumn
            DataBinding.FieldName = 'FL_ZAGR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueGrayed = '0'
            Properties.ValueUnchecked = 0
            Visible = False
          end
          object cxGrid1DBTableView1FL_ROZRAH: TcxGridDBColumn
            DataBinding.FieldName = 'FL_ROZRAH'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueGrayed = '0'
            Properties.ValueUnchecked = 0
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1041#1091#1076#1080#1085#1082#1080
      ImageIndex = 1
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 97
        Align = alTop
        TabOrder = 0
        object cxLabel2: TcxLabel
          Left = 224
          Top = 8
          Caption = #1041#1091#1076#1080#1085#1086#1082
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 43
          Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103
        end
        object cxTextEdit4: TcxTextEdit
          Left = 8
          Top = 61
          TabOrder = 3
          Width = 429
        end
        object cxTextEdit3: TcxTextEdit
          Left = 224
          Top = 24
          Properties.OnChange = cxTextEdit3PropertiesChange
          TabOrder = 2
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 8
          Caption = #1042#1091#1083#1080#1094#1103
        end
        object cxLookupComboBox1: TcxLookupComboBox
          Left = 8
          Top = 24
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DSUL
          Properties.OnChange = cxLookupComboBox1PropertiesChange
          TabOrder = 1
          Width = 194
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 97
        Width = 759
        Height = 299
        Align = alClient
        TabOrder = 1
        ExplicitTop = 129
        ExplicitHeight = 267
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSDOM
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBTableView1NAME: TcxGridDBColumn
            Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NAME'
            Width = 193
          end
          object cxGridDBTableView1ID_UL: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'ID_UL'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListSource = DSUL
            Properties.ReadOnly = True
            Options.Editing = False
            Width = 153
          end
          object cxGridDBTableView1DOM: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 54
          end
          object cxGridDBTableView1PLOS_OB: TcxGridDBColumn
            Caption = #1047#1072#1075#1072#1083#1100#1085#1072' '#1087#1083#1086#1097#1072
            DataBinding.FieldName = 'PLOS_OB'
            Width = 104
          end
          object cxGridDBTableView1PLOS_BB: TcxGridDBColumn
            Caption = #1054#1087#1072#1083#1102#1074#1072#1083#1100#1085#1072' '#1087#1083#1086#1097#1072
            DataBinding.FieldName = 'PLOS_BB'
            Width = 124
          end
          object cxGridDBTableView1ID_VIDAB: TcxGridDBColumn
            Caption = #1042#1080#1076' '#1072#1073#1086#1085#1077#1085#1090#1072
            DataBinding.FieldName = 'ID_VIDAB'
            Width = 116
          end
          object cxGridDBTableView1ID_HOUSE: TcxGridDBColumn
            Caption = #1050#1083#1102#1095' SoftProekt'
            DataBinding.FieldName = 'ID_HOUSE'
            Options.Editing = False
            Width = 145
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1042#1091#1083#1080#1094#1110
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 113
        Align = alTop
        TabOrder = 0
        object cxLabel5: TcxLabel
          Left = 8
          Top = 5
          Caption = #1042#1091#1083#1080#1094#1103
        end
        object cxTextEdit2: TcxTextEdit
          Left = 7
          Top = 28
          TabOrder = 1
          Width = 429
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 113
        Width = 759
        Height = 283
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSUL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBTableView2KL: TcxGridDBColumn
            DataBinding.FieldName = 'KL'
            Options.Editing = False
            Width = 57
          end
          object cxGridDBTableView2NAME: TcxGridDBColumn
            Caption = #1042#1091#1083#1080#1094#1103
            DataBinding.FieldName = 'NAME'
            Width = 290
          end
          object cxGridDBTableView2ID_STREET: TcxGridDBColumn
            Caption = #1050#1083#1102#1095' SoftProekt'
            DataBinding.FieldName = 'ID_STREET'
            Options.Editing = False
            Width = 114
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #1042#1080#1076#1080' '#1072#1073#1086#1085#1077#1085#1090#1110#1074
      ImageIndex = 3
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 65
        Align = alTop
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 8
          Top = 5
          Caption = #1042#1080#1076
        end
        object cxTextEdit5: TcxTextEdit
          Left = 7
          Top = 28
          TabOrder = 1
          Width = 429
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 65
        Width = 759
        Height = 331
        Align = alClient
        TabOrder = 1
        ExplicitTop = 55
        ExplicitHeight = 341
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSVIDAB
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBTableView3NAME: TcxGridDBColumn
            Caption = #1042#1080#1076
            DataBinding.FieldName = 'NAME'
            Width = 273
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = #1030#1085#1096#1110' '#1089#1087#1086#1078#1080#1074#1095#1110
      ImageIndex = 4
    end
  end
  inherited Panel2: TPanel
    Width = 767
    ExplicitWidth = 767
    inherited cxButton8: TcxButton
      OnClick = cxButton8Click
    end
    inherited cxButton9: TcxButton
      OnClick = cxButton9Click
    end
  end
  inherited Panel4: TPanel
    Top = 465
    Width = 767
    ExplicitTop = 465
    ExplicitWidth = 767
    inherited Panel3: TPanel
      Left = 610
      ExplicitLeft = 610
    end
    inherited dxStatusBar1: TdxStatusBar
      Width = 759
      ExplicitWidth = 759
    end
  end
  inherited IBTransaction1: TIBTransaction
    Active = True
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
      '  (ID, WID, NAME, FL_ZAGR, FL_ROZRAH, VAL)'
      'values'
      '  (:ID, :WID, :NAME, :FL_ZAGR, :FL_ROZRAH, :VAL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  WID,'
      '  NAME,'
      '  FL_ZAGR,'
      '  FL_ROZRAH,'
      '  VAL'
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
      '  FL_ROZRAH = :FL_ROZRAH,'
      '  VAL = :VAL'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_POSL_ID'
    Left = 32
    Top = 464
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
    object IBPOSLVAL: TIntegerField
      FieldName = 'VAL'
      Origin = '"POSL"."VAL"'
    end
  end
  object DSPOSL: TDataSource
    DataSet = IBPOSL
    Left = 32
    Top = 496
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
      
        '  (ID, NAME, ID_UL, DOM, CH, ID_HOUSE, PLOS_OB, PLOS_BB, ID_VIDA' +
        'B)'
      'values'
      
        '  (:ID, :NAME, :ID_UL, :DOM, :CH, :ID_HOUSE, :PLOS_OB, :PLOS_BB,' +
        ' :ID_VIDAB)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  ID_UL,'
      '  DOM,'
      '  CH,'
      '  ID_HOUSE,'
      '  PLOS_OB,'
      '  PLOS_BB,'
      '  ID_VIDAB'
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
      '  CH = :CH,'
      '  ID_HOUSE = :ID_HOUSE,'
      '  PLOS_OB = :PLOS_OB,'
      '  PLOS_BB = :PLOS_BB,'
      '  ID_VIDAB = :ID_VIDAB'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_DOM_ID'
    Left = 64
    Top = 464
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
    object IBDOMID_HOUSE: TIntegerField
      FieldName = 'ID_HOUSE'
      Origin = '"DOM"."ID_HOUSE"'
    end
    object IBDOMCH: TSmallintField
      FieldName = 'CH'
      Origin = '"DOM"."CH"'
    end
    object IBDOMPLOS_OB: TIntegerField
      FieldName = 'PLOS_OB'
      Origin = '"DOM"."PLOS_OB"'
    end
    object IBDOMPLOS_BB: TIntegerField
      FieldName = 'PLOS_BB'
      Origin = '"DOM"."PLOS_BB"'
    end
    object IBDOMID_VIDAB: TIntegerField
      FieldName = 'ID_VIDAB'
      Origin = '"DOM"."ID_VIDAB"'
    end
  end
  object DSDOM: TDataSource
    DataSet = IBDOM
    Left = 64
    Top = 496
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
    Left = 96
    Top = 464
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
    Left = 96
    Top = 496
  end
  object IBVIDAB: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBULBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from VIDAB'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into VIDAB'
      '  (ID, NAME)'
      'values'
      '  (:ID, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME'
      'from VIDAB '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'SELECT * from VIDAB'
      '')
    ModifySQL.Strings = (
      'update VIDAB'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_UL_ID'
    Left = 128
    Top = 464
    object IBVIDABID: TIntegerField
      FieldName = 'ID'
      Origin = '"VIDAB"."ID"'
      Required = True
    end
    object IBVIDABNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"VIDAB"."NAME"'
      Size = 10
    end
  end
  object DSVIDAB: TDataSource
    DataSet = IBVIDAB
    Left = 128
    Top = 496
  end
end
