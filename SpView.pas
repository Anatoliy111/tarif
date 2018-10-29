unit SpView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMDIChild, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, IBX.IBDatabase, dxStatusBar,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, dxBarBuiltInMenu, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxCheckBox, cxDBLookupComboBox, cxTextEdit, IBX.IBCustomDataSet,
  cxDropDownEdit, cxCalc, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, cxPC;

type
  TSpViewForm = class(TAllMDICh)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel9: TPanel;
    cxLabel8: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1WID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1FL_ZAGR: TcxGridDBColumn;
    cxGrid1DBTableView1FL_ROZRAH: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    Panel7: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel15: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1ID_UL: TcxGridDBColumn;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    cxGridDBTableView1PLOS_OB: TcxGridDBColumn;
    cxGridDBTableView1PLOS_BB: TcxGridDBColumn;
    cxGridDBTableView1ID_VIDAB: TcxGridDBColumn;
    cxGridDBTableView1ID_HOUSE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel8: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5ID_OTHER: TcxGridDBColumn;
    cxGridDBTableView5PLOS_OB: TcxGridDBColumn;
    cxGridDBTableView5PLOS_BB: TcxGridDBColumn;
    cxGridDBTableView5ID_TIPPR: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit2: TcxCalcEdit;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    cxLabel5: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2KL: TcxGridDBColumn;
    cxGridDBTableView2NAME: TcxGridDBColumn;
    cxGridDBTableView2ID_STREET: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3NAME: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    Panel5: TPanel;
    cxLabel6: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView4NAME: TcxGridDBColumn;
    cxGridDBTableView4EDRPOU: TcxGridDBColumn;
    cxGridDBTableView4ID_VIDAB: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    Panel10: TPanel;
    cxLabel14: TcxLabel;
    cxTextEdit11: TcxTextEdit;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBTableView6NAIM: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxPageControl2: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    Panel11: TPanel;
    cxLabel16: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxGrid8: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxTabSheet8: TcxTabSheet;
    Panel12: TPanel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxTextEdit12: TcxTextEdit;
    cxTextEdit13: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel23: TcxLabel;
    cxGrid9: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    Panel13: TPanel;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxGrid10: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxCalcEdit3: TcxCalcEdit;
    cxCalcEdit4: TcxCalcEdit;
    cxTabSheet9: TcxTabSheet;
    Panel14: TPanel;
    cxLabel24: TcxLabel;
    cxTextEdit14: TcxTextEdit;
    cxGrid11: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxTabSheet10: TcxTabSheet;
    Panel15: TPanel;
    cxLabel25: TcxLabel;
    cxTextEdit15: TcxTextEdit;
    cxGrid12: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    cxTabSheet11: TcxTabSheet;
    Panel16: TPanel;
    cxLabel26: TcxLabel;
    cxTextEdit16: TcxTextEdit;
    cxLabel27: TcxLabel;
    cxTextEdit17: TcxTextEdit;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxGrid13: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridLevel12: TcxGridLevel;
    cxTabSheet12: TcxTabSheet;
    Panel17: TPanel;
    cxLabel30: TcxLabel;
    cxTextEdit18: TcxTextEdit;
    cxGrid14: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    IBPOSL: TIBDataSet;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    IBPOSLVAL: TIntegerField;
    IBDOM: TIBDataSet;
    IBDOMID: TIntegerField;
    IBDOMNAME: TIBStringField;
    IBDOMID_UL: TIntegerField;
    IBDOMDOM: TIBStringField;
    IBDOMCH: TSmallintField;
    IBDOMID_HOUSE: TIntegerField;
    IBDOMPLOS_OB: TIBBCDField;
    IBDOMPLOS_BB: TIBBCDField;
    IBDOMID_VIDAB: TIntegerField;
    IBDOMSCHET1: TIBStringField;
    IBDOMSCHET2: TIBStringField;
    IBUL: TIBDataSet;
    IBULID: TIntegerField;
    IBULNAME: TIBStringField;
    IBULKL: TIntegerField;
    IBULID_STREET: TIntegerField;
    IBULVAL: TIntegerField;
    IBVIDAB: TIBDataSet;
    IBVIDABID: TIntegerField;
    IBVIDABNAME: TIBStringField;
    IBOTHER: TIBDataSet;
    IBOTHERID: TIntegerField;
    IBOTHERNAME: TIBStringField;
    IBOTHEREDRPOU: TIBStringField;
    IBOTHERID_VIDAB: TIntegerField;
    IBTIPPR: TIBDataSet;
    IBTIPPRID: TIntegerField;
    IBTIPPRNAIM: TIBStringField;
    IBDOM_OTHER: TIBDataSet;
    IBDOM_OTHERID: TIntegerField;
    IBDOM_OTHERID_DOM: TIntegerField;
    IBDOM_OTHERID_OTHER: TIntegerField;
    IBDOM_OTHERPLOS_OB: TIBBCDField;
    IBDOM_OTHERPLOS_BB: TIBBCDField;
    IBDOM_OTHERID_TIPPR: TIntegerField;
    DSPOSL: TDataSource;
    DSDOM: TDataSource;
    DSUL: TDataSource;
    DSVIDAB: TDataSource;
    DSOTHER: TDataSource;
    D²TIPPR: TDataSource;
    DSDOM_OTHER: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpViewForm: TSpViewForm;

implementation

{$R *.dfm}

end.
