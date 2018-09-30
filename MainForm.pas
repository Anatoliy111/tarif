unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, ImgList, ComCtrls, Menus, cxControls, dxStatusBar,
  dxRibbonStatusBar, ToolWin, StdActns, ActnList, ExtCtrls, StdCtrls, cxGraphics,
  jpeg, cxContainer, cxEdit, cxImage, cxLabel, dxSkinsCore,
  System.Actions, System.ImageList, cxButtonEdit, cxBarEditItem, dxBarExtItems,
  Data.DB, IBX.IBCustomDataSet, IBX.IBDatabase, cxRichEdit, cxTextEdit,
  cxHyperLinkEdit, dxRatingControl, dxSparkline, dxToggleSwitch,Spravoch,AllMDIChild,
  cxRadioGroup, cxTrackBar, dxRibbonGallery, IBX.IBQuery;

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
    dxBarButton36: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
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
    dxBarManager1Bar3: TdxBar;
    dxBarButton3: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    ImageList3: TImageList;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    cxBarEditItem1: TcxBarEditItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarStatic1: TdxBarStatic;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    IBPERIOD: TIBDataSet;
    IBPERIODID: TIntegerField;
    IBPERIODDATA: TDateField;
    D≤PERIOD: TDataSource;
    dxBarButton14: TdxBarButton;
    cxBarEditItem4: TcxBarEditItem;
    IBTransaction1: TIBTransaction;
    dxBarSubItem11: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem5: TcxBarEditItem;
    dxBarStatic2: TdxBarStatic;
    dxBarSpinEdit1: TdxBarSpinEdit;
    cxBarEditItem6: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    cxBarEditItem8: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    cxBarEditItem11: TcxBarEditItem;
    cxBarEditItem12: TcxBarEditItem;
    dxBarSpinEdit2: TdxBarSpinEdit;
    cxBarEditItem13: TcxBarEditItem;
    cxBarEditItem14: TcxBarEditItem;
    cxBarEditItem15: TcxBarEditItem;
    dxBarSeparator2: TdxBarSeparator;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSeparator3: TdxBarSeparator;
    dxBarButton15: TdxBarButton;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarEdit2: TdxBarEdit;
    dxBarSeparator5: TdxBarSeparator;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarSpinEdit3: TdxBarSpinEdit;
    dxBarMRUListItem1: TdxBarMRUListItem;
    dxBarInPlaceSubItem1: TdxBarInPlaceSubItem;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    cxBarEditItem16: TcxBarEditItem;
    cxBarEditItem17: TcxBarEditItem;
    cxBarEditItem18: TcxBarEditItem;
    dxBarButton17: TdxBarButton;
    IBTARIF_COMP: TIBDataSet;
    IBTARIF_COMPID: TIntegerField;
    IBTARIF_COMPID_TARIF: TIntegerField;
    IBTARIF_COMPID_TARIFMES: TIntegerField;
    IBTARIF_COMPNAME: TIBStringField;
    IBTARIF_COMPSUMM: TIBBCDField;
    IBTARIF_COMPKL_NTAR: TIntegerField;
    IBTARIF_COMPFL_LIFT: TIntegerField;
    IBTARIF_COMPNORMA: TIBBCDField;
    DSTARIF_COMP: TDataSource;
    IBTARIF_DOM: TIBDataSet;
    IBTARIF_DOMID: TIntegerField;
    IBTARIF_DOMID_TARIF: TIntegerField;
    IBTARIF_DOMID_DOM: TIntegerField;
    IBTARIF_DOMNAME: TIBStringField;
    IBTARIF_DOMID_TARIFMES: TIntegerField;
    DSTARIF_DOM: TDataSource;
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
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    procedure Button1Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    private
    { Private declarations }
    procedure ClickBarButton(Sender: TObject);
    procedure Newmes;

    public
    vid_doc:integer;    //вид документа (приход,расход ...)
       { Public declarations }
    Period:TDate;

    procedure AddToolbar(frm:TForm);

  end;

var
  Main: TMain;
  ExB: WORD;
  HiForm:integer;
  frm:TSprav;
 // TB:TToolButton;
implementation

uses Aboutt ,TarifForm, DataMod, mytools, Import, Progress;

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








procedure TMain.dxBarButton10Click(Sender: TObject);
begin
 if Tarifs=nil then
 begin
 Application.CreateForm(TTarifs,Tarifs);
 AddToolBar(Tarifs);
 end
 else
 begin
 Tarifs.Show;
 Tarifs.SetFocus;
 end;
end;

procedure TMain.dxBarButton11Click(Sender: TObject);
begin
      if MdiChildCount<>0 then
      begin
            case MessageBox(handle,pchar('ўоб перейти на новий м≥€ць треба закрити вс≥ форми!'),pchar(''),MB_OKCANCEL) of
              mrOK:begin
                      dxBarButton42.Click;
        //            IBTransaction1.Active:=false;
        //            IBTransaction1.Active:=true;

                   end;
              mrCANCEL:begin
                Exit;
              end;
            end;
      end;

    if MdiChildCount=0 then
    case MessageBox(handle,pchar('¬и д≥йсно бажаЇте перейти на новий м≥с€ць?'),pchar(''),MB_OKCANCEL) of
      mrOK:begin

           Newmes;

           end;
    end;

end;

procedure TMain.Newmes;
begin
IBTARIF_MES.Active:=true;
IBTARIF_COMP.Active:=true;
IBTARIF_DOM.Active:=true;
Prores.Show;
         Prores.Label1.Caption:='ѕерех≥д на новий м≥с€ць';
         Application.ProcessMessages;
         Prores.cxProgressBar1.Visible:=true;
         Prores.cxProgressBar1.Position:=0;
         Prores.cxProgressBar1.Properties.Min:=0;
         IBQuery1.Active:=false;
         IBQuery1.SQL.Text:='select * from tarif_mes where tarif_mes.data=:dt';
         IBQuery1.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
         IBQuery1.Active:=true;
         IBQuery1.Last;
         Prores.cxProgressBar1.Properties.Max:=IBQuery1.RecordCount-1;
         Application.ProcessMessages;


        IBQuery1.First;
        while not IBQuery1.Eof do
        begin
          Prores.cxProgressBar1.Position:=Prores.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          if not Prores.Showing then
             Break;

          IBTARIF_MES.Insert;
          IBTARIF_MESID_TARIF.Value:=IBQuery1.FieldByName('ID_TARIF').Value;
          IBTARIF_MESDATA.Value:=IncMonth(Period);
          IBTARIF_MESTARIF_RN.Value:=iif(IBQuery1.FieldByName('TARIF_RK').Value=null,0,IBQuery1.FieldByName('TARIF_RK').Value);
          IBTARIF_MESNORMA.Value:=iif(IBQuery1.FieldByName('NORMA').Value=null,0,IBQuery1.FieldByName('NORMA').Value);
          IBTARIF_MESTARIF_END.Value:=iif(IBQuery1.FieldByName('TARIF_END').Value=null,0,IBQuery1.FieldByName('TARIF_END').Value);
          IBTARIF_MES.Post;

          IBQuery2.Active:=false;
         IBQuery2.SQL.Text:='select * from tarif_dom where id_tarifmes=:idmes';
         IBQuery2.ParamByName('idmes').Value:=IBQuery1.FieldByName('ID').Value;
         IBQuery2.Active:=true;
         IBQuery2.First;
         while not IBQuery2.Eof do
         begin
           IBTARIF_DOM.Insert;
           IBTARIF_DOMID_TARIF.Value:=IBQuery1.FieldByName('ID_TARIF').Value;
           IBTARIF_DOMID_DOM.Value:=IBQuery2.FieldByName('ID_DOM').Value;
           IBTARIF_DOMNAME.Value:=IBQuery2.FieldByName('NAME').Value;
           IBTARIF_DOMID_TARIFMES.Value:=IBTARIF_MESID.Value;
           IBTARIF_DOM.Post;
         IBQuery2.Next;
         end;


         IBQuery2.Active:=false;
         IBQuery2.SQL.Text:='select * from tarif_comp where id_tarifmes=:idmes';
         IBQuery2.ParamByName('idmes').Value:=IBQuery1.FieldByName('ID').Value;
         IBQuery2.Active:=true;
         IBQuery2.First;
         while not IBQuery2.Eof do
         begin
           IBTARIF_COMP.Insert;
           IBTARIF_COMPID_TARIF.Value:=IBQuery1.FieldByName('ID_TARIF').Value;
           IBTARIF_COMPNAME.Value:=IBQuery2.FieldByName('NAME').Value;
           IBTARIF_COMPKL_NTAR.Value:=iif(IBQuery2.FieldByName('KL_NTAR').Value=null,0,IBQuery2.FieldByName('KL_NTAR').Value);
           IBTARIF_COMPFL_LIFT.Value:=iif(IBQuery2.FieldByName('FL_LIFT').Value=null,0,IBQuery2.FieldByName('FL_LIFT').Value);
           IBTARIF_COMPNORMA.Value:=iif(IBQuery2.FieldByName('NORMA').Value=null,0,IBQuery2.FieldByName('NORMA').Value);
           IBTARIF_COMPID_TARIFMES.Value:=IBTARIF_MESID.Value;
           IBTARIF_COMP.Post;
         IBQuery2.Next;
         end;


        IBQuery1.Next;
        end;
        Prores.cxProgressBar1.Position:=0;
        Prores.Close;
        IBPERIOD.Insert;
        IBPERIODDATA.Value:=IncMonth(Period);
        IBPERIOD.Post;
        IBTransaction1.CommitRetaining;
        IBPERIOD.Close;
        IBPERIOD.Open;
        Period:=IBPERIODDATA.Value;
      messagedlg('ѕерех≥д завершено!',mtInformation,[mbOK],0);

end;


procedure TMain.dxBarButton19Click(Sender: TObject);
begin
Close;
end;

procedure TMain.dxBarButton30Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.Show;
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=0;
end;

procedure TMain.dxBarButton32Click(Sender: TObject);
begin
 if ImpForm=nil then
 begin
 Application.CreateForm(TImpForm,ImpForm);
  ImpForm.Show;
 ImpForm.SetFocus;
// AddToolBar(ImpForm);
 end
 else
 begin
 ImpForm.Show;
 ImpForm.SetFocus;
 end;
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
end;

procedure TMain.dxBarButton4Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.Show;
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
 Sprav.Show;
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=2;
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

procedure TMain.FormCreate(Sender: TObject);
begin
IBTransaction1.Active:=true;
IBPERIOD.Active:=true;
cxBarEditItem4.Caption:='                    '+mon_slovoDt(IBPERIODDATA.Value);
Period:=IBPERIODDATA.Value;
end;

end.
