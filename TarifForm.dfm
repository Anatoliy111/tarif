inherited Tarifs: TTarifs
  AlignWithMargins = True
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1058#1072#1088#1080#1092#1080
  ClientHeight = 661
  ClientWidth = 928
  Position = poDefaultSizeOnly
  PrintScale = poNone
  OnCreate = FormCreate
  ExplicitWidth = 944
  ExplicitHeight = 699
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 928
    TabOrder = 3
    ExplicitWidth = 928
    inherited cxButton6: TcxButton
      OnClick = cxButton6Click
    end
    inherited cxButton7: TcxButton
      OnClick = cxButton7Click
    end
    inherited cxButton8: TcxButton
      OnClick = cxButton8Click
    end
    inherited cxButton9: TcxButton
      OnClick = cxButton9Click
    end
    object cxButton1: TcxButton [4]
      Left = 211
      Top = 1
      Width = 120
      Height = 39
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1056#1086#1079#1088#1072#1093#1091#1074#1072#1090#1080' '#1090#1072#1088#1080#1092#1080
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cxButton1Click
    end
    inherited cxButton5: TcxButton
      TabOrder = 5
      OnClick = cxButton5Click
    end
    object cxButton10: TcxButton
      Left = 331
      Top = 1
      Width = 120
      Height = 39
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1042#1080#1075#1088#1091#1079#1080#1090#1080' '#1090#1072#1088#1080#1092#1080
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = cxButton10Click
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 169
    Top = 89
    Width = 759
    Height = 367
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
      DataController.DataSource = DSTARIF_MES
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
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
          Column = cxGrid1DBTableView1TARIF_RN
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_RK
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_END
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1END_BL
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1END_L
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1BORG_VIDH
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS_BBI
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
          Column = cxGrid1DBTableView1LICH_GK
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_ENDPDV
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1LICH_GK2
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = cxGrid1DBTableView1TARIF_PLAN
            end
            item
              Column = cxGrid1DBTableView1TARIF_FACT
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
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1ID_POSL: TcxGridDBColumn
        DataBinding.FieldName = 'ID_POSL'
        Visible = False
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072
        DataBinding.FieldName = 'NAME'
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 248
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = '...'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        Options.ShowEditButtons = isebAlways
        Width = 20
      end
      object cxGrid1DBTableView1NSER_LICH: TcxGridDBColumn
        Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
        DataBinding.FieldName = 'NSER_LICH'
        Options.Editing = False
        Width = 36
      end
      object cxGrid1DBTableView1PLOS_BBI: TcxGridDBColumn
        Caption = #1054#1087#1072#1083#1102#1074#1072#1083#1100#1085#1072' '#1087#1083#1086#1097#1072
        DataBinding.FieldName = 'PLOS_BBI'
        Options.Editing = False
      end
      object cxGrid1DBTableView1LICH_PN: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
        DataBinding.FieldName = 'LICH_PN'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1LICH_PK: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1082#1110#1085#1077#1094#1100
        DataBinding.FieldName = 'LICH_PK'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1LICH_GK: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1043#1082#1072#1083'.'
        DataBinding.FieldName = 'LICH_GK'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 70
      end
      object cxGrid1DBTableView1LICH_PN2: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082' 2'
        DataBinding.FieldName = 'LICH_PN2'
      end
      object cxGrid1DBTableView1LICH_PK2: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1082#1110#1085#1077#1094#1100' 2'
        DataBinding.FieldName = 'LICH_PK2'
      end
      object cxGrid1DBTableView1LICH_GK2: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1043#1082#1072#1083'. 2'
        DataBinding.FieldName = 'LICH_GK2'
      end
      object cxGrid1DBTableView1TARIF_PLAN: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1086#1074#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_PLAN'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1TARIF_FACT: TcxGridDBColumn
        Caption = #1060#1072#1082#1090#1080#1095#1085#1080#1081' '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_FACT'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1TARIF_RN: TcxGridDBColumn
        Caption = #1042#1110#1076#1093'.'#1090#1072#1088'.'#1079#1072'.'#1087#1086#1087#1077#1088'.'#1084#1110#1089#1103#1094#1100' '
        DataBinding.FieldName = 'TARIF_RN'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn
        Caption = #1042#1110#1076#1093#1080#1083#1077#1085#1085#1103' '#1090#1072#1088#1080#1092#1091' '
        DataBinding.FieldName = 'TARIF_RK'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1BORG_VIDH: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1085#1072' '#1074#1110#1076#1093#1080#1083#1077#1085#1085#1103
        DataBinding.FieldName = 'BORG_VIDH'
        Options.Editing = False
      end
      object cxGrid1DBTableView1TARIF_END: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_END'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 81
      end
      object cxGrid1DBTableView1TARIF_ENDPDV: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'TARIF_ENDPDV'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 116
      end
      object cxGrid1DBTableView1MZK: TcxGridDBColumn
        Caption = #1052#1047#1050
        DataBinding.FieldName = 'MZK'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1SUMOT: TcxGridDBColumn
        Caption = #1042#1072#1088#1090#1110#1089#1090#1100
        DataBinding.FieldName = 'SUMOT'
        Options.Editing = False
      end
      object cxGrid1DBTableView1SUMOTPDV: TcxGridDBColumn
        Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'SUMOTPDV'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1NORMA: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 106
      end
      object cxGrid1DBTableView1PLAN_BL: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_BL'
        Visible = False
      end
      object cxGrid1DBTableView1FACT_BL: TcxGridDBColumn
        DataBinding.FieldName = 'FACT_BL'
        Visible = False
      end
      object cxGrid1DBTableView1END_BL: TcxGridDBColumn
        Caption = #1041#1077#1079' '#1083#1110#1092#1090#1072
        DataBinding.FieldName = 'END_BL'
        Options.Editing = False
      end
      object cxGrid1DBTableView1END_L: TcxGridDBColumn
        Caption = #1051#1110#1092#1090
        DataBinding.FieldName = 'END_L'
        Options.Editing = False
      end
      object cxGrid1DBTableView1ID_KOTEL: TcxGridDBColumn
        Caption = #1050#1086#1090#1077#1083#1100#1085#1103
        DataBinding.FieldName = 'ID_KOTEL'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DSKOTEL
        Options.Editing = False
      end
      object cxGrid1DBTableView1ID_VIDCENA: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1094#1110#1085#1080
        DataBinding.FieldName = 'ID_VIDCENA'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DSVIDAB
        Options.Editing = False
        Width = 115
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 41
    Width = 928
    Height = 48
    Align = alTop
    TabOrder = 2
    object cxButton2: TcxButton
      Left = 169
      Top = 6
      Width = 137
      Height = 33
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080'  SoftProekt'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = cxButton2Click
    end
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
      TabOrder = 2
      Width = 132
    end
  end
  inherited Panel4: TPanel
    Top = 608
    Width = 928
    Height = 53
    TabOrder = 0
    ExplicitTop = 608
    ExplicitWidth = 928
    ExplicitHeight = 53
    inherited Panel3: TPanel
      Left = 771
      Height = 28
      ExplicitLeft = 771
      ExplicitHeight = 28
      inherited cxButton4: TcxButton
        Top = 3
        ExplicitTop = 3
      end
      inherited cxButton3: TcxButton
        Top = 3
        ExplicitTop = 3
      end
    end
    inherited dxStatusBar1: TdxStatusBar
      Top = 32
      Width = 920
      Height = 17
      ExplicitTop = 32
      ExplicitWidth = 920
      ExplicitHeight = 17
    end
  end
  object Panel5: TPanel [4]
    Left = 0
    Top = 89
    Width = 169
    Height = 367
    Align = alLeft
    TabOrder = 4
    object DBLookupListBox1: TDBLookupListBox
      Left = 1
      Top = 1
      Width = 167
      Height = 116
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = DSPOSL
      ParentFont = False
      TabOrder = 0
      OnClick = DBLookupListBox1Click
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 117
      Width = 167
      Height = 249
      Align = alClient
      TabOrder = 1
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSTARIF_DOM
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView2ID_DOM: TcxGridDBColumn
          Caption = #1041#1091#1076#1080#1085#1082#1080
          DataBinding.FieldName = 'ID_DOM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DSDOM
          Properties.ReadOnly = True
          Width = 166
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
  end
  object Panel6: TPanel [5]
    Left = 0
    Top = 456
    Width = 928
    Height = 152
    Align = alBottom
    Caption = 'Panel6'
    TabOrder = 9
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 722
      Height = 150
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSTARIF_OTHER
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGridDBTableView1PLOS_BB
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1SPLAN
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1SFACT
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1MZK
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1SUMOT
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1SUMOTPDV
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1SEND
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1SENDPDV
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1LICH_GK
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1LICH_GK2
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1ID_DOM: TcxGridDBColumn
          Caption = #1041#1091#1076#1080#1085#1086#1082
          DataBinding.FieldName = 'ID_DOM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DSDOM
          Options.Editing = False
          Width = 109
        end
        object cxGridDBTableView1ID_OTHER: TcxGridDBColumn
          Caption = #1053#1072#1079#1074#1072
          DataBinding.FieldName = 'ID_OTHER'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DSOTHER
          Options.Editing = False
          Width = 232
        end
        object cxGridDBTableView1PLOS_BB: TcxGridDBColumn
          Caption = #1054#1087#1072#1083#1102#1074#1072#1083#1100#1085#1072' '#1087#1083#1086#1097#1072
          DataBinding.FieldName = 'PLOS_BB'
          Options.Editing = False
          Width = 116
        end
        object cxGridDBTableView1LICH_PN: TcxGridDBColumn
          Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
          DataBinding.FieldName = 'LICH_PN'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cxGridDBTableView1LICH_PK: TcxGridDBColumn
          Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1082#1110#1085#1077#1094#1100
          DataBinding.FieldName = 'LICH_PK'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cxGridDBTableView1LICH_GK: TcxGridDBColumn
          Caption = #1050'-'#1089#1090#1100' '#1043#1082#1072#1083'.'
          DataBinding.FieldName = 'LICH_GK'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cxGridDBTableView1LICH_PN2: TcxGridDBColumn
          Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082' 2'
          DataBinding.FieldName = 'LICH_PN2'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cxGridDBTableView1LICH_PK2: TcxGridDBColumn
          Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1082#1110#1085#1077#1094#1100' 2'
          DataBinding.FieldName = 'LICH_PK2'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cxGridDBTableView1LICH_GK2: TcxGridDBColumn
          Caption = #1050'-'#1089#1090#1100' '#1043#1082#1072#1083'. 2'
          DataBinding.FieldName = 'LICH_GK2'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
        object cxGridDBTableView1SEND: TcxGridDBColumn
          Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092
          DataBinding.FieldName = 'SEND'
          Width = 80
        end
        object cxGridDBTableView1SENDPDV: TcxGridDBColumn
          Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092' '#1079' '#1055#1044#1042
          DataBinding.FieldName = 'SENDPDV'
          Options.Editing = False
          Width = 111
        end
        object cxGridDBTableView1MZK: TcxGridDBColumn
          Caption = #1052#1079#1082
          DataBinding.FieldName = 'MZK'
          Width = 55
        end
        object cxGridDBTableView1SUMOT: TcxGridDBColumn
          Caption = #1042#1072#1088#1090#1110#1089#1090#1100
          DataBinding.FieldName = 'SUMOT'
          Options.Editing = False
          Width = 110
        end
        object cxGridDBTableView1SUMOTPDV: TcxGridDBColumn
          Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1079' '#1055#1044#1042
          DataBinding.FieldName = 'SUMOTPDV'
          Options.Editing = False
          Width = 123
        end
        object cxGridDBTableView1SPLAN: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1086#1074#1080#1081' '#1090#1072#1088#1080#1092
          DataBinding.FieldName = 'SPLAN'
          Visible = False
          Width = 56
        end
        object cxGridDBTableView1SFACT: TcxGridDBColumn
          Caption = #1060#1072#1082#1090#1080#1095#1085#1080#1081' '#1090#1072#1088#1080#1092
          DataBinding.FieldName = 'SFACT'
          Visible = False
          Width = 99
        end
        object cxGridDBTableView1ID_VIDCENA: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1094#1110#1085#1080
          DataBinding.FieldName = 'ID_VIDCENA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DSVIDAB
          Options.Editing = False
          Width = 98
        end
        object cxGridDBTableView1ID_VIDAB: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1072#1073#1086#1085'.'
          DataBinding.FieldName = 'ID_VIDAB'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DSVIDAB
          Options.Editing = False
          Width = 106
        end
        object cxGridDBTableView1FL_LICH: TcxGridDBColumn
          Caption = #1051#1110#1095#1080#1083#1100#1085#1080#1082
          DataBinding.FieldName = 'FL_LICH'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Editing = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxDBMemo1: TcxDBMemo
      Left = 723
      Top = 1
      Align = alRight
      DataBinding.DataField = 'NOTE'
      DataBinding.DataSource = DSTARIF_MES
      TabOrder = 1
      Height = 150
      Width = 204
    end
  end
  inherited IBTransaction1: TIBTransaction
    Top = 600
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = Main.ImageList3
    ImageOptions.LargeImages = Main.ImageList3
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 640
    Top = 296
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      LargeImageIndex = 5
    end
    object dxBarButton2: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
    end
    object dxBarButton3: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
      ImageIndex = 6
    end
  end
  object IBTARIFUPD: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIFUPDBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_MES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_MES'
      
        '  (ID, ID_TARIF, DATA, TARIF_PLAN, TARIF_FACT, TARIF_RN, TARIF_R' +
        'K, NORMA, '
      
        '   TARIF_END, PLAN_BL, FACT_BL, END_BL, END_L, LICH_PN, LICH_PK,' +
        ' NOTE, '
      
        '   PLOS_BBI, NSER_LICH, ID_KOTEL, PLOS_BB, MZK, BORG_VIDH, NO_LI' +
        'CH, PLOS_IN, '
      
        '   PLOS_MZK, SUMOT, SUMOTPDV, LICH_GK, TARIF_ENDPDV, LICH_PN2, L' +
        'ICH_PK2, '
      '   LICH_GK2, ID_VIDCENA, CENA1, CENA2, PROCENT, FL_2CENA)'
      'values'
      
        '  (:ID, :ID_TARIF, :DATA, :TARIF_PLAN, :TARIF_FACT, :TARIF_RN, :' +
        'TARIF_RK, '
      
        '   :NORMA, :TARIF_END, :PLAN_BL, :FACT_BL, :END_BL, :END_L, :LIC' +
        'H_PN, :LICH_PK, '
      
        '   :NOTE, :PLOS_BBI, :NSER_LICH, :ID_KOTEL, :PLOS_BB, :MZK, :BOR' +
        'G_VIDH, '
      
        '   :NO_LICH, :PLOS_IN, :PLOS_MZK, :SUMOT, :SUMOTPDV, :LICH_GK, :' +
        'TARIF_ENDPDV, '
      
        '   :LICH_PN2, :LICH_PK2, :LICH_GK2, :ID_VIDCENA, :CENA1, :CENA2,' +
        ' :PROCENT, '
      '   :FL_2CENA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  DATA,'
      '  TARIF_PLAN,'
      '  TARIF_FACT,'
      '  TARIF_RN,'
      '  TARIF_RK,'
      '  NORMA,'
      '  TARIF_END,'
      '  PLAN_BL,'
      '  FACT_BL,'
      '  END_BL,'
      '  END_L,'
      '  LICH_PN,'
      '  LICH_PK,'
      '  NOTE,'
      '  PLOS_BBI,'
      '  NSER_LICH,'
      '  ID_KOTEL,'
      '  PLOS_BB,'
      '  MZK,'
      '  BORG_VIDH,'
      '  NO_LICH,'
      '  PLOS_IN,'
      '  PLOS_MZK,'
      '  SUMOT,'
      '  SUMOTPDV,'
      '  LICH_GK,'
      '  TARIF_ENDPDV,'
      '  LICH_PN2,'
      '  LICH_PK2,'
      '  LICH_GK2,'
      '  ID_VIDCENA,'
      '  CENA1,'
      '  CENA2,'
      '  PROCENT,'
      '  FL_2CENA'
      'from TARIF_MES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select tarif_mes.*,posl.wid, posl.name as posl, tarif_dom.name a' +
        's dom, tarif_dom.id_dom from TARIF, TARIF_MES, POSL, TARIF_DOM w' +
        'here tarif_mes.data=:dt and tarif.id_posl=posl.id and tarif_mes.' +
        'id_tarif=tarif.id and tarif_mes.id=tarif_dom.id_tarifmes')
    ModifySQL.Strings = (
      'update TARIF_MES'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  DATA = :DATA,'
      '  TARIF_PLAN = :TARIF_PLAN,'
      '  TARIF_FACT = :TARIF_FACT,'
      '  TARIF_RN = :TARIF_RN,'
      '  TARIF_RK = :TARIF_RK,'
      '  NORMA = :NORMA,'
      '  TARIF_END = :TARIF_END,'
      '  PLAN_BL = :PLAN_BL,'
      '  FACT_BL = :FACT_BL,'
      '  END_BL = :END_BL,'
      '  END_L = :END_L,'
      '  LICH_PN = :LICH_PN,'
      '  LICH_PK = :LICH_PK,'
      '  NOTE = :NOTE,'
      '  PLOS_BBI = :PLOS_BBI,'
      '  NSER_LICH = :NSER_LICH,'
      '  ID_KOTEL = :ID_KOTEL,'
      '  PLOS_BB = :PLOS_BB,'
      '  MZK = :MZK,'
      '  BORG_VIDH = :BORG_VIDH,'
      '  NO_LICH = :NO_LICH,'
      '  PLOS_IN = :PLOS_IN,'
      '  PLOS_MZK = :PLOS_MZK,'
      '  SUMOT = :SUMOT,'
      '  SUMOTPDV = :SUMOTPDV,'
      '  LICH_GK = :LICH_GK,'
      '  TARIF_ENDPDV = :TARIF_ENDPDV,'
      '  LICH_PN2 = :LICH_PN2,'
      '  LICH_PK2 = :LICH_PK2,'
      '  LICH_GK2 = :LICH_GK2,'
      '  ID_VIDCENA = :ID_VIDCENA,'
      '  CENA1 = :CENA1,'
      '  CENA2 = :CENA2,'
      '  PROCENT = :PROCENT,'
      '  FL_2CENA = :FL_2CENA'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_MES_ID'
    Left = 48
    Top = 544
    object IBTARIFUPDID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_MES"."ID"'
      Required = True
    end
    object IBTARIFUPDID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_MES"."ID_TARIF"'
    end
    object IBTARIFUPDDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TARIF_MES"."DATA"'
    end
    object IBTARIFUPDTARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      Origin = '"TARIF_MES"."TARIF_PLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDTARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      Origin = '"TARIF_MES"."TARIF_FACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDTARIF_RN: TIBBCDField
      FieldName = 'TARIF_RN'
      Origin = '"TARIF_MES"."TARIF_RN"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDTARIF_RK: TIBBCDField
      FieldName = 'TARIF_RK'
      Origin = '"TARIF_MES"."TARIF_RK"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDNORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_MES"."NORMA"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDTARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      Origin = '"TARIF_MES"."TARIF_END"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDPLAN_BL: TIBBCDField
      FieldName = 'PLAN_BL'
      Origin = '"TARIF_MES"."PLAN_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDFACT_BL: TIBBCDField
      FieldName = 'FACT_BL'
      Origin = '"TARIF_MES"."FACT_BL"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDEND_BL: TIBBCDField
      FieldName = 'END_BL'
      Origin = '"TARIF_MES"."END_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDEND_L: TIBBCDField
      FieldName = 'END_L'
      Origin = '"TARIF_MES"."END_L"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDWID: TIBStringField
      FieldName = 'WID'
      Origin = '"POSL"."WID"'
      Size = 2
    end
    object IBTARIFUPDPOSL: TIBStringField
      FieldName = 'POSL'
      Origin = '"POSL"."NAME"'
    end
    object IBTARIFUPDDOM: TIBStringField
      FieldName = 'DOM'
      Origin = '"TARIF_DOM"."NAME"'
      Size = 50
    end
    object IBTARIFUPDLICH_PN: TIBBCDField
      FieldName = 'LICH_PN'
      Origin = '"TARIF_MES"."LICH_PN"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDLICH_PK: TIBBCDField
      FieldName = 'LICH_PK'
      Origin = '"TARIF_MES"."LICH_PK"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TARIF_MES"."NOTE"'
      Size = 200
    end
    object IBTARIFUPDPLOS_BBI: TIBBCDField
      FieldName = 'PLOS_BBI'
      Origin = '"TARIF_MES"."PLOS_BBI"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDNSER_LICH: TIBStringField
      FieldName = 'NSER_LICH'
      Origin = '"TARIF_MES"."NSER_LICH"'
    end
    object IBTARIFUPDID_KOTEL: TIntegerField
      FieldName = 'ID_KOTEL'
      Origin = '"TARIF_MES"."ID_KOTEL"'
    end
    object IBTARIFUPDPLOS_BB: TIBBCDField
      FieldName = 'PLOS_BB'
      Origin = '"TARIF_MES"."PLOS_BB"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDMZK: TIBBCDField
      FieldName = 'MZK'
      Origin = '"TARIF_MES"."MZK"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDBORG_VIDH: TIBBCDField
      FieldName = 'BORG_VIDH'
      Origin = '"TARIF_MES"."BORG_VIDH"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDID_DOM: TIntegerField
      FieldName = 'ID_DOM'
      Origin = '"TARIF_DOM"."ID_DOM"'
    end
    object IBTARIFUPDNO_LICH: TIntegerField
      FieldName = 'NO_LICH'
      Origin = '"TARIF_MES"."NO_LICH"'
    end
    object IBTARIFUPDPLOS_IN: TIBBCDField
      FieldName = 'PLOS_IN'
      Origin = '"TARIF_MES"."PLOS_IN"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDPLOS_MZK: TIBBCDField
      FieldName = 'PLOS_MZK'
      Origin = '"TARIF_MES"."PLOS_MZK"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDSUMOT: TIBBCDField
      FieldName = 'SUMOT'
      Origin = '"TARIF_MES"."SUMOT"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDSUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      Origin = '"TARIF_MES"."SUMOTPDV"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDLICH_GK: TIBBCDField
      FieldName = 'LICH_GK'
      Origin = '"TARIF_MES"."LICH_GK"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDTARIF_ENDPDV: TIBBCDField
      FieldName = 'TARIF_ENDPDV'
      Origin = '"TARIF_MES"."TARIF_ENDPDV"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDLICH_PN2: TIBBCDField
      FieldName = 'LICH_PN2'
      Origin = '"TARIF_MES"."LICH_PN2"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDLICH_PK2: TIBBCDField
      FieldName = 'LICH_PK2'
      Origin = '"TARIF_MES"."LICH_PK2"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDLICH_GK2: TIBBCDField
      FieldName = 'LICH_GK2'
      Origin = '"TARIF_MES"."LICH_GK2"'
      Precision = 18
      Size = 3
    end
    object IBTARIFUPDID_VIDCENA: TIntegerField
      FieldName = 'ID_VIDCENA'
      Origin = '"TARIF_MES"."ID_VIDCENA"'
    end
    object IBTARIFUPDPROCENT: TIBBCDField
      FieldName = 'PROCENT'
      Origin = '"TARIF_MES"."PROCENT"'
      Precision = 18
      Size = 2
    end
    object IBTARIFUPDCENA1: TIBBCDField
      FieldName = 'CENA1'
      Origin = '"TARIF_MES"."CENA1"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDCENA2: TIBBCDField
      FieldName = 'CENA2'
      Origin = '"TARIF_MES"."CENA2"'
      Precision = 18
      Size = 4
    end
    object IBTARIFUPDFL_2CENA: TIntegerField
      FieldName = 'FL_2CENA'
      Origin = '"TARIF_MES"."FL_2CENA"'
    end
  end
  object DSTARIFUPD: TDataSource
    DataSet = IBTARIFUPD
    Left = 48
    Top = 592
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
    Left = 424
    Top = 520
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
    Left = 424
    Top = 568
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
      
        '  (ID, ID_TARIF, ID_TARIFMES, NAME, SUMM, KL_NTAR, FL_LIFT, NORM' +
        'A, SPLAN, '
      '   SFACT, SUMM_BL, SUMM_L)'
      'values'
      
        '  (:ID, :ID_TARIF, :ID_TARIFMES, :NAME, :SUMM, :KL_NTAR, :FL_LIF' +
        'T, :NORMA, '
      '   :SPLAN, :SFACT, :SUMM_BL, :SUMM_L)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  ID_TARIFMES,'
      '  NAME,'
      '  SUMM,'
      '  KL_NTAR,'
      '  FL_LIFT,'
      '  NORMA,'
      '  SPLAN,'
      '  SFACT,'
      '  SUMM_BL,'
      '  SUMM_L'
      'from TARIF_COMP '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from TARIF_COMP')
    ModifySQL.Strings = (
      'update TARIF_COMP'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  ID_TARIFMES = :ID_TARIFMES,'
      '  NAME = :NAME,'
      '  SUMM = :SUMM,'
      '  KL_NTAR = :KL_NTAR,'
      '  FL_LIFT = :FL_LIFT,'
      '  NORMA = :NORMA,'
      '  SPLAN = :SPLAN,'
      '  SFACT = :SFACT,'
      '  SUMM_BL = :SUMM_BL,'
      '  SUMM_L = :SUMM_L'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_COMP_ID'
    DataSource = DSTARIF_MES
    Left = 112
    Top = 520
    object IBTARIF_COMPID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_COMP"."ID"'
      Required = True
    end
    object IBTARIF_COMPID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_COMP"."ID_TARIF"'
    end
    object IBTARIF_COMPID_TARIFMES: TIntegerField
      FieldName = 'ID_TARIFMES'
      Origin = '"TARIF_COMP"."ID_TARIFMES"'
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
    object IBTARIF_COMPSPLAN: TIBBCDField
      FieldName = 'SPLAN'
      Origin = '"TARIF_COMP"."SPLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_COMPSFACT: TIBBCDField
      FieldName = 'SFACT'
      Origin = '"TARIF_COMP"."SFACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_COMPSUMM_BL: TIBBCDField
      FieldName = 'SUMM_BL'
      Origin = '"TARIF_COMP"."SUMM_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_COMPSUMM_L: TIBBCDField
      FieldName = 'SUMM_L'
      Origin = '"TARIF_COMP"."SUMM_L"'
      Precision = 18
      Size = 2
    end
  end
  object DSTARIF_COMP: TDataSource
    DataSet = IBTARIF_COMP
    Left = 112
    Top = 568
  end
  object IBQSoftproect1: TIBQuery
    Database = DataM.IBDatabase2
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      ' select ID_HOUSE,'
      '       '#39'ub'#39' as WID,'
      '       STREET,'
      '       ID_STREET,'
      '       N_BUD,'
      '       sum(FACT_SUMM_BEZ_LIFT) FACT_BL,'
      '       sum(NORM_SUMM_BEZ_LIFT) NORM_BL,'
      '       sum(FACT_SUMM_S_LIFT) FACT,'
      '       sum(NORM_SUMM_S_LIFT) NORM'
      'from'
      '('
      '    select'
      '        1                               "IsNotFirstFloat",'
      '        B.id                            ID_HOUSE,'
      '        "TaStreets"."Name"              STREET,'
      '        "TaStreets".Id              ID_STREET,'
      '        B."Number"                      N_BUD,'
      '        0                               FACT_SUMM_BEZ_LIFT,'
      '        0                               NORM_SUMM_BEZ_LIFT,'
      '        T."PolID"                         USL,'
      '        T."FactZatrat"                  FACT_SUMM_S_LIFT,'
      '        T."NormatTarif"                 NORM_SUMM_S_LIFT'
      '    from'
      '        "TaBuilding" B'
      
        '            left join "PrRepSravnTarifDifuchetAnalit"(:BDate, :E' +
        'Date, B."Analitika") T on 0=0'
      '            left join "TaStreets" on "TaStreets".id = b."Street"'
      '    where'
      '        T."InTarif" = 1'
      '  union'
      '    select'
      '        0                               "IsNotFirstFloat",'
      '        B.id                            ID_HOUSE,'
      '        "TaStreets"."Name"              STREET,'
      '        "TaStreets".Id                ID_STREET,'
      '        B."Number"                      N_BUD,'
      '        T."FactZatrat"                  FACT_SUMM_BEZ_LIFT,'
      '        T."NormatTarif"                 NORM_SUMM_BEZ_LIFT,'
      '        T."PolID"                         USL,'
      '        0                               FACT_SUMM_S_LIFT,'
      '        0                               NORM_SUMM_S_LIFT'
      '    from'
      '        "TaBuilding" B'
      
        '            left join "PrRepSravnTarifDifuchetAnalit"(:BDate, :E' +
        'Date, B."Analitika") T on 0=0'
      '            left join "TaStreets" on "TaStreets".id = b."Street"'
      '    where'
      '        T."InTarif" = 1'
      '        and coalesce(T."IsNotFirstFloat",0) = 0'
      ')'
      'group by ID_HOUSE, STREET,ID_STREET, N_BUD'
      'order by ID_HOUSE, STREET,ID_STREET, N_BUD')
    Left = 296
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EDate'
        ParamType = ptUnknown
      end>
  end
  object IBTransaction2: TIBTransaction
    DefaultDatabase = DataM.IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 448
    Top = 464
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
      '  (ID, ID_TARIF, ID_TARIFMES, ID_DOM, NAME)'
      'values'
      '  (:ID, :ID_TARIF, :ID_TARIFMES, :ID_DOM, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  ID_TARIFMES,'
      '  ID_DOM,'
      '  NAME'
      'from TARIF_DOM '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from TARIF_DOM')
    ModifySQL.Strings = (
      'update TARIF_DOM'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  ID_TARIFMES = :ID_TARIFMES,'
      '  ID_DOM = :ID_DOM,'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_DOM_ID'
    DataSource = DSTARIF_MES
    Left = 168
    Top = 520
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
    object IBTARIF_DOMID_TARIFMES: TIntegerField
      FieldName = 'ID_TARIFMES'
      Origin = '"TARIF_DOM"."ID_TARIFMES"'
    end
  end
  object DSTARIF_DOM: TDataSource
    DataSet = IBTARIF_DOM
    Left = 168
    Top = 568
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
    Left = 504
    Top = 520
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
    Left = 464
    Top = 520
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
    Left = 464
    Top = 576
  end
  object DSDOM: TDataSource
    DataSet = IBDOM
    Left = 504
    Top = 576
  end
  object IBQuery2: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 376
    Top = 176
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
    Left = 32
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
    Left = 32
    Top = 336
  end
  object IBTARIF_MES: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    AfterEdit = IBTARIF_MESAfterEdit
    BeforePost = IBTARIF_MESBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_MES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_MES'
      
        '  (ID, ID_TARIF, DATA, TARIF_PLAN, TARIF_FACT, TARIF_RN, TARIF_R' +
        'K, NORMA, '
      
        '   TARIF_END, PLAN_BL, FACT_BL, END_BL, END_L, LICH_PN, LICH_PK,' +
        ' NOTE, '
      
        '   PLOS_BBI, NSER_LICH, ID_KOTEL, PLOS_BB, MZK, BORG_VIDH, NO_LI' +
        'CH, PLOS_IN, '
      
        '   PLOS_MZK, SUMOT, SUMOTPDV, LICH_GK, TARIF_ENDPDV, LICH_PN2, L' +
        'ICH_PK2, '
      '   LICH_GK2, ID_VIDCENA, PROCENT, FL_2CENA)'
      'values'
      
        '  (:ID, :ID_TARIF, :DATA, :TARIF_PLAN, :TARIF_FACT, :TARIF_RN, :' +
        'TARIF_RK, '
      
        '   :NORMA, :TARIF_END, :PLAN_BL, :FACT_BL, :END_BL, :END_L, :LIC' +
        'H_PN, :LICH_PK, '
      
        '   :NOTE, :PLOS_BBI, :NSER_LICH, :ID_KOTEL, :PLOS_BB, :MZK, :BOR' +
        'G_VIDH, '
      
        '   :NO_LICH, :PLOS_IN, :PLOS_MZK, :SUMOT, :SUMOTPDV, :LICH_GK, :' +
        'TARIF_ENDPDV, '
      
        '   :LICH_PN2, :LICH_PK2, :LICH_GK2, :ID_VIDCENA, :PROCENT, :FL_2' +
        'CENA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  DATA,'
      '  TARIF_PLAN,'
      '  TARIF_FACT,'
      '  TARIF_RN,'
      '  TARIF_RK,'
      '  NORMA,'
      '  TARIF_END,'
      '  PLAN_BL,'
      '  FACT_BL,'
      '  END_BL,'
      '  END_L,'
      '  LICH_PN,'
      '  LICH_PK,'
      '  NOTE,'
      '  PLOS_BBI,'
      '  NSER_LICH,'
      '  ID_KOTEL,'
      '  PLOS_BB,'
      '  MZK,'
      '  BORG_VIDH,'
      '  NO_LICH,'
      '  PLOS_IN,'
      '  PLOS_MZK,'
      '  SUMOT,'
      '  SUMOTPDV,'
      '  LICH_GK,'
      '  TARIF_ENDPDV,'
      '  LICH_PN2,'
      '  LICH_PK2,'
      '  LICH_GK2,'
      '  ID_VIDCENA,'
      '  CENA1,'
      '  CENA2,'
      '  PROCENT,'
      '  FL_2CENA'
      'from TARIF_MES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select TARIF_MES.*, TARIF.NAME, TARIF.id_posl from TARIF_MES, TA' +
        'RIF WHERE TARIF_MES.ID_TARIF=TARIF.ID ')
    ModifySQL.Strings = (
      'update TARIF_MES'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  DATA = :DATA,'
      '  TARIF_PLAN = :TARIF_PLAN,'
      '  TARIF_FACT = :TARIF_FACT,'
      '  TARIF_RN = :TARIF_RN,'
      '  TARIF_RK = :TARIF_RK,'
      '  NORMA = :NORMA,'
      '  TARIF_END = :TARIF_END,'
      '  PLAN_BL = :PLAN_BL,'
      '  FACT_BL = :FACT_BL,'
      '  END_BL = :END_BL,'
      '  END_L = :END_L,'
      '  LICH_PN = :LICH_PN,'
      '  LICH_PK = :LICH_PK,'
      '  NOTE = :NOTE,'
      '  PLOS_BBI = :PLOS_BBI,'
      '  NSER_LICH = :NSER_LICH,'
      '  ID_KOTEL = :ID_KOTEL,'
      '  PLOS_BB = :PLOS_BB,'
      '  MZK = :MZK,'
      '  BORG_VIDH = :BORG_VIDH,'
      '  NO_LICH = :NO_LICH,'
      '  PLOS_IN = :PLOS_IN,'
      '  PLOS_MZK = :PLOS_MZK,'
      '  SUMOT = :SUMOT,'
      '  SUMOTPDV = :SUMOTPDV,'
      '  LICH_GK = :LICH_GK,'
      '  TARIF_ENDPDV = :TARIF_ENDPDV,'
      '  LICH_PN2 = :LICH_PN2,'
      '  LICH_PK2 = :LICH_PK2,'
      '  LICH_GK2 = :LICH_GK2,'
      '  ID_VIDCENA = :ID_VIDCENA,'
      '  PROCENT = :PROCENT,'
      '  FL_2CENA = :FL_2CENA'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_MES_ID'
    DataSource = DSPOSL
    Left = 232
    Top = 520
    object IBTARIF_MESID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_MES"."ID"'
      Required = True
    end
    object IBTARIF_MESID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_MES"."ID_TARIF"'
    end
    object IBTARIF_MESDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TARIF_MES"."DATA"'
    end
    object IBTARIF_MESTARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      Origin = '"TARIF_MES"."TARIF_PLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESTARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      Origin = '"TARIF_MES"."TARIF_FACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESTARIF_RN: TIBBCDField
      FieldName = 'TARIF_RN'
      Origin = '"TARIF_MES"."TARIF_RN"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESTARIF_RK: TIBBCDField
      FieldName = 'TARIF_RK'
      Origin = '"TARIF_MES"."TARIF_RK"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESNORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_MES"."NORMA"'
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESTARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      Origin = '"TARIF_MES"."TARIF_END"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESPLAN_BL: TIBBCDField
      FieldName = 'PLAN_BL'
      Origin = '"TARIF_MES"."PLAN_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESFACT_BL: TIBBCDField
      FieldName = 'FACT_BL'
      Origin = '"TARIF_MES"."FACT_BL"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF"."NAME"'
      OnChange = IBTARIF_MESNAMEChange
      Size = 50
    end
    object IBTARIF_MESEND_BL: TIBBCDField
      FieldName = 'END_BL'
      Origin = '"TARIF_MES"."END_BL"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESEND_L: TIBBCDField
      FieldName = 'END_L'
      Origin = '"TARIF_MES"."END_L"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESLICH_PN: TIBBCDField
      FieldName = 'LICH_PN'
      Origin = '"TARIF_MES"."LICH_PN"'
      OnChange = IBTARIF_MESLICH_PNChange
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESLICH_PK: TIBBCDField
      FieldName = 'LICH_PK'
      Origin = '"TARIF_MES"."LICH_PK"'
      OnChange = IBTARIF_MESLICH_PKChange
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESNOTE: TIBStringField
      FieldName = 'NOTE'
      Origin = '"TARIF_MES"."NOTE"'
      Size = 200
    end
    object IBTARIF_MESPLOS_BBI: TIBBCDField
      FieldName = 'PLOS_BBI'
      Origin = '"TARIF_MES"."PLOS_BBI"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESNSER_LICH: TIBStringField
      FieldName = 'NSER_LICH'
      Origin = '"TARIF_MES"."NSER_LICH"'
    end
    object IBTARIF_MESID_KOTEL: TIntegerField
      FieldName = 'ID_KOTEL'
      Origin = '"TARIF_MES"."ID_KOTEL"'
    end
    object IBTARIF_MESPLOS_BB: TIBBCDField
      FieldName = 'PLOS_BB'
      Origin = '"TARIF_MES"."PLOS_BB"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESID_POSL: TIntegerField
      FieldName = 'ID_POSL'
      Origin = '"TARIF"."ID_POSL"'
    end
    object IBTARIF_MESMZK: TIBBCDField
      FieldName = 'MZK'
      Origin = '"TARIF_MES"."MZK"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESBORG_VIDH: TIBBCDField
      FieldName = 'BORG_VIDH'
      Origin = '"TARIF_MES"."BORG_VIDH"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESNO_LICH: TIntegerField
      FieldName = 'NO_LICH'
      Origin = '"TARIF_MES"."NO_LICH"'
    end
    object IBTARIF_MESPLOS_IN: TIBBCDField
      FieldName = 'PLOS_IN'
      Origin = '"TARIF_MES"."PLOS_IN"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESPLOS_MZK: TIBBCDField
      FieldName = 'PLOS_MZK'
      Origin = '"TARIF_MES"."PLOS_MZK"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESSUMOT: TIBBCDField
      FieldName = 'SUMOT'
      Origin = '"TARIF_MES"."SUMOT"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESSUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      Origin = '"TARIF_MES"."SUMOTPDV"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESLICH_GK: TIBBCDField
      FieldName = 'LICH_GK'
      Origin = '"TARIF_MES"."LICH_GK"'
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESTARIF_ENDPDV: TIBBCDField
      FieldName = 'TARIF_ENDPDV'
      Origin = '"TARIF_MES"."TARIF_ENDPDV"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESLICH_PN2: TIBBCDField
      FieldName = 'LICH_PN2'
      Origin = '"TARIF_MES"."LICH_PN2"'
      OnChange = IBTARIF_MESLICH_PN2Change
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESLICH_PK2: TIBBCDField
      FieldName = 'LICH_PK2'
      Origin = '"TARIF_MES"."LICH_PK2"'
      OnChange = IBTARIF_MESLICH_PK2Change
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESLICH_GK2: TIBBCDField
      FieldName = 'LICH_GK2'
      Origin = '"TARIF_MES"."LICH_GK2"'
      Precision = 18
      Size = 3
    end
    object IBTARIF_MESID_VIDCENA: TIntegerField
      FieldName = 'ID_VIDCENA'
      Origin = '"TARIF_MES"."ID_VIDCENA"'
    end
    object IBTARIF_MESPROCENT: TIBBCDField
      FieldName = 'PROCENT'
      Origin = '"TARIF_MES"."PROCENT"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_MESCENA1: TIBBCDField
      FieldName = 'CENA1'
      Origin = '"TARIF_MES"."CENA1"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESCENA2: TIBBCDField
      FieldName = 'CENA2'
      Origin = '"TARIF_MES"."CENA2"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_MESFL_2CENA: TIntegerField
      FieldName = 'FL_2CENA'
      Origin = '"TARIF_MES"."FL_2CENA"'
    end
  end
  object DSTARIF_MES: TDataSource
    DataSet = IBTARIF_MES
    Left = 232
    Top = 568
  end
  object IBSERVICE: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SERVICE'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into SERVICE'
      '  (ID, ADMINPW, FL_RASH)'
      'values'
      '  (:ID, :ADMINPW, :FL_RASH)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ADMINPW,'
      '  FL_RASH'
      'from SERVICE '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *  from SERVICE')
    ModifySQL.Strings = (
      'update SERVICE'
      'set'
      '  ID = :ID,'
      '  ADMINPW = :ADMINPW,'
      '  FL_RASH = :FL_RASH'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_SERVICE_ID'
    Left = 96
    Top = 291
    object IBSERVICEID: TIntegerField
      FieldName = 'ID'
      Origin = '"SERVICE"."ID"'
      Required = True
    end
    object IBSERVICEADMINPW: TIBStringField
      FieldName = 'ADMINPW'
      Origin = '"SERVICE"."ADMINPW"'
      Size = 10
    end
    object IBSERVICEFL_RASH: TIntegerField
      FieldName = 'FL_RASH'
      Origin = '"SERVICE"."FL_RASH"'
    end
  end
  object DІSERVICE: TDataSource
    DataSet = IBSERVICE
    Left = 96
    Top = 339
  end
  object IBTARIF_VID: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_VID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_VID'
      '  (ID, ID_POSL, NAME, CODE_SERVI)'
      'values'
      '  (:ID, :ID_POSL, :NAME, :CODE_SERVI)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_POSL,'
      '  NAME,'
      '  CODE_SERVI'
      'from TARIF_VID '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from TARIF_VID')
    ModifySQL.Strings = (
      'update TARIF_VID'
      'set'
      '  ID = :ID,'
      '  ID_POSL = :ID_POSL,'
      '  NAME = :NAME,'
      '  CODE_SERVI = :CODE_SERVI'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_VID_ID'
    Left = 368
    Top = 520
    object IBTARIF_VIDID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_VID"."ID"'
      Required = True
    end
    object IBTARIF_VIDID_POSL: TIntegerField
      FieldName = 'ID_POSL'
      Origin = '"TARIF_VID"."ID_POSL"'
      Required = True
    end
    object IBTARIF_VIDNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TARIF_VID"."NAME"'
      Size = 301
    end
    object IBTARIF_VIDCODE_SERVI: TIntegerField
      FieldName = 'CODE_SERVI'
      Origin = '"TARIF_VID"."CODE_SERVI"'
    end
  end
  object DSTARIF_VID: TDataSource
    DataSet = IBTARIF_VID
    Left = 368
    Top = 568
  end
  object IBQSoftproect2: TIBQuery
    Database = DataM.IBDatabase2
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      '    B.id                    ID_HOUSE,'
      '    '#39'ub'#39' as WID,'
      '    "TaStreets"."Name"    STREET, '
      '    "TaStreets".id         id_street,  '
      '    B."Number"            N_BUD, '
      '    T."PolName",         '
      '    T."Code"                CODE_SERVI,'
      '    T."FactZatrat"          FACT,'
      '    T."NormatTarif"         NORM '
      'from'
      '    "TaBuilding" B'
      
        '        left join "PrRepSravnTarifDifuchetAnalit"(:BDate, :EDate' +
        ', B."Analitika") T on 0=0'
      '        left join "TaStreets" on "TaStreets".id = b."Street"'
      'where'
      '   T."InTarif" = 1'
      'order by "TaStreets"."Name", B."Number", T."Code"')
    Left = 384
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EDate'
        ParamType = ptUnknown
      end>
  end
  object IBQuery1: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 296
    Top = 176
  end
  object IBTARIF_INF: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
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
      'select TARIF_INF.* from TARIF_INF')
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
    Left = 304
    Top = 520
  end
  object DSTARIF_INF: TDataSource
    DataSet = IBTARIF_INF
    Left = 304
    Top = 568
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
      '  (ID, NAME, ID_POSL)'
      'values'
      '  (:ID, :NAME, :ID_POSL)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  ID_POSL'
      'from TARIF '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from TARIF')
    ModifySQL.Strings = (
      'update TARIF'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME,'
      '  ID_POSL = :ID_POSL'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_ID'
    Left = 160
    Top = 296
    object IBTARIFID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF"."ID"'
      Required = True
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
  end
  object DSTARIF: TDataSource
    DataSet = IBTARIF
    Left = 160
    Top = 344
  end
  object IBVIDAB: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBDOMBeforePost
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
      'select *  from VIDAB')
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
    GeneratorField.Generator = 'GEN_VIDAB_ID'
    Left = 560
    Top = 520
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
    Left = 560
    Top = 576
  end
  object IBOTHER: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBDOMBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OTHER'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into OTHER'
      '  (ID, NAME, EDRPOU, ID_VIDAB)'
      'values'
      '  (:ID, :NAME, :EDRPOU, :ID_VIDAB)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME,'
      '  EDRPOU,'
      '  ID_VIDAB'
      'from OTHER '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select *   from OTHER')
    ModifySQL.Strings = (
      'update OTHER'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME,'
      '  EDRPOU = :EDRPOU,'
      '  ID_VIDAB = :ID_VIDAB'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_OTHER_ID'
    Left = 616
    Top = 520
    object IBOTHERID: TIntegerField
      FieldName = 'ID'
      Origin = '"OTHER"."ID"'
      Required = True
    end
    object IBOTHERNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"OTHER"."NAME"'
      Size = 50
    end
    object IBOTHEREDRPOU: TIBStringField
      FieldName = 'EDRPOU'
      Origin = '"OTHER"."EDRPOU"'
    end
    object IBOTHERID_VIDAB: TIntegerField
      FieldName = 'ID_VIDAB'
      Origin = '"OTHER"."ID_VIDAB"'
    end
  end
  object DSOTHER: TDataSource
    DataSet = IBOTHER
    Left = 616
    Top = 576
  end
  object IBTARIF_OTHER: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TARIF_OTHER'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TARIF_OTHER'
      
        '  (ID, ID_TARIF, ID_TARIFMES, ID_DOMOTHER, SPLAN, SFACT, NORMA, ' +
        'SEND, MZK, '
      
        '   SUMOT, SUMOTPDV, SENDPDV, LICH_PN, LICH_PK, LICH_GK, LICH_PN2' +
        ', LICH_PK2, '
      '   LICH_GK2, CENA1, CENA2)'
      'values'
      
        '  (:ID, :ID_TARIF, :ID_TARIFMES, :ID_DOMOTHER, :SPLAN, :SFACT, :' +
        'NORMA, '
      
        '   :SEND, :MZK, :SUMOT, :SUMOTPDV, :SENDPDV, :LICH_PN, :LICH_PK,' +
        ' :LICH_GK, '
      '   :LICH_PN2, :LICH_PK2, :LICH_GK2, :CENA1, :CENA2)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ID_TARIF,'
      '  ID_TARIFMES,'
      '  ID_DOMOTHER,'
      '  SPLAN,'
      '  SFACT,'
      '  NORMA,'
      '  SEND,'
      '  MZK,'
      '  SUMOT,'
      '  SUMOTPDV,'
      '  SENDPDV,'
      '  LICH_PN,'
      '  LICH_PK,'
      '  LICH_GK,'
      '  LICH_PN2,'
      '  LICH_PK2,'
      '  LICH_GK2,'
      '  FL_LICH,'
      '  ID_VIDCENA,'
      '  CENA1,'
      '  CENA2'
      'from TARIF_OTHER '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select TARIF_OTHER.*, DOM_OTHER.id_other, DOM_OTHER.plos_bb, DOM' +
        '_OTHER.id_dom, OTHER.id_vidab from TARIF_OTHER, DOM_OTHER, OTHER' +
        ' where TARIF_OTHER.id_tarifmes=:idmes and TARIF_OTHER.id_domothe' +
        'r=DOM_OTHER.id and DOM_OTHER.id_other=OTHER.id')
    ModifySQL.Strings = (
      'update TARIF_OTHER'
      'set'
      '  ID = :ID,'
      '  ID_TARIF = :ID_TARIF,'
      '  ID_TARIFMES = :ID_TARIFMES,'
      '  ID_DOMOTHER = :ID_DOMOTHER,'
      '  SPLAN = :SPLAN,'
      '  SFACT = :SFACT,'
      '  NORMA = :NORMA,'
      '  SEND = :SEND,'
      '  MZK = :MZK,'
      '  SUMOT = :SUMOT,'
      '  SUMOTPDV = :SUMOTPDV,'
      '  SENDPDV = :SENDPDV,'
      '  LICH_PN = :LICH_PN,'
      '  LICH_PK = :LICH_PK,'
      '  LICH_GK = :LICH_GK,'
      '  LICH_PN2 = :LICH_PN2,'
      '  LICH_PK2 = :LICH_PK2,'
      '  LICH_GK2 = :LICH_GK2,'
      '  CENA1 = :CENA1,'
      '  CENA2 = :CENA2'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TARIF_OTHER_ID'
    Left = 680
    Top = 518
    object IBTARIF_OTHERID: TIntegerField
      FieldName = 'ID'
      Origin = '"TARIF_OTHER"."ID"'
      Required = True
    end
    object IBTARIF_OTHERID_TARIF: TIntegerField
      FieldName = 'ID_TARIF'
      Origin = '"TARIF_OTHER"."ID_TARIF"'
    end
    object IBTARIF_OTHERID_TARIFMES: TIntegerField
      FieldName = 'ID_TARIFMES'
      Origin = '"TARIF_OTHER"."ID_TARIFMES"'
    end
    object IBTARIF_OTHERID_DOMOTHER: TIntegerField
      FieldName = 'ID_DOMOTHER'
      Origin = '"TARIF_OTHER"."ID_DOMOTHER"'
    end
    object IBTARIF_OTHERSPLAN: TIBBCDField
      FieldName = 'SPLAN'
      Origin = '"TARIF_OTHER"."SPLAN"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_OTHERSFACT: TIBBCDField
      FieldName = 'SFACT'
      Origin = '"TARIF_OTHER"."SFACT"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_OTHERNORMA: TIBBCDField
      FieldName = 'NORMA'
      Origin = '"TARIF_OTHER"."NORMA"'
      Precision = 18
      Size = 3
    end
    object IBTARIF_OTHERSEND: TIBBCDField
      FieldName = 'SEND'
      Origin = '"TARIF_OTHER"."SEND"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_OTHERMZK: TIBBCDField
      FieldName = 'MZK'
      Origin = '"TARIF_OTHER"."MZK"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_OTHERID_OTHER: TIntegerField
      FieldName = 'ID_OTHER'
      Origin = '"DOM_OTHER"."ID_OTHER"'
    end
    object IBTARIF_OTHERPLOS_BB: TIBBCDField
      FieldName = 'PLOS_BB'
      Origin = '"DOM_OTHER"."PLOS_BB"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_OTHERID_DOM: TIntegerField
      FieldName = 'ID_DOM'
      Origin = '"DOM_OTHER"."ID_DOM"'
    end
    object IBTARIF_OTHERID_VIDAB: TIntegerField
      FieldName = 'ID_VIDAB'
      Origin = '"OTHER"."ID_VIDAB"'
    end
    object IBTARIF_OTHERSUMOT: TIBBCDField
      FieldName = 'SUMOT'
      Origin = '"TARIF_OTHER"."SUMOT"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_OTHERSUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      Origin = '"TARIF_OTHER"."SUMOTPDV"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_OTHERSENDPDV: TIBBCDField
      FieldName = 'SENDPDV'
      Origin = '"TARIF_OTHER"."SENDPDV"'
      Precision = 18
      Size = 2
    end
    object IBTARIF_OTHERLICH_PN: TIBBCDField
      FieldName = 'LICH_PN'
      Origin = '"TARIF_OTHER"."LICH_PN"'
      OnChange = IBTARIF_OTHERLICH_PNChange
      Precision = 18
      Size = 3
    end
    object IBTARIF_OTHERLICH_PK: TIBBCDField
      FieldName = 'LICH_PK'
      Origin = '"TARIF_OTHER"."LICH_PK"'
      OnChange = IBTARIF_OTHERLICH_PKChange
      Precision = 18
      Size = 3
    end
    object IBTARIF_OTHERLICH_GK: TIBBCDField
      FieldName = 'LICH_GK'
      Origin = '"TARIF_OTHER"."LICH_GK"'
      Precision = 18
      Size = 3
    end
    object IBTARIF_OTHERLICH_PN2: TIBBCDField
      FieldName = 'LICH_PN2'
      Origin = '"TARIF_OTHER"."LICH_PN2"'
      OnChange = IBTARIF_OTHERLICH_PN2Change
      Precision = 18
      Size = 3
    end
    object IBTARIF_OTHERLICH_PK2: TIBBCDField
      FieldName = 'LICH_PK2'
      Origin = '"TARIF_OTHER"."LICH_PK2"'
      OnChange = IBTARIF_OTHERLICH_PK2Change
      Precision = 18
      Size = 3
    end
    object IBTARIF_OTHERLICH_GK2: TIBBCDField
      FieldName = 'LICH_GK2'
      Origin = '"TARIF_OTHER"."LICH_GK2"'
      Precision = 18
      Size = 3
    end
    object IBTARIF_OTHERFL_LICH: TIntegerField
      FieldName = 'FL_LICH'
      Origin = '"TARIF_OTHER"."FL_LICH"'
    end
    object IBTARIF_OTHERID_VIDCENA: TIntegerField
      FieldName = 'ID_VIDCENA'
      Origin = '"TARIF_OTHER"."ID_VIDCENA"'
    end
    object IBTARIF_OTHERCENA1: TIBBCDField
      FieldName = 'CENA1'
      Origin = '"TARIF_OTHER"."CENA1"'
      Precision = 18
      Size = 4
    end
    object IBTARIF_OTHERCENA2: TIBBCDField
      FieldName = 'CENA2'
      Origin = '"TARIF_OTHER"."CENA2"'
      Precision = 18
      Size = 4
    end
  end
  object DSTARIF_OTHER: TDataSource
    DataSet = IBTARIF_OTHER
    Left = 680
    Top = 566
  end
  object IBKOTEL: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBTARIFBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from KOTEL'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into KOTEL'
      '  (ID, NAME)'
      'values'
      '  (:ID, :NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  NAME'
      'from KOTEL '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from KOTEL')
    ModifySQL.Strings = (
      'update KOTEL'
      'set'
      '  ID = :ID,'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_KOTEL_ID'
    Left = 640
    Top = 424
    object IBKOTELID: TIntegerField
      FieldName = 'ID'
      Origin = '"KOTEL"."ID"'
      Required = True
    end
    object IBKOTELNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"KOTEL"."NAME"'
    end
  end
  object DSKOTEL: TDataSource
    DataSet = IBKOTEL
    Left = 640
    Top = 472
  end
end
