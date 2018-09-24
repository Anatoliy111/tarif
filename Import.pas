unit Import;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ins, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, IBX.IBDatabase, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxProgressBar,Data.DB,
  IBX.IBCustomDataSet,dbf, Vcl.Buttons, Vcl.ComCtrls, Data.Win.ADODB,
  cxGroupBox, cxCheckGroup;

type
  TImpForm = class(TInsForm)
    cxProgressBar1: TcxProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxButton6: TcxButton;
    OpenDialog1: TOpenDialog;
    IBPOSL: TIBDataSet;
    IBPOSLID: TIntegerField;
    IBPOSLWID: TIBStringField;
    IBPOSLNAME: TIBStringField;
    IBPOSLFL_ZAGR: TIntegerField;
    IBPOSLFL_ROZRAH: TIntegerField;
    DSPOSL: TDataSource;
    IBDOM: TIBDataSet;
    IBDOMID: TIntegerField;
    IBDOMNAME: TIBStringField;
    IBDOMID_UL: TIntegerField;
    IBDOMDOM: TIBStringField;
    DSDOM: TDataSource;
    IBUL: TIBDataSet;
    DSUL: TDataSource;
    IBDOMCH: TSmallintField;
    IBDOMID_HOUSE: TIntegerField;
    DB: TDbf;
    IBULID: TIntegerField;
    IBULNAME: TIBStringField;
    IBULKL: TIntegerField;
    IBULID_STREET: TIntegerField;
    IBULVAL: TIntegerField;
    IBPOSLVAL: TIntegerField;
    DateTimePicker1: TDateTimePicker;
    ADOConnectionDBF: TADOConnection;
    ADOQuery1: TADOQuery;
    cxCheckGroup1: TcxCheckGroup;
    IBTARIF: TIBDataSet;
    DSTARIF: TDataSource;
    IBTARIFID: TIntegerField;
    IBTARIFDATA: TDateField;
    IBTARIFNAME: TIBStringField;
    IBTARIFID_POSL: TIntegerField;
    IBTARIFID_TARDOM: TIntegerField;
    IBTARIFNOTE: TIBStringField;
    IBTARIFTARIF_PLAN: TIBBCDField;
    IBTARIFTARIF_FACT: TIBBCDField;
    IBTARIFTARIF_RN: TIBBCDField;
    IBTARIFTARIF_RK: TIBBCDField;
    IBTARIFNORMA: TIBBCDField;
    IBTARIFTARIF_END: TIBBCDField;
    IBTARIF_COMP: TIBDataSet;
    DSTARIF_COMP: TDataSource;
    IBTARIF_DOM: TIBDataSet;
    IntegerField4: TIntegerField;
    DateField2: TDateField;
    IBStringField3: TIBStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IBStringField4: TIBStringField;
    IBBCDField7: TIBBCDField;
    IBBCDField8: TIBBCDField;
    IBBCDField9: TIBBCDField;
    IBBCDField10: TIBBCDField;
    IBBCDField11: TIBBCDField;
    IBBCDField12: TIBBCDField;
    DataSource2: TDataSource;
    IBTARIF_COMPID: TIntegerField;
    IBTARIF_COMPDATA: TDateField;
    IBTARIF_COMPID_TARIF: TIntegerField;
    IBTARIF_COMPNAME: TIBStringField;
    IBTARIF_COMPSUMM: TIBBCDField;
    IBTARIF_COMPKL_NTAR: TIntegerField;
    IBTARIF_COMPFL_LIFT: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure IBPOSLBeforePost(DataSet: TDataSet);
    procedure IBDOMBeforePost(DataSet: TDataSet);
    procedure IBULBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpForm: TImpForm;
  FilePath, FileName: String;

implementation

{$R *.dfm}

uses MainForm, mytools;


procedure TImpForm.cxButton1Click(Sender: TObject);
var res:Variant;
begin
  inherited;
  if OpenDialog1.Execute then begin
    FilePath := ExtractFilePath(OpenDialog1.FileName);
    DB.Active:=false;
    DB.TableName:=OpenDialog1.FileName;
    DB.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=DB.RecordCount-1;
    DB.First;
    while not DB.Eof do
    begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
        IBUL.First;
//          res:= IBUL.Lookup('schet;wid', VarArrayOf([schet,wid]),'schet');
//            res:= IBUL.Lookup('kl',DB.FieldByName('kl').Value ,'kl');
               if not IBUL.Locate('kl',DB.FieldByName('kl').Value,[]) then
               begin
                  IBUL.Insert;
                  IBULKL.Value:=DB.FieldByName('kl').Value;
                  IBULNAME.Value:=DB.FieldByName('ul').Value;
                  IBULVAL.Value:=DB.FieldByName('val').Value;
                  IBUL.Post
               end
               else
               begin
                 if DB.FieldByName('val').Value<> IBULVAL.Value then
                 begin
                  IBUL.Edit;
                  IBULNAME.Value:=DB.FieldByName('ul').Value;
                  IBULVAL.Value:=DB.FieldByName('val').Value;
                  IBUL.Post
                 end;

               end;
    DB.Next;
    end;
    DB.Active:=false;
    cxProgressBar1.Position:=0;
    messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);
  end;
end;

procedure TImpForm.cxButton2Click(Sender: TObject);
var res:Variant;
begin
  inherited;
  if OpenDialog1.Execute then begin
    FilePath := ExtractFilePath(OpenDialog1.FileName);
    DB.Active:=false;
    DB.TableName:=OpenDialog1.FileName;
    DB.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=DB.RecordCount-1;
    DB.First;
    while not DB.Eof do
    begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
        IBPOSL.First;
               if not IBPOSL.Locate('wid',DB.FieldByName('wid').Value,[]) then
               begin
                  IBPOSL.Insert;
                  IBPOSLWID.Value:=DB.FieldByName('wid').Value;
                  IBPOSLNAME.Value:=DB.FieldByName('naim').Value;
                  IBPOSLVAL.Value:=DB.FieldByName('val').Value;
                  IBPOSL.Post;
               end
               else
               begin
                 if DB.FieldByName('val').Value<> IBPOSLVAL.Value then
                 begin
                  IBPOSL.Edit;
                  IBPOSLNAME.Value:=DB.FieldByName('naim').Value;
                  IBPOSLVAL.Value:=DB.FieldByName('val').Value;
                  IBPOSL.Post;
                 end;

               end;
    DB.Next;
    end;
    DB.Active:=false;
    cxProgressBar1.Position:=0;
    messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);
  end;
end;

procedure TImpForm.cxButton5Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then begin
    FilePath := ExtractFilePath(OpenDialog1.FileName);
    DB.Active:=false;
    DB.TableName:=OpenDialog1.FileName;
    DB.Active:=true;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=DB.RecordCount-1;
    DB.First;
    while not DB.Eof do
    begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
        IBDOM.First;
               if (DB.FieldByName('nomdom').Value=null) or (trim(DB.FieldByName('nomdom').Value)='0') then
               begin
               DB.Next;
               Continue;
               end;
               if IBUL.Locate('kl',DB.FieldByName('kl_ul').Value,[]) then
               begin
                   if not IBDOM.Locate('id_ul;dom', VarArrayOf([IBULID.Value,DB.FieldByName('nomdom').Value]),[]) then
                   begin
                      IBDOM.Insert;
                      IBDOMID_UL.Value:=IBULID.Value;
                      IBDOMDOM.Value:=DB.FieldByName('nomdom').Value;
                      IBDOMNAME.Value:=IBULNAME.Value+' '+DB.FieldByName('nomdom').Value;
                      IBDOM.Post;
                   end
                   else
                   begin
                     begin
                      IBDOM.Edit;
                      IBDOMNAME.Value:=IBULNAME.Value+' '+DB.FieldByName('nomdom').Value;
                      IBDOM.Post;
                     end;

                   end;
               end;
    DB.Next;
    end;
    DB.Active:=false;
    cxProgressBar1.Position:=0;
    messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);
  end;
end;

procedure TImpForm.cxButton6Click(Sender: TObject);
var     adostr:WideString;
begin
  inherited;
  if  not ADOConnectionDBF.Connected then
  begin
    if OpenDialog1.Execute then begin
       FilePath := ExtractFilePath(OpenDialog1.FileName);
        Application.ProcessMessages;
         ADOConnectionDBF.Connected:=false;
    adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
            FilePath+';Mode=Read;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
            'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;'+
            'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
            'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
            'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don"t Copy Locale on Compact=False;'+
            'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

    ADOConnectionDBF.ConnectionString:=adostr;
    ADOConnectionDBF.Connected:=true;
    end;
  end;
  if ADOConnectionDBF.Connected then
  begin

    if cxCheckGroup1.Properties.Items[0].Enabled then
    begin
          ADOQuery1.Active:=false;
          ADOQuery1.SQL.Text:='select * from ul';
          ADOQuery1.Active:=true;
              cxProgressBar1.Position:=0;
              cxProgressBar1.Properties.Min:=0;
             cxProgressBar1.Properties.Max:=ADOQuery1.RecordCount-1;
          ADOQuery1.First;
          while not ADOQuery1.Eof do
          begin
              cxProgressBar1.Position:=cxProgressBar1.Position+1;
              Application.ProcessMessages;
              IBUL.First;
      //          res:= IBUL.Lookup('schet;wid', VarArrayOf([schet,wid]),'schet');
      //            res:= IBUL.Lookup('kl',DB.FieldByName('kl').Value ,'kl');
                     if not IBUL.Locate('kl',ADOQuery1.FieldByName('kl').Value,[]) then
                     begin
                        IBUL.Insert;
                        IBULKL.Value:=ADOQuery1.FieldByName('kl').Value;
                        IBULNAME.Value:=ADOQuery1.FieldByName('ul').Value;
                        IBULVAL.Value:=ADOQuery1.FieldByName('val').Value;
                        IBUL.Post
                     end
                     else
                     begin
                       if ADOQuery1.FieldByName('val').Value<> IBULVAL.Value then
                       begin
                        IBUL.Edit;
                        IBULNAME.Value:=ADOQuery1.FieldByName('ul').Value;
                        IBULVAL.Value:=ADOQuery1.FieldByName('val').Value;
                        IBUL.Post
                       end;

                     end;
          ADOQuery1.Next;
          end;
          ADOQuery1.Active:=false;
          cxProgressBar1.Position:=0;
    end;

    if cxCheckGroup1.Properties.Items[1].Enabled then
    begin
          ADOQuery1.Active:=false;
          ADOQuery1.SQL.Text:='select * from wids';
          ADOQuery1.Active:=true;
          cxProgressBar1.Position:=0;
          cxProgressBar1.Properties.Min:=0;
         cxProgressBar1.Properties.Max:=ADOQuery1.RecordCount-1;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;
          IBPOSL.First;
                 if not IBPOSL.Locate('wid',ADOQuery1.FieldByName('wid').Value,[]) then
                 begin
                    IBPOSL.Insert;
                    IBPOSLWID.Value:=ADOQuery1.FieldByName('wid').Value;
                    IBPOSLNAME.Value:=ADOQuery1.FieldByName('naim').Value;
                    IBPOSLVAL.Value:=ADOQuery1.FieldByName('val').Value;
                    IBPOSL.Post;
                 end
                 else
                 begin
                   if ADOQuery1.FieldByName('val').Value<> IBPOSLVAL.Value then
                   begin
                    IBPOSL.Edit;
                    IBPOSLNAME.Value:=ADOQuery1.FieldByName('naim').Value;
                    IBPOSLVAL.Value:=ADOQuery1.FieldByName('val').Value;
                    IBPOSL.Post;
                   end;
                 end;
      ADOQuery1.Next;
      end;
      ADOQuery1.Active:=false;
      cxProgressBar1.Position:=0;
    end;

    if cxCheckGroup1.Properties.Items[2].Enabled then
    begin
          ADOQuery1.Active:=false;
          ADOQuery1.SQL.Text:='select * from kart';
          ADOQuery1.Active:=true;
          cxProgressBar1.Position:=0;
          cxProgressBar1.Properties.Min:=0;
         cxProgressBar1.Properties.Max:=ADOQuery1.RecordCount-1;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;
        IBDOM.First;
               if (ADOQuery1.FieldByName('nomdom').Value=null) or (trim(ADOQuery1.FieldByName('nomdom').Value)='0') then
               begin
               ADOQuery1.Next;
               Continue;
               end;
               if IBUL.Locate('kl',ADOQuery1.FieldByName('kl_ul').Value,[]) then
               begin
                   if not IBDOM.Locate('id_ul;dom', VarArrayOf([IBULID.Value,ADOQuery1.FieldByName('nomdom').Value]),[]) then
                   begin
                      IBDOM.Insert;
                      IBDOMID_UL.Value:=IBULID.Value;
                      IBDOMDOM.Value:=ADOQuery1.FieldByName('nomdom').Value;
                      IBDOMNAME.Value:=IBULNAME.Value+' '+ADOQuery1.FieldByName('nomdom').Value;
                      IBDOM.Post;
                   end
                   else
                   begin
                     begin
                      IBDOM.Edit;
                      IBDOMNAME.Value:=IBULNAME.Value+' '+ADOQuery1.FieldByName('nomdom').Value;
                      IBDOM.Post;
                     end;

                   end;
               end;
      ADOQuery1.Next;
      end;
      ADOQuery1.Active:=false;
      cxProgressBar1.Position:=0;
    end;

    if cxCheckGroup1.Properties.Items[3].Enabled then
    begin
          ADOQuery1.Active:=false;
//          ADOQuery1.SQL.Text:='select posltar.kl_ntar,posltar.tarif,posltar.wid,kart.kl_ul,kart.nomdom from kart,posltar where kart.schet=posltar.schet';
//          ADOQuery1.SQL.Text:='select max(posltar.tarif) as tarif,posltar.wid,kart.kl_ul,kart.nomdom from kart,posltar,ntarif where kart.schet=posltar.schet and  group by posltar.wid,kart.kl_ul,kart.nomdom';
          ADOQuery1.SQL.Text:='select ntarif.kl,ntarif.wid,ntarif.tarif,kart.kl_ul,kart.nomdom from ntarif,posl,kart where ntarif.kl=posl.kl_ntar and posl.schet=kart.schet and ntarif.lift<>1 group by ntarif.kl,ntarif.wid,ntarif.tarif,kart.kl_ul,kart.nomdom';
          ADOQuery1.Active:=true;
          cxProgressBar1.Position:=0;
          cxProgressBar1.Properties.Min:=0;
         cxProgressBar1.Properties.Max:=ADOQuery1.RecordCount-1;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;
          IBTARIF_COMP.First;
          if not IBTARIF_COMP.Locate('kl_ntar',ADOQuery1.FieldByName('kl').Value,[]) then
          begin
            IBTARIF_COMP.Insert;
            IBTARIF_COMPSUMM.Value:=ADOQuery1.FieldByName('tarif').Value;
            IBTARIF_COMPSUMM.Value:=ADOQuery1.FieldByName('tarif').Value;
            IBTARIF_COMPSUMM.Value:=ADOQuery1.FieldByName('tarif').Value;
            IBTARIF_COMPSUMM.Value:=ADOQuery1.FieldByName('tarif').Value;
            IBTARIF_COMP.Post;
          end
          else
          begin
            IBTARIF_COMP.Edit;
            IBTARIF_COMPSUMM.Value:=ADOQuery1.FieldByName('tarif').Value;
            IBTARIF_COMP.Post;
          end;


          IBDOM.First;
               if (ADOQuery1.FieldByName('nomdom').Value=null) or (trim(ADOQuery1.FieldByName('nomdom').Value)='0') then
               begin
               ADOQuery1.Next;
               Continue;
               end;
               if IBUL.Locate('kl',ADOQuery1.FieldByName('kl_ul').Value,[]) then
               begin
                   if IBDOM.Locate('id_ul;dom', VarArrayOf([IBULID.Value,ADOQuery1.FieldByName('nomdom').Value]),[]) then
                   begin

                      IBDOM.Insert;
                      IBDOMID_UL.Value:=IBULID.Value;
                      IBDOMDOM.Value:=ADOQuery1.FieldByName('nomdom').Value;
                      IBDOMNAME.Value:=IBULNAME.Value+' '+ADOQuery1.FieldByName('nomdom').Value;
                      IBDOM.Post;
                   end
                   else
                   begin
                     begin
                      IBDOM.Edit;
                      IBDOMNAME.Value:=IBULNAME.Value+' '+ADOQuery1.FieldByName('nomdom').Value;
                      IBDOM.Post;
                     end;

                   end;
               end;
      ADOQuery1.Next;
      end;
      ADOQuery1.Active:=false;
      cxProgressBar1.Position:=0;
    end;

    messagedlg('Імпорт завершено!',mtInformation,[mbOK],0);

  end;


end;

procedure TImpForm.FormCreate(Sender: TObject);
begin
  inherited;
IBPOSL.Active:=true;
IBUL.Active:=true;
IBDOM.Active:=true;
end;

procedure TImpForm.FormShow(Sender: TObject);
begin
  inherited;
IBPOSL.Active:=true;
IBUL.Active:=true;
IBDOM.Active:=true;
end;

procedure TImpForm.IBDOMBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImpForm.IBPOSLBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImpForm.IBULBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

end.
