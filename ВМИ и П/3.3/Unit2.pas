unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    Edit1.Visible:=true;
    Label1.Visible:=true;
  end
  else
  begin
    Edit1.Visible:=false;
    Label1.Visible:=false;
  end;
end;
procedure TForm2.FormCreate(Sender: TObject);
begin
  if Check=True then
    CheckBox1.Checked:=true else CheckBox1.Checked:=false;
  Edit1.Text:=IntToStr(Time);
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  Ini.WriteBool('Options', 'Check', CheckBox1.Checked);
  Ini.WriteInteger('Options','Time', StrToInt(Edit1.Text));
end;

end.
