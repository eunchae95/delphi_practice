unit _CalMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    btn16: TButton;
    btn17: TButton;
    btn18: TButton;
    btn19: TButton;
    btn20: TButton;
    btn21: TButton;
    btn22: TButton;
    btn23: TButton;
    btn24: TButton;
    txtResult: TEdit;
    procedure btn17Click(Sender: TObject);
    procedure btn18Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn17Click(Sender: TObject);
begin
  if txtResult.Text='0' then
    txtResult.Text:='1'
    else
    txtResult.Text := txtResult.Text +'1';
end;

procedure TForm1.btn18Click(Sender: TObject);
begin
  if txtResult.Text='0' then
    txtResult.Text:='2'
    else
    txtResult.Text := txtResult.Text +'2';
end;


procedure TForm1.btn19Click(Sender: TObject);
begin
   if txtResult.Text='0' then
    txtResult.Text:='3'
    else
    txtResult.Text := txtResult.Text +'3';
end;

procedure TForm1.btn13Click(Sender: TObject);
begin
  if txtResult.Text='0' then
    txtResult.Text:='4'
    else
    txtResult.Text := txtResult.Text +'4';
end;

procedure TForm1.btn14Click(Sender: TObject);
begin
   if txtResult.Text='0' then
    txtResult.Text:='5'
    else
    txtResult.Text := txtResult.Text +'5';
end;

procedure TForm1.btn15Click(Sender: TObject);
begin
   if txtResult.Text='0' then
    txtResult.Text:='6'
    else
    txtResult.Text := txtResult.Text +'6';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
   if txtResult.Text='0' then
    txtResult.Text:='7'
    else
    txtResult.Text := txtResult.Text +'7';
end;

procedure TForm1.btn10Click(Sender: TObject);
begin
    if txtResult.Text='0' then
    txtResult.Text:='8'
    else
    txtResult.Text := txtResult.Text +'8';
end;

procedure TForm1.btn11Click(Sender: TObject);
begin
   if txtResult.Text='0' then
    txtResult.Text:='9'
    else
    txtResult.Text := txtResult.Text +'9';
end;

end.
