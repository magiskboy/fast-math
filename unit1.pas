unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls, LResources, lclintf,INIFiles;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    close_window1: TLabel;
    close_window2: TLabel;
    D: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    en: TRadioButton;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    label20: TLabel;
    close_window: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    num1: TLabel;
    num2: TLabel;
    num3: TLabel;
    num4: TLabel;
    num5: TLabel;
    num6: TLabel;
    num7: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    ProgressBar1: TProgressBar;
    pt: TLabel;
    RadioGroup1: TRadioGroup;
    S: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    vn: TRadioButton;
    procedure close_window1Click(Sender: TObject);
    procedure close_windowClick(Sender: TObject);
    procedure DClick(Sender: TObject);
    procedure DMouseLeave(Sender: TObject);
    procedure DMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure enChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IdleTimer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure label20Click(Sender: TObject);
    procedure label20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2Click(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Label3Click(Sender: TObject);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Label4Click(Sender: TObject);
    procedure Label4MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Label5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Panel1Click(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );

    procedure Panel2Click(Sender: TObject);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Panel5Click(Sender: TObject);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Panel6Click(Sender: TObject);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel9MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure ProgressBar1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure SClick(Sender: TObject);
    procedure SMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Timer1StopTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2StartTimer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure vnChange(Sender: TObject);

  private
    procedure MoveAnimation(moveobj: TComponent; leftfrom: Integer;
      leftto: Integer; topfrom: Integer; topto: Integer);
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  stop: boolean=false;
  a,b,c,count: integer;
  ran_pt,ran_traloi,cautraloi,cau: integer;
  cl: boolean=false;
  thoigiantre,phvi: byte;
  mau: array[0..6] of TColor=($00B46A4B,$008DDE21,$00266DD9,$000DF224,$000600FF,$008F7070,$000F6F33);
  MouseIsDown: boolean;
  PX, PY: integer;
implementation

{$R *.lfm}

 procedure TForm1.MoveAnimation(moveobj: TComponent;
  leftfrom: Integer; leftto: Integer;
  topfrom: Integer; topto: Integer);
var
  i: Integer;
  step: Integer=3;
  moveareax, moveareay: integer;

begin
  i := 1;
  moveareax := leftto - leftfrom;
  moveareay := topto - topfrom;

  while i <= 100 do begin

    tbutton(moveobj).Left := round(leftfrom + (moveareax * i / 100));
    tbutton(moveobj).Top := round(topfrom + (moveareay * i / 100));
    Repaint;

    Sleep(1);

    // we exit the while...do loop when our work is done
    if i >= 100 then
      Exit;

    Inc(i, step);
    if (100 - i) < step then
      i := 100;

  end;

end;



{ TForm1 }

procedure TForm1.DMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  d.Color:=clred;
end;

procedure TForm1.enChange(Sender: TObject);
begin
  label1.caption:='New game';
  label2.caption:='Setting';
  label3.caption:='About';
  label4.caption:='Home';
  label5.caption:='Highcore';
  label6.caption:='Programmer';
  label7.caption:='Game';
  label8.caption:='Release Date';
  panel8.caption:='Save';
  label10.caption:='Fast Math';
  RadioGroup1.caption:='Language';
  label12.caption:='Scale value';
  label13.caption:='Time delay';
  label14.caption:='Add multiply and split';
  label15.caption:='Version';
  label17.caption:= 'Core';
  num7.caption:='Core';
  d.caption:='T';
  s.caption:='F';
  vn.caption:='Vietnamese';
  en.caption:='English';
  label20.caption:='Close';
end;

procedure TForm1.FormActivate(Sender: TObject);
var setting,user: TINIFile;
  core,ngay: string;
  img: TPicture;
begin
  panel2.canvas.Pen.Width:=5;
  panel2.Canvas.Rectangle(0,0,panel2.Width,panel2.Height);
  img:= TPicture.Create;
  img.LoadFromFile(getcurrentdir+'\bk.png');
  image1.Picture:=img;
  setting:= TINIFile.Create(getcurrentdir+'/setting.ini');
  phvi:=strtoint(setting.readstring('MAIN', 'phamvigiatri',''));
  thoigiantre:=strtoint(setting.readstring('MAIN', 'thoigiantre',''));
  if setting.readstring('MAIN', 'nhanchia', '')='true' then checkbox1.checked:=true
  else checkbox1.checked:=false;
  if setting.readstring('MAIN', 'ngonngu', '') ='vn' then vn.checked:=true
  else en.checked:=true;
  ProgressBar1.Max:=thoigiantre*100-30;
  user:= TINIFile.Create(getcurrentdir+'/user.ini');
  core:=user.readstring('MAIN', 'diem','');
  ngay:=user.readstring('MAIN', 'ngay','');
  label18.caption:=core;
  label19.caption:=ngay;
  d.Enabled:=false;
  s.Enabled:=false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   phvi:=10;
   thoigiantre:=6;
end;

procedure TForm1.IdleTimer1Timer(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then begin
    MouseIsDown := True;
    PX := X;
    PY := Y;
end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if MouseIsDown then begin
    SetBounds(Form1.Left + (X - PX), Form1.Top + (Y - PY), Form1.Width, Form1.Height);
  end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  MouseIsDown:=False;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  cau:=0;
  cl:=true;
  MoveAnimation(Panel2, 0, -panel2.width, 0, 0);
  timer2.Enabled:=true;
  timer1.enabled:=true;
  d.Enabled:=true;
  s.Enabled:=true;
end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label1.font.color:=clred;
end;

procedure TForm1.label20Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.label20MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label20.Font.Color:=clred;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  edit1.text:=inttostr(phvi);
  edit2.text:=inttostr(thoigiantre);
  if panel7.tag=1 then
  begin
  MoveAnimation(Panel7, 104, 600,176,176);
  panel7.tag:=0;
  end
  else
  begin
    MoveAnimation(Panel7, 600, 104,176,176);
    panel7.tag:=1;
  end;
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label2.font.color:=clred;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
  if label3.tag=0 then
  begin
  MoveAnimation(Panel3, 75, 75, -panel3.height, panel3.height+50);
  label3.tag:=1;
  end
  else
  begin
    MoveAnimation(Panel3, 75, 75,192, -192);
    label3.tag:=0;
  end;
end;

procedure TForm1.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label3.font.color:=clred;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
end;

procedure TForm1.Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label4.font.color:=clred;
end;

procedure TForm1.Label5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label5.font.color:=clred;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
  if timer2.tag=0 then
  begin
  if panel2.tag=1 then
  begin
  MoveAnimation(Panel2, 0, -152, 0, 0);
  panel2.tag:=0;
  end;
  if panel4.tag=1 then
  begin
    MoveAnimation(Panel4, 128, 128, panel4.height, -panel4.height);
    panel4.tag:=0;
  end;
  end;
end;

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  d.Color:=cllime;
  s.Color:=cllime;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
  if panel2.tag=0 then
  begin
  MoveAnimation(Panel2, -Panel2.Width, 0, 0, 0);
  panel2.tag:=1;
  end
  else
  if panel2.tag=1 then
  begin
  MoveAnimation(Panel2, 0, -152, 0, 0);
  panel2.tag:=0;
  end;
end;

procedure TForm1.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label1.font.color:=cllime;
  label2.font.color:=cllime;
  label3.font.color:=cllime;
  label4.font.color:=cllime;
  label5.font.color:=cllime;
  label20.Font.color:=cllime;
end;

procedure TForm1.Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  panel6.color:=$000080FF;
  panel5.color:=$000080FF;
  panel9.color:=$000080FF;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
  cau:=0;
  timer1.enabled:=true;
  MoveAnimation(Panel4, 120, 120, 176, -176);
  panel6.color:=$000080FF;
  panel5.color:=$000080FF;
  panel4.tag:=0;
  timer2.Enabled:=true;
end;

procedure TForm1.Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  panel5.color:=clred;
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  panel6.color:=clred;
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin

end;

procedure TForm1.Panel8Click(Sender: TObject);
var setting: TINIFile;
begin
  phvi:=strtoint(edit1.text);
  thoigiantre:=strtoint(edit2.Text);
  MoveAnimation(Panel7, 104, 600,176,176);
  ProgressBar1.max:=thoigiantre*100-30;
  panel7.Tag:=0;
  setting:= TINIFile.Create(getcurrentdir+'/setting.ini');
  setting.WriteString('MAIN', 'phamvigiatri', edit1.text);
  setting.WriteString('MAIN', 'thoigiantre', edit2.text);
  if checkbox1.checked then
  setting.WriteString('MAIN', 'nhanchia', 'true')
  else setting.WriteString('MAIN', 'nhanchia', 'false');
  if vn.checked then
  setting.WriteString('MAIN', 'ngonngu', 'vn')
  else setting.WriteString('MAIN', 'ngonngu', 'en');
end;

procedure TForm1.Panel9Click(Sender: TObject);
begin
  panel2.left:=-152;
  panel2.top:=0;
  cau:=0;
  MoveAnimation(Panel4, 128, 128, panel4.height, -panel4.height);
  timer2.tag:=0;
  panel4.tag:=0;
  d.Enabled:=false;
  s.Enabled:=false;
end;

procedure TForm1.Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  panel9.Color:=clred;
end;

procedure TForm1.ProgressBar1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TForm1.SClick(Sender: TObject);
var user: TINIFile;
  core,ngay: string;
begin
  if cautraloi=1 then
  begin
    cl:=true;
  inc(cau);
  count:=0;
  ProgressBar1.position:=0;
  Timer1.Enabled:=false;
  Timer1.Enabled:=true;
  end
  else  if cautraloi=0 then
  begin
  Timer1.Enabled:=false;
  num6.Caption:=inttostr(cau);
  MoveAnimation(Panel4, 128, 128, -panel4.height, panel4.height);
  panel4.tag:=1;
  Timer2.Enabled:=false;
  timer2.tag:=0;
  ProgressBar1.position:=0;
  count:=0;
  user:= TINIFile.Create(getcurrentdir+'/user.ini');
  core:=user.ReadString('MAIN','diem','');
  if strtoint(core)<cau then
  begin
  user.WriteString('MAIN', 'diem', inttostr(cau));
  user.WriteString('MAIN', 'ngay', datetostr(date));
  end;
  core:=user.ReadString('MAIN','diem','');
  ngay:=user.ReadString('MAIN','ngay','');
  label18.caption:=core;
  label19.caption:=ngay;
  end;
end;

procedure TForm1.SMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  s.color:=clred;
end;

procedure TForm1.Timer1StopTimer(Sender: TObject);
begin
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  begin
    if cl then
    begin
      num5.Caption:=inttostr(cau);
      cl:=false;
      panel1.Color:=mau[random(6)];
      randomize;
      a:=random(phvi);
      b:=random(phvi);
      num1.Caption:=inttostr(a);
      num2.Caption:=inttostr(b);
      randomize;
      if checkbox1.Checked=false then
      ran_pt:=2
      else ran_pt:=4;
      case random(ran_pt) of
      0: begin
        c:=a+b;
        randomize;
        ran_traloi:=random(2);
        pt.caption:='+';
        case ran_traloi of
        0: begin
          num3.Caption:=inttostr(c);
          cautraloi:=0;
        end;
        1: begin
          num3.Caption:=inttostr(c+random(5)+1);
          cautraloi:=1;
        end;
        end;
      end;
      1: begin
        c:=a-b;
        randomize;
        ran_traloi:=random(2);
        pt.caption:='-';
        case ran_traloi of
        0: begin
          num3.Caption:=inttostr(c);
          cautraloi:=0;
        end;
        1: begin
          num3.Caption:=inttostr(c+random(5)+1);
          cautraloi:=1;
        end;
        end;
      end;
      2: begin
         c:=a*b;
        randomize;
        ran_traloi:=random(2);
        pt.caption:='x';
        case ran_traloi of
        0: begin
          num3.Caption:=inttostr(c);
          cautraloi:=0;
        end;
        1: begin
          num3.Caption:=inttostr(c+random(5)+1);
          cautraloi:=1;
        end;
        end;
      end;
      3: begin
         c:=a*b;
         num1.Caption:=inttostr(c);
         num2.Caption:=inttostr(b);
        randomize;
        ran_traloi:=random(2);
        pt.caption:=':';
        case ran_traloi of
        0: begin
          num3.Caption:=inttostr(a);
          cautraloi:=0;
        end;
        1: begin
          num3.Caption:=inttostr(a+random(5)+1);
          cautraloi:=1;
        end;
        end;
      end;
    end;
    timer1.tag:=1;
    timer2.Enabled:=true;
    end;
      end;
end;
procedure TForm1.Timer2StartTimer(Sender: TObject);
begin
  timer1.enabled:=true;
  timer2.tag:=1;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var user: TINIFile;
  core,ngay: string;
begin
  if timer1.Tag=1 then   {neu timer1 xong moi dem thoi gian}
  begin
  inc(count);
  ProgressBar1.position:=count;
  end;
  if count>thoigiantre*100 then
    begin
    timer1.Tag:=0;
    count:=0;
    Timer1.Enabled:=false;
    num6.Caption:=inttostr(cau);
    MoveAnimation(Panel4, 120, 120, -176, 176);
    panel4.tag:=1;
    user:= TINIFile.Create(getcurrentdir+'/user.ini');
  core:=user.ReadString('MAIN','diem','');
  if strtoint(core)<cau then
  begin
  user.WriteString('MAIN', 'diem', inttostr(cau));
  user.WriteString('MAIN', 'ngay', datetostr(date));
  end;
  core:=user.ReadString('MAIN','diem','');
  ngay:=user.ReadString('MAIN','ngay','');
  label18.caption:=core;
  label19.caption:=ngay;
  d.Enabled:=false;
  s.Enabled:=false;
    timer2.Enabled:=false;
    end;
end;

procedure TForm1.vnChange(Sender: TObject);
begin
  label1.caption:='Chơi mới';
  label2.caption:='Cài đặt';
  label3.caption:='Thông tin';
  label4.caption:='Trang chủ';
  label5.caption:='Điểm cao';
  label6.caption:='Tác giả';
  label7.caption:='Tên trò chơi';
  label8.caption:='Ngày phát hành';
  panel8.caption:='Lưu';
  label10.caption:='Fast Math';
  RadioGroup1.caption:='Ngôn ngữ';
  label12.caption:='Phạm vi giá trị';
  label13.caption:='Thời gian trễ';
  label14.caption:='Thêm phép nhân và chia';
  label15.caption:='Phiên bản';
  label17.caption:= 'Số điểm bạn đạt được';
  num7.caption:='Điểm';
  d.caption:='Đ';
  s.caption:='S';
  vn.caption:='Tiếng Việt';
  en.caption:='Tiếng Anh';
  label20.caption:='Thoát';
end;

procedure TForm1.DMouseLeave(Sender: TObject);
begin

end;

procedure TForm1.DClick(Sender: TObject);
var user: TINIFile;
  core,ngay: string;
begin
  if cautraloi=0 then     {neu kq ngau nhien cho dung thi chon D la dung}
  begin
  cl:=true;
  inc(cau);         {tang so diem}
  count:=0;          {bien thoi gian ve 0}
  Timer1.Enabled:=false;  {khoi dong lai timer1 de sang cau tiep theo}
  Timer1.Enabled:=true;
  end
  else if cautraloi=1 then  {neu kq ngau nhien cho sai thi chon D la dung}
  begin
  Timer1.Enabled:=false;     {dung timer1}
  num6.Caption:=inttostr(cau);     {tao diem cho panel game over}
  MoveAnimation(Panel4, 128, 128, -panel4.height, panel4.height);  {lam xuat hien game over}
  panel4.tag:=1;
  Timer2.Enabled:=false;
  timer2.tag:=0;{ngung kich hoat timer2}
  count:=0;
  ProgressBar1.position:=0;
  user:= TINIFile.Create(getcurrentdir+'/user.ini');   {kiem tra diem co}
  core:=user.ReadString('MAIN','diem','');
  if strtoint(core)<cau then
  begin
  user.WriteString('MAIN', 'diem', inttostr(cau));
  user.WriteString('MAIN', 'ngay', datetostr(date));
  end;
  core:=user.ReadString('MAIN','diem','');
  ngay:=user.ReadString('MAIN','ngay','');
  label18.caption:=core;
  label19.caption:=ngay;
  end;
end;

procedure TForm1.close_windowClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.close_window1Click(Sender: TObject);
begin
  WindowState:=wsMinimized;
end;

end.

