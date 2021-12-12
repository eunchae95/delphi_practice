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
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn21Click(Sender: TObject);
    procedure btn20Click(Sender: TObject);
    procedure btn23Click(Sender: TObject);
    procedure btn24Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    num1,num2,result : string;
    oper: Char;
    operCom : String;
    
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

procedure TForm1.btn4Click(Sender: TObject);
begin
  txtResult.Text := Copy(txtResult.Text,1,Length(txtResult.Text)-1);
  if txtResult.Text ='' then
  txtResult.Text :='0';
end;

procedure TForm1.btn2Click(Sender: TObject);
var f,s : string;
begin
  txtResult.Text := '0';

f := num1;
s := num2;

f:= '';
s:= '';

end;

procedure TForm1.btn21Click(Sender: TObject);
var pMinus : Real;

begin
  pMinus := StrToFloat(txtResult.Text);
  txtResult.Text := FloatToStr(-1 * pMinus);
end;

procedure TForm1.btn20Click(Sender: TObject);
begin
num1 := txtResult.Text;
  oper := '+';
  txtResult.Text :='';
end;

procedure TForm1.btn23Click(Sender: TObject);
begin
    if (Pos('.',txtResult.Text)<> 0) then
    Exit
    else
    txtResult.Text := txtResult.Text + btn23.Caption;
end;

procedure TForm1.btn24Click(Sender: TObject);
begin
  num2 := txtResult.Text;

  if oper = '+' then
  result := FloatToStr(StrToFloat(num1) + StrToFloat(num2));
  txtResult.Text := result;

   if oper = '-' then
  result := FloatToStr(StrToFloat(num1) - StrToFloat(num2));
  txtResult.Text := result;

   if oper = '*' then
  result := FloatToStr(StrToFloat(num1) * StrToFloat(num2));
  txtResult.Text := result;

   if oper = '/' then
  result := FloatToStr(StrToFloat(num1) / StrToFloat(num2));
  txtResult.Text := result;

   if operCom = '1/x' then
  result := FloatToStr(1 / StrToFloat(num1));
  txtResult.Text := result;

  if operCom = 'x^2' then
  //result := FloatToStr(StrToFloat(num1)* StrToFloat(num1));
  result := FloatToStr(Sqr(StrToFloat(num1)));
  txtResult.Text := result;

  if operCom = 'xSq' then
  //result := FloatToStr(StrToFloat(num1)* StrToFloat(num1));
  result := FloatToStr(Sqrt(StrToFloat(num1)));
  txtResult.Text := result;

   if oper = '%' then
  result := IntToStr(StrToInt(num1) mod StrToInt(num2));
  txtResult.Text := result;
end;

procedure TForm1.btn16Click(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '-';
  txtResult.Text :='';
end;

procedure TForm1.btn12Click(Sender: TObject);
begin
   num1 := txtResult.Text;
  oper := '*';
  txtResult.Text :='';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '/';
  txtResult.Text :='';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  num1 := txtResult.Text;
  operCom := '1/x';
  txtResult.Text :='';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
   num1 := txtResult.Text;
  operCom := 'x^2';
  txtResult.Text :='';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
   num1 := txtResult.Text;
  operCom := 'xSq';
  txtResult.Text :='';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
   num1 := txtResult.Text;
  oper := '%';
  txtResult.Text :='';
end;

end.
