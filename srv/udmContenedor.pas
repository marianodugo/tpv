unit udmContenedor;

interface

uses
  SysUtils, Classes, 
  SvcMgr, 
  DSTCPServerTransport,
  DSServer, DSCommonServer; 

type
  TAppServer = class(TService)
    dssServidor: TDSServer;
    dstTransporte: TDSTCPServerTransport;
    dscClase: TDSServerClass;
    procedure dscClaseGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    { Private declarations }
  protected
    function DoStop: Boolean; override;
    function DoPause: Boolean; override;
    function DoContinue: Boolean; override;
    procedure DoInterrogate; override;
  public
    function GetServiceController: TServiceController; override;
  end;

var
  AppServer: TAppServer;

implementation

uses Windows, usmModulo;

{$R *.dfm}

procedure TAppServer.dscClaseGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TsmModulo;
end;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  AppServer.Controller(CtrlCode);
end;

function TAppServer.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

function TAppServer.DoContinue: Boolean;
begin
  Result := inherited;
  dssServidor.Start;
end;

procedure TAppServer.DoInterrogate;
begin
  inherited;
end;

function TAppServer.DoPause: Boolean;
begin
  dssServidor.Stop;
  Result := inherited;
end;

function TAppServer.DoStop: Boolean;
begin
  dssServidor.Stop;
  Result := inherited;
end;

procedure TAppServer.ServiceStart(Sender: TService; var Started: Boolean);
begin
  dssServidor.Start;
end;
end.




