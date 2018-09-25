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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Buttons, IBX.IBQuery;

type
  TTarifs = class(TAllMDICh)
    dxBarManager1: TdxBarManager;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    IBTARIF: TIBDataSet;
    DSTARIF: TDataSource;
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
    IBQuery1: TIBQuery;
    IBTransaction2: TIBTransaction;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    IBTARIFID: TIntegerField;
    IBTARIFDATA: TDateField;
    IBTARIFNAME: TIBStringField;
    IBTARIFID_POSL: TIntegerField;
    IBTARIFNOTE: TIBStringField;
    IBTARIFTARIF_PLAN: TIBBCDField;
    IBTARIFTARIF_FACT: TIBBCDField;
    IBTARIFTARIF_RN: TIBBCDField;
    IBTARIFTARIF_RK: TIBBCDField;
    IBTARIFNORMA: TIBBCDField;
    IBTARIFTARIF_END: TIBBCDField;
    IBTARIF_COMPID: TIntegerField;
    IBTARIF_COMPDATA: TDateField;
    IBTARIF_COMPID_TARIF: TIntegerField;
    IBTARIF_COMPNAME: TIBStringField;
    IBTARIF_COMPSUMM: TIBBCDField;
    IBTARIF_COMPKL_NTAR: TIntegerField;
    IBTARIF_COMPFL_LIFT: TIntegerField;
    IBTARIF_COMPNORMA: TIBBCDField;
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
    cxGrid1DBTableView1NOTE: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_PLAN: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_RN: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn;
    cxGrid1DBTableView1NORMA: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_END: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBTARIFBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Glavna:Tform;
  end;

var
  Tarifs: TTarifs;

implementation

uses MainForm, InsertForm, Ins, mytools, DataMod;

{$R *.dfm}



procedure TTarifs.cxButton3Click(Sender: TObject);
begin
  inherited;
  IBTARIF.Insert;
  InsForm.ShowModal;
end;

procedure TTarifs.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
   if cxLookupComboBox1.EditValue = main.Period then
   begin
      cxLabel2.Caption:='Поточний період';
   end
   else
   begin
      cxLabel2.Caption:='Архів';
   end;
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
  IBTARIF.Active:=false;
  IBTARIF.SelectSQL.Text:='select * from TARIF where id_posl=:pos';
  IBTARIF.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF.Active:=true;
  if IBPOSLWID.Value='ub' then
  begin
    cxGrid1DBTableView1TARIF_FACT.Visible:=true;
    cxGrid1DBTableView1TARIF_RN.Visible:=true;
    cxGrid1DBTableView1TARIF_RK.Visible:=true;
    cxGrid1DBTableView1NORMA.Visible:=false;
  end
  else
  begin
    cxGrid1DBTableView1TARIF_FACT.Visible:=false;
    cxGrid1DBTableView1TARIF_RN.Visible:=false;
    cxGrid1DBTableView1TARIF_RK.Visible:=false;
    cxGrid1DBTableView1NORMA.Visible:=true;
  end;
  IBTARIF_COMP.Active:=false;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarif=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIFID.Value;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=false;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_posl=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIFID.Value;
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
  if IBTARIF.State in [dsInsert,dsEdit] then
  IBTARIF.Post;
  inherited;
end;

procedure TTarifs.FormCreate(Sender: TObject);
begin
  inherited;
  cxLookupComboBox1.EditValue:= main.Period;
  IBTransaction1.Active:=true;
  IBPOSL.Active:=true;
  IBTARIF.Active:=false;
  IBTARIF.SelectSQL.Text:='select * from TARIF where id_posl=:pos';
  IBTARIF.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBTARIF.Active:=true;
  IBTARIF_COMP.Active:=false;
  IBTARIF_COMP.SelectSQL.Text:='select * from tarif_comp where id_tarif=:tar';
  IBTARIF_COMP.ParamByName('tar').AsInteger:=IBTARIFID.Value;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=false;
  IBTARIF_DOM.SelectSQL.Text:='select * from tarif_dom where id_posl=:tar';
  IBTARIF_DOM.ParamByName('tar').AsInteger:=IBTARIFID.Value;
  IBTARIF_DOM.Active:=true;
//  DBLookupComboBox1.KeyField:=  Main.IBPERIODID.Value;



//  IBTARIF.Close;
//  IBDOC.ParamByName('TDOC').AsInteger:=main.vid_doc;    //сортировка по типу документа
//  IBTARIF.Open;
  //cxTextEdit1.Text:=IntToStr(Main.MDIChildCount);
end;

procedure TTarifs.IBTARIFBeforePost(DataSet: TDataSet);
begin
  inherited;
self.fl_post:=1;
end;

end.
