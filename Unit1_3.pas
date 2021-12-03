unit Unit1_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    miInsertMode: TMenuItem;
    AAA1: TMenuItem;
    pm1: TPopupMenu;
    a1: TMenuItem;
    b1: TMenuItem;
    c1: TMenuItem;
    pn1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    ed1: TEdit;
    bt1: TButton;
    mmo1: TMemo;
    bt2: TButton;
    btnClear: TButton;
    btnAdd: TButton;
    btnDelete: TButton;
    btnSave: TButton;
    btnRead: TButton;
    procedure miInsertModeClick(Sender: TObject);
    procedure MenuItemClick(Sender: TObject);
    procedure lb1MouseEnter(Sender: TObject);
    procedure lb1MouseLeave(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure ed1KeyPress(Sender: TObject; var Key: Char);
    procedure bt2Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);

    procedure btnDeleteClick(Sender: TObject);



    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.MenuItemClick(Sender: TObject);
begin
  ShowMessage(TMenuItem(Sender).Hint);
  case TMenuItem(Sender).Tag of
    1: ;//
    2: ;//
    3: ;//

  end;

end;

procedure TForm1.miInsertModeClick(Sender: TObject);
begin
  miInsertMode.Checked := not miInsertMode.Checked;
end;

procedure TForm1.lb1MouseEnter(Sender: TObject);
begin
  lb1.Font.Color := clLime;
end;

procedure TForm1.lb1MouseLeave(Sender: TObject);
begin
  lb1.Font.Color := clBlack;
end;

procedure TForm1.bt1Click(Sender: TObject);
begin
 ShowMessage(ed1.Text);
end;

procedure TForm1.ed1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then begin
      Key := #0;
      ShowMessage(ed1.Text);
    end;
end;

procedure TForm1.bt2Click(Sender: TObject);
begin
     if mmo1.Modified then ShowMessage('Modified');
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  mmo1.Lines.Clear;
end;

procedure TForm1.btnDeleteClick(Sender: TObject);
begin
  mmo1.Lines.Delete(0);
end;



.





