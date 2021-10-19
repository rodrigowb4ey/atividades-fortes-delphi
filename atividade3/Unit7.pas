unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFizzBuzz = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FizzBuzz: TFizzBuzz;

implementation

{$R *.dfm}

procedure TFizzBuzz.Button1Click(Sender: TObject);
var
  Numero, I, Fizz, Buzz, FizzBuzz: Integer;

begin
  Memo1.Clear;
  Numero := StrToInt(Edit1.Text);

  if Numero = 0 then
    begin
      ShowMessage('0 não é um valor permitido!');
      exit;
    end;

  Fizz := 0;
  Buzz := 0;
  FizzBuzz := 0;

  for I := 1 to Numero do
  begin
    if (I mod 3 = 0) and (I mod 5 = 0) then
    begin
      Memo1.Lines.Add(IntToStr(I) + ' (FIZZBUZZ)');
      FizzBuzz := FizzBuzz + 1;
    end

      else if (I mod 3 = 0) then
      begin
        Memo1.Lines.Add(IntToStr(I) + ' (FIZZ)');
        Fizz := Fizz + 1;
      end

        else if (I mod 5 = 0) then
        begin
          Memo1.Lines.Add(IntToStr(I) + ' (BUZZ)');
          Buzz := Buzz + 1;
        end

          else
          begin
            Memo1.Lines.Add(IntToStr(I));
          end;
  end;

  Edit2.Text := IntToStr(Fizz);
  Edit3.Text := IntToStr(Buzz);
  Edit4.Text := IntToStr(FizzBuzz);

end;

end.
