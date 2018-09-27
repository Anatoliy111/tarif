unit DataMod;

interface

uses
  SysUtils, Classes, DB, IBDatabase, inifiles, dialogs,forms;

type
  TDataM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBDatabase2: TIBDatabase;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iniFile:TIniFile;
  end;

var
  DataM: TDataM;

implementation

{$R *.dfm}

procedure TDataM.DataModuleCreate(Sender: TObject);
var s,ss:string;
begin
  try
  IBDatabase1.Connected:=false;
  iniFile:=TIniFile.Create(extractfilepath(paramstr(0))+'Tarif.ini');
  s:=iniFile.ReadString('Data','Database1',extractfilepath(paramstr(0))+'TARIF.FDB');
  IBDatabase1.DatabaseName:=s;
//    messagedlg(s,mtInformation,[mbOK],0);
  IBDatabase1.Open;
  IBDatabase2.Connected:=false;
  ss:=iniFile.ReadString('Data','Database2',extractfilepath(paramstr(0))+'GKP_NEW.GDB');
  IBDatabase2.DatabaseName:=ss;
//    messagedlg(ss,mtInformation,[mbOK],0);
  IBDatabase2.Open;



  except
    messagedlg('Помилка підключення до бази даних '+s,mtError,[mbCancel],0);
    Application.Terminate;
  end;

end;

end.
