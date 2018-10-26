program Tarif;

uses
  Forms,
  MainForm in 'MainForm.pas' {Main},
  DataMod in 'DataMod.pas' {DataM: TDataModule},
  Zastavka in 'Zastavka.pas' {Start},
  Aboutt in 'Aboutt.pas' {About},
  InsertForm in 'InsertForm.pas' {Insert},
  AllMDIChild in 'AllMDIChild.pas' {AllMDICh},
  Spravoch in 'Spravoch.pas' {Sprav},
  MyLibrary in 'MyLibrary.pas',
  mytools in 'mytools.pas',
  SpecifForm in 'SpecifForm.pas' {Specif},
  TarifForm in 'TarifForm.pas' {Tarifs},
  Ins in 'Ins.pas' {InsForm},
  Import in 'Import.pas' {ImpForm},
  Progress in 'Progress.pas' {Prores},
  ReportForm in 'ReportForm.pas' {Report},
  Info in 'Info.pas' {InfoForm},
  SpDom in 'SpDom.pas' {SpDomForm},
  SpUl in 'SpUl.pas' {SpUlForm},
  SpVidAB in 'SpVidAB.pas' {SpVidABForm},
  DomOther in 'DomOther.pas' {DomOthForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Start := TStart.Create(Application);
  Application.Title := 'Розрахунок тарифів';
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(TDomOthForm, DomOthForm);
  application.ProcessMessages;
  Start.Show;
//  for i:=1 to 1000000 do
//  Start.Gauge1.Progress:= i div 10000;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TAbout, About);
  Application.CreateForm(TProres, Prores);
  Application.CreateForm(TInfoForm, InfoForm);
  Start.Free;
  Application.Run;
end.
