; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "DiscordRPC"
#define MyAppVersion "1.0"
#define MyAppPublisher "#PigPizza"
#define MyAppURL "https://github.com/orangemelo/DiscordRPC"
#define MyAppExeName "DiscordRPCApp.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8F6A4476-A765-4A3D-B9F8-6181011798CA}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\Administer\Desktop\CutomRPC\LICENSE
InfoBeforeFile=C:\Users\Administer\Desktop\CutomRPC\Setup Info.txt
InfoAfterFile=C:\Users\Administer\Desktop\CutomRPC\Setup Info.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=DiscordRPC
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Administer\Desktop\CutomRPC\output\DiscordRPCApp\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Administer\Desktop\CutomRPC\output\DiscordRPCApp\LoadIcon.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Administer\Desktop\CutomRPC\output\DiscordRPCApp\SaveIcon.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Administer\Desktop\CutomRPC\output\DiscordRPCApp\SettingsIcon.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Administer\Desktop\CutomRPC\output\DiscordRPCApp\_internal\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Administer\Desktop\CutomRPC\output\DiscordRPCApp\settings_folder\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

