unit udmDatos;

interface

uses
  SysUtils, Classes, WideStrings, ExtCtrls, DB, SqlExpr, FMTBcd, DbxDatasnap,
  DBClient, DSConnect;

type
  TdmDatos = class(TDataModule)
    tmrPing: TTimer;
    smPing: TSqlServerMethod;
    dspConexion: TDSProviderConnection;
    cntConexion: TSQLConnection;
    procedure tmrPingTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDatos: TdmDatos;

implementation

{$R *.dfm}

procedure TdmDatos.tmrPingTimer(Sender: TObject);
begin
  smPing.ExecuteMethod;
end;

end.
