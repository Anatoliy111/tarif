unit SpecifForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AllMDIChild, cxGraphics, IBDatabase, cxControls, dxStatusBar, cxLabel,
  cxDBEdit, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, IBCustomDataSet, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, cxCalc, cxLookAndFeels,
  Vcl.ExtCtrls;

type
  TSpecif = class(TAllMDICh)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxButton1: TcxButton;
    IBNAIM: TIBDataSet;
    IBNAIMEDIZM: TIBStringField;
    IBNAIMKL: TIntegerField;
    IBNAIMMARKA: TIBStringField;
    IBNAIMNAIM: TIBStringField;
    IBNAIMTIP: TIBStringField;
    DSEDIZM: TDataSource;
    DSNAIM: TDataSource;
    IBEDIZM: TIBDataSet;
    IBEDIZMKL: TIntegerField;
    IBEDIZMNAIM: TIBStringField;
    IBEDIZMPNAIM: TIBStringField;
    DSADDIT: TDataSource;
    IBADDIT: TIBDataSet;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    IBDOCADDIT: TIBDataSet;
    DSDOCADDIT: TDataSource;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBCalcEdit2: TcxDBCalcEdit;
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
    IBDOCADDITKL_CEX: TIntegerField;
    IBDOCADDITKL_SKL: TIntegerField;
    IBDOCADDITKL_KLIENT: TIntegerField;
    IBDOCADDITKL: TIntegerField;
    IBDOCADDITKL_DOC: TIntegerField;
    IBDOCADDITNPP: TIntegerField;
    IBDOCADDITNOM_N: TLargeintField;
    IBDOCADDITKL_NAIM: TIntegerField;
    IBDOCADDITNAIM: TIBStringField;
    IBDOCADDITED_IZM: TIBStringField;
    IBDOCADDITKOLI: TIBBCDField;
    IBDOCADDITCENA: TIBBCDField;
    IBDOCADDITSUMMA: TIBBCDField;
    IBDOCADDITDATA_NOW: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure IBADDITBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure IBADDITKOLIValidate(Sender: TField);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxDBCurrencyEdit1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  protected
    MatSpec:TSpecif;
  public

    { Public declarations }
            fl_post:integer;
            Glavna:TForm;
  end;

var
  Specif: TSpecif;

implementation

uses MainForm, InsertForm, mytools;

{$R *.dfm}

procedure TSpecif.cxButton1Click(Sender: TObject);
begin
  inherited;
 Main.dxBarButton91.Click;
end;

procedure TSpecif.cxButton3Click(Sender: TObject);
begin
  inherited;
 Main.dxBarButton92.Click;
end;

procedure TSpecif.cxDBCurrencyEdit1PropertiesChange(Sender: TObject);
//var Key: Word;
begin
  inherited;
  IBDOCADDIT.close;
  IBDOCADDIT.open;
 //   cxtextedit1.Text:=IntToStr(IBDOCADDIT.ParamByName('KLCEX').AsInteger);
{   if key=VK_RETURN then
     begin
       if IBDOCADDIT.Locate('NOM_N',cxDBCurrencyEdit1.Text,[]) then
     end;     }
end;

procedure TSpecif.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  IF (IBADDIT.State in [dsInsert,dsEdit]) and (IBNAIM.Active) then
    if IBNAIM.Locate('kl',cxDBLookupComboBox1.EditValue,[]) then
      IBADDITNAIM.Value:=IBNAIMNAIM.Value;
end;

procedure TSpecif.FormActivate(Sender: TObject);
begin
  inherited;
  IBNAIM.Close;
  IBNAIM.Open;
  IBEDIZM.Close;
  IBEDIZM.Open;
  end;

procedure TSpecif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult=mrYES then
  begin
    if IBADDIT.State in [dsInsert,dsEdit] then IBADDIT.Post;
  end;
  TInsert(Glavna).MatSpec:=nil;
  inherited;

end;

procedure TSpecif.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=true;
  case MessageBox(handle,pchar('Сохранить все изменения?'),pchar('Закрытие '+self.caption),51) of
    IDYES:ModalResult:=mrYes;
    IDNO:ModalResult:=mrNo;
    IDCANCEL:CanClose:=false;
  end;
end;

procedure TSpecif.FormCreate(Sender: TObject);
begin
  IBTransaction1.Active:=true;
  IBNAIM.Active:=true;
  IBEDIZM.Active:=true;
  IBADDIT.Active:=false;
  IBADDIT.Transaction:=self.IBTransaction1;
  IBADDIT.Active:=true;
//  IBADDIT.Active:=true;
//  IBDOCADDIT.Active:=true;

inherited;

end;

procedure TSpecif.IBADDITBeforePost(DataSet: TDataSet);
begin

  inherited;
  fl_post:=1;
end;

procedure TSpecif.IBADDITKOLIValidate(Sender: TField);
begin
  inherited;
try
      IBADDITSUMMA.AsCurrency:=IBADDITKOLI.AsCurrency * IBADDITCENA.AsCurrency;
except
    MessageBox(handle,pchar('Число выходит за пределы диапазона!'),pchar('Ошибка!!!'),16);
end;

end;

end.
