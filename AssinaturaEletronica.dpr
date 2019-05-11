program AssinaturaEletronica;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmPrincipalAssinaturaEletronica in 'uFrmPrincipalAssinaturaEletronica.pas' {Form1},
  uFrmAssinaturaEletronica in 'uFrmAssinaturaEletronica.pas' {FrmAssinaturaEletronica};

{$R *.res}

begin
  Application.Initialize;
  Application.Run;
end.
