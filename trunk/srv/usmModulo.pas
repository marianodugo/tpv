unit usmModulo;

interface

uses
  SysUtils, Classes, DBXCommon, DSServer, WideStrings, DBXOracle, DB, SqlExpr, DBXFirebird;

type
  TsmModulo = class(TDSServerModule)
    cntConexion: TSQLConnection;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Ping: Boolean;
    function GetConnection: TDBXConnection;
  end;

var
  smModulo: TsmModulo;

implementation

{$R *.dfm}

procedure TsmModulo.DSServerModuleCreate(Sender: TObject);
begin
  cntConexion.Params.Values['Database']:= ExtractFilePath(ParamStr(0)) + 'bd.fdb';
end;

function TsmModulo.Ping: Boolean;
begin
  Exit(true);
end;

function TsmModulo.GetConnection: TDBXConnection;
begin
  cntConexion.Open;
  Exit(cntConexion.DBXConnection)
end;

end.




