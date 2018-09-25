unit Import;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ins, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, IBX.IBDatabase, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxProgressBar,Data.DB,
  IBX.IBCustomDataSet,dbf, Vcl.Buttons, Vcl.ComCtrls, Data.Win.ADODB,
  cxGroupBox, cxCheckGroup, IBX.IBQuery;

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
    ADOConnectionDBF: TADOConnection;
    ADOQuery1: TADOQuery;
    cxCheckGroup1: TcxCheckGroup;
    IBTARIF: TIBDataSet;
    DSTARIF: TDataSource;
    IBTARIF_COMP: TIBDataSet;
    DSTARIF_COMP: TDataSource;
    IBTARIF_DOM: TIBDataSet;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    IBTARIF_DOMID: TIntegerField;
    IBTARIF_DOMID_TARIF: TIntegerField;
    IBTARIF_DOMID_DOM: TIntegerField;
    IBTARIF_DOMNAME: TIBStringField;
    IBTARIFID: TIntegerField;
    IBTARIFDATA: TDateField;
    IBTARIFNAME: TIBStringField;
    IBTARIFID_POSL: TIntegerField;
    IBTARIFNOTE: TIBStringField;
    IBTARIFTARIF_PLAN: TIBBCDField;
    IBTARIFTARIF_FACT: TIBBCDField;
    IBTARIFTARIF_RN: TIBBCDField;
    IBTARIFTARIF_RK: TIBBCDField;
    IBTARIFNORMA: TIBBCDField;
    IBTARIFTARIF_END: TIBBCDField;
    IBTARIF_COMPID: TIntegerField;
    IBTARIF_COMPDATA: TDateField;
    IBTARIF_COMPID_TARIF: TIntegerField;
    IBTARIF_COMPNAME: TIBStringField;
    IBTARIF_COMPSUMM: TIBBCDField;
    IBTARIF_COMPKL_NTAR: TIntegerField;
    IBTARIF_COMPFL_LIFT: TIntegerField;
    IBTARIF_COMPNORMA: TIBBCDField;
    procedure cxButton1Click(Sender: TObject);
    procedure IBPOSLBeforePost(DataSet: TDataSet);
    procedure IBDOMBeforePost(DataSet: TDataSet);
    procedure IBULBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure IBTARIFBeforePost(DataSet: TDataSet);
    procedure IBTARIF_COMPBeforePost(DataSet: TDataSet);
    procedure IBTARIF_DOMBeforePost(DataSet: TDataSet);
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
  IBPOSL.Active:=true;
  IBUL.Active:=true;
  IBDOM.Active:=true;
  IBTARIF.Active:=true;
  IBTARIF_COMP.Active:=true;
  IBTARIF_DOM.Active:=true;

    if cxCheckGroup1.States[0]=cbsChecked then
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

    if cxCheckGroup1.States[1]=cbsChecked then
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

    if cxCheckGroup1.States[2]=cbsChecked then
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

    if cxCheckGroup1.States[3]=cbsChecked then
    begin
            IBTransaction1.CommitRetaining;
            IBPOSL.Active:=true;
            IBUL.Active:=true;
            IBDOM.Active:=true;
            IBTARIF.Active:=true;
            IBTARIF_COMP.Active:=true;
            IBTARIF_DOM.Active:=true;

          ADOQuery1.Active:=false;
//          ADOQuery1.SQL.Text:='select posltar.kl_ntar,posltar.tarif,posltar.wid,kart.kl_ul,kart.nomdom from kart,posltar where kart.schet=posltar.schet';
//          ADOQuery1.SQL.Text:='select max(posltar.tarif) as tarif,posltar.wid,kart.kl_ul,kart.nomdom from kart,posltar,ntarif where kart.schet=posltar.schet and  group by posltar.wid,kart.kl_ul,kart.nomdom';
//            ADOQuery1.SQL.Text:='select ntarif.kl,ntarif.tarif,ntarif.wid from ntarif where ntarif.kl in (select kl_ntar from posl) and ntarif.lift<>1';
          ADOQuery1.SQL.Text:='select ntarif.kl, ntarif.name, ntarif.wid, ntarif.tarif, kart.kl_ul, kart.nomdom, ntarif.lift, ntarif.norma'+
                              ' FROM ntarif, posl, kart where ntarif.kl=posl.kl_ntar and posl.schet=kart.schet group by ntarif.kl, ntarif.name, ntarif.wid, ntarif.tarif, ntarif.norma, kart.kl_ul, kart.nomdom, ntarif.lift';
          ADOQuery1.Active:=true;
          cxProgressBar1.Position:=0;
          cxProgressBar1.Properties.Min:=0;
         cxProgressBar1.Properties.Max:=ADOQuery1.RecordCount-1;
      ADOQuery1.First;
      while not ADOQuery1.Eof do
      begin

          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;
//          IBQuery1.Active:=false;
//          IBQuery1.SQL.Text:='select tarif.id,tarif_dom.id,tarif_comp.kl_ntar,tarif_comp.lift,posl.wid,dom.dom,ul.kl from tarif,tarif_dom,tarif_comp,posl,dom,ul where tarif.id=tarif_dom.id_tarif and tarif.id=tarif_comp.id_tarif and tarif.date=:dt and tarif_dom.id_dom=dom.id and dom.id_ul=ul.id and tarif.id_posl=posl.id';
//
//          IBTARIF.Active:=false;
          IBPOSL.first;
          if not IBPOSL.Locate('WID',ADOQuery1.FieldByName('wid').Value,[]) then
          begin
               ADOQuery1.Next;
               Continue;
          end;
          IBUL.first;
          if not IBUL.Locate('kl',ADOQuery1.FieldByName('kl_ul').Value,[]) then
          begin
               ADOQuery1.Next;
               Continue;
          end;
          IBDOM.first;
          if not IBDOM.Locate('id_ul;dom', VarArrayOf([IBULID.Value,ADOQuery1.FieldByName('nomdom').Value]),[]) then
          begin
               ADOQuery1.Next;
               Continue;
          end;


            IBQuery1.Active:=false;
            IBQuery1.SQL.Text:='select tarif.id, tarif_comp.kl_ntar, tarif_comp.fl_lift from tarif, tarif_comp where tarif.id=tarif_comp.id_tarif and tarif.data=:dt';
            IBQuery1.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
            IBQuery1.Active:=true;
            if IBQuery1.Locate('kl_ntar',ADOQuery1.FieldByName('kl').Value,[]) then
            begin
              IBTARIF_DOM.First;
              if not IBTARIF_DOM.Locate('ID_TARIF;ID_DOM', VarArrayOf([IBQuery1.FieldByName('id').Value,IBDOMID.Value]),[]) then
              begin
                 IBTARIF_DOM.Insert;
                 IBTARIF_DOMID_TARIF.AsVariant:=IBQuery1.FieldByName('id').Value;
                 IBTARIF_DOMID_DOM.Value:=IBDOMID.Value;
                 IBTARIF_DOMNAME.Value:=IBDOMNAME.Value;
                 IBTARIF_DOM.Post;
              end;
            end
            else
            begin
              if ADOQuery1.FieldByName('lift').Value=1 then
              begin
                ADOQuery1.FieldByName('lift').Value;
              end;
                IBQuery1.Active:=false;
                IBQuery1.SQL.Text:='select tarif.id, tarif.id_posl, tarif_dom.id_dom from tarif, tarif_dom where tarif.id=tarif_dom.id_tarif and tarif.data=:dt';
                IBQuery1.ParamByName('dt').Value:=main.IBPERIODDATA.Value;
                IBQuery1.Active:=true;
                if IBQuery1.Locate('id_posl;id_dom', VarArrayOf([IBPOSLID.Value,IBDOMID.Value]),[]) then
                begin
                  IBTARIF_COMP.Insert;
                  IBTARIF_COMPID_TARIF.AsVariant:=IBQuery1.FieldByName('id').Value;
                  IBTARIF_COMPNAME.Value:=ADOQuery1.FieldByName('name').Value;
                  IBTARIF_COMPSUMM.AsVariant:=ADOQuery1.FieldByName('tarif').Value;
                  IBTARIF_COMPKL_NTAR.AsVariant:=ADOQuery1.FieldByName('kl').Value;
                  IBTARIF_COMPFL_LIFT.AsVariant:=ADOQuery1.FieldByName('lift').Value;
                  IBTARIF_COMPNORMA.AsVariant:=ADOQuery1.FieldByName('norma').Value;
                  IBTARIF_COMP.Post;
                end
                else
                begin
                  IBTARIF.Insert;
                  IBTARIFDATA.Value:=main.IBPERIODDATA.Value;
                  IBTARIFID_POSL.AsVariant:=IBPOSLID.Value;
                  IBTARIFTARIF_END.AsVariant:=ADOQuery1.FieldByName('tarif').Value;
                  IBTARIFNORMA.AsVariant:=ADOQuery1.FieldByName('norma').Value;
                  IBTARIF.Post;
                  IBTARIF_COMP.Insert;
                  IBTARIF_COMPID_TARIF.Value:=IBTARIFID.Value;
                  IBTARIF_COMPNAME.AsVariant:=ADOQuery1.FieldByName('name').Value;
                  IBTARIF_COMPSUMM.AsVariant:=ADOQuery1.FieldByName('tarif').Value;
                  IBTARIF_COMPKL_NTAR.AsVariant:=ADOQuery1.FieldByName('kl').Value;
                  IBTARIF_COMPFL_LIFT.AsVariant:=ADOQuery1.FieldByName('lift').Value;
                  IBTARIF_COMPNORMA.AsVariant:=ADOQuery1.FieldByName('norma').Value;
                  IBTARIF_COMP.Post;
                  IBTARIF_DOM.Insert;
                  IBTARIF_DOMID_TARIF.Value:=IBTARIFID.Value;
                  IBTARIF_DOMID_DOM.Value:=IBDOMID.Value;
                  IBTARIF_DOMNAME.AsVariant:=IBDOMNAME.Value;
                  IBTARIF_DOM.Post;
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
IBTARIF.Active:=true;
IBTARIF_COMP.Active:=true;
IBTARIF_DOM.Active:=true;
end;

procedure TImpForm.FormShow(Sender: TObject);
begin
  inherited;
IBPOSL.Active:=true;
IBUL.Active:=true;
IBDOM.Active:=true;
IBTARIF.Active:=true;
IBTARIF_COMP.Active:=true;
IBTARIF_DOM.Active:=true;
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

procedure TImpForm.IBTARIFBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImpForm.IBTARIF_COMPBeforePost(DataSet: TDataSet);
begin
fl_post:=1;
  inherited;

end;

procedure TImpForm.IBTARIF_DOMBeforePost(DataSet: TDataSet);
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
