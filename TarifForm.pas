unit TarifForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AllMDIChild, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  IBCustomDataSet, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  IBDatabase, dxStatusBar, cxContainer, cxTextEdit, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Menus,
  cxLabel, cxButtons, Vcl.ExtCtrls, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Buttons, IBX.IBQuery, inifiles,
  cxButtonEdit, cxCalc, cxMemo, cxDBEdit, cxCheckBox;

type
  TTarifs = class(TAllMDICh)
    dxBarManager1: TdxBarManager;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    IBTARIFUPD: TIBDataSet;
    DSTARIFUPD: TDataSource;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel1: TPanel;
    IBPOSL: TIBDataSet;
    DSPOSL: TDataSource;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    cxButton2: TcxButton;
    IBTARIF_COMP: TIBDataSet;
    DSTARIF_COMP: TDataSource;
    cxLabel2: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButton1: TcxButton;
    IBQSoftproect1: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBTARIF_DOM: TIBDataSet;
    DSTARIF_DOM: TDataSource;
    IBTARIF_DOMID: TIntegerField;
    IBTARIF_DOMID_TARIF: TIntegerField;
    IBTARIF_DOMID_DOM: TIntegerField;
    IBTARIF_DOMNAME: TIBStringField;
    Panel5: TPanel;
    DBLookupListBox1: TDBLookupListBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_PLAN: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_RN: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn;
    cxGrid1DBTableView1NORMA: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_END: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    IBDOM: TIBDataSet;
    IBDOMID: TIntegerField;
    IBDOMNAME: TIBStringField;
    IBDOMID_UL: TIntegerField;
    IBDOMDOM: TIBStringField;
    IBDOMCH: TSmallintField;
    IBDOMID_HOUSE: TIntegerField;
    IBUL: TIBDataSet;
    IBULID: TIntegerField;
    IBULNAME: TIBStringField;
    IBULKL: TIntegerField;
    IBULID_STREET: TIntegerField;
    IBULVAL: TIntegerField;
    DSUL: TDataSource;
    DSDOM: TDataSource;
    IBQuery2: TIBQuery;
    IBPERIOD: TIBDataSet;
    IBPERIODID: TIntegerField;
    IBPERIODDATA: TDateField;
    DІPERIOD: TDataSource;
    IBTARIF_MES: TIBDataSet;
    DSTARIF_MES: TDataSource;
    IBTARIF_MESID: TIntegerField;
    IBTARIF_MESID_TARIF: TIntegerField;
    IBTARIF_MESDATA: TDateField;
    IBTARIF_MESTARIF_PLAN: TIBBCDField;
    IBTARIF_MESTARIF_FACT: TIBBCDField;
    IBTARIF_MESTARIF_RN: TIBBCDField;
    IBTARIF_MESTARIF_RK: TIBBCDField;
    IBTARIF_MESNORMA: TIBBCDField;
    IBTARIF_MESTARIF_END: TIBBCDField;
    IBTARIF_MESPLAN_BL: TIBBCDField;
    IBTARIF_MESFACT_BL: TIBBCDField;
    IBTARIF_MESNAME: TIBStringField;
    IBTARIF_DOMID_TARIFMES: TIntegerField;
    cxGrid1DBTableView1PLAN_BL: TcxGridDBColumn;
    cxGrid1DBTableView1FACT_BL: TcxGridDBColumn;
    IBSERVICE: TIBDataSet;
    IBSERVICEID: TIntegerField;
    IBSERVICEADMINPW: TIBStringField;
    IBSERVICEFL_RASH: TIntegerField;
    DІSERVICE: TDataSource;
    IBTARIF_MESEND_BL: TIBBCDField;
    IBTARIF_MESEND_L: TIBBCDField;
    cxGrid1DBTableView1END_BL: TcxGridDBColumn;
    cxGrid1DBTableView1END_L: TcxGridDBColumn;
    IBTARIFUPDID: TIntegerField;
    IBTARIFUPDID_TARIF: TIntegerField;
    IBTARIFUPDDATA: TDateField;
    IBTARIFUPDTARIF_PLAN: TIBBCDField;
    IBTARIFUPDTARIF_FACT: TIBBCDField;
    IBTARIFUPDTARIF_RN: TIBBCDField;
    IBTARIFUPDTARIF_RK: TIBBCDField;
    IBTARIFUPDNORMA: TIBBCDField;
    IBTARIFUPDTARIF_END: TIBBCDField;
    IBTARIFUPDPLAN_BL: TIBBCDField;
    IBTARIFUPDFACT_BL: TIBBCDField;
    IBTARIFUPDEND_BL: TIBBCDField;
    IBTARIFUPDEND_L: TIBBCDField;
    IBTARIFUPDWID: TIBStringField;
    IBTARIFUPDPOSL: TIBStringField;
    IBTARIFUPDDOM: TIBStringField;
    IBTARIF_VID: TIBDataSet;
    DSTARIF_VID: TDataSource;
    IBTARIF_VIDID: TIntegerField;
    IBTARIF_VIDID_POSL: TIntegerField;
    IBTARIF_VIDNAME: TIBStringField;
    IBTARIF_VIDCODE_SERVI: TIntegerField;
    IBQSoftproect2: TIBQuery;
    IBQuery1: TIBQuery;
    IBTARIF_INF: TIBDataSet;
    DSTARIF_INF: TDataSource;
    IBTARIF: TIBDataSet;
    DSTARIF: TDataSource;
    IBTARIFID: TIntegerField;
    IBTARIFNAME: TIBStringField;
    IBTARIFID_POSL: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    IBTARIF_COMPID: TIntegerField;
    IBTARIF_COMPID_TARIF: TIntegerField;
    IBTARIF_COMPID_TARIFMES: TIntegerField;
    IBTARIF_COMPNAME: TIBStringField;
    IBTARIF_COMPSUMM: TIBBCDField;
    IBTARIF_COMPKL_NTAR: TIntegerField;
    IBTARIF_COMPFL_LIFT: TIntegerField;
    IBTARIF_COMPNORMA: TIBBCDField;
    IBTARIF_COMPSPLAN: TIBBCDField;
    IBTARIF_COMPSFACT: TIBBCDField;
    IBTARIF_COMPSUMM_BL: TIBBCDField;
    IBTARIF_COMPSUMM_L: TIBBCDField;
    cxGridDBTableView2ID_DOM: TcxGridDBColumn;
    IBVIDAB: TIBDataSet;
    DSVIDAB: TDataSource;
    IBVIDABID: TIntegerField;
    IBVIDABNAME: TIBStringField;
    IBOTHER: TIBDataSet;
    DSOTHER: TDataSource;
    IBOTHERID: TIntegerField;
    IBOTHERNAME: TIBStringField;
    IBOTHEREDRPOU: TIBStringField;
    IBOTHERID_VIDAB: TIntegerField;
    IBTARIF_MESLICH_PN: TIBBCDField;
    IBTARIF_MESLICH_PK: TIBBCDField;
    IBTARIF_MESNOTE: TIBStringField;
    IBTARIF_MESPLOS_BBI: TIBBCDField;
    IBTARIF_MESNSER_LICH: TIBStringField;
    IBTARIF_MESID_KOTEL: TIntegerField;
    IBTARIF_MESPLOS_BB: TIBBCDField;
    cxGrid1DBTableView1ID_POSL: TcxGridDBColumn;
    IBTARIF_OTHER: TIBDataSet;
    IBTARIF_OTHERID: TIntegerField;
    IBTARIF_OTHERID_TARIF: TIntegerField;
    IBTARIF_OTHERID_TARIFMES: TIntegerField;
    IBTARIF_OTHERID_DOMOTHER: TIntegerField;
    IBTARIF_OTHERSPLAN: TIBBCDField;
    IBTARIF_OTHERSFACT: TIBBCDField;
    IBTARIF_OTHERNORMA: TIBBCDField;
    IBTARIF_OTHERSEND: TIBBCDField;
    IBTARIF_OTHERMZK: TIBBCDField;
    IBTARIF_OTHERID_OTHER: TIntegerField;
    IBTARIF_OTHERPLOS_BB: TIBBCDField;
    IBTARIF_OTHERID_DOM: TIntegerField;
    IBTARIF_OTHERID_VIDAB: TIntegerField;
    DSTARIF_OTHER: TDataSource;
    cxGrid1DBTableView1LICH_PN: TcxGridDBColumn;
    cxGrid1DBTableView1LICH_PK: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS_BBI: TcxGridDBColumn;
    cxGrid1DBTableView1ID_KOTEL: TcxGridDBColumn;
    IBKOTEL: TIBDataSet;
    IBKOTELID: TIntegerField;
    IBKOTELNAME: TIBStringField;
    DSKOTEL: TDataSource;
    cxGrid1DBTableView1ID_VIDCENA: TcxGridDBColumn;
    IBTARIF_MESMZK: TIBBCDField;
    cxGrid1DBTableView1MZK: TcxGridDBColumn;
    IBTARIF_MESBORG_VIDH: TIBBCDField;
    IBTARIFUPDLICH_PN: TIBBCDField;
    IBTARIFUPDLICH_PK: TIBBCDField;
    IBTARIFUPDNOTE: TIBStringField;
    IBTARIFUPDPLOS_BBI: TIBBCDField;
    IBTARIFUPDNSER_LICH: TIBStringField;
    IBTARIFUPDID_KOTEL: TIntegerField;
    IBTARIFUPDPLOS_BB: TIBBCDField;
    IBTARIFUPDMZK: TIBBCDField;
    IBTARIFUPDBORG_VIDH: TIBBCDField;
    cxGrid1DBTableView1BORG_VIDH: TcxGridDBColumn;
    IBTARIFUPDID_DOM: TIntegerField;
    cxGrid1DBTableView1NSER_LICH: TcxGridDBColumn;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID_DOM: TcxGridDBColumn;
    cxGridDBTableView1ID_OTHER: TcxGridDBColumn;
    cxGridDBTableView1PLOS_BB: TcxGridDBColumn;
    cxGridDBTableView1SPLAN: TcxGridDBColumn;
    cxGridDBTableView1SFACT: TcxGridDBColumn;
    cxGridDBTableView1SEND: TcxGridDBColumn;
    cxGridDBTableView1MZK: TcxGridDBColumn;
    cxGridDBTableView1ID_VIDAB: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBMemo1: TcxDBMemo;
    IBTARIFUPDNO_LICH: TIntegerField;
    IBTARIF_MESNO_LICH: TIntegerField;
    IBTARIF_MESPLOS_IN: TIBBCDField;
    IBTARIF_MESPLOS_MZK: TIBBCDField;
    IBTARIFUPDPLOS_IN: TIBBCDField;
    IBTARIFUPDPLOS_MZK: TIBBCDField;
    IBTARIFUPDSUMOT: TIBBCDField;
    IBTARIFUPDSUMOTPDV: TIBBCDField;
    IBTARIF_MESSUMOT: TIBBCDField;
    IBTARIF_MESSUMOTPDV: TIBBCDField;
    cxGrid1DBTableView1SUMOT: TcxGridDBColumn;
    cxGrid1DBTableView1SUMOTPDV: TcxGridDBColumn;
    IBTARIF_OTHERSUMOT: TIBBCDField;
    IBTARIF_OTHERSUMOTPDV: TIBBCDField;
    cxGridDBTableView1SUMOT: TcxGridDBColumn;
    cxGridDBTableView1SUMOTPDV: TcxGridDBColumn;
    IBTARIF_MESLICH_GK: TIBBCDField;
    IBTARIFUPDLICH_GK: TIBBCDField;
    cxGrid1DBTableView1LICH_GK: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_ENDPDV: TcxGridDBColumn;
    IBTARIF_OTHERSENDPDV: TIBBCDField;
    IBTARIFUPDTARIF_ENDPDV: TIBBCDField;
    IBTARIF_MESTARIF_ENDPDV: TIBBCDField;
    cxGridDBTableView1SENDPDV: TcxGridDBColumn;
    cxButton10: TcxButton;
    IBTARIF_OTHERLICH_PN: TIBBCDField;
    IBTARIF_OTHERLICH_PK: TIBBCDField;
    IBTARIF_OTHERLICH_GK: TIBBCDField;
    IBTARIF_OTHERLICH_PN2: TIBBCDField;
    IBTARIF_OTHERLICH_PK2: TIBBCDField;
    IBTARIF_OTHERLICH_GK2: TIBBCDField;
    IBTARIF_OTHERFL_LICH: TIntegerField;
    cxGridDBTableView1LICH_PN: TcxGridDBColumn;
    cxGridDBTableView1LICH_PK: TcxGridDBColumn;
    cxGridDBTableView1LICH_GK: TcxGridDBColumn;
    cxGridDBTableView1LICH_PN2: TcxGridDBColumn;
    cxGridDBTableView1LICH_PK2: TcxGridDBColumn;
    cxGridDBTableView1LICH_GK2: TcxGridDBColumn;
    IBTARIF_MESLICH_PN2: TIBBCDField;
    IBTARIF_MESLICH_PK2: TIBBCDField;
    IBTARIF_MESLICH_GK2: TIBBCDField;
    IBTARIFUPDLICH_PN2: TIBBCDField;
    IBTARIFUPDLICH_PK2: TIBBCDField;
    IBTARIFUPDLICH_GK2: TIBBCDField;
    cxGrid1DBTableView1LICH_PN2: TcxGridDBColumn;
    cxGrid1DBTableView1LICH_PK2: TcxGridDBColumn;
    cxGrid1DBTableView1LICH_GK2: TcxGridDBColumn;
    cxGridDBTableView1FL_LICH: TcxGridDBColumn;
    IBTARIF_MESID_VIDCENA: TIntegerField;
    IBTARIFUPDID_VIDCENA: TIntegerField;
    IBTARIF_OTHERID_VIDCENA: TIntegerField;
    cxGridDBTableView1ID_VIDCENA: TcxGridDBColumn;
    IBTARIFUPDPROCENT: TIBBCDField;
    IBTARIF_MESPROCENT: TIBBCDField;
    IBTARIF_MESCENA1: TIBBCDField;
    IBTARIF_MESCENA2: TIBBCDField;
    IBTARIFUPDCENA1: TIBBCDField;
    IBTARIF_OTHERCENA1: TIBBCDField;
    IBTARIF_OTHERCENA2: TIBBCDField;
    IBTARIF_MESFL_2CENA: TIntegerField;
    IBTARIFUPDCENA2: TIBBCDField;
    IBTARIFUPDFL_2CENA: TIntegerField;
    IBTARIF_MESMZK_GK1: TIBBCDField;
    IBTARIF_MESMZK_GK2: TIBBCDField;
    IBTARIFUPDMZK_GK1: TIBBCDField;
    IBTARIFUPDMZK_GK2: TIBBCDField;
    cxGrid1DBTableView1MZK_GK1: TcxGridDBColumn;
    cxGrid1DBTableView1MZK_GK2: TcxGridDBColumn;
    IBTARIF_OTHERFL_MZK: TIntegerField;
    cxGrid1DBTableView1ID_VIDAB: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS_IN: TcxGridDBColumn;
    IBTARIF_MESID_VIDAB: TIntegerField;
    IBTARIFUPDID_VIDAB: TIntegerField;
    IBTARIFUPDMZK_PLOSALL: TIBBCDField;
    IBTARIFUPDMZK_GKKV1: TIBBCDField;
    IBTARIFUPDMZK_GKKV2: TIBBCDField;
    IBTARIFUPDMZK_GKALL1: TIBBCDField;
    IBTARIFUPDMZK_GKALL2: TIBBCDField;
    IBTARIFUPDMZK_GKCO1: TIBBCDField;
    IBTARIFUPDMZK_GKCO2: TIBBCDField;
    IBTARIFUPDMZK_GKM2IND1: TIBBCDField;
    IBTARIFUPDMZK_GKM2IND2: TIBBCDField;
    IBTARIFUPDMZK_SUMM2IND1: TIBBCDField;
    IBTARIFUPDMZK_SUMM2IND2: TIBBCDField;
    IBTARIFUPDMZK_CENA1: TIBBCDField;
    IBTARIFUPDMZK_CENA2: TIBBCDField;
    IBTARIFUPDMZK_ALLSUMM2IND: TIBBCDField;
    IBTARIF_MESMZK_PLOSALL: TIBBCDField;
    IBTARIF_MESMZK_GKKV1: TIBBCDField;
    IBTARIF_MESMZK_GKKV2: TIBBCDField;
    IBTARIF_MESMZK_GKALL1: TIBBCDField;
    IBTARIF_MESMZK_GKALL2: TIBBCDField;
    IBTARIF_MESMZK_GKCO1: TIBBCDField;
    IBTARIF_MESMZK_GKCO2: TIBBCDField;
    IBTARIF_MESMZK_GKM2IND1: TIBBCDField;
    IBTARIF_MESMZK_GKM2IND2: TIBBCDField;
    IBTARIF_MESMZK_SUMM2IND1: TIBBCDField;
    IBTARIF_MESMZK_SUMM2IND2: TIBBCDField;
    IBTARIF_MESMZK_CENA1: TIBBCDField;
    IBTARIF_MESMZK_CENA2: TIBBCDField;
    IBTARIF_MESMZK_ALLSUMM2IND: TIBBCDField;
    IBTARIF_MESMZK_PDV: TIBBCDField;
    IBTARIF_MESSUMMZK: TIBBCDField;
    IBTARIF_MESSUMMZK_PDV: TIBBCDField;
    IBTARIF_MESALLSUM: TIBBCDField;
    IBTARIF_MESALLSUM_PDV: TIBBCDField;
    IBTARIFUPDMZK_PDV: TIBBCDField;
    IBTARIFUPDSUMMZK: TIBBCDField;
    IBTARIFUPDSUMMZK_PDV: TIBBCDField;
    IBTARIFUPDALLSUM: TIBBCDField;
    IBTARIFUPDALLSUM_PDV: TIBBCDField;
    cxGrid1DBTableView1MZK_PDV: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMZK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMZK_PDV: TcxGridDBColumn;
    cxGrid1DBTableView1ALLSUM: TcxGridDBColumn;
    cxGrid1DBTableView1ALLSUM_PDV: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBTARIFUPDBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBComboBox1Change(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure IBDOMBeforePost(DataSet: TDataSet);
    procedure IBULBeforePost(DataSet: TDataSet);
    procedure IBPOSLBeforePost(DataSet: TDataSet);
    procedure IBTARIF_COMPBeforePost(DataSet: TDataSet);
    procedure IBTARIF_DOMBeforePost(DataSet: TDataSet);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure IBTARIF_MESBeforePost(DataSet: TDataSet);
    procedure IBTARIF_MESAfterEdit(DataSet: TDataSet);
    procedure cxButton6Click(Sender: TObject);
    procedure IBTARIF_INFOBeforePost(DataSet: TDataSet);
    procedure IBTARIF_MESNAMEChange(Sender: TField);
    procedure IBTARIFBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure IBTARIF_MESLICH_PNChange(Sender: TField);
    procedure IBTARIF_MESLICH_PKChange(Sender: TField);
    procedure cxButton10Click(Sender: TObject);
    procedure IBTARIF_MESLICH_PN2Change(Sender: TField);
    procedure IBTARIF_MESLICH_PK2Change(Sender: TField);
    procedure IBTARIF_OTHERLICH_PNChange(Sender: TField);
    procedure IBTARIF_OTHERLICH_PN2Change(Sender: TField);
    procedure IBTARIF_OTHERLICH_PK2Change(Sender: TField);
    procedure IBTARIF_OTHERLICH_PKChange(Sender: TField);
    procedure DSPOSLDataChange(Sender: TObject; Field: TField);
    procedure IBTARIF_MESAfterPost(DataSet: TDataSet);
  private
  procedure Enables(val:boolean);
  procedure Visible;
  function OpenBase :Boolean;overload;
  procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
    { Private declarations }
  public
    { Public declarations }

    Glavna:Tform;
     iniFile:TIniFile;
     procedure Update;

  end;

var
  Tarifs: TTarifs;
  tmpval:Currency;

implementation

uses registry, cxGridExportLink, comobj, MainForm, InsertForm, Ins, mytools, DataMod, Progress, math,
  Info, InsTarif;

{$R *.dfm}


procedure TTarifs.cxButton10Click(Sender: TObject);
var ddate:TDate;
begin
  inherited;
  ddate:=cxLookupComboBox1.EditValue;
Main.Newmes(false,ddate);
end;

procedure TTarifs.cxButton1Click(Sender: TObject);
var res,res1,res2:currency;
    widab:string;
    rrr:Variant;
    fl_rasch:Boolean;
    fl_2cena:Integer;
    plosallmzk,plosothlich:double;
    cenaosn1,cenamzk1,cenaother1,gkal1,gkalother1,normaosn1,normaother1,gkalkv1,gkalmzk1,gkalmzkco1,gkalmzkin1,send1,sotend1,sinend1,gkalm2in1,gkalothlich1:double;
    cenaosn2,cenamzk2,cenaother2,gkal2,gkalother2,normaosn2,normaother2,gkalkv2,gkalmzk2,gkalmzkco2,gkalmzkin2,send2,sotend2,sinend2,gkalm2in2,gkalothlich2:double;

begin
  inherited;
    Prores.Show;
  IBTARIFUPD.close;
//  IBTARIF.SelectSQL.Text:='select tarif_mes.*,posl.wid from TARIF, TARIF_MES, POSL where tarif_mes.data=:dt and tarif.id_posl=posl.id and tarif_mes.id_tarif=tarif.id';
  IBTARIFUPD.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIFUPD.open;
  IBTARIFUPD.First;
    IBTARIF_COMP.close;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp';
//  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.open;
            Prores.Label1.Caption:='Розрахунок даних';
            Application.ProcessMessages;
            Prores.cxProgressBar1.Visible:=true;
          Prores.cxProgressBar1.Position:=0;
          Prores.cxProgressBar1.Properties.Min:=0;
          IBTARIFUPD.Last;
         Prores.cxProgressBar1.Properties.Max:=IBTARIFUPD.RecordCount-1;
         Application.ProcessMessages;


  IBTARIFUPD.First;
  while not IBTARIFUPD.Eof do
  begin
  fl_rasch:=false;

  res:=0;
  res1:=0;
          Prores.cxProgressBar1.Position:=Prores.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          if not Prores.Showing then
             Break;

//    if not IBPOSL.Locate('id_posl',IBTARIFID_POSL.Value,[]) then
//    begin
//      IBTARIF.Next;
//      Continue;
//    end;

    if IBTARIFUPDWID.Value='ub' then
    begin
    fl_rasch:=true;
//      if IBTARIF_MESTARIF_FACT.Value>IBTARIF_MESTARIF_PLAN.Value then
//      begin
//         IBTARIF_MESTARIF_RK.Value:=IBTARIF_MESTARIF_PLAN.Value-IBTARIF_MESTARIF_FACT.Value-IBTARIF_MESTARIF_RN.Value;
//         IBTARIF_MESTARIF_END.Value:=IBTARIF_MESTARIF_PLAN.Value;
//      end
//      else
//      begin
         res:= IBTARIFUPDTARIF_PLAN.Value-IBTARIFUPDTARIF_FACT.Value;
         IBTARIFUPD.Edit;
         if res<0 then
         begin
              IBTARIFUPDTARIF_END.Value:=IBTARIFUPDTARIF_FACT.Value+res;
              IBTARIFUPDTARIF_RK.Value:=IBTARIFUPDTARIF_RN.Value+res;
         end
         else
         begin
           res1:=IBTARIFUPDTARIF_RN.Value+res;
           if res1>0 then
           begin
              IBTARIFUPDTARIF_RK.Value:=0;
              IBTARIFUPDTARIF_END.Value:=IBTARIFUPDTARIF_FACT.Value-IBTARIFUPDTARIF_RN.Value;
           end
           else
           begin
           IBTARIFUPDTARIF_RK.Value:=res1;
           IBTARIFUPDTARIF_END.Value:=IBTARIFUPDTARIF_FACT.Value+res;
           end;
         end;
         IBTARIFUPD.Post;


         res:=IBTARIFUPDTARIF_FACT.Value-IBTARIFUPDFACT_BL.Value;
         IBTARIFUPD.Edit;
         IBTARIFUPDEND_BL.Value:=IBTARIFUPDTARIF_END.Value-res;
         IBTARIFUPDEND_L.Value:=res;
         IBTARIFUPD.Post;

         if res<>0 then
         begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIFUPDID.Value,1]),[]) then
           begin
           IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=res;
             IBTARIF_COMP.Post;
           end;
         end;
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIFUPDID.Value,0]),[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value;
             IBTARIF_COMPSPLAN.Value:=IBTARIFUPDTARIF_PLAN.Value;
             IBTARIF_COMPSFACT.Value:=IBTARIFUPDTARIF_FACT.Value;
             IBTARIF_COMPSUMM_BL.Value:=IBTARIFUPDTARIF_END.Value-res;
             IBTARIF_COMPSUMM_L.Value:=res;
             IBTARIF_COMP.Post;
           end;


//      end;
      if IBTARIFUPDTARIF_RK.Value<0 then
      begin
      IBQuery1.Close;
      IBQuery1.SQL.Text:='select sum(DOM.PLOS_OB) from TARIF_DOM ,DOM where TARIF_dom.id_dom=DOM.id and TARIF_dom.id_tarifmes=:idmes';
      IBQuery1.ParamByName('idmes').Value:=IBTARIFUPDID.Value;
      IBQuery1.Open;
      IBQuery1.First;

      IBTARIFUPD.Edit;
      IBTARIFUPDBORG_VIDH.Value:=(IBQuery1.FieldByName('sum').AsFloat*IBTARIFUPDTARIF_RK.Value)*-1;
      IBTARIFUPD.post;
      end;
    end;

    if IBTARIFUPDWID.Value='ot' then
    begin
    fl_rasch:=true;


         IBQuery1.Close;
         IBQuery1.SQL.Text:='select first 1 * from TARIF_CENA where id_vidab=:idvidcena and date_mes<=:dmes order by date_mes desc';
         IBQuery1.ParamByName('idvidcena').Value:=IBTARIFUPDID_VIDCENA.Value;
         IBQuery1.ParamByName('dmes').Value:=IBTARIFUPDDATA.Value;
         IBQuery1.Open;
         IBQuery1.First;

         fl_2cena:=IBQuery1.FieldByName('FL_2DATE').AsInteger;
         cenaosn1:=IBQuery1.FieldByName('TARIF_SUM1').AsFloat;
         cenamzk1:=IBQuery1.FieldByName('TARIF_MZK1').AsFloat;
         cenaosn2:=IBQuery1.FieldByName('TARIF_SUM2').AsFloat;
         cenamzk2:=IBQuery1.FieldByName('TARIF_MZK2').AsFloat;

         gkal1:=IBTARIFUPDLICH_GK.AsFloat;
         gkal2:=IBTARIFUPDLICH_GK2.AsFloat;

         plosallmzk:=IBTARIFUPDPLOS_BBI.AsFloat+IBTARIFUPDPLOS_IN.AsFloat+IBTARIFUPDPLOS_MZK.AsFloat;
         gkalkv1:=gkal1/plosallmzk*(IBTARIFUPDPLOS_BBI.AsFloat+IBTARIFUPDPLOS_IN.AsFloat);
         gkalkv2:=gkal2/plosallmzk*(IBTARIFUPDPLOS_BBI.AsFloat+IBTARIFUPDPLOS_IN.AsFloat);
         gkalmzk1:=gkal1-gkalkv1;
         gkalmzk2:=gkal2-gkalkv2;
         gkalmzkco1:=gkalmzk1/(IBTARIFUPDPLOS_BBI.AsFloat+IBTARIFUPDPLOS_IN.AsFloat)*IBTARIFUPDPLOS_BBI.AsFloat;
         gkalmzkco2:=gkalmzk2/(IBTARIFUPDPLOS_BBI.AsFloat+IBTARIFUPDPLOS_IN.AsFloat)*IBTARIFUPDPLOS_BBI.AsFloat;
         gkalmzkin1:=gkalmzk1-gkalmzkco1;
         gkalmzkin2:=gkalmzk2-gkalmzkco2;

         if IBTARIFUPDPLOS_IN.AsFloat<>0 then
         begin
            gkalm2in1:=gkalmzkin1/IBTARIFUPDPLOS_IN.AsFloat;
            gkalm2in2:=gkalmzkin2/IBTARIFUPDPLOS_IN.AsFloat;
         end
         else
         begin
         gkalm2in1:=0;
         gkalm2in2:=0;
         end;

          IBQuery1.Close;
          IBQuery1.SQL.Text:='select sum(DOM_OTHER.plos_bb) as plos from TARIF_OTHER, DOM_OTHER where TARIF_OTHER.id_tarifmes=:idmes and TARIF_OTHER.id_domother=DOM_OTHER.id and TARIF_OTHER.fl_lich=1';
          IBQuery1.ParamByName('idmes').Value:=IBTARIFUPDID.Value;
          IBQuery1.Open;
          IBQuery1.First;
          plosothlich:=IBQuery1.FieldByName('plos').AsFloat;

          IBQuery1.Close;
          IBQuery1.SQL.Text:='select sum(TARIF_OTHER.LICH_GK) as LICH_GK from TARIF_OTHER, DOM_OTHER where TARIF_OTHER.id_tarifmes=:idmes and TARIF_OTHER.id_domother=DOM_OTHER.id and TARIF_OTHER.fl_lich=1';
          IBQuery1.ParamByName('idmes').Value:=IBTARIFUPDID.Value;
          IBQuery1.Open;
          IBQuery1.First;

          gkalothlich1:=IBQuery1.FieldByName('LICH_GK').AsFloat;

          IBQuery1.Close;
          IBQuery1.SQL.Text:='select sum(TARIF_OTHER.LICH_GK2) as LICH_GK2 from TARIF_OTHER, DOM_OTHER where TARIF_OTHER.id_tarifmes=:idmes and TARIF_OTHER.id_domother=DOM_OTHER.id and TARIF_OTHER.fl_lich=1';
          IBQuery1.ParamByName('idmes').Value:=IBTARIFUPDID.Value;
          IBQuery1.Open;
          IBQuery1.First;

          gkalothlich2:=IBQuery1.FieldByName('LICH_GK2').AsFloat;


          normaosn1:=(gkal1-gkalmzkin1-gkalothlich1)/(IBTARIFUPDPLOS_BB.AsFloat-plosothlich);
          normaosn2:=(gkal2-gkalmzkin2-gkalothlich2)/(IBTARIFUPDPLOS_BB.AsFloat-plosothlich);

//          normaosn1:=(gkal1-gkalothlich1)/(IBTARIFUPDPLOS_BB.AsFloat-plosothlich);
//          normaosn2:=(gkal2-gkalothlich2)/(IBTARIFUPDPLOS_BB.AsFloat-plosothlich);


      IBQuery1.Close;
      IBQuery1.SQL.Text:='select first 1 VIDAB.wid from TARIF_DOM ,DOM, VIDAB where TARIF_dom.id_dom=DOM.id and TARIF_dom.id_tarifmes=:idmes and DOM.id_vidab=VIDAB.id';
      IBQuery1.ParamByName('idmes').Value:=IBTARIFUPDID.Value;
      IBQuery1.Open;
      IBQuery1.First;

      widab:=trim(IBQuery1.FieldByName('wid').AsString);
      send1:=normaosn1*cenaosn1;
      send2:=normaosn2*cenaosn2;

       if IBTARIFUPDNO_LICH.Value=0 then
       begin

         IBTARIFUPD.Edit;
         IBTARIFUPDFL_2CENA.Value:=fl_2cena;

         IBTARIFUPDTARIF_END.Value:=SimpleRoundTo(send1+send2,-2);
         IBTARIFUPDTARIF_ENDPDV.AsCurrency:=SimpleRoundTo(send1+send2,-2)*1.2;

         if widab='ns' then
         begin
           IBTARIFUPDSUMOT.AsCurrency:=SimpleRoundTo(send1+send2,-2)*IBTARIFUPDPLOS_BBI.AsFloat;
           IBTARIFUPDSUMOTPDV.AsCurrency:=(SimpleRoundTo(send1+send2,-2)*IBTARIFUPDPLOS_BBI.AsFloat)*1.2;
         end
         else
         begin
//         Загальний тариф ЦО
           IBTARIFUPDSUMOT.AsCurrency:=SimpleRoundTo(((gkal1-gkalmzkin1-gkalothlich1)*cenaosn1)+((gkal2-gkalmzkin2-gkalothlich2)*cenaosn2),-2);
//         Загальний тариф ЦО з ПДВ
           IBTARIFUPDSUMOTPDV.AsCurrency:=(SimpleRoundTo(((gkal1-gkalmzkin1-gkalothlich1)*cenaosn1)+((gkal2-gkalmzkin2-gkalothlich2)*cenaosn2),-2))*1.2;
//           IBTARIFUPDSUMOT.AsCurrency:=SimpleRoundTo(((gkal1-gkalothlich1)*cenaosn1)+((gkal2-gkalmzkin2-gkalothlich2)*cenaosn2),-2);
//           IBTARIFUPDSUMOTPDV.AsCurrency:=(SimpleRoundTo(((gkal1-gkalothlich1)*cenaosn1)+((gkal2-gkalmzkin2-gkalothlich2)*cenaosn2),-2))*1.2;

         end;

         IBTARIFUPDCENA1.Value:=cenaosn1;
         IBTARIFUPDCENA2.Value:=cenaosn2;

//       Гкал на МЗК для індивід.  опалення
         IBTARIFUPDMZK_GK1.Value:=gkalmzkin1;
         IBTARIFUPDMZK_GK2.Value:=gkalmzkin2;
//         Загальна опалювальна S будинку
         IBTARIFUPDMZK_PLOSALL.Value:=plosallmzk;
//         Споживання Гкал на опалення квартир
         IBTARIFUPDMZK_GKKV1.Value:=gkalkv1;
         IBTARIFUPDMZK_GKKV2.Value:=gkalkv2;
//         Споживання Гкал на МЗК
         IBTARIFUPDMZK_GKALL1.Value:=gkalmzk1;
         IBTARIFUPDMZK_GKALL2.Value:=gkalmzk2;
//         Гкал на МЗК  для централ.  опалення
         IBTARIFUPDMZK_GKCO1.Value:=gkalmzkco1;
         IBTARIFUPDMZK_GKCO2.Value:=gkalmzkco2;
//         Витрати Гкал/ 1 м2 МЗК  для індивід опалення
         IBTARIFUPDMZK_GKM2IND1.Value:=gkalm2in1;
         IBTARIFUPDMZK_GKM2IND2.Value:=gkalm2in2;
//       Ціна МЗК
         IBTARIFUPDMZK_CENA1.Value:=cenamzk1;
         IBTARIFUPDMZK_CENA2.Value:=cenamzk2;
//         Вартість1м2 МЗК для індивід.
         IBTARIFUPDMZK_SUMM2IND1.Value:=SimpleRoundTo((gkalm2in1*cenamzk1),-2);
         IBTARIFUPDMZK_SUMM2IND2.Value:=SimpleRoundTo((gkalm2in2*cenamzk2),-2);
//         Загальний тариф МЗК
         IBTARIFUPDMZK.AsCurrency:=(IBTARIFUPDMZK_SUMM2IND1.Value+IBTARIFUPDMZK_SUMM2IND2.Value);
//         Загальний тариф МЗК з ПДВ
         IBTARIFUPDMZK_PDV.AsCurrency:=(IBTARIFUPDMZK_SUMM2IND1.Value+IBTARIFUPDMZK_SUMM2IND2.Value)*1.2;

         IBTARIFUPDSUMMZK.AsCurrency:=SimpleRoundTo(IBTARIFUPDMZK.Value*IBTARIFUPDPLOS_IN.Value,-2);
         IBTARIFUPDSUMMZK_PDV.AsCurrency:=SimpleRoundTo(IBTARIFUPDSUMMZK.AsCurrency*1.2,-2);

         IBTARIFUPDALLSUM.AsCurrency:=IBTARIFUPDSUMOT.AsCurrency+IBTARIFUPDSUMMZK.AsCurrency;
         IBTARIFUPDALLSUM_PDV.AsCurrency:=SimpleRoundTo(IBTARIFUPDALLSUM.AsCurrency*1.2,-2);


         IBTARIFUPD.Post;
         IBTARIF_OTHER.Close;
         IBTARIF_OTHER.ParamByName('idmes').Value:=IBTARIFUPDID.Value;
         IBTARIF_OTHER.Open;
         while not IBTARIF_OTHER.eof do
         begin
//         gkal:=normaosn*IBTARIF_OTHERPLOS_BB.AsFloat;
           IBQuery1.Close;
           IBQuery1.SQL.Text:='select first 1 * from TARIF_CENA where TARIF_CENA.id_vidab=:idvidcena and date_mes<=:dmes order by date_mes desc';
           IBQuery1.ParamByName('idvidcena').Value:=IBTARIF_OTHERID_VIDCENA.Value;
           IBQuery1.ParamByName('dmes').Value:=IBTARIFUPDDATA.Value;
           IBQuery1.Open;
           IBQuery1.First;
           cenaother1:=IBQuery1.FieldByName('TARIF_SUM1').AsFloat;
           cenaother2:=IBQuery1.FieldByName('TARIF_SUM2').AsFloat;

           if IBTARIF_OTHERFL_LICH.Value=1 then
           begin
              normaother1:=IBTARIF_OTHERLICH_GK.AsFloat/IBTARIF_OTHERPLOS_BB.AsFloat;
              gkalother1:=IBTARIF_OTHERLICH_GK.AsFloat;
              normaother2:=IBTARIF_OTHERLICH_GK2.AsFloat/IBTARIF_OTHERPLOS_BB.AsFloat;
              gkalother2:=IBTARIF_OTHERLICH_GK2.AsFloat;
           end
           else
           begin
              normaother1:=normaosn1;
              gkalother1:=SimpleRoundTo(normaother1*IBTARIF_OTHERPLOS_BB.AsFloat,-3);
              normaother2:=normaosn2;
              gkalother2:=SimpleRoundTo(normaother2*IBTARIF_OTHERPLOS_BB.AsFloat,-3);
           end;

          sotend1:=normaother1*cenaother1;
          sotend2:=normaother2*cenaother2;

          IBQuery1.Close;
          IBQuery1.SQL.Text:='select first 1 VIDAB.wid from VIDAB where VIDAB.id=:idvidab';
          IBQuery1.ParamByName('idvidab').Value:=IBTARIF_OTHERID_VIDAB.Value;
          IBQuery1.Open;
          IBQuery1.First;

          widab:=trim(IBQuery1.FieldByName('wid').AsString);




           IBTARIF_OTHER.Edit;
           IBTARIF_OTHERSEND.Value:=SimpleRoundTo(sotend1+sotend2,-2);
           IBTARIF_OTHERSENDPDV.Value:=SimpleRoundTo(sotend1+sotend2,-2)*1.2;

           if IBTARIF_OTHERFL_LICH.Value=0 then
           begin
              IBTARIF_OTHERLICH_GK.AsFloat:=gkalother1;
              IBTARIF_OTHERLICH_GK2.AsFloat:=gkalother2;
           end;
           if widab='ns' then
           begin
             IBTARIF_OTHERSUMOT.Value:=SimpleRoundTo(sotend1+sotend2,-2)*IBTARIF_OTHERPLOS_BB.AsFloat;
             IBTARIF_OTHERSUMOTPDV.Value:=(SimpleRoundTo(sotend1+sotend2,-2)*IBTARIF_OTHERPLOS_BB.AsFloat)*1.2;
           end
           else
           begin
             IBTARIF_OTHERSUMOT.Value:=SimpleRoundTo((gkalother1*cenaother1)+(gkalother2*cenaother2),-2);
             IBTARIF_OTHERSUMOTPDV.Value:=(SimpleRoundTo((gkalother1*cenaother1)+(gkalother2*cenaother2),-2))*1.2;
           end;
           IBTARIF_OTHERCENA1.Value:=cenaother1;
           IBTARIF_OTHERCENA2.Value:=cenaother2;
           if IBTARIF_OTHERFL_MZK.Value=1 then
           begin
             IBTARIF_OTHERMZK.Value:=IBTARIFUPDMZK_PDV.AsCurrency;
//             IBTARIF_OTHERMZK_GK1.Value:=gkalmzkin1;
//             IBTARIF_OTHERMZK_GK2.Value:=gkalmzkin2;
           end
           else
           begin
             IBTARIF_OTHERMZK.Value:=0;
//             IBTARIF_OTHERMZK_GK1.Value:=0;
//             IBTARIF_OTHERMZK_GK2.Value:=0;
           end;

           IBTARIF_OTHER.Post;
         IBTARIF_OTHER.Next;
         end;


       end
       else
       begin

         IBTARIFUPD.Edit;
         IBTARIFUPDTARIF_ENDPDV.AsCurrency:=SimpleRoundTo(IBTARIFUPDTARIF_END.Value,-2)*1.2;
//         IBTARIFUPDMZK.AsCurrency:=(gkalm2in*cenamzk)*1.2;
         IBTARIFUPDSUMOT.AsCurrency:=SimpleRoundTo(IBTARIFUPDTARIF_END.Value*IBTARIFUPDPLOS_BBI.AsFloat,-2);
         IBTARIFUPDSUMOTPDV.AsCurrency:=(SimpleRoundTo(IBTARIFUPDTARIF_END.Value*IBTARIFUPDPLOS_BBI.AsFloat,-2))*1.2;

         IBTARIFUPDALLSUM.AsCurrency:=IBTARIFUPDSUMOT.AsCurrency;
         IBTARIFUPDALLSUM_PDV.AsCurrency:=IBTARIFUPDALLSUM.AsCurrency;


//         IBTARIFUPDCENA1.Value:=cenaosn1;
//         IBTARIFUPDCENA2.Value:=cenaosn2;
//         IBTARIFUPDMZK_GK1.Value:=gkalmzkin1;
//         IBTARIFUPDMZK_GK2.Value:=gkalmzkin2;
         IBTARIFUPD.Post;
         IBTARIF_OTHER.Close;
         IBTARIF_OTHER.ParamByName('idmes').Value:=IBTARIFUPDID.Value;
         IBTARIF_OTHER.Open;
         while not IBTARIF_OTHER.eof do
         begin


           IBTARIF_OTHER.Edit;
           IBTARIF_OTHERSENDPDV.Value:=SimpleRoundTo(IBTARIF_OTHERSEND.Value,-2)*1.2;
           IBTARIF_OTHERSUMOT.Value:=SimpleRoundTo(IBTARIF_OTHERSEND.Value*IBTARIF_OTHERPLOS_BB.AsFloat,-2);
           IBTARIF_OTHERSUMOTPDV.Value:=(SimpleRoundTo(IBTARIF_OTHERSEND.Value*IBTARIF_OTHERPLOS_BB.AsFloat,-2))*1.2;
           IBTARIF_OTHERCENA1.Value:=cenaother1;
           IBTARIF_OTHERCENA2.Value:=cenaother2;
           IBTARIF_OTHER.Post;
         IBTARIF_OTHER.Next;

         end;
       end;



    end;



    if not fl_rasch then
    begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES', IBTARIFUPDID.Value,[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value;
             IBTARIF_COMPNORMA.Value:=IBTARIFUPDNORMA.Value;
             IBTARIF_COMP.Post;
           end
           else
           begin
//             IBTARIF_COMP.Insert;
//             IBTARIF_COMPID_TARIF.Value:=IBTARIFUPDID_TARIF.Value;
//             IBTARIF_COMPID_TARIFMES.Value:=IBTARIFUPDID.Value;
//             IBTARIF_COMPNAME.Value:=IBTARIFUPDPOSL.Value+' '+IBTARIFUPDDOM.Value;
//             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value;
//             IBTARIF_COMPFL_LIFT.Value:=0;
//             IBTARIF_COMPNORMA.Value:=IBTARIFUPDNORMA.Value;
//             IBTARIF_COMP.Post;
           end;
    end;



  IBTARIFUPD.Next;
  end;
  IBTARIFUPD.close;
        Prores.cxProgressBar1.Position:=0;
        Prores.Close;
        cxButton7.Click;

  IBSERVICE.Edit;
  IBSERVICEFL_RASH.Value:=1;
  IBSERVICE.Post;

      messagedlg('Розрахунок завершено!',mtInformation,[mbOK],0);


//  UpdateGrids;
//  cxButton7.OnClick;


end;

function TTarifs.OpenBase: Boolean;
begin
    try
  DataM.IBDatabase2.Connected:=false;
  DataM.IBDatabase2.DatabaseName:=DataM.dirSoft;
//    messagedlg(ss,mtInformation,[mbOK],0);
  DataM.IBDatabase2.Open;
  Result:=true;
  except
    begin
      Result:=false;
      messagedlg('Помилка підключення до бази даних '+DataM.dirSoft,mtError,[mbCancel],0);
    end;
  end;

end;

procedure TTarifs.cxButton2Click(Sender: TObject);
var s,ss,ssql:string;
    res:Currency;
begin
  inherited;
//    IBTARIF_INF.Close;
//    ssql:=IBTARIF_INF.SelectSQL.Text;
//    IBTARIF_INF.SelectSQL.Text:='select * from tarif_inf';
    IBTARIF_INF.Open;
    Tarifs.DSTARIF_INF.Enabled:=false;
  IBTARIF_VID.open;

    IBTARIFUPD.close;
//  IBTARIF.SelectSQL.Text:='select tarif_mes.*,posl.wid from TARIF, TARIF_MES, POSL where tarif_mes.data=:dt and tarif.id_posl=posl.id and tarif_mes.id_tarif=tarif.id';
  IBTARIFUPD.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIFUPD.open;
  IBTARIFUPD.First;
            Prores.Show;
            Prores.cxProgressBar1.Visible:=false;
            Prores.Label1.Caption:='Підключення до бази даних';
            Application.ProcessMessages;
            if not OpenBase then
            begin
              Prores.Close;
              exit;
            end;
//            try
//              DataM.IBDatabase2.Connected:=false;
//              ss:=iniFile.ReadString('Data','Database2',extractfilepath(paramstr(0))+'GKP_NEW.GDB');
//              DataM.IBDatabase2.DatabaseName:=ss;
//                    //    messagedlg(ss,mtInformation,[mbOK],0);
//              DataM.IBDatabase2.Open;
//            except
//              messagedlg('Помилка підключення до бази даних '+ss,mtError,[mbCancel],0);
//              Application.Terminate;
//            end;
            Prores.Label1.Caption:='Завантаження даних (план/факт)';
            Prores.cxProgressBar1.Visible:=true;
            Application.ProcessMessages;
            IBQSoftproect1.close;
            IBQSoftproect1.ParamByName('BDATE').AsDate:=main.IBPERIODDATA.Value;
            IBQSoftproect1.ParamByName('EDATE').AsDate:=LastDayMon(main.IBPERIODDATA.Value);
            IBQSoftproect1.open;
            Prores.cxProgressBar1.Visible:=true;
          Prores.cxProgressBar1.Position:=0;
          Prores.cxProgressBar1.Properties.Min:=0;
          IBQSoftproect1.Last;
         Prores.cxProgressBar1.Properties.Max:=IBQSoftproect1.RecordCount-1;
         Application.ProcessMessages;
      IBQSoftproect1.First;
      while not IBQSoftproect1.Eof do
      begin
          Prores.cxProgressBar1.Position:=Prores.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          if not Prores.Showing then
             Break;
//          if IBQuery1.FieldByName('ID_HOUSE').Value=10000044 then
//             IBQuery1.FieldByName('ID_HOUSE').Value;

          IBDOM.first;
          if not IBDOM.Locate('ID_HOUSE',IBQSoftproect1.FieldByName('ID_HOUSE').Value,[]) then
          begin
              IBUL.first;
              if not IBUL.Locate('ID_STREET',IBQSoftproect1.FieldByName('ID_STREET').Value,[]) then
              begin
                   IBQSoftproect1.Next;
                   Continue;
              end;
              IBDOM.first;
              if not IBDOM.Locate('id_ul;dom', VarArrayOf([IBULID.Value,IBQSoftproect1.FieldByName('N_BUD').Value]),[]) then
              begin
                   IBQSoftproect1.Next;
                   Continue;
              end
              else
              begin
                IBDOM.Edit;
                IBDOMID_HOUSE.Value:=IBQSoftproect1.FieldByName('ID_HOUSE').Value;
                IBDOM.Post;
              end;
          end;

          IBQuery2.close;
          IBQuery2.SQL.Text:='select tarif_mes.id, tarif.id_posl, tarif_dom.id_dom from tarif, tarif_dom, tarif_mes where tarif_mes.id=tarif_dom.id_tarifmes and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
          IBQuery2.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
          IBQuery2.open;
          if IBQuery2.Locate('id_posl;id_dom', VarArrayOf([IBPOSLID.Value,IBDOMID.Value]),[]) then
          begin
            IBTARIFUPD.First;
            if IBTARIFUPD.Locate('id',IBQuery2.FieldByName('id').Value,[]) then
            begin
               IBTARIFUPD.Edit;
               IBTARIFUPDTARIF_PLAN.Value:=IBQSoftproect1.FieldByName('NORM').Value;
               IBTARIFUPDTARIF_FACT.Value:=IBQSoftproect1.FieldByName('FACT').Value;
               IBTARIFUPDPLAN_BL.Value:=IBQSoftproect1.FieldByName('NORM_BL').Value;
               IBTARIFUPDFACT_BL.Value:=IBQSoftproect1.FieldByName('FACT_BL').Value;
               IBTARIFUPD.Post;
            end;
          end;



        IBQSoftproect1.Next;
      end;
      IBQSoftproect1.close;
      IBQuery2.close;
      Prores.cxProgressBar1.Position:=0;
      Application.ProcessMessages;

          IBQuery2.close;
          IBQuery2.SQL.Text:='select tarif_mes.id, tarif_mes.id_tarif, tarif.id_posl, tarif_dom.id_dom from tarif, tarif_dom, tarif_mes where tarif_mes.id=tarif_dom.id_tarifmes and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
          IBQuery2.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
          IBQuery2.open;

          Prores.Label1.Caption:='Завантаження даних (складові тарифу)';
          Application.ProcessMessages;

            IBQSoftproect2.close;
            IBQSoftproect2.ParamByName('BDATE').AsDate:=main.IBPERIODDATA.Value;
            IBQSoftproect2.ParamByName('EDATE').AsDate:=LastDayMon(main.IBPERIODDATA.Value);
            IBQSoftproect2.open;
            Prores.cxProgressBar1.Visible:=true;
          Prores.cxProgressBar1.Position:=0;
          Prores.cxProgressBar1.Properties.Min:=0;
          IBQSoftproect2.Last;
         Prores.cxProgressBar1.Properties.Max:=IBQSoftproect2.RecordCount-1;
         Application.ProcessMessages;
      IBQSoftproect2.First;
      while not IBQSoftproect2.Eof do
      begin
          Prores.cxProgressBar1.Position:=Prores.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          if not Prores.Showing then
             Break;
//          if IBQuery1.FieldByName('ID_HOUSE').Value=10000044 then
//             IBQuery1.FieldByName('ID_HOUSE').Value;

          IBDOM.first;
          if not IBDOM.Locate('ID_HOUSE',IBQSoftproect2.FieldByName('ID_HOUSE').Value,[]) then
          begin
              IBUL.first;
              if not IBUL.Locate('ID_STREET',IBQSoftproect2.FieldByName('ID_STREET').Value,[]) then
              begin
                   IBQSoftproect2.Next;
                   Continue;
              end;
              IBDOM.first;
              if not IBDOM.Locate('id_ul;dom', VarArrayOf([IBULID.Value,IBQSoftproect2.FieldByName('N_BUD').Value]),[]) then
              begin
                   IBQSoftproect2.Next;
                   Continue;
              end
              else
              begin
                IBDOM.Edit;
                IBDOMID_HOUSE.Value:=IBQSoftproect2.FieldByName('ID_HOUSE').Value;
                IBDOM.Post;
              end;
          end;


          IBQuery2.First;
          if IBQuery2.Locate('id_posl;id_dom', VarArrayOf([IBPOSLID.Value,IBDOMID.Value]),[]) then
          begin


//             IBQuery1.close;
//             IBQuery1.SQL.Text:='delete from tarif_tinf where id_tarifmes=:idmes';
//             IBQuery1.ParamByName('idmes').Value:=IBQuery2.FieldByName('ID').Value;
//             IBQuery1.ExecSQL;
             res:=IBQSoftproect2.FieldByName('NORM').Value+IBQSoftproect2.FieldByName('FACT').Value;
             if res<>0 then
             begin
                     IBTARIF_VID.First;
                     if not IBTARIF_VID.Locate('CODE_SERVI',IBQSoftproect2.FieldByName('CODE_SERVI').Value,[]) then
                     begin
                       IBTARIF_VID.Insert;
                       IBTARIF_VIDID_POSL.Value:=IBPOSLID.Value;
                       IBTARIF_VIDNAME.Value:=IBQSoftproect2.FieldByName('PolName').Value;
                       IBTARIF_VIDCODE_SERVI.Value:=IBQSoftproect2.FieldByName('CODE_SERVI').Value;
                       IBTARIF_VID.Post;
                     end
                     else
                     begin
                       IBTARIF_VID.edit;
                       IBTARIF_VIDNAME.Value:=IBQSoftproect2.FieldByName('PolName').Value;
                       IBTARIF_VID.Post;
                     end;

                     IBTARIF_INF.First;

                     if not IBTARIF_INF.Locate('ID_TARIFMES;ID_TARVID',VarArrayOf([IBQuery2.FieldByName('id').Value,IBTARIF_VIDID.Value]) ,[]) then
                     begin
                       IBTARIF_INF.Insert;
                       IBTARIF_INF.FieldByName('ID_TARIF').Value:=IBQuery2.FieldByName('id_tarif').Value;
                       IBTARIF_INF.FieldByName('ID_TARIFMES').Value:=IBQuery2.FieldByName('id').Value;
                       IBTARIF_INF.FieldByName('ID_TARVID').Value:=IBTARIF_VIDID.Value;
                       IBTARIF_INF.FieldByName('S_PLAN').Value:=IBQSoftproect2.FieldByName('NORM').Value;
                       IBTARIF_INF.FieldByName('S_FACT').Value:=IBQSoftproect2.FieldByName('FACT').Value;
                       IBTARIF_INF.Post;
                     end
                     else
                     begin
                       IBTARIF_INF.edit;
                       IBTARIF_INF.FieldByName('S_PLAN').Value:=IBQSoftproect2.FieldByName('NORM').Value;
                       IBTARIF_INF.FieldByName('S_FACT').Value:=IBQSoftproect2.FieldByName('FACT').Value;
                       IBTARIF_INF.Post;
                     end;
             end;
          end;



        IBQSoftproect2.Next;
      end;
      IBQSoftproect2.close;
      IBQuery2.close;
      Prores.cxProgressBar1.Position:=0;
      Application.ProcessMessages;


//    IBTARIF_INF.Close;
//    IBTARIF_INF.SelectSQL.Text:=ssql;
//    IBTARIF_INF.Open;


      Prores.Close;
      cxButton7.Click;
      messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);

end;

procedure TTarifs.cxButton5Click(Sender: TObject);
begin
 if ChangeTar=nil then
 begin
 Application.CreateForm(TInsTar,ChangeTar);
 ChangeTar.Caption:='Змінити тариф';
 ChangeTar.Update(IBTARIF_MESID.Value,IBTARIF_DOMID_DOM.Value);
 ChangeTar.Calcplos(IBTARIF_MESID.Value);
 ChangeTar.Update(IBTARIF_MESID.Value,IBTARIF_DOMID_DOM.Value);
 Main.AddToolBar(ChangeTar);
 end
 else
 ChangeTar.Show;

 ChangeTar.SetFocus;


  inherited;

end;

procedure TTarifs.cxButton6Click(Sender: TObject);
begin
  inherited;
  ExportGrid(cxGrid1);
end;

procedure TTarifs.cxButton7Click(Sender: TObject);
var idd:Integer;
begin
  Update;
end;

procedure TTarifs.Update;
var idd:Integer;
begin
idd:=IBTARIF_MESID.Value;
//self.fl_post:=1;
  inherited;
//  if IBPOSLWID='ot' then
//  begin
//    IBTARIFUPD.close;
//    IBTARIFUPD.ParamByName('dt').Value:=IBPERIODDATA.Value;
//    IBTARIFUPD.Open;
//    IBTARIFUPD.First;
//    while IBTARIFUPD.eof do
//    begin
//    if IBTARIFUPDWID.Value='ot' then
//    begin
////      IBQuery1.Close;
////      IBQuery1.SQL.Text:='select sum(DOM.PLOS_BB) from TARIF_DOM ,DOM where TARIF_dom.id_dom=DOM.id and TARIF_dom.id_tarifmes=:idmes';
////      IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
////      IBQuery1.Open;
////      IBQuery1.First;
////      if IBTARIFUPDPLOS_BB.Value<>IBQuery1.FieldByName('sum').AsFloat then
////      begin
////      IBTARIFUPD.Edit;
////      IBTARIFUPDPLOS_BB.Value:=IBQuery1.FieldByName('sum').AsFloat;
////      IBTARIFUPD.Post;
////      end;
////      IBQuery1.Close;
////      IBQuery1.SQL.Text:='select sum(DOM_OTHER.PLOS_BB) from TARIF_OTHER ,DOM_OTHER where TARIF_OTHER.id_domother=DOM_OTHER.id and TARIF_OTHER.id_tarifmes=:idmes';
////      IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
////      IBQuery1.Open;
////      IBQuery1.First;
////      if IBTARIFUPDPLOS_BBI.Value<>IBQuery1.FieldByName('sum').AsFloat then
////      begin
////      IBTARIFUPD.Edit;
////      IBTARIFUPDPLOS_BBI.Value:=IBTARIF_MESPLOS_BB.AsFloat-IBQuery1.FieldByName('sum').AsFloat;
////      IBTARIFUPD.Post;
////      end;
//    end;
//
//
//    IBTARIFUPD.Next;
//    end;
//  end;


//  IBPOSL.close;
//  IBPERIOD.close;
//  IBUL.close;
//  IBDOM.close;
//  IBTARIF.close;
  IBTARIF_COMP.close;
  IBTARIF_DOM.close;
  IBTARIF_MES.close;
  IBTARIF_OTHER.close;
  IBQuery1.Close;
  IBQuery1.SQL.Text:='update tarif_mes set tarif_mes.id_vidab = (select first 1 DOM.id_vidab from TARIF_DOM, DOM where TARIF_DOM.ID_DOM=DOM.ID and TARIF_DOM.ID_TARIFMES=TARIF_MES.ID) where tarif_mes.data=:dt';
  IBQuery1.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBQuery1.ExecSQL;

  IBTARIF_MES.close;
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIF_MES.open;
//  Visible;
  IBTARIF_COMP.close;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.open;
  IBTARIF_DOM.close;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.open;
  IBTARIF_OTHER.close;
  IBTARIF_OTHER.ParamByName('idmes').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_OTHER.open;

//  Visible;


  IBTARIF_MES.Locate('id',idd,[]);
end;

procedure TTarifs.cxButton8Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити тариф?'),pchar(''),36) of
  IDYES:begin
  IBTARIF_MES.Delete;
  self.fl_post:=1;
  end;
  end;
end;

procedure TTarifs.cxButton9Click(Sender: TObject);
begin
 if InsertTar=nil then
 begin
 Application.CreateForm(TInsTar,InsertTar);
 InsertTar.Caption:='Додати тариф';
 InsertTar.cxButton9.Click;
 Main.AddToolBar(InsertTar);
 end
 else
 InsertTar.Show;

 InsertTar.SetFocus;


  inherited;

end;

procedure TTarifs.Enables(val:boolean);
var i:integer;
begin
  cxButton2.Enabled:=val;
  cxButton9.Enabled:=val;
  cxButton8.Enabled:=val;
  cxButton7.Enabled:=val;
  cxButton5.Enabled:=val;
  cxButton1.Enabled:=val;
//  cxGrid1DBTableView1.OptionsData.Editing:=val;
//  for I := 0 to cxGrid1DBTableView1.ColumnCount-1 do
//  begin
//    cxGrid1DBTableView1.Columns[I].Options.Editing:=val;
//    if cxGrid1DBTableView1Column1.Index=I then
//      cxGrid1DBTableView1.Columns[I].Options.Editing:=true;
//  end;


  cxGrid1DBTableView1Column1.Options.Editing:=true;
end;


procedure TTarifs.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  InfoForm.Show;
  InfoForm.DSTARIF_INF.Enabled:=true;
  InfoForm.IBTARIF_INF.Close;
  InfoForm.IBTARIF_INF.ParamByName('tmes').Value:=Tarifs.IBTARIF_MESID.Value;
  InfoForm.IBTARIF_INF.Open;
  InfoForm.cxLabel2.Caption:=mon_slovoDt(Tarifs.IBTARIF_MESDATA.Value);


end;

procedure TTarifs.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var FL_2DATE, FL_OTHERLICH:integer;
begin
  inherited;
  IBTARIF_COMP.close;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.open;
  IBTARIF_DOM.close;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.open;
  IBTARIF_OTHER.close;
  IBTARIF_OTHER.ParamByName('idmes').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_OTHER.open;




  if IBPOSLWID.Value='ot' then
  begin
    DSTARIF_OTHER.Enabled:=false;

         IBQuery1.Close;
         IBQuery1.SQL.Text:='select max(fl_lich) as flich from TARIF_OTHER where TARIF_OTHER.id_tarifmes=:idmes';
         IBQuery1.ParamByName('idmes').AsInteger:=IBTARIF_MESID.Value;
         IBQuery1.Open;
         IBQuery1.First;
         FL_OTHERLICH:=IBQuery1.FieldByName('flich').AsInteger;

    cxGrid1DBTableView1ID_VIDCENA.Visible:=true;
    cxGrid1DBTableView1NSER_LICH.Visible:=true;
    cxGrid1DBTableView1ID_KOTEL.Visible:=true;
    cxGrid1DBTableView1PLOS_BBI.Visible:=true;
    cxGrid1DBTableView1LICH_PN.Visible:=true;
    cxGrid1DBTableView1LICH_PK.Visible:=true;
    cxGrid1DBTableView1MZK.Editing:=false;
    cxGrid1DBTableView1MZK.Options.Editing:=false;
    cxGridDBTableView1PLOS_BB.Visible:=true;
    cxGridDBTableView1MZK.Visible:=true;
    cxGrid1DBTableView1MZK.Visible:=true;
    cxGrid1DBTableView1SUMOT.Visible:=true;
    cxGrid1DBTableView1SUMOTPDV.Visible:=true;
    cxGridDBTableView1SUMOT.Visible:=true;
    cxGridDBTableView1SUMOTPDV.Visible:=true;
    cxGridDBTableView1SENDPDV.Visible:=true;
    cxGrid1DBTableView1LICH_GK.Visible:=true;
    cxGrid1DBTableView1TARIF_ENDPDV.Visible:=true;
    cxGridDBTableView1LICH_GK.Options.Editing:=false;
    cxGrid1DBTableView1MZK_GK2.Visible:=false;
//    cxGridDBTableView1MZK_GK2.Visible:=false;

   if FL_OTHERLICH=1 then
    begin
      cxGridDBTableView1LICH_PN.Visible:=true;
      cxGridDBTableView1LICH_PK.Visible:=true;
      cxGridDBTableView1LICH_PN2.Visible:=true;
      cxGridDBTableView1LICH_PK2.Visible:=true;
      cxGridDBTableView1LICH_GK2.Visible:=true;
      cxGridDBTableView1LICH_GK.Options.Editing:=true;
    end
    else
    begin
      cxGridDBTableView1LICH_PN.Visible:=false;
      cxGridDBTableView1LICH_PK.Visible:=false;
      cxGridDBTableView1LICH_PN2.Visible:=false;
      cxGridDBTableView1LICH_PK2.Visible:=false;
      cxGridDBTableView1LICH_GK2.Visible:=false;
    end;

    if IBTARIF_MESFL_2CENA.Value=1 then
    begin
      cxGrid1DBTableView1LICH_PN2.Visible:=true;
      cxGrid1DBTableView1LICH_PK2.Visible:=true;
      cxGrid1DBTableView1LICH_GK2.Visible:=true;
      cxGridDBTableView1LICH_PN2.Visible:=true;
      cxGridDBTableView1LICH_PK2.Visible:=true;
      cxGridDBTableView1LICH_GK2.Visible:=true;
      cxGrid1DBTableView1MZK_GK2.Visible:=true;
//      cxGridDBTableView1MZK_GK2.Visible:=true;
    end
    else
    begin
      cxGrid1DBTableView1LICH_PN2.Visible:=false;
      cxGrid1DBTableView1LICH_PK2.Visible:=false;
      cxGrid1DBTableView1LICH_GK2.Visible:=false;
      cxGridDBTableView1LICH_PN2.Visible:=false;
      cxGridDBTableView1LICH_PK2.Visible:=false;
      cxGridDBTableView1LICH_GK2.Visible:=false;
      cxGrid1DBTableView1MZK_GK2.Visible:=false;
//      cxGridDBTableView1MZK_GK2.Visible:=false;
    end;

      DSTARIF_OTHER.Enabled:=true;

  end;


end;

procedure TTarifs.cxLookupComboBox1PropertiesChange(Sender: TObject);
var rec:integer;
begin
  inherited;
  rec:=IBTARIF_MESID_TARIF.Value;
   if cxLookupComboBox1.EditValue = main.Period then
   begin
      cxLabel2.Caption:='Поточний період';
      Enables(true);
   end
   else
   begin
      cxLabel2.Caption:='Архів';
      Enables(false);
   end;
    IBTARIF_MES.close;
//  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name, tarif.id_posl, DOM.ID_VIDAB'+
//                              ' from tarif_mes,tarif'+
//                              ' left join TARIF_DOM on (TARIF_DOM.ID_TARIFMES=TARIF_MES.ID)'+
//                              ' left join dom on (TARIF_DOM.ID_DOM=DOM.ID and TARIF_DOM.ID_TARIFMES=TARIF_MES.ID)'+
//                              ' where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif order by tarif.name';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBTARIF_MES.open;
//  Visible;
  IBTARIF_COMP.close;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.open;
  IBTARIF_DOM.close;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.open;

  IBTARIF_MES.Locate('ID_TARIF',rec,[]);

end;

procedure TTarifs.DBComboBox1Change(Sender: TObject);
begin
  inherited;

if Main.IBPERIODDATA.Value=main.Period then
//cxComboBox1.EditValue
end;

procedure TTarifs.DSPOSLDataChange(Sender: TObject; Field: TField);
begin
  inherited;
    IBTARIF_MES.close;
//  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name, tarif.id_posl, DOM.ID_VIDAB'+
//                              ' from tarif_mes,tarif'+
//                              ' left join TARIF_DOM on (TARIF_DOM.ID_TARIFMES=TARIF_MES.ID)'+
//                              ' left join dom on (TARIF_DOM.ID_DOM=DOM.ID and TARIF_DOM.ID_TARIFMES=TARIF_MES.ID)'+
//                              ' where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBTARIF_MES.open;
//  DSTARIF_MES.Enabled:=false;
  Visible;
//  DSTARIF_MES.Enabled:=true;

  IBTARIF_COMP.close;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.open;
  IBTARIF_DOM.close;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.open;
  IBTARIF_OTHER.close;
  IBTARIF_OTHER.ParamByName('idmes').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_OTHER.open;
end;

procedure TTarifs.FormActivate(Sender: TObject);
begin
  inherited;
//cxTextEdit1.Text:=IntToStr(Main.MDIChildren.ComponentIndex);
//IBDOC.Close;
//IBDOC.Open;
end;

procedure TTarifs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if  (Tarifs <> nil) and (Tarifs.Active) then Tarifs:=nil;
//  if  (main.JRash <> nil) and (main.JRash.Active) then main.JRash:=nil;
//  if  (main.JPerem <> nil) and (main.JPerem.Active) then main.JPerem:=nil;
//  if  (main.JVozPok <> nil) and (main.JVozPok.Active) then main.JVozPok:=nil;
//  if  (main.JVozPos <> nil) and (main.JVozPos.Active) then main.JVozPos:=nil;
//  if  (main.JSpis <> nil) and (main.JSpis.Active) then main.JSpis:=nil;
//  if  (main.JInv <> nil) and (main.JInv.Active) then main.JInv:=nil;
end;

procedure TTarifs.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if IBTARIF_MES.State in [dsInsert,dsEdit] then
  begin
  IBTARIF_MES.Post;
  IBSERVICE.Edit;
  IBSERVICEFL_RASH.Value:=0;
  IBSERVICE.Post;
  end;
  if IBTARIF_COMP.State in [dsInsert,dsEdit] then
  IBTARIF_COMP.Post;
  if IBTARIF_DOM.State in [dsInsert,dsEdit] then
  IBTARIF_DOM.Post;
  if IBTARIF_INF.State in [dsInsert,dsEdit] then
  IBTARIF_INF.Post;
  if IBTARIF_VID.State in [dsInsert,dsEdit] then
  IBTARIF_VID.Post;

  inherited;
end;

procedure TTarifs.Visible;
var FL_2DATE, FL_OTHERLICH:integer;
begin

    DSTARIF_MES.Enabled:=false;

    cxGrid1DBTableView1TARIF_FACT.Visible:=false;
    cxGrid1DBTableView1TARIF_RN.Visible:=false;
    cxGrid1DBTableView1TARIF_RK.Visible:=false;
    cxGrid1DBTableView1NORMA.Visible:=true;
    cxGrid1DBTableView1END_BL.Visible:=false;
    cxGrid1DBTableView1END_L.Visible:=false;
    cxGrid1DBTableView1Column1.Visible:=false;
    cxGrid1DBTableView1TARIF_PLAN.Editing:=true;
    cxGrid1DBTableView1TARIF_PLAN.Options.Editing:=true;
    cxGrid1DBTableView1TARIF_END.Editing:=true;
    cxGrid1DBTableView1TARIF_END.Options.Editing:=true;
    cxButton2.Visible:=false;
    cxGrid1DBTableView1ID_KOTEL.Visible:=false;
    cxGrid1DBTableView1PLOS_BBI.Visible:=false;
    cxGrid1DBTableView1LICH_PN.Visible:=false;
    cxGrid1DBTableView1LICH_PK.Visible:=false;
    cxGrid1DBTableView1TARIF_PLAN.Editing:=true;
    cxGridDBTableView1PLOS_BB.Visible:=false;
    cxGridDBTableView1MZK.Visible:=false;
    cxGrid1DBTableView1MZK.Visible:=false;
    cxGridDBTableView1SFACT.Visible:=false;
    cxGrid1DBTableView1BORG_VIDH.Visible:=false;
    cxGrid1DBTableView1NSER_LICH.Visible:=false;
    cxGrid1DBTableView1SUMOT.Visible:=false;
    cxGrid1DBTableView1SUMOTPDV.Visible:=false;
    cxGridDBTableView1SUMOT.Visible:=false;
    cxGridDBTableView1SUMOTPDV.Visible:=false;
    cxGridDBTableView1SENDPDV.Visible:=false;
    cxGrid1DBTableView1LICH_GK.Visible:=false;
    cxGrid1DBTableView1TARIF_ENDPDV.Visible:=false;
    cxGrid1DBTableView1ID_VIDCENA.Visible:=false;
    cxGrid1DBTableView1MZK_GK2.Visible:=false;
//    cxGridDBTableView1MZK_GK2.Visible:=false;
    cxGrid1DBTableView1TARIF_PLAN.Visible:=true;

    cxGrid1DBTableView1MZK_PDV.Visible:=false;
    cxGrid1DBTableView1SUMMZK.Visible:=false;
    cxGrid1DBTableView1SUMMZK_PDV.Visible:=false;
    cxGrid1DBTableView1ALLSUM.Visible:=false;
    cxGrid1DBTableView1ALLSUM_PDV.Visible:=false;

    cxGrid1DBTableView1PLOS_IN.Visible:=false;
    cxGrid1DBTableView1LICH_PN2.Visible:=false;
    cxGrid1DBTableView1LICH_PK2.Visible:=false;
    cxGrid1DBTableView1LICH_GK2.Visible:=false;




  if IBPOSLWID.Value='ub' then
  begin
    cxGrid1DBTableView1TARIF_PLAN.Editing:=false;
    cxGrid1DBTableView1TARIF_PLAN.Options.Editing:=false;
    cxGrid1DBTableView1TARIF_FACT.Visible:=true;
    cxGrid1DBTableView1TARIF_RN.Visible:=true;
    cxGrid1DBTableView1TARIF_RK.Visible:=true;
    cxGrid1DBTableView1NORMA.Visible:=false;
    cxGrid1DBTableView1END_BL.Visible:=true;
    cxGrid1DBTableView1END_L.Visible:=true;
    cxGrid1DBTableView1TARIF_FACT.Editing:=false;
    cxGrid1DBTableView1TARIF_END.Editing:=false;
    cxGrid1DBTableView1TARIF_END.Options.Editing:=false;
    cxGrid1DBTableView1Column1.Visible:=true;
    cxButton2.Visible:=true;
    cxGridDBTableView1SFACT.Visible:=true;
    cxGrid1DBTableView1BORG_VIDH.Visible:=true;

  end;

  if IBPOSLWID.Value='ot' then
  begin

         IBQuery1.Close;
         IBQuery1.SQL.Text:='select max(fl_lich) as flich from TARIF_OTHER where TARIF_OTHER.id_tarifmes=:idmes';
         IBQuery1.ParamByName('idmes').AsInteger:=IBTARIF_MESID.Value;
         IBQuery1.Open;
         IBQuery1.First;
         FL_OTHERLICH:=IBQuery1.FieldByName('flich').AsInteger;

    cxGrid1DBTableView1ID_VIDCENA.Visible:=true;
    cxGrid1DBTableView1NSER_LICH.Visible:=true;
    cxGrid1DBTableView1ID_KOTEL.Visible:=true;
    cxGrid1DBTableView1PLOS_BBI.Visible:=true;
    cxGrid1DBTableView1LICH_PN.Visible:=true;
    cxGrid1DBTableView1LICH_PK.Visible:=true;
    cxGrid1DBTableView1MZK.Editing:=false;
    cxGrid1DBTableView1MZK.Options.Editing:=false;
    cxGridDBTableView1PLOS_BB.Visible:=true;
    cxGridDBTableView1MZK.Visible:=true;
    cxGrid1DBTableView1MZK.Visible:=true;
    cxGrid1DBTableView1SUMOT.Visible:=true;
    cxGrid1DBTableView1SUMOTPDV.Visible:=true;
    cxGridDBTableView1SUMOT.Visible:=true;
    cxGridDBTableView1SUMOTPDV.Visible:=true;
    cxGridDBTableView1SENDPDV.Visible:=true;
    cxGrid1DBTableView1LICH_GK.Visible:=true;
    cxGrid1DBTableView1TARIF_ENDPDV.Visible:=true;
    cxGridDBTableView1LICH_GK.Options.Editing:=false;
    cxGrid1DBTableView1TARIF_PLAN.Visible:=false;
    cxGrid1DBTableView1MZK_PDV.Visible:=true;
    cxGrid1DBTableView1SUMMZK.Visible:=true;
    cxGrid1DBTableView1SUMMZK_PDV.Visible:=true;
    cxGrid1DBTableView1ALLSUM.Visible:=true;
    cxGrid1DBTableView1ALLSUM_PDV.Visible:=true;
    cxGrid1DBTableView1NORMA.Visible:=false;

   if FL_OTHERLICH=1 then
    begin
      cxGridDBTableView1LICH_PN.Visible:=true;
      cxGridDBTableView1LICH_PK.Visible:=true;
      cxGridDBTableView1LICH_PN2.Visible:=true;
      cxGridDBTableView1LICH_PK2.Visible:=true;
      cxGridDBTableView1LICH_GK2.Visible:=true;
      cxGridDBTableView1LICH_GK.Options.Editing:=true;
    end
    else
    begin
      cxGridDBTableView1LICH_PN.Visible:=false;
      cxGridDBTableView1LICH_PK.Visible:=false;
      cxGridDBTableView1LICH_PN2.Visible:=false;
      cxGridDBTableView1LICH_PK2.Visible:=false;
      cxGridDBTableView1LICH_GK2.Visible:=false;
    end;

    if IBTARIF_MESFL_2CENA.Value=1 then
    begin
      cxGrid1DBTableView1LICH_PN2.Visible:=true;
      cxGrid1DBTableView1LICH_PK2.Visible:=true;
      cxGrid1DBTableView1LICH_GK2.Visible:=true;
      cxGridDBTableView1LICH_PN2.Visible:=true;
      cxGridDBTableView1LICH_PK2.Visible:=true;
      cxGridDBTableView1LICH_GK2.Visible:=true;
      cxGrid1DBTableView1MZK_GK2.Visible:=true;
//      cxGridDBTableView1MZK_GK2.Visible:=true;
    end
    else
    begin
      cxGrid1DBTableView1LICH_PN2.Visible:=false;
      cxGrid1DBTableView1LICH_PK2.Visible:=false;
      cxGrid1DBTableView1LICH_GK2.Visible:=false;
      cxGridDBTableView1LICH_PN2.Visible:=false;
      cxGridDBTableView1LICH_PK2.Visible:=false;
      cxGridDBTableView1LICH_GK2.Visible:=false;
      cxGrid1DBTableView1MZK_GK2.Visible:=false;
//      cxGridDBTableView1MZK_GK2.Visible:=false;
    end;

  end;

  DSTARIF_MES.Enabled:=true;

end;


procedure TTarifs.FormCreate(Sender: TObject);
begin
  inherited;

  if not IBTransaction1.Active then
     IBTransaction1.StartTransaction;
  IBPOSL.open;
  IBUL.open;
  IBDOM.open;
  IBPERIOD.open;
  IBSERVICE.open;
  IBSERVICE.open;
  IBTARIF_INF.open;
  IBTARIF_VID.open;
  IBTARIF.Open;
  IBVIDAB.Open;
  IBOTHER.Open;
  IBKOTEL.Open;


  InfoForm.cxDBTextEdit1.DataBinding.DataSource:=DSTARIF_MES;
  InfoForm.IBTARIF_INF.Transaction:=IBTransaction1;
  cxLookupComboBox1.EditValue:= IBPERIODDATA.Value;

//  IBTARIF_MES.close;
////  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name, tarif.id_posl, DOM.ID_VIDAB'+
////                              ' from tarif_mes,tarif'+
////                              ' left join TARIF_DOM on (TARIF_DOM.ID_TARIFMES=TARIF_MES.ID)'+
////                              ' left join dom on (TARIF_DOM.ID_DOM=DOM.ID and TARIF_DOM.ID_TARIFMES=TARIF_MES.ID)'+
////                              ' where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
//  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
//  IBTARIF_MES.ParamByName('dt').Value:=IBPERIODDATA.Value;
//  IBTARIF_MES.open;
//
//  IBTARIF_COMP.close;
//  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
//  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
//  IBTARIF_COMP.open;
//  IBTARIF_DOM.close;
//  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
//  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
//  IBTARIF_DOM.open;
//  IBTARIF_OTHER.close;
//  IBTARIF_OTHER.ParamByName('idmes').AsInteger:=IBTARIF_MESID.Value;
//  IBTARIF_OTHER.open;


   Update;
   Visible;

//  DBLookupComboBox1.KeyField:=  Main.IBPERIODID.Value;



//  IBTARIF.Close;
//  IBDOC.ParamByName('TDOC').AsInteger:=main.vid_doc;    //сортировка по типу документа
//  IBTARIF.Open;
  //cxTextEdit1.Text:=IntToStr(Main.MDIChildCount);
end;

procedure TTarifs.IBDOMBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.IBPOSLBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.IBTARIFBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.IBTARIFUPDBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.IBTARIF_COMPBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.IBTARIF_DOMBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.IBTARIF_INFOBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.IBTARIF_MESAfterEdit(DataSet: TDataSet);
begin
  inherited;
  tmpval:=IBTARIF_MESTARIF_FACT.Value;
   if cxLookupComboBox1.EditValue <> main.Period then
   begin
     if IBTARIF_MES.State in [dsInsert,dsEdit] then
     IBTARIF_MES.Cancel;
   end;
end;

procedure TTarifs.IBTARIF_MESAfterPost(DataSet: TDataSet);
begin
  inherited;
//IBTARIF_MES.Refresh;
end;

procedure TTarifs.IBTARIF_MESBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;

  inherited;

end;

procedure TTarifs.IBTARIF_MESLICH_PK2Change(Sender: TField);
begin
  inherited;
  IBTARIF_MES.edit;
  if IBTARIF_MESPROCENT.AsFloat<>0 then
    IBTARIF_MESLICH_GK2.AsFloat:= IBTARIF_MESLICH_PK2.AsFloat-IBTARIF_MESLICH_PN2.AsFloat-(((IBTARIF_MESLICH_PK2.AsFloat-IBTARIF_MESLICH_PN2.AsFloat)/100)*IBTARIF_MESPROCENT.AsFloat)
  else
    IBTARIF_MESLICH_GK2.AsFloat:= IBTARIF_MESLICH_PK2.AsFloat-IBTARIF_MESLICH_PN2.AsFloat;

  IBTARIF_MES.post;
end;

procedure TTarifs.IBTARIF_MESLICH_PKChange(Sender: TField);
begin
  inherited;
  IBTARIF_MES.edit;
  if IBTARIF_MESPROCENT.AsFloat<>0 then
    IBTARIF_MESLICH_GK.AsFloat:= IBTARIF_MESLICH_PK.AsFloat-IBTARIF_MESLICH_PN.AsFloat-(((IBTARIF_MESLICH_PK.AsFloat-IBTARIF_MESLICH_PN.AsFloat)/100)*IBTARIF_MESPROCENT.AsFloat)
  else
    IBTARIF_MESLICH_GK.AsFloat:= IBTARIF_MESLICH_PK.AsFloat-IBTARIF_MESLICH_PN.AsFloat;

  IBTARIF_MES.post;
end;

procedure TTarifs.IBTARIF_MESLICH_PN2Change(Sender: TField);
begin
  inherited;
  IBTARIF_MES.edit;
  if IBTARIF_MESPROCENT.AsFloat<>0 then
    IBTARIF_MESLICH_GK2.AsFloat:= IBTARIF_MESLICH_PK2.AsFloat-IBTARIF_MESLICH_PN2.AsFloat-(((IBTARIF_MESLICH_PK2.AsFloat-IBTARIF_MESLICH_PN2.AsFloat)/100)*IBTARIF_MESPROCENT.AsFloat)
  else
    IBTARIF_MESLICH_GK2.AsFloat:= IBTARIF_MESLICH_PK2.AsFloat-IBTARIF_MESLICH_PN2.AsFloat;

  IBTARIF_MES.post;
end;

procedure TTarifs.IBTARIF_MESLICH_PNChange(Sender: TField);

begin
  inherited;
  IBTARIF_MES.edit;
  if IBTARIF_MESPROCENT.AsFloat<>0 then
    IBTARIF_MESLICH_GK.AsFloat:= IBTARIF_MESLICH_PK.AsFloat-IBTARIF_MESLICH_PN.AsFloat-(((IBTARIF_MESLICH_PK.AsFloat-IBTARIF_MESLICH_PN.AsFloat)/100)*IBTARIF_MESPROCENT.AsFloat)
  else
    IBTARIF_MESLICH_GK.AsFloat:= IBTARIF_MESLICH_PK.AsFloat-IBTARIF_MESLICH_PN.AsFloat;

  IBTARIF_MES.post;

end;

procedure TTarifs.IBTARIF_MESNAMEChange(Sender: TField);
begin
  inherited;
  if IBTARIF.Locate('id',IBTARIF_MESID_TARIF.Value,[]) then
  begin
    IBTARIF.Edit;
    IBTARIFNAME.Value:=IBTARIF_MESNAME.Value;
    IBTARIF.Post;
  end;
end;

procedure TTarifs.IBTARIF_OTHERLICH_PK2Change(Sender: TField);
begin
  inherited;
  if IBTARIF_OTHERFL_LICH.Value=1 then
  begin
  IBTARIF_OTHER.edit;
  IBTARIF_OTHERLICH_GK2.AsFloat:= IBTARIF_OTHERLICH_PK2.AsFloat-IBTARIF_OTHERLICH_PN2.AsFloat;
  IBTARIF_OTHER.post;
  end
  else
    IBTARIF_OTHER.Cancel;
end;

procedure TTarifs.IBTARIF_OTHERLICH_PKChange(Sender: TField);
begin
  inherited;
    if IBTARIF_OTHERFL_LICH.Value=1 then
  begin
  IBTARIF_OTHER.edit;
  IBTARIF_OTHERLICH_GK.AsFloat:= IBTARIF_OTHERLICH_PK.AsFloat-IBTARIF_OTHERLICH_PN.AsFloat;
  IBTARIF_OTHER.post;
  end
  else
    IBTARIF_OTHER.Cancel;
end;

procedure TTarifs.IBTARIF_OTHERLICH_PN2Change(Sender: TField);
begin
  inherited;
 if IBTARIF_OTHERFL_LICH.Value=1 then
  begin
  IBTARIF_OTHER.edit;
  IBTARIF_OTHERLICH_GK2.AsFloat:= IBTARIF_OTHERLICH_PK2.AsFloat-IBTARIF_OTHERLICH_PN2.AsFloat;
  IBTARIF_OTHER.post;
  end
  else
    IBTARIF_OTHER.Cancel;
end;

procedure TTarifs.IBTARIF_OTHERLICH_PNChange(Sender: TField);
begin
  inherited;
    if IBTARIF_OTHERFL_LICH.Value=1 then
  begin
  IBTARIF_OTHER.edit;
  IBTARIF_OTHERLICH_GK.AsFloat:= IBTARIF_OTHERLICH_PK.AsFloat-IBTARIF_OTHERLICH_PN.AsFloat;
  IBTARIF_OTHER.post;
  end
  else
    IBTARIF_OTHER.Cancel;
end;

procedure TTarifs.IBULBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

end;

procedure TTarifs.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path,fdata:string;
  i:integer;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if not Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' , False) then
      //ShowMessage('Error in opening key')
      path := '.\'
    else
    begin
      path := Reg.Readstring('Personal')+'\'
    end;
  finally
    Reg.Free;
  end;

  sd:=TSaveDialog.Create(application);
  try
    if FileName='Table.xls' then
    begin
      DateTimeToString(fdata,'mmddhhmm',now);
//      DateTimeToString(Filename,'dd mm yyyy',now);
        DateTimeToString(Filename,'dd mm yyyy',cxLookupComboBox1.EditValue);

      Filename:=IBPOSLNAME.Value+' '+Filename+' ('+fdata+').xls'
    end;
    sd.FileName := path + Filename;
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;

  ExportGridToExcel(filename, AGrid,false,true,true);

  try
    Excel := CreateOLEObject('Excel.Application');
    Excel.Visible := True;

    Excel.WorkBooks.Open(FileName);
    Excel.ActiveWindow.DisplayGridlines := True;

    Excel.columns.NumberFormat:='0,00';

//    for i:=9 to Excel.columns.count-4 do
//    begin
//       Excel.columns[i].NumberFormat:='0,00';
//    end;

//    Excel.columns[9].NumberFormat:='0,00';
//    Excel.columns[10].NumberFormat:='0,00';
//    Excel.columns[11].NumberFormat:='0,00';
//    Excel.columns[12].NumberFormat:='0,00';
//    Excel.columns[13].NumberFormat:='0,00';
//    Excel.columns[14].NumberFormat:='0,00';
//    Excel.columns[15].NumberFormat:='0,00';
//    Excel.columns[16].NumberFormat:='0,00';
//    Excel.columns[17].NumberFormat:='0,00';
//    Excel.columns[18].NumberFormat:='0,00';
//    Excel.columns[19].NumberFormat:='0,00';
//    Excel.columns[20].NumberFormat:='0,00';
//    Excel.columns[21].NumberFormat:='0,00';
//    Excel.columns[22].NumberFormat:='0,00';
//    Excel.columns[23].NumberFormat:='0,00';
//    Excel.columns[24].NumberFormat:='0,00';
//    Excel.columns[25].NumberFormat:='0,00';

    Excel.ActiveWindow.View := 2;
    if Excel.ActiveSheet.VPageBreaks.count <> 0 then
       Excel.ActiveSheet.VPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    if Excel.ActiveSheet.HPageBreaks.count <> 0 then
       Excel.ActiveSheet.HPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    Excel.ActiveWindow.View := 1;

  except
  end;
end;

//refresh tarif_mes
//Select
//  TARIF_MES.ID,
//  TARIF_MES.ID_TARIF,
//  TARIF_MES.DATA,
//  TARIF_MES.TARIF_PLAN,
//  TARIF_MES.TARIF_FACT,
//  TARIF_MES.TARIF_RN,
//  TARIF_MES.TARIF_RK,
//  TARIF_MES.NORMA,
//  TARIF_MES.TARIF_END,
//  TARIF_MES.PLAN_BL,
//  TARIF_MES.FACT_BL,
//  TARIF_MES.END_BL,
//  TARIF_MES.END_L,
//  TARIF_MES.LICH_PN,
//  TARIF_MES.LICH_PK,
//  TARIF_MES.NOTE,
//  TARIF_MES.PLOS_BBI,
//  TARIF_MES.NSER_LICH,
//  TARIF_MES.ID_KOTEL,
//  TARIF_MES.PLOS_BB,
//  TARIF_MES.MZK,
//  TARIF_MES.BORG_VIDH,
//  TARIF_MES.NO_LICH,
//  TARIF_MES.PLOS_IN,
//  TARIF_MES.PLOS_MZK,
//  TARIF_MES.SUMOT,
//  TARIF_MES.SUMOTPDV,
//  TARIF_MES.LICH_GK,
//  TARIF_MES.TARIF_ENDPDV,
//  TARIF_MES.LICH_PN2,
//  TARIF_MES.LICH_PK2,
//  TARIF_MES.LICH_GK2,
//  TARIF_MES.ID_VIDCENA,
//  TARIF_MES.CENA1,
//  TARIF_MES.CENA2,
//  TARIF_MES.PROCENT,
//  TARIF_MES.FL_2CENA,
//  TARIF_MES.MZK_GK1,
//  TARIF_MES.MZK_GK2,
//  TARIF. NAME
//from TARIF_MES, TARIF
//where
//  TARIF_MES.ID = :ID and TARIF_MES.ID_TARIF=TARIF.ID


end.
