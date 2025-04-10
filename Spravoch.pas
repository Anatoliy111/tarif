unit Spravoch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AllMDIChild, cxGraphics, cxControls, dxStatusBar, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxLabel, cxContainer,
  cxTextEdit, ExtCtrls, cxPC, cxDBLabel, cxCalendar, cxDBEdit,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, dxBar, IBDatabase, IBCustomDataSet, cxLookAndFeels,
  dxBarBuiltInMenu, cxNavigator, Vcl.Buttons, cxButtonEdit, cxCalc,
  Vcl.ComCtrls, dxCore, cxDateUtils, IBX.IBQuery;

type
  TSprav = class(TAllMDICh)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel7: TPanel;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    Panel9: TPanel;
    cxLabel8: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    IBPOSL: TIBDataSet;
    DSPOSL: TDataSource;
    IBDOM: TIBDataSet;
    DSDOM: TDataSource;
    IBUL: TIBDataSet;
    DSUL: TDataSource;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    cxGrid1DBTableView1WID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1FL_ZAGR: TcxGridDBColumn;
    cxGrid1DBTableView1FL_ROZRAH: TcxGridDBColumn;
    cxLabel7: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1ID_UL: TcxGridDBColumn;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    IBULID: TIntegerField;
    IBULNAME: TIBStringField;
    cxGridDBTableView2NAME: TcxGridDBColumn;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit2: TcxTextEdit;
    IBULKL: TIntegerField;
    IBULID_STREET: TIntegerField;
    IBULVAL: TIntegerField;
    cxGridDBTableView2KL: TcxGridDBColumn;
    cxGridDBTableView2ID_STREET: TcxGridDBColumn;
    IBPOSLVAL: TIntegerField;
    cxGridDBTableView1ID_HOUSE: TcxGridDBColumn;
    cxGridDBTableView1PLOS_OB: TcxGridDBColumn;
    cxGridDBTableView1PLOS_BB: TcxGridDBColumn;
    cxGridDBTableView1ID_VIDAB: TcxGridDBColumn;
    IBVIDAB: TIBDataSet;
    DSVIDAB: TDataSource;
    IBVIDABID: TIntegerField;
    IBVIDABNAME: TIBStringField;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3NAME: TcxGridDBColumn;
    Panel5: TPanel;
    cxLabel6: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxLabel9: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    IBOTHER: TIBDataSet;
    DSOTHER: TDataSource;
    IBOTHERID: TIntegerField;
    IBOTHERNAME: TIBStringField;
    IBOTHEREDRPOU: TIBStringField;
    IBOTHERID_VIDAB: TIntegerField;
    cxGridDBTableView4NAME: TcxGridDBColumn;
    cxGridDBTableView4EDRPOU: TcxGridDBColumn;
    cxGridDBTableView4ID_VIDAB: TcxGridDBColumn;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    Panel8: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxTabSheet6: TcxTabSheet;
    IBTIPPR: TIBDataSet;
    D�TIPPR: TDataSource;
    IBTIPPRID: TIntegerField;
    IBTIPPRNAIM: TIBStringField;
    Panel10: TPanel;
    cxLabel14: TcxLabel;
    cxTextEdit11: TcxTextEdit;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    cxGridDBTableView6NAIM: TcxGridDBColumn;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel15: TcxLabel;
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit2: TcxCalcEdit;
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
    cxGridDBTableView5ID_OTHER: TcxGridDBColumn;
    cxGridDBTableView5PLOS_OB: TcxGridDBColumn;
    cxGridDBTableView5PLOS_BB: TcxGridDBColumn;
    cxGridDBTableView5ID_TIPPR: TcxGridDBColumn;
    IBDOM_OTHER: TIBDataSet;
    DSDOM_OTHER: TDataSource;
    IBDOM_OTHERID: TIntegerField;
    IBDOM_OTHERID_DOM: TIntegerField;
    IBDOM_OTHERID_OTHER: TIntegerField;
    IBDOM_OTHERPLOS_OB: TIBBCDField;
    IBDOM_OTHERPLOS_BB: TIBBCDField;
    IBDOM_OTHERID_TIPPR: TIntegerField;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxTabSheet7: TcxTabSheet;
    Panel11: TPanel;
    cxGrid8: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    IBTARIF_CENA: TIBDataSet;
    DSTARIF_CENA: TDataSource;
    cxGridDBTableView7DATE_N1: TcxGridDBColumn;
    cxGridDBTableView7TARIF_SUM1: TcxGridDBColumn;
    cxGridDBTableView7TARIF_SUM2: TcxGridDBColumn;
    cxGridDBTableView7DATE_MES: TcxGridDBColumn;
    cxCheckBox1: TcxCheckBox;
    cxDateEdit1: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    IBQMES: TIBQuery;
    DSQMES: TDataSource;
    IBQMESDATE_MES: TDateField;
    cxGridDBTableView7ID_VIDAB: TcxGridDBColumn;
    cxTabSheet8: TcxTabSheet;
    Panel12: TPanel;
    cxLabel17: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxGrid9: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    IBKOTEL: TIBDataSet;
    DSKOTEL: TDataSource;
    IBKOTELID: TIntegerField;
    IBKOTELNAME: TIBStringField;
    cxGridDBTableView8NAME: TcxGridDBColumn;
    cxGridDBTableView7TARIF_MZK1: TcxGridDBColumn;
    cxGridDBTableView7TARIF_MZK2: TcxGridDBColumn;
    IBTARIF_CENAID: TIntegerField;
    IBTARIF_CENAID_VIDAB: TIntegerField;
    IBTARIF_CENADATE_MES: TDateField;
    IBTARIF_CENAID_POSL: TIntegerField;
    IBTARIF_CENADATE_N1: TDateField;
    IBTARIF_CENATARIF_SUM1: TIBBCDField;
    IBTARIF_CENADATE_N2: TDateField;
    IBTARIF_CENATARIF_SUM2: TIBBCDField;
    IBTARIF_CENAFL_2DATE: TIntegerField;
    IBTARIF_CENATARIF_MZK1: TIBBCDField;
    IBTARIF_CENATARIF_MZK2: TIBBCDField;
    IBVIDABWID: TIBStringField;
    cxGridDBTableView3WID: TcxGridDBColumn;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBPOSLBeforePost(DataSet: TDataSet);
    procedure IBDOMBeforePost(DataSet: TDataSet);
    procedure IBULBeforePost(DataSet: TDataSet);
    procedure IBKLIENTBeforePost(DataSet: TDataSet);
    procedure IBMATKOMISBeforePost(DataSet: TDataSet);
    procedure IBMATSOTRBeforePost(DataSet: TDataSet);
    procedure cxButton8Click(Sender: TObject);




    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxTextEdit3PropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure IBVIDABBeforePost(DataSet: TDataSet);
    procedure IBOTHERBeforePost(DataSet: TDataSet);
    procedure IBDOM_OTHERBeforePost(DataSet: TDataSet);
    procedure IBTIPPRBeforePost(DataSet: TDataSet);
    procedure IBDOM_OTHERAfterEdit(DataSet: TDataSet);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox4PropertiesChange(Sender: TObject);
    procedure IBTARIF_CENABeforePost(DataSet: TDataSet);
    procedure IBKOTELBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

  public
  fl_ins:integer;

//      procedure KeyF6(var Key: Word; Hint:string; var Hint1:string; SColor1:TColor);
    { Public declarations }
  end;

var
  Sprav: TSprav;


{    Hint1:string;
    SColor1:TColor; }

implementation

uses MyLibrary, InsertForm, MainForm;

{$R *.dfm}

procedure TSprav.FormCreate(Sender: TObject);
begin
  inherited;
  if not IBTransaction1.Active then
     IBTransaction1.StartTransaction;
IBPOSL.open;
IBDOM.open;
IBUL.open;
IBKOTEL.open;
IBOTHER.open;
IBVIDAB.open;
IBTIPPR.open;
  IBDOM_OTHER.close;
  IBDOM_OTHER.SelectSQL.Text:='select * from dom_other where id_dom=:idddom';
  IBDOM_OTHER.ParamByName('idddom').AsInteger:=IBDOMID.Value;
  IBDOM_OTHER.open;

IBQMES.open;
cxLookupComboBox4.EditValue:= IBQMESDATE_MES.Value;
  IBTARIF_CENA.close;
  IBTARIF_CENA.ParamByName('dt').Value:=IBQMESDATE_MES.Value;
  IBTARIF_CENA.open;

  if IBTARIF_CENAFL_2DATE.Value=1 then
  begin
    cxGridDBTableView7DATE_N1.Visible:=true;
    cxGridDBTableView7TARIF_SUM2.Visible:=true;
    cxGridDBTableView7TARIF_MZK2.Visible:=true;
  end
  else
  begin
    cxGridDBTableView7DATE_N1.Visible:=false;
    cxGridDBTableView7TARIF_SUM2.Visible:=false;
    cxGridDBTableView7TARIF_MZK2.Visible:=false;
  end;


end;

procedure TSprav.IBPOSLBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBTARIF_CENABeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBTIPPRBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBDOMBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBDOM_OTHERAfterEdit(DataSet: TDataSet);
begin
  inherited;
self.fl_post:=1;
end;

procedure TSprav.IBDOM_OTHERBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBKLIENTBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBKOTELBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBMATKOMISBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBULBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBVIDABBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBMATSOTRBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.IBOTHERBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TSprav.cxButton1Click(Sender: TObject);
begin
  inherited;
IBDOM_OTHER.Insert;
IBDOM_OTHER.Edit;
IBDOM_OTHERID_DOM.Value:= IBDOMID.Value;
IBDOM_OTHER.Post;

end;

procedure TSprav.cxButton2Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('�� ����� ������ �������� �����?'),pchar(''),36) of
    IDYES:
    begin
      if cxPageControl1.ActivePageIndex=1 then
      begin
         IBDOM_OTHER.Delete;
      fl_post:=1;
      end;

    end;
  end;
end;

procedure TSprav.cxButton7Click(Sender: TObject);
begin
  inherited;
  IBPOSL.Active:=false;
  IBUL.Active:=false;
  IBDOM.Active:=false;

  IBPOSL.Active:=true;
  IBUL.Active:=true;
  IBDOM.Active:=true;

end;

procedure TSprav.cxButton8Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('�� ����� ������ �������� �����?'),pchar(''),36) of
  IDYES:
    begin
      if cxPageControl1.ActivePageIndex=0 then
      begin
        IBPOSL.Delete;
        fl_post:=1;
      end;
      if cxPageControl1.ActivePageIndex=1 then
      begin
        IBDOM.Delete;
        fl_post:=1;
      end;
      if cxPageControl1.ActivePageIndex=2 then
      begin
      if not IBDOM.Locate('id_ul',IBULID.Value,[]) then
        begin
        IBUL.Delete;
        fl_post:=1;
      end
      else
        Application.MessageBox('��������� �������� ������ ��� �� ���� ��������������� � �������� ������� ','�������',16)
      end;
      if cxPageControl1.ActivePageIndex=3 then
      begin
        if IBTARIF_CENA.Locate('id_vidab',IBVIDABID.Value,[]) then
           IBTARIF_CENA.Delete;
        IBVIDAB.Delete;
        fl_post:=1;
      end;
     if cxPageControl1.ActivePageIndex=4 then
      begin
      if not IBDOM_OTHER.Locate('id_other',IBOTHERID.Value,[]) then
        begin
        IBOTHER.Delete;
        fl_post:=1;
      end
      else
        Application.MessageBox('��������� �������� ������ �������� ��� �� �� ��������������� � �������� ������� ','�������',16)
      end;
      if cxPageControl1.ActivePageIndex=5 then
      begin
        IBTIPPR.Delete;
        fl_post:=1;
      end;
      if cxPageControl1.ActivePageIndex=6 then
      begin
        IBTARIF_CENA.Last;
        while not IBTARIF_CENA.Bof do
        begin
          IBTARIF_CENA.Delete;
        end;
        fl_post:=1;
        IBQMES.Close;
        IBQMES.Open;
        cxLookupComboBox4.EditValue:= IBQMESDATE_MES.Value;

      end;
      if cxPageControl1.ActivePageIndex=7 then
      begin
        IBKOTEL.Delete;
        fl_post:=1;
      end;
    end;
  end;
end;





procedure TSprav.cxButton9Click(Sender: TObject);
begin
  inherited;
  if cxPageControl1.ActivePageIndex=0 then
  begin
      if (cxTextEdit7.Text='') or (cxTextEdit1.Text='') then
        Application.MessageBox('������ ��� �� ������������ ������� ','�������',16)
      else
        begin
          IBPOSL.Insert;
          IBPOSL.Edit;
          IBPOSLWID.Value:=cxTextEdit7.Text;
          IBPOSLNAME.Value:=cxTextEdit1.Text;
          IBPOSLFL_ZAGR.Value:=0;
          IBPOSLFL_ROZRAH.Value:=0;
          IBPOSL.Post;

       cxTextEdit7.Text:='';
       cxTextEdit1.Text:='';

        end;
  end;
  if cxPageControl1.ActivePageIndex=1 then
  begin
    if (cxTextEdit3.Text='') or (cxLookupComboBox1.EditValue=0) then
    Application.MessageBox('������ ������ �� �������','�������',16)
  else
    begin
      if not IBDOM.Locate('id_ul;dom',VarArrayOf([cxLookupComboBox1.EditValue, cxTextEdit3.Text]),[]) then
      begin
         IBDOM.Insert;
         IBDOM.Edit;
         IBDOMNAME.Value:=cxTextEdit4.Text;
         IBDOMID_UL.Value:=cxLookupComboBox1.EditValue;
         IBDOMDOM.Value:=cxTextEdit3.Text;
         IBDOMPLOS_OB.Value:=cxCalcEdit1.Value;
         IBDOMPLOS_BB.Value:=cxCalcEdit2.Value;
         IBDOMID_VIDAB.Value:=cxLookupComboBox3.EditValue;
         IBDOM.Post;

        cxTextEdit3.Text:='';
        cxLookupComboBox1.EditValue:=0;
        cxCalcEdit1.Value:=0;
        cxCalcEdit2.Value:=0;
        cxLookupComboBox3.EditValue:=0;
      end
      else
        Application.MessageBox('����� ������� ��� ����','������',16)
    end;
  end;
  if cxPageControl1.ActivePageIndex=2 then
  begin
    if (cxTextEdit2.Text='') then
    Application.MessageBox('������ ������','�������',16)
  else
    begin
      if not IBUL.Locate('name',cxTextEdit2.Text,[]) then
      begin
        IBUL.Insert;
        IBUL.Edit;
        IBULNAME.Value:=cxTextEdit2.Text;
        IBUL.Post;
        cxTextEdit2.Text:='';
      end
      else
        Application.MessageBox('���� ������ ��� ����','������',16)

    end;
  end;
  if cxPageControl1.ActivePageIndex=3 then
  begin
    if (cxTextEdit5.Text='') then
    Application.MessageBox('������ ���','�������',16)
  else
    begin
      if not IBVIDAB.Locate('name',cxTextEdit5.Text,[]) then
      begin
        IBVIDAB.Insert;
        IBVIDAB.Edit;
        IBVIDABNAME.Value:=cxTextEdit5.Text;
        IBVIDAB.Post;
        cxTextEdit5.Text:='';

        IBQMES.Close;
        IBQMES.Open;

          IBTARIF_CENA.Insert;
          IBTARIF_CENA.Edit;
          IBTARIF_CENADATE_MES.Value:=IBQMESDATE_MES.Value;
          IBTARIF_CENAID_VIDAB.Value:=IBVIDABID.Value;
          if cxCheckBox1.Checked then
          begin
            IBTARIF_CENAFL_2DATE.Value:=1;
            IBTARIF_CENADATE_N1.Value:=cxDateEdit1.EditValue;
          end;
          IBTARIF_CENA.Post;

      end
      else
        Application.MessageBox('����� ��� ��� ����','������',16)

    end;
  end;
  if cxPageControl1.ActivePageIndex=4 then
  begin
    if (cxTextEdit6.Text='') or (cxTextEdit8.Text='') or (cxLookupComboBox2.EditValue=0)then
    Application.MessageBox('����������� ������� ����','�������',16)
  else
    begin
      if IBOTHER.Locate('name',cxTextEdit6.Text,[]) then
      begin
        Application.MessageBox('����� ������� ��� ����','������',16);
        exit;
      end;
      if IBOTHER.Locate('EDRPOU',cxTextEdit8.Text,[]) then
      begin
        Application.MessageBox('����� ������� ��� ����','������',16);
        exit;

      end;

        IBOTHER.Insert;
        IBOTHER.Edit;
        IBOTHERNAME.Value:=cxTextEdit6.Text;
        IBOTHEREDRPOU.Value:=cxTextEdit8.Text;
        IBOTHERID_VIDAB.Value:=cxLookupComboBox2.EditValue;

        IBOTHER.Post;
        cxTextEdit6.Text:='';
        cxTextEdit8.Text:='';
        cxLookupComboBox2.EditValue:=0;


    end;
  end;
  if cxPageControl1.ActivePageIndex=5 then
  begin
    if (cxTextEdit11.Text='') then
    Application.MessageBox('������ ���������','�������',16)
  else
    begin
      if not IBTIPPR.Locate('NAIM',cxTextEdit11.Text,[]) then
      begin
        IBTIPPR.Insert;
        IBTIPPR.Edit;
        IBTIPPRNAIM.Value:=cxTextEdit11.Text;
        IBTIPPR.Post;
        cxTextEdit11.Text:='';
      end
      else
        Application.MessageBox('���� ��������� ��� ����','������',16)

    end;
  end;
  if cxPageControl1.ActivePageIndex=6 then
  begin
    if not IBQMES.Locate('DATE_MES',main.IBPERIODDATA.Value,[]) then
    begin
        if cxCheckBox1.Checked and cxDateEdit1.EditValue=null then
        begin
           Application.MessageBox('������� ���������� �����','������',16);
           exit;
        end;

        IBVIDAB.First;
        while not IBVIDAB.Eof do
        begin
          IBTARIF_CENA.Insert;
          IBTARIF_CENA.Edit;
          IBTARIF_CENADATE_MES.Value:=main.IBPERIODDATA.Value;
          IBTARIF_CENAID_VIDAB.Value:=IBVIDABID.Value;
          if cxCheckBox1.Checked then
          begin
            IBTARIF_CENAFL_2DATE.Value:=1;
            IBTARIF_CENADATE_N1.Value:=cxDateEdit1.EditValue;
          end;
          IBTARIF_CENA.Post;
          IBVIDAB.Next;
        end;

    IBQMES.Close;
    IBQMES.Open;
      if IBTARIF_CENAFL_2DATE.Value=1 then
          begin
            cxGridDBTableView7DATE_N1.Visible:=true;
            cxGridDBTableView7TARIF_SUM2.Visible:=true;
          end
          else
          begin
            cxGridDBTableView7DATE_N1.Visible:=false;
            cxGridDBTableView7TARIF_SUM2.Visible:=false;
          end;
    IBTARIF_CENA.Close;
    IBTARIF_CENA.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
    IBTARIF_CENA.Open;
    cxLookupComboBox4.EditValue:=main.IBPERIODDATA.Value;
    end;
  end;
  if cxPageControl1.ActivePageIndex=7 then
  begin
    if (cxTextEdit9.Text='') then
    Application.MessageBox('������ ��������','�������',16)
  else
    begin
      if not IBKOTEL.Locate('NAME',cxTextEdit9.Text,[]) then
      begin
        IBKOTEL.Insert;
        IBKOTEL.Edit;
        IBKOTELNAME.Value:=cxTextEdit9.Text;
        IBKOTEL.Post;
        cxTextEdit9.Text:='';
      end
      else
        Application.MessageBox('���� �������� ��� ����','������',16)

    end;





  end;


end;

procedure TSprav.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  if cxCheckBox1.Checked then
     cxDateEdit1.Visible:=true
  else
     cxDateEdit1.Visible:=false;
end;

procedure TSprav.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  IBDOM_OTHER.close;
  IBDOM_OTHER.SelectSQL.Text:='select * from dom_other where id_dom=:idddom';
  IBDOM_OTHER.ParamByName('idddom').AsInteger:=IBDOMID.Value;
  IBDOM_OTHER.open;
  inherited;

end;

procedure TSprav.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  cxTextEdit4.Text:=cxLookupComboBox1.EditText+' '+cxTextEdit3.Text;
end;

procedure TSprav.cxLookupComboBox4PropertiesChange(Sender: TObject);
begin
  inherited;
  IBTARIF_CENA.close;
  IBTARIF_CENA.ParamByName('dt').Value:=cxLookupComboBox4.EditValue;
  IBTARIF_CENA.open;

  if IBTARIF_CENAFL_2DATE.Value=1 then
  begin
    cxGridDBTableView7DATE_N1.Visible:=true;
    cxGridDBTableView7TARIF_SUM2.Visible:=true;
    cxGridDBTableView7TARIF_MZK2.Visible:=true;
  end
  else
  begin
    cxGridDBTableView7DATE_N1.Visible:=false;
    cxGridDBTableView7TARIF_SUM2.Visible:=false;
    cxGridDBTableView7TARIF_MZK2.Visible:=false;
  end;


end;

procedure TSprav.cxTextEdit3PropertiesChange(Sender: TObject);
begin
  inherited;
  cxTextEdit4.Text:=cxLookupComboBox1.EditText+' '+cxTextEdit3.Text;
end;

procedure TSprav.FormClose(Sender: TObject; var Action: TCloseAction);
var i: integer;
begin
  Sprav:=nil;

  inherited;
end;

procedure TSprav.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if IBPOSL.State in [dsInsert,dsEdit] then IBPOSL.Post;
  if IBDOM.State in [dsInsert,dsEdit] then IBDOM.Post;
  if IBUL.State in [dsInsert,dsEdit] then IBUL.Post;
  if IBDOM_OTHER.State in [dsInsert,dsEdit] then IBDOM_OTHER.Post;
  if IBVIDAB.State in [dsInsert,dsEdit] then IBVIDAB.Post;
  if IBOTHER.State in [dsInsert,dsEdit] then IBOTHER.Post;
  if IBTIPPR.State in [dsInsert,dsEdit] then IBTIPPR.Post;
  inherited;
end;

end.
