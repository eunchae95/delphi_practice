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
    calView: TEdit;
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
   // procedure btnEqualKeyDown(Sender: TObject; var Key: Char; Shift: TShiftState);
   // procedure btnEqualKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    //procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    //procedure btnEqualKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
    //procedure txtResultKeyDown(Sender: TObject; var Key: Char);
    //procedure txtResultKeypress(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtResultKeyPress(Sender: TObject; var Key: Char);
    procedure btnCClick(Sender: TObject);


  private
    { Private declarations }
    //num1,num2,result: String;
   // oper : Char;

  public
    { Public declarations }


  end;

var
  Form1: TForm1;
   num1: String;
   num2: String;
   preResult: String;
   result: String;
   calView: String;
   calPreView: String;
   totalString : String;  //����� �ǿ���
   RFlag:boolean=true;// �������� �� ������
   OFlag:boolean=true;// ó���Է°��� �Ҹ������õ� ������

   oper : Char;
   flag : boolean=true; //�ǿ�����2 ���� �ִ��� ������ ���� flag
  //operFlag : Boolean = True;     //������ ��ȣ �ִ��� üũ
  //DoubleEqual: Boolean = False;  //'=' �� �ٽ� Ŭ������ ��
  //keycheck : Boolean = true ;    //Ű�̺�Ʈ �ߺ�

implementation

{$R *.dfm}

procedure TForm1.btn0Click(Sender: TObject);
begin

  if txtResult.text= '0' then
  txtResult.Text := '0'
  else
  txtResult.Text := txtResult.Text + '0' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);


end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if txtResult.text= '0' then
  txtResult.Text := '1'
  else
  txtResult.Text := txtResult.Text + '1' ;


  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if txtResult.text= '0' then
  txtResult.Text := '2'
  else
  txtResult.Text := txtResult.Text + '2' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);

end;


procedure TForm1.btn3Click(Sender: TObject);
begin
   if txtResult.text= '0' then
  txtResult.Text := '3'
  else
  txtResult.Text := txtResult.Text + '3' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);

end;



procedure TForm1.btn4Click(Sender: TObject);
begin
   if txtResult.text= '0' then
  txtResult.Text := '4'
  else
  txtResult.Text := txtResult.Text + '4' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
    if txtResult.text= '0' then
  txtResult.Text := '5'
  else
  txtResult.Text := txtResult.Text + '5' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
    if txtResult.text= '0' then
  txtResult.Text := '6'
  else
  txtResult.Text := txtResult.Text + '6' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
    if txtResult.text= '0' then
  txtResult.Text := '7'
  else
  txtResult.Text := txtResult.Text + '7' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
 if txtResult.text= '0' then
  txtResult.Text := '8'
  else
  txtResult.Text := txtResult.Text + '8';

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
  end;



procedure TForm1.btn9Click(Sender: TObject);
begin
 if txtResult.text= '0' then
  txtResult.Text := '9'
  else
  txtResult.Text := txtResult.Text + '9' ;

  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
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

  //calPreView :=  txtResult.Text + oper;
  //calView.Text := calPreView+ num1;
   calView.Text := txtResult.Text + oper;
   txtResult.Text := '';

   //totalString := totalString + concat(FloatToStr(num2), '+'));
   //calView.Text := totalString;

   txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '-';
  txtResult.Text := '';
  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;


procedure TForm1.btnDivClick(Sender: TObject);            
begin
  num1 := txtResult.Text;
  oper := '/';
  txtResult.Text := '';
  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btnMulClick(Sender: TObject);
begin
  num1 := txtResult.Text;
  oper := '*';
  txtResult.Text := '';
  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);
end;


procedure TForm1.btnEqualClick(Sender: TObject);
begin
   num2 := txtResult.Text;
   calView.Text := '';
   {
  if oper =  '+' then
   preResult := num1 + num2;
   num1 := preResult;
   result := FloatToStr(StrToFloat(num1) + StrToFloat(num2));
   txtResult.Text := result;
    }

  if oper =  '+' then
   result := FloatToStr(StrToFloat(num1) + StrToFloat(num2)) ;
   txtResult.Text := result;
   

   if oper = '-' then
   result := FloatToStr(StrToFloat(num1) - StrToFloat(num2));
   txtResult.Text := result;


   if oper = '*' then
   result := FloatToStr(StrToFloat(num1) * StrToFloat(num2));
   txtResult.Text := result;

   if oper = '/' then
   result := FloatToStr(StrToFloat(num1) /  StrToFloat(num2));
   txtResult.Text := result;


  txtResult.SetFocus;
  txtResult.SelStart := Length(txtResult.Text);



end;


procedure TForm1.btnBSClick(Sender: TObject);
begin
  txtResult.Text := Copy(txtResult.Text,1,Length(txtResult.Text)-1);
  if txtResult.Text ='' then
  txtResult.Text :='0' ;



end;

procedure TForm1.btnCEClick(Sender: TObject);
begin
txtResult.Text := '';
//calView.Text := '';

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

{
procedure TForm1.txtResultKeypress(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //ShowMessage('rrrrrrr');
  case Key of
    VK_RETURN: btnEqualClick(Sender);
  end;
end;
}

procedure TForm1.txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  //if Key = #13 then
    if Key = VK_RETURN then
  begin
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //ShowMessage('277777');
    btnEqualClick(Sender);
     //btnEqual.Click;
  end;

end;

procedure TForm1.txtResultKeyPress(Sender: TObject; var Key: Char);
//editâ�� '����, .',enter �� �Էµǰ� ( ���߿� �����ڵ� �ǵ��� ����)
begin
  if not (Key in [#8,#13, '0'..'9', '-', DecimalSeparator]) then begin
    ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = DecimalSeparator) or (Key = '-')) and
          (Pos(Key, txtResult.Text) > 0) then begin
    ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and
          (txtResult.SelStart <> 0) then begin
    ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;


procedure TForm1.btnCClick(Sender: TObject);
begin
 txtResult.Text := '';
end;

end.

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
VK_ADD: btnPlusClick(Sender); //���ϱ�
//#13: btnEqualClick (Sender); // ����Ű (��ư13�� ActiveControl �ؾ���)
//VK_RETURN
VK_DELETE: btnBSClick(Sender); // DeleteŰ ��� �����
VK_SUBTRACT: btnSubClick(Sender); //����
VK_MULTIPLY: btnMulClick(Sender);//���ϱ�
VK_DIVIDE: btnDivClick(Sender);//������
VK_BACK: btnBSClick(Sender);//���������
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
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;  //Ű���� �Է�
  Shift: TShiftState);
begin

      case Key of
          VK_NUMPAD0 : if(keycheck = false) then
            begin  //keycheck�� down�� press�Ȱ�ġ�� �÷���
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








