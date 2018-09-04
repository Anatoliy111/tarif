program Tarif;

uses
  Forms,
  MainMater in 'MainMater.pas' {Main},
  DataMod in 'DataMod.pas' {DataM: TDataModule},
  Zastavka in 'Zastavka.pas' {Start},
  Aboutt in 'Aboutt.pas' {About},
  InsertForm in 'InsertForm.pas' {Insert},
  AllMDIChild in 'AllMDIChild.pas' {AllMDICh},
  Spravoch in 'Spravoch.pas' {Sprav},
  MyLibrary in 'MyLibrary.pas',
  mytools in 'mytools.pas',
  SpecifForm in 'SpecifForm.pas' {Specif},
  Jurnal in 'Jurnal.pas' {Jurn};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Start := TStart.Create(Application);
  Application.Title := '�������� ������������ ���������';
  Application.CreateForm(TDataM, DataM);
  application.ProcessMessages;
  Start.Show;
//  for i:=1 to 1000000 do
//  Start.Gauge1.Progress:= i div 10000;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TAbout, About);
  Start.Free;
  Application.Run;
end.
