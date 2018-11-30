inherited InfoForm: TInfoForm
  Caption = #1057#1082#1083#1072#1076#1086#1074#1110' '#1090#1072#1088#1080#1092#1091
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitTop = 510
    ExplicitWidth = 562
    inherited cxButton4: TcxButton
      Visible = False
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 562
    Height = 81
    Align = alTop
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 11
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = Tarifs.DSTARIF_MES
      TabOrder = 0
      Width = 273
    end
    object cxLabel2: TcxLabel
      Left = 304
      Top = 12
      Caption = 'cxLabel2'
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 38
      Width = 75
      Height = 25
      Caption = #1044#1088#1091#1082
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  object cxGrid2: TcxGrid [2]
    Left = 0
    Top = 81
    Width = 562
    Height = 429
    Align = alClient
    TabOrder = 2
    ExplicitTop = 73
    ExplicitHeight = 437
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
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = IBTARIF_INF
    BCDToCurrency = False
    Left = 224
    Top = 360
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43425.596407557900000000
    ReportOptions.LastChange = 43434.428164618050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 416
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Dolgn'
        Value = Null
      end
      item
        Name = 'Fio'
        Value = Null
      end
      item
        Name = 'datemes'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 158.740260000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1082#1083#1072#1076#1086#1074#1110' '#1090#1072#1088#1080#1092#1091' [tarif]')
          ParentFont = False
        end
        object datemes: TfrxMemoView
          Top = 113.385900000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[datemes]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 555.590910000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 555.590910000000000000
          Width = 86.929190000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1083#1072#1085#1086#1074#1080#1081' '#1090#1072#1088#1080#1092)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1060#1072#1082#1090#1080#1095#1085#1080#1081' '#1090#1072#1088#1080#1092)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1PLOS: TfrxMemoView
          Left = 555.590910000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."s_plan"]')
          ParentFont = False
        end
        object frxDBDataset1GKAL: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."s_fact"]')
          ParentFont = False
        end
        object frxDBDataset1NAME: TfrxMemoView
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NAME"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object frxDBDataset1GKAL1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 7.559059999999988000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."s_fact">,MasterData1)]')
          ParentFont = False
        end
        object frxDBDataset1PLOS1: TfrxMemoView
          Left = 555.590910000000000000
          Top = 7.559059999999988000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."s_plan">,MasterData1)]')
          ParentFont = False
        end
        object Dolgn: TfrxMemoView
          Left = 11.338590000000000000
          Top = 56.692949999999880000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Dolgn] ________________ [Fio]')
        end
      end
      object Memo19: TfrxMemoView
        Top = 15.118120000000000000
        Width = 211.653680000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          #1050#1055' "'#1044#1086#1083#1080#1085#1089#1100#1082#1080#1081' '#1084#1110#1089#1100#1082#1082#1086#1084#1091#1085#1075#1086#1089#1087'"')
        ParentFont = False
      end
      object Page: TfrxMemoView
        Left = 963.780150000000000000
        Top = 517.795610000000000000
        Width = 79.370130000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1057#1090#1086#1088'. [Page]')
        ParentFont = False
      end
    end
  end
end
