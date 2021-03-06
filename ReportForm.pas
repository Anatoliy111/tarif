unit ReportForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMDIChild, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, IBX.IBDatabase, dxStatusBar,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.DBCtrls, dxSparkline, dxDBSparkline,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox,
  IWDBStdCtrls, cxListBox, cxDBEdit, frxClass, frxDBSet, frxExportCSV,
  frxExportRTF, frxExportXLS;

type
  TReport = class(TAllMDICh)
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBPERIOD: TIBDataSet;
    IBPERIODID: TIntegerField;
    IBPERIODDATA: TDateField;
    D�PERIOD: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    IBPOSL: TIBDataSet;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    DSPOSL: TDataSource;
    IBQuery2: TIBQuery;
    DSQuery2: TDataSource;
    cxGrid1DBTableView1VID: TcxGridDBColumn;
    cxGrid1DBTableView1NOTHERS: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_END: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_ENDPDV: TcxGridDBColumn;
    cxGrid1DBTableView1MZK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMOT: TcxGridDBColumn;
    cxGrid1DBTableView1SUMOTPDV: TcxGridDBColumn;
    cxGrid1DBTableView1KOTEL: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_PLAN: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1NORMA: TcxGridDBColumn;
    cxGrid1DBTableView1END_BL: TcxGridDBColumn;
    cxGrid1DBTableView1END_L: TcxGridDBColumn;
    cxGrid1DBTableView1GKAL1: TcxGridDBColumn;
    cxButton1: TcxButton;
    frxReport2: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn;
    cxGrid1DBTableView1BORG_VIDH: TcxGridDBColumn;
    cxGrid1DBTableView1UL: TcxGridDBColumn;
    cxGrid1DBTableView1DOM: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    IBQuery2TARIFNAM: TIBStringField;
    IBQuery2ADRES: TIBStringField;
    IBQuery2UL: TIBStringField;
    IBQuery2DOM: TIBStringField;
    IBQuery2PLOS: TIBBCDField;
    IBQuery2SUMOT: TIBBCDField;
    IBQuery2SUMOTPDV: TIBBCDField;
    IBQuery2TARIF_END: TIBBCDField;
    IBQuery2TARIF_ENDPDV: TIBBCDField;
    IBQuery2MZK: TIBBCDField;
    IBQuery2NORMA: TIBBCDField;
    IBQuery2TARIF_RK: TIBBCDField;
    IBQuery2BORG_VIDH: TIBBCDField;
    IBQuery2KOTEL: TIBStringField;
    IBQuery2VID: TIBStringField;
    IBQuery2DATA: TDateField;
    IBQuery2WID: TIBStringField;
    IBQuery2POSL: TIBStringField;
    IBQuery2ID_POSL: TIntegerField;
    IBQuery2TARIF_PLAN: TIBBCDField;
    IBQuery2TARIF_FACT: TIBBCDField;
    IBQuery2END_BL: TIBBCDField;
    IBQuery2END_L: TIBBCDField;
    IBQuery2OTHERS: TIntegerField;
    IBQuery2NOTHERS: TIBStringField;
    IBQuery2NO_LICH: TIntegerField;
    cxGridDBTableView2UL: TcxGridDBColumn;
    cxGridDBTableView2DOM: TcxGridDBColumn;
    cxGridDBTableView2VID: TcxGridDBColumn;
    cxGrid1DBTableView1GKAL2: TcxGridDBColumn;
    cxGrid1DBTableView1CENA1: TcxGridDBColumn;
    cxGrid1DBTableView1CENA2: TcxGridDBColumn;
    IBQuery2GKAL1: TIBBCDField;
    IBQuery2GKAL2: TIBBCDField;
    IBQuery2CENA1: TIBBCDField;
    IBQuery2CENA2: TIBBCDField;
    IBQuery2FL_2CENA: TIntegerField;
    IBQuery2WIDAB: TIBStringField;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    IBQuery3: TIBQuery;
    DSQuery3: TDataSource;
    IBQuery3ID: TIntegerField;
    IBQuery3TARIFNAM: TIBStringField;
    IBQuery3ADRES: TIBStringField;
    IBQuery3UL: TIBStringField;
    IBQuery3DOM: TIBStringField;
    IBQuery3SUMOT: TIBBCDField;
    IBQuery3SUMOTPDV: TIBBCDField;
    IBQuery3KOTEL: TIBStringField;
    IBQuery3VID: TIBStringField;
    IBQuery3WIDAB: TIBStringField;
    IBQuery3WID: TIBStringField;
    IBQuery3OTHERS: TIntegerField;
    IBQuery3NOTHERS: TIBStringField;
    IBQuery3NO_LICH: TIntegerField;
    IBQuery3GKAL1: TIBBCDField;
    IBQuery3MZK_GK1: TIBBCDField;
    cxGrid1DBTableView1PLOS: TcxGridDBColumn;
    cxGrid1DBTableView1PLOSALL: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS_IN: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS_MZK: TcxGridDBColumn;
    cxGrid1DBTableView1PN: TcxGridDBColumn;
    cxGrid1DBTableView1PK: TcxGridDBColumn;
    cxGrid1DBTableView1PN2: TcxGridDBColumn;
    cxGrid1DBTableView1PK2: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    IBQuery4: TIBQuery;
    DSQuery4: TDataSource;
    IBQuery1TARIFNAM: TIBStringField;
    IBQuery1ADRES: TIBStringField;
    IBQuery1UL: TIBStringField;
    IBQuery1DOM: TIBStringField;
    IBQuery1PLOSALL: TIBBCDField;
    IBQuery1PLOS: TIBBCDField;
    IBQuery1PLOS_IN: TIBBCDField;
    IBQuery1PLOS_MZK: TIBBCDField;
    IBQuery1GKAL1: TIBBCDField;
    IBQuery1GKAL2: TIBBCDField;
    IBQuery1PN: TIBBCDField;
    IBQuery1PK: TIBBCDField;
    IBQuery1PN2: TIBBCDField;
    IBQuery1PK2: TIBBCDField;
    IBQuery1CENA1: TIBBCDField;
    IBQuery1CENA2: TIBBCDField;
    IBQuery1FL_2CENA: TIntegerField;
    IBQuery1TARIF_END: TIBBCDField;
    IBQuery1TARIF_ENDPDV: TIBBCDField;
    IBQuery1SUMOT: TIBBCDField;
    IBQuery1SUMOTPDV: TIBBCDField;
    IBQuery1MZK: TIBBCDField;
    IBQuery1MZK_PDV: TIBBCDField;
    IBQuery1SUMMZK: TIBBCDField;
    IBQuery1SUMMZK_PDV: TIBBCDField;
    IBQuery1ALLSUM: TIBBCDField;
    IBQuery1ALLSUM_PDV: TIBBCDField;
    IBQuery1NORMA: TIBBCDField;
    IBQuery1TARIF_RK: TIBBCDField;
    IBQuery1BORG_VIDH: TIBBCDField;
    IBQuery1KOTEL: TIBStringField;
    IBQuery1VID: TIBStringField;
    IBQuery1WIDAB: TIBStringField;
    IBQuery1DATA: TDateField;
    IBQuery1WID: TIBStringField;
    IBQuery1POSL: TIBStringField;
    IBQuery1ID_POSL: TIntegerField;
    IBQuery1TARIF_PLAN: TIBBCDField;
    IBQuery1TARIF_FACT: TIBBCDField;
    IBQuery1END_BL: TIBBCDField;
    IBQuery1END_L: TIBBCDField;
    IBQuery1OTHERS: TIntegerField;
    IBQuery1NOTHERS: TIBStringField;
    IBQuery1NO_LICH: TIntegerField;
    cxGrid1DBTableView1MZK_PDV: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMZK: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMZK_PDV: TcxGridDBColumn;
    cxGrid1DBTableView1ALLSUM: TcxGridDBColumn;
    cxGrid1DBTableView1ALLSUM_PDV: TcxGridDBColumn;
    IBQuery1MZK_GK1: TIBBCDField;
    IBQuery1MZK_GK2: TIBBCDField;
    cxGrid1DBTableView1MZK_GK1: TcxGridDBColumn;
    cxGrid1DBTableView1MZK_GK2: TcxGridDBColumn;
    IBQuery3SUMMZK: TIBBCDField;
    IBQuery3SUMMZK_PDV: TIBBCDField;
    IBQuery3ALLSUM: TIBBCDField;
    IBQuery3ALLSUM_PDV: TIBBCDField;
    cxGridDBTableView2PLOS_BBI: TcxGridDBColumn;
    cxGridDBTableView2MZK: TcxGridDBColumn;
    cxGridDBTableView2PLOS_IN: TcxGridDBColumn;
    cxGridDBTableView2PLOS_MZK: TcxGridDBColumn;
    cxGridDBTableView2MZK_GK1: TcxGridDBColumn;
    cxGridDBTableView2MZK_GK2: TcxGridDBColumn;
    cxGridDBTableView2MZK_PLOSALL: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKKV1: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKKV2: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKALL1: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKALL2: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKCO1: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKCO2: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKM2IND1: TcxGridDBColumn;
    cxGridDBTableView2MZK_GKM2IND2: TcxGridDBColumn;
    cxGridDBTableView2MZK_CENA1: TcxGridDBColumn;
    cxGridDBTableView2MZK_CENA2: TcxGridDBColumn;
    cxGridDBTableView2SUMMZK: TcxGridDBColumn;
    cxGridDBTableView2SUMMZK_PDV: TcxGridDBColumn;
    cxGridDBTableView2NAME: TcxGridDBColumn;
    IBQuery4ID: TIntegerField;
    IBQuery4ID_TARIF: TIntegerField;
    IBQuery4ADRES: TIBStringField;
    IBQuery4UL: TIBStringField;
    IBQuery4DOM: TIBStringField;
    IBQuery4DATA: TDateField;
    IBQuery4PLOS_BBI: TIBBCDField;
    IBQuery4MZK: TIBBCDField;
    IBQuery4MZK_PDV: TIBBCDField;
    IBQuery4PLOS_IN: TIBBCDField;
    IBQuery4PLOS_MZK: TIBBCDField;
    IBQuery4MZK_GK1: TIBBCDField;
    IBQuery4MZK_GK2: TIBBCDField;
    IBQuery4MZK_PLOSALL: TIBBCDField;
    IBQuery4MZK_GKKV1: TIBBCDField;
    IBQuery4MZK_GKKV2: TIBBCDField;
    IBQuery4MZK_GKALL1: TIBBCDField;
    IBQuery4MZK_GKALL2: TIBBCDField;
    IBQuery4MZK_GKCO1: TIBBCDField;
    IBQuery4MZK_GKCO2: TIBBCDField;
    IBQuery4MZK_GKM2IND1: TIBBCDField;
    IBQuery4MZK_GKM2IND2: TIBBCDField;
    IBQuery4MZK_SUMM2IND1: TIBBCDField;
    IBQuery4MZK_SUMM2IND2: TIBBCDField;
    IBQuery4MZK_CENA1: TIBBCDField;
    IBQuery4MZK_CENA2: TIBBCDField;
    IBQuery4SUMMZK: TIBBCDField;
    IBQuery4SUMMZK_PDV: TIBBCDField;
    IBQuery4NAME: TIBStringField;
    IBQuery4VID: TIBStringField;
    IBQuery4WWID: TIBStringField;
    cxGridDBTableView2MZK_PDV: TcxGridDBColumn;
    IBQuery4PLOS_BB: TIBBCDField;
    IBQuery4LICH_PN: TIBBCDField;
    IBQuery4LICH_PK: TIBBCDField;
    IBQuery4LICH_GK: TIBBCDField;
    IBQuery4LICH_PN2: TIBBCDField;
    IBQuery4LICH_PK2: TIBBCDField;
    IBQuery4LICH_GK2: TIBBCDField;
    cxGridDBTableView2LICH_PN: TcxGridDBColumn;
    cxGridDBTableView2LICH_PK: TcxGridDBColumn;
    cxGridDBTableView2LICH_GK: TcxGridDBColumn;
    cxGridDBTableView2LICH_PN2: TcxGridDBColumn;
    cxGridDBTableView2LICH_PK2: TcxGridDBColumn;
    cxGridDBTableView2LICH_GK2: TcxGridDBColumn;
    IBQuery4SUMMZK_PDV1: TIBBCDField;
    IBQuery4FL_2CENA: TIntegerField;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure DSPOSLDataChange(Sender: TObject; Field: TField);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');

    procedure Visible;
    { Private declarations }
  public
    procedure Update;
    { Public declarations }

  end;

var
  Report: TReport;

implementation

{$R *.dfm}

uses registry, cxGridExportLink, comobj, MainForm, mytools, DataMod;

procedure TReport.Update;
var rec:integer;
begin
//  DSQuery1.Enabled:=false;
//    if IBQuery1.Active then
//       rec:=IBQuery1.FieldByName('id').AsInteger;
//    if IBQuery2.Active then
//       rec:=IBQuery2.FieldByName('id').AsInteger;

   if cxLookupComboBox1.EditValue = Main.Period then
   begin
      cxLabel2.Caption:='�������� �����';
   end
   else
   begin
      cxLabel2.Caption:='�����';
   end;

  if IBQuery3.Active then
  begin
     cxLabel2.Caption:='����� �';
     cxLabel1.Caption:='����� ��';
  end;


  if IBQuery1.Active then
  begin
  IBQuery1.close;
  IBQuery1.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBQuery1.ParamByName('pos').AsInteger:=IBPOSLID.Value;
  IBQuery1.open;
//  IBQuery1.Locate('ID',rec,[]);
  end;

  if IBQuery2.Active then
  begin
  IBQuery2.close;
  IBQuery2.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBQuery2.open;
//  IBQuery2.Locate('ID',rec,[]);
  end;

  if IBQuery3.Active then
  begin
  IBQuery3.close;
  IBQuery3.ParamByName('dt1').Value:=cxLookupComboBox1.EditValue;
  IBQuery3.ParamByName('dt2').Value:=cxLookupComboBox2.EditValue;
  IBQuery3.open;
//  IBQuery2.Locate('ID',rec,[]);
  end;

  if IBQuery4.Active then
  begin
  IBQuery4.close;
  IBQuery4.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBQuery4.open;
//  IBQuery2.Locate('ID',rec,[]);
  end;

  Visible;
end;

procedure TReport.Visible;
begin
  cxButton1.Visible:=false;
  if IBQuery1.Active then
  begin
          cxButton1.Visible:=false;
          cxGrid1DBTableView1TARIF_ENDPDV.Visible:=false;
          cxGrid1DBTableView1sumot.Visible:=false;
          cxGrid1DBTableView1sumotpdv.Visible:=false;
          cxGrid1DBTableView1mzk.Visible:=false;
          cxGrid1DBTableView1kotel.Visible:=false;
          cxGrid1DBTableView1TARIF_PLAN.Visible:=false;
          cxGrid1DBTableView1TARIF_FACT.Visible:=false;
          cxGrid1DBTableView1NORMA.Visible:=true;
          cxGrid1DBTableView1END_BL.Visible:=false;
          cxGrid1DBTableView1END_L.Visible:=false;
          cxGrid1DBTableView1GKAL1.Visible:=false;
          cxGrid1DBTableView1GKAL2.Visible:=false;
          cxGrid1DBTableView1MZK_PDV.Visible:=false;
          cxGrid1DBTableView1SUMMZK.Visible:=false;
          cxGrid1DBTableView1SUMMZK_PDV.Visible:=false;
          cxGrid1DBTableView1ALLSUM.Visible:=false;
          cxGrid1DBTableView1ALLSUM_PDV.Visible:=false;
          cxGrid1DBTableView1MZK_GK1.Visible:=false;
          cxGrid1DBTableView1MZK_GK2.Visible:=false;


          cxGrid1DBTableView1CENA1.Visible:=false;
          cxGrid1DBTableView1CENA2.Visible:=false;
          cxButton1.Visible:=false;
          cxGrid1DBTableView1TARIF_RK.Visible:=false;
          cxGrid1DBTableView1BORG_VIDH.Visible:=false;
          cxGrid1DBTableView1PLOS.Visible:=false;
          cxGrid1DBTableView1PLOSALL.Visible:=false;
          cxGrid1DBTableView1PLOS_IN.Visible:=false;
          cxGrid1DBTableView1PLOS_MZK.Visible:=false;
          cxGrid1DBTableView1PN.Visible:=false;
          cxGrid1DBTableView1PK.Visible:=false;
          cxGrid1DBTableView1PN2.Visible:=false;
          cxGrid1DBTableView1PK2.Visible:=false;


        if IBPOSLWID.Value='ub' then
        begin

          cxGrid1DBTableView1TARIF_PLAN.Visible:=true;
          cxGrid1DBTableView1TARIF_FACT.Visible:=true;
          cxGrid1DBTableView1NORMA.Visible:=false;
          cxGrid1DBTableView1END_BL.Visible:=true;
          cxGrid1DBTableView1END_L.Visible:=true;
          cxButton1.Visible:=true;
          cxGrid1DBTableView1TARIF_RK.Visible:=true;
          cxGrid1DBTableView1BORG_VIDH.Visible:=true;

        end;

        if IBPOSLWID.Value='ot' then
        begin

          cxGrid1DBTableView1TARIF_ENDPDV.Visible:=true;
          cxGrid1DBTableView1sumot.Visible:=true;
          cxGrid1DBTableView1sumotpdv.Visible:=true;
          cxGrid1DBTableView1mzk.Visible:=true;
          cxGrid1DBTableView1kotel.Visible:=true;
          cxGrid1DBTableView1NORMA.Visible:=false;
          cxGrid1DBTableView1GKAL1.Visible:=true;
          cxGrid1DBTableView1CENA1.Visible:=true;

          cxGrid1DBTableView1MZK_PDV.Visible:=true;
          cxGrid1DBTableView1SUMMZK.Visible:=true;
          cxGrid1DBTableView1SUMMZK_PDV.Visible:=true;
          cxGrid1DBTableView1ALLSUM.Visible:=true;
          cxGrid1DBTableView1ALLSUM_PDV.Visible:=true;
          cxGrid1DBTableView1MZK_GK1.Visible:=true;


          cxGrid1DBTableView1PLOS.Visible:=true;
          cxGrid1DBTableView1PLOSALL.Visible:=true;
          cxGrid1DBTableView1PLOS_IN.Visible:=true;
          cxGrid1DBTableView1PLOS_MZK.Visible:=true;
          cxGrid1DBTableView1PN.Visible:=true;
          cxGrid1DBTableView1PK.Visible:=true;

          if IBQuery1.FieldByName('fl_2cena').Value=1 then
          begin
            cxGrid1DBTableView1GKAL2.Visible:=true;
            cxGrid1DBTableView1CENA2.Visible:=true;
            cxGrid1DBTableView1PN2.Visible:=true;
            cxGrid1DBTableView1PK2.Visible:=true;
            cxGrid1DBTableView1MZK_GK2.Visible:=true;
          end;
          cxButton1.Visible:=true;

        end;



  end;

  if IBQuery3.Active then
  begin
          cxGrid1DBTableView1TARIF_ENDPDV.Visible:=false;
          cxGrid1DBTableView1mzk.Visible:=false;
          cxGrid1DBTableView1TARIF_PLAN.Visible:=false;
          cxGrid1DBTableView1TARIF_FACT.Visible:=false;
          cxGrid1DBTableView1NORMA.Visible:=false;
          cxGrid1DBTableView1END_BL.Visible:=false;
          cxGrid1DBTableView1END_L.Visible:=false;
          cxGrid1DBTableView1GKAL2.Visible:=false;

          cxGrid1DBTableView1MZK_PDV.Visible:=false;
          cxGrid1DBTableView1MZK_GK2.Visible:=false;

          cxGrid1DBTableView1CENA1.Visible:=false;
          cxGrid1DBTableView1CENA2.Visible:=false;
          cxButton1.Visible:=true;
          cxGrid1DBTableView1TARIF_RK.Visible:=false;
          cxGrid1DBTableView1BORG_VIDH.Visible:=false;
          cxGrid1DBTableView1TARIF_END.Visible:=false;
          cxGrid1DBTableView1PLOS.Visible:=false;
          cxGrid1DBTableView1PN.Visible:=false;
          cxGrid1DBTableView1PK.Visible:=false;
          cxGrid1DBTableView1PN2.Visible:=false;
          cxGrid1DBTableView1PK2.Visible:=false;
  end;

  if IBQuery4.Active then
  begin

          if IBQuery4.FieldByName('fl_2cena').Value=1 then
          begin
            cxGridDBTableView2LICH_PN2.Visible:=true;
            cxGridDBTableView2LICH_PK2.Visible:=true;
            cxGridDBTableView2LICH_GK2.Visible:=true;
            cxGridDBTableView2MZK_GK2.Visible:=true;
            cxGridDBTableView2MZK_GKKV2.Visible:=true;
            cxGridDBTableView2MZK_GKALL2.Visible:=true;
            cxGridDBTableView2MZK_GKCO2.Visible:=true;
            cxGridDBTableView2MZK_GKM2IND2.Visible:=true;
            cxGridDBTableView2MZK_CENA2.Visible:=true;

          end
          else
          begin
            cxGridDBTableView2LICH_PN2.Visible:=false;
            cxGridDBTableView2LICH_PK2.Visible:=false;
            cxGridDBTableView2LICH_GK2.Visible:=false;
            cxGridDBTableView2MZK_GK2.Visible:=false;
            cxGridDBTableView2MZK_GKKV2.Visible:=false;
            cxGridDBTableView2MZK_GKALL2.Visible:=false;
            cxGridDBTableView2MZK_GKCO2.Visible:=false;
            cxGridDBTableView2MZK_GKM2IND2.Visible:=false;
            cxGridDBTableView2MZK_CENA2.Visible:=false;

          end;

  end;




end;


procedure TReport.cxButton1Click(Sender: TObject);
var Datename1,Datename2:string;
begin
  inherited;
DateTimeToString(Datename1,'mm yyyy',cxLookupComboBox1.EditValue);
if cxLookupComboBox2.EditValue<>null then
  DateTimeToString(Datename2,'mm yyyy',cxLookupComboBox2.EditValue);

if IBPOSLWID.Value='ot' then
begin
  if IBQuery1.FieldByName('fl_2cena').Value=1 then
  begin
    frxReport2.LoadFromFile('report/BuhgOT2.fr3');
    frxXLSExport1.FileName:='��� �� �������� '+Datename1;
  end
  else
  begin
    frxReport2.LoadFromFile('report/BuhgOT.fr3');
    frxXLSExport1.FileName:='��� �� �������� '+Datename1;
  end;
end;

if IBPOSLWID.Value='ub' then
begin
  frxReport2.LoadFromFile('report/BuhgUB.fr3');
  frxXLSExport1.FileName:='��� �� ���.���. '+Datename1;
end;


if IBQuery3.Active then
begin
  frxDBDataset1.DataSet:=IBQuery3;
  frxReport2.LoadFromFile('report/BuhgOTPeriod.fr3');
  frxXLSExport1.FileName:='��� �� ����� '+Datename1+' '+Datename2;
end;

frxReport2.Variables['Dolgn']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','Dolgn',extractfilepath(paramstr(0)))+'''';
frxReport2.Variables['Fio']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','FIO',extractfilepath(paramstr(0)))+'''';
if IBQuery3.Active then
begin
frxReport2.Variables['datemes1']:=''''+mon_slovoDt(cxLookupComboBox1.EditValue)+'''';
frxReport2.Variables['datemes2']:=''''+mon_slovoDt(cxLookupComboBox2.EditValue)+'''';
end
else
frxReport2.Variables['datemes']:=''''+mon_slovoDt(cxLookupComboBox1.EditValue)+'''';

frxReport2.ShowReport;

end;

procedure TReport.cxButton2Click(Sender: TObject);
var Reg: TRegistry;
    path,fdata:string;
    sd:TSaveDialog;
    Filename:string;
begin
  inherited;

  DateTimeToString(fdata,'mmddhhmm',now);
  DateTimeToString(Filename,'dd mm yyyy',cxLookupComboBox1.EditValue);
  Filename:='��� ��� ���.'+IBPOSLNAME.Value+' '+Filename;
  frxRTFExport1.FileName:=filename;
  frxReport2.PrepareReport;
  frxReport2.Export(frxRTFExport1);

end;

procedure TReport.cxButton6Click(Sender: TObject);
begin
  inherited;
  if cxGrid1.visible then
     ExportGrid(cxGrid1);
  if cxGrid2.visible then
     ExportGrid(cxGrid2);
  if cxGrid3.visible then
     ExportGrid(cxGrid3);

end;

procedure TReport.cxButton7Click(Sender: TObject);
begin
  inherited;
//  cxLookupComboBox1PropertiesChange;
//  cxLookupComboBox1.ActiveProperties.OnChange(sender);
  Update;

end;

procedure TReport.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;

    Update;

end;

procedure TReport.cxLookupComboBox2PropertiesChange(Sender: TObject);
begin
  inherited;
  Update;
end;

procedure TReport.DSPOSLDataChange(Sender: TObject; Field: TField);
begin
  inherited;
Update;

end;

procedure TReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if  (Report <> nil) and (Report.Active) then Report:=nil;
  if  (Report1 <> nil) and (Report1.Active) then Report1:=nil;
  if  (Report2 <> nil) and (Report2.Active) then Report2:=nil;
  if  (Report3 <> nil) and (Report3.Active) then Report3:=nil;
  if  (Report4 <> nil) and (Report4.Active) then Report4:=nil;
end;

procedure TReport.FormCreate(Sender: TObject);
begin
  inherited;
  IBTransaction1.Active:=true;
  IBPERIOD.open;
//  cxLookupComboBox1.EditValue:=IBPERIODDATA.Value;
  IBPOSL.open;
end;

procedure TReport.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path,fdata:string;
  i:integer;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if not Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' , False) then
      //ShowMessage('Error in opening key')
      path := '.\'
    else
    begin
      path := Reg.Readstring('Personal')+'\'
    end;
  finally
    Reg.Free;
  end;

  sd:=TSaveDialog.Create(application);
  try
    if FileName='Table.xls' then
    begin
      DateTimeToString(fdata,'mmddhhmm',now);
//      DateTimeToString(Filename,'dd mm yyyy',now);
        DateTimeToString(Filename,'mm yyyy',cxLookupComboBox1.EditValue);
  if  (Report <> nil) and (Report.Active) then Filename:=Report.Caption+' '+Filename;
  if  (Report1 <> nil) and (Report1.Active) then Filename:=Report1.Caption+' '+Filename;
  if  (Report2 <> nil) and (Report2.Active) then Filename:=Report2.Caption+' '+Filename;
  if  (Report3 <> nil) and (Report3.Active) then Filename:=Report3.Caption+' '+Filename;
  if  (Report4 <> nil) and (Report4.Active) then Filename:=Report4.Caption+' '+Filename;
      Filename:=Filename+' ('+fdata+').xls'
    end;
    sd.FileName := path + Filename;
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;

  ExportGridToExcel(filename, AGrid,false,true,true);

  try
    Excel := CreateOLEObject('Excel.Application');
    Excel.Visible := True;

    Excel.WorkBooks.Open(FileName);
    Excel.ActiveWindow.DisplayGridlines := True;

    Excel.columns.NumberFormat:='0,00';

//    for i:=9 to Excel.columns.count-4 do
//    begin
//       Excel.columns[i].NumberFormat:='0,00';
//    end;

//    Excel.columns[9].NumberFormat:='0,00';
//    Excel.columns[10].NumberFormat:='0,00';
//    Excel.columns[11].NumberFormat:='0,00';
//    Excel.columns[12].NumberFormat:='0,00';
//    Excel.columns[13].NumberFormat:='0,00';
//    Excel.columns[14].NumberFormat:='0,00';
//    Excel.columns[15].NumberFormat:='0,00';
//    Excel.columns[16].NumberFormat:='0,00';
//    Excel.columns[17].NumberFormat:='0,00';
//    Excel.columns[18].NumberFormat:='0,00';
//    Excel.columns[19].NumberFormat:='0,00';
//    Excel.columns[20].NumberFormat:='0,00';
//    Excel.columns[21].NumberFormat:='0,00';
//    Excel.columns[22].NumberFormat:='0,00';
//    Excel.columns[23].NumberFormat:='0,00';
//    Excel.columns[24].NumberFormat:='0,00';
//    Excel.columns[25].NumberFormat:='0,00';

    Excel.ActiveWindow.View := 2;
    if Excel.ActiveSheet.VPageBreaks.count <> 0 then
       Excel.ActiveSheet.VPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    if Excel.ActiveSheet.HPageBreaks.count <> 0 then
       Excel.ActiveSheet.HPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    Excel.ActiveWindow.View := 1;

  except
  end;
end;


//cxGrid1DBTableView1.GetColumnByFieldName('tarif_end').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('tarif_endpdv').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('sumot').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('sumotpdv').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('mzk').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('TARIF_PLAN').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('TARIF_FACT').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('NORMA').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('END_BL').Summary.FooterKind:=skSum;
//cxGrid1DBTableView1.GetColumnByFieldName('END_L').Summary.FooterKind:=skSum;
//
//
//
//    cxGrid1DBTableView1.GetColumnByFieldName('tarif_endpdv').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('sumot').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('sumotpdv').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('mzk').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('kotel').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('TARIF_PLAN').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('TARIF_FACT').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('NORMA').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('END_BL').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('END_L').Visible:=false;
//
//
//
//
//
//  if IBPOSLWID.Value='ub' then
//  begin
//
//    cxGrid1DBTableView1.GetColumnByFieldName('TARIF_PLAN').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('TARIF_FACT').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('NORMA').Visible:=false;
//    cxGrid1DBTableView1.GetColumnByFieldName('END_BL').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('END_L').Visible:=true;
//
//  end;
//
//  if IBPOSLWID.Value='ot' then
//  begin
//    cxGrid1DBTableView1.GetColumnByFieldName('tarif_endpdv').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('sumot').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('sumotpdv').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('mzk').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('kotel').Visible:=true;
//    cxGrid1DBTableView1.GetColumnByFieldName('NORMA').Visible:=false;
//
//  end;


end.
