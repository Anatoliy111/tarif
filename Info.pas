unit Info;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ins, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, IBX.IBDatabase, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, IBX.IBCustomDataSet, cxContainer, cxLabel, cxTextEdit, cxDBEdit,
  frxClass, frxDBSet;

type
  TInfoForm = class(TInsForm)
    Panel2: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    IBTARIF_INF: TIBDataSet;
    DSTARIF_INF: TDataSource;
    IBTARIF_INFID: TIntegerField;
    IBTARIF_INFID_TARIF: TIntegerField;
    IBTARIF_INFID_TARIFMES: TIntegerField;
    IBTARIF_INFID_TARVID: TIntegerField;
    IBTARIF_INFS_PLAN: TIBBCDField;
    IBTARIF_INFS_FACT: TIBBCDField;
    IBTARIF_INFNAME: TIBStringField;
    cxGridDBTableView1S_PLAN: TcxGridDBColumn;
    cxGridDBTableView1S_FACT: TcxGridDBColumn;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.dfm}

uses TarifForm, DataMod, mytools;

procedure TInfoForm.cxButton1Click(Sender: TObject);
begin
  inherited;
frxReport1.LoadFromFile('report/Skltar.fr3');
frxReport1.Variables['Dolgn']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','Dolgn',extractfilepath(paramstr(0)))+'''';
frxReport1.Variables['Fio']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','FIO',extractfilepath(paramstr(0)))+'''';
frxReport1.Variables['datemes']:=''''+cxLabel2.Caption+'''';
frxReport1.Variables['tarif']:=''''+cxDBTextEdit1.Text+'''';

frxReport1.ShowReport;

end;

end.
