inherited Sprav: TSprav
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  ClientHeight = 528
  ClientWidth = 767
  OnCreate = FormCreate
  ExplicitWidth = 783
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 41
    Width = 767
    Height = 418
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    Properties.TabHeight = 2
    ClientRectBottom = 414
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
        Height = 287
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
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 129
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
        object cxButton1: TcxButton
          Left = 9
          Top = 88
          Width = 39
          Height = 35
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFCEEF4F0EFF5F1FCFDFD
            FFFFFFFFFFFFFFFFFFD9D9D9DCDCDCD4D4D4FBFBFBFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D7C92E
            7F3D307D3ED3E0D6FFFFFFFFFFFFD5D5D5E4E4E4FFFFFFEEEEEECFCFCFE1E1E1
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFBBD7C016922B148C28CBE1CFFFFFFFE3E3E3D9D9D9FFFFFFFFFFFFFF
            FFFFFFFFFFDCDCDCD4D4D4FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFC3E4C9069E21079921D4ECD9FFFAFDE1DAE0FFFF
            FFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFF0EEEED3D2D2E1E1E1FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF9F9F9D3D9D3CED7CFCFD8D097C69F059D21079921A0BFA4
            A3BCA8B9D3BFC4DAC7F6F9F8FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFE0DD
            DDDAD9D9FCFCFCFFFFFFFFFFFFFFFFFFDEE3DF1F4B240B48130C4D15096D1905
            9E20059C20096A180A5D16085012165F1FDCE7DFFFFFFFFEFEFEFEFEFEFEFEFE
            FEFCFCFEFBFBFFFFFFE3DBDBDBD8D8FFFFFFFFFFFFFFFFFFDDE6DF1D852E0F8F
            241194260F9C2909A024079E220D98240D8E220A821D1A8A2EDCECE0FFFFFFFE
            FEFEFEFEFEFEFEFEFEFEFEF8F3F3E4DCDCE7D9D9D2CACAFFFFFFFFFFFFFFFFFF
            DCEBE0179F3C12B24417B74C1AB64B16A83619A93A1DAF4B16AA440BA13319A5
            45DDF2E6FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEF0ECECD0C6C6DACDCDD5CFCFFF
            FFFFFFFFFFFFFFFFEDF4EF84CB9D7ACB9983D1A460BA7B1BAA3C24AE4886D1A4
            9EDFB88FD6AD88D0A8ECF8F2FFFFFFFEFEFEFEFEFEFEFEFEFCFCFCEDE7E7D3CA
            CAFCFBFBE1DADAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC2A921
            A94329A94BD1ECD9FFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEF0EAEADAD3D3F6F5F5E0D8D8F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFD9D6D8B1D7BB23A1432DA44FCAE7D3FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEF8F5F5E1DADADACFCFCDC8C8F7F7F7FFFFFFFFFFFF
            FFFFFFFFFFFFD8D8D8F1EEF0C1EAD02AA15339A866CFE9D9FFFFFFFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF6F3F3FCF8F8D3CFCFFF
            FFFFFFFFFFFFFFFFFFFFFFDEDEDEE2E2E2FFFFFFE4F2E9ADD7BCB3DCC0EDF6F0
            FFFEFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
            FFFFFFFFE5E5E5FFFFFFFFFFFFFFFFFFF9F9F9E1E1E1FFFFFFFEFEFEFFFFFFFF
            FFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFFFFFFE1E1E1FCFCFCFFFFFFFFFFFFFFFFFFF6F6F6EDEDEDFFFF
            FFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFFFFFFE5E5E5F0F0F0FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFAFAFAECECECF3F3F3FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFEEEEEEEDEDEDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1EBEBEBFBFBFBFFFFFFFFFFFF
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFF3F3F3E6E6E6FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED
            EDEDF0F0F0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFCFCFC
            E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF3F3F3EAEAEAF6F6F6FFFFFFFFFFFFFEFEFEFEFEFEFF
            FFFFFFFFFFE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEEEEEEFFFF
            FFFFFFFFFFFFFFFFFFFFE4E4E4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF5F5F5E8E8E8F6F6F6FFFFFFE9E9E9EEEEEEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEDEDEDEDEDEDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          TabStop = False
        end
        object cxButton2: TcxButton
          Left = 49
          Top = 88
          Width = 39
          Height = 35
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            56080000424D560800000000000036000000280000001A0000001A0000000100
            1800000000002008000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3D9D9D9DDDDDDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFDDDDDDDDDDDDFFFFFFE1E1E1D5D5D5F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9D2D2D2FFFFFFFFFFFFFFFFFFF3F3F3
            CFCFCFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7CFCF
            CFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFE4E3E3D3D3D3F2F2F2FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFDCDAD3FEFEFCFFFFFFFEFEFEFEFEFEFEFEFEFEFEFE
            FFFFFFFFFFFFF8F6F6D4D1D1E0DFDFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            F3F3F67B7BB96565B8676ABF676FC76977CA6F7FCA6E7FC95D6CC15D71BD6E74
            BC8A8BBDFEFEFEFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFDFD8D8D8
            D6D6FDFDFDFFFFFF0000FFFFFFFFFFFFEBEBF02022930E149B0D1CA90D24BF12
            32CB193FCB183DCB102EC9081BB00009993F45A0FEFEFEFFFFFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFBFBF5EFEFF9F0F0CCC1C1ECEBEBFFFFFF0000FFFFFFFFFFFF
            ECECF42B35AD0C21B80C2CC30C36D00C3DD70C3FD90B3AD6082FCD0623BD0615
            AC4A58B6FEFEFEFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEF9F6F6E9E1E1CFC4C4C4
            B7B7E3E2E2FFFFFF0000FFFFFFFFFFFFEAEAF4171CA90012C4001ECF002ADD00
            27D90026D9002ED61140D10F2FC5000AAD3239B3FEFEFEFFFFFEFEFEFEFEFEFE
            FEFEFEFEFEFEF5F3F3DCD4D4C1B8B8EDE1E1DEDCDCFFFFFF0000FFFFFFFFFFFF
            F8F8FBAFAFDCA1A4DBA3AADEA0A2D7929FC795A1F098A2ECA2ACEDAFB6EDA3A5
            E4A5A6E1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF5F2F2DAD1D1E7E4E4FF
            FFFFD8D5D5FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E1DCFE
            FEF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEF6F5F5E0DADADAD4D4F9F8F8E3E0E0FFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFDFDFDFE7E7E4FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFBEDE9E9D1C8C8DC
            D1D1DFDDDDFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFE2E2E2DADADAFFFFFFFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEF9F8F8F2ECECE3DADAE1E1E1FFFFFF0000FFFFFFFFFFFF
            FFFFFFF1F1F1D4D4D4FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFE3
            E0E0F4F3F3FFFFFF0000FFFFFFFFFFFFFCFCFCDBDBDBFFFFFFFFFFFFFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFFFFFFF4F4F4E8E8E8FFFFFFFFFFFF0000FFFFFFFFFFFF
            F8F8F8EBEBEBFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFEFEFEE2E2E2FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF9F9F9E9E9E9F4F4F4FFFFFFFF
            FFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFFFFFFE1E1E1FEFEFEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEEEEEEEBEBEBFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFE3E3E3F2F2F2FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E9
            E9E9F3F3F3FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FFFFFFECECECEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0EBEBEBFEFEFEFFFFFFFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFF1F1F1E7E7E7FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFECECECEFEFEFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFF6F6F6
            DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2EAEA
            EAF6F6F6FFFFFFFFFFFFFFFFFFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECEEEEEEFFFFFFE5E5E5F8F8F8
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF5F5F5EAEAEAF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          TabStop = False
          OnClick = cxButton2Click
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
        Top = 129
        Width = 759
        Height = 261
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSDOM
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBTableView1NAME: TcxGridDBColumn
            Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103
            DataBinding.FieldName = 'NAME'
            Width = 265
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
            Width = 111
          end
          object cxGridDBTableView1DOM: TcxGridDBColumn
            Caption = #1041#1091#1076#1080#1085#1086#1082
            DataBinding.FieldName = 'DOM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 54
          end
          object cxGridDBTableView1ID_HOUSE: TcxGridDBColumn
            Caption = #1050#1083#1102#1095' SoftProekt'
            DataBinding.FieldName = 'ID_HOUSE'
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
        Height = 277
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
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
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
    Top = 459
    Width = 767
    ExplicitTop = 459
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
end
