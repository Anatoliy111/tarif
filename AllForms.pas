unit AllForms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMDIChild, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, IBX.IBDatabase, dxStatusBar,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TAllForm = class(TAllMDICh)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AllForm: TAllForm;

implementation

{$R *.dfm}

end.
