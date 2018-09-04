unit Aboutt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TAbout = class(TForm)
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.dfm}

procedure TAbout.cxButton1Click(Sender: TObject);
begin
Close;
end;

end.
