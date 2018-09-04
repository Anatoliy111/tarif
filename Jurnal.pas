unit Jurnal;         // Родительская форма журналов

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AllMDIChild, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  IBCustomDataSet, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  IBDatabase, dxStatusBar, cxContainer, cxTextEdit, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator;

type
  TJurn = class(TAllMDICh)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    IBDOC: TIBDataSet;
    IBDOCKL: TIntegerField;
    IBDOCKL_DOC: TIntegerField;
    IBDOCKL_PLAT: TIntegerField;
    IBDOCKL_BANK_RAX_DT: TIntegerField;
    IBDOCKL_BANK_RAX_KR: TIntegerField;
    IBDOCSUMMA: TIBBCDField;
    IBDOCNUM_DOC: TIBStringField;
    IBDOCDATA_DOC: TDateField;
    IBDOCKL_CEX: TIntegerField;
    IBDOCKL_SKL: TIntegerField;
    IBDOCKL_KLIENT: TIntegerField;
    IBDOCPRIZ: TIBStringField;
    IBDOCMOL: TIBStringField;
    IBDOCNUM_RAX: TIBStringField;
    IBDOCDATA_RAX: TDateField;
    IBDOCNOTE: TIBStringField;
    IBDOCDATA_NOW: TDateField;
    DSDOC: TDataSource;
    cxGrid1DBTableView1KL: TcxGridDBColumn;
    cxGrid1DBTableView1KL_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1KL_PLAT: TcxGridDBColumn;
    cxGrid1DBTableView1KL_BANK_RAX_DT: TcxGridDBColumn;
    cxGrid1DBTableView1KL_BANK_RAX_KR: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1NUM_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1KL_CEX: TcxGridDBColumn;
    cxGrid1DBTableView1KL_SKL: TcxGridDBColumn;
    cxGrid1DBTableView1KL_KLIENT: TcxGridDBColumn;
    cxGrid1DBTableView1PRIZ: TcxGridDBColumn;
    cxGrid1DBTableView1MOL: TcxGridDBColumn;
    cxGrid1DBTableView1NUM_RAX: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_RAX: TcxGridDBColumn;
    cxGrid1DBTableView1NOTE: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_NOW: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDOCBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Glavna:Tform;
  end;

var
  Jurn: TJurn;

implementation

uses MainMater, InsertForm;

{$R *.dfm}

procedure TJurn.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
main.kl_doc:=IBDOCKL.Value;
main.fl_ins:=true;
end;

procedure TJurn.FormActivate(Sender: TObject);
begin
  inherited;
//cxTextEdit1.Text:=IntToStr(Main.MDIChildren.ComponentIndex);
IBDOC.Close;
IBDOC.Open;
end;

procedure TJurn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if  (main.JPrih <> nil) and (main.JPrih.Active) then main.JPrih:=nil;
  if  (main.JRash <> nil) and (main.JRash.Active) then main.JRash:=nil;
  if  (main.JPerem <> nil) and (main.JPerem.Active) then main.JPerem:=nil;
  if  (main.JVozPok <> nil) and (main.JVozPok.Active) then main.JVozPok:=nil;
  if  (main.JVozPos <> nil) and (main.JVozPos.Active) then main.JVozPos:=nil;
  if  (main.JSpis <> nil) and (main.JSpis.Active) then main.JSpis:=nil;
  if  (main.JInv <> nil) and (main.JInv.Active) then main.JInv:=nil;
end;

procedure TJurn.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if IBDOC.State in [dsInsert,dsEdit] then
  IBDOC.Post;
  inherited;
end;

procedure TJurn.FormCreate(Sender: TObject);
begin
  inherited;

  IBTransaction1.Active:=true;
  IBDOC.Active:=true;
  IBDOC.Close;
  IBDOC.ParamByName('TDOC').AsInteger:=main.vid_doc;    //сортировка по типу документа
  IBDOC.Open;
  //cxTextEdit1.Text:=IntToStr(Main.MDIChildCount);
end;

procedure TJurn.IBDOCBeforePost(DataSet: TDataSet);
begin
  inherited;
self.fl_post:=1;
end;

end.
