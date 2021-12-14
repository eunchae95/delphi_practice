unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    panel1: TPanel;
    txtResult: TEdit;
    btnMC: TButton;
    btnMR: TButton;
    btnMS: TButton;
    btnMplus: TButton;
    btnMminus: TButton;
    btnBS: TButton;
    btnCE: TButton;
    btnPlusMinus: TButton;
    btnRoot: TButton;
    btnC: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnDiv: TButton;
    btnMod: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btnMul: TButton;
    btnXdiv: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnSub: TButton;
    btn0: TButton;
    btnDot: TButton;
    btnPlus: TButton;
    btnEqual: TButton;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnPlusMinusClick(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnMulClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnBSClick(Sender: TObject);
    procedure btnCEClick(Sender: TObject);
    procedure btnDotClick(Sender: TObject);
    //procedure FormKeyPress(Sender: TObject; var Key: Char);
    //procedure btnEqualKeyPress(Sender: TObject; var Key: Char);
    //procedure btnPlusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   // procedure btnEqualKeyDown(Sender: TObject; var Key: Char; Shift: TShiftState);
   // procedure btnEqualKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    //procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    //procedure btnEqualKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    //procedure txtResultKeyDown(Sender: TObject; var Key: Char);
    procedure txtResultKeypress(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }

  num1,num2,result,operCom : String;
  oper : Char;




  public
    { Public declarations }


  end;

var
  Form1: TForm1;
  keycheck : Boolean = true ;    //키이벤트 중복

implementation

{$R *.dfm}

procedure TForm1.btn0Click(Sender: TObject);
begin
  if txtResult.text= '0' then
  txtResult.Text := '0'
  else
  txtResult.Text := txtResult.Text + '0' ;


end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if txtResult.text= '0' then
  txtResult.Text := '1'
  else
  txtResult.Text := txtResult.Text + '1' ;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
   if txtResult.text= '0' then
  txtResult.Text := '3'
  else
  txtResult.Text := txtResult.Text + '3' ;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
    if txtResult.text= '0' then
  txtResult.Text := '2'
  else
  txtResult.Text := txtResult.Text + '2' ;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
   if txtResult.text= '0' then
  txtResult.Text := '4'
  else
  txtResult.Text := txtResult.Text + '4' ;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
    if txtResult.text= '0' then
  txtResult.Text := '5'
  else
  txtResult.Text := txtResult.Text + '5' ;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
    if txtResult.text= '0' then
  txtResult.Text := '6'
  else
  txtResult.Text := txtResult.Text + '6' ;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
    if txtResult.text= '0' then
  txtResult.Text := '7'
  else
  txtResult.Text := txtResult.Text + '7' ;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
 if txtResult.text= '0' then
  txtResult.Text := '8'
  else
  txtResult.Text := txtResult.Text + '8' ;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
 if txtResult.text= '0' then
  txtResult.Text := '9'
  else
  txtResult.Text := txtResult.Text + '9' ;
end;

procedure TForm1.btnPlusMinusClick(Sender: TObject);
var pMinus : Real;

begin

  pMinus := StrToFloat(txtResult.Text);
  txtResult.Text := FloatToStr(-1 * pMinus);

end;

procedure TForm1.btnPlusClick(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '+';
  //txtResult.Text := txtResult.Text + oper;
  txtResult.Text :='';
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '-';
  txtResult.Text := '';
end;


procedure TForm1.btnDivClick(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '/';
  txtResult.Text := '';
end;

procedure TForm1.btnMulClick(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '*';
  txtResult.Text := '';
end;


procedure TForm1.btnEqualClick(Sender: TObject);
begin
   num2 := txtResult.Text;

  if oper =  '+' then
  //result := StrToFloat(num1)+ StrToFloat(num2);
   result := FloatToStr(StrToFloat(num1)+ StrToFloat(num2)) ;
   txtResult.Text := result;

   if oper = '-' then
   result := FloatToStr(StrToFloat(num1)- StrToFloat(num2));
   txtResult.Text := result;

   if oper = '*' then
   result := FloatToStr(StrToFloat(num1) * StrToFloat(num2));
   txtResult.Text := result;

   if oper = '/' then
   result := FloatToStr(StrToFloat(num1)/  StrToFloat(num2));
   txtResult.Text := result;

end;


procedure TForm1.btnBSClick(Sender: TObject);
begin
  txtResult.Text := Copy(txtResult.Text,1,Length(txtResult.Text)-1);
  if txtResult.Text ='' then
  txtResult.Text :='0' ;

end;

procedure TForm1.btnCEClick(Sender: TObject);
begin
txtResult.Text :='';
end;

procedure TForm1.btnDotClick(Sender: TObject);
begin
 if (Pos('.',txtResult.Text)<> 0) then
    Exit
    else
    txtResult.Text := txtResult.Text + btnDot.Caption;
end;

{
procedure TForm1.txtResultKeyDown(Sender: TObject; var Key: Char);
begin
  ShowMessage('23333');
  if(Key = #13) then

  begin
    Key := #0;
    ShowMessage('1');
    btnEqualClick(Sender);
    Perform(WM_NEXTDLGCTL, 0, 0);

  end;
  ShowMessage('2');
end;
}
procedure TForm1.txtResultKeypress(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //ShowMessage('rrrrrrr');
  case Key of
    VK_RETURN: btnEqualClick(Sender);
  end;
end;

 {
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of

VK_NUMPAD0: btn0Click(Sender);
VK_NUMPAD1: btn1Click(Sender);
VK_NUMPAD2: btn2Click(Sender);
VK_NUMPAD3: btn3Click(Sender);
VK_NUMPAD4: btn4Click(Sender);
VK_NUMPAD5: btn5Click(Sender);
VK_NUMPAD6: btn6Click(Sender);
VK_NUMPAD7: btn7Click(Sender);
VK_NUMPAD8: btn8Click(Sender);
VK_NUMPAD9: btn9Click(Sender);
VK_DECIMAL: btnDotClick(Sender); //dot
VK_ADD: btnPlusClick(Sender); //더하기
//#13: btnEqualClick (Sender); // 엔터키 (버튼13을 ActiveControl 해야함)
//VK_RETURN
VK_DELETE: btnBSClick(Sender); // Delete키 모두 지우기
VK_SUBTRACT: btnSubClick(Sender); //빼기
VK_MULTIPLY: btnMulClick(Sender);//곱하기
VK_DIVIDE: btnDivClick(Sender);//나누기
VK_BACK: btnBSClick(Sender);//문자지우기
  end;

end;
}


 {
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = #13 then
  begin
    btnEqualClick(Sender);
     //btnEqual.Click;
  end;

end;
}

{
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
const
  ENTER = '#13';
begin
  case Key of ENTER :
  begin
    btnEqualClick(Sender);
     //btnEqual.Click;
  end;

  end;
end;
 }

{
procedure TForm1.btnEqualKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = VK_RETURN then
  begin
    btnEqual.SetFocus;
    btnEqualClick(Sender);
     //btnEqual.Click;
  end;
end;
 }


  {
procedure TForm1.btnEqualKeyDown(Sender: TObject; var Key: Char;
  Shift: TShiftState);
begin
   if Key = #13 then
  begin
    btnEqualClick(Sender);
     //btnEqual.Click;
  end;
end;
   }
 {
procedure TForm1.btnPlusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ADD then
  begin
    btnPlusClick(Sender);
  end;

end;
 }


{
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;  //키보드 입력
  Shift: TShiftState);
begin

      case Key of
          VK_NUMPAD0 : if(keycheck = false) then
            begin  //keycheck로 down과 press안겹치게 플래그
              btn0.Click;
            end;
          VK_NUMPAD1 : if(keycheck = false) then
            begin
              btn1.Click;
            end;
          VK_RETURN : if(keycheck = false) then
            begin
              btnEqual.Click;
            end;

      else
      end;
    keycheck := True;
end;



procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if(keycheck = True) then begin
        case Key of

              #13: btnEqual.Click;

        end;
    end;
end;

}

{
procedure TForm1.btnEqualKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
ShowMessage('26666');
end;
}


procedure TForm1.txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ShowMessage('277777');

  if Key = #13 then
  begin
    btnEqualClick(Sender);
     //btnEqual.Click;
  end;

end;

end.





