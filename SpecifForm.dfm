inherited Specif: TSpecif
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102
  ClientHeight = 283
  ClientWidth = 466
  OnCreate = FormCreate
  ExplicitWidth = 482
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 466
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
    Left = 17
    Top = 64
    DataBinding.DataField = 'KL_NAIM'
    DataBinding.DataSource = DSADDIT
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'KL'
    Properties.ListColumns = <
      item
        FieldName = 'NAIM'
      end
      item
        FieldName = 'MARKA'
      end
      item
        FieldName = 'TIP'
      end>
    Properties.ListSource = DSNAIM
    Properties.OnChange = cxDBLookupComboBox1PropertiesChange
    TabOrder = 2
    Width = 270
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox [2]
    Left = 17
    Top = 104
    DataBinding.DataField = 'ED_IZM'
    DataBinding.DataSource = DSADDIT
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'NAIM'
    Properties.ListColumns = <
      item
        FieldName = 'NAIM'
      end>
    Properties.ListSource = DSEDIZM
    TabOrder = 4
    Width = 270
  end
  object cxLabel1: TcxLabel [3]
    Left = 17
    Top = 8
    Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1099#1081' '#8470
  end
  object cxLabel2: TcxLabel [4]
    Left = 17
    Top = 48
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object cxLabel3: TcxLabel [5]
    Left = 17
    Top = 89
    Caption = #1069#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  end
  object cxLabel4: TcxLabel [6]
    Left = 17
    Top = 129
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object cxLabel5: TcxLabel [7]
    Left = 17
    Top = 169
    Caption = #1062#1077#1085#1072
  end
  object cxLabel6: TcxLabel [8]
    Left = 17
    Top = 209
    Caption = #1057#1091#1084#1084#1072
  end
  inherited Panel4: TPanel
    Top = 214
    Width = 466
    TabOrder = 5
    inherited Panel3: TPanel
      Left = 309
    end
    inherited dxStatusBar1: TdxStatusBar
      Width = 458
      ExplicitWidth = 458
    end
  end
  object cxButton1: TcxButton [10]
    Left = 293
    Top = 64
    Width = 21
    Height = 21
    Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    LookAndFeel.Kind = lfUltraFlat
    OptionsImage.Glyph.Data = {
      AE060000424DAE06000000000000360000002800000017000000170000000100
      18000000000078060000C40E0000C40E00000000000000000000FFFFFFB2B2B2
      8787879292929797979C9C9CA2A2A2A6A6A6AAAAAAACACACACACACACACACACAC
      ACAAAAAAA8A8A8A3A3A39F9F9F9999999494948E8E8E8585858C8C8CDADADAFF
      FFFFF4F4F43737373636364040404B4B4B5656565F5F5F6666666D6D6D707070
      7272727272727171716F6F6F6A6A6A6262625A5A5A5050504646463B3B3B2E2E
      2E2E2E2E818181FFFFFFEFEFEF3333332C2C2C3434343F3F3F48484850505058
      58585D5D5D6161616262626262626161615F5F5F5A5A5A5555554D4D4D434343
      3A3A3A3030302626261E1E1E757575FFFFFFF0F0F03131312727272F2F2F3939
      394242424A4A4A5151515656565858585656565656565959595757575252524E
      4E4E4646463E3E3E3535352C2C2C2222221C1C1C747474FFFFFFEFEFEF2E2E2E
      2222222929293333333B3B3B4242424949494E4E4E4848485858585757574B4B
      4B4F4F4F4B4B4B4646464040403838382E2E2E2626261E1E1E181818727272FF
      FFFFEFEFEF2B2B2B1D1D1D2525252D2D2D3535353B3B3B4242423B3B3B6C6C6C
      E2E2E2D1D1D14D4D4D4343434545453F3F3F3939393131312929292121211B1B
      1B1616166F6F6FFFFFFFEFEFEF2929291A1A1A2020202727272F2F2F3535352F
      2F2F727272F0F0F0FFFFFFFFFFFFB8B8B83B3B3B3B3B3B3939393333332D2D2D
      2626261E1E1E1818181414146D6D6DFFFFFFEFEFEF2626261717171C1C1C2222
      22292929232323747473F4F4F4FFFFFFFEFEFEFEFEFEFEFEFE9393932D2D2D33
      33332E2E2E2828282121211B1B1B1616161212126D6D6DFFFFFFEFEFEF262626
      1515151919191E1E1E1C1C1C757575F6F6F6FFFFFFFDFDFDF0F0F0F2F2F2FFFF
      FFF8F8F86C6C6C2222222929292323231E1E1E1818181414141313136D6D6DFF
      FFFFEFEFEF2626261515151818181A1A1A898989FBFBFBFFFFFFFDFDFDFFFFFF
      969696838383FFFFFFFFFFFFEEEEEE4E4E4E1F1F1F2121211D1D1D1919191616
      161515156D6D6DFFFFFFEEEEEE4141414A4A4A4A4A4A4A4A4AAAAAAAFBFBFBFF
      FFFFFFFFFFF8F8F8707070575757DEDEDEFFFFFFFFFFFFE4E4E46060604B4B4B
      4F4F4F4B4B4B4949494646467A7A7AFFFFFFEEEEEE6161616767676565656969
      69646464898989D2D2D2F0F0F0B7B7B76B6B6B6C6C6C838383F5F5F5FFFFFFFF
      FFFFE3E3E37373736161616565656565656767678D8D8DFFFFFFEEEEEE676767
      7070706E6E6E7171717373736F6F6F7070707F7F7F7777777979797A7A7A7272
      72AFAFAFFEFEFEFEFEFEFFFFFFE6E6E69191916D6D6D6C6C6C7070708F8F8FFF
      FFFFEEEEEE6F6F6F7C7C7C7979797C7C7C7E7E7E808080818181808080828282
      8383838383838282827F7F7FDCDCDCFFFFFFFCFCFCFFFFFFFAFAFAB3B3B37171
      717B7B7B949494FFFFFFEEEEEE7878788888888383838787878989898B8B8B8D
      8D8D8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B8B8B949495F0EFF0FFFFFFFBFBFB
      FEFEFEE6E6E67F7F7F878787979797FFFFFFEEEEEE7F7F7F9393938E8E8E9191
      91949494959595979797989898989898989898989898989898989898939394AE
      AEAEF8F8F8FDFDFDFDFDFDE4E4E48989899292929B9B9BFFFFFFEEEEEE888888
      9F9F9F9999999C9C9C9E9E9E9F9F9FA1A1A1A2A2A2A2A2A2A2A2A2A2A2A2A2A2
      A2A2A2A2A2A2A29A9A9AC5C5C5FBFBFBFFFFFFD0D0D09292929F9F9FA0A0A0FF
      FFFFEEEEEE8F8F8FAAAAAAA3A3A3A6A6A6A8A8A8A9A9A9ABABABADADADADADAD
      ADADADADADADADADADADADADADADADAAAAAAA5A5A5D1D1D1EBEBEBAEAEAEA0A0
      A0AAAAAAA3A3A3FFFFFFEEEEEE979797B6B6B6AEAEAEB0B0B0B2B2B2B3B3B3B5
      B5B5B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B5B5B5B2B2B2AEAEAE
      AFAFAFADADADAEAEAEB6B6B6A8A8A8FFFFFFEEEEEE9E9E9EC0C0C0B8B8B8B9B9
      B9BBBBBBBDBDBDBEBEBEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBE
      BEBEBDBDBDBABABAB8B8B8B8B8B8B7B7B7C0C0C0ABABABFFFFFFEFEFEFA0A0A0
      D8D8D8CDCDCDD0D0D0D1D1D1D2D2D2D3D3D3D5D5D5D5D5D5D5D5D5D5D5D5D5D5
      D5D5D5D5D5D5D5D3D3D3D2D2D2D1D1D1D0D0D0CDCDCDCDCDCDD8D8D8AAAAAAFF
      FFFFFDFDFDAAAAAAB0B0B0ABABABAFAFAFB1B1B1B2B2B2B3B3B3B4B4B4B4B4B4
      B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B3B3B3B2B2B2B1B1B1AFAFAFAEAEAEAEAE
      AEA9A9A9C4C4C4FFFFFFFFFFFFFFFFFFEEEEEEEDEDEDEEEEEEEEEEEEEEEEEEEE
      EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
      EEEEEEEEEEEEECECECF4F4F4FFFFFFFFFFFF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [11]
    Left = 17
    Top = 21
    DataBinding.DataField = 'NOM_N'
    DataBinding.DataSource = DSADDIT
    ParentShowHint = False
    Properties.DisplayFormat = '0'
    Properties.MaxLength = 12
    Properties.OnChange = cxDBCurrencyEdit1PropertiesChange
    ShowHint = False
    TabOrder = 1
    Width = 121
  end
  object cxDBCurrencyEdit4: TcxDBCurrencyEdit [12]
    Left = 17
    Top = 224
    DataBinding.DataField = 'SUMMA'
    DataBinding.DataSource = DSADDIT
    ParentShowHint = False
    Properties.DisplayFormat = '0'
    Properties.MaxLength = 20
    Properties.MaxValue = 1E18
    Properties.ReadOnly = True
    ShowHint = False
    TabOrder = 8
    Width = 160
  end
  object cxDBCalcEdit1: TcxDBCalcEdit [13]
    Left = 17
    Top = 142
    DataBinding.DataField = 'KOLI'
    DataBinding.DataSource = DSADDIT
    TabOrder = 6
    Width = 160
  end
  object cxDBCalcEdit2: TcxDBCalcEdit [14]
    Left = 17
    Top = 182
    DataBinding.DataField = 'CENA'
    DataBinding.DataSource = DSADDIT
    TabOrder = 7
    Width = 160
  end
  inherited IBTransaction1: TIBTransaction
    Left = 424
    Top = 16
  end
  object IBNAIM: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MAT_NAIM'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into MAT_NAIM'
      '  (EDIZM, KL, MARKA, NAIM, TIP)'
      'values'
      '  (:EDIZM, :KL, :MARKA, :NAIM, :TIP)')
    RefreshSQL.Strings = (
      'Select '
      '  EDIZM,'
      '  KL,'
      '  MARKA,'
      '  NAIM,'
      '  TIP'
      'from MAT_NAIM '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select  EDIZM, KL, MARKA, NAIM, TIP from MAT_NAIM')
    ModifySQL.Strings = (
      'update MAT_NAIM'
      'set'
      '  EDIZM = :EDIZM,'
      '  KL = :KL,'
      '  MARKA = :MARKA,'
      '  NAIM = :NAIM,'
      '  TIP = :TIP'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    Left = 160
    object IBNAIMEDIZM: TIBStringField
      FieldName = 'EDIZM'
      Origin = '"MAT_NAIM"."EDIZM"'
      Size = 10
    end
    object IBNAIMKL: TIntegerField
      FieldName = 'KL'
      Origin = '"MAT_NAIM"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBNAIMMARKA: TIBStringField
      FieldName = 'MARKA'
      Origin = '"MAT_NAIM"."MARKA"'
      Size = 10
    end
    object IBNAIMNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"MAT_NAIM"."NAIM"'
      Size = 10
    end
    object IBNAIMTIP: TIBStringField
      FieldName = 'TIP'
      Origin = '"MAT_NAIM"."TIP"'
      Size = 10
    end
  end
  object DSEDIZM: TDataSource
    DataSet = IBEDIZM
    Left = 224
    Top = 32
  end
  object DSNAIM: TDataSource
    DataSet = IBNAIM
    Left = 160
    Top = 32
  end
  object IBEDIZM: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MAT_EDIZM'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into MAT_EDIZM'
      '  (KL, NAIM, PNAIM)'
      'values'
      '  (:KL, :NAIM, :PNAIM)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  NAIM,'
      '  PNAIM'
      'from MAT_EDIZM '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select KL, NAIM, PNAIM from MAT_EDIZM')
    ModifySQL.Strings = (
      'update MAT_EDIZM'
      'set'
      '  KL = :KL,'
      '  NAIM = :NAIM,'
      '  PNAIM = :PNAIM'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    Left = 224
    object IBEDIZMKL: TIntegerField
      FieldName = 'KL'
      Origin = '"MAT_EDIZM"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBEDIZMNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"MAT_EDIZM"."NAIM"'
      Size = 10
    end
    object IBEDIZMPNAIM: TIBStringField
      FieldName = 'PNAIM'
      Origin = '"MAT_EDIZM"."PNAIM"'
    end
  end
  object DSADDIT: TDataSource
    DataSet = IBADDIT
    Left = 192
    Top = 32
  end
  object IBADDIT: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBADDITBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MAT_ADDIT'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into MAT_ADDIT'
      
        '  (CENA, DATA_NOW, ED_IZM, KL, KL_DOC, KL_NAIM, KOLI, NAIM, NOM_' +
        'N, NPP, '
      '   SUMMA)'
      'values'
      
        '  (:CENA, :DATA_NOW, :ED_IZM, :KL, :KL_DOC, :KL_NAIM, :KOLI, :NA' +
        'IM, :NOM_N, '
      '   :NPP, :SUMMA)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  KL_DOC,'
      '  NPP,'
      '  NOM_N,'
      '  KL_NAIM,'
      '  NAIM,'
      '  ED_IZM,'
      '  KOLI,'
      '  CENA,'
      '  SUMMA,'
      '  DATA_NOW'
      'from MAT_ADDIT '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      'select * from MAT_ADDIT')
    ModifySQL.Strings = (
      'update MAT_ADDIT'
      'set'
      '  CENA = :CENA,'
      '  DATA_NOW = :DATA_NOW,'
      '  ED_IZM = :ED_IZM,'
      '  KL = :KL,'
      '  KL_DOC = :KL_DOC,'
      '  KL_NAIM = :KL_NAIM,'
      '  KOLI = :KOLI,'
      '  NAIM = :NAIM,'
      '  NOM_N = :NOM_N,'
      '  NPP = :NPP,'
      '  SUMMA = :SUMMA'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_MAT_ADDIT_ID'
    Left = 192
    object IBADDITKL: TIntegerField
      FieldName = 'KL'
      Origin = '"MAT_ADDIT"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBADDITKL_DOC: TIntegerField
      FieldName = 'KL_DOC'
      Origin = '"MAT_ADDIT"."KL_DOC"'
    end
    object IBADDITNOM_N: TLargeintField
      FieldName = 'NOM_N'
      Origin = '"MAT_ADDIT"."NOM_N"'
    end
    object IBADDITKL_NAIM: TIntegerField
      FieldName = 'KL_NAIM'
      Origin = '"MAT_ADDIT"."KL_NAIM"'
    end
    object IBADDITNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"MAT_ADDIT"."NAIM"'
      Size = 70
    end
    object IBADDITED_IZM: TIBStringField
      FieldName = 'ED_IZM'
      Origin = '"MAT_ADDIT"."ED_IZM"'
      Size = 10
    end
    object IBADDITKOLI: TIBBCDField
      FieldName = 'KOLI'
      Origin = '"MAT_ADDIT"."KOLI"'
      OnValidate = IBADDITKOLIValidate
      Precision = 9
      Size = 4
    end
    object IBADDITCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"MAT_ADDIT"."CENA"'
      OnValidate = IBADDITKOLIValidate
      Precision = 9
      Size = 4
    end
    object IBADDITSUMMA: TIBBCDField
      FieldName = 'SUMMA'
      Origin = '"MAT_ADDIT"."SUMMA"'
      Precision = 18
      Size = 2
    end
    object IBADDITDATA_NOW: TDateField
      FieldName = 'DATA_NOW'
      Origin = '"MAT_ADDIT"."DATA_NOW"'
    end
    object IBADDITNPP: TIntegerField
      FieldName = 'NPP'
      Origin = '"MAT_ADDIT"."NPP"'
    end
  end
  object IBDOCADDIT: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = IBTransaction1
    BeforePost = IBADDITBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MAT_ADDIT'
      'where'
      '  KL = :OLD_KL')
    InsertSQL.Strings = (
      'insert into MAT_ADDIT'
      
        '  (CENA, DATA_NOW, ED_IZM, KL, KL_DOC, KL_NAIM, KOLI, NAIM, NOM_' +
        'N, NPP, '
      '   SUMMA)'
      'values'
      
        '  (:CENA, :DATA_NOW, :ED_IZM, :KL, :KL_DOC, :KL_NAIM, :KOLI, :NA' +
        'IM, :NOM_N, '
      '   :NPP, :SUMMA)')
    RefreshSQL.Strings = (
      'Select '
      '  KL,'
      '  KL_DOC,'
      '  NPP,'
      '  NOM_N,'
      '  KL_NAIM,'
      '  NAIM,'
      '  ED_IZM,'
      '  KOLI,'
      '  CENA,'
      '  SUMMA,'
      '  DATA_NOW'
      'from MAT_ADDIT '
      'where'
      '  KL = :KL')
    SelectSQL.Strings = (
      
        'SELECT DOCUMENT.KL_CEX, DOCUMENT.KL_SKL, DOCUMENT.KL_KLIENT, MAT' +
        '_ADDIT.KL, MAT_ADDIT.KL_DOC, MAT_ADDIT.NPP, MAT_ADDIT.NOM_N, MAT' +
        '_ADDIT.KL_NAIM, MAT_ADDIT.NAIM, MAT_ADDIT.ED_IZM, MAT_ADDIT.KOLI' +
        ', MAT_ADDIT.CENA, MAT_ADDIT.SUMMA, MAT_ADDIT.DATA_NOW'
      'FROM MAT_ADDIT,'
      'DOCUMENT'
      'WHERE '
      '   ('
      '      (DOCUMENT.KL_CEX =:KLCEX)'
      '   and '
      '      (DOCUMENT.KL_SKL =:KLSKL)'
      '   and '
      '      (DOCUMENT.KL = MAT_ADDIT.KL_DOC)'
      '   )')
    ModifySQL.Strings = (
      'update MAT_ADDIT'
      'set'
      '  CENA = :CENA,'
      '  DATA_NOW = :DATA_NOW,'
      '  ED_IZM = :ED_IZM,'
      '  KL = :KL,'
      '  KL_DOC = :KL_DOC,'
      '  KL_NAIM = :KL_NAIM,'
      '  KOLI = :KOLI,'
      '  NAIM = :NAIM,'
      '  NOM_N = :NOM_N,'
      '  NPP = :NPP,'
      '  SUMMA = :SUMMA'
      'where'
      '  KL = :OLD_KL')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'KL'
    GeneratorField.Generator = 'GEN_MAT_ADDIT_ID'
    Left = 256
    object IBDOCADDITKL_CEX: TIntegerField
      FieldName = 'KL_CEX'
      Origin = '"DOCUMENT"."KL_CEX"'
    end
    object IBDOCADDITKL_SKL: TIntegerField
      FieldName = 'KL_SKL'
      Origin = '"DOCUMENT"."KL_SKL"'
    end
    object IBDOCADDITKL_KLIENT: TIntegerField
      FieldName = 'KL_KLIENT'
      Origin = '"DOCUMENT"."KL_KLIENT"'
    end
    object IBDOCADDITKL: TIntegerField
      FieldName = 'KL'
      Origin = '"MAT_ADDIT"."KL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDOCADDITKL_DOC: TIntegerField
      FieldName = 'KL_DOC'
      Origin = '"MAT_ADDIT"."KL_DOC"'
    end
    object IBDOCADDITNPP: TIntegerField
      FieldName = 'NPP'
      Origin = '"MAT_ADDIT"."NPP"'
    end
    object IBDOCADDITNOM_N: TLargeintField
      FieldName = 'NOM_N'
      Origin = '"MAT_ADDIT"."NOM_N"'
    end
    object IBDOCADDITKL_NAIM: TIntegerField
      FieldName = 'KL_NAIM'
      Origin = '"MAT_ADDIT"."KL_NAIM"'
    end
    object IBDOCADDITNAIM: TIBStringField
      FieldName = 'NAIM'
      Origin = '"MAT_ADDIT"."NAIM"'
      Size = 70
    end
    object IBDOCADDITED_IZM: TIBStringField
      FieldName = 'ED_IZM'
      Origin = '"MAT_ADDIT"."ED_IZM"'
      Size = 10
    end
    object IBDOCADDITKOLI: TIBBCDField
      FieldName = 'KOLI'
      Origin = '"MAT_ADDIT"."KOLI"'
      Precision = 9
      Size = 4
    end
    object IBDOCADDITCENA: TIBBCDField
      FieldName = 'CENA'
      Origin = '"MAT_ADDIT"."CENA"'
      Precision = 9
      Size = 4
    end
    object IBDOCADDITSUMMA: TIBBCDField
      FieldName = 'SUMMA'
      Origin = '"MAT_ADDIT"."SUMMA"'
      Precision = 18
      Size = 2
    end
    object IBDOCADDITDATA_NOW: TDateField
      FieldName = 'DATA_NOW'
      Origin = '"MAT_ADDIT"."DATA_NOW"'
    end
  end
  object DSDOCADDIT: TDataSource
    DataSet = IBDOCADDIT
    Left = 256
    Top = 32
  end
end
