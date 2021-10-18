program Project7;

uses
  Vcl.Forms,
  Unit7 in 'Unit7.pas' {FizzBuzz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFizzBuzz, FizzBuzz);
  Application.Run;
end.
