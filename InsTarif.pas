unit InsTarif;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMDIChild, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, IBX.IBDatabase, dxStatusBar,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  IBX.IBCustomDataSet, cxLabel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBLabel,
  cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox, IBX.IBQuery, cxCalc,
  cxCheckBox;

type
  TInsTar = class(TAllMDICh)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    IBTARIF: TIBDataSet;
    DSTARIF: TDataSource;
    IBTARIF_OTHER: TIBDataSet;
    DSTARIF_OTHER: TDataSource;
    cxGridDBTableView1ID_OTHER: TcxGridDBColumn;
    cxGridDBTableView1PLOS_BB: TcxGridDBColumn;
    cxLabel5: TcxLabel;
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
    cxGridDBTableView1ID_VIDAB: TcxGridDBColumn;
    cxGridDBTableView1ID_DOM: TcxGridDBColumn;
    IBQuery1: TIBQuery;
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
    IBTARIF_MESEND_BL: TIBBCDField;
    IBTARIF_MESEND_L: TIBBCDField;
    IBTARIF_MESLICH_PN: TIBBCDField;
    IBTARIF_MESLICH_PK: TIBBCDField;
    IBTARIF_MESNOTE: TIBStringField;
    IBTARIF_MESPLOS_BBI: TIBBCDField;
    IBTARIF_MESNSER_LICH: TIBStringField;
    IBTARIF_MESID_KOTEL: TIntegerField;
    IBTARIF_MESPLOS_BB: TIBBCDField;
    IBTARIF_MESNAME: TIBStringField;
    IBKOTEL: TIBDataSet;
    DSKOTEL: TDataSource;
    IBKOTELID: TIntegerField;
    IBKOTELNAME: TIBStringField;
    IBTARIFID: TIntegerField;
    IBTARIFNAME: TIBStringField;
    IBTARIFID_POSL: TIntegerField;
    IBTARIF_DOM1: TIBDataSet;
    DSTARIF_DOM1: TDataSource;
    cxGrid1DBTableView1ID_DOM: TcxGridDBColumn;
    IBTARIF_DOM1ID: TIntegerField;
    IBTARIF_DOM1ID_TARIF: TIntegerField;
    IBTARIF_DOM1ID_TARIFMES: TIntegerField;
    IBTARIF_DOM1ID_DOM: TIntegerField;
    IBTARIF_DOM1NAME: TIBStringField;
    IBTARIF_DOM1PLOS_BB: TIBBCDField;
    IBTARIF_DOM1ID_VIDAB: TIntegerField;
    cxGrid1DBTableView1PLOS_BB: TcxGridDBColumn;
    cxGrid1DBTableView1ID_VIDAB: TcxGridDBColumn;
    Panel5: TPanel;
    cxDBMemo1: TcxDBMemo;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2NAME: TcxGridDBColumn;
    cxGridDBTableView2NSER_LICH: TcxGridDBColumn;
    cxGridDBTableView2PLOS_BB: TcxGridDBColumn;
    cxGridDBTableView2PLOS_OBL: TcxGridDBColumn;
    cxGridDBTableView2ID_KOTEL: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel6: TPanel;
    cxLabel3: TcxLabel;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton14: TcxButton;
    Panel7: TPanel;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxLabel1: TcxLabel;
    IBUPDTDOM: TIBDataSet;
    DSUPDTDOM: TDataSource;
    IBUPDTDOMID: TIntegerField;
    IBUPDTDOMID_TARIF: TIntegerField;
    IBUPDTDOMID_TARIFMES: TIntegerField;
    IBUPDTDOMID_DOM: TIntegerField;
    IBUPDTDOMNAME: TIBStringField;
    IBQuery2: TIBQuery;
    IBQuery2ID_OTHER: TIntegerField;
    IBQuery2PLOS_OB: TIBBCDField;
    IBQuery2PLOS_BB: TIBBCDField;
    IBQuery2ID_TIPPR: TIntegerField;
    IBQuery2NAMEO: TIBStringField;
    IBQuery2ID_VIDAB: TIntegerField;
    IBQuery2EDRPOU: TIBStringField;
    IBQuery2DOMNAME: TIBStringField;
    IBQuery2ID_DOM: TIntegerField;
    IBQuery2NAME: TIBStringField;
    DSQuery2: TDataSource;
    IBQuery2ID: TIntegerField;
    IBTARIF_MESID_POSL: TIntegerField;
    cxDBLabel2: TcxDBLabel;
    IBQuery3: TIBQuery;
    DSQuery3: TDataSource;
    IBQuery3ID: TIntegerField;
    IBQuery3NAME: TIBStringField;
    IBQuery3ID_UL: TIntegerField;
    IBQuery3DOM: TIBStringField;
    IBQuery3CH: TSmallintField;
    IBQuery3ID_HOUSE: TIntegerField;
    IBQuery3PLOS_OB: TIBBCDField;
    IBQuery3PLOS_BB: TIBBCDField;
    IBQuery3ID_VIDAB: TIntegerField;
    IBQuery3SCHET1: TIBStringField;
    IBQuery3SCHET2: TIBStringField;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    cxDBCheckBox1: TcxDBCheckBox;
    IBTARIF_MESMZK: TIBBCDField;
    IBTARIF_MESBORG_VIDH: TIBBCDField;
    IBTARIF_MESNO_LICH: TIntegerField;
    IBTARIF_MESPLOS_IN: TIBBCDField;
    IBTARIF_MESPLOS_MZK: TIBBCDField;
    cxGridDBTableView2PLOS_IN: TcxGridDBColumn;
    cxGridDBTableView2PLOS_MZK: TcxGridDBColumn;
    IBTARIF_OTHERSUMOT: TIBBCDField;
    IBTARIF_OTHERSUMOTPDV: TIBBCDField;
    IBTARIF_OTHERSENDPDV: TIBBCDField;
    IBTARIF_OTHERLICH_PN: TIBBCDField;
    IBTARIF_OTHERLICH_PK: TIBBCDField;
    IBTARIF_OTHERLICH_GK: TIBBCDField;
    IBTARIF_OTHERLICH_PN2: TIBBCDField;
    IBTARIF_OTHERLICH_PK2: TIBBCDField;
    IBTARIF_OTHERLICH_GK2: TIBBCDField;
    IBTARIF_OTHERFL_LICH: TIntegerField;
    cxGridDBTableView1FL_LICH: TcxGridDBColumn;
    IBTARIF_MESSUMOT: TIBBCDField;
    IBTARIF_MESSUMOTPDV: TIBBCDField;
    IBTARIF_MESLICH_GK: TIBBCDField;
    IBTARIF_MESTARIF_ENDPDV: TIBBCDField;
    IBTARIF_MESLICH_PN2: TIBBCDField;
    IBTARIF_MESLICH_PK2: TIBBCDField;
    IBTARIF_MESLICH_GK2: TIBBCDField;
    IBTARIF_MESID_VIDCENA: TIntegerField;
    IBTARIF_OTHERID_VIDCENA: TIntegerField;
    cxGridDBTableView2ID_VIDCENA: TcxGridDBColumn;
    cxGridDBTableView1ID_VIDCENA: TcxGridDBColumn;
    IBTARIF_MESPROCENT: TIBBCDField;
    cxGridDBTableView2PROCENT: TcxGridDBColumn;
    IBTARIF_OTHERCENA1: TIBBCDField;
    IBTARIF_OTHERCENA2: TIBBCDField;
    IBTARIF_OTHERMZK_GK1: TIBBCDField;
    IBTARIF_OTHERMZK_GK2: TIBBCDField;
    IBTARIF_OTHERFL_MZK: TIntegerField;
    cxGridDBTableView1FL_MZK: TcxGridDBColumn;
    IBTARIF_MESCENA1: TIBBCDField;
    IBTARIF_MESCENA2: TIBBCDField;
    IBTARIF_MESFL_2CENA: TIntegerField;
    IBTARIF_MESMZK_GK1: TIBBCDField;
    IBTARIF_MESMZK_GK2: TIBBCDField;
    IBTARIF_MESID_VIDAB: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IBTARIFBeforePost(DataSet: TDataSet);
    procedure IBTARIF_OTHERBeforePost(DataSet: TDataSet);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure IBTARIF_OTHERAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1ID_DOMPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure IBTARIF_MESNAMEChange(Sender: TField);
    procedure cxGridDBTableView2FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure IBTARIF_DOM1AfterPost(DataSet: TDataSet);
    procedure Visible;
    procedure cxButton11Click(Sender: TObject);
    procedure cxGridDBTableView1ID_OTHERPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton14Click(Sender: TObject);
    procedure cxGrid1DBTableView1ID_DOMPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure IBTARIF_MESBeforePost(DataSet: TDataSet);
    procedure IBTARIF_DOM1BeforePost(DataSet: TDataSet);
    procedure IBUPDTDOMBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView2PLOS_BBPropertiesEditValueChanged(
      Sender: TObject);
    procedure IBTARIF_MESPLOS_BBChange(Sender: TField);
    procedure IBTARIF_MESAfterPost(DataSet: TDataSet);
    procedure cxDBCheckBox1Click(Sender: TObject);
    procedure IBTARIFAfterPost(DataSet: TDataSet);
    procedure IBUPDTDOMAfterPost(DataSet: TDataSet);
  private

    { Private declarations }
  public
  procedure Update(idmes,iddom:integer);
  procedure Calcplos(idmes:integer);
    { Public declarations }
  end;

var
  InsertTar: TInsTar;
  ChangeTar: TInsTar;
  fl_postt:integer;
  poslid:integer;
  poslname,poslwid:string;

implementation

{$R *.dfm}

uses TarifForm, MainForm;

procedure TInsTar.Calcplos(idmes:integer);
var razn,sumother:Double;
    sumplos:Double;
begin

  if poslwid='ot' then
  begin

    if IBTARIF_MES.RecordCount=1 then
    begin

      IBQuery1.Close;
      IBQuery1.SQL.Text:='select sum(DOM.PLOS_BB) from TARIF_DOM ,DOM where TARIF_dom.id_dom=DOM.id and TARIF_dom.id_tarifmes=:idmes';
      IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
      IBQuery1.Open;
      IBQuery1.First;
      sumplos:=IBQuery1.FieldByName('sum').AsFloat;
//      if IBTARIF_MESPLOS_BB.Value<>IBQuery1.FieldByName('sum').AsFloat then
//      begin
//      IBTARIF_MES.Edit;
//      IBTARIF_MESPLOS_BB.Value:=IBQuery1.FieldByName('sum').AsFloat;
//      IBTARIF_MES.Post;
//      end;

          IBQuery1.Close;
//          IBQuery1.SQL.Text:='update TARIF_MES set PLOS_BBI=PLOS_BB-'+FloatToStrF(sumother, ffGeneral, 10, 2)+' where id=:idmes';
          IBQuery1.SQL.Text:='update TARIF_MES set PLOS_BB=:sum where id=:idmes';
          IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
          IBQuery1.ParamByName('sum').Value:=sumplos;
          IBQuery1.ExecSQL;
          fl_postt:=1;






          IBQuery1.Close;
          IBQuery1.SQL.Text:='select sum(DOM_OTHER.PLOS_BB) from TARIF_OTHER ,DOM_OTHER where TARIF_OTHER.id_domother=DOM_OTHER.id and TARIF_OTHER.id_tarifmes=:idmes';
          IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
          IBQuery1.Open;
          IBQuery1.First;
          sumother:=IBQuery1.FieldByName('sum').AsFloat;
          IBQuery1.Close;
//          IBQuery1.SQL.Text:='update TARIF_MES set PLOS_BBI=PLOS_BB-'+FloatToStrF(sumother, ffGeneral, 10, 2)+' where id=:idmes';
          IBQuery1.SQL.Text:='update TARIF_MES set PLOS_BBI=PLOS_BB-:sum where id=:idmes';
          IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
          IBQuery1.ParamByName('sum').Value:=sumother;
          IBQuery1.ExecSQL;
          fl_postt:=1;

    end;

    if IBTARIF_MES.RecordCount>1 then
    begin

      razn:=IBTARIF_DOM1PLOS_BB.AsFloat-IBTARIF_MESPLOS_BB.AsFloat;
      IBQuery4.Close;
      IBQuery4.SQL.Text:='select TARIF_MES.* ,TARIF.NAME, TARIF.ID_POSL from TARIF_MES, TARIF, TARIF_DOM'+
                             ' where tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif and tarif_mes.id=tarif_dom.id_tarifmes and tarif.id_posl=:posl and tarif_dom.id_dom=:iddom';

      IBQuery4.ParamByName('iddom').Value:=IBTARIF_DOM1ID_DOM.AsInteger;
      IBQuery4.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
      IBQuery4.ParamByName('posl').Value:=poslid;
      IBQuery4.Open;
        IBQuery4.First;
        while not IBQuery4.Eof do
        begin
          sumplos:=sumplos+IBQuery4.FieldByName('PLOS_BB').AsFloat;
          IBQuery1.Close;
          IBQuery1.SQL.Text:='select sum(DOM_OTHER.PLOS_BB) from TARIF_OTHER ,DOM_OTHER where TARIF_OTHER.id_domother=DOM_OTHER.id and TARIF_OTHER.id_tarifmes=:idmes';
          IBQuery1.ParamByName('idmes').Value:=IBQuery4.FieldByName('id').Value;
          IBQuery1.Open;
          IBQuery1.First;
          sumother:=IBQuery1.FieldByName('sum').AsFloat;
          IBQuery1.Close;
//          IBQuery1.SQL.Text:='update TARIF_MES set PLOS_BBI=PLOS_BB-'+FloatToStrF(sumother, ffGeneral, 10, 2)+' where id=:idmes';
          IBQuery1.SQL.Text:='update TARIF_MES set PLOS_BBI=PLOS_BB-:sum where id=:idmes';
          IBQuery1.ParamByName('idmes').Value:=IBQuery4.FieldByName('id').Value;
          IBQuery1.ParamByName('sum').Value:=sumother;
          IBQuery1.ExecSQL;
          fl_postt:=1;

        IBQuery4.Next;
        end;







//         IBTARIF_MES.First;
//        while not IBTARIF_MES.Eof do
//        begin
//          sumplos:=sumplos+IBTARIF_MESPLOS_BB.AsFloat;
//          IBTARIF_MES.Edit;
//          IBQuery1.Close;
//          IBQuery1.SQL.Text:='select sum(DOM_OTHER.PLOS_BB) from TARIF_OTHER ,DOM_OTHER where TARIF_OTHER.id_domother=DOM_OTHER.id and TARIF_OTHER.id_tarifmes=:idmes';
//          IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
//          IBQuery1.Open;
//          IBQuery1.First;
//          if (IBTARIF_MESPLOS_BB.AsFloat-IBQuery1.FieldByName('sum').AsFloat)>0 then
//             IBTARIF_MESPLOS_BBI.Value:=IBTARIF_MESPLOS_BB.AsFloat-IBQuery1.FieldByName('sum').AsFloat
//          else IBTARIF_MESPLOS_BBI.Value:=0;
//          IBTARIF_MES.Post;
//        IBTARIF_MES.Next;
//        end;

      IBQuery4.Close;
      IBQuery4.SQL.Text:='select sum(TARIF_MES.PLOS_BB) from TARIF_MES, TARIF, TARIF_DOM'+
                             ' where tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif and tarif_mes.id=tarif_dom.id_tarifmes and tarif.id_posl=:posl and tarif_dom.id_dom=:iddom';

      IBQuery4.ParamByName('iddom').Value:=IBTARIF_DOM1ID_DOM.AsInteger;
      IBQuery4.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
      IBQuery4.ParamByName('posl').Value:=poslid;
      IBQuery4.Open;
      IBQuery4.First;

      IBQuery1.Close;
      IBQuery1.SQL.Text:='select DOM.PLOS_BB from TARIF_DOM ,DOM where TARIF_dom.id_dom=DOM.id and TARIF_dom.id_tarifmes=:idmes';
      IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
      IBQuery1.Open;
      IBQuery1.First;
//      if sumplos<>IBQuery1.FieldByName('PLOS_BB').AsFloat then
      if IBQuery4.FieldByName('sum').AsFloat<>IBQuery1.FieldByName('PLOS_BB').AsFloat then
         Application.MessageBox('Опалювальна площа по лічильникам не сходиться з опалювальной площею по будинку. Треба розділити опалювальну площу по будинку між лічильниками щоб їхня сума збігалася','Помилка',16);


    end;
  end;

//    IBTARIF_MES.Locate('id',idmes,[]);
end;

procedure TInsTar.Visible;
begin


    cxGridDBTableView2NSER_LICH.Visible:=false;
    cxGridDBTableView2PLOS_BB.Visible:=false;
    cxGridDBTableView2PLOS_OBL.Visible:=false;

    cxGridDBTableView2ID_KOTEL.Visible:=false;
    cxGridDBTableView1PLOS_BB.Visible:=false;
    cxGrid1DBTableView1PLOS_BB.Visible:=false;
    cxDBCheckBox1.Visible:=false;

    cxGridDBTableView2PLOS_IN.Visible:=false;
    cxGridDBTableView2PLOS_MZK.Visible:=false;
    cxGridDBTableView2PROCENT.Visible:=false;
    cxGridDBTableView2ID_VIDCENA.Visible:=false;
  if poslwid='ot' then
  begin
    cxGridDBTableView2NSER_LICH.Visible:=true;
    cxGridDBTableView2PLOS_BB.Visible:=true;
    cxGridDBTableView2PLOS_OBL.Visible:=true;
    cxGridDBTableView2ID_KOTEL.Visible:=true;
    cxGridDBTableView1PLOS_BB.Visible:=true;
    cxGrid1DBTableView1PLOS_BB.Visible:=true;
    cxDBCheckBox1.Visible:=true;
    cxGridDBTableView2PLOS_IN.Visible:=true;
    cxGridDBTableView2PLOS_MZK.Visible:=true;
    cxGridDBTableView2PROCENT.Visible:=true;
    cxGridDBTableView2ID_VIDCENA.Visible:=true;
  end;



end;

procedure TInsTar.Update(idmes,iddom:integer);
var str:string;
    tardomid,tarotherid,idvidab:integer;
    sumplos:Double;
begin
    tardomid:=IBTARIF_DOM1ID.Value;
    tarotherid:=IBTARIF_OTHERID.Value;
    IBTARIF_DOM1.Close;
    IBTARIF_DOM1.ParamByName('idmes').Value:=idmes;
    IBTARIF_DOM1.Open;


  if (poslwid='ot') and (iddom<>0) then
  begin
  IBTARIF_MES.Close;
  IBTARIF_MES.SelectSQL.Text:='select TARIF_MES.* ,TARIF.NAME, TARIF.ID_POSL from TARIF_MES, TARIF, TARIF_DOM'+
                         ' where tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif and tarif_mes.id=tarif_dom.id_tarifmes and tarif.id_posl=:posl and tarif_dom.id_dom=:iddom';

  IBTARIF_MES.ParamByName('iddom').Value:=iddom;
  IBTARIF_MES.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
  IBTARIF_MES.ParamByName('posl').Value:=poslid;
  IBTARIF_MES.Open;
  end
  else
  begin

  IBTARIF_MES.Close;
  IBTARIF_MES.SelectSQL.Text:='select TARIF_MES.* ,TARIF.NAME, TARIF.ID_POSL from TARIF_MES, TARIF where tarif_mes.id=:idmes and tarif.id=tarif_mes.id_tarif';
  IBTARIF_MES.ParamByName('idmes').Value:=idmes;
  IBTARIF_MES.Open;
  end;

//  sumplos:=0;
//  if poslwid='ot' then
//  begin
//    if IBTARIF_MES.RecordCount>1 then
//    begin
//         IBTARIF_MES.First;
//        while not IBTARIF_MES.Eof do
//        begin
//          sumplos:=sumplos+IBTARIF_MESPLOS_BB.AsFloat;
//        IBTARIF_MES.Next;
//        end;
//      IBQuery1.Close;
//      IBQuery1.SQL.Text:='select sum(DOM.PLOS_BB) from TARIF_DOM ,DOM where TARIF_dom.id_dom=DOM.id and TARIF_dom.id_tarifmes=:idmes';
//      IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
//      IBQuery1.Open;
//      IBQuery1.First;
//      if sumplos<>IBQuery1.FieldByName('sum').AsFloat then
//         Application.MessageBox('Опалювальна площа по лічильникам не сходиться з опалювальной площею по будинку. Треба розділити опалювальну площу по будинку між лічильниками щоб їхня сума збігалася','Помилка',16);
//
//
//    end;
//  end;



  IBTARIF.Open;

//  IBTARIF_DOM1.Close;
//  IBTARIF_DOM1.ParamByName('idmes').Value:=idmes;
//  IBTARIF_DOM1.Open;
  IBTARIF_OTHER.Close;
  IBTARIF_OTHER.ParamByName('idmes').Value:=idmes;
  IBTARIF_OTHER.Open;
  IBQuery2.Close;
  IBQuery2.ParamByName('idmes').Value:=idmes;
  IBQuery2.Open;
  IBQuery3.Close;
//  IBQuery3.ParamByName('idvidab').Value:=idmes;
  IBQuery3.Open;


//  Calcplos;







  IBTARIF_MES.Locate('id',idmes,[]);
  IBTARIF_DOM1.Locate('id',tardomid,[]);
  IBTARIF_OTHER.Locate('id',tarotherid,[]);

//  IBQuery3.Close;
//  IBQuery3.ParamByName('idvidab').Value:=IBTARIF_MESID_VIDAB.Value;
//  IBQuery3.Open;





end;



procedure TInsTar.cxButton10Click(Sender: TObject);
begin
  inherited;
  IBTARIF_Other.Insert;
  IBTARIF_Other.Edit;
  IBTARIF_OtherID_TARIF.Value:=IBTARIF_MESID_TARIF.Value;
  IBTARIF_OtherID_TARIFMES.Value:=IBTARIF_MESID.Value;
  IBTARIF_Other.Post;


end;

procedure TInsTar.cxButton11Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити іншого?'),pchar(''),36) of
  IDYES: begin
  IBTARIF_OTHER.Delete;
  fl_postt:=1;
  Calcplos(IBTARIF_MESID.Value);
  Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
  end;
  end;
end;

procedure TInsTar.cxButton12Click(Sender: TObject);
var idd:integer;
begin
  inherited;

  if not IBTARIF_MES.RecordCount=0 then
  begin
   Application.MessageBox('Додайте спочатку тариф','Помилка',16);
   exit;
  end;

  if (poslwid='ot') and (IBTARIF_MESID_VIDCENA.Value=0) then
  begin
   Application.MessageBox('Виберіть вид ціни','Помилка',16);
   exit;
  end;


  if (poslwid='ot') and (IBTARIF_DOM1.RecordCount<>0) then
      exit;

  if (poslwid='ub') and (IBTARIF_DOM1.RecordCount<>0) then
      exit;


      IBTARIF_DOM1.Insert;
      IBTARIF_DOM1.Edit;
      IBTARIF_DOM1ID_TARIF.Value:=IBTARIF_MESID_TARIF.Value;
      IBTARIF_DOM1ID_TARIFMES.Value:=IBTARIF_MESID.Value;
      IBTARIF_DOM1.Post;
      IBTARIF_DOM1.Close;
      IBTARIF_DOM1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
      IBTARIF_DOM1.Open;
//      IBTARIF_DOM1.Locate('id',idd,[]);
//  Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
end;

procedure TInsTar.cxButton13Click(Sender: TObject);
var res:integer;
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити будинок? Інші абоненти по цьому будинку буде видалено!'),pchar(''),36) of
  IDYES:begin
      res:= IBTARIF_DOM1ID_DOM.Value;
             IBQuery1.Close;
             IBQuery1.SQL.Text:='delete from TARIF_OTHER where TARIF_OTHER.ID_DOMOTHER in '+
                                '(select id from dom_other where id_dom=:iddom) '+
                                'and TARIF_OTHER.ID_TARIFMES in (select TARIF_MES.ID from TARIF_MES, TARIF, TARIF_DOM where tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif and tarif_mes.id=tarif_dom.id_tarifmes and tarif.id_posl=:posl and tarif_dom.id_dom=:iddom)';
             IBQuery1.ParamByName('iddom').Value:=res;
             IBQuery1.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
             IBQuery1.ParamByName('posl').Value:=poslid;
             IBQuery1.ExecSQL;
          if (poslwid='ot') and (IBTARIF_MES.RecordCount>1) then
          begin
            IBTARIF_DOM1.Edit;
            IBTARIF_DOM1ID_DOM.Value:=1;
            IBTARIF_DOM1.Post;
          end
          else
          begin
            IBTARIF_DOM1.Delete;
            Calcplos(IBTARIF_MESID.Value);
            Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
          end;

          fl_postt:=1;



          end;


  end;

end;

procedure TInsTar.cxButton14Click(Sender: TObject);
begin
  inherited;
 IBQuery5.Close;
 IBQuery5.SQL.Text:='select * from'+
' (select '+
    'dom_other.id,'+
    'dom_other.id_other,'+
    'dom_other.plos_ob,'+
    'dom_other.plos_bb,'+
    'dom_other.id_tippr,'+
    'other.name nameo,'+
    'other.id_vidab,'+
    'other.id idother,'+
    'other.edrpou,'+
    'dom.name domname,'+
    'tarif_dom.id_dom,'+
    'tarif.name'+
' from tarif_mes tm'+
   ' inner join tarif_dom on (tm.id = tarif_dom.id_tarifmes)'+
   ' inner join dom_other on (tarif_dom.id_dom = dom_other.id_dom)'+
   ' inner join other on (dom_other.id_other = other.id)'+
   ' inner join dom on (dom_other.id_dom = dom.id)'+
   ' inner join tarif on (tm.id_tarif = tarif.id)'+
' where tm.id = :idmes) aa'+
' where idother not in'+
' (select OTHER.id from TARIF_OTHER, DOM_OTHER, OTHER, TARIF, TARIF_MES'+
' where TARIF_OTHER.id_domother=dom_other.ID and dom_other.id_other=other.id and TARIF_OTHER.id_tarif=tarif.id'+
' and TARIF_MES.id=:idmes'+
' and tarif_other.id_tarifmes=tarif_mes.id and tarif_mes.data=:dt)';
 IBQuery5.ParamByName('dt').Value:=Main.IBPERIODDATA.Value;
 IBQuery5.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
// IBQuery5.ParamByName('idposl').Value:=IBTARIF_MESID_POSL.Value;
 IBQuery5.Open;

 while not IBQuery5.Eof do
 begin
  IBTARIF_Other.Insert;
  IBTARIF_Other.Edit;
  IBTARIF_OtherID_TARIF.Value:=IBTARIF_MESID_TARIF.Value;
  IBTARIF_OtherID_TARIFMES.Value:=IBTARIF_MESID.Value;
  IBTARIF_OTHERID_DOMOTHER.Value:=IBQuery5.FieldByName('id').Value;
  IBTARIF_Other.Post;
  IBQuery5.Next;
 end;


end;

procedure TInsTar.cxButton7Click(Sender: TObject);
begin
  inherited;
  Calcplos(IBTARIF_MESID.Value);
  Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
end;

procedure TInsTar.cxButton8Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити тариф?'),pchar(''),36) of
  IDYES: begin
  IBTARIF_MES.Delete;
  fl_postt:=1;
  Calcplos(IBTARIF_MESID.Value);
  Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
  end;

  end;
end;

procedure TInsTar.cxButton9Click(Sender: TObject);
var iddom:integer;
    nametarif:string;
begin
  inherited;
iddom:=0;
    if (IBTARIF_MES.RecordCount=0) or (poslwid='ot') then
    begin
      if (IBTARIF_MES.RecordCount<>0) and (poslwid='ot') and (IBTARIF_DOM1ID_DOM.Value=0) then
      begin
        Application.MessageBox('Виберіть будинок','Помилка',16);
        exit;
      end;
      if (IBTARIF_MES.RecordCount<>0) and (poslwid='ot') and (IBTARIF_MESNO_LICH.Value=1) then
      begin
        Application.MessageBox('Тариф без лічильників неможе бути використаний в подвійному тарифі !!! ','Помилка',16);
        exit;
      end;
      if (IBTARIF_MES.RecordCount<>0) and (poslwid='ot') then
      begin
          iddom:=IBTARIF_DOM1ID_DOM.Value;
      end;


      IBTARIF.Insert;
      IBTARIF.Edit;
      IBTARIFNAME.Value:=poslname+' '+IBTARIF_DOM1NAME.AsString;
      IBTARIFID_POSL.Value:=poslid;
      IBTARIF.Post;
      IBTARIF_MES.Insert;
      IBTARIF_MES.Edit;
      IBTARIF_MESID_TARIF.Value:=IBTARIFID.Value;
      IBTARIF_MESDATA.Value:=main.IBPERIODDATA.Value;
      IBTARIF_MESID_VIDCENA.Value:=IBTARIF_DOM1ID_VIDAB.Value;
      IBTARIF_MES.Post;

        IBTARIF_DOM1.Insert;
        IBTARIF_DOM1.Edit;
        IBTARIF_DOM1ID_TARIF.Value:=IBTARIFID.Value;
        IBTARIF_DOM1ID_TARIFMES.Value:=IBTARIF_MESID.Value;
      if (poslwid='ot') then
      begin
        IBTARIF_DOM1ID_DOM.Value:=iddom;
      end;
        IBTARIF_DOM1.Post;
    //  end;
    //  if IBTARIF_DOM1.RecordCount=0 then
    //      Application.MessageBox('Щоб сформувати назву додайте будинок','Інфо',16)
//      Update(IBTARIF_MESID.Value,iddom);
    end;
end;

procedure TInsTar.cxDBCheckBox1Click(Sender: TObject);
begin
  inherited;
  if cxDBCheckBox1.Checked then
  begin
    if IBTARIF_MES.RecordCount>1 then
    begin
      cxDBCheckBox1.Checked:=false;
      Application.MessageBox('Тариф без лічильників неможе бути використаний в подвійному тарифі !!! ','Ошибка',16)
    end;
  end;
  if not cxDBCheckBox1.Checked then
  begin
    if IBTARIF_DOM1.RecordCount>1 then
    begin
      cxDBCheckBox1.Checked:=true;
      Application.MessageBox('Тариф з лічильником використовує тільки один будинок. Видаліть лишні будинки !!! ','Ошибка',16)
    end;
  end;
  if cxDBCheckBox1.Checked then
     IBTARIF_MESNSER_LICH.Value:='NO';
end;

procedure TInsTar.cxGrid1DBTableView1ID_DOMPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (IBTARIF_DOM1ID_DOM.AsInteger>1) and (IBTARIF_OTHER.RecordCount>0) then
  begin
    case MessageBox(handle,pchar('Ви дійсно бажаєте змінити будинок? Інші абоненти по цьому будинку буде видалено!'),pchar(''),36) of
    IDNO: IBTARIF_DOM1.Cancel;
    end;
  end;
end;

procedure TInsTar.cxGrid1DBTableView1ID_DOMPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var ress,res:Variant;
    res1:Boolean;
begin
  inherited;
 res:=cxGrid1DBTableView1ID_DOM.EditValue;
 ress:=Tarifs.IBDOM.Lookup('name',DisplayValue,'id');
 IBQuery1.Close;
 IBQuery1.SQL.Text:='select TARIF_DOM.* from TARIF_DOM, TARIF_MES, TARIF, POSL where TARIF_DOM.id_tarifmes=TARIF_MES.ID and TARIF_MES.DATA=:dt and TARIF_DOM.id_tarif=TARIF.id and TARIF.id_posl=:idposl and TARIF_DOM.id_dom=:iddom';
 IBQuery1.ParamByName('dt').Value:=Main.IBPERIODDATA.Value;
 IBQuery1.ParamByName('idposl').Value:=IBTARIF_MESID_POSL.Value;
 IBQuery1.ParamByName('iddom').Value:=ress;
 IBQuery1.Open;

 if IBQuery1.RecordCount<>0 then
 begin
    Error:=true;
    ErrorText:='Такий будинок вже додано до цієї послуги! '+
    'Щоб відмінити вибране значення натисніть ESC';
 end;

 if not Error then
 begin


 IBQuery1.Close;
 IBQuery1.SQL.Text:='delete from TARIF_OTHER where TARIF_OTHER.ID_DOMOTHER in '+
                    '(select id from dom_other where id_dom=:iddom) '+
                    'and TARIF_OTHER.ID_TARIFMES in (select TARIF_MES.ID from TARIF_MES, TARIF, TARIF_DOM where tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif and tarif_mes.id=tarif_dom.id_tarifmes and tarif.id_posl=:posl and tarif_dom.id_dom=:iddom)';
 IBQuery1.ParamByName('iddom').Value:=res;
 IBQuery1.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
 IBQuery1.ParamByName('posl').Value:=poslid;
 IBQuery1.ExecSQL;
// IBTARIF_MES.Edit;
// IBTARIF_MESPLOS_BB.Value:=IBTARIF_DOM1PLOS_BB.AsFloat;
// IBTARIF_MES.Post;
 end;

end;

procedure TInsTar.cxGridDBTableView1ID_OTHERPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var ress,res:Variant;
    res1:Boolean;
begin

 IBQuery1.Close;
 IBQuery1.SQL.Text:='select TARIF_OTHER.id_domother,TARIF_OTHER.id_tarifmes,OTHER.name from TARIF_OTHER, DOM_OTHER, OTHER, TARIF, TARIF_MES '+
                    'where TARIF_OTHER.id_domother=dom_other.ID and dom_other.id_other=other.id and TARIF_OTHER.id_tarif=tarif.id'+
                    ' and tarif_mes.id=:idmes'+
                    ' and tarif_other.id_tarifmes=tarif_mes.id and tarif_mes.data=:dt and other.name=:nameother';
 IBQuery1.ParamByName('dt').Value:=Main.IBPERIODDATA.Value;
 IBQuery1.ParamByName('nameother').Value:=DisplayValue;
// IBQuery1.ParamByName('idposl').Value:=IBTARIF_MESID_POSL.Value;
  IBQuery1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
 IBQuery1.Open;

 if IBQuery1.RecordCount<>0 then
 begin
    Error:=true;
    ErrorText:='Такий абонент вже додано до цієї послуги! '+
    'Щоб відмінити вибране значення натисніть ESC';
 end;

// if not Error then
//    Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);

end;

procedure TInsTar.cxGridDBTableView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  IBTARIF_DOM1.Close;
  IBTARIF_DOM1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBTARIF_DOM1.Open;
  IBTARIF_OTHER.Close;
  IBTARIF_OTHER.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBTARIF_OTHER.Open;
  IBQuery2.Close;
  IBQuery2.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBQuery2.Open;
  IBQuery3.Close;
//  IBQuery3.ParamByName('idvidab').Value:=IBTARIF_MESID_VIDAB.Value;
  IBQuery3.Open;

end;

procedure TInsTar.cxGridDBTableView2PLOS_BBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//Calcplos(IBTARIF_MESID.Value);
//Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
end;

procedure TInsTar.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if fl_postt=1 then
begin
  Tarifs.Update;
  Tarifs.IBTARIF_MES.Locate('id',IBTARIF_MESID.Value,[]);
end;

if  (InsertTar <> nil) and (InsertTar.Active) then InsertTar:=nil;
if  (ChangeTar <> nil) and (ChangeTar.Active) then ChangeTar:=nil;
  inherited;

end;

procedure TInsTar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

    inherited;
  if IBTARIF.State in [dsInsert,dsEdit] then
  IBTARIF.Post;
  if IBTARIF_DOM1.State in [dsInsert,dsEdit] then
  IBTARIF_DOM1.Post;
  if IBTARIF_OTHER.State in [dsInsert,dsEdit] then
  IBTARIF_OTHER.Post;
  if IBTARIF_MES.State in [dsInsert,dsEdit] then
  IBTARIF_MES.Post;

end;

procedure TInsTar.FormCreate(Sender: TObject);
begin
  inherited;
  poslid:=Tarifs.IBPOSLID.Value;
  poslname:=Tarifs.IBPOSLNAME.Value;
  poslwid:=Tarifs.IBPOSLWID.Value;
  cxDBLabel2.Caption:=poslname;

IBTARIF.Transaction:=Tarifs.IBTransaction1;
IBTARIF_OTHER.Transaction:=Tarifs.IBTransaction1;
IBTARIF_MES.Transaction:=Tarifs.IBTransaction1;
IBTARIF_DOM1.Transaction:=Tarifs.IBTransaction1;
IBUPDTDOM.Transaction:=Tarifs.IBTransaction1;
IBKOTEL.Transaction:=Tarifs.IBTransaction1;
IBQuery1.Transaction:=Tarifs.IBTransaction1;
IBQuery2.Transaction:=Tarifs.IBTransaction1;
IBQuery3.Transaction:=Tarifs.IBTransaction1;
IBQuery4.Transaction:=Tarifs.IBTransaction1;
IBQuery5.Transaction:=Tarifs.IBTransaction1;

IBTARIF.Open;
IBKOTEL.Open;
IBTARIF_MES.Open;
IBTARIF_DOM1.Open;
IBTARIF_OTHER.Open;




Visible;

end;

procedure TInsTar.IBTARIFAfterPost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;
end;

procedure TInsTar.IBTARIFBeforePost(DataSet: TDataSet);
begin
fl_postt:=1;
  inherited;

end;

procedure TInsTar.IBTARIF_DOM1AfterPost(DataSet: TDataSet);
var str:string;
    iddom,idmes:integer;
begin
  inherited;
  idmes:=IBTARIF_MESID.Value;
  iddom:=IBTARIF_DOM1ID_DOM.Value;
  fl_postt:=1;
  if iddom<>0then
  begin
    if trim(IBTARIF_MESNAME.Value)=trim(poslname) then
    begin
      IBTARIF.Locate('id',IBTARIF_MESID_TARIF.Value,[]);
      if trim(IBTARIFNAME.Value)=trim(poslname) then
      begin
      str:=VarToStr(Tarifs.IBDOM.Lookup('ID',IBTARIF_DOM1ID_DOM.Value,'NAME'));
      if trim(str)<>'' then
      begin
      IBTARIF.Edit;
      IBTARIFNAME.Value:=poslname+' '+str;
      IBTARIF.Post;
//      Update(IBTARIF_MESID.Value,iddom);
      end;
      end;
    end;


    if (poslwid='ot') and (IBTARIF_MESNO_LICH.Value=0) then
    begin
      IBTARIF_MES.First;
      while not IBTARIF_MES.Eof do
      begin
      IBUPDTDOM.Close;
      IBUPDTDOM.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
      IBUPDTDOM.Open;
          while not IBUPDTDOM.Eof do
          begin
            if IBUPDTDOMID_DOM.Value<>iddom then
            begin
            IBUPDTDOM.Edit;
            IBUPDTDOMID_DOM.Value:=iddom;
            IBUPDTDOM.Post;
            end;
          IBUPDTDOM.Next;
          end;
      IBTARIF_MES.Next;
      end;
//      Update(idmes,iddom);
    end;

    if (poslwid='ot') then
    begin
      IBTARIF_MES.First;
      while not IBTARIF_MES.Eof do
      begin
      IBTARIF_MES.Edit;
      IBTARIF_MESID_VIDAB.Value:=IBTARIF_DOM1ID_VIDAB.Value;
      IBTARIF_MES.Post;
      IBTARIF_MES.Next;
      end;
//      Update(idmes,iddom);
    end;




  end;
  Calcplos(idmes);
  Update(idmes,iddom);
end;

procedure TInsTar.IBTARIF_DOM1BeforePost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;
end;

procedure TInsTar.IBTARIF_MESAfterPost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;
Calcplos(IBTARIF_MESID.Value);
Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
end;

procedure TInsTar.IBTARIF_MESBeforePost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;
end;

procedure TInsTar.IBTARIF_MESNAMEChange(Sender: TField);
begin
  inherited;
  if IBTARIF.Locate('id',IBTARIF_MESID_TARIF.Value,[]) then
  begin
    IBTARIF.Edit;
    IBTARIFNAME.Value:=IBTARIF_MESNAME.Value;
    IBTARIF.Post;
  end;
end;

procedure TInsTar.IBTARIF_MESPLOS_BBChange(Sender: TField);
begin
  inherited;
//
end;

procedure TInsTar.IBTARIF_OTHERAfterPost(DataSet: TDataSet);
var idd:integer;
begin
  inherited;
fl_postt:=1;
  if IBTARIF_OTHERID_DOMOTHER.AsInteger<>0 then
  begin
  idd:=IBTARIF_OTHERID.Value;
//IBTARIF_OTHER.Refresh;
  IBTARIF_OTHER.Close;
  IBTARIF_OTHER.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBTARIF_OTHER.Open;
  IBTARIF_OTHER.Locate('id',idd,[]);
  end;

  Calcplos(IBTARIF_MESID.Value);
  Update(IBTARIF_MESID.Value,IBTARIF_DOM1ID_DOM.Value);
end;

procedure TInsTar.IBTARIF_OTHERBeforePost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;

end;

procedure TInsTar.IBUPDTDOMAfterPost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;
end;

procedure TInsTar.IBUPDTDOMBeforePost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;
end;

end.
