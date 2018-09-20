unit AllMDIChild;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxGraphics, cxControls, dxStatusBar, cxClasses, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, IBDatabase, cxLabel, DB, IBCustomDataSet, cxLookAndFeels,
  Vcl.Buttons;

type
  TAllMDICh = class(TForm)
    IBTransaction1: TIBTransaction;
    Panel2: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    Panel4: TPanel;
    Panel3: TPanel;
    dxStatusBar1: TdxStatusBar;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDeactivate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
 //����� ���������
        ABar: TdxBar;
        fl_post:integer;

  end;

var
  AllMDICh: TAllMDICh;
    ExB: WORD;
implementation

uses DataMod, InsertForm;

{$R *.dfm}


procedure TAllMDICh.cxButton3Click(Sender: TObject);
begin
close;
end;

procedure TAllMDICh.cxButton4Click(Sender: TObject);
begin
  if self.fl_post=1 then
  begin
    case MessageBox(handle,pchar('�������� ����?'),pchar(''),MB_OKCANCEL) of
      mrOK:begin
            IBTransaction1.CommitRetaining;
            self.fl_post:=0;
           end;
    end;
  end;

end;

procedure TAllMDICh.FormActivate(Sender: TObject);
 var i:integer;
begin
  if ABar<>nil then
  for I := 0 to ABar.ItemLinks.Count - 1 do
    if ABar.ItemLinks[i].Item.Data=Self then
    begin
      TdxBarButton(ABar.ItemLinks[i].Item).Down:=true;
      exit;
    end;
end;

procedure TAllMDICh.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin//  ExB:=MessageBox(handle,pchar('��������� ��� ���������?'),pchar(''),65);
  if ModalResult=mrYES then
  begin
    IBTransaction1.Commit;
    if ABar<>nil then
      for I := 0 to ABar.ItemLinks.Count - 1 do
        if ABar.ItemLinks[i].Item.Data=Self then
        begin
          TdxBarButton(ABar.ItemLinks[i].Item).free;
          break;
        end;
    Action := caFree;
    AllMDICh := nil;
  end;
  if ModalResult=mrNO then
  begin
    IBTransaction1.Rollback;
    if ABar<>nil then
      for I := 0 to ABar.ItemLinks.Count - 1 do
        if ABar.ItemLinks[i].Item.Data=Self then
        begin
          TdxBarButton(ABar.ItemLinks[i].Item).free;
          break;
        end;
    Action := caFree;
    AllMDICh := nil;
  end;
//  AllMDICh.Cascade;

    if ABar<>nil then
      for I := 0 to ABar.ItemLinks.Count - 1 do
        if ABar.ItemLinks[i].Item.Data=Self then
          begin
          TdxBarButton(ABar.ItemLinks[i].Item).free;
          break;
          end;
    Action := caFree;
    AllMDICh := nil;

end;

procedure TAllMDICh.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=true;
  if self.fl_post=1 then
  case MessageBox(handle,pchar('�������� �� ����? (����� ���� �������)'),pchar(''),51) of
    IDYES:ModalResult:=mrYes;
    IDNO:ModalResult:=mrNo;
    IDCANCEL:CanClose:=false;
  end;

end;

procedure TAllMDICh.FormDeactivate(Sender: TObject);
var i:integer;
begin
  if ABar<>nil then
  for I := 0 to ABar.ItemLinks.Count - 1 do
    if ABar.ItemLinks[i].Item.Data=Self then
    begin
      TdxBarButton(ABar.ItemLinks[i].Item).Down:=false;
      exit;
    end;
end;

procedure TAllMDICh.SpeedButton1Click(Sender: TObject);
begin
 if SpeedButton1.Down then
    SpeedButton1.Down:=false
 else
    SpeedButton1.Down:=true;
end;

end.
