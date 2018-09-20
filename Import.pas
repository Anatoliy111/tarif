unit Import;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ins, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, IBX.IBDatabase, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxProgressBar,Data.DB,
  IBX.IBCustomDataSet,dbf, Vcl.Buttons;

type
  TImpForm = class(TInsForm)
    cxButton1: TcxButton;
    cxProgressBar1: TcxProgressBar;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxButton6: TcxButton;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    IBPOSL: TIBDataSet;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    DSPOSL: TDataSource;
    IBDOM: TIBDataSet;
    IBDOMID: TIntegerField;
    IBDOMNAME: TIBStringField;
    IBDOMID_UL: TIntegerField;
    IBDOMDOM: TIBStringField;
    DSDOM: TDataSource;
    IBUL: TIBDataSet;
    DSUL: TDataSource;
    IBDOMCH: TSmallintField;
    IBDOMID_HOUSE: TIntegerField;
    DB: TDbf;
    IBULID: TIntegerField;
    IBULNAME: TIBStringField;
    IBULKL: TIntegerField;
    IBULID_STREET: TIntegerField;
    IBULVAL: TIntegerField;
    IBPOSLVAL: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure IBPOSLBeforePost(DataSet: TDataSet);
    procedure IBDOMBeforePost(DataSet: TDataSet);
    procedure IBULBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpForm: TImpForm;
  FilePath, FileName: String;

implementation

{$R *.dfm}

uses MainForm;


procedure TImpForm.cxButton1Click(Sender: TObject);
var res:Variant;
begin
  inherited;
  if OpenDialog1.Execute then begin
    FilePath := ExtractFilePath(OpenDialog1.FileName);
    DB.Active:=false;
    DB.TableName:=OpenDialog1.FileName;
    DB.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=DB.RecordCount-1;
    DB.First;
    while not DB.Eof do
    begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
        IBUL.First;
//          res:= IBUL.Lookup('schet;wid', VarArrayOf([schet,wid]),'schet');
//            res:= IBUL.Lookup('kl',DB.FieldByName('kl').Value ,'kl');
               if not IBUL.Locate('kl',DB.FieldByName('kl').Value,[]) then
               begin
                  IBUL.Insert;
                  IBULKL.Value:=DB.FieldByName('kl').Value;
                  IBULNAME.Value:=DB.FieldByName('ul').Value;
                  IBULVAL.Value:=DB.FieldByName('val').Value;
                  IBUL.Post
               end
               else
               begin
                 if DB.FieldByName('val').Value<> IBULVAL.Value then
                 begin
                  IBUL.Edit;
                  IBULNAME.Value:=DB.FieldByName('ul').Value;
                  IBULVAL.Value:=DB.FieldByName('val').Value;
                  IBUL.Post
                 end;

               end;
    DB.Next;
    end;
    DB.Active:=false;
    cxProgressBar1.Position:=0;
    messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);
  end;
end;

procedure TImpForm.cxButton2Click(Sender: TObject);
var res:Variant;
begin
  inherited;
  if OpenDialog1.Execute then begin
    FilePath := ExtractFilePath(OpenDialog1.FileName);
    DB.Active:=false;
    DB.TableName:=OpenDialog1.FileName;
    DB.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=DB.RecordCount-1;
    DB.First;
    while not DB.Eof do
    begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
        IBPOSL.First;
               if not IBPOSL.Locate('wid',DB.FieldByName('wid').Value,[]) then
               begin
                  IBPOSL.Insert;
                  IBPOSLWID.Value:=DB.FieldByName('wid').Value;
                  IBPOSLNAME.Value:=DB.FieldByName('naim').Value;
                  IBPOSLVAL.Value:=DB.FieldByName('val').Value;
                  IBPOSL.Post;
               end
               else
               begin
                 if DB.FieldByName('val').Value<> IBPOSLVAL.Value then
                 begin
                  IBPOSL.Edit;
                  IBPOSLNAME.Value:=DB.FieldByName('naim').Value;
                  IBPOSLVAL.Value:=DB.FieldByName('val').Value;
                  IBPOSL.Post;
                 end;

               end;
    DB.Next;
    end;
    DB.Active:=false;
    cxProgressBar1.Position:=0;
    messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);
  end;
end;

procedure TImpForm.FormCreate(Sender: TObject);
begin
  inherited;
IBPOSL.Active:=true;
IBUL.Active:=true;
IBDOM.Active:=true;
end;

procedure TImpForm.IBDOMBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImpForm.IBPOSLBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImpForm.IBULBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

end.
