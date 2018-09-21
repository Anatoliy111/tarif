inherited ImpForm: TImpForm
  Caption = 'ImpForm'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 400
    Top = 120
    Width = 65
    Height = 13
    Caption = ' '#1087#1086' '#1082#1083#1102#1095#1091' KL'
  end
  object Label2: TLabel [1]
    Left = 384
    Top = 161
    Width = 62
    Height = 13
    Caption = ' '#1087#1086' '#1074#1080#1076#1091' wid'
  end
  object Label3: TLabel [2]
    Left = 336
    Top = 188
    Width = 192
    Height = 13
    Caption = ' '#1087#1086' '#1082#1083#1102#1095#1091' '#1074#1091#1083#1080#1094#1110' KL_UL '#1090#1072' '#8470#1073#1091#1076#1080#1085#1082#1091
  end
  object Label4: TLabel [3]
    Left = 288
    Top = 239
    Width = 158
    Height = 13
    Caption = ' '#1087#1086' '#1082#1083#1102#1095#1091' '#1090#1072#1088#1080#1092#1091' '#1090#1072' '#1072#1076#1088#1077#1089#1086#1102' '
  end
  object cxButton1: TcxButton [5]
    Left = 248
    Top = 315
    Width = 193
    Height = 25
    Caption = #1030#1084#1088#1086#1088#1090' '#1074#1091#1083#1080#1094#1100' (UL.DBF)'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxProgressBar1: TcxProgressBar [6]
    Left = 72
    Top = 40
    TabOrder = 2
    Width = 393
  end
  object cxButton2: TcxButton [7]
    Left = 104
    Top = 284
    Width = 193
    Height = 25
    Caption = #1030#1084#1088#1086#1088#1090' '#1087#1086#1089#1083#1091#1075' (WIDS.DBF)'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cxButton5: TcxButton [8]
    Left = 8
    Top = 315
    Width = 193
    Height = 25
    Caption = #1030#1084#1088#1086#1088#1090' '#1073#1091#1076#1080#1085#1082#1110#1074' (KART.DBF)'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 4
    OnClick = cxButton5Click
  end
  object cxButton6: TcxButton [9]
    Left = 48
    Top = 234
    Width = 193
    Height = 25
    Caption = #1030#1084#1088#1086#1088#1090' '#1090#1072#1088#1080#1092#1110#1074' (NTARIF.DBF)'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 5
    OnClick = cxButton6Click
  end
  object DateTimePicker1: TDateTimePicker [10]
    Left = 48
    Top = 207
    Width = 193
    Height = 21
    Date = 43364.453337430550000000
    Time = 43364.453337430550000000
    TabOrder = 6
  end
  object cxCheckGroup1: TcxCheckGroup [11]
    Left = 56
    Top = 96
    Caption = 'cxCheckGroup1'
    Properties.Items = <
      item
        Caption = #1030#1084#1088#1086#1088#1090' '#1074#1091#1083#1080#1094#1100' (UL.DBF)'
      end
      item
        Caption = #1030#1084#1088#1086#1088#1090' '#1087#1086#1089#1083#1091#1075' (WIDS.DBF)'
      end
      item
        Caption = #1030#1084#1088#1086#1088#1090' '#1073#1091#1076#1080#1085#1082#1110#1074' (KART.DBF)'
      end
      item
        Caption = #1030#1084#1088#1086#1088#1090' '#1090#1072#1088#1080#1092#1110#1074' (POSLTAR.DBF,KART.DBF)'
      end>
    TabOrder = 7
    Height = 105
    Width = 257
  end
  inherited IBTransaction1: TIBTransaction
    Active = True
  end
  object OpenDialog1: TOpenDialog
    Filter = 'dbf|*.dbf'
    Left = 40
    Top = 504
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
    Active = True
    Left = 48
    Top = 376
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
    Left = 56
    Top = 432
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
    Left = 88
    Top = 376
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
  object DSDOM: TDataSource
    DataSet = IBDOM
    Left = 88
    Top = 432
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
    Left = 128
    Top = 376
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
    Left = 128
    Top = 432
  end
  object DB: TDbf
    IndexDefs = <>
    TableLevel = 5
    Left = 168
    Top = 376
  end
  object ADOConnectionDBF: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=d:\WO' +
      'RK\KOMUN\kvpl\dbf\;Mode=Read;Jet OLEDB:System database="";Jet OL' +
      'EDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:En' +
      'gine Type=16;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global ' +
      'Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLED' +
      'B:New Database Password="";Jet OLEDB:Create System Database=Fals' +
      'e;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale o' +
      'n Compact=False;Jet OLEDB:Compact Without Replica Repair=False;J' +
      'et OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmRead
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 232
    Top = 376
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnectionDBF
    Parameters = <>
    Left = 232
    Top = 424
  end
end
