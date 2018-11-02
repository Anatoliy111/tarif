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
  cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox, IBX.IBQuery;

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
    IBDOM_OTHER: TIBDataSet;
    DSDOM_OTHER: TDataSource;
    IBDOM_OTHERID: TIntegerField;
    IBDOM_OTHERID_DOM: TIntegerField;
    IBDOM_OTHERID_OTHER: TIntegerField;
    IBDOM_OTHERPLOS_OB: TIBBCDField;
    IBDOM_OTHERPLOS_BB: TIBBCDField;
    IBDOM_OTHERID_TIPPR: TIntegerField;
    IBDOM_OTHERNAME: TIBStringField;
    IBDOM_OTHERDOM: TIBStringField;
    cxGridDBTableView1ID_DOM: TcxGridDBColumn;
    IBQuery1: TIBQuery;
    IBPOSL: TIBDataSet;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    DSPOSL: TDataSource;
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
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDBLabel1: TcxDBLabel;
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
    Panel8: TPanel;
    cxLabel6: TcxLabel;
    IBUPDTDOM: TIBDataSet;
    DSUPDTDOM: TDataSource;
    IBUPDTDOMID: TIntegerField;
    IBUPDTDOMID_TARIF: TIntegerField;
    IBUPDTDOMID_TARIFMES: TIntegerField;
    IBUPDTDOMID_DOM: TIntegerField;
    IBUPDTDOMNAME: TIBStringField;
    cxGridDBTableView2ID: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IBTARIFBeforePost(DataSet: TDataSet);
    procedure IBTARIF_OTHERBeforePost(DataSet: TDataSet);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure IBTARIF_DOMAfterPost(DataSet: TDataSet);
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
  private
    { Private declarations }
  public
  procedure Update(idmes,iddom:integer);
    { Public declarations }
  end;

var
  InsertTar: TInsTar;
  ChangeTar: TInsTar;
  fl_postt:integer;

implementation

{$R *.dfm}

uses TarifForm, MainForm;

procedure TInsTar.Visible;
begin

    cxGridDBTableView2NSER_LICH.Visible:=false;
    cxGridDBTableView2PLOS_BB.Visible:=false;
    cxGridDBTableView2PLOS_OBL.Visible:=false;
    cxGridDBTableView2ID_KOTEL.Visible:=false;
    cxGridDBTableView1PLOS_BB.Visible:=false;
    cxGrid1DBTableView1PLOS_BB.Visible:=false;

  if IBPOSLWID.Value='ot' then
  begin
    cxGridDBTableView2NSER_LICH.Visible:=true;
    cxGridDBTableView2PLOS_BB.Visible:=true;
    cxGridDBTableView2PLOS_OBL.Visible:=true;
    cxGridDBTableView2ID_KOTEL.Visible:=true;
    cxGridDBTableView1PLOS_BB.Visible:=true;
    cxGrid1DBTableView1PLOS_BB.Visible:=true;
  end;

end;

procedure TInsTar.Update(idmes,iddom:integer);
var str:string;
    tardomid:integer;
begin
    tardomid:=IBTARIF_DOM1ID.Value;
    IBTARIF_DOM1.Close;
    IBTARIF_DOM1.ParamByName('idmes').Value:=idmes;
    IBTARIF_DOM1.Open;

  if (IBPOSLWID.Value='ot') and (iddom<>0) then
  begin
  IBTARIF_MES.Close;
  IBTARIF_MES.SelectSQL.Text:='select TARIF_MES.* ,TARIF.name from TARIF_MES, TARIF, TARIF_DOM'+
                         ' where tarif_mes.data=:dt and tarif.id=tarif_mes.id_tarif and tarif_mes.id=tarif_dom.id_tarifmes and tarif.id_posl=:posl and tarif_dom.id_dom=:iddom';

    IBTARIF_MES.ParamByName('iddom').Value:=iddom;



  IBTARIF_MES.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
  IBTARIF_MES.ParamByName('posl').Value:=IBPOSLID.Value;
  IBTARIF_MES.Open;
  end
  else
  begin

  IBTARIF_MES.Close;
  IBTARIF_MES.ParamByName('idmes').Value:=idmes;
  IBTARIF_MES.Open;
  end;

  IBTARIF.Open;

//  IBTARIF_DOM1.Close;
//  IBTARIF_DOM1.ParamByName('idmes').Value:=idmes;
//  IBTARIF_DOM1.Open;
  IBTARIF_OTHER.Close;
  IBTARIF_OTHER.ParamByName('idmes').Value:=idmes;
  IBTARIF_OTHER.Open;
  IBDOM_OTHER.Close;
  IBDOM_OTHER.ParamByName('idmes').Value:=idmes;
  IBDOM_OTHER.Open;


  IBTARIF_MES.Locate('id',idmes,[]);
  IBTARIF_DOM1.Locate('id',tardomid,[]);

end;



procedure TInsTar.cxButton10Click(Sender: TObject);
begin
  inherited;
  IBTARIF_Other.Insert;
  IBTARIF_Other.Edit;
  IBTARIF_OtherID_TARIF.Value:=IBTARIFID.Value;
  IBTARIF_OtherID_TARIFMES.Value:=IBTARIF_MESID.Value;
  IBTARIF_Other.Post;
end;

procedure TInsTar.cxButton12Click(Sender: TObject);
var idd:integer;
begin
  inherited;


  if not IBTARIF_MES.RecordCount<>0 then
  begin
      if (IBPOSLWID.Value='ot') and (IBTARIF_DOM1.RecordCount<>0) then
         exit;
      IBUPDTDOM.Close;
      IBUPDTDOM.Open;

      IBTARIF_DOM1.Insert;
      IBTARIF_DOM1.Edit;
      IBTARIF_DOM1ID_TARIF.Value:=IBTARIF_MESID_TARIF.Value;
      IBTARIF_DOM1ID_TARIFMES.Value:=IBTARIF_MESID.Value;
      IBTARIF_DOM1.Post;
      idd:=IBUPDTDOMID.Value;
      IBTARIF_DOM1.Close;
      IBTARIF_DOM1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
      IBTARIF_DOM1.Open;
//      IBTARIF_DOM1.Locate('id',idd,[]);
  end
  else
     Application.MessageBox('Додайте спочатку тариф','Помилка',16)
end;

procedure TInsTar.cxButton13Click(Sender: TObject);
begin
  inherited;
  IBTARIF_DOM1.Delete;
end;

procedure TInsTar.cxButton1Click(Sender: TObject);
var iddom:integer;
begin
  inherited;
iddom:=0;
if (IBTARIF_MES.RecordCount=0) or (IBPOSLWID.Value='ot') then
begin
  if (IBTARIF_MES.RecordCount<>0) and (IBPOSLWID.Value='ot') and (IBTARIF_DOM1ID_DOM.Value=0) then
  begin
    Application.MessageBox('Виберіть будинок','Помилка',16);
    exit;
  end;
  if (IBTARIF_MES.RecordCount<>0) and (IBPOSLWID.Value='ot') then
      iddom:=IBTARIF_DOM1ID_DOM.Value;

  IBTARIF.Insert;
  IBTARIF.Edit;
  IBTARIFNAME.Value:=IBPOSLNAME.Value;
  IBTARIFID_POSL.Value:=IBPOSLID.Value;
  IBTARIF.Post;
  IBTARIF_MES.Insert;
  IBTARIF_MES.Edit;
  IBTARIF_MESID_TARIF.Value:=IBTARIFID.Value;
  IBTARIF_MESDATA.Value:=main.IBPERIODDATA.Value;
  IBTARIF_MES.Post;

    IBTARIF_DOM1.Insert;
    IBTARIF_DOM1.Edit;
    IBTARIF_DOM1ID_TARIF.Value:=IBTARIFID.Value;
    IBTARIF_DOM1ID_TARIFMES.Value:=IBTARIF_MESID.Value;
  if (IBPOSLWID.Value='ot') then
  begin
    IBTARIF_DOM1ID_DOM.Value:=iddom;
  end;
    IBTARIF_DOM1.Post;
//  end;
//  if IBTARIF_DOM1.RecordCount=0 then
//      Application.MessageBox('Щоб сформувати назву додайте будинок','Інфо',16)
  Update(IBTARIF_MESID.Value,iddom);

end;



end;

procedure TInsTar.cxGrid1DBTableView1ID_DOMPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var ress,res:Variant;
    res1:Boolean;
begin
  inherited;
 cxGrid1DBTableView1ID_DOM.EditValue;
 ress:=Tarifs.IBDOM.Lookup('name',DisplayValue,'id');
 IBQuery1.Close;
 IBQuery1.SQL.Text:='select TARIF_DOM.* from TARIF_DOM, TARIF_MES, TARIF, POSL where TARIF_DOM.id_tarifmes=TARIF_MES.ID and TARIF_MES.DATA=:dt and TARIF_DOM.id_tarif=TARIF.id and TARIF.id_posl=:idposl and TARIF_DOM.id_dom=:iddom';
 IBQuery1.ParamByName('dt').Value:=Main.IBPERIODDATA.Value;
 IBQuery1.ParamByName('idposl').Value:=IBPOSLID.Value;
 IBQuery1.ParamByName('iddom').Value:=ress;
 IBQuery1.Open;

 if IBQuery1.RecordCount<>0 then
 begin
    Error:=true;
    ErrorText:='Такий будинок вже додано до цієї послуги! '+
    'Щоб відмінити вибране значення натисніть ESC';
 end;


end;

procedure TInsTar.cxGridDBTableView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
//  IBTARIF_DOM.close;
//  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_tarifmes=:tar';
//  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIF_MESID.Value;
//  IBTARIF_DOM.open;
  IBTARIF_DOM1.Close;
  IBTARIF_DOM1.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBTARIF_DOM1.Open;
  IBTARIF_OTHER.Close;
  IBTARIF_OTHER.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBTARIF_OTHER.Open;
  IBDOM_OTHER.Close;
  IBDOM_OTHER.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBDOM_OTHER.Open;


end;

procedure TInsTar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if fl_postt=1 then
begin
  Tarifs.cxButton7.Click;
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

end;

procedure TInsTar.FormCreate(Sender: TObject);
begin
  inherited;
IBPOSL.Open;
IBPOSL.Locate('id',Tarifs.IBPOSLID.Value,[]);
IBTARIF.Open;
IBTARIF_MES.Open;
IBTARIF_DOM1.Open;
IBTARIF_DOM1ID_DOM.Value;
IBTARIF_OTHER.Open;
IBDOM_OTHER.Open;

Visible;

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
  IBDOM_OTHER.Close;
  IBDOM_OTHER.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBDOM_OTHER.Open;
  if iddom<>0then
  begin

    if (IBPOSLWID.Value='ot') then
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

    if trim(IBTARIF_MESNAME.Value)='' then
    begin
      IBTARIF.Locate('id',IBTARIF_MESID_TARIF.Value,[]);
      if trim(IBTARIFNAME.Value)='' then
      begin
      str:=VarToStr(Tarifs.IBDOM.Lookup('ID',IBTARIF_DOM1ID_DOM.Value,'NAME'));
      if trim(str)<>'' then
      begin
      IBTARIF.Edit;
      IBTARIFNAME.Value:=IBPOSLNAME.Value+' '+str;
      IBTARIF.Post;
//      Update(IBTARIF_MESID.Value,iddom);
      end;
      end;
    end;
  end;
  Update(idmes,iddom);
end;

procedure TInsTar.IBTARIF_DOMAfterPost(DataSet: TDataSet);
begin

  fl_postt:=1;
  IBDOM_OTHER.Close;
  IBDOM_OTHER.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBDOM_OTHER.Open;
  inherited;
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

procedure TInsTar.IBTARIF_OTHERAfterPost(DataSet: TDataSet);
var idd:integer;
begin
  inherited;
  if IBTARIF_OTHERID_DOMOTHER.AsInteger<>0 then
  begin
  idd:=IBTARIF_OTHERID.Value;
//IBTARIF_OTHER.Refresh;
  IBTARIF_OTHER.Close;
  IBTARIF_OTHER.ParamByName('idmes').Value:=IBTARIF_MESID.Value;
  IBTARIF_OTHER.Open;
  IBTARIF_OTHER.Locate('id',idd,[]);
  end;
end;

procedure TInsTar.IBTARIF_OTHERBeforePost(DataSet: TDataSet);
begin
  inherited;
fl_postt:=1;

end;

end.
