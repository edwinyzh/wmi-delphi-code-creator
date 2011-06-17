//--------------------------------------------------------------------------------------------------
//     This code was generated by the Wmi Delphi Code Creator http://theroadtodelphi.wordpress.com
//     Version: [VERSIONAPP] 
//
//
//
//     LIABILITY DISCLAIMER
//     THIS GENERATED CODE IS DISTRIBUTED "AS IS". NO WARRANTY OF ANY KIND IS EXPRESSED OR IMPLIED.
//     YOU USE IT AT YOUR OWN RISK. THE AUTHOR NOT WILL BE LIABLE FOR DATA LOSS,
//     DAMAGES AND LOSS OF PROFITS OR ANY OTHER KIND OF LOSS WHILE USING OR MISUSING THIS CODE.
//
//
//-------------------------------------------------------------------------------------------------
program GetWMI_Info;

{$mode objfpc} {$H+}

uses
  SysUtils,
  ActiveX,
  ComObj;
  
[HELPER_FUNCTIONS]

[WMIMETHODDESC]
procedure  Invoke_[WMICLASSNAME]_[WMIMETHOD];
const
  WbemUser            ='';
  WbemPassword        ='';
  WbemComputer        ='localhost';
var
  FSWbemLocator   : OLEVariant;
  FWMIService     : OLEVariant;
  FWbemObjectSet  : OLEVariant;
  FInParams       : OLEVariant;
  FOutParams      : OLEVariant;
  sValue          : string;
begin
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer(WbemPassword, '[WMINAMESPACE]', WbemUser, WbemPassword);
  FWbemObjectSet:= FWMIService.Get('[WMICLASSNAME]');
  FInParams     := FWbemObjectSet.Methods_.Item('[WMIMETHOD]').InParameters.SpawnInstance_();  
[DELPHICODEINPARAMS]  
  FOutParams    := FWMIService.ExecMethod('[WMICLASSNAME]', '[WMIMETHOD]', FInParams);
[DELPHICODEOUTPARAMS]  
end;


begin
 try
    Invoke_[WMICLASSNAME]_[WMIMETHOD];
 except
    on E:Exception do
        Writeln(E.Classname, ':', E.Message);
  end;
 Writeln('Press Enter to exit');
 Readln;      
end.