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
  cxRadioGroup, cxTrackBar, dxRibbonGallery, IBX.IBQuery, ReportForm,
  Data.Win.ADODB;

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
    DІPERIOD: TDataSource;
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
    dxBarButton18: TdxBarButton;
    ADOQuery1: TADOQuery;
    ADOConnectionDBF: TADOConnection;
    ADOCommand1: TADOCommand;
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
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    private
    { Private declarations }
    procedure ClickBarButton(Sender: TObject);
    procedure Newmes;
    function OpenKvart :string;overload;
//    function FFile(path:string):string;

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
  Report1: tReport;
  Report2: tReport;
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
            case MessageBox(handle,pchar('Щоб перейти на новий міяць треба закрити всі форми!'),pchar(''),MB_OKCANCEL) of
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
    case MessageBox(handle,pchar('Ви дійсно бажаєте перейти на новий місяць?'),pchar(''),MB_OKCANCEL) of
      mrOK:begin

           Newmes;

           end;
    end;

end;

procedure TMain.dxBarButton17Click(Sender: TObject);
begin
 if Report1=nil then
 begin
 Application.CreateForm(TReport,Report1);
 AddToolBar(Report1);
 end
 else
 begin
 Report1.Show;
 Report1.SetFocus;
 end;
end;

procedure TMain.dxBarButton18Click(Sender: TObject);
begin
 if Report2=nil then
 begin
 Application.CreateForm(TReport,Report2);
 AddToolBar(Report2);
 end
 else
 begin
 Report2.Show;
 Report2.SetFocus;
 end;
end;


function TMain.OpenKvart: string;
var     adostr:WideString;
  F: TSearchRec;
  Path,ffile,mes: string;
  Attr: Integer;
begin
    try
    mes:=DataM.dirKvart;
    ADOConnectionDBF.Connected:=false;
    adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
            DataM.dirKvart+';Mode=Share Deny Read|Share Deny Write;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
            'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;'+
            'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
            'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
            'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don"t Copy Locale on Compact=False;'+
            'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

    ADOConnectionDBF.ConnectionString:=adostr;
    ADOConnectionDBF.Connected:=true;
    ffile:= 'tr'+Date2Str(IBPERIODDATA.Value,'yyyyMM');
    Path:=DataM.dirKvart+ffile+'.dbf';
    FindFirst(Path, Attr, F);

  {Если хотя бы один файл найден, то продолжить поиск}
    if F.name <> '' then
    begin
//      mes:='Неможливо видалити '+Path;
      if not deleteFile(Path) then
      begin
      ShowMessage('Неможливо видалити '+Path+' Можливо файл відкритий в іншій програмі. Спробуйте пізніше!');
      Result:='';
      Exit;
      end;

    end;
    FindClose(F);
    ADOQuery1.SQL.Clear;

//    ADOQuery1.SQL.Add('CREATE TABLE ['+ffile+'111]');
//ADOQuery1.SQL.Add('( [Code] autoincrement PRIMARY KEY,');
//ADOQuery1.SQL.Add(' [Category] varchar(50),');
//ADOQuery1.SQL.Add(' [ProgName] varchar(255),');
//ADOQuery1.SQL.Add(' [PathToFile] varchar(255),');
//ADOQuery1.SQL.Add(' [Note] varchar(255),');
//ADOQuery1.SQL.Add(' [PathToImage] varchar(255),');
//ADOQuery1.SQL.Add(' [PathToCrack1] varchar(255),');
//ADOQuery1.SQL.Add(' [Crack1] varchar(50),');
//ADOQuery1.SQL.Add(' [PathToCrack2] varchar(255),');
//ADOQuery1.SQL.Add(' [Crack2] varchar(50),');
//ADOQuery1.SQL.Add(' [PathToCrack3] varchar(255),');
//ADOQuery1.SQL.Add(' [Crack3] varchar(50),');
//ADOQuery1.SQL.Add(' [Favorit] LOGICAL );');
//ADOQuery1.ExecSQL;

ADOCommand1.CommandText:='';
ADOCommand1.CommandText:='create table '+ffile+' (`id` Numeric(10,0),'+
                                               ' kl Numeric(5,0),'+
                                               ' wid Character(2),'+
                                               ' name Character(50),'+
                                               ' tarif Numeric(9,4),'+
                                               ' norma Numeric(9,3),'+
                                               ' lift Numeric(1,0))';
ADOCommand1.Execute;

    Result:=ffile;
    except
    Result:='';
    messagedlg('Помилка підключення до квартплати '+mes,mtError,[mbCancel],0);
//    Application.Terminate;
//    Break;
    end;

end;

procedure TMain.Newmes;
var ffile:string;
begin
IBTARIF_MES.Active:=true;
IBTARIF_COMP.Active:=true;
IBTARIF_DOM.Active:=true;
Prores.Show;
         Prores.Label1.Caption:='Перехід на новий місяць';
         Application.ProcessMessages;
            ffile:=OpenKvart;
            if ffile='' then
            begin
              Prores.Close;
              exit;
            end
            else
            begin
             ADOQuery1.Close;
             ADOQuery1.SQL.Clear;
             ADOQuery1.SQL.Add('select * from '+ffile);
             ADOQuery1.Open;
            end;


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
         IBQuery2.SQL.Text:='select tarif_comp.*, tarif.name as nnn from tarif_comp, tarif where id_tarifmes=:idmes and tarif_comp.id_tarif=tarif.id';
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

           ADOQuery1.Insert;
           ADOQuery1.FieldByName('id').Value:=IBQuery1.FieldByName('ID_TARIF').Value;
           ADOQuery1.FieldByName('kl').Value:=iif(IBQuery2.FieldByName('KL_NTAR').Value=null,0,IBQuery2.FieldByName('KL_NTAR').Value);
           ADOQuery1.FieldByName('name').Value:=iif(IBQuery2.FieldByName('nnn').Value=null,0,IBQuery2.FieldByName('KL_NTAR').Value);
           ADOQuery1.FieldByName('lift').Value:=iif(IBQuery2.FieldByName('FL_LIFT').Value=null,0,IBQuery2.FieldByName('FL_LIFT').Value);
           ADOQuery1.FieldByName('norma').Value:=iif(IBQuery2.FieldByName('NORMA').Value=null,0,IBQuery2.FieldByName('NORMA').Value);
           ADOQuery1.FieldByName('tarif').Value:=iif(IBQuery2.FieldByName('SUMM').Value=null,0,IBQuery2.FieldByName('SUMM').Value);
           ADOQuery1.Post;

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
        ADOQuery1.Close;
        ADOConnectionDBF.Connected:=false;
      messagedlg('Перехід завершено!',mtInformation,[mbOK],0);

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
  case MessageBox(handle,pchar('Закрыть программу? Все не сохраненные данные будут утеряны.'),pchar(''),36) of
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
