unit Unit1_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, AppEvnts, ExtCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    bt1: TButton;
    bt2: TButton;
    bt3: TButton;
    bt4: TButton;
    bt5: TButton;
    ed1: TEdit;
    bt6: TButton;
    medt1: TMaskEdit;
    bbt1: TBitBtn;
    sgd1: TStringGrid;
    bbt2: TBitBtn;
    bvl1: TBevel;
    lb1: TLabel;
    apevent1: TApplicationEvents;
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure ed1KeyPress(Sender: TObject; var Key: Char);
    procedure bt6Click(Sender: TObject);
    procedure bbt1Click(Sender: TObject);
    procedure bbt2Click(Sender: TObject);
    procedure apevent1Activate(Sender: TObject);
    procedure apevent1Deactivate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bt1Click(Sender: TObject);
begin
mmo1.Lines.Clear;
end;

procedure TForm1.bt2Click(Sender: TObject);
begin
mmo1.Lines.Add('XXXXXX');
end;

procedure TForm1.bt3Click(Sender: TObject);
begin
mmo1.Lines.Delete(0);
end;

procedure TForm1.bt4Click(Sender: TObject);
begin
mmo1.Lines.SaveToFile('C:\a.txt');
end;



procedure TForm1.ed1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then begin
   Key:= #0;
   mmo1.Lines.Values['Text'] := ed1.Text;
 end;
end;

procedure TForm1.bt6Click(Sender: TObject);
var Loop:integer;
begin
  for Loop:=0 to mmo1.Lines.Count-1 do
    ShowMessage(mmo1.Lines.Names[Loop]); // Names, Values 에 따라 읽는 값이 다르다


end;

procedure TForm1.bbt1Click(Sender: TObject);
begin
ShowMessage(medt1.Text);
end;

procedure TForm1.bbt2Click(Sender: TObject);
begin
 sgd1.Cells[1,1] :='aaaaa';
end;

procedure TForm1.apevent1Activate(Sender: TObject);
begin
   Caption := 'Hi';
end;

procedure TForm1.apevent1Deactivate(Sender: TObject);
begin
Caption := 'Bye';
end;

end.
