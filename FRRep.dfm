object FRRepForm: TFRRepForm
  Left = 0
  Top = 0
  Caption = 'FRRepForm'
  ClientHeight = 178
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 280
    Top = 129
    Width = 187
    Height = 33
    Caption = #1047#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1079#1074#1110#1090
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 37
    Top = 39
    Properties.KeyFieldNames = 'DATA'
    Properties.ListColumns = <
      item
        FieldName = 'DATA'
      end>
    Properties.ListSource = DІPERIOD
    TabOrder = 1
    Width = 164
  end
  object cxLabel2: TcxLabel
    Left = 77
    Top = 16
    Caption = #1055#1077#1088#1110#1086#1076
  end
  object IBQuery1: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = Main.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select tarifnam,adres,plos,gkal,cena,sumot,sumotpdv,tarif_end,ta' +
        'rif_endpdv,vid,data,wid,others,no_lich'
      'from'
      '(select tarif.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        tarif_mes.plos_bbi plos,'
      
        '        (COALESCE(tarif_mes.lich_gk,0)+COALESCE(tarif_mes.lich_g' +
        'k2,0)) as gkal,'
      '        tarif_mes.cena,'
      '        tarif_mes.sumot,'
      '        tarif_mes.sumotpdv,'
      '        tarif_mes.tarif_end,'
      '        tarif_mes.tarif_endpdv,'
      '        vidab.name vid,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        0 as others,'
      '        tarif_mes.no_lich'
      '    from tarif_mes'
      
        '       inner join tarif_dom on (tarif_mes.id = tarif_dom.id_tari' +
        'fmes)'
      '       inner join dom on (tarif_dom.id_dom = dom.id)'
      '       inner join ul on (dom.id_ul = ul.id)'
      '       inner join vidab on (dom.id_vidab = vidab.id)'
      '       inner join tarif on (tarif_mes.id_tarif = tarif.id)'
      '       inner join posl on (tarif.id_posl = posl.id)'
      '   union'
      '    select other.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        dom_other.plos_bb plos,'
      
        '        (COALESCE(tarif_mes.lich_gk,0)+COALESCE(tarif_mes.lich_g' +
        'k2,0)) as gkal,'
      '        tarif_other.cena,'
      '        tarif_other.sumot,'
      '        tarif_other.sumotpdv,'
      '        tarif_other.send tarif_end,'
      '        tarif_other.sendpdv tarif_endpdv,'
      '        vidab.name vid,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        1 as others,'
      '        case'
      '        when tarif_other.fl_lich = 1 then 0'
      '        when tarif_other.fl_lich = 0 then 1'
      '        else 0'
      '        end AS no_lich'
      '    from tarif_other'
      
        '       left outer join dom_other on (tarif_other.id_domother = d' +
        'om_other.id)'
      '       left outer join dom on (dom_other.id_dom = dom.id)'
      '       left outer join ul on (dom.id_ul = ul.id)'
      '       left outer join other on (dom_other.id_other = other.id)'
      '       left outer join vidab on (other.id_vidab = vidab.id)'
      
        '       left outer join tarif on (tarif_other.id_tarif = tarif.id' +
        ')'
      '       left outer join posl on (tarif.id_posl = posl.id)'
      
        '       inner join tarif_mes on (tarif_other.id_tarifmes = tarif_' +
        'mes.id)'
      ')'
      'where data = :dt and wid=:pos and tarifnam is not null'
      'order by vid,no_lich,tarifnam')
    Left = 344
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pos'
        ParamType = ptUnknown
      end>
    object IBQuery1TARIFNAM: TIBStringField
      FieldName = 'TARIFNAM'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery1ADRES: TIBStringField
      FieldName = 'ADRES'
      ProviderFlags = []
      Size = 51
    end
    object IBQuery1PLOS: TIBBCDField
      FieldName = 'PLOS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1GKAL: TIBBCDField
      FieldName = 'GKAL'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1CENA: TIBBCDField
      FieldName = 'CENA'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery1SUMOT: TIBBCDField
      FieldName = 'SUMOT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1SUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1TARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1TARIF_ENDPDV: TIBBCDField
      FieldName = 'TARIF_ENDPDV'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1VID: TIBStringField
      FieldName = 'VID'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery1DATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = []
    end
    object IBQuery1WID: TIBStringField
      FieldName = 'WID'
      ProviderFlags = []
      Size = 2
    end
    object IBQuery1OTHERS: TIntegerField
      FieldName = 'OTHERS'
      ProviderFlags = []
    end
    object IBQuery1NO_LICH: TIntegerField
      FieldName = 'NO_LICH'
      ProviderFlags = []
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = IBQuery1
    BCDToCurrency = False
    Left = 432
    Top = 24
  end
  object frxReport2: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43425.596407557900000000
    ReportOptions.LastChange = 43425.796121631940000000
    ScriptLanguage = 'PascalScript'
    ShowProgress = False
    StoreInDFM = False
    Left = 384
    Top = 24
  end
  object IBPERIOD: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = Main.IBTransaction1
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
    Left = 288
    Top = 30
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
    Left = 288
    Top = 78
  end
end
