unit FRRep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, frxClass, frxDBSet, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFRRepForm = class(TForm)
    IBQuery1: TIBQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport2: TfrxReport;
    cxButton1: TcxButton;
    IBPERIOD: TIBDataSet;
    IBPERIODID: TIntegerField;
    IBPERIODDATA: TDateField;
    D²PERIOD: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    IBQuery1TARIFNAM: TIBStringField;
    IBQuery1ADRES: TIBStringField;
    IBQuery1PLOS: TIBBCDField;
    IBQuery1GKAL: TIBBCDField;
    IBQuery1CENA: TIBBCDField;
    IBQuery1SUMOT: TIBBCDField;
    IBQuery1SUMOTPDV: TIBBCDField;
    IBQuery1TARIF_END: TIBBCDField;
    IBQuery1TARIF_ENDPDV: TIBBCDField;
    IBQuery1VID: TIBStringField;
    IBQuery1DATA: TDateField;
    IBQuery1WID: TIBStringField;
    IBQuery1OTHERS: TIntegerField;
    IBQuery1NO_LICH: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DSQuery1: TDataSource;
    cxGrid1DBTableView1TARIFNAM: TcxGridDBColumn;
    cxGrid1DBTableView1ADRES: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS: TcxGridDBColumn;
    cxGrid1DBTableView1GKAL: TcxGridDBColumn;
    cxGrid1DBTableView1CENA: TcxGridDBColumn;
    cxGrid1DBTableView1SUMOT: TcxGridDBColumn;
    cxGrid1DBTableView1SUMOTPDV: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_END: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_ENDPDV: TcxGridDBColumn;
    cxGrid1DBTableView1VID: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1WID: TcxGridDBColumn;
    cxGrid1DBTableView1OTHERS: TcxGridDBColumn;
    cxGrid1DBTableView1NO_LICH: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRRepForm: TFRRepForm;

implementation

{$R *.dfm}

uses MainForm, DataMod, mytools;

procedure TFRRepForm.cxButton1Click(Sender: TObject);
var s,ss:string;
begin
IBQuery1.Close;
IBQuery1.ParamByName('pos').Value:='ot';
IBQuery1.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
IBQuery1.Open;
IBQuery1.Last;
IBQuery1.RecordCount;

if FileExists('report/Buhg.fr3') then
  frxReport2.LoadFromFile('report/Buhg.fr3');

frxReport2.Variables['Dolgn']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','Dolgn',extractfilepath(paramstr(0)))+'''';
frxReport2.Variables['Fio']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','FIO',extractfilepath(paramstr(0)))+'''';
frxReport2.Variables['datemes']:=''''+mon_slovoDt(cxLookupComboBox1.EditValue)+'''';
frxReport2.ShowReport;
end;

procedure TFRRepForm.FormCreate(Sender: TObject);
begin
IBPERIOD.Open;
cxLookupComboBox1.EditValue:=IBPERIODDATA.Value;
end;

end.
