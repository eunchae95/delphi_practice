unit Unit1_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB;

type
  TForm1 = class(TForm)
    switch1: TButton;
    OnOff: TLabel;
    edtA: TEdit;
    edtB: TEdit;
    btnMax: TButton;
    lblMax: TLabel;
    edtC: TEdit;
    edtD: TEdit;
    btnMod: TButton;
    lblMod: TLabel;
    edtE: TEdit;
    edtF: TEdit;
    btnResult1: TButton;
    lbledtE: TLabel;
    lbledtF: TLabel;
    edtG: TEdit;
    btnSum: TButton;
    lblSum: TLabel;
    mmo1: TMemo;
    lblMemo: TLabel;
    btnMemo: TButton;
    edtH: TEdit;
    edtI: TEdit;
    edtPred: TEdit;
    BtnRandom: TButton;
    lblRandom: TLabel;
    lblCom: TLabel;
    mmo2: TMemo;
    btnGugudan: TButton;
    qry1: TQuery;
    tbl1: TTable;
    procedure switch1Click(Sender: TObject);
    procedure btnMaxClick(Sender: TObject);
    procedure btnModClick(Sender: TObject);
    procedure btnResult1Click(Sender: TObject);
    procedure btnSumClick(Sender: TObject);
    procedure mmo1Change(Sender: TObject);
    procedure btnMemoClick(Sender: TObject);
    procedure BtnRandomClick(Sender: TObject);
    procedure btnGugudanClick(Sender: TObject);
   // procedure mmo2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.switch1Click(Sender: TObject);

begin
  OnOff.Visible := True;
  OnOff.Caption := 'ON';

end;


procedure TForm1.btnMaxClick(Sender: TObject);
var a,b,m : Integer;
begin
  a:= StrToInt(edtA.Text);
  b:= StrToInt(edtB.Text);
  if a>b then
    m :=a
  else
    m:=b;
  lblMax.Caption := IntToStr(m);


end;

procedure TForm1.btnModClick(Sender: TObject);
var m,n,Result : Integer;
begin
  m := StrToInt(edtC.Text);
  n := StrToInt(edtD.Text);
  Result := n div m;

  if n mod m = 0 then

    lblMod.Caption :=IntToStr(Result)

  else
    lblMod.Caption := 'n은 m으로 나눌 수 없습니다';

end;

procedure TForm1.btnResult1Click(Sender: TObject);
var X,Y,Res1,Res2 : Single;
begin
  X := StrToFloat(edtE.Text);
  Y := StrToFloat(edtF.Text);
   Res1 := (X+Y)/2;
   Res2 := 3 * Y;

  if X<Y then
    lbledtE.Caption := FloatToStr(Res1)
  else
    lbledtF.Caption := FloatToStr(Res2);

end;

procedure TForm1.btnSumClick(Sender: TObject);
var x,N,Sum : Integer;
begin
    Sum :=0;
    N := StrToInt(edtG.Text);
    for x:= 1 to N do
    Sum := Sum + x;
    lblSum.Caption  := IntToStr(Sum);


end;

procedure TForm1.mmo1Change(Sender: TObject);
var
  s: String;
begin
  s := mmo1.Lines[2];
  lblMemo.Caption := s;

end;

procedure TForm1.btnMemoClick(Sender: TObject);
var
  //s:String;
  k,i: Integer;
begin
  k:= mmo1.Lines.Count;
  for i:=k-1 downto 1 Do
    if(i mod 2) <> 0 then
      mmo1.Lines.Delete(i);
//  s := mmo1.Lines[2];
//  lblMemo.Caption := s;




end;

procedure TForm1.BtnRandomClick(Sender: TObject);
var
  x,y,Pred,R :Integer;
begin
  x := StrToInt(edtH.Text);
  y := StrToInt(edtI.Text);
  Pred := StrToInt(edtPred.Text);
  R := (Random(y-x+1) + x);
  lblCom.Caption := IntToStr(R);

  if Pred = R then
    lblRandom.Caption := '예측이 맞습니다'
  else
    if Pred > R then
      lblRandom.Caption := 'UP'
    else
      lblRandom.Caption := 'DOWN';


end;

//procedure TForm1.mmo2Change(Sender: TObject);
//var i,j : Integer;
//begin
//  for i:=2 to 9 do begin
//    for j :=1 to 9 do
//      mmo2.Lines.Add(i,'x',j, '=', i*j);
//
//  end;
//
//end;

procedure TForm1.btnGugudanClick(Sender: TObject);
var i,j : Integer;
begin
  for i:= 2 to 9 do begin
   for j := 1 to 9 do
      mmo2.Lines.Add(IntToStr(i*j));
  end;

end;

end.
