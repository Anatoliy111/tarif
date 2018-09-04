unit AllMDIChild;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxGraphics, cxControls, dxStatusBar, cxClasses, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, IBDatabase, cxLabel, DB, IBCustomDataSet, cxLookAndFeels;

type
  TAllMDICh = class(TForm)
    dxStatusBar1: TdxStatusBar;
    IBTransaction1: TIBTransaction;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
 //номер документа
        ABar: TdxBar;
        fl_post:integer;

  end;

var
  AllMDICh: TAllMDICh;
    ExB: WORD;
implementation

uses DataMod, InsertForm;

{$R *.dfm}


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
begin//  ExB:=MessageBox(handle,pchar('Сохранить все изменения?'),pchar(''),65);
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
  case MessageBox(handle,pchar('Сохранить все изменения?'),pchar(''),51) of
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

end.
