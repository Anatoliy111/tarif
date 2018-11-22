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
  IWDBStdCtrls, cxListBox, cxDBEdit, frxClass, frxDBSet;

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
    cxGrid1DBTableView1GKAL: TcxGridDBColumn;
    IBQuery1TARIFNAM: TIBStringField;
    IBQuery1ADRES: TIBStringField;
    IBQuery1PLOS: TIBBCDField;
    IBQuery1GKAL: TIBBCDField;
    IBQuery1CENA: TIBBCDField;
    IBQuery1SUMOT: TIBBCDField;
    IBQuery1SUMOTPDV: TIBBCDField;
    IBQuery1TARIF_END: TIBBCDField;
    IBQuery1TARIF_ENDPDV: TIBBCDField;
    IBQuery1MZK: TIBBCDField;
    IBQuery1KOTEL: TIBStringField;
    IBQuery1VID: TIBStringField;
    IBQuery1DATA: TDateField;
    IBQuery1WID: TIBStringField;
    IBQuery1ID_POSL: TIntegerField;
    IBQuery1TARIF_PLAN: TIBBCDField;
    IBQuery1TARIF_FACT: TIBBCDField;
    IBQuery1END_BL: TIBBCDField;
    IBQuery1END_L: TIBBCDField;
    IBQuery1OTHERS: TIntegerField;
    IBQuery1NOTHERS: TIBStringField;
    IBQuery1NO_LICH: TIntegerField;
    IBQuery1NORMA: TIBBCDField;
    cxButton1: TcxButton;
    frxReport2: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    IBQuery1TARIF_RK: TIBBCDField;
    IBQuery1BORG_VIDH: TIBBCDField;
    cxGrid1DBTableView1TARIF_RK: TcxGridDBColumn;
    cxGrid1DBTableView1BORG_VIDH: TcxGridDBColumn;
    IBQuery1UL: TIBStringField;
    IBQuery1DOM: TIBStringField;
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
    IBQuery2GKAL: TIBBCDField;
    IBQuery2CENA: TIBBCDField;
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
    IBQuery1POSL: TIBStringField;
    cxGridDBTableView2TARIFNAM: TcxGridDBColumn;
    cxGridDBTableView2UL: TcxGridDBColumn;
    cxGridDBTableView2DOM: TcxGridDBColumn;
    cxGridDBTableView2TARIF_END: TcxGridDBColumn;
    cxGridDBTableView2TARIF_ENDPDV: TcxGridDBColumn;
    cxGridDBTableView2NORMA: TcxGridDBColumn;
    cxGridDBTableView2VID: TcxGridDBColumn;
    cxGridDBTableView2POSL: TcxGridDBColumn;
    cxGridDBTableView2NOTHERS: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure DSPOSLDataChange(Sender: TObject; Field: TField);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
    procedure Update;
    procedure Visible;
    { Private declarations }
  public
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

  Visible;
end;

procedure TReport.Visible;
begin
  cxButton1.Visible:=false;
  if IBQuery1.Active then
  begin
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
          cxGrid1DBTableView1GKAL.Visible:=false;
          cxButton1.Visible:=false;
          cxGrid1DBTableView1TARIF_RK.Visible:=false;
          cxGrid1DBTableView1BORG_VIDH.Visible:=false;


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
          cxGrid1DBTableView1GKAL.Visible:=true;
          cxButton1.Visible:=true;

        end;



  end;

//  if IBQuery2.Active then
//  begin
//
//          cxGridDBTableView1SENDPDV.Visible:=false;
//          cxGridDBTableView1sumot.Visible:=false;
//          cxGridDBTableView1sumotpdv.Visible:=false;
//          cxGridDBTableView1mzk.Visible:=false;
//          cxGridDBTableView1SPLAN.Visible:=false;
//          cxGridDBTableView1SFACT.Visible:=false;
//          cxGridDBTableView1NORMA.Visible:=true;
//          cxGridDBTableView1GKAL.Visible:=false;
//
//
//        if IBPOSLWID.Value='ub' then
//        begin
//
//          cxGridDBTableView1SPLAN.Visible:=true;
//          cxGridDBTableView1SFACT.Visible:=true;
//          cxGridDBTableView1NORMA.Visible:=false;
//
//        end;
//
//        if IBPOSLWID.Value='ot' then
//        begin
//
//          cxGridDBTableView1SENDPDV.Visible:=true;
//          cxGridDBTableView1sumot.Visible:=true;
//          cxGridDBTableView1sumotpdv.Visible:=true;
//          cxGridDBTableView1mzk.Visible:=true;
//          cxGridDBTableView1NORMA.Visible:=false;
//          cxGridDBTableView1GKAL.Visible:=true;
//
//        end;
//
//
//
//  end;




end;


procedure TReport.cxButton1Click(Sender: TObject);
begin
  inherited;

if IBPOSLWID.Value='ot' then
  frxReport2.LoadFromFile('report/BuhgOT.fr3');

if IBPOSLWID.Value='ub' then
  frxReport2.LoadFromFile('report/BuhgUB.fr3');

frxReport2.Variables['Dolgn']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','Dolgn',extractfilepath(paramstr(0)))+'''';
frxReport2.Variables['Fio']:=''''+DataMod.DataM.iniFile.ReadString('RepBuhg','FIO',extractfilepath(paramstr(0)))+'''';
frxReport2.Variables['datemes']:=''''+mon_slovoDt(cxLookupComboBox1.EditValue)+'''';
frxReport2.ShowReport;
end;

procedure TReport.cxButton6Click(Sender: TObject);
begin
  inherited;
  if IBQuery1.Active then
     ExportGrid(cxGrid1);
  if IBQuery2.Active then
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
