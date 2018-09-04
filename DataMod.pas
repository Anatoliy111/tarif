unit DataMod;

interface

uses
  SysUtils, Classes, DB, IBDatabase, inifiles, dialogs,forms;

type
  TDataM = class(TDataModule)
    IBDatabase1: TIBDatabase;
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
var s:string;
begin
  try
  IBDatabase1.Connected:=false;
  iniFile:=TIniFile.Create(extractfilepath(paramstr(0))+'Tarif.ini');
  s:=iniFile.ReadString('Data','Database',extractfilepath(paramstr(0))+'TARIF.FDB');
  IBDatabase1.DatabaseName:=s;
  IBDatabase1.Open;
  except
    messagedlg('Проблемы с открытием базы данных',mtError,[mbCancel],0);
    Application.Terminate;
  end;

end;

end.
