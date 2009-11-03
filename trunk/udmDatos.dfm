object dmDatos: TdmDatos
  OldCreateOrder = False
  Height = 574
  Width = 668
  object tmrPing: TTimer
    Interval = 100000
    OnTimer = tmrPingTimer
    Left = 128
    Top = 24
  end
  object smPing: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftBoolean
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = cntConexion
    ServerMethodName = 'TsmModulo.Ping'
    Left = 128
    Top = 72
  end
  object dspConexion: TDSProviderConnection
    ServerClassName = 'TsmModulo'
    SQLConnection = cntConexion
    Left = 48
    Top = 72
  end
  object cntConexion: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DataSnap'
      'ServerConnection=TsmModulo.GetConnection')
    Left = 48
    Top = 24
  end
end
