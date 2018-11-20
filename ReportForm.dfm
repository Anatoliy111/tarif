inherited Report: TReport
  Caption = #1058#1072#1088#1080#1092#1080
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited cxButton6: TcxButton
      OnClick = cxButton6Click
    end
    inherited cxButton7: TcxButton
      OnClick = cxButton7Click
    end
    inherited cxButton8: TcxButton
      Visible = False
    end
    inherited cxButton9: TcxButton
      Visible = False
    end
    inherited cxButton5: TcxButton
      Visible = False
    end
  end
  inherited Panel4: TPanel
    inherited Panel3: TPanel
      inherited cxButton4: TcxButton
        Visible = False
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 41
    Width = 791
    Height = 48
    Align = alTop
    TabOrder = 2
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
      TabOrder = 1
      Width = 132
    end
  end
  object cxGrid1: TcxGrid [3]
    Left = 165
    Top = 120
    Width = 523
    Height = 145
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSQuery1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_END
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_ENDPDV
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1MZK
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMOT
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1SUMOTPDV
        end
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
          Column = cxGrid1DBTableView1NORMA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1END_BL
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1END_L
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.Footer = True
      object cxGrid1DBTableView1VID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1072#1073#1086#1085'.'
        DataBinding.FieldName = 'VID'
        Width = 81
      end
      object cxGrid1DBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        Width = 169
      end
      object cxGrid1DBTableView1DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'DOM'
      end
      object cxGrid1DBTableView1TARIF: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF'
      end
      object cxGrid1DBTableView1TARIF_END: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_END'
      end
      object cxGrid1DBTableView1TARIF_ENDPDV: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'TARIF_ENDPDV'
      end
      object cxGrid1DBTableView1MZK: TcxGridDBColumn
        Caption = #1052#1047#1050
        DataBinding.FieldName = 'MZK'
      end
      object cxGrid1DBTableView1SUMOT: TcxGridDBColumn
        Caption = #1042#1072#1088#1090#1110#1089#1090#1100
        DataBinding.FieldName = 'SUMOT'
      end
      object cxGrid1DBTableView1SUMOTPDV: TcxGridDBColumn
        Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'SUMOTPDV'
      end
      object cxGrid1DBTableView1KOTEL: TcxGridDBColumn
        Caption = #1050#1086#1090#1077#1083#1100#1085#1103
        DataBinding.FieldName = 'KOTEL'
      end
      object cxGrid1DBTableView1TARIF_PLAN: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1086#1074#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_PLAN'
      end
      object cxGrid1DBTableView1TARIF_FACT: TcxGridDBColumn
        Caption = #1060#1072#1082#1090#1080#1095#1085#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_FACT'
      end
      object cxGrid1DBTableView1NORMA: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
      end
      object cxGrid1DBTableView1END_BL: TcxGridDBColumn
        Caption = #1041#1077#1079' '#1083#1110#1092#1090#1072
        DataBinding.FieldName = 'END_BL'
      end
      object cxGrid1DBTableView1END_L: TcxGridDBColumn
        Caption = #1051#1110#1092#1090
        DataBinding.FieldName = 'END_L'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DBLookupListBox1: TDBLookupListBox [4]
    Left = 0
    Top = 89
    Width = 137
    Height = 356
    ParentCustomHint = False
    Align = alLeft
    BiDiMode = bdLeftToRight
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'ID'
    ListField = 'NAME'
    ListSource = DSPOSL
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = []
  end
  object cxGrid2: TcxGrid [5]
    Left = 197
    Top = 280
    Width = 523
    Height = 130
    TabOrder = 5
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSQuery2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.Footer = True
      object cxGridDBTableView1VID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1072#1073#1086#1085'.'
        DataBinding.FieldName = 'VID'
      end
      object cxGridDBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
      end
      object cxGridDBTableView1DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'DOM'
      end
      object cxGridDBTableView1OTHER: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072
        DataBinding.FieldName = 'OTHER'
      end
      object cxGridDBTableView1TARIF: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF'
      end
      object cxGridDBTableView1SEND: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'SEND'
      end
      object cxGridDBTableView1SENDPDV: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'SENDPDV'
      end
      object cxGridDBTableView1SUMOT: TcxGridDBColumn
        Caption = #1042#1072#1088#1090#1110#1089#1090#1100
        DataBinding.FieldName = 'SUMOT'
      end
      object cxGridDBTableView1SUMOTPDV: TcxGridDBColumn
        Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'SUMOTPDV'
      end
      object cxGridDBTableView1MZK: TcxGridDBColumn
        Caption = #1052#1047#1050
        DataBinding.FieldName = 'MZK'
      end
      object cxGridDBTableView1SPLAN: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1086#1074#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'SPLAN'
      end
      object cxGridDBTableView1SFACT: TcxGridDBColumn
        Caption = #1060#1072#1082#1090#1080#1095#1085#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'SFACT'
      end
      object cxGridDBTableView1NORMA: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  inherited IBTransaction1: TIBTransaction
    Active = True
  end
  object IBQuery1: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select tarif_mes.id, vidab.name vid, ul.name ul, dom.dom,tarif.n' +
        'ame tarif, tarif_mes.tarif_end,'
      
        '    tarif_mes.tarif_endpdv, tarif_mes.mzk, tarif_mes.sumot, tari' +
        'f_mes.sumotpdv,kotel.name kotel,'
      
        '    tarif_mes.TARIF_PLAN, tarif_mes.TARIF_FACT, tarif_mes.NORMA,' +
        ' tarif_mes.END_BL, tarif_mes.END_L from tarif_mes'
      ' left join tarif_dom on (tarif_dom.id_tarifmes = tarif_mes.id)'
      ' left join tarif on (tarif_mes.id_tarif = tarif.id)'
      ' left join posl on (tarif.id_posl = posl.id)'
      ' left join dom on (dom.id = tarif_dom.id_dom)'
      ' left join ul on (ul.id = dom.id_ul)'
      ' left join vidab on (dom.id_vidab = vidab.id)'
      ' left join kotel on (tarif_mes.id_kotel = kotel.id)'
      ' where tarif_mes.data = :dt and tarif.id_posl=:pos'
      ' order by ul.id, dom.dom')
    Left = 72
    Top = 288
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
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_MES"."ID"'
      Required = True
    end
    object IBQuery1VID: TIBStringField
      FieldName = 'VID'
      Origin = '"VIDAB"."NAME"'
      Size = 10
    end
    object IBQuery1UL: TIBStringField
      FieldName = 'UL'
      Origin = '"UL"."NAME"'
      Size = 40
    end
    object IBQuery1DOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"DOM"."DOM"'
      Size = 10
    end
    object IBQuery1TARIF: TIBStringField
      FieldName = 'TARIF'
      Origin = '"TARIF"."NAME"'
      Size = 50
    end
    object IBQuery1TARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      Origin = '"TARIF_MES"."TARIF_END"'
      Precision = 18
      Size = 2
    end
    object IBQuery1TARIF_ENDPDV: TIBBCDField
      FieldName = 'TARIF_ENDPDV'
      Origin = '"TARIF_MES"."TARIF_ENDPDV"'
      Precision = 18
      Size = 2
    end
    object IBQuery1MZK: TIBBCDField
      FieldName = 'MZK'
      Origin = '"TARIF_MES"."MZK"'
      Precision = 18
      Size = 2
    end
    object IBQuery1SUMOT: TIBBCDField
      FieldName = 'SUMOT'
      Origin = '"TARIF_MES"."SUMOT"'
      Precision = 18
      Size = 2
    end
    object IBQuery1SUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      Origin = '"TARIF_MES"."SUMOTPDV"'
      Precision = 18
      Size = 2
    end
    object IBQuery1KOTEL: TIBStringField
      FieldName = 'KOTEL'
      Origin = '"KOTEL"."NAME"'
    end
    object IBQuery1TARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      Origin = '"TARIF_MES"."TARIF_PLAN"'
      Precision = 18
      Size = 2
    end
    object IBQuery1TARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      Origin = '"TARIF_MES"."TARIF_FACT"'
      Precision = 18
      Size = 4
    end
    object IBQuery1NORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_MES"."NORMA"'
      Precision = 18
      Size = 3
    end
    object IBQuery1END_BL: TIBBCDField
      FieldName = 'END_BL'
      Origin = '"TARIF_MES"."END_BL"'
      Precision = 18
      Size = 2
    end
    object IBQuery1END_L: TIBBCDField
      FieldName = 'END_L'
      Origin = '"TARIF_MES"."END_L"'
      Precision = 18
      Size = 2
    end
  end
  object DSQuery1: TDataSource
    DataSet = IBQuery1
    Left = 72
    Top = 344
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
    Left = 136
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
    Left = 136
    Top = 344
  end
  object IBPOSL: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
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
    Left = 192
    Top = 289
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
    OnDataChange = DSPOSLDataChange
    Left = 192
    Top = 345
  end
  object IBQuery2: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select '
      '    tarif_other.id,'
      '    tarif_other.splan,'
      '    tarif_other.sfact,'
      '    tarif_other.norma,'
      '    tarif_other.send,'
      '    tarif_other.mzk,'
      '    tarif_other.sumot,'
      '    tarif_other.sumotpdv,'
      '    tarif_other.sendpdv,'
      '    dom.dom,'
      '    tarif.name tarif,'
      '    ul.name ul,'
      '    other.name other,'
      '    vidab.name vid'
      'from tarif_other'
      
        '   left outer join dom_other on (tarif_other.id_domother = dom_o' +
        'ther.id)'
      '   left outer join dom on (dom_other.id_dom = dom.id)'
      '   left outer join ul on (dom.id_ul = ul.id)'
      '   left outer join other on (dom_other.id_other = other.id)'
      '   left outer join vidab on (other.id_vidab = vidab.id)'
      '   left outer join tarif on (tarif_other.id_tarif = tarif.id)'
      '   left outer join posl on (tarif.id_posl = posl.id)'
      
        '   inner join tarif_mes on (tarif_other.id_tarifmes = tarif_mes.' +
        'id)'
      '   where tarif_mes.data = :dt and tarif.id_posl=:pos'
      '   order by ul.id, dom.dom')
    Left = 240
    Top = 288
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
    object IBQuery2SPLAN: TIBBCDField
      FieldName = 'SPLAN'
      Origin = '"TARIF_OTHER"."SPLAN"'
      Precision = 18
      Size = 2
    end
    object IBQuery2SFACT: TIBBCDField
      FieldName = 'SFACT'
      Origin = '"TARIF_OTHER"."SFACT"'
      Precision = 18
      Size = 4
    end
    object IBQuery2NORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_OTHER"."NORMA"'
      Precision = 18
      Size = 3
    end
    object IBQuery2SEND: TIBBCDField
      FieldName = 'SEND'
      Origin = '"TARIF_OTHER"."SEND"'
      Precision = 18
      Size = 2
    end
    object IBQuery2MZK: TIBBCDField
      FieldName = 'MZK'
      Origin = '"TARIF_OTHER"."MZK"'
      Precision = 18
      Size = 2
    end
    object IBQuery2SUMOT: TIBBCDField
      FieldName = 'SUMOT'
      Origin = '"TARIF_OTHER"."SUMOT"'
      Precision = 18
      Size = 2
    end
    object IBQuery2SUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      Origin = '"TARIF_OTHER"."SUMOTPDV"'
      Precision = 18
      Size = 2
    end
    object IBQuery2SENDPDV: TIBBCDField
      FieldName = 'SENDPDV'
      Origin = '"TARIF_OTHER"."SENDPDV"'
      Precision = 18
      Size = 2
    end
    object IBQuery2DOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"DOM"."DOM"'
      Size = 10
    end
    object IBQuery2TARIF: TIBStringField
      FieldName = 'TARIF'
      Origin = '"TARIF"."NAME"'
      Size = 50
    end
    object IBQuery2UL: TIBStringField
      FieldName = 'UL'
      Origin = '"UL"."NAME"'
      Size = 40
    end
    object IBQuery2OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = '"OTHER"."NAME"'
      Size = 50
    end
    object IBQuery2VID: TIBStringField
      FieldName = 'VID'
      Origin = '"VIDAB"."NAME"'
      Size = 10
    end
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_OTHER"."ID"'
      Required = True
    end
  end
  object DSQuery2: TDataSource
    DataSet = IBQuery2
    Left = 240
    Top = 344
  end
end
