unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCalculadora = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Parcelas: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.dfm}

procedure TCalculadora.Button1Click(Sender: TObject);
var
  Val1, Val2, ValorParcial, ParcelaRestante, R, ParcelaArredondada: Double;
  Teste: Currency;
  Result: String;

begin
  Val1 := StrToFloat(Edit1.Text);
  Val2 := StrToInt(Edit2.Text);

  if (Val1 <= 0) or (Val2 <= 0) then
    begin
      ShowMessage('Nenhum dos campos pode ser negativo ou nulo!');
      Parcelas.Clear;
      exit;
    end;

  R := Val1 / Val2;
  ParcelaArredondada := Round(R);

  if (Val2 > Val1) then
    begin
      ShowMessage('O valor total não pode ser menor que o número de parcelas!');
      Parcelas.Clear;
      exit;
    end;


  if (ParcelaArredondada * (Val2 - 1) >= Val1) then
    begin
      ParcelaArredondada:= Round(R) - 1;
    end;


  if (ParcelaArredondada * Val2 <> Val1) then
    begin
      ValorParcial := (ParcelaArredondada * (Val2 - 1));
      ParcelaRestante := Val1 - ValorParcial;
      Result := FloatToStr(Val2 - 1) + ' parcela(s) de R$ ' + FloatToStr(ParcelaArredondada) + ' e 1 parcela de R$ ' + FloatToStr(ParcelaRestante);

      Parcelas.Text := Result;
    end

      else if (ParcelaArredondada * Val2 = Val1) then
        begin
          Result := FloatToStr(Val2) + ' parcela(s) de R$ ' + FloatToStr(R);
          Parcelas.Text := Result;
        end;


end;

end.
