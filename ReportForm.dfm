inherited Report: TReport
  Caption = #1058#1072#1088#1080#1092#1080' '#1087#1086' '#1072#1076#1088#1077#1089#1072#1084
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
    ExplicitWidth = 790
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
    Left = 0
    Top = 89
    Width = 791
    Height = 359
    Align = alClient
    TabOrder = 3
    ExplicitLeft = -1
    ExplicitTop = 91
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSQuery1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
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
      'select '
      '    tarif.id,'
      '    posl.name posl,'
      '    ul.name ul,'
      '    ul.id idul,'
      '    dom.dom,'
      '    tarif.name tarif,'
      '    tarif_mes.tarif_end,'
      '    tarif_mes.norma'
      'from ul'
      '   inner join dom on (ul.id = dom.id_ul)'
      '   inner join tarif_dom on (dom.id = tarif_dom.id_dom)'
      
        '   inner join tarif_mes on (tarif_dom.id_tarifmes = tarif_mes.id' +
        ')'
      '   inner join tarif on (tarif_mes.id_tarif = tarif.id)'
      '   inner join posl on (tarif.id_posl = posl.id)'
      'where '
      '   ('
      '      (tarif_mes.data = :dt)'
      '   )'
      'order by posl.name, ul.id, dom.dom')
    Left = 72
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end>
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF"."ID"'
      Required = True
      Visible = False
    end
    object IBQuery1POSL: TIBStringField
      DisplayLabel = #1055#1086#1089#1083#1091#1075#1072
      FieldName = 'POSL'
      Origin = '"POSL"."NAME"'
      ReadOnly = True
    end
    object IBQuery1UL: TIBStringField
      DisplayLabel = #1042#1091#1083#1080#1094#1103
      FieldName = 'UL'
      Origin = '"UL"."NAME"'
      ReadOnly = True
      Size = 40
    end
    object IBQuery1DOM: TIBStringField
      DisplayLabel = #1041#1091#1076#1080#1085#1086#1082
      FieldName = 'DOM'
      Origin = '"DOM"."DOM"'
      ReadOnly = True
      Size = 5
    end
    object IBQuery1TARIF: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072
      FieldName = 'TARIF'
      Origin = '"TARIF"."NAME"'
      ReadOnly = True
      Size = 50
    end
    object IBQuery1TARIF_END: TIBBCDField
      DisplayLabel = #1058#1072#1088#1080#1092
      FieldName = 'TARIF_END'
      Origin = '"TARIF_MES"."TARIF_END"'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBQuery1NORMA: TIBBCDField
      DisplayLabel = #1053#1086#1088#1084#1072
      FieldName = 'NORMA'
      Origin = '"TARIF_MES"."NORMA"'
      ReadOnly = True
      Precision = 18
      Size = 3
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
    Top = 336
  end
end
