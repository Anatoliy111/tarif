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
  Data.Win.ADODB,SpView, cxStyles, frxClass, frxDesgn, cxLocalization,
  IBX.IBStoredProc, dxSkinsDefaultPainters, dxSkinsdxBarPainter;

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
    D�PERIOD: TDataSource;
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
    IBSERVICE: TIBDataSet;
    D�SERVICE: TDataSource;
    IBSERVICEID: TIntegerField;
    IBSERVICEADMINPW: TIBStringField;
    IBSERVICEFL_RASH: TIntegerField;
    IBTARIF_MESEND_BL: TIBBCDField;
    IBTARIF_MESEND_L: TIBBCDField;
    ADOQuery2: TADOQuery;
    IBQuery3: TIBQuery;
    IBTARIF_COMPID: TIntegerField;
    IBTARIF_COMPID_TARIF: TIntegerField;
    IBTARIF_COMPID_TARIFMES: TIntegerField;
    IBTARIF_COMPNAME: TIBStringField;
    IBTARIF_COMPSUMM: TIBBCDField;
    IBTARIF_COMPKL_NTAR: TIntegerField;
    IBTARIF_COMPFL_LIFT: TIntegerField;
    IBTARIF_COMPNORMA: TIBBCDField;
    IBTARIF_COMPSPLAN: TIBBCDField;
    IBTARIF_COMPSFACT: TIBBCDField;
    IBTARIF_COMPSUMM_BL: TIBBCDField;
    IBTARIF_COMPSUMM_L: TIBBCDField;
    ADOQuery3: TADOQuery;
    IBQuery4: TIBQuery;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    IBTARIF_OTHER: TIBDataSet;
    DSTARIF_OTHER: TDataSource;
    IBTARIF_OTHERID: TIntegerField;
    IBTARIF_OTHERID_TARIF: TIntegerField;
    IBTARIF_OTHERID_TARIFMES: TIntegerField;
    IBTARIF_OTHERID_DOMOTHER: TIntegerField;
    IBTARIF_OTHERSPLAN: TIBBCDField;
    IBTARIF_OTHERSFACT: TIBBCDField;
    IBTARIF_OTHERNORMA: TIBBCDField;
    IBTARIF_OTHERSEND: TIBBCDField;
    IBTARIF_OTHERMZK: TIBBCDField;
    IBTARIF_MESLICH_PN: TIBBCDField;
    IBTARIF_MESLICH_PK: TIBBCDField;
    IBTARIF_MESNOTE: TIBStringField;
    IBTARIF_MESPLOS_BBI: TIBBCDField;
    IBTARIF_MESNSER_LICH: TIBStringField;
    IBTARIF_MESID_KOTEL: TIntegerField;
    IBTARIF_MESPLOS_BB: TIBBCDField;
    IBTARIF_MESMZK: TIBBCDField;
    IBTARIF_MESBORG_VIDH: TIBBCDField;
    IBTARIF_MESNO_LICH: TIntegerField;
    IBTARIF_MESPLOS_IN: TIBBCDField;
    IBTARIF_MESPLOS_MZK: TIBBCDField;
    IBTARIF_MESSUMOT: TIBBCDField;
    IBTARIF_MESSUMOTPDV: TIBBCDField;
    IBTARIF_MESLICH_GK: TIBBCDField;
    IBTARIF_MESTARIF_ENDPDV: TIBBCDField;
    IBTARIF_MESLICH_PN2: TIBBCDField;
    IBTARIF_MESLICH_PK2: TIBBCDField;
    IBTARIF_MESLICH_GK2: TIBBCDField;
    IBTARIF_OTHERSUMOT: TIBBCDField;
    IBTARIF_OTHERSUMOTPDV: TIBBCDField;
    IBTARIF_OTHERSENDPDV: TIBBCDField;
    IBTARIF_OTHERLICH_PN: TIBBCDField;
    IBTARIF_OTHERLICH_PK: TIBBCDField;
    IBTARIF_OTHERLICH_GK: TIBBCDField;
    IBTARIF_OTHERLICH_PN2: TIBBCDField;
    IBTARIF_OTHERLICH_PK2: TIBBCDField;
    IBTARIF_OTHERLICH_GK2: TIBBCDField;
    IBTARIF_OTHERFL_LICH: TIntegerField;
    IBTARIF_MESID_VIDCENA: TIntegerField;
    IBTARIF_OTHERID_VIDCENA: TIntegerField;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton35: TdxBarButton;
    IBTARIF_MESPROCENT: TIBBCDField;
    IBTARIF_MESCENA1: TIBBCDField;
    IBTARIF_MESCENA2: TIBBCDField;
    IBTARIF_MESFL_2CENA: TIntegerField;
    dxBarButton39: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxBarButton45: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    IBTARIF_OTHERCENA1: TIBBCDField;
    IBTARIF_OTHERCENA2: TIBBCDField;
    IBTARIF_OTHERMZK_GK1: TIBBCDField;
    IBTARIF_OTHERMZK_GK2: TIBBCDField;
    IBTARIF_OTHERFL_MZK: TIntegerField;
    dxBarButton46: TdxBarButton;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    IBTARIF_MESMZK_PROCENT: TIntegerField;
    cxLocalizer1: TcxLocalizer;
    IBStoredProc1: TIBStoredProc;
    IBTARIF_OTHERLICH_PGK: TIBBCDField;
    IBTARIF_OTHERLICH_PGK2: TIBBCDField;
    IBTARIF_OTHERFL_NONACH: TIntegerField;
    IBTARIF_OTHERMZK_PDV: TIBBCDField;
    IBTARIF_OTHERSUMMZK: TIBBCDField;
    IBTARIF_OTHERSUMMZK_PDV: TIBBCDField;
    IBTARIF_OTHERALLSUM: TIBBCDField;
    IBTARIF_OTHERALLSUM_PDV: TIBBCDField;
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
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    private
    { Private declarations }
    procedure ClickBarButton(Sender: TObject);

    function OpenKvart(ff:string;date:TDate) :string;overload;
//    function FFile(path:string):string;

    public
    vid_doc:integer;    //��� ��������� (������,������ ...)
       { Public declarations }
    Period:TDate;
    procedure Newmes(date:TDate);
    procedure expp(date:TDate);
    procedure AddToolbar(frm:TForm);

  end;

var
  Main: TMain;
  ExB: WORD;
  HiForm:integer;
  frm:TSprav;

  Report1: tReport;
  Report2: tReport;
  Report3: tReport;
  Report4: tReport;

 // TB:TToolButton;
implementation

uses Aboutt ,TarifForm, DataMod, mytools, Import, Progress, UITypes, SpDom,
  SpUl, FRRep;

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

//  NewButton.ButtonStyle := bsChecked;
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
 Tarifs.AutoMAX;
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
            case MessageBox(handle,pchar('��� ������� �� ����� ����� ����� ������� �� �����!'),pchar(''),MB_OKCANCEL) of
              mrOK:begin
                      dxBarButton42.Click;
        //            IBTransaction1.close;
        //            IBTransaction1.open;

                   end;
              mrCANCEL:begin
                Exit;
              end;
            end;
      end;

      if DataM.IBDatabaseInfo1.UserNames.Count > 1 then
      begin
          ShowMessage('�������� ������� ����� ������������. ������� �� ����� ����� �� ��������!!! ��� ������� �� ����� ����� ����� ������� �������� ����� ������������ ');
          Exit;
      end;

      IBSERVICE.close;
      IBSERVICE.open;

      if IBSERVICEFL_RASH.Value = 0 then
      begin
          ShowMessage('���� ������� ���� � ������ � �� �������� ����������. ��������� ������ ���������� ���� ���������� �� ����� �����!!!');
          Exit;
      end;

    if MdiChildCount=0 then
    case MessageBox(handle,pchar('�� ����� ������ ������� �� ����� �����?'),pchar(''),MB_OKCANCEL) of
      mrOK:begin

           Newmes(IBPERIODDATA.Value);

           end;
    end;

end;

procedure TMain.dxBarButton17Click(Sender: TObject);
begin
 if Report1=nil then
 begin

 Application.CreateForm(TReport,Report1);
 Report1.Caption:=dxBarButton17.Caption;
//  Report1.IBQuery1.close;
//  Report1.IBQuery1.ParamByName('dt').Value:=Report1.IBPERIODDATA.Value;
//  Report1.IBQuery1.ParamByName('pos').AsInteger:=Report1.IBPOSLID.Value;
//  Report1.IBQuery1.open;
  Report1.IBQuery1.open;
  Report1.cxLookupComboBox1.EditValue:=Report1.IBPERIODDATA.Value;
  Report1.cxGrid3.Visible:=false;
  Report1.cxGrid2.Visible:=false;
  Report1.cxGrid1.Align:=alClient;
  Report1.cxGrid1DBTableView1.DataController.DataSource:=Report1.DSQuery1;
  Report1.AutoMAX;
 AddToolBar(Report1);
 Report1.Show;
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
 Report2.AutoMAX;
 AddToolBar(Report2);
 end
 else
 begin
 Report2.Show;
 Report2.SetFocus;
 end;
end;


function TMain.OpenKvart(ff:string;date:TDate): string;
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
    ffile:= Date2Str(date,'yyyyMM')+ff;
    Path:=DataM.dirKvart+ffile+'.dbf';
    Attr:=0;
    FindFirst(Path, Attr, F);

  {���� ���� �� ���� ���� ������, �� ���������� �����}
    if F.name <> '' then
    begin
//      mes:='��������� �������� '+Path;
      if not deleteFile(Path) then
      begin
      ShowMessage('��������� �������� '+Path+' ������� ���� �������� � ����� �������. ��������� ������!');
      Result:='';
      Exit;
      end;

    end;
    FindClose(F);
    ADOQuery1.SQL.Clear;

//    ADOQuery1.SQL.Add('create table '+ffile+' (');
//ADOQuery1.SQL.Add('id Numeric(10,0),');
//ADOQuery1.SQL.Add('kl Numeric(5,0),');
//ADOQuery1.SQL.Add('wid Character(2),');
//ADOQuery1.SQL.Add('name Character(50),');
//ADOQuery1.SQL.Add('tarif Numeric(9,4),');
//ADOQuery1.SQL.Add('norma Numeric(9,3),');
//ADOQuery1.SQL.Add('[Category] Numeric(5),');
//ADOQuery1.SQL.Add('lift Numeric(1,0))');
//ADOQuery1.ExecSQL;

    if ff='kv' then
    begin
    ADOCommand1.CommandText:='';
    ADOCommand1.CommandText:='create table '+ffile+' (id_tarif Numeric(10,0),'+
                                                   ' kl Numeric(5,0),'+
                                                   ' wid Character(2),'+
                                                   ' kl_ul Numeric(10,0),'+
                                                   ' ul Character(40),'+
                                                   ' dom Character(5),'+
                                                   ' name Character(50),'+
                                                   ' tarif Numeric(9,4),'+
                                                   ' tarif_bl Numeric(9,4),'+
                                                   ' tarif_l Numeric(9,4),'+
                                                   ' plan Numeric(9,4),'+
                                                   ' fact Numeric(9,4),'+
                                                   ' norma Numeric(9,3),'+
                                                   ' lift Numeric(1,0),'+
                                                   ' tarsubs Numeric(9,4))';
    ADOCommand1.Execute;
    end;
    if ff='in' then
    begin
    ADOCommand1.CommandText:='';
    ADOCommand1.CommandText:='create table '+ffile+' (id_tarif Numeric(10,0),'+
                                                   ' id_dom Numeric(10,0),'+
                                                   ' id_ul Numeric(10,0),'+
                                                   ' ul Character(40),'+
                                                   ' dom Character(5),'+
                                                   ' code_ser Numeric(11),'+
                                                   ' wid Character(2),'+
                                                   ' name Character(254),'+
                                                   ' plan Numeric(9,2),'+
                                                   ' fact Numeric(9,4))';

    ADOCommand1.Execute;
    end;

    if ff='tr' then
    begin
    ADOCommand1.CommandText:='';
    ADOCommand1.CommandText:='create table '+ffile+' (id_tarif Numeric(10,0),'+
                                                   ' id_dom Numeric(10,0),'+
                                                   ' id_house Numeric(10,0),'+
                                                   ' wid Character(2),'+
                                                   ' id_ul Numeric(10,0),'+
                                                   ' ul Character(40),'+
                                                   ' dom Character(5),'+
                                                   ' id_street Numeric(10,0),'+
                                                   ' kl_ul Numeric(10,0),'+
                                                   ' tarif Numeric(9,4),'+
                                                   ' tarif_bl Numeric(9,4),'+
                                                   ' tarif_l Numeric(9,4),'+
                                                   ' plan Numeric(9,4),'+
                                                   ' fact Numeric(9,4),'+
                                                   ' norma Numeric(9,3))';

    ADOCommand1.Execute;
    end;
// ��������� Microsoft.Jet.OLEDB.4.0, ��� �������� ������� � ����� Numeric,
// ������ ������ ����� 19,5 ��� 20,5 - ����������� ����������.

    Result:=ffile;
    except
    Result:='';
    messagedlg('������� ���������� �� ���������� '+mes,mtError,[mbCancel],0);
//    Application.Terminate;
//    Break;
    end;

end;

procedure TMain.Newmes(date:TDate);
var fftt,ffin,ffdm,sss:string;
    FL_2DATE:integer;
begin
IBTARIF_MES.close;
IBTARIF_COMP.close;
IBTARIF_DOM.close;
IBTARIF_OTHER.close;

IBTARIF_MES.open;
IBTARIF_COMP.open;
IBTARIF_DOM.open;
IBTARIF_OTHER.open;
Prores.Show;

           Prores.Label1.Caption:='������� �� ����� �����';


         Application.ProcessMessages;




         Prores.cxProgressBar1.Visible:=true;
         Prores.cxProgressBar1.Position:=0;
         Prores.cxProgressBar1.Properties.Min:=0;

         IBQuery1.close;
         IBQuery1.SQL.Text:='select * from vw_tm where data=:dt';
         IBQuery1.ParamByName('dt').AsDate:=date;

         IBQuery1.open;
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
            IBTARIF_MESID_TARIF.Value:=IBQuery1.FieldByName('ID_TARIF').AsInteger;
            IBTARIF_MESDATA.Value:=IncMonth(date);
            IBTARIF_MESTARIF_RN.Value:=iif(IBQuery1.FieldByName('TARIF_RK').Value=null,0,IBQuery1.FieldByName('TARIF_RK').Value);
            IBTARIF_MESNORMA.Value:=iif(IBQuery1.FieldByName('NORMA').Value=null,0,IBQuery1.FieldByName('NORMA').Value);
            if (trim(IBQuery1.FieldByName('WID').AsString)<>'ot') then
              IBTARIF_MESTARIF_END.AsCurrency:=IBQuery1.FieldByName('TARIF_END').AsCurrency;
            if (trim(IBQuery1.FieldByName('WID').AsString)='ub') then
            begin
              IBTARIF_MESTARIF_PLAN.AsCurrency:=IBQuery1.FieldByName('TARIF_PLAN').AsCurrency;
              IBTARIF_MESTARIF_FACT.AsCurrency:=IBQuery1.FieldByName('TARIF_FACT').AsCurrency;
              IBTARIF_MESFACT_BL.AsCurrency:=IBQuery1.FieldByName('FACT_BL').AsCurrency;
              IBTARIF_MESEND_BL.AsCurrency:=IBQuery1.FieldByName('END_BL').AsCurrency;
              IBTARIF_MESEND_L.AsCurrency:=IBQuery1.FieldByName('END_L').AsCurrency;
//              IBTARIF_MESTARIF_END.AsCurrency:=IBQuery1.FieldByName('TARIF_END').AsCurrency;
//              IBTARIF_MESTARIF_END.AsCurrency:=IBQuery1.FieldByName('TARIF_END').AsCurrency;
//              IBTARIF_MESTARIF_END.AsCurrency:=IBQuery1.FieldByName('TARIF_END').AsCurrency;
//              IBTARIF_MESTARIF_END.AsCurrency:=IBQuery1.FieldByName('TARIF_END').AsCurrency;
            end;




            if IBQuery1.FieldByName('FL_2CENA').AsInteger=1 then
               IBTARIF_MESLICH_PN.Value:=IBQuery1.FieldByName('LICH_PK2').AsFloat
            else
               IBTARIF_MESLICH_PN.Value:=IBQuery1.FieldByName('LICH_PK').AsFloat;



            IBTARIF_MESNOTE.AsString:=IBQuery1.FieldByName('NOTE').AsString;
            IBTARIF_MESPLOS_BBI.AsFloat:=IBQuery1.FieldByName('PLOS_BBI').AsFloat;
            IBTARIF_MESNSER_LICH.AsString:=IBQuery1.FieldByName('NSER_LICH').AsString;
            IBTARIF_MESID_KOTEL.AsInteger:=IBQuery1.FieldByName('ID_KOTEL').AsInteger;
            IBTARIF_MESPLOS_BB.AsFloat:=IBQuery1.FieldByName('PLOS_BB').AsFloat;
            IBTARIF_MESPLOS_IN.AsFloat:=IBQuery1.FieldByName('PLOS_IN').AsFloat;
            IBTARIF_MESPLOS_MZK.AsFloat:=IBQuery1.FieldByName('PLOS_MZK').AsFloat;
            IBTARIF_MESID_VIDCENA.AsInteger:=IBQuery1.FieldByName('ID_VIDCENA').AsInteger;
            IBTARIF_MESPROCENT.AsFloat:=IBQuery1.FieldByName('PROCENT').AsFloat;
            IBTARIF_MESNO_LICH.AsInteger:=IBQuery1.FieldByName('NO_LICH').AsInteger;
            IBTARIF_MESMZK_PROCENT.AsString:=IBQuery1.FieldByName('MZK_PROCENT').AsString;

            IBTARIF_MES.Post;



              IBQuery2.close;
             IBQuery2.SQL.Text:='select * from tarif_dom where id_tarifmes=:idmes';
             IBQuery2.ParamByName('idmes').Value:=IBQuery1.FieldByName('ID').AsInteger;
             IBQuery2.open;
             IBQuery2.First;
             while not IBQuery2.Eof do
             begin
               IBTARIF_DOM.Insert;
               IBTARIF_DOMID_TARIF.Value:=IBQuery1.FieldByName('ID_TARIF').AsInteger;
               IBTARIF_DOMID_DOM.Value:=IBQuery2.FieldByName('ID_DOM').AsInteger;
               IBTARIF_DOMNAME.Value:=IBQuery2.FieldByName('NAME').AsString;
               IBTARIF_DOMID_TARIFMES.Value:=IBTARIF_MESID.AsInteger;
               IBTARIF_DOM.Post;
             IBQuery2.Next;
             end;



              IBQuery2.close;
             IBQuery2.SQL.Text:='select * from tarif_other where id_tarifmes=:idmes';
             IBQuery2.ParamByName('idmes').Value:=IBQuery1.FieldByName('ID').AsInteger;
             IBQuery2.open;
             IBQuery2.First;
             while not IBQuery2.Eof do
             begin

                   IBTARIF_OTHER.Insert;
                   IBTARIF_OTHERID_TARIF.Value:=IBQuery1.FieldByName('ID_TARIF').AsInteger;
                   IBTARIF_OTHERID_DOMOTHER.Value:=IBQuery2.FieldByName('ID_DOMOTHER').AsInteger;

                   if (IBQuery2.FieldByName('LICH_PK2').AsFloat<>0) and (FL_2DATE=1) then
                      IBTARIF_OTHERLICH_PN.Value:=IBQuery2.FieldByName('LICH_PK2').AsFloat
                   else
                      IBTARIF_OTHERLICH_PN.Value:=IBQuery2.FieldByName('LICH_PK').AsFloat;

                   IBTARIF_OTHERID_TARIFMES.Value:=IBTARIF_MESID.AsInteger;
                   IBTARIF_OTHERID_VIDCENA.Value:=IBQuery2.FieldByName('ID_VIDCENA').AsInteger;
                   IBTARIF_OTHERFL_LICH.Value:=IBQuery2.FieldByName('FL_LICH').AsInteger;
                   IBTARIF_OTHERNORMA.Value:=IBQuery2.FieldByName('NORMA').AsFloat;
                   IBTARIF_OTHERFL_MZK.Value:=IBQuery2.FieldByName('FL_MZK').AsInteger;
                   IBTARIF_OTHER.Post;





             IBQuery2.Next;
             end;



        IBQuery1.Next;
        end;

        Prores.cxProgressBar1.Position:=0;
        Prores.Close;
            IBPERIOD.Insert;
            IBPERIODDATA.Value:=IncMonth(date);
            IBPERIOD.Post;
            IBTransaction1.CommitRetaining;
            IBPERIOD.Close;
            IBPERIOD.Open;
            Period:=IBPERIODDATA.Value;
            cxBarEditItem4.Caption:='                    '+mon_slovoDt(IBPERIODDATA.Value);

          messagedlg('������� ���������!',mtInformation,[mbOK],0);

end;

procedure TMain.expp(date:TDate);
var fftt,ffin,ffdm,sss:string;
    FL_2DATE:integer;
begin
IBTARIF_MES.close;
IBTARIF_COMP.close;
IBTARIF_DOM.close;
IBTARIF_OTHER.close;

IBTARIF_MES.open;
IBTARIF_COMP.open;
IBTARIF_DOM.open;
IBTARIF_OTHER.open;
Prores.Show;

           Prores.Label1.Caption:='�������� �������';

         Application.ProcessMessages;
            fftt:=OpenKvart('kv',date);
            if fftt='' then
            begin
              Prores.Close;
              exit;
            end;
            ffin:=OpenKvart('in',date);
            if ffin='' then
            begin
              Prores.Close;
              exit;
            end;
            ffdm:=OpenKvart('tr',date);
            if ffdm='' then
            begin
              Prores.Close;
              exit;
            end;

             ADOQuery1.Close;
             ADOQuery1.SQL.Clear;
             ADOQuery1.SQL.Add('select * from '+fftt);
             ADOQuery1.Open;

             ADOQuery2.Close;
             ADOQuery2.SQL.Clear;
             ADOQuery2.SQL.Add('select * from '+ffin);
             ADOQuery2.Open;

             ADOQuery3.Close;
             ADOQuery3.SQL.Clear;
             ADOQuery3.SQL.Add('select * from '+ffdm);
             ADOQuery3.Open;



         Prores.cxProgressBar1.Visible:=true;
         Prores.cxProgressBar1.Position:=0;
         Prores.cxProgressBar1.Properties.Min:=0;

IBQuery1.close;
IBQuery1.SQL.Clear;
IBQuery1.SQL.Text:='execute procedure exp (:vidab,:dt)';
IBQuery1.Prepare;
IBQuery1.ParamByName('vidab').asString:='ns';
IBQuery1.ParamByName('dt').AsDate:=date;
IBQuery1.ExecSQL;
IBTransaction1.CommitRetaining;

//IBStoredProc1.StoredProcedureNames:='CENA_OPAL';
IBStoredProc1.ParamByName('WID').AsString := 'ns';
IBStoredProc1.ExecProc;
//ShowMessage(IBStoredProc1.ParamByName('CENA_OT').AsFloat);

         IBQuery1.close;
         IBQuery1.SQL.Text:='select * from export';
         IBQuery1.open;
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
                   if IBQuery1.FieldByName('TARIF_END').AsFloat<>0 then
                   begin

                                IBQuery3.close;
                                IBQuery3.SQL.Text:='select tarif_dom.*, dom.id_house, dom.id_ul, dom.dom, ul.name as ul, ul.id_street, ul.kl as kl_ul from tarif_dom, dom, ul where tarif_dom.id_tarifmes=:idmes and tarif_dom.id_dom=dom.id and dom.id_ul=ul.id';
                                IBQuery3.ParamByName('idmes').Value:=IBQuery1.FieldByName('ID_TARIFMES').Value;
                                IBQuery3.open;
                                IBQuery3.last;


                   ADOQuery1.Insert;
                   ADOQuery1.FieldByName('id_tarif').Value:=IBQuery1.FieldByName('ID').AsInteger;
                   ADOQuery1.FieldByName('kl').Value:=IBQuery1.FieldByName('kl_old').AsInteger;
                   ADOQuery1.FieldByName('wid').Value:=IBQuery1.FieldByName('WID').AsString;
                   ADOQuery1.FieldByName('name').Value:=StringReplace(IBQuery1.FieldByName('TARIFNAM').Value, '�', 'i',[rfReplaceAll, rfIgnoreCase]);
                   ADOQuery1.FieldByName('norma').Value:=IBQuery1.FieldByName('NORMA').AsFloat;
                   ADOQuery1.FieldByName('tarif').Value:=IBQuery1.FieldByName('TARIF_END').AsFloat;
                   ADOQuery1.FieldByName('plan').Value:=IBQuery1.FieldByName('TARIF_PLAN').AsFloat;
                   ADOQuery1.FieldByName('fact').Value:=IBQuery1.FieldByName('TARIF_FACT').AsFloat;
                   ADOQuery1.FieldByName('tarif_bl').Value:=IBQuery1.FieldByName('END_BL').AsFloat;
                   ADOQuery1.FieldByName('tarif_l').Value:=IBQuery1.FieldByName('END_L').AsFloat;
                   ADOQuery1.FieldByName('tarsubs').Value:=IBQuery1.FieldByName('TARIF_END').AsFloat;
                   if IBQuery1.FieldByName('WID').AsString='ot' then
                      ADOQuery1.FieldByName('tarsubs').Value:=roundMy(IBStoredProc1.ParamByName('CENA_OT').AsFloat*1.2,2);
                   if IBQuery1.FieldByName('WID').AsString='om' then
                      ADOQuery1.FieldByName('tarsubs').Value:=roundMy(IBStoredProc1.ParamByName('CENA_MZK').AsFloat*1.2,2);

                   if IBQuery3.RecordCount=1 then
                   begin
                     ADOQuery1.FieldByName('dom').Value:=IBQuery3.FieldByName('dom').Value;
                     ADOQuery1.FieldByName('kl_ul').Value:=IBQuery3.FieldByName('kl_ul').Value;
                     ADOQuery1.FieldByName('ul').Value:=IBQuery3.FieldByName('ul').Value;
                   end;


                   ADOQuery1.Post;
                   end;



         IBQuery1.Next;
         end;


         IBQuery1.close;
         IBQuery1.SQL.Text:='select * from vw_tm where data=:dt';
         IBQuery1.ParamByName('dt').AsDate:=date;

         IBQuery1.open;
         IBQuery1.Last;
         Prores.cxProgressBar1.Properties.Max:=IBQuery1.RecordCount-1;
         Application.ProcessMessages;


        IBQuery1.First;
        while not IBQuery1.Eof do
        begin


             IBQuery3.close;
             IBQuery3.SQL.Text:='select tarif_dom.*, dom.id_house, dom.id_ul, dom.dom, ul.name as ul, ul.id_street, ul.kl as kl_ul from tarif_dom, dom, ul where tarif_dom.id_tarifmes=:idmes and tarif_dom.id_dom=dom.id and dom.id_ul=ul.id';
             IBQuery3.ParamByName('idmes').Value:=IBQuery1.FieldByName('ID').Value;
             IBQuery3.open;
             IBQuery3.First;
             while not IBQuery3.Eof do
             begin
               ADOQuery3.Insert;
               ADOQuery3.FieldByName('id_tarif').Value:=IBQuery1.FieldByName('ID_TARIF').AsInteger;
               ADOQuery3.FieldByName('id_dom').Value:=IBQuery3.FieldByName('id_dom').AsInteger;
               ADOQuery3.FieldByName('id_house').Value:=IBQuery3.FieldByName('id_house').Value;
               ADOQuery3.FieldByName('dom').Value:=IBQuery3.FieldByName('dom').Value;
               ADOQuery3.FieldByName('wid').Value:=IBQuery1.FieldByName('WID').Value;
               ADOQuery3.FieldByName('id_ul').Value:=IBQuery3.FieldByName('id_ul').Value;
               ADOQuery3.FieldByName('ul').Value:=IBQuery3.FieldByName('ul').Value;
               ADOQuery3.FieldByName('id_street').Value:=IBQuery3.FieldByName('id_street').Value;
               ADOQuery3.FieldByName('kl_ul').Value:=IBQuery3.FieldByName('kl_ul').Value;
               ADOQuery3.FieldByName('norma').Value:=IBQuery1.FieldByName('NORMA').AsFloat;
               ADOQuery3.FieldByName('tarif').Value:=IBQuery1.FieldByName('TARIF_END').AsFloat;
               ADOQuery3.FieldByName('plan').Value:=IBQuery1.FieldByName('TARIF_PLAN').AsFloat;
               ADOQuery3.FieldByName('fact').Value:=IBQuery1.FieldByName('TARIF_FACT').AsFloat;
               ADOQuery3.FieldByName('tarif_bl').Value:=IBQuery1.FieldByName('END_BL').AsFloat;
               ADOQuery3.FieldByName('tarif_l').Value:=IBQuery1.FieldByName('END_L').AsFloat;
               ADOQuery3.Post;


                 IBQuery4.close;
                 IBQuery4.SQL.Text:='select tarif_inf.*, tarif_vid.name as nnn, tarif_vid.code_servi from tarif_inf, tarif_vid where tarif_inf.id_tarifmes=:idmes and tarif_inf.id_tarvid=tarif_vid.id';
                 IBQuery4.ParamByName('idmes').Value:=IBQuery1.FieldByName('ID').Value;
                 IBQuery4.open;
                 IBQuery4.First;
                 while not IBQuery4.Eof do
                 begin
                   ADOQuery2.Insert;
                   ADOQuery2.FieldByName('id_tarif').Value:=IBQuery1.FieldByName('ID_TARIF').AsInteger;
                   ADOQuery2.FieldByName('code_ser').Value:=IBQuery4.FieldByName('code_servi').Value;
                   ADOQuery2.FieldByName('name').Value:=StringReplace(IBQuery4.FieldByName('nnn').Value, '�', 'i',[rfReplaceAll, rfIgnoreCase]);
                   ADOQuery2.FieldByName('wid').Value:=IBQuery1.FieldByName('WID').Value;
                   ADOQuery2.FieldByName('plan').Value:=iif(IBQuery4.FieldByName('s_plan').Value=null,0,IBQuery4.FieldByName('s_plan').Value);
                   ADOQuery2.FieldByName('fact').Value:=iif(IBQuery4.FieldByName('s_fact').Value=null,0,IBQuery4.FieldByName('s_fact').Value);
                   ADOQuery2.FieldByName('id_dom').Value:=IBQuery3.FieldByName('id_dom').Value;
                   ADOQuery2.FieldByName('dom').Value:=IBQuery3.FieldByName('dom').Value;
                   ADOQuery2.FieldByName('id_ul').Value:=IBQuery3.FieldByName('id_ul').Value;
                   ADOQuery2.FieldByName('ul').Value:=IBQuery3.FieldByName('ul').Value;

                   ADOQuery2.Post;

                 IBQuery4.Next;
                 end;

             IBQuery3.Next;
             end;

        IBQuery1.Next;
        end;

        Prores.cxProgressBar1.Position:=0;
        Prores.Close;
        messagedlg('�������� ���������!',mtInformation,[mbOK],0);

            ADOQuery1.Close;
            ADOConnectionDBF.Connected:=false;


end;





procedure TMain.dxBarButton19Click(Sender: TObject);
begin
Close;
end;

procedure TMain.dxBarButton20Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.Show;
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=3;
end;

procedure TMain.dxBarButton21Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.Show;
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=4;
end;

procedure TMain.dxBarButton22Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.Show;
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=5;
end;

procedure TMain.dxBarButton23Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.Show;
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=6;
end;

procedure TMain.dxBarButton25Click(Sender: TObject);
begin
 if Sprav=nil then
 begin
 Application.CreateForm(TSprav,Sprav);
 AddToolBar(Sprav);
 end
 else
 Sprav.Show;
 Sprav.SetFocus;
 Sprav.cxPageControl1.ActivePageIndex:=7;
end;

procedure TMain.dxBarButton26Click(Sender: TObject);
begin
 if Report2=nil then
 begin

 Application.CreateForm(TReport,Report2);
 Report2.AutoMAX;
 Report2.IBPOSL.SelectSQL.Text:='select * from POSL where exists (select tarif.id_posl from tarif_other, tarif where tarif_other.id_tarif=tarif.id and tarif.id_posl=posl.id)';
 Report2.IBPOSL.Close;
 Report2.IBPOSL.Open;
 Report2.Caption:=dxBarButton26.Caption;
//  Report1.IBQuery1.close;
//  Report1.IBQuery1.ParamByName('dt').Value:=Report1.IBPERIODDATA.Value;
//  Report1.IBQuery1.ParamByName('pos').AsInteger:=Report1.IBPOSLID.Value;
//  Report1.IBQuery1.open;
  Report2.IBQuery2.open;
  Report2.cxLookupComboBox1.EditValue:=Report2.IBPERIODDATA.Value;
  Report2.DBLookupListBox1.Visible:=false;
  Report2.cxGrid1.Visible:=false;
  Report2.cxGrid3.Visible:=false;
  Report2.cxGrid2.Align:=alClient;

 AddToolBar(Report2);
 Report2.Show;
 end
 else
 begin
 Report2.Show;
 Report2.SetFocus;
 end;
end;

procedure TMain.dxBarButton27Click(Sender: TObject);
begin
FRRepForm.Show;
end;

procedure TMain.dxBarButton28Click(Sender: TObject);
begin
frxReport1.DesignReport();
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

procedure TMain.dxBarButton43Click(Sender: TObject);
begin
 if Report3=nil then
 begin

 Application.CreateForm(TReport,Report3);
 Report3.Caption:=dxBarButton43.Caption;
//  Report1.IBQuery1.close;
//  Report1.IBQuery1.ParamByName('dt').Value:=Report1.IBPERIODDATA.Value;
//  Report1.IBQuery1.ParamByName('pos').AsInteger:=Report1.IBPOSLID.Value;
//  Report1.IBQuery1.open;
//  Report3.IBQuery3.open;
  Report3.IBQuery3.open;
  Report3.cxLookupComboBox1.EditValue:=Report3.IBPERIODDATA.Value;
  Report3.cxLookupComboBox2.EditValue:=Report3.IBPERIODDATA.Value;
  Report3.DBLookupListBox1.Visible:=false;
  Report3.cxLookupComboBox2.Visible:=true;
  Report3.cxLabel1.Visible:=true;
  Report3.cxGrid3.Visible:=false;
  Report3.cxGrid2.Visible:=false;
  Report3.cxGrid1.Align:=alClient;
  Report3.cxGrid1DBTableView1.DataController.DataSource:=Report3.DSQuery3;
  Report3.AutoMAX;

 AddToolBar(Report3);
 Report3.Show;
 end
 else
 begin
 Report3.Show;
 Report3.SetFocus;
 end;
end;

procedure TMain.dxBarButton46Click(Sender: TObject);
begin
 if Report4=nil then
 begin

 Application.CreateForm(TReport,Report4);
 Report4.Caption:=dxBarButton46.Caption;
  Report4.IBQuery4.open;
  Report4.cxLookupComboBox1.EditValue:=Report4.IBPERIODDATA.Value;
  Report4.DBLookupListBox1.Visible:=false;
  Report4.cxGrid1.Visible:=false;
  Report4.cxGrid2.Visible:=false;
  Report4.cxGrid3.Align:=alClient;
  Report4.cxGrid1DBTableView1.DataController.DataSource:=Report4.DSQuery4;
  Report4.AutoMAX;

 AddToolBar(Report4);
 Report4.Show;
 end
 else
 begin
 Report4.Show;
 Report4.SetFocus;
 end;
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
//for i:= 0 to MdiChildCount - 1 do
//  MDIChildren[i].Close;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=true;
  case MessageBox(handle,pchar('������� ��������? �� �� ��������� ���� ������ ��������.'),pchar(''),36) of
    IDYES:ModalResult:=mrYes;
    IDNO:CanClose:=false;
  end;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
if not IBTransaction1.Active then
IBTransaction1.StartTransaction;

IBPERIOD.open;
cxBarEditItem4.Caption:='                    '+mon_slovoDt(IBPERIODDATA.Value);
Period:=IBPERIODDATA.Value;
IBSERVICE.open;

   cxLocalizer1.Active:=false;
   cxLocalizer1.FileName:=GetCurrentDir+'\Ukr.INI';
   cxLocalizer1.Active:=true;
   cxLocalizer1.Locale:=1058;
end;

//
//Report1.cxLookupComboBox1.EditValue:= IBPERIODDATA.Value;
//Report1.cxGrid1DBTableView1.DataController.DataSource:=Report1.DSQuery1;
//Report1.cxGrid1DBTableView1.DataController.CreateAllItems(True);
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('ID').Visible:=false;
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('UL').Caption:='������';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('DOM').Caption:='�������';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('tarif').Caption:='�����';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('tarif_end').Caption:='�����. �����';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('tarif_endpdv').Caption:='�����. ����� � ���';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('sumot').Caption:='�������';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('sumotpdv').Caption:='������� � ���';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('vid').Caption:='��� ����.';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('mzk').Caption:='���';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('kotel').Caption:='��������';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('TARIF_PLAN').Caption:='�������� �����';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('TARIF_FACT').Caption:='��������� �����';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('NORMA').Caption:='�����';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('END_BL').Caption:='��� ����';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('END_L').Caption:='˳��';

end.
