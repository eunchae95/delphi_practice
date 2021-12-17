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
//  procedure txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCClick(Sender: TObject);
//  procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtResultKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
//  procedure btnModClick(Sender: TObject);
//  procedure txtResultKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
    //num1,num2,result: String;
   // oper : Char;

  public
    { Public declarations }


 end;

var
   Form1 : TForm1;
   preResult : String;                // 새로운 연산전에 저장된 결과값
   recentNumber : String = '0';       //최근 입력된 숫자
   result : String;                   //최종 계산 결과값
   calView : String;                  //계산식 보여주는 창
   calPreView : String;
   isFirstText : boolean = true;
   isOper : boolean = false;            //연산자가 있는지 확인
   isDoubleOper : boolean = false;      //연산자 두번 연속 눌렀나 확인
   oper : Char;
   remainResult : String ;            // CE 전에 결과값 저장
   isSave : Boolean = False;          // 초기화 전에 계산값이 담겼는지
   keycheck : boolean = true;         //키이벤트 중복



implementation

{$R *.dfm}

procedure TForm1.btn0Click(Sender: TObject);
  begin
    isDoubleOper := false;

    if isFirstText then
      begin
      txtResult.Text := '0';
      isFirstText := false;
      end
    else
      begin
      if txtResult.text= '0' then
         txtResult.Text := '0'
      else
         txtResult.Text := txtResult.Text + '0';
      end;

    if isOper then
        recentNumber := txtResult.Text;

    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);

end;


procedure TForm1.btn1Click(Sender: TObject);
  begin
    isDoubleOper := false;

   if isFirstText then
    begin
      txtResult.Text := '1';
      //txtResult.Text := txtResult.Text + (Sender as TButton).Caption; // 캡션 값 넣기

      isFirstText := false;
    end
  else
    begin
    if txtResult.text= '0' then
       txtResult.Text := '1'
    else
       txtResult.Text := txtResult.Text + '1';
    end;
    if isOper then
      recentNumber := txtResult.Text ;


  //txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);


end;


procedure TForm1.btn2Click(Sender: TObject);
begin
 isDoubleOper := false;
  if isFirstText then
 begin
   txtResult.Text := '2';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
   txtResult.Text := '2'
  else
    txtResult.Text := txtResult.Text + '2';
 end;
 if isOper then
 recentNumber := txtResult.Text;

 //txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);


end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 isDoubleOper := false;
   if isFirstText then
 begin
   txtResult.Text := '3';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
    txtResult.Text := '3'
  else
    txtResult.Text := txtResult.Text + '3';
 end;
 if isOper then
 recentNumber := txtResult.Text
 else;

 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);


end;

procedure TForm1.btn4Click(Sender: TObject);
begin       
 isDoubleOper := false;
  if isFirstText then
 begin
   txtResult.Text := '4';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
    txtResult.Text := '4'
  else
    txtResult.Text := txtResult.Text + '4';
 end;
 if isOper then
 recentNumber := txtResult.Text
 else;

 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin         
 isDoubleOper := false;
  if isFirstText then
 begin
   txtResult.Text := '5';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
    txtResult.Text := '5'
  else
    txtResult.Text := txtResult.Text + '5';
 end;
 if isOper then
 recentNumber := txtResult.Text
 else;

 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
 if isFirstText then
 begin
  txtResult.Text := '6';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
    txtResult.Text := '6'
  else
    txtResult.Text := txtResult.Text + '6';
 end;
 isDoubleOper := false;
 if isOper then
 recentNumber := txtResult.Text
 else;

 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin 
 isDoubleOper := false;
  if isFirstText then
 begin
  txtResult.Text := '7';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
    txtResult.Text := '7'
  else
    txtResult.Text := txtResult.Text + '7';
 end;
 if isOper then
 recentNumber := txtResult.Text
 else;

 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn8Click(Sender: TObject);
begin        
 isDoubleOper := false;
 if isFirstText then
 begin
   txtResult.Text := '8';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
    txtResult.Text := '8'
  else
    txtResult.Text := txtResult.Text + '8';
 end;
 if isOper then
 recentNumber := txtResult.Text
 else;
 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btn9Click(Sender: TObject);
begin    
 isDoubleOper := false;
  if isFirstText then
 begin
   txtResult.Text := '9';
   isFirstText := false;
 end
 else
 begin
  if txtResult.text= '0' then
    txtResult.Text := '9'
  else
    txtResult.Text := txtResult.Text + '9';
 end;
 if isOper then
 recentNumber := txtResult.Text
 else;
 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);
end;

procedure TForm1.btnPlusMinusClick(Sender: TObject);
var pMinus : Real;

begin

  pMinus := StrToFloat(txtResult.Text);
  txtResult.Text := FloatToStr(-1 * pMinus);

 txtResult.SetFocus;
 txtResult.SelStart := Length(txtResult.Text);

end;

procedure TForm1.btnPlusClick(Sender: TObject);
begin
  if isDoubleOper then
  begin
    //ShowMessage('ggg');
  oper := '+';
  calView.Text := txtResult.Text + oper ;
  end
  else
  begin
    //ShowMessage('hh');
   //ShowMessage('recentNumber: ' + recentNumber + 'preResult:' + preResult);
   isDoubleOper := True;
   isFirstText := true;
   if isOper then
    begin
      if oper =  '+' then
      begin
        //ShowMessage('2222222');
        result := FloatToStr(StrToFloat(recentNumber) + StrToFloat(preResult)) ;
        //ShowMessage('22222');
        calView.Text := result + '+';

       // ShowMessage(calView.Text);
      end;

      if oper = '-' then
      begin
        result := FloatToStr(StrToFloat(preResult) - StrToFloat(recentNumber));
        calView.Text := result + '+';
      end;

      if oper = '*' then
      begin
        result := FloatToStr(StrToFloat(recentNumber) * StrToFloat(preResult));
        calView.Text := result + '+';
      end;

      if oper = '/' then
      begin
        result := FloatToStr(StrToFloat(preResult) / StrToFloat(recentNumber));
        calView.Text := result + '+';
      end;

      oper := '+';
      preResult := result;
      txtResult.Text := result;
    end
   else
    begin
     // ShowMessage('33333');
      oper := '+';
      isOper := true;
      preResult := txtResult.Text;
      calView.Text := txtResult.Text + oper;
    end;

    if isSave = True then                        //초기화전에 저장됐는지
    begin
      calView.Text := remainResult + oper;
    end ;


   txtResult.SetFocus;
   txtResult.SelStart := Length(txtResult.Text);
  end;
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  if isDoubleOper then
  begin
  oper := '-';
  calView.Text := txtResult.Text + oper ;
  end
  else
  begin
   isDoubleOper := True;
   isFirstText := true;
   if isOper then
    begin
      if oper =  '+' then
      begin
        result := FloatToStr(StrToFloat(recentNumber) + StrToFloat(preResult)) ;
        calView.Text := result + '-';
      end;

      if oper = '-' then
      begin
        result := FloatToStr(StrToFloat(preResult) - StrToFloat(recentNumber));
        calView.Text := result + '-';
      end;

      if oper = '*' then
      begin
        result := FloatToStr(StrToFloat(recentNumber) * StrToFloat(preResult));
        calView.Text := result + '-';
      end;

      if oper = '/' then
      begin
        result := FloatToStr(StrToFloat(preResult) / StrToFloat(recentNumber));
        calView.Text := result + '-';
      end;

      oper := '-';
      preResult := result;
      txtResult.Text := result;
    end
   else
    begin
      oper := '-';
      isOper := true;
      preResult := txtResult.Text;
      calView.Text := txtResult.Text + oper;
    end;

    if isSave = True then                        //초기화전에 저장됐는지
    begin
      calView.Text := remainResult + oper;

    end ;


   txtResult.SetFocus;
   txtResult.SelStart := Length(txtResult.Text);
  end;
end;




procedure TForm1.btnDivClick(Sender: TObject);
begin
  if isDoubleOper then
    begin
      oper := '/';
      calView.Text := txtResult.Text + oper;
    end
  else
  begin
   isDoubleOper := True;
   isFirstText := true;
   if isOper then
    begin
      if oper =  '+' then
      begin
        result := FloatToStr(StrToFloat(recentNumber) + StrToFloat(preResult)) ;
        calView.Text := result + '/';
      end;

      if oper = '-' then
      begin
        result := FloatToStr(StrToFloat(preResult) - StrToFloat(recentNumber));
        calView.Text := result + '/';
      end;

      if oper = '*' then
      begin
        result := FloatToStr(StrToFloat(recentNumber) * StrToFloat(preResult));
        calView.Text := result + '/';
      end;

      if oper = '/' then
      begin
        result := FloatToStr(StrToFloat(preResult) / StrToFloat(recentNumber));
        calView.Text := result + '/';
      end;
      oper := '/';
      preResult := result;
      txtResult.Text := result;
    end
   else
    begin
      oper := '/';
      isOper := true;
      preResult := txtResult.Text;
      calView.Text := txtResult.Text + oper;
    end;

     if isSave = True then                        //초기화전에 저장됐는지
    begin
      calView.Text := remainResult + oper;

    end ;


   txtResult.SetFocus;
   txtResult.SelStart := Length(txtResult.Text);
  end;
end;

procedure TForm1.btnMulClick(Sender: TObject);
begin
  if isDoubleOper then
    begin
      oper := '*';
      calView.Text := txtResult.Text + oper;
    end
  else
  begin
   isDoubleOper := True;
   isFirstText := true;
   if isOper then
    begin
      if oper =  '+' then
      begin
        result := FloatToStr(StrToFloat(recentNumber) + StrToFloat(preResult)) ;
        calView.Text := result + '*';
      end;

      if oper = '-' then
      begin
        result := FloatToStr(StrToFloat(preResult) - StrToFloat(recentNumber));
        calView.Text := result + '*';
      end;

      if oper = '*' then
      begin
        result := FloatToStr(StrToFloat(recentNumber) * StrToFloat(preResult));
        calView.Text := result + '*';
      end;

      if oper = '/' then
      begin
        result := FloatToStr(StrToFloat(preResult) / StrToFloat(recentNumber));
        calView.Text := result + '*';
      end;
      oper := '*';
      preResult := result;
      txtResult.Text := result;
    end
   else
    begin
      oper := '*';
      isOper := true;
      preResult := txtResult.Text;
      calView.Text := txtResult.Text + oper;
    end;

     if isSave = True then                        //초기화전에 저장됐는지
    begin
      calView.Text := remainResult + oper;

    end ;


   txtResult.SetFocus;
   txtResult.SelStart := Length(txtResult.Text);
  end;
end;



procedure TForm1.btnEqualClick(Sender: TObject);
begin
   isOper := false;     // 이걸 처리하지않으면,  5+3=8 다음에 11+?= ? 이런식으로 잘못 누적된 결과값이 입력값으로 된다

   if oper =  '+' then
   begin

       if isSave = True then
       begin
        //ShowMessage('1');
        result :=  FloatToStr(StrToFloat(remainResult) + StrToFloat(recentNumber)) ;
        calView.Text := remainResult  + oper + recentNumber + '=' + result;

       end
       else begin
        //ShowMessage('2');
        result := FloatToStr(StrToFloat(preResult) + StrToFloat(recentNumber)) ;
        calView.Text := preResult + oper + recentNumber + '=' + result;
       end;


       {
       result := FloatToStr(StrToFloat(preResult) + StrToFloat(recentNumber)) ;
       calView.Text := preResult + oper + recentNumber + '=' + result;
       }
   end;

   if oper = '-' then
   begin
     {
        result := FloatToStr(StrToFloat(preResult) - StrToFloat(recentNumber)) ;
        calView.Text := preResult + oper + recentNumber + '=' + result;

      }
       if isSave = True then
        begin
        result :=  FloatToStr(StrToFloat(remainResult) - StrToFloat(recentNumber)) ;
        calView.Text := remainResult  + oper + recentNumber + '=' + result;

        end
       else begin
        result := FloatToStr(StrToFloat(preResult) - StrToFloat(recentNumber)) ;
        calView.Text := preResult + oper + recentNumber + '=' + result;
       end;

   end;

   if oper = '*' then
   begin
     {
        result := FloatToStr(StrToFloat(preResult) * StrToFloat(recentNumber)) ;
        calView.Text := preResult + oper + recentNumber + '=' + result;
     }

     if isSave = True then
        begin
        result :=  FloatToStr(StrToFloat(remainResult) * StrToFloat(recentNumber)) ;
        calView.Text := remainResult  + oper + recentNumber + '=' + result;

        end
       else begin
        result := FloatToStr(StrToFloat(preResult) * StrToFloat(recentNumber)) ;
        calView.Text := preResult + oper + recentNumber + '=' + result;
       end;

   end;

   if oper = '/' then
   begin
        {
        result := FloatToStr(StrToFloat(preResult) / StrToFloat(recentNumber)) ;
        calView.Text := preResult + oper + recentNumber + '=' + result;
         }

     if isSave = True then
        begin
        result :=  FloatToStr(StrToFloat(remainResult) / StrToFloat(recentNumber)) ;
        calView.Text := remainResult  + oper + recentNumber + '=' + result;

        end
       else begin
        result := FloatToStr(StrToFloat(preResult) / StrToFloat(recentNumber)) ;
        calView.Text := preResult + oper + recentNumber + '=' + result;
       end;

   end;
   txtResult.Text := result;
   preResult := result;



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

   isSave := true;
   txtResult.Text := '0';
   //isDoubleOper := False;

   //recentNumber := '0';
   remainResult := result;

    //ShowMessage(txtResult.Text);

    //alView.Text := result;
   // txtResult.Text := recentNumber;

    //recentNumber := preResult;
    //calView.Text := recentNumber + oper;
    //txtResult.Text := result;

    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);

end;


procedure TForm1.btnCClick(Sender: TObject);
begin
  txtResult.Text := '0';
  calView.Text := '';
 // result := '0';
//  preResult := '0';
//  recentNumber := '0';
  remainResult  := '0';
  isSave := False;          //isSave가 true이면 CE로 감.따라서 따로 설정해야
//ShowMessage(txtResult.Text);
   txtResult.SetFocus;
   txtResult.SelStart := Length(txtResult.Text);
end;



procedure TForm1.btnDotClick(Sender: TObject);
begin
 if (Pos('.',txtResult.Text)<> 0) then
    Exit
    else
    txtResult.Text := txtResult.Text + btnDot.Caption;
end;


{
procedure TForm1.txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key =  VK_NUMPAD0  then
  begin
    //ShowMessage('0');
    btn0Click(Sender);
  end
  else if Key =  VK_NUMPAD1  then
  begin
    //ShowMessage('1');
    btn1.Click;
    //btn1Click(Sender);

  end
  else if Key =  VK_NUMPAD2  then
  begin
    //ShowMessage('2');
    btn1Click(Sender);
  end
  else if Key =  VK_ADD  then
  begin
    //ShowMessage('+');
    btnPlus.Click;
    //btnPlusClick(Sender);
  end
  else if Key =  VK_RETURN  then
  begin

    btnEqualClick(Sender);
  end
  else if Key = VK_SUBTRACT then
  begin
    ShowMessage('-');
    btnSubClick(Sender); //빼기
  end;

end;
}

 {
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
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
}


procedure TForm1.txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  //ShowMessage('txtResultKeyDown');
  if Key = VK_RETURN then
  begin

    btnEqualClick(Sender);
    ShowMessage('enter');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //ShowMessage('277777');

     //btnEqual.Click;

  end

end;



procedure TForm1.txtResultKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = '0' then btn0Click(Sender)
  else if Key = '1' then begin
    btn1Click(Sender);
    txtResult.Text := Copy(txtResult.Text,2,1);
    end
  else if Key = '2' then begin
   btn2Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '3' then begin
   btn3Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '4' then begin
   btn4Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '5' then begin
   btn5Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '6' then begin
   btn6Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '7' then begin
   btn7Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '8' then begin
   btn8Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '9' then begin
   btn9Click(Sender);
   txtResult.Text := Copy(txtResult.Text,2,1);
   end
  else if Key = '+' then btnPlusClick(Sender)
  else if Key = '-' then btnSubClick(Sender)
  else if Key = '*' then btnMulClick(Sender)
  else if Key = '/' then btnDivClick(Sender)
 // else if Key = #27 then btnClearClick(Sender)      // ESC
  else if Key = #13 then btnEqualClick(Sender)      // Enter
  else if Key = '.' then btnDotClick(Sender)
  else if Key = #8 then btnBSClick(Sender);  // BackSpace
    Form1.SetFocusedControl(btnEqual);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  txtResult.Clear;
end;



end.




 {
procedure TForm1.txtResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  //ShowMessage('txtResultKeyDown');
  if Key = VK_RETURN then
  begin
    //ShowMessage('enter');
    //txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //ShowMessage('277777');
    btnEqualClick(Sender);
     //btnEqual.Click;

  end
  else if Key =  VK_ADD then
  begin
    //txtResult.SetFocus;
    //txtResult.SelStart := Length(txtResult.Text);
      btnPlusClick(Sender);
      txtResult.Text := '';
    end

  else if Key = VK_NUMPAD0 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD1 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //recentNumber := txtResult.Text;
    //txtResult :=
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD2 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);

  end
  else if Key = VK_NUMPAD3 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD4 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD5 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD6 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD7 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD8 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end
  else if Key = VK_NUMPAD9 then
  begin
    //ShowMessage('11');
    txtResult.SetFocus;
    txtResult.SelStart := Length(txtResult.Text);
    //btn1Click(Sender);
  end;

end;

}


 
{
procedure TForm1.txtResultKeyPress(Sender: TObject; var Key: Char);
//edit창에 '숫자, .',enter 만 입력되게 ( 나중에 연산자도 되도록 )
begin
  //ShowMessage('txtResultKeyPress');
  if not (Key in [#8,#13, '0'..'9', '-', DecimalSeparator]) then begin
    //ShowMessage('Invalid key: ' + Key);
    Key := #0;
  end
  else if ((Key = DecimalSeparator) or (Key = '-')) and
          (Pos(Key, txtResult.Text) > 0) then begin
    //ShowMessage('Invalid Key: twice ' + Key);
    Key := #0;
  end
  else if (Key = '-') and
          (txtResult.SelStart <> 0) then begin
    //ShowMessage('Only allowed at beginning of number: ' + Key);
    Key := #0;
  end;
end;

  }




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



