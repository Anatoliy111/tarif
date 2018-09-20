unit Spravoch;

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
  dxBarBuiltInMenu, cxNavigator, Vcl.Buttons;

type
  TSprav = class(TAllMDICh)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel7: TPanel;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    Panel9: TPanel;
    cxLabel8: TcxLabel;
    cxTextEdit7: TcxTextEdit;
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
    cxLabel7: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
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
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit2: TcxTextEdit;
    IBULKL: TIntegerField;
    IBULID_STREET: TIntegerField;
    IBULVAL: TIntegerField;
    cxGridDBTableView2KL: TcxGridDBColumn;
    cxGridDBTableView2ID_STREET: TcxGridDBColumn;
    IBPOSLVAL: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBPOSLBeforePost(DataSet: TDataSet);
    procedure IBDOMBeforePost(DataSet: TDataSet);
    procedure IBULBeforePost(DataSet: TDataSet);
    procedure IBKLIENTBeforePost(DataSet: TDataSet);
    procedure IBMATKOMISBeforePost(DataSet: TDataSet);
    procedure IBMATSOTRBeforePost(DataSet: TDataSet);
    procedure cxButton8Click(Sender: TObject);




    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxTextEdit3PropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
  private
    { Private declarations }

  public
  fl_ins:integer;
//      procedure KeyF6(var Key: Word; Hint:string; var Hint1:string; SColor1:TColor);
    { Public declarations }
  end;

var
  Sprav: TSprav;

{    Hint1:string;
    SColor1:TColor; }

implementation

uses MyLibrary, InsertForm;

{$R *.dfm}

procedure TSprav.FormCreate(Sender: TObject);
begin
Sprav.IBTransaction1.Active:=true;
Sprav.IBPOSL.Active:=true;
Sprav.IBDOM.Active:=true;
Sprav.IBUL.Active:=true;

  inherited;
end;

procedure TSprav.IBPOSLBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBDOMBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBKLIENTBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBMATKOMISBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBULBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBMATSOTRBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.cxButton2Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити запис?'),pchar(''),36) of
    IDYES:
    begin
      if cxPageControl1.ActivePageIndex=1 then
      begin
      Sprav.IBDOM.Delete;
      fl_post:=1;
      end;

    end;
  end;
end;

procedure TSprav.cxButton8Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити запис?'),pchar(''),36) of
  IDYES:
    begin
      if cxPageControl1.ActivePageIndex=0 then
      begin
        Sprav.IBPOSL.Delete;
        fl_post:=1;
      end;
      if cxPageControl1.ActivePageIndex=1 then
      begin
        Sprav.IBDOM.Delete;
        fl_post:=1;
      end;
      if cxPageControl1.ActivePageIndex=2 then
      begin
      if not Sprav.IBDOM.Locate('id_ul',IBDOMID_UL.Value,[]) then
        begin
        Sprav.IBUL.Delete;
        fl_post:=1;
      end
      else
        Application.MessageBox('Неможливо видалити вулицю так як вона використовується в довіднику будинків ','Помилка',16)
      end;
    end;
  end;
end;





procedure TSprav.cxButton9Click(Sender: TObject);
begin
  inherited;
  if cxPageControl1.ActivePageIndex=0 then
  begin
      if (cxTextEdit7.Text='') or (cxTextEdit1.Text='') then
        Application.MessageBox('Введіть вид та наименування послуги ','Помилка',16)
      else
        begin
        Sprav.IBPOSL.Insert;
        Sprav.IBPOSL.Edit;
        Sprav.IBPOSLWID.Value:=cxTextEdit7.Text;
        Sprav.IBPOSLNAME.Value:=cxTextEdit1.Text;
        Sprav.IBPOSLFL_ZAGR.Value:=0;
        Sprav.IBPOSLFL_ROZRAH.Value:=0;
        Sprav.IBPOSL.Post;

       cxTextEdit7.Text:='';
       cxTextEdit1.Text:='';

        end;
  end;
  if cxPageControl1.ActivePageIndex=1 then
  begin
    if (cxTextEdit3.Text='') or (cxLookupComboBox1.EditValue=0) then
    Application.MessageBox('Введіть вулицю та будинок','Помилка',16)
  else
    begin
      if not Sprav.IBDOM.Locate('id_ul;dom',VarArrayOf([cxLookupComboBox1.EditValue, cxTextEdit3.Text]),[]) then
      begin
        Sprav.IBDOM.Insert;
        Sprav.IBDOM.Edit;
        Sprav.IBDOMNAME.Value:=cxTextEdit4.Text;
        Sprav.IBDOMID_UL.Value:=cxLookupComboBox1.EditValue;
        Sprav.IBDOMDOM.Value:=cxTextEdit3.Text;
        Sprav.IBDOM.Post;

        cxTextEdit3.Text:='';
        cxLookupComboBox1.EditValue:=0;
      end
      else
        Application.MessageBox('Такий будинок вже існує','Ошибка',16)
    end;
  end;
  if cxPageControl1.ActivePageIndex=2 then
  begin
    if (cxTextEdit2.Text='') then
    Application.MessageBox('Введіть вулицю','Помилка',16)
  else
    begin
      if not Sprav.IBUL.Locate('name',cxTextEdit2.Text,[]) then
      begin
        Sprav.IBUL.Insert;
        Sprav.IBUL.Edit;
        Sprav.IBULNAME.Value:=cxTextEdit2.Text;
        Sprav.IBUL.Post;
        cxTextEdit2.Text:='';
      end
      else
        Application.MessageBox('Така вулиця вже існує','Ошибка',16)

    end;
  end;

end;

procedure TSprav.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  cxTextEdit4.Text:=cxLookupComboBox1.EditText+' '+cxTextEdit3.Text;
end;

procedure TSprav.cxTextEdit3PropertiesChange(Sender: TObject);
begin
  inherited;
  cxTextEdit4.Text:=cxLookupComboBox1.EditText+' '+cxTextEdit3.Text;
end;

procedure TSprav.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Sprav:=nil;
  inherited;
end;

procedure TSprav.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Sprav.IBPOSL.State in [dsInsert,dsEdit] then Sprav.IBPOSL.Post;
  if Sprav.IBDOM.State in [dsInsert,dsEdit] then IBDOM.Post;
  if Sprav.IBUL.State in [dsInsert,dsEdit] then IBUL.Post;
  inherited;
end;

end.
