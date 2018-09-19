unit Ins;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxLabel, cxTextEdit, Vcl.ExtCtrls, IBX.IBDatabase;

type
  TInsForm = class(TForm)
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    IBTransaction1: TIBTransaction;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
            fl_post:integer;
  end;

var
  InsForm: TInsForm;

implementation

{$R *.dfm}

procedure TInsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult=mrYES then
  begin
    IBTransaction1.Commit;
  end;
  if ModalResult=mrNO then
  begin
    IBTransaction1.Rollback;
  end;
end;

procedure TInsForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=true;
  if self.fl_post=1 then
  case MessageBox(handle,pchar('«берегти вс≥ зм≥ни?'),pchar(''),51) of
    IDYES:ModalResult:=mrYes;
    IDNO:ModalResult:=mrNo;
    IDCANCEL:CanClose:=false;
  end;
end;

end.
