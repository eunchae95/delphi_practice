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
    function do_CheckEnemyCollision(Enemy:TImage) : Boolean;  //적기와 부딪혔는지 확인
    function do_CheckMissileCollision:TImage; 
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function BoxIn(DataX,DataY,X1,Y1,X2,Y2 : Integer) : Boolean;
//박스안에 있는지 밖에 있는지
begin
  Result  :=
    ((DataX >= X1) and (DataX <= X2)) and
    ((DataY >= Y1) and (DataY <= Y2));
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
      DoubleBuffered := true; //이미지 잔상이 나타나지 않게

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

  if imgMissile.Visible = True then Exit; //미사일이 보이면 다시 위치조정을 하면 안된다

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
  Randomize;                   //적기가 랜덤으로 계속 생성
  if Round(Random(30)) = 4 then begin
    Enemy := TImage.Create(Self);
    Enemy.Picture.Bitmap.Assign(imgEnemy.Picture.Bitmap);
    //새로만든 이미지의 비트맵을 복사(assign)해오라
    //컴포넌트 동적 생성 - 미리 만들지 않고  코드에서 직접 만드는 방법
    Enemy.Top := 0;
    Enemy.Left := Round(Random(ClientWidth));
    Enemy.AutoSize := True;
    Enemy.Parent := Self; //Parent: 이 컴포넌트가 어디에 표시가 되는지.
    Enemy.Transparent := True;
    Enemy.Visible := True;
    Enemies.Add(Enemy);

  end;

  for Loop:=0 to Enemies.Count-1 do begin
    Enemy := TImage(Enemies.Items[Loop]);   //타입캐스팅
    Enemy.Top := Enemy.Top + 4;
    if do_CheckEnemyCollision(Enemy) = True then begin //적기를 만나면 타이머 중지되고 게임오버 메시지 출력
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
  if bCollision = True then begin     //부딪혔을 때만 결과값이 나온다
    Result := Enemy;
    Break;
  end;

end;
end;

procedure TForm1.tmMissileTimer(Sender: TObject);
var
  Enemy : TImage;
begin
  imgMissile.Top := imgMissile.Top-5;     //y좌표 계속 -1, 미사일이 계속 앞으로 나가는. 아직 멈추지는 않은 상태.
  imgMissile.Visible := (imgMissile.Top + imgMissile.Height) > 0 ;
  tmMissile.Enabled := imgMissile.Visible; //여기까지 하면 -> 스페이스바 누르면 다시 시작

  Enemy := do_CheckMissileCollision;
  if Enemy <> nil then begin //enemy가 부딪히면
    Enemies.Remove(Enemy); // Enemies의 객체 Enemy 제거
    Enemy.Free;     //객체 소멸
    imgMissile.Visible := false;
    tmMissile.Enabled := False;
  end;
  end;


end.
