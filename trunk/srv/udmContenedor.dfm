object AppServer: TAppServer
  OldCreateOrder = False
  DisplayName = 'AppSever'
  OnStart = ServiceStart
  Height = 271
  Width = 415
  object dssServidor: TDSServer
    AutoStart = True
    HideDSAdmin = False
    Left = 96
    Top = 11
  end
  object dstTransporte: TDSTCPServerTransport
    PoolSize = 0
    Server = dssServidor
    BufferKBSize = 32
    Filters = <>
    Left = 96
    Top = 73
  end
  object dscClase: TDSServerClass
    OnGetClass = dscClaseGetClass
    Server = dssServidor
    LifeCycle = 'Session'
    Left = 200
    Top = 11
  end
end
