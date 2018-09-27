unit Progress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  cxProgressBar, Vcl.StdCtrls, cxButtons;

type
  TProres = class(TForm)
    cxButton2: TcxButton;
    cxProgressBar1: TcxProgressBar;
    Label1: TLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Prores: TProres;

implementation

{$R *.dfm}

uses MainForm;

procedure TProres.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TProres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Main.Enabled:=true;
end;

procedure TProres.FormShow(Sender: TObject);
begin
Main.Enabled:=false;
end;

end.
