object DataM: TDataM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 341
  Width = 645
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'D:\WORK\KOMUN\TARIF\TARIF.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 24
  end
  object IBDatabase2: TIBDatabase
    Connected = True
    DatabaseName = 'D:\WORK\KOMUN\tarif\GKP_NEW.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 128
    Top = 24
  end
end
