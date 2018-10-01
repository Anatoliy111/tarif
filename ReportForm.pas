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
  IBX.IBCustomDataSet, IBX.IBQuery;

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
    D²PERIOD: TDataSource;
    IBQuery1ID: TIntegerField;
    IBQuery1POSL: TIBStringField;
    IBQuery1UL: TIBStringField;
    IBQuery1DOM: TIBStringField;
    IBQuery1TARIF: TIBStringField;
    IBQuery1TARIF_END: TIBBCDField;
    IBQuery1NORMA: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    procedure ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report: TReport;

implementation

{$R *.dfm}

uses registry, cxGridExportLink, comobj, MainForm, mytools;

procedure TReport.cxButton6Click(Sender: TObject);
begin
  inherited;
  ExportGrid(cxGrid1);
end;

procedure TReport.cxButton7Click(Sender: TObject);
begin
  inherited;
//  cxLookupComboBox1PropertiesChange;
  cxLookupComboBox1.ActiveProperties.OnChange(sender);
end;

procedure TReport.cxLookupComboBox1PropertiesChange(Sender: TObject);
var rec:integer;
begin
  inherited;
  rec:=iif(IBQuery1.FieldByName('id').Value=null,0,IBQuery1.FieldByName('id').Value);
   if cxLookupComboBox1.EditValue = Main.Period then
   begin
      cxLabel2.Caption:='Ïîòî÷íèé ïåð³îä';
   end
   else
   begin
      cxLabel2.Caption:='Àðõ³â';
   end;
  IBQuery1.Active:=false;
  IBQuery1.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
  IBQuery1.Active:=true;
  if rec<>0 then
     IBQuery1.Locate('ID',rec,[]);
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
  IBPERIOD.Active:=true;
  cxLookupComboBox1.EditValue:= IBPERIODDATA.Value;

  IBQuery1.Active:=false;
  IBQuery1.ParamByName('dt').Value:=IBPERIODDATA.Value;
  IBQuery1.Active:=true;
//  cxGrid1DBTableView1.DataController.DataSource:=DSQuery1;
  cxGrid1DBTableView1.DataController.CreateAllItems(True);
end;

procedure TReport.ExportGrid(AGrid: TcxGrid;Filename:string='Table.xls');
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path:string;
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
//      DateTimeToString(Filename,'mmddhhmm',now);
//      DateTimeToString(Filename,'dd mm yyyy',now);
        DateTimeToString(Filename,'dd mm yyyy',cxLookupComboBox1.EditValue);
  if  (Report <> nil) and (Report.Active) then Filename:=Report.Caption+' '+Filename;
  if  (Report1 <> nil) and (Report1.Active) then Filename:=Report1.Caption+' '+Filename;
  if  (Report2 <> nil) and (Report2.Active) then Filename:=Report2.Caption+' '+Filename;
      Filename:=Filename+'.xls'
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


end.
