program tpv;

uses
  Forms,
  ufrmMenu in 'ufrmMenu.pas' {frmMenu},
  ufrmDBListado in 'compartidos\ufrmDBListado.pas' {frmDBListado},
  udmDatos in 'udmDatos.pas' {dmDatos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatos, dmDatos);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
