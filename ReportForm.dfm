inherited Report: TReport
  Caption = #1058#1072#1088#1080#1092#1080
  ClientHeight = 583
  Position = poMainFormCenter
  OnCreate = FormCreate
  ExplicitHeight = 621
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
    Top = 514
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
    object cxButton1: TcxButton
      Left = 311
      Top = 6
      Width = 98
      Height = 33
      Caption = #1047#1074#1110#1090' '#1076#1083#1103' '#1073#1091#1093'.'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 157
      Top = 23
      Properties.KeyFieldNames = 'DATA'
      Properties.ListColumns = <
        item
          FieldName = 'DATA'
        end>
      Properties.ListSource = DІPERIOD
      Properties.OnChange = cxLookupComboBox2PropertiesChange
      TabOrder = 3
      Visible = False
      Width = 132
    end
    object cxLabel1: TcxLabel
      Left = 197
      Top = 6
      Caption = #1055#1077#1088#1110#1086#1076
      Visible = False
    end
  end
  object cxGrid1: TcxGrid [3]
    Left = 143
    Top = 91
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
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1GKAL1
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1TARIF_RK
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1BORG_VIDH
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1MZK_GK1
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1MZK_GK2
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PLOSALL
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS_IN
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1PLOS_MZK
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1GKAL2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.Footer = True
      object cxGrid1DBTableView1VID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1072#1073#1086#1085'.'
        DataBinding.FieldName = 'VID'
        Width = 81
      end
      object cxGrid1DBTableView1NOTHERS: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1087#1088#1080#1084#1110#1097#1077#1085#1085#1103
        DataBinding.FieldName = 'NOTHERS'
        Width = 86
      end
      object cxGrid1DBTableView1UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
        Width = 188
      end
      object cxGrid1DBTableView1DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'DOM'
      end
      object cxGrid1DBTableView1TARIF: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIFNAM'
      end
      object cxGrid1DBTableView1PLOSALL: TcxGridDBColumn
        Caption = #1047#1072#1075'.'#1086#1087#1072#1083'.'#1087#1083#1086#1097#1072
        DataBinding.FieldName = 'PLOSALL'
        Visible = False
      end
      object cxGrid1DBTableView1PLOS: TcxGridDBColumn
        Caption = #1054#1087#1072#1083'.'#1087#1083#1086#1097#1072
        DataBinding.FieldName = 'PLOS'
      end
      object cxGrid1DBTableView1PLOS_IN: TcxGridDBColumn
        Caption = #1055#1083#1086#1097#1072' '#1110#1085#1076#1080#1074#1110#1076'.'#1086#1087#1072#1083
        DataBinding.FieldName = 'PLOS_IN'
        Visible = False
      end
      object cxGrid1DBTableView1PLOS_MZK: TcxGridDBColumn
        Caption = #1055#1083#1086#1097#1072' '#1052#1047#1050
        DataBinding.FieldName = 'PLOS_MZK'
        Visible = False
      end
      object cxGrid1DBTableView1PN: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082
        DataBinding.FieldName = 'PN'
      end
      object cxGrid1DBTableView1PK: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1082#1110#1085#1077#1094#1100
        DataBinding.FieldName = 'PK'
      end
      object cxGrid1DBTableView1GKAL1: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1043#1082#1072#1083'.'
        DataBinding.FieldName = 'GKAL1'
      end
      object cxGrid1DBTableView1CENA1: TcxGridDBColumn
        Caption = #1062#1110#1085#1072' 1'
        DataBinding.FieldName = 'CENA1'
      end
      object cxGrid1DBTableView1PN2: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082' 2'
        DataBinding.FieldName = 'PN2'
      end
      object cxGrid1DBTableView1PK2: TcxGridDBColumn
        Caption = #1055#1086#1082#1072#1079'. '#1085#1072' '#1082#1110#1085#1077#1094#1100' 2'
        DataBinding.FieldName = 'PK2'
      end
      object cxGrid1DBTableView1GKAL2: TcxGridDBColumn
        Caption = #1050'-'#1089#1090#1100' '#1043#1082#1072#1083'. 2'
        DataBinding.FieldName = 'GKAL2'
      end
      object cxGrid1DBTableView1CENA2: TcxGridDBColumn
        Caption = #1062#1110#1085#1072' 2'
        DataBinding.FieldName = 'CENA2'
      end
      object cxGrid1DBTableView1TARIF_END: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_END'
      end
      object cxGrid1DBTableView1TARIF_ENDPDV: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'TARIF_ENDPDV'
      end
      object cxGrid1DBTableView1MZK_GK1: TcxGridDBColumn
        Caption = #1052#1047#1050' '#1043#1082#1072#1083'. 1'
        DataBinding.FieldName = 'MZK_GK1'
      end
      object cxGrid1DBTableView1MZK_GK2: TcxGridDBColumn
        Caption = #1052#1047#1050' '#1043#1082#1072#1083'. 2'
        DataBinding.FieldName = 'MZK_GK2'
      end
      object cxGrid1DBTableView1MZK: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092' '#1052#1047#1050
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
      object cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn
        Caption = #1042#1110#1076#1093#1080#1083#1077#1085#1085#1103' '#1090#1072#1088#1080#1092#1091' '
        DataBinding.FieldName = 'TARIF_RK'
      end
      object cxGrid1DBTableView1BORG_VIDH: TcxGridDBColumn
        Caption = #1041#1086#1088#1075' '#1085#1072' '#1074#1110#1076#1093#1080#1083#1077#1085#1085#1103
        DataBinding.FieldName = 'BORG_VIDH'
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
    Height = 420
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
    TabOrder = 5
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = []
    ExplicitHeight = 356
  end
  object cxGrid3: TcxGrid [5]
    Left = 186
    Top = 354
    Width = 523
    Height = 145
    TabOrder = 6
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSQuery2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGridDBTableView2TARIF_END
        end
        item
          Kind = skSum
          Column = cxGridDBTableView2TARIF_ENDPDV
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.Footer = True
      object cxGridDBTableView2POSL: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'POSL'
      end
      object cxGridDBTableView2VID: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1072#1073#1086#1085'.'
        DataBinding.FieldName = 'VID'
      end
      object cxGridDBTableView2NOTHERS: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1087#1088#1080#1084#1110#1097#1077#1085#1085#1103
        DataBinding.FieldName = 'NOTHERS'
      end
      object cxGridDBTableView2UL: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
      end
      object cxGridDBTableView2DOM: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'DOM'
      end
      object cxGridDBTableView2TARIFNAM: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIFNAM'
      end
      object cxGridDBTableView2TARIF_END: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_END'
      end
      object cxGridDBTableView2TARIF_ENDPDV: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'TARIF_ENDPDV'
      end
      object cxGridDBTableView2NORMA: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object cxGrid2: TcxGrid [6]
    Left = 186
    Top = 203
    Width = 523
    Height = 145
    TabOrder = 4
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSQuery2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxGridDBColumn7
        end
        item
          Kind = skSum
          Column = cxGridDBColumn8
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.Footer = True
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = #1055#1086#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'POSL'
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1072#1073#1086#1085'.'
        DataBinding.FieldName = 'VID'
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1087#1088#1080#1084#1110#1097#1077#1085#1085#1103
        DataBinding.FieldName = 'NOTHERS'
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = #1042#1091#1083#1080#1094#1103
        DataBinding.FieldName = 'UL'
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = #1041#1091#1076#1080#1085#1086#1082
        DataBinding.FieldName = 'DOM'
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIFNAM'
      end
      object cxGridDBColumn7: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092
        DataBinding.FieldName = 'TARIF_END'
      end
      object cxGridDBColumn8: TcxGridDBColumn
        Caption = #1053#1072#1088#1072#1093'. '#1090#1072#1088#1080#1092' '#1079' '#1055#1044#1042
        DataBinding.FieldName = 'TARIF_ENDPDV'
      end
      object cxGridDBColumn9: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072
        DataBinding.FieldName = 'NORMA'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object IBQuery1: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select tarifnam,adres,ul,dom,plosall,plos,PLOS_IN,PLOS_MZK,gkal1' +
        ',gkal2,pn,pk,pn2,pk2,cena1,cena2,FL_2CENA,sumot,sumotpdv,tarif_e' +
        'nd,tarif_endpdv,mzk,mzk_gk1,mzk_gk2,norma,tarif_rk,borg_vidh,kot' +
        'el,vid,widab,data,wid,posl,id_posl,tarif_plan,tarif_fact,end_bl,' +
        'end_l,others,nothers,no_lich'
      'from'
      '(select tarif.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        tarif_mes.plos_bb plosall,'
      '        tarif_mes.plos_bbi plos,'
      '        tarif_mes.PLOS_IN,'
      '        tarif_mes.PLOS_MZK,'
      '        COALESCE(tarif_mes.lich_gk,0) gkal1,'
      '        COALESCE(tarif_mes.lich_gk2,0) as gkal2,'
      '        COALESCE(tarif_mes.lich_pn,0) pn,'
      '        COALESCE(tarif_mes.lich_pk,0) pk,'
      '        COALESCE(tarif_mes.lich_pn2,0) pn2,'
      '        COALESCE(tarif_mes.lich_pk2,0) pk2,'
      '        tarif_mes.cena1,'
      '        tarif_mes.cena2,'
      '        tarif_mes.FL_2CENA,'
      '        tarif_mes.sumot,'
      '        tarif_mes.sumotpdv,'
      '        tarif_mes.tarif_end,'
      '        tarif_mes.tarif_endpdv,'
      '        tarif_mes.mzk,'
      '        tarif_mes.mzk_gk1,'
      '        tarif_mes.mzk_gk2,'
      '        tarif_mes.norma,'
      '        tarif_mes.tarif_rk,'
      '        tarif_mes.borg_vidh,'
      '        kotel.name kotel,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_mes.tarif_plan,'
      '        tarif_mes.tarif_fact,'
      '        tarif_mes.end_bl,'
      '        tarif_mes.end_l,'
      '        0 as others,'
      '        '#39#1086#1082#1088#1077#1084#1086' '#1089#1090#1086#1103#1095#1110#39' as nothers,'
      '        tarif_mes.no_lich'
      '    from tarif_mes'
      
        '       inner join tarif_dom on (tarif_mes.id = tarif_dom.id_tari' +
        'fmes)'
      '       inner join dom on (tarif_dom.id_dom = dom.id)'
      '       inner join ul on (dom.id_ul = ul.id)'
      '       left join vidab on (tarif_mes.id_vidab = vidab.id)'
      '       inner join tarif on (tarif_mes.id_tarif = tarif.id)'
      '       inner join posl on (tarif.id_posl = posl.id)'
      '       left join kotel on (tarif_mes.id_kotel = kotel.id)'
      '   union'
      '    select other.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        0 plosall,'
      '        dom_other.plos_bb plos,'
      '        0 PLOS_IN,'
      '        0 PLOS_MZK,'
      '        COALESCE(tarif_other.lich_gk,0) gkal1,'
      '        COALESCE(tarif_other.lich_gk2,0) as gkal2,'
      '        COALESCE(tarif_other.lich_pn,0) pn,'
      '        COALESCE(tarif_other.lich_pk,0) pk,'
      '        COALESCE(tarif_other.lich_pn2,0) pn2,'
      '        COALESCE(tarif_other.lich_pk2,0) pk2,'
      '        tarif_other.cena1,'
      '        tarif_other.cena2,'
      '        tarif_mes.FL_2CENA,'
      '        tarif_other.sumot,'
      '        tarif_other.sumotpdv,'
      '        tarif_other.send tarif_end,'
      '        tarif_other.sendpdv tarif_endpdv,'
      '        tarif_other.mzk,'
      '        tarif_other.mzk_gk1,'
      '        tarif_other.mzk_gk2,'
      '        tarif_other.norma,'
      '        00.0 as tarif_rk,'
      '        00.0 as borg_vidh,'
      '        kotel.name kotel,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_other.splan tarif_plan,'
      '        tarif_other.sfact tarif_fact,'
      '        00.0 as end_bl,'
      '        00.0 as end_l,'
      '        1 as others,'
      '        '#39#1110#1085#1096#1110'('#1086#1088#1077#1085#1076#1072#1088#1110')'#39' as nothers,'
      '        tarif_mes.no_lich'
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
      '       left join kotel on (tarif_mes.id_kotel = kotel.id)'
      ')'
      'where data = :dt and id_posl=:pos and tarifnam is not null'
      'order by wid,vid,no_lich,ul,dom')
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
    object IBQuery1MZK: TIBBCDField
      FieldName = 'MZK'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1KOTEL: TIBStringField
      FieldName = 'KOTEL'
      ProviderFlags = []
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
    object IBQuery1ID_POSL: TIntegerField
      FieldName = 'ID_POSL'
      ProviderFlags = []
    end
    object IBQuery1TARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1TARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery1END_BL: TIBBCDField
      FieldName = 'END_BL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1END_L: TIBBCDField
      FieldName = 'END_L'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1OTHERS: TIntegerField
      FieldName = 'OTHERS'
      ProviderFlags = []
    end
    object IBQuery1NOTHERS: TIBStringField
      FieldName = 'NOTHERS'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object IBQuery1NO_LICH: TIntegerField
      FieldName = 'NO_LICH'
      ProviderFlags = []
    end
    object IBQuery1NORMA: TIBBCDField
      FieldName = 'NORMA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1TARIF_RK: TIBBCDField
      FieldName = 'TARIF_RK'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery1BORG_VIDH: TIBBCDField
      FieldName = 'BORG_VIDH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1UL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 40
    end
    object IBQuery1DOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery1POSL: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
    end
    object IBQuery1GKAL1: TIBBCDField
      FieldName = 'GKAL1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1GKAL2: TIBBCDField
      FieldName = 'GKAL2'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1CENA1: TIBBCDField
      FieldName = 'CENA1'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery1CENA2: TIBBCDField
      FieldName = 'CENA2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery1FL_2CENA: TIntegerField
      FieldName = 'FL_2CENA'
      ProviderFlags = []
    end
    object IBQuery1WIDAB: TIBStringField
      FieldName = 'WIDAB'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery1MZK_GK1: TIBBCDField
      FieldName = 'MZK_GK1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1MZK_GK2: TIBBCDField
      FieldName = 'MZK_GK2'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1PLOSALL: TIBBCDField
      FieldName = 'PLOSALL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1PLOS_IN: TIBBCDField
      FieldName = 'PLOS_IN'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1PLOS_MZK: TIBBCDField
      FieldName = 'PLOS_MZK'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery1PN: TIBBCDField
      FieldName = 'PN'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1PK: TIBBCDField
      FieldName = 'PK'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1PN2: TIBBCDField
      FieldName = 'PN2'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery1PK2: TIBBCDField
      FieldName = 'PK2'
      ProviderFlags = []
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
      
        'select tarifnam,adres,ul,dom,plos,gkal1,gkal2,cena1,cena2,FL_2CE' +
        'NA,sumot,sumotpdv,tarif_end,tarif_endpdv,mzk,norma,tarif_rk,borg' +
        '_vidh,kotel,vid,widab,data,wid,posl,id_posl,tarif_plan,tarif_fac' +
        't,end_bl,end_l,others,nothers,no_lich'
      'from'
      '(select tarif.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        tarif_mes.plos_bbi plos,'
      '        COALESCE(tarif_mes.lich_gk,0) gkal1,'
      '        COALESCE(tarif_mes.lich_gk2,0) as gkal2,'
      '        tarif_mes.cena1,'
      '        tarif_mes.cena2,'
      '        tarif_mes.FL_2CENA,'
      '        tarif_mes.sumot,'
      '        tarif_mes.sumotpdv,'
      '        tarif_mes.tarif_end,'
      '        tarif_mes.tarif_endpdv,'
      '        tarif_mes.mzk,'
      '        tarif_mes.norma,'
      '        tarif_mes.tarif_rk,'
      '        tarif_mes.borg_vidh,'
      '        kotel.name kotel,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_mes.tarif_plan,'
      '        tarif_mes.tarif_fact,'
      '        tarif_mes.end_bl,'
      '        tarif_mes.end_l,'
      '        0 as others,'
      '        '#39#1086#1082#1088#1077#1084#1086' '#1089#1090#1086#1103#1095#1110#39' as nothers,'
      '        tarif_mes.no_lich'
      '    from tarif_mes'
      
        '       inner join tarif_dom on (tarif_mes.id = tarif_dom.id_tari' +
        'fmes)'
      '       inner join dom on (tarif_dom.id_dom = dom.id)'
      '       inner join ul on (dom.id_ul = ul.id)'
      '       left join vidab on (tarif_mes.id_vidab = vidab.id)'
      '       inner join tarif on (tarif_mes.id_tarif = tarif.id)'
      '       inner join posl on (tarif.id_posl = posl.id)'
      '       left join kotel on (tarif_mes.id_kotel = kotel.id)'
      '   union'
      '    select other.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        dom_other.plos_bb plos,'
      '        COALESCE(tarif_other.lich_gk,0) gkal1,'
      '        COALESCE(tarif_other.lich_gk2,0) as gkal2,'
      '        tarif_other.cena1,'
      '        tarif_other.cena2,'
      '        tarif_mes.FL_2CENA,'
      '        tarif_other.sumot,'
      '        tarif_other.sumotpdv,'
      '        tarif_other.send tarif_end,'
      '        tarif_other.sendpdv tarif_endpdv,'
      '        tarif_other.mzk,'
      '        tarif_other.norma,'
      '        00.0 as tarif_rk,'
      '        00.0 as borg_vidh,'
      '        kotel.name kotel,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_other.splan tarif_plan,'
      '        tarif_other.sfact tarif_fact,'
      '        00.0 as end_bl,'
      '        00.0 as end_l,'
      '        1 as others,'
      '        '#39#1110#1085#1096#1110'('#1086#1088#1077#1085#1076#1072#1088#1110')'#39' as nothers,'
      '        tarif_mes.no_lich'
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
      '       left join kotel on (tarif_mes.id_kotel = kotel.id)'
      ')'
      'where data = :dt and tarifnam is not null'
      'order by ul,dom,wid')
    Left = 240
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt'
        ParamType = ptUnknown
      end>
    object IBQuery2TARIFNAM: TIBStringField
      FieldName = 'TARIFNAM'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery2ADRES: TIBStringField
      FieldName = 'ADRES'
      ProviderFlags = []
      Size = 51
    end
    object IBQuery2UL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 40
    end
    object IBQuery2DOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery2PLOS: TIBBCDField
      FieldName = 'PLOS'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2SUMOT: TIBBCDField
      FieldName = 'SUMOT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2SUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2TARIF_END: TIBBCDField
      FieldName = 'TARIF_END'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2TARIF_ENDPDV: TIBBCDField
      FieldName = 'TARIF_ENDPDV'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2MZK: TIBBCDField
      FieldName = 'MZK'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2NORMA: TIBBCDField
      FieldName = 'NORMA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery2TARIF_RK: TIBBCDField
      FieldName = 'TARIF_RK'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery2BORG_VIDH: TIBBCDField
      FieldName = 'BORG_VIDH'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2KOTEL: TIBStringField
      FieldName = 'KOTEL'
      ProviderFlags = []
    end
    object IBQuery2VID: TIBStringField
      FieldName = 'VID'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery2DATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = []
    end
    object IBQuery2WID: TIBStringField
      FieldName = 'WID'
      ProviderFlags = []
      Size = 2
    end
    object IBQuery2POSL: TIBStringField
      FieldName = 'POSL'
      ProviderFlags = []
    end
    object IBQuery2ID_POSL: TIntegerField
      FieldName = 'ID_POSL'
      ProviderFlags = []
    end
    object IBQuery2TARIF_PLAN: TIBBCDField
      FieldName = 'TARIF_PLAN'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2TARIF_FACT: TIBBCDField
      FieldName = 'TARIF_FACT'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery2END_BL: TIBBCDField
      FieldName = 'END_BL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2END_L: TIBBCDField
      FieldName = 'END_L'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery2OTHERS: TIntegerField
      FieldName = 'OTHERS'
      ProviderFlags = []
    end
    object IBQuery2NOTHERS: TIBStringField
      FieldName = 'NOTHERS'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object IBQuery2NO_LICH: TIntegerField
      FieldName = 'NO_LICH'
      ProviderFlags = []
    end
    object IBQuery2GKAL1: TIBBCDField
      FieldName = 'GKAL1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery2GKAL2: TIBBCDField
      FieldName = 'GKAL2'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery2CENA1: TIBBCDField
      FieldName = 'CENA1'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery2CENA2: TIBBCDField
      FieldName = 'CENA2'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object IBQuery2FL_2CENA: TIntegerField
      FieldName = 'FL_2CENA'
      ProviderFlags = []
    end
    object IBQuery2WIDAB: TIBStringField
      FieldName = 'WIDAB'
      ProviderFlags = []
      Size = 10
    end
  end
  object DSQuery2: TDataSource
    DataSet = IBQuery2
    Left = 240
    Top = 344
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
    ReportOptions.LastChange = 43439.396337673610000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 144
    Top = 408
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = IBQuery1
    BCDToCurrency = False
    Left = 192
    Top = 408
  end
  object IBQuery3: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select id,tarifnam,adres,ul,dom,sum(gkal1)+sum(gkal2) as gkal1,s' +
        'um(sumot) sumot,sum(sumotpdv) sumotpdv,sum(mzk_gk1)+sum(mzk_gk1)' +
        ' mzk_gk1,'
      
        '(select kotel.name from kotel,tarif_mes where tarif_mes.id_tarif' +
        '=aa.id and tarif_mes.id_kotel=kotel.id and tarif_mes.data=:dt2) ' +
        'kotel,'
      'vid,widab,wid,others,nothers,no_lich'
      'from'
      '(select tarif.id,'
      '        tarif.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        tarif_mes.plos_bbi plos,'
      '        COALESCE(tarif_mes.lich_gk,0) gkal1,'
      '        COALESCE(tarif_mes.lich_gk2,0) as gkal2,'
      '        COALESCE(tarif_mes.sumot,0) sumot,'
      '        COALESCE(tarif_mes.sumotpdv,0) sumotpdv,'
      '        tarif_mes.mzk_gk1,'
      '        tarif_mes.mzk_gk2,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_mes.tarif_plan,'
      '        tarif_mes.tarif_fact,'
      '        tarif_mes.end_bl,'
      '        tarif_mes.end_l,'
      '        0 as others,'
      '        '#39#1086#1082#1088#1077#1084#1086' '#1089#1090#1086#1103#1095#1110#39' as nothers,'
      '        COALESCE(tarif_mes.no_lich,0) no_lich'
      '    from tarif_mes'
      
        '       inner join tarif_dom on (tarif_mes.id = tarif_dom.id_tari' +
        'fmes)'
      '       inner join dom on (tarif_dom.id_dom = dom.id)'
      '       inner join ul on (dom.id_ul = ul.id)'
      '       left join vidab on (tarif_mes.id_vidab = vidab.id)'
      '       inner join tarif on (tarif_mes.id_tarif = tarif.id)'
      '       inner join posl on (tarif.id_posl = posl.id)'
      '   union'
      '    select tarif.id, '
      '        other.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        dom_other.plos_bb plos,'
      '        COALESCE(tarif_other.lich_gk,0) gkal1,'
      '        COALESCE(tarif_other.lich_gk2,0) as gkal2,'
      '        COALESCE(tarif_other.sumot,0) as sumot,'
      '        COALESCE(tarif_other.sumotpdv,0) sumotpdv,'
      '        tarif_other.mzk_gk1,'
      '        tarif_other.mzk_gk2,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_other.splan tarif_plan,'
      '        tarif_other.sfact tarif_fact,'
      '        00.0 as end_bl,'
      '        00.0 as end_l,'
      '        1 as others,'
      '        '#39#1110#1085#1096#1110'('#1086#1088#1077#1085#1076#1072#1088#1110')'#39' as nothers,'
      '        COALESCE(tarif_mes.no_lich,0) no_lich'
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
      ') aa'
      
        'where data >= :dt1 and data <= :dt2 and wid='#39'ot'#39' and tarifnam is' +
        ' not null'
      
        'group by id,tarifnam,adres,ul,dom,vid,widab,wid,others,nothers,n' +
        'o_lich'
      'order by wid,vid,no_lich,ul,dom')
    Left = 304
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt2'
        ParamType = ptUnknown
      end>
    object IBQuery3ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object IBQuery3TARIFNAM: TIBStringField
      FieldName = 'TARIFNAM'
      ProviderFlags = []
      Size = 50
    end
    object IBQuery3ADRES: TIBStringField
      FieldName = 'ADRES'
      ProviderFlags = []
      Size = 51
    end
    object IBQuery3UL: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 40
    end
    object IBQuery3DOM: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery3SUMOT: TIBBCDField
      FieldName = 'SUMOT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery3SUMOTPDV: TIBBCDField
      FieldName = 'SUMOTPDV'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBQuery3KOTEL: TIBStringField
      FieldName = 'KOTEL'
      ProviderFlags = []
    end
    object IBQuery3VID: TIBStringField
      FieldName = 'VID'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery3WIDAB: TIBStringField
      FieldName = 'WIDAB'
      ProviderFlags = []
      Size = 10
    end
    object IBQuery3WID: TIBStringField
      FieldName = 'WID'
      ProviderFlags = []
      Size = 2
    end
    object IBQuery3OTHERS: TIntegerField
      FieldName = 'OTHERS'
      ProviderFlags = []
    end
    object IBQuery3NOTHERS: TIBStringField
      FieldName = 'NOTHERS'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object IBQuery3NO_LICH: TIntegerField
      FieldName = 'NO_LICH'
      ProviderFlags = []
    end
    object IBQuery3GKAL1: TIBBCDField
      FieldName = 'GKAL1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBQuery3MZK_GK1: TIBBCDField
      FieldName = 'MZK_GK1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object DSQuery3: TDataSource
    DataSet = IBQuery3
    Left = 304
    Top = 344
  end
  object IBQuery4: TIBQuery
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select id,tarifnam,adres,ul,dom,sum(gkal1)+sum(gkal2) as gkal1,s' +
        'um(sumot) sumot,sum(sumotpdv) sumotpdv,sum(mzk_gk1)+sum(mzk_gk1)' +
        ' mzk_gk1,'
      
        '(select kotel.name from kotel,tarif_mes where tarif_mes.id_tarif' +
        '=aa.id and tarif_mes.id_kotel=kotel.id and tarif_mes.data=:dt2) ' +
        'kotel,'
      'vid,widab,wid,others,nothers,no_lich'
      'from'
      '(select tarif.id,'
      '        tarif.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        tarif_mes.plos_bbi plos,'
      '        COALESCE(tarif_mes.lich_gk,0) gkal1,'
      '        COALESCE(tarif_mes.lich_gk2,0) as gkal2,'
      '        COALESCE(tarif_mes.sumot,0) sumot,'
      '        COALESCE(tarif_mes.sumotpdv,0) sumotpdv,'
      '        tarif_mes.mzk_gk1,'
      '        tarif_mes.mzk_gk2,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_mes.tarif_plan,'
      '        tarif_mes.tarif_fact,'
      '        tarif_mes.end_bl,'
      '        tarif_mes.end_l,'
      '        0 as others,'
      '        '#39#1086#1082#1088#1077#1084#1086' '#1089#1090#1086#1103#1095#1110#39' as nothers,'
      '        COALESCE(tarif_mes.no_lich,0) no_lich'
      '    from tarif_mes'
      
        '       inner join tarif_dom on (tarif_mes.id = tarif_dom.id_tari' +
        'fmes)'
      '       inner join dom on (tarif_dom.id_dom = dom.id)'
      '       inner join ul on (dom.id_ul = ul.id)'
      '       left join vidab on (tarif_mes.id_vidab = vidab.id)'
      '       inner join tarif on (tarif_mes.id_tarif = tarif.id)'
      '       inner join posl on (tarif.id_posl = posl.id)'
      '   union'
      '    select tarif.id, '
      '        other.name tarifnam,'
      '        (ul.name || '#39' '#39' || dom.dom) AS adres,'
      '        ul.name ul,'
      '        dom.dom,'
      '        dom_other.plos_bb plos,'
      '        COALESCE(tarif_other.lich_gk,0) gkal1,'
      '        COALESCE(tarif_other.lich_gk2,0) as gkal2,'
      '        COALESCE(tarif_other.sumot,0) as sumot,'
      '        COALESCE(tarif_other.sumotpdv,0) sumotpdv,'
      '        tarif_other.mzk_gk1,'
      '        tarif_other.mzk_gk2,'
      '        vidab.name vid,'
      '        vidab.wid widab,'
      '        tarif_mes.data,'
      '        posl.wid,'
      '        posl.name posl,'
      '        tarif.id_posl,'
      '        tarif_other.splan tarif_plan,'
      '        tarif_other.sfact tarif_fact,'
      '        00.0 as end_bl,'
      '        00.0 as end_l,'
      '        1 as others,'
      '        '#39#1110#1085#1096#1110'('#1086#1088#1077#1085#1076#1072#1088#1110')'#39' as nothers,'
      '        COALESCE(tarif_mes.no_lich,0) no_lich'
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
      ') aa'
      
        'where data >= :dt1 and data <= :dt2 and wid='#39'ot'#39' and tarifnam is' +
        ' not null'
      
        'group by id,tarifnam,adres,ul,dom,vid,widab,wid,others,nothers,n' +
        'o_lich'
      'order by wid,vid,no_lich,ul,dom')
    Left = 360
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt2'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object IBStringField1: TIBStringField
      FieldName = 'TARIFNAM'
      ProviderFlags = []
      Size = 50
    end
    object IBStringField2: TIBStringField
      FieldName = 'ADRES'
      ProviderFlags = []
      Size = 51
    end
    object IBStringField3: TIBStringField
      FieldName = 'UL'
      ProviderFlags = []
      Size = 40
    end
    object IBStringField4: TIBStringField
      FieldName = 'DOM'
      ProviderFlags = []
      Size = 10
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'SUMOT'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'SUMOTPDV'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object IBStringField5: TIBStringField
      FieldName = 'KOTEL'
      ProviderFlags = []
    end
    object IBStringField6: TIBStringField
      FieldName = 'VID'
      ProviderFlags = []
      Size = 10
    end
    object IBStringField7: TIBStringField
      FieldName = 'WIDAB'
      ProviderFlags = []
      Size = 10
    end
    object IBStringField8: TIBStringField
      FieldName = 'WID'
      ProviderFlags = []
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'OTHERS'
      ProviderFlags = []
    end
    object IBStringField9: TIBStringField
      FieldName = 'NOTHERS'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object IntegerField3: TIntegerField
      FieldName = 'NO_LICH'
      ProviderFlags = []
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'GKAL1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'MZK_GK1'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object DSQuery4: TDataSource
    DataSet = IBQuery4
    Left = 360
    Top = 344
  end
end
