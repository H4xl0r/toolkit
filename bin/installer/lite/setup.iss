; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Indetectables Toolkit Lite"
#define MyAppVersion "2023.1.1"
#define MyAppPublisher "Indetectables"
#define MyAppURL "https://www.indetectables.net/"
#define MyAppToolsFolder "{app}\toolkit"
#define MyAppBinsFolder "{app}\bin"
#define MyAppToolsIconsFolder "{app}\assets\icons"
#define MySrcDir "C:\Users\DSR\Documents\GitHub\toolkit"
#define MyOutputDir "C:\Users\DSR\Documents\GitHub"

[Setup]
AppId={{1FF89DD9-2D8E-4959-B670-2344285F456B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppVerName={#MyAppName} - {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
PrivilegesRequired=admin
;PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=Toolkit_{#MyAppVersion}_Setup_lite
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64
SetupIconFile="{#MySrcDir}\assets\icons\toolkit.ico"
UninstallDisplayIcon="{#MyAppToolsIconsFolder}\toolkit.ico"
OutputDir={#MyOutputDir}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Components]
Name: "analysis"; Description: "Analysis tools"; Types: full;
#include "sections\analysis.iss"

[Components]
Name: "decompilers"; Description: "Decompilers"; Types: full;
#include "sections\decompilers.iss"

[Components]
Name: "dissasembler"; Description: "Dissasembler"; Types: full;
#include "sections\dissasembler.iss"

[Components]
Name: "hexeditor"; Description: "Hex editors"; Types: full;
#include "sections\hex-editor.iss"

[Components]
Name: "monitor"; Description: "Monitor tools"; Types: full;
#include "sections\monitor.iss"

[Components]
Name: "other"; Description: "Other tools"; Types: full;
#include "sections\other.iss"

[Components]
Name: "patcher"; Description: "Patcher"; Types: full;
#include "sections\patcher.iss"

[Components]
Name: "unpacking"; Description: "UnPacking"; Types: full;
#include "sections\unpacking.iss"

[Components]
Name: "updater"; Description: "Tools auto updater"; Types: full;
#include "sections\updater.iss"

[Components]
Name: "extras"; Description: "Extras"; Types: full;
#include "sections\extras.iss"


;;;;;;;;;;;;;;;;;;;;;;;;
; Misc
;;;;;;;;;;;;;;;;;;;;;;;;

; Add docs
[Files]
Source: "{#MySrcDir}\*.md"; Destdir: "{app}";
Source: "{#MySrcDir}\*.html"; Destdir: "{app}";


; Assets
[Files]
Source: "{#MySrcDir}\assets\icons\*"; Destdir: "{app}\assets\icons\";


; Shortcut to program's folder
[Icons]
Name: "{userdesktop}\{#MyAppName}\Explore all tools"; Filename: "{#MyAppToolsFolder}"
Name: "{group}\{#MyAppName}\Explore all tools"; Filename: "{#MyAppToolsFolder}";


; SendTo+
[Files]
Source: "{#MySrcDir}\bin\sendto\*"; Destdir: "{#MyAppBinsFolder}\sendto\";

[Icons]
; x64
Name: "{userdesktop}\{#MyAppName}\Menu"; Filename: "{#MyAppBinsFolder}\sendto\sendto_x64.exe"; WorkingDir: "{#MyAppBinsFolder}\sendto\"; IconFilename: "{#MyAppToolsIconsFolder}\toolkit.ico"; Check: Is64BitInstallMode

; x32
Name: "{userdesktop}\{#MyAppName}\Menu"; Filename: "{#MyAppBinsFolder}\sendto\sendto_x86.exe"; WorkingDir: "{#MyAppBinsFolder}\sendto\"; IconFilename: "{#MyAppToolsIconsFolder}\toolkit.ico"; Check: not Is64BitInstallMode


; Force delete all files
[UninstallDelete]
Type: filesandordirs; Name: "{#MyAppToolsFolder}"
Type: filesandordirs; Name: "{#MyAppBinsFolder}"


; Cli programs register/unregister
#include "sections\cli.iss"
