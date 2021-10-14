program CalculadoraDeParcelas;

uses
  Vcl.Forms,
  Unit5 in 'Unit5.pas' {Calculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalculadora, Calculadora);
  Application.Run;
end.
