unit Unit1_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.N5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  if dlgOpen1.Execute = true then
   mmo1.Lines.LoadFromFile(dlgOpen1.FileName);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
   if dlgSave1.Execute = true then
   mmo1.Lines.SaveToFile(dlgSave1.FileName);
end;

end.
