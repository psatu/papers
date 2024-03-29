unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, ComCtrls, XPMan, IniFiles;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  check: boolean;
  time: integer;
  f: textfile;
  n,k: string;
  Ini: TIniFile;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  getdir(0,k);
  Ini:=TIniFile.Create(k+'\config.ini');
  Check:=Ini.ReadBool('Options','Check',True);
  Time:=Ini.ReadInteger('Options','Time', 1);
  if Check=true then
    begin
      Timer1.Interval:=Time*1000*60;
      Timer1.Enabled:=true;
    end;
  OpenDialog1.InitialDir:=k;
  SaveDialog1.InitialDir:=k;
  n:=k+'\temp.bak';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(n);
  StatusBar1.Panels[0].Text:='��������� ����� '+n+' ���������';
  Timer1.Enabled:=true;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  n:=OpenDialog1.FileName+'.bak';
end;

procedure TForm1.N5Click(Sender: TObject);
begin
//�� �������� ����� ����� ���� �������� (��� ��������)
//���� ���-�� ������� ��� ����� �� Memo1
  if (OpenDialog1.FileName<>'') then
    Memo1.Lines.SaveToFile(OpenDialog1.FileName) else
      if SaveDialog1.Execute then
        Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
  n:=SaveDialog1.FileName+'.bak';
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Application.Terminate;
end;

end.

