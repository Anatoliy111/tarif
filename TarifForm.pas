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
  cxButtonEdit, cxCalc, cxMemo, cxDBEdit;

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
    IBTARIF_MESID_POSL: TIntegerField;
    cxGrid1DBTableView1ID_POSL: TcxGridDBColumn;
    IBTARIFID_VIDAB: TIntegerField;
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
    IBTARIF_MESID_VIDAB: TIntegerField;
    cxGrid1DBTableView1ID_VIDAB: TcxGridDBColumn;
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
    cxGridDBTableView1NORMA: TcxGridDBColumn;
    cxGridDBTableView1ID_VIDAB: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBMemo1: TcxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBTARIFUPDBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBLookupListBox1Click(Sender: TObject);
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


procedure TTarifs.cxButton1Click(Sender: TObject);
var res,res1:CURRENCY;
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
    end
    else
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
          IBQuery2.SQL.Text:='select tarif_mes.id, tarif.id_posl, tarif_dom.id_dom, tarif.id_vidab from tarif, tarif_dom, tarif_mes where tarif_mes.id=tarif_dom.id_tarifmes and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
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
          IBQuery2.SQL.Text:='select tarif_mes.id, tarif_mes.id_tarif, tarif.id_posl, tarif.id_vidab, tarif_dom.id_dom from tarif, tarif_dom, tarif_mes where tarif_mes.id=tarif_dom.id_tarifmes and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
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
self.fl_post:=1;
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


  IBPOSL.close;
  IBPERIOD.close;
  IBUL.close;
  IBDOM.close;
//  IBTARIF.close;
  IBTARIF_COMP.close;
  IBTARIF_DOM.close;
  IBTARIF_MES.close;
  IBTARIF_OTHER.close;

  IBPOSL.open;
  IBPERIOD.open;
  IBUL.open;
  IBDOM.open;
//  IBTARIF.open;
  IBTARIF_COMP.open;
  IBTARIF_DOM.open;
  IBTARIF_MES.open;
  IBTARIF_OTHER.open;

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
begin
  cxButton2.Enabled:=val;
  cxButton9.Enabled:=val;
  cxButton8.Enabled:=val;
  cxButton7.Enabled:=val;
//  cxButton6.Enabled:=val;
  cxButton1.Enabled:=val;
  cxGrid1DBTableView1.OptionsData.Editing:=val;
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


end;

procedure TTarifs.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
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
  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name, tarif.id_posl, tarif.id_vidab from tarif_mes,tarif where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBTARIF_MES.open;
  Visible;
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

procedure TTarifs.DBLookupListBox1Click(Sender: TObject);
begin
  inherited;
//  UpdateGrids;
    IBTARIF_MES.close;
  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name, tarif.id_posl, tarif.id_vidab from tarif_mes,tarif where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIF_MES.open;
  Visible;
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
    cxGrid1DBTableView1NSER_LICH.Visible:=true;
    cxGrid1DBTableView1ID_KOTEL.Visible:=true;
    cxGrid1DBTableView1PLOS_BBI.Visible:=true;
    cxGrid1DBTableView1LICH_PN.Visible:=true;
    cxGrid1DBTableView1LICH_PK.Visible:=true;
    cxGrid1DBTableView1TARIF_END.Editing:=false;
    cxGridDBTableView1PLOS_BB.Visible:=true;
    cxGridDBTableView1MZK.Visible:=true;
    cxGrid1DBTableView1MZK.Visible:=true;
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

  IBTARIF_MES.close;
  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name, tarif.id_posl, tarif.id_vidab from tarif_mes,tarif where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIF_MES.open;
  Visible;
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
end;

procedure TTarifs.IBTARIF_MESBeforePost(DataSet: TDataSet);
begin
self.fl_post:=1;
  inherited;

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
  path:string;
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
//      DateTimeToString(Filename,'mmddhhmm',now);
//      DateTimeToString(Filename,'dd mm yyyy',now);
        DateTimeToString(Filename,'dd mm yyyy',cxLookupComboBox1.EditValue);
      Filename:=IBPOSLNAME.Value+' '+Filename+'.xls'
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


end.
