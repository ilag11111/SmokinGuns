; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Smokin' Guns
AppVerName=Smokin' Guns 1.0
AppPublisher=Smokin' Guns Productions
AppPublisherURL=http://www.smokin-guns.net
AppSupportURL=http://www.smokin-guns.net
AppUpdatesURL=http://www.smokin-guns.net
DefaultDirName={pf}\Smokin' Guns
DefaultGroupName=Smokin' Guns
OutputBaseFilename=Smokin' Guns 1.0 Setup
Compression=lzma
;Compression=none
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "C:\SG_installer\Smokin' Guns\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: "{app}\smokinguns.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.smokin-guns.net"

[Icons]
Name: "{group}\Smokin' Guns"; Filename: "{app}\smokinguns.exe"
Name: "{group}\Smokin' Guns Manual"; Filename: "{app}\smokinguns\manual\index.html"
Name: "{group}\{cm:ProgramOnTheWeb,Smokin' Guns}"; Filename: "{app}\smokinguns.url"
Name: "{group}\{cm:UninstallProgram,Smokin' Guns}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Smokin' Guns"; Filename: "{app}\smokinguns.exe"; Tasks: desktopicon

[Registry]
Root: HKCU; Subkey: "Software\Smokin' Guns Productions"; Flags: uninsdeletekeyifempty
Root: HKCU; Subkey: "Software\Smokin' Guns Productions\Smokin' Guns"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Smokin' Guns Productions"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\Smokin' Guns Productions\Smokin' Guns"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Smokin' Guns Productions\Smokin' Guns"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"

[Run]
;Filename: "{app}\smokinguns.exe"; Description: "{cm:LaunchProgram,Smokin' Guns}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\smokinguns.url"
