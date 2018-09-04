unit MainMater;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, ImgList, ComCtrls, Menus, cxControls, dxStatusBar,
  dxRibbonStatusBar, ToolWin, StdActns, ActnList, ExtCtrls, StdCtrls, cxGraphics,
  jpeg, cxContainer, cxEdit, cxImage, cxLabel, dxSkinsCore, Jurnal,
  System.Actions, System.ImageList;

type
  TMain = class(TForm)
    ImageList1: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    ActionList1: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrangeAll1: TWindowArrange;
    ImageList2: TImageList;
    dxBarButton2: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarSubItem23: TdxBarSubItem;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarSubItem24: TdxBarSubItem;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarSubItem25: TdxBarSubItem;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarManager1Bar3: TdxBar;
    dxBarButton3: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    ImageList3: TImageList;
    dxBarButton94: TdxBarButton;
    dxBarButton6: TdxBarButton;
    procedure Button1Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton90Click(Sender: TObject);
    procedure dxBarButton91Click(Sender: TObject);
    procedure dxBarButton92Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    private
    { Private declarations }
    procedure ClickBarButton(Sender: TObject);

    public
    vid_doc:integer;    //вид документа (приход,расход ...)
       { Public declarations }
    JPrih:TJurn;     //
    JRash:TJurn;     //
    JPerem:TJurn;    //
    JVozPok:TJurn;   //  переменные класса TJurn дочерней формы
    JVozPos:TJurn;   //
    JSpis:TJurn;     //
    JInv:TJurn;      //

    kl_doc:integer; //ключ документа
    fl_ins:boolean; //флаг - true: при открытии добавл€ем запись в документ false: не добавл€ем

    procedure AddToolbar(frm:TForm);

  end;

var
  Main: TMain;
  ExB: WORD;
  HiForm:integer;
 // TB:TToolButton;
implementation

uses Aboutt ,AllMDIChild, Spravoch;

{$R *.dfm}

procedure TMain.ClickBarButton;
var Button:TdxBarButton;
begin
  Button := TdxBarButton(sender);
  if Button.Data<>nil then
  begin
    TForm(Button.Data).show;
  end;
end;

procedure TMain.AddToolbar(frm:TForm);
var
  NewItemLink : TdxBarItemLink;
  NewButton : TdxBarButton;
begin
  NewButton := TdxBarButton(dxBarManager1.AddItem(TdxBarButton));
  NewItemLink := dxBarManager1Bar2.ItemLinks.Add;
  NewItemLink.Item := NewButton;

  NewButton.ButtonStyle := bsChecked;
  NewButton.OnClick:=ClickBarButton;
  NewButton.Down:=true;
  NewButton.Caption:=frm.Caption;
  NewButton.Data:=frm;

  TAllMDICh(frm).ABar := dxBarManager1Bar2;
 // TInsert(frm).ABar := dxBarManager1Bar2;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
  self.TileMode:=tbHorizontal;//, tbVertical)
  self.TileMode:=tbVertical;
  self.Tile;

end;








procedure TMain.dxBarButton19Click(Sender: TObject);
begin
Close;
end;

procedure TMain.dxBarButton20Click(Sender: TObject);
begin
vid_doc:=2;
 if JPrih=nil then
 begin
   Application.CreateForm(TJurn,JPrih);
   JPrih.Caption:=dxBarButton20.Caption;
   AddToolBar(JPrih);
 end
 else
   JPrih.SetFocus;
   JPrih.Show;
end;

procedure TMain.dxBarButton21Click(Sender: TObject);
begin
vid_doc:=3;
 if JRash=nil then
 begin
   Application.CreateForm(TJurn,JRash);
   JRash.Caption:=dxBarButton21.Caption;
   AddToolBar(JRash);
 end
 else
   JRash.SetFocus;
   JRash.Show;
end;

procedure TMain.dxBarButton22Click(Sender: TObject);
begin
vid_doc:=4;
 if JPerem=nil then
 begin
   Application.CreateForm(TJurn,JPerem);
   JPerem.Caption:=dxBarButton22.Caption;
   AddToolBar(JPerem);
 end
 else
   JPerem.SetFocus;
   JPerem.Show;
end;

procedure TMain.dxBarButton23Click(Sender: TObject);
begin
vid_doc:=5;
 if JVozPok=nil then
 begin
   Application.CreateForm(TJurn,JVozPok);
   JVozPok.Caption:=dxBarButton23.Caption;
   AddToolBar(JVozPok);
 end
 else
   JVozPok.SetFocus;
   JVozPok.Show;
end;

procedure TMain.dxBarButton24Click(Sender: TObject);
begin
vid_doc:=6;
 if JVozPos=nil then
 begin
   Application.CreateForm(TJurn,JVozPos);
   JVozPos.Caption:=dxBarButton24.Caption;
   AddToolBar(JVozPos);
 end
 else
   JVozPos.SetFocus;
   JVozPos.Show;
end;

procedure TMain.dxBarButton25Click(Sender: TObject);
begin
vid_doc:=7;
 if JSpis=nil then
 begin
   Application.CreateForm(TJurn,JSpis);
   JSpis.Caption:=dxBarButton25.Caption;
   AddToolBar(JSpis);
 end
 else
   JSpis.SetFocus;
   JSpis.Show;
end;

procedure TMain.dxBarButton26Click(Sender: TObject);
begin
vid_doc:=8;
 if JInv=nil then
 begin
   Application.CreateForm(TJurn,JInv);
   JInv.Caption:=dxBarButton26.Caption;
   AddToolBar(JInv);
 end
 else
   JInv.SetFocus;
   JInv.Show;
end;

procedure TMain.dxBarButton29Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=4;
end;

procedure TMain.dxBarButton30Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 begin
 Sprav.Show;
 Sprav.SetFocus;
 end;
 Sprav.cxPageControl1.ActivePageIndex:=0;
end;

procedure TMain.dxBarButton34Click(Sender: TObject);
begin
  About.ShowModal;
end;

procedure TMain.dxBarButton42Click(Sender: TObject);
var i: integer;
begin
for i:= 0 to MdiChildCount - 1 do
  MDIChildren[i].Close;

    JPrih:=nil;
    JRash:=nil;
    JPerem:=nil;
    JVozPok:=nil;
    JVozPos:=nil;
    JSpis:=nil;
    JInv:=nil;
end;

procedure TMain.dxBarButton4Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=1;
end;

procedure TMain.dxBarButton5Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=2;
end;

procedure TMain.dxBarButton7Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=3;
 end;


procedure TMain.dxBarButton90Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=5;
end;

procedure TMain.dxBarButton91Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=6;
end;

procedure TMain.dxBarButton92Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=7;
end;


procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
var i: integer;
begin
for i:= 0 to MdiChildCount - 1 do
  MDIChildren[i].Close;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=true;
  case MessageBox(handle,pchar('«акрыть программу? ¬се не сохраненные данные будут утер€ны.'),pchar(''),36) of
    IDYES:ModalResult:=mrYes;
    IDNO:CanClose:=false;
  end;
end;

end.
