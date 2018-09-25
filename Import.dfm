inherited ImpForm: TImpForm
  Caption = 'ImpForm'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 336
    Top = 112
    Width = 65
    Height = 13
    Caption = ' '#1087#1086' '#1082#1083#1102#1095#1091' KL'
  end
  object Label2: TLabel [1]
    Left = 336
    Top = 131
    Width = 62
    Height = 13
    Caption = ' '#1087#1086' '#1074#1080#1076#1091' wid'
  end
  object Label3: TLabel [2]
    Left = 336
    Top = 150
    Width = 192
    Height = 13
    Caption = ' '#1087#1086' '#1082#1083#1102#1095#1091' '#1074#1091#1083#1080#1094#1110' KL_UL '#1090#1072' '#8470#1073#1091#1076#1080#1085#1082#1091
  end
  object cxProgressBar1: TcxProgressBar [4]
    Left = 72
    Top = 40
    TabOrder = 1
    Width = 393
  end
  object cxButton6: TcxButton [5]
    Left = 48
    Top = 234
    Width = 193
    Height = 25
    Caption = #1030#1084#1087#1086#1088#1090
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 2
    OnClick = cxButton6Click
  end
  object cxCheckGroup1: TcxCheckGroup [6]
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
    TabOrder = 3
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
    Left = 24
    Top = 312
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
    Left = 464
    Top = 376
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnectionDBF
    Parameters = <>
    Left = 464
    Top = 424
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
      'SELECT * from TARIF'
      '')
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
    GeneratorField.Generator = 'GEN_UL_ID'
    Left = 176
    Top = 376
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
    Left = 176
    Top = 432
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
      'SELECT * from TARIF_COMP'
      '')
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
    GeneratorField.Generator = 'GEN_UL_ID'
    Left = 240
    Top = 376
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
    Left = 232
    Top = 432
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
      'SELECT * from TARIF_DOM'
      '')
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
    GeneratorField.Generator = 'GEN_UL_ID'
    Left = 320
    Top = 328
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
  object DataSource2: TDataSource
    DataSet = IBTARIF_DOM
    Left = 320
    Top = 384
  end
  object IBQuery1: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 376
    Top = 376
  end
end
