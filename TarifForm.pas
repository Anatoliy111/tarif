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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Buttons, IBX.IBQuery, inifiles;

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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
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
    cxGridDBTableView2NAME: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1SUMM: TcxGridDBColumn;
    cxGridDBTableView1KL_NTAR: TcxGridDBColumn;
    cxGridDBTableView1FL_LIFT: TcxGridDBColumn;
    cxGridDBTableView1NORMA: TcxGridDBColumn;
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
    IBTARIF_COMPID: TIntegerField;
    IBTARIF_COMPID_TARIF: TIntegerField;
    IBTARIF_COMPID_TARIFMES: TIntegerField;
    IBTARIF_COMPNAME: TIBStringField;
    IBTARIF_COMPSUMM: TIBBCDField;
    IBTARIF_COMPKL_NTAR: TIntegerField;
    IBTARIF_COMPFL_LIFT: TIntegerField;
    IBTARIF_COMPNORMA: TIBBCDField;
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
    IBTARIF_INFO: TIBDataSet;
    DSTARIF_INFO: TDataSource;
    IBTARIF_INFOID: TIntegerField;
    IBTARIF_INFOID_TARIF: TIntegerField;
    IBTARIF_INFOID_TARIFMES: TIntegerField;
    IBTARIF_INFOID_TARVID: TIntegerField;
    IBTARIF_INFOSPLAN: TIBBCDField;
    IBTARIF_INFOSFACT: TIBBCDField;
    IBQSoftproect2: TIBQuery;
    IBQuery1: TIBQuery;
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
    procedure IBTARIF_MESTARIF_FACTChange(Sender: TField);
    procedure IBTARIF_MESAfterEdit(DataSet: TDataSet);
    procedure cxButton6Click(Sender: TObject);
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
  end;

var
  Tarifs: TTarifs;
  tmpval:Currency;

implementation

uses registry, cxGridExportLink, comobj, MainForm, InsertForm, Ins, mytools, DataMod, Progress, math;

{$R *.dfm}


procedure TTarifs.cxButton1Click(Sender: TObject);
var res,res1:CURRENCY;
begin
  inherited;
    Prores.Show;
  IBTARIFUPD.Active:=false;
//  IBTARIF.SelectSQL.Text:='select tarif_mes.*,posl.wid from TARIF, TARIF_MES, POSL where tarif_mes.data=:dt and tarif.id_posl=posl.id and tarif_mes.id_tarif=tarif.id';
  IBTARIFUPD.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIFUPD.Active:=true;
  IBTARIFUPD.First;
    IBTARIF_COMP.Active:=false;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp';
//  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.Active:=true;
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

         if res>0 then
         begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIFUPDID.Value,0]),[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value-res;
             IBTARIF_COMP.Post;
           end
           else
           begin
//             IBTARIF_COMP.Insert;
//             IBTARIF_COMPID_TARIF.Value:=IBTARIFUPDID_TARIF.Value;
//             IBTARIF_COMPID_TARIFMES.Value:=IBTARIFUPDID.Value;
//             IBTARIF_COMPNAME.Value:=IBTARIFUPDPOSL.Value+' '+IBTARIFUPDDOM.Value;
//             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value-res;
//             IBTARIF_COMPFL_LIFT.Value:=0;
//             IBTARIF_COMPNORMA.Value:=IBTARIFUPDNORMA.Value;
//             IBTARIF_COMP.Post;
           end;
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIFUPDID.Value,1]),[]) then
           begin
           IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=res;
             IBTARIF_COMP.Post;
           end
           else
           begin
//             IBTARIF_COMP.Insert;
//             IBTARIF_COMPID_TARIF.Value:=IBTARIFUPDID_TARIF.Value;
//             IBTARIF_COMPID_TARIFMES.Value:=IBTARIFUPDID.Value;
//             IBTARIF_COMPNAME.Value:='Лiфт '+IBTARIFUPDDOM.Value;
//             IBTARIF_COMPSUMM.Value:=res;
//             IBTARIF_COMPFL_LIFT.Value:=1;
//             IBTARIF_COMPNORMA.Value:=IBTARIFUPDNORMA.Value;
//             IBTARIF_COMP.Post;
           end;
         end
         else
         begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIFUPDID.Value,0]),[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value-res;
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

//      end;

    end
    else
    begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES', IBTARIFUPDID.Value,[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value;
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
  IBTARIFUPD.Active:=false;
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
var s,ss:string;
    res:Currency;
begin
  inherited;
    IBTARIF_INFO.Active:=true;
  IBTARIF_VID.Active:=true;

    IBTARIFUPD.Active:=false;
//  IBTARIF.SelectSQL.Text:='select tarif_mes.*,posl.wid from TARIF, TARIF_MES, POSL where tarif_mes.data=:dt and tarif.id_posl=posl.id and tarif_mes.id_tarif=tarif.id';
  IBTARIFUPD.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIFUPD.Active:=true;
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
            IBQSoftproect1.Active:=false;
            IBQSoftproect1.ParamByName('BDATE').AsDate:=main.IBPERIODDATA.Value;
            IBQSoftproect1.ParamByName('EDATE').AsDate:=LastDayMon(main.IBPERIODDATA.Value);
            IBQSoftproect1.Active:=true;
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

          IBQuery2.Active:=false;
          IBQuery2.SQL.Text:='select tarif_mes.id, tarif.id_posl, tarif_dom.id_dom from tarif, tarif_dom, tarif_mes where tarif_mes.id=tarif_dom.id_tarifmes and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
          IBQuery2.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
          IBQuery2.Active:=true;
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
      IBQSoftproect1.Active:=false;
      IBQuery2.Active:=false;
      Prores.cxProgressBar1.Position:=0;
      Application.ProcessMessages;

          IBQuery2.Active:=false;
          IBQuery2.SQL.Text:='select tarif_mes.id, tarif_mes.id_tarif, tarif.id_posl, tarif_dom.id_dom from tarif, tarif_dom, tarif_mes where tarif_mes.id=tarif_dom.id_tarifmes and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
          IBQuery2.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
          IBQuery2.Active:=true;

          Prores.Label1.Caption:='Завантаження даних (складові тарифу)';
          Application.ProcessMessages;

            IBQSoftproect2.Active:=false;
            IBQSoftproect2.ParamByName('BDATE').AsDate:=main.IBPERIODDATA.Value;
            IBQSoftproect2.ParamByName('EDATE').AsDate:=LastDayMon(main.IBPERIODDATA.Value);
            IBQSoftproect2.Active:=true;
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


             IBQuery1.Active:=false;
             IBQuery1.SQL.Text:='delete from tarif_info where id_tarifmes=:idmes';
             IBQuery1.ParamByName('idmes').Value:=IBQuery2.FieldByName('ID').Value;
             IBQuery1.ExecSQL;
             res:=IBQSoftproect2.FieldByName('NORM').Value+IBQSoftproect2.FieldByName('FACT').Value;
             if res<>0 then
             begin

                     if not IBTARIF_VID.Locate('CODE_SERVI',IBQSoftproect2.FieldByName('CODE_SERVI').Value,[]) then
                     begin
                       IBTARIF_VID.Insert;
                       IBTARIF_VIDID_POSL.Value:=IBPOSLID.Value;
                       IBTARIF_VIDNAME.Value:=IBQSoftproect2.FieldByName('PolName').Value;
                       IBTARIF_VIDCODE_SERVI.Value:=IBQSoftproect2.FieldByName('CODE_SERVI').Value;
                       IBTARIF_VID.Post;
                     end;



                       IBTARIF_INFO.Insert;
                       IBTARIF_INFOID_TARIF.Value:=IBQuery2.FieldByName('id_tarif').Value;
                       IBTARIF_INFOID_TARIFMES.Value:=IBQuery2.FieldByName('id').Value;
                       IBTARIF_INFOID_TARVID.Value:=IBTARIF_VIDID.Value;
                       IBTARIF_INFOSPLAN.Value:=IBQSoftproect2.FieldByName('NORM').Value;
                       IBTARIF_INFOSFACT.Value:=IBQSoftproect2.FieldByName('FACT').Value;
                       IBTARIF_INFO.Post;
             end;
          end;



        IBQSoftproect2.Next;
      end;
      IBQSoftproect2.Active:=false;
      IBQuery2.Active:=false;
      Prores.cxProgressBar1.Position:=0;
      Application.ProcessMessages;





      Prores.Close;
      cxButton7.Click;
      messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);

end;

procedure TTarifs.cxButton6Click(Sender: TObject);
begin
  inherited;
  ExportGrid(cxGrid1);
end;

procedure TTarifs.cxButton7Click(Sender: TObject);
begin
  inherited;
  IBPOSL.Active:=false;
  IBPERIOD.Active:=false;
  IBUL.Active:=false;
  IBDOM.Active:=false;
//  IBTARIF.Active:=false;
  IBTARIF_COMP.Active:=false;
  IBTARIF_DOM.Active:=false;
  IBTARIF_MES.Active:=false;

  IBPOSL.Active:=true;
  IBPERIOD.Active:=true;
  IBUL.Active:=true;
  IBDOM.Active:=true;
//  IBTARIF.Active:=true;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=true;
  IBTARIF_MES.Active:=true;
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


procedure TTarifs.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  IBTARIF_COMP.Active:=false;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=false;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.Active:=true;
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
    IBTARIF_MES.Active:=false;
  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name from tarif_mes,tarif where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBTARIF_MES.Active:=true;
  Visible;
  IBTARIF_COMP.Active:=false;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=false;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.Active:=true;

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
    IBTARIF_MES.Active:=false;
  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name from tarif_mes,tarif where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIF_MES.Active:=true;
  Visible;
  IBTARIF_COMP.Active:=false;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=false;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.Active:=true;
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
  if IBTARIF_INFO.State in [dsInsert,dsEdit] then
  IBTARIF_INFO.Post;
  if IBTARIF_VID.State in [dsInsert,dsEdit] then
  IBTARIF_VID.Post;

  inherited;
end;

procedure TTarifs.Visible;
begin
  if IBPOSLWID.Value='ub' then
  begin
    cxGrid1DBTableView1TARIF_FACT.Visible:=true;
    cxGrid1DBTableView1TARIF_RN.Visible:=true;
    cxGrid1DBTableView1TARIF_RK.Visible:=true;
    cxGrid1DBTableView1NORMA.Visible:=false;
    cxGrid1DBTableView1END_BL.Visible:=true;
    cxGrid1DBTableView1END_L.Visible:=true;
    cxGrid1DBTableView1TARIF_FACT.Editing:=false;
    cxGrid1DBTableView1TARIF_END.Editing:=false;
    cxGrid1DBTableView1TARIF_END.Options.Editing:=false;
    cxButton2.Visible:=true;
  end
  else
  begin
    cxGrid1DBTableView1TARIF_FACT.Visible:=false;
    cxGrid1DBTableView1TARIF_RN.Visible:=false;
    cxGrid1DBTableView1TARIF_RK.Visible:=false;
    cxGrid1DBTableView1NORMA.Visible:=true;
    cxGrid1DBTableView1END_BL.Visible:=false;
    cxGrid1DBTableView1END_L.Visible:=false;
    cxGrid1DBTableView1TARIF_FACT.Editing:=true;
    cxGrid1DBTableView1TARIF_END.Editing:=true;
    cxGrid1DBTableView1TARIF_END.Options.Editing:=true;
    cxButton2.Visible:=false;
  end;
end;


procedure TTarifs.FormCreate(Sender: TObject);
begin
  inherited;

  IBTransaction1.Active:=true;
  IBPOSL.Active:=true;
  IBUL.Active:=true;
  IBDOM.Active:=true;
  IBPERIOD.Active:=true;
  IBSERVICE.Active:=true;
  IBSERVICE.Active:=true;
  IBTARIF_INFO.Active:=true;
  IBTARIF_VID.Active:=true;

  cxLookupComboBox1.EditValue:= IBPERIODDATA.Value;

  IBTARIF_MES.Active:=false;
  IBTARIF_MES.SelectSQL.Text:='select tarif_mes.* ,tarif.name from tarif_mes,tarif where tarif.id_posl=:pos and tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF_MES.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBTARIF_MES.Active:=true;
  Visible;
  IBTARIF_COMP.Active:=false;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarifmes=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=false;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
  IBTARIF_DOM.Active:=true;




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

procedure TTarifs.IBTARIF_MESTARIF_FACTChange(Sender: TField);
var res,res1:CURRENCY;
begin
  inherited;
  IBTARIF_MES.Edit;
  IBTARIF_MESFACT_BL.Value:=IBTARIF_MESFACT_BL.Value+(IBTARIF_MESTARIF_FACT.Value-tmpval);
  tmpval:=0;
    if IBPOSLWID.Value='ub' then
    begin
//      if IBTARIF_MESTARIF_FACT.Value>IBTARIF_MESTARIF_PLAN.Value then
//      begin
//         IBTARIF_MESTARIF_RK.Value:=IBTARIF_MESTARIF_PLAN.Value-IBTARIF_MESTARIF_FACT.Value-IBTARIF_MESTARIF_RN.Value;
//         IBTARIF_MESTARIF_END.Value:=IBTARIF_MESTARIF_PLAN.Value;
//      end
//      else
//      begin
         res:= IBTARIF_MESTARIF_PLAN.Value-IBTARIF_MESTARIF_FACT.Value;

         if res<0 then
         begin
              IBTARIF_MESTARIF_END.Value:=IBTARIF_MESTARIF_FACT.Value+res;
              IBTARIF_MESTARIF_RK.Value:=IBTARIF_MESTARIF_RN.Value+res;
         end
         else
         begin
           res1:=IBTARIF_MESTARIF_RN.Value+res;
           if res1>0 then
           begin
              IBTARIF_MESTARIF_RK.Value:=0;
              IBTARIF_MESTARIF_END.Value:=IBTARIF_MESTARIF_FACT.Value-IBTARIF_MESTARIF_RN.Value;
           end
           else
           begin
           IBTARIF_MESTARIF_RK.Value:=res1;
           IBTARIF_MESTARIF_END.Value:=IBTARIF_MESTARIF_FACT.Value+res;
           end;
         end;

         IBTARIF_MESTARIF_END.Value:=RoundTo(IBTARIF_MESTARIF_END.Value,-2);

         res:=IBTARIF_MESTARIF_FACT.Value-IBTARIF_MESFACT_BL.Value;
         if res>0 then
         begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIF_MESID.Value,0]),[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIF_MESTARIF_END.Value-res;
             IBTARIF_COMP.Post;
           end
           else
           begin
//             IBTARIF_COMP.Insert;
//             IBTARIF_COMPID_TARIF.Value:=IBTARIFUPDID_TARIF.Value;
//             IBTARIF_COMPID_TARIFMES.Value:=IBTARIFUPDID.Value;
//             IBTARIF_COMPNAME.Value:=IBTARIFUPDPOSL.Value+' '+IBTARIFUPDDOM.Value;
//             IBTARIF_COMPSUMM.Value:=IBTARIFUPDTARIF_END.Value-res;
//             IBTARIF_COMPFL_LIFT.Value:=0;
//             IBTARIF_COMPNORMA.Value:=IBTARIFUPDNORMA.Value;
//             IBTARIF_COMP.Post;
           end;
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIF_MESID.Value,1]),[]) then
           begin
           IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=res;
             IBTARIF_COMP.Post;
           end
           else
           begin
//             IBTARIF_COMP.Insert;
//             IBTARIF_COMPID_TARIF.Value:=IBTARIFUPDID_TARIF.Value;
//             IBTARIF_COMPID_TARIFMES.Value:=IBTARIFUPDID.Value;
//             IBTARIF_COMPNAME.Value:='Лiфт '+IBTARIFUPDDOM.Value;
//             IBTARIF_COMPSUMM.Value:=res;
//             IBTARIF_COMPFL_LIFT.Value:=1;
//             IBTARIF_COMPNORMA.Value:=IBTARIFUPDNORMA.Value;
//             IBTARIF_COMP.Post;
           end;
         end
         else
         begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES;FL_LIFT', VarArrayOf([IBTARIF_MESID.Value,0]),[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIF_MESTARIF_END.Value-res;
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

//      end;

    end
    else
    begin
           IBTARIF_COMP.First;
           if IBTARIF_COMP.Locate('ID_TARIFMES', IBTARIF_MESID.Value,[]) then
           begin
             IBTARIF_COMP.Edit;
             IBTARIF_COMPSUMM.Value:=IBTARIF_MESTARIF_END.Value;
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
  IBTARIF_MES.Post;
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
