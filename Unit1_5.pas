unit Unit1_5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    imgMissile: TImage;
    imgAirCraft: TImage;
    tmMissile: TTimer;
    imgEnemy: TImage;
    tmEnemy: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmMissileTimer(Sender: TObject);
    procedure tmEnemyTimer(Sender: TObject);
  private
    { Private declarations }
    Enemies : TList;

    procedure do_Fire;
    function do_CheckEnemyCollision(Enemy:TImage) : Boolean;  //����� �ε������� Ȯ��
    function do_CheckMissileCollision:TImage; 
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function BoxIn(DataX,DataY,X1,Y1,X2,Y2 : Integer) : Boolean;
//�ڽ��ȿ� �ִ��� �ۿ� �ִ���
begin
  Result  :=
    ((DataX >= X1) and (DataX <= X2)) and
    ((DataY >= Y1) and (DataY <= Y2));
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
      DoubleBuffered := true; //�̹��� �ܻ��� ��Ÿ���� �ʰ�

      Enemies := TList.Create;
end;



procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_LEFT : imgAirCraft.Left := imgAirCraft.Left-10;
    VK_RIGHT : imgAirCraft.Left := imgAirCraft.Left+10;
    VK_SPACE : do_Fire;
  end;
end;

procedure TForm1.do_Fire;
begin

  if imgMissile.Visible = True then Exit; //�̻����� ���̸� �ٽ� ��ġ������ �ϸ� �ȵȴ�

  imgMissile.Top := imgAirCraft.Top - imgMissile.Height;
  imgMissile.Left := imgAirCraft.Left + (imgAirCraft.Width div 2) - (imgMissile.Width div 2);
  imgMissile.Visible := true;
  tmMissile.Enabled := true;
end;


procedure TForm1.tmEnemyTimer(Sender: TObject);
var
  Enemy : TImage;
  Loop : integer;
begin
  Randomize;                   //���Ⱑ �������� ��� ����
  if Round(Random(30)) = 4 then begin
    Enemy := TImage.Create(Self);
    Enemy.Picture.Bitmap.Assign(imgEnemy.Picture.Bitmap);
    //���θ��� �̹����� ��Ʈ���� ����(assign)�ؿ���
    //������Ʈ ���� ���� - �̸� ������ �ʰ�  �ڵ忡�� ���� ����� ���
    Enemy.Top := 0;
    Enemy.Left := Round(Random(ClientWidth));
    Enemy.AutoSize := True;
    Enemy.Parent := Self; //Parent: �� ������Ʈ�� ��� ǥ�ð� �Ǵ���.
    Enemy.Transparent := True;
    Enemy.Visible := True;
    Enemies.Add(Enemy);

  end;

  for Loop:=0 to Enemies.Count-1 do begin
    Enemy := TImage(Enemies.Items[Loop]);   //Ÿ��ĳ����
    Enemy.Top := Enemy.Top + 4;
    if do_CheckEnemyCollision(Enemy) = True then begin //���⸦ ������ Ÿ�̸� �����ǰ� ���ӿ��� �޽��� ���
      tmEnemy.Enabled := False;
      tmMissile.Enabled := false;
      ShowMessage('Game Over!');
    end;
  end;

end;

function TForm1.do_CheckEnemyCollision(Enemy: TImage): Boolean;
begin
  Result :=
    BoxIn(Enemy.Left, Enemy.Top, imgAirCraft.Left, imgAirCraft.Top,
    imgAirCraft.Left+imgAirCraft.Width,imgAirCraft.Top + imgAirCraft.Height);

    BoxIn(Enemy.Left+Enemy.Width,Enemy.Top,imgAirCraft.Left,imgAirCraft.Top,
    imgAirCraft.Left+imgAirCraft.Width,imgAirCraft.Top+imgAirCraft.Height);

end;

function TForm1.do_CheckMissileCollision: TImage;
var
  Loop : integer;
  Enemy : TImage;
  bCollision : Boolean;
begin
  Result := nil;
  for Loop :=0 to Enemies.Count-1 do begin
    Enemy := TImage(Enemies.Items[Loop]);
    bCollision :=
     BoxIn(imgMissile.Left, imgMissile.Top, Enemy.Left, Enemy.Top,
    Enemy.Left+Enemy.Width,Enemy.Top + Enemy.Height);

    BoxIn(imgMissile.Left+imgMissile.Width,imgMissile.Top,Enemy.Left,Enemy.Top,
    Enemy.Left+Enemy.Width,Enemy.Top+Enemy.Height);
  if bCollision = True then begin     //�ε����� ���� ������� ���´�
    Result := Enemy;
    Break;
  end;

end;
end;

procedure TForm1.tmMissileTimer(Sender: TObject);
var
  Enemy : TImage;
begin
  imgMissile.Top := imgMissile.Top-5;     //y��ǥ ��� -1, �̻����� ��� ������ ������. ���� �������� ���� ����.
  imgMissile.Visible := (imgMissile.Top + imgMissile.Height) > 0 ;
  tmMissile.Enabled := imgMissile.Visible; //������� �ϸ� -> �����̽��� ������ �ٽ� ����

  Enemy := do_CheckMissileCollision;
  if Enemy <> nil then begin //enemy�� �ε�����
    Enemies.Remove(Enemy); // Enemies�� ��ü Enemy ����
    Enemy.Free;     //��ü �Ҹ�
    imgMissile.Visible := false;
    tmMissile.Enabled := False;
  end;
  end;


end.
