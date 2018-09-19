unit InsertForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxGraphics, cxControls, dxStatusBar, cxClasses, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxLabel, cxDropDownEdit, cxDBEdit, cxMemo, cxMaskEdit, cxCalendar,
  cxTextEdit, DB, IBCustomDataSet, IBDatabase, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ImgList, SpecifForm, AllMDIChild,
  cxLookAndFeels, cxNavigator, System.ImageList;

type
  TInsert = class(TAllMDICh)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    dxBarDockControl1: TdxBarDockControl;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarButton1: TdxBarButton;
    ImageList1: TImageList;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    IBMATSKL: TIBDataSet;
    IBKLIENT: TIBDataSet;
    IBDOC: TIBDataSet;
    IBADDIT: TIBDataSet;
    DSSKL: TDataSource;
    DSKLIENT: TDataSource;
    DSDOC: TDataSource;
    DSADDIT: TDataSource;
    cxLabel6: TcxLabel;
    IBCEX: TIBDataSet;
    DSCEX: TDataSource;
    IBCEXKL: TIntegerField;
    IBCEXNAME: TIBStringField;
    IBCEXNM: TIBStringField;
    IBCEXNUM: TIntegerField;
    IBCEXNPP: TIntegerField;
    IBCEXPR: TSmallintField;
    IBCEXDELET: TIntegerField;
    IBCEXMAT_PR: TIntegerField;
    cxButton1: TcxButton;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    IBMATSKLKL: TIntegerField;
    IBMATSKLKL_CEX: TIntegerField;
    IBMATSKLN_SKL: TIntegerField;
    IBMATSKLNAIM: TIBStringField;
    IBMATSKLDELET: TSmallintField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGrid1DBTableView1NOM_N: TcxGridDBColumn;
    cxGrid1DBTableView1NAIM: TcxGridDBColumn;
    cxGrid1DBTableView1ED_IZM: TcxGridDBColumn;
    cxGrid1DBTableView1KOLI: TcxGridDBColumn;
    cxGrid1DBTableView1CENA: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    IBKLIENTKL: TIntegerField;
    IBKLIENTNAME: TIBStringField;
    IBKLIENTADRES: TIBStringField;
    IBKLIENTNUM_SVID: TIBStringField;
    IBKLIENTEDRPOU: TIBStringField;
    IBKLIENTTELEFON: TIBStringField;
    IBKLIENTDIREKTOR: TIBStringField;
    IBKLIENTBUHG: TIBStringField;
    IBKLIENTDELET: TSmallintField;
    IBDOCKL: TIntegerField;
    IBDOCKL_DOC: TIntegerField;
    IBDOCKL_PLAT: TIntegerField;
    IBDOCKL_BANK_RAX_DT: TIntegerField;
    IBDOCKL_BANK_RAX_KR: TIntegerField;
    IBDOCSUMMA: TIBBCDField;
    IBDOCNUM_DOC: TIBStringField;
    IBDOCDATA_DOC: TDateField;
    IBDOCKL_CEX: TIntegerField;
    IBDOCKL_SKL: TIntegerField;
    IBDOCKL_KLIENT: TIntegerField;
    IBDOCPRIZ: TIBStringField;
    IBDOCMOL: TIBStringField;
    IBDOCNUM_RAX: TIBStringField;
    IBDOCDATA_RAX: TDateField;
    IBDOCNOTE: TIBStringField;
    IBDOCDATA_NOW: TDateField;
    IBADDITKL: TIntegerField;
    IBADDITKL_DOC: TIntegerField;
    IBADDITNOM_N: TLargeintField;
    IBADDITKL_NAIM: TIntegerField;
    IBADDITNAIM: TIBStringField;
    IBADDITED_IZM: TIBStringField;
    IBADDITKOLI: TIBBCDField;
    IBADDITCENA: TIBBCDField;
    IBADDITSUMMA: TIBBCDField;
    IBADDITDATA_NOW: TDateField;
    IBADDITNPP: TIntegerField;
    cxGrid1DBTableView1NPP: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure IBDOCBeforePost(DataSet: TDataSet);
    procedure dxBarButton1Click(Sender: TObject);
    procedure IBADDITBeforePost(DataSet: TDataSet);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxGroupBox1Exit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure NppADDIT;
    procedure dxBarButton2Click(Sender: TObject);
  private

    { Private declarations }
  protected
  //  MatSpec:TSpecif;
  public
    { Public declarations }
  //      N_DOC:integer; //номер документа
      //  ABar: TdxBar;    // ccылка на БАР главной формы
//        ABar1: TdxBar;
  //      fl_post:integer; //флаг пост - обозначает выполнение команды пост
        MatSpec:TSpecif;


  end;

var
  Insert: TInsert;
  ExB: WORD;

implementation

uses DataMod, MainForm;

{$R *.dfm}

procedure TInsert.FormCreate(Sender: TObject);
var NUM_DOC:string;
begin
  IBTransaction1.Active:=true;
//  IBDOC.Active:=true;
  IBCEX.Active:=true;
  IBMATSKL.Active:=true;
  IBKLIENT.Active:=true;
  IBADDIT.Active:=true;
  cxDBDateEdit1.Date:=Now;

//  IBDOC.Close;
//  IBDOC.ParamByName('TDOC').AsInteger:=main.vid_doc;    //сортировка по типу документа
//  IBDOC.Open;
//  IBDOC.Last;
//  num_doc:=IBDOCNUM_DOC.Value;
//  if not main.fl_ins then
//    begin
//    IBDOC.Insert;
//    IBDOCKL_DOC.Value:=main.vid_doc;    // тип документа для новой записи
//    if num_doc='' then
//      cxDBTextEdit1.Text:='1'       // инкремент номера документа
//      else
//      cxDBTextEdit1.Text:=InttoStr(strtoint(num_doc)+1);
//    IBDOCKL_DOC.Value:=main.vid_doc;
//    end
//    else
//      begin
//      IBDOC.Locate('kl',main.kl_doc,[]);
//      IBADDIT.Close;
//      IBADDIT.ParamByName('kldoc').AsInteger:=IBDOCKL.Value;    //сортировка по типу документа
//      IBADDIT.Open;
//      end;

  MatSpec:=nil;
//  IBADDIT.ParamByName('KlDoc').AsInteger:=IBDOCKL.Value;  // сортировка спецыфикации по документу
//  main.fl_ins:=false;
  inherited;
end;

procedure TInsert.cxButton1Click(Sender: TObject);
begin
 Main.dxBarButton4.Click;
end;

procedure TInsert.cxButton3Click(Sender: TObject);
begin
cxDBLookupComboBox2.Text:='';
Main.dxBarButton5.Click;
end;

procedure TInsert.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  ibcex.Locate('kl',cxDBLookupComboBox1.EditValue,[]);
end;

procedure TInsert.cxGrid1DBTableView1DblClick(Sender: TObject);   //Открытие спецификации по двойному нажатию из грида форм ввода данных
var i:integer;
begin
if MatSpec=nil then
     begin                                             
        for I := 0 to ABar.ItemLinks.Count - 1 do
          if ABar.ItemLinks[i].Item.Data=Self then
          begin
            Application.CreateForm(TSpecif,MatSpec);
            MatSpec.Caption:=MatSpec.Caption+' - '+ABar.ItemLinks[i].Caption;
            MatSpec.Glavna:=self;

            MaTSpec.IBADDIT.Active:=false;
            MaTSpec.IBADDIT.Transaction:=self.IBTransaction1;
            MaTSpec.IBADDIT.Active:=true;

            Main.AddToolbar(MatSpec);

            MatSpec.IBADDIT.Locate('kl',IBADDITKL.AsInteger,[]);
            MatSpec.IBADDIT.Edit;
          end;
     end;
     MatSpec.SetFocus;
     MatSpec.Show;


end;

procedure TInsert.cxGroupBox1Exit(Sender: TObject);
begin
   if (cxDBTextEdit1.Text='') or (cxDBLookupComboBox1.Text='') or (cxDBLookupComboBox2.Text='') then
      Application.MessageBox('Введите все данные реквизита','Ошибка',16)
   else
   begin
     IF IBDOC.State in [dsInsert,dsEdit] then
        IBDOC.Post;
   end;

end;

procedure TInsert.dxBarButton1Click(Sender: TObject);  // +
var i:integer;
begin
   if (cxDBTextEdit1.Text='') or (cxDBLookupComboBox1.Text='') or (cxDBLookupComboBox2.Text='') then
      Application.MessageBox('Введите все данные реквизита','Ошибка',16)
   else
   begin
     IF IBDOC.State in [dsInsert,dsEdit] then
        IBDOC.Post;     

     if MatSpec=nil then   //Открытие спецификации по нажатию кнопки +(добавить)
     begin
        for I := 0 to ABar.ItemLinks.Count - 1 do
          if ABar.ItemLinks[i].Item.Data=Self then
          begin
            Application.CreateForm(TSpecif,MatSpec);
            MatSpec.Caption:=MatSpec.Caption+' - '+ABar.ItemLinks[i].Caption;
            MatSpec.Glavna:=self;

////////////////////////////////////////
            MaTSpec.IBDOCADDIT.Active:=false;
            MaTSpec.IBDOCADDIT.Transaction:=self.IBTransaction1;
            MaTSpec.IBDOCADDIT.Active:=true;
            MatSpec.IBDOCADDIT.ParamByName('KLCEX').AsInteger:=IBDOCKL_CEX.Value;
            MatSpec.IBDOCADDIT.ParamByName('KLSKL').AsInteger:=IBDOCKL_SKL.Value;

            MaTSpec.IBADDIT.Active:=false;
            MaTSpec.IBADDIT.Transaction:=self.IBTransaction1;
            MaTSpec.IBADDIT.Active:=true;

            Main.AddToolbar(MatSpec);
            MatSpec.IBADDIT.Append;
            MatSpec.IBADDITKL_DOC.Value:=IBDOCKL.Value;


          end;
     end;
     MatSpec.SetFocus;
     MatSpec.Show;
   end;
end;

procedure TInsert.dxBarButton2Click(Sender: TObject);    //Удаление спецификаций
begin
  case MessageBox(handle,pchar('Удалить запись?'),pchar('Внимание!!!'),52) of
    IDYES: begin
           try
           IBADDIT.Delete;
           except
           MessageBox(handle,pchar('Нет записей для удаления'),pchar('Ошибка!'),16);
           end;
           NppADDIT;
           end;
    IDNO:
  end;
end;

procedure TInsert.FormActivate(Sender: TObject);
 var kladdit:integer;
begin
      IBMATSKL.Close;
      IBMATSKL.Open;
      IBKLIENT.Close;
      IBKLIENT.Open;
      IBCEX.Close;
      IBCEX.Open;
      IBCEX.Locate('kl',cxDBLookupComboBox1.EditValue,[]);
      kladdit:=IBADDITKL.AsInteger;
      IBADDIT.Close;
      IBADDIT.Open;
      NppAddit;
      IBADDIT.Locate('kl',kladdit,[]);
      exit;
      inherited;
end;

procedure TInsert.NppADDIT;   // процедура пересчета номера по порядку спецификаций в документе
var npp:integer;
begin
      IBADDIT.First;
      npp:=0;
      while not IBADDIT.Eof do
        begin
        IBADDIT.Edit;
        npp:=npp+1;
        IBADDITNPP.Value:=npp;
        IBADDIT.Post;
        IBADDIT.Next;
        end;
end;

procedure TInsert.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Insert := nil;
   inherited;
end;

procedure TInsert.FormCloseQuery(Sender: TObject; var CanClose: Boolean); //перед закрытием формы
begin
  if MatSpec<>nil then
  begin
    MatSpec.Show;
    MatSpec.close;
  end;
  if MatSpec<>nil then
  begin
    CanClose:=false;
    exit;
  end;
  if IBADDIT.State in [dsInsert,dsEdit] then
     IBADDIT.Post;
  if IBDOC.State in [dsInsert,dsEdit] then
     IBDOC.Post;

{  CanClose:=true;
  if self.fl_post=1 then
  case MessageBox(handle,pchar('Сохранить все изменения?'),pchar('Закрытие '+self.caption),51) of
    IDYES:ModalResult:=mrYes;
    IDNO:ModalResult:=mrNo;
    IDCANCEL:CanClose:=false;
  end; }
    inherited;
end;

procedure TInsert.IBADDITBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
end;

procedure TInsert.IBDOCBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
end;

end.
