unit Info;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ins, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, IBX.IBDatabase, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, IBX.IBCustomDataSet, cxContainer, cxLabel, cxTextEdit, cxDBEdit;

type
  TInfoForm = class(TInsForm)
    Panel2: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.dfm}

uses TarifForm;

end.
