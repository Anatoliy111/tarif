unit Import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AllMDIChild, cxGraphics, cxControls, dxStatusBar, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxLabel, cxContainer,
  cxTextEdit, ExtCtrls, cxPC, cxDBLabel, cxCalendar, cxDBEdit,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, dxBar, IBDatabase, IBCustomDataSet, cxLookAndFeels,
  dxBarBuiltInMenu, cxNavigator;

type
  TImp = class(TAllMDICh)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel7: TPanel;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    Panel9: TPanel;
    cxLabel8: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    IBPOSL: TIBDataSet;
    DSPOSL: TDataSource;
    IBDOM: TIBDataSet;
    DSDOM: TDataSource;
    IBUL: TIBDataSet;
    DSUL: TDataSource;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    cxGrid1DBTableView1WID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1FL_ZAGR: TcxGridDBColumn;
    cxGrid1DBTableView1FL_ROZRAH: TcxGridDBColumn;
    IBDOMID: TIntegerField;
    IBDOMNAME: TIBStringField;
    IBDOMID_UL: TIntegerField;
    IBDOMDOM: TIBStringField;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1ID_UL: TcxGridDBColumn;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    IBULID: TIntegerField;
    IBULNAME: TIBStringField;
    cxGridDBTableView2NAME: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBPOSLBeforePost(DataSet: TDataSet);
    procedure IBDOMBeforePost(DataSet: TDataSet);
    procedure IBULBeforePost(DataSet: TDataSet);
    procedure IBKLIENTBeforePost(DataSet: TDataSet);
    procedure IBMATKOMISBeforePost(DataSet: TDataSet);
    procedure IBMATSOTRBeforePost(DataSet: TDataSet);
    procedure cxButton4Click(Sender: TObject);


    procedure cxButton11Click(Sender: TObject);




    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    procedure cxButton2Click(Sender: TObject);



  private
    { Private declarations }

  public
  fl_ins:integer;
//      procedure KeyF6(var Key: Word; Hint:string; var Hint1:string; SColor1:TColor);
    { Public declarations }
  end;

var
  Imp: TImp;

{    Hint1:string;
    SColor1:TColor; }

implementation

uses MyLibrary, InsertForm;

{$R *.dfm}

procedure TImp.FormCreate(Sender: TObject);
begin
Imp.IBTransaction1.Active:=true;
Imp.IBPOSL.Active:=true;
Imp.IBDOM.Active:=true;
Imp.IBUL.Active:=true;

  inherited;
end;

procedure TImp.IBPOSLBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImp.IBDOMBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImp.IBKLIENTBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImp.IBMATKOMISBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImp.IBULBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImp.IBMATSOTRBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImp.cxButton11Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити запис?'),pchar(''),36) of
    IDYES:
    begin
      Imp.IBPOSL.Delete;
      fl_post:=1;
    end;
  end;

end;





procedure TImp.cxButton2Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити запис?'),pchar(''),36) of
    IDYES:
    begin
      Imp.IBDOM.Delete;
      fl_post:=1;
    end;
  end;
end;



procedure TImp.cxButton4Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити запис?'),pchar(''),36) of
    IDYES:
    begin
      if not Imp.IBDOM.Locate('id_ul',IBDOMID_UL.Value,[]) then
        begin
        Imp.IBUL.Delete;
        fl_post:=1;
      end
      else
        Application.MessageBox('Неможливо видалити вулицю так як вона використовується в довіднику будинків ','Помилка',16)
    end;
  end;
end;











procedure TImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Imp:=nil;
  inherited;
end;

procedure TImp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Imp.IBPOSL.State in [dsInsert,dsEdit] then IBPOSL.Post;
  if Imp.IBDOM.State in [dsInsert,dsEdit] then IBDOM.Post;
  if Imp.IBUL.State in [dsInsert,dsEdit] then IBUL.Post;
  inherited;
end;

end.
