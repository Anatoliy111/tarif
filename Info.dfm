inherited InfoForm: TInfoForm
  Caption = #1057#1082#1083#1072#1076#1086#1074#1110' '#1090#1072#1088#1080#1092#1091
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cxButton4: TcxButton
      Visible = False
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 562
    Height = 73
    Align = alTop
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 27
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = Tarifs.DSTARIF_MES
      TabOrder = 0
      Width = 273
    end
  end
  object cxLabel1: TcxLabel [2]
    Left = 16
    Top = 8
    Caption = #1058#1072#1088#1080#1092
  end
  object cxGrid2: TcxGrid [3]
    Left = 0
    Top = 73
    Width = 562
    Height = 437
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 56
    ExplicitTop = 103
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSTARIF_INF
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableView1S_PLAN
        end
        item
          Format = '0.0000'
          Kind = skSum
          Column = cxGridDBTableView1S_FACT
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
            end
            item
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
      object cxGridDBTableView1NAME: TcxGridDBColumn
        Caption = #1057#1082#1083#1072#1076#1086#1074#1110' '#1090#1072#1088#1080#1092#1091
        DataBinding.FieldName = 'NAME'
        Width = 312
      end
      object cxGridDBTableView1S_PLAN: TcxGridDBColumn
        Caption = #1055#1083#1072#1085
        DataBinding.FieldName = 'S_PLAN'
      end
      object cxGridDBTableView1S_FACT: TcxGridDBColumn
        Caption = #1060#1072#1082#1090
        DataBinding.FieldName = 'S_FACT'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object IBTARIF_INF: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = Tarifs.IBTransaction1
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
      
        'select TARIF_INF.*, tarif_vid.name from TARIF_INF, tarif_vid whe' +
        're TARIF_INF.id_tarvid=tarif_vid.id and tarif_inf. id_tarifmes=:' +
        'tmes')
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
    Left = 152
    Top = 352
    object IBTARIF_INFID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_INF"."ID"'
      Required = True
    end
    object IBTARIF_INFID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_INF"."ID_TARIF"'
    end
    object IBTARIF_INFID_TARIFMES: TIntegerField
      FieldName = 'ID_TARIFMES'
      Origin = '"TARIF_INF"."ID_TARIFMES"'
    end
    object IBTARIF_INFID_TARVID: TIntegerField
      FieldName = 'ID_TARVID'
      Origin = '"TARIF_INF"."ID_TARVID"'
    end
    object IBTARIF_INFS_PLAN: TIBBCDField
      FieldName = 'S_PLAN'
      Origin = '"TARIF_INF"."S_PLAN"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_INFS_FACT: TIBBCDField
      FieldName = 'S_FACT'
      Origin = '"TARIF_INF"."S_FACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_INFNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF_VID"."NAME"'
      Size = 1000
    end
  end
  object DSTARIF_INF: TDataSource
    DataSet = IBTARIF_INF
    Left = 152
    Top = 408
  end
end
