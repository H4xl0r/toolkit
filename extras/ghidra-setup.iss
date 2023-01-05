; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Indetectables Toolkit Extras: Ghidra"
#define MyAppNameOriginal "Indetectables Toolkit"
#define MyAppVersion "2023.1.1"
#define MyAppPublisher "Indetectables"
#define MyAppURL "https://www.indetectables.net/"
#define MyAppToolsFolder "{app}\toolkit"
#define MyAppBinsFolder "{app}\bin"
#define MyAppToolsIconsFolder "{app}\assets\icons"
#define MySrcDir "C:\Users\DSR\Documents\GitHub\toolkit"
#define MyOutputDir "C:\Users\DSR\Documents\GitHub"

[Setup]
AppId={{3F02E24E-404C-415F-A360-C52C612E5127}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppVerName={#MyAppName} - {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppNameOriginal}
DefaultGroupName={#MyAppNameOriginal}
PrivilegesRequired=admin
;PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=Toolkit_{#MyAppVersion}_Extras_Ghidra
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64
SetupIconFile="{#MySrcDir}\extras\icon.ico"
OutputDir={#MyOutputDir}
Uninstallable=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"



[Components]
Name: "ghidra"; Description: "Install Ghidra via Updater"; ExtraDiskSpaceRequired: 996147200; Types: full compact custom; Flags: fixed;



[Components]
Name: "updater"; Description: "Tools auto updater"; Types: full compact custom; Flags: fixed;

; Updater
[Components]
Name: "updater\main"; Description: "Updater"; Types: full compact custom; Flags: fixed;

[Files]
Source: "{#MySrcDir}\bin\updater\*"; DestDir: "{#MyAppBinsFolder}\updater"; Components: "updater\main"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "{#MySrcDir}\bin\auto-config-tools\*"; DestDir: "{#MyAppBinsFolder}\auto-config-tools"; Components: "updater\main"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "{#MySrcDir}\bin\hstart\*"; Destdir: "{#MyAppBinsFolder}\hstart\"; Components: "updater\main"; Flags: ignoreversion recursesubdirs createallsubdirs;

[Icons]
Name: "{group}\{#MyAppNameOriginal}\Toolkit Updater"; Filename: "{#MyAppBinsFolder}\updater\updater.exe"; WorkingDir: "{#MyAppBinsFolder}\updater"; Components: "updater\main";
Name: "{userdesktop}\{#MyAppNameOriginal}\Toolkit Updater"; Filename: "{#MyAppBinsFolder}\updater\updater.exe"; WorkingDir: "{#MyAppBinsFolder}\updater"; Components: "updater\main";

; Fix default update config
[INI]
Filename: {#MyAppBinsFolder}\updater\tools.ini; Section: UpdaterConfig; Key: disable_clean; String: True; Components: "updater\main"; 
Filename: {#MyAppBinsFolder}\updater\tools.ini; Section: UpdaterConfig; Key: disable_repack; String: True; Components: "updater\main"; 



[Components]
Name: "extras"; Description: "Extras"; Types: full compact custom;

; Install Choco
[Components]
Name: "extras\choco"; Description: "Install Chocolatey package manager"; ExtraDiskSpaceRequired: 16777216; Types: full compact custom; 

[Files]
Source: "{#MySrcDir}\bin\choco\*"; DestDir: "{#MyAppBinsFolder}\choco"; Components: "extras\choco"; Flags: ignoreversion recursesubdirs createallsubdirs;

[Run]
Filename: "{#MyAppBinsFolder}\choco\installChocolatey.cmd"; Components: "extras\choco or extras\javajdk"; Flags: shellexec waituntilterminated;

; Install Java JDK (for Ghidra!)
[Components]
Name: "extras\javajdk"; Description: "Install Java Temurin JDK 17+ (via Chocolatey)"; ExtraDiskSpaceRequired: 315621376; Types: full compact custom; 

[Run]
Filename: "{sd}\ProgramData\chocolatey\bin\choco.exe"; Parameters: "install -y temurin"; Components: "extras\javajdk"; Flags: shellexec waituntilterminated;



;;; etc
[Run]
Filename: "{#MyAppBinsFolder}\updater\updater.exe"; Parameters: "-f -u Ghidra -dic"; Flags: shellexec waituntilterminated;

; Clean dont selected tools in tools.ini
Filename: "{#MyAppBinsFolder}\auto-config-tools\auto-config-tools.exe"; Parameters: "/FOLDER={#MyAppBinsFolder}\updater"; Flags: runhidden;


[Icons]
Name: "{group}\{#MyAppNameOriginal}\Ghidra"; Filename: "{#MyAppToolsFolder}\Dissasembler\Ghidra\ghidraRun.bat"; WorkingDir: "{#MyAppToolsFolder}\Dissasembler\Ghidra"; IconFilename: "{#MyAppToolsIconsFolder}\ghidra.ico"
Name: "{#MyAppBinsFolder}\sendto\sendto\Dissasembler\Ghidra"; Filename: "{#MyAppToolsFolder}\Dissasembler\Ghidra\ghidraRun.bat"; WorkingDir: "{#MyAppToolsFolder}\Dissasembler\Ghidra"; IconFilename: "{#MyAppToolsIconsFolder}\ghidra.ico"
