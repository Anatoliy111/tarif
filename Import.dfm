inherited Imp: TImp
  Caption = #1030#1084#1087#1086#1088#1090' '#1076#1072#1085#1080#1093
  ClientHeight = 528
  ClientWidth = 767
  OnCreate = FormCreate
  ExplicitWidth = 783
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxStatusBar1: TdxStatusBar
    Top = 505
    Width = 761
    ExplicitTop = 491
    ExplicitWidth = 761
  end
  object cxPageControl1: TcxPageControl [1]
    Left = 0
    Top = 0
    Width = 767
    Height = 502
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.TabHeight = 2
    ClientRectBottom = 498
    ClientRectLeft = 4
    ClientRectRight = 763
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      AlignWithMargins = True
      Caption = #1055#1086#1089#1083#1091#1075#1080
      DragMode = dmAutomatic
      ImageIndex = 0
      ExplicitHeight = 429
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 753
        Height = 129
        Align = alTop
        TabOrder = 0
        object cxLabel8: TcxLabel
          Left = 16
          Top = 11
          Caption = #1042#1080#1073#1088#1072#1090#1080' '#1092#1072#1081#1083' WIDS.DBF'
        end
        object cxButton3: TcxButton
          Left = 16
          Top = 82
          Width = 185
          Height = 33
          Hint = #1044#1086#1076#1072#1090#1080
          Caption = #1030#1084#1087#1086#1088#1090
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cxButton3Click
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 129
        Width = 753
        Height = 339
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
          end
          object cxGrid1DBTableView1FL_ROZRAH: TcxGridDBColumn
            DataBinding.FieldName = 'FL_ROZRAH'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueGrayed = '0'
            Properties.ValueUnchecked = 0
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
      ExplicitHeight = 435
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 129
        Align = alTop
        TabOrder = 0
        object cxButton1: TcxButton
          Left = 16
          Top = 74
          Width = 185
          Height = 33
          Hint = #1044#1086#1076#1072#1090#1080
          Caption = #1030#1084#1087#1086#1088#1090
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 11
          Caption = #1042#1080#1073#1088#1072#1090#1080' '#1092#1072#1081#1083' DOM.DBF'
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 129
        Width = 759
        Height = 345
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSDOM
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBTableView1NAME: TcxGridDBColumn
            DataBinding.FieldName = 'NAME'
            Width = 265
          end
          object cxGridDBTableView1ID_UL: TcxGridDBColumn
            DataBinding.FieldName = 'ID_UL'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListSource = DSUL
            Properties.ReadOnly = True
            Width = 111
          end
          object cxGridDBTableView1DOM: TcxGridDBColumn
            DataBinding.FieldName = 'DOM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 54
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
      ExplicitHeight = 435
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 113
        Align = alTop
        TabOrder = 0
        object cxButton2: TcxButton
          Left = 16
          Top = 64
          Width = 185
          Height = 33
          Hint = #1044#1086#1076#1072#1090#1080
          Caption = #1030#1084#1087#1086#1088#1090
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 11
          Caption = #1042#1080#1073#1088#1072#1090#1080' '#1092#1072#1081#1083' UL.DBF'
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 113
        Width = 759
        Height = 361
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSUL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBTableView2NAME: TcxGridDBColumn
            DataBinding.FieldName = 'NAME'
            Width = 366
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
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
      '  (ID, NAME, ID_UL, DOM)'
      'values'
      '  (:ID, :NAME, :ID_UL, :DOM)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  ID_UL,'
      '  DOM'
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
      '  DOM = :DOM'
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
      '  (ID, NAME)'
      'values'
      '  (:ID, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME'
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
      '  NAME = :NAME'
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
  end
  object DSUL: TDataSource
    DataSet = IBUL
    Left = 96
    Top = 496
  end
  object OpenDialog1: TOpenDialog
    Left = 152
    Top = 464
  end
end
