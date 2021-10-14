unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
  LadoX, LadoY, LadoZ: Integer;
  TipoTriangulo: String;

begin
  LadoX := StrToInt(Edit1.Text);
  LadoY := StrToInt(Edit2.Text);
  LadoZ := StrToInt(Edit3.Text);

  if (LadoX <= 0) or (LadoY <= 0) or (LadoZ <= 0) then
    begin
      ShowMessage('Não é possível introduzir valores nulos ou negativos');
      Edit4.Clear;
      exit;
    end;

  if not ((LadoX < LadoY + LadoZ) and (LadoY < LadoX + LadoZ) and (LadoZ < LadoX + LadoY)) then
    begin
      ShowMessage('Os valores informados não formam um triângulo válido');
      Edit4.Clear;
      exit;
    end;


  if (LadoX = LadoY) and (LadoY = LadoZ) then
    begin
      TipoTriangulo := 'Equilátero';
    end

    else if (LadoX <> LadoY) and (LadoX <> LadoZ) and (LadoY <> LadoZ) then
        begin
          TipoTriangulo := 'Escaleno';
        end

        else
          begin
            TipoTriangulo := 'Isósceles';
          end;

    Edit4.Text := TipoTriangulo;


end;

end.
