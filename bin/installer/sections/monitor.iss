; Api Monitor
[Components]
Name: "monitor\apimonitor"; Description: "Api Monitor"; Types: full compact; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\Api Monitor\*"; DestDir: "{#MyAppToolsFolder}\Monitor\Api Monitor"; Components: "monitor\apimonitor"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\Api Monitor x64"; Filename: "{#MyAppToolsFolder}\Monitor\Api Monitor\apimonitor-x64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Api Monitor"; Components: "monitor\apimonitor";   Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Api Monitor x64"; Filename: "{#MyAppToolsFolder}\Monitor\Api Monitor\apimonitor-x64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Api Monitor"; Components: "monitor\apimonitor";   Check: Is64BitInstallMode; 

[Icons]
Name: "{group}\{#MyAppName}\Api Monitor"; Filename: "{#MyAppToolsFolder}\Monitor\Api Monitor\apimonitor-x86.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Api Monitor"; Components: "monitor\apimonitor";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Api Monitor"; Filename: "{#MyAppToolsFolder}\Monitor\Api Monitor\apimonitor-x86.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Api Monitor"; Components: "monitor\apimonitor";   Check: not Is64BitInstallMode; 



; Autoruns
[Components]
Name: "monitor\autoruns"; Description: "Autoruns"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\Autoruns\*"; DestDir: "{#MyAppToolsFolder}\Monitor\Autoruns"; Components: "monitor\autoruns"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\Autoruns"; Filename: "{#MyAppToolsFolder}\Monitor\Autoruns\Autoruns.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Autoruns"; Components: "monitor\autoruns";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Autoruns"; Filename: "{#MyAppToolsFolder}\Monitor\Autoruns\Autoruns.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Autoruns"; Components: "monitor\autoruns";   Check: not Is64BitInstallMode; 

[Icons]
Name: "{group}\{#MyAppName}\Autoruns x64"; Filename: "{#MyAppToolsFolder}\Monitor\Autoruns\Autoruns64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Autoruns"; Components: "monitor\autoruns";   Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Autoruns x64"; Filename: "{#MyAppToolsFolder}\Monitor\Autoruns\Autoruns64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Autoruns"; Components: "monitor\autoruns";   Check: Is64BitInstallMode; 



; CurrPorts
[Components]
Name: "monitor\currports"; Description: "CurrPorts"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\CurrPorts\*"; DestDir: "{#MyAppToolsFolder}\Monitor\CurrPorts"; Components: "monitor\currports"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\CurrPorts"; Filename: "{#MyAppToolsFolder}\Monitor\CurrPorts\cports.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\CurrPorts"; Components: "monitor\currports";    
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\CurrPorts"; Filename: "{#MyAppToolsFolder}\Monitor\CurrPorts\cports.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\CurrPorts"; Components: "monitor\currports";    



; HollowsHunter
[Components]
Name: "monitor\hollowshunter"; Description: "HollowsHunter"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\HollowsHunter\*"; DestDir: "{#MyAppToolsFolder}\Monitor\HollowsHunter"; Components: "monitor\hollowshunter"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\HollowsHunter x64"; Filename: "{sys}\cmd.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\HollowsHunter"; Components: "monitor\hollowshunter"; Parameters: "/K ""{#MyAppToolsFolder}\Monitor\HollowsHunter\hollows_hunter.exe"""; IconFilename: "{#MyAppToolsFolder}\Monitor\HollowsHunter\hollows_hunter.exe"; Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\HollowsHunter x64"; Filename: "{sys}\cmd.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\HollowsHunter"; Components: "monitor\hollowshunter"; Parameters: "/K ""{#MyAppToolsFolder}\Monitor\HollowsHunter\hollows_hunter.exe"""; IconFilename: "{#MyAppToolsFolder}\Monitor\HollowsHunter\hollows_hunter.exe"; Check: Is64BitInstallMode; 



; MultiMon
[Components]
Name: "monitor\multimon"; Description: "MultiMon"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\MultiMon\*"; DestDir: "{#MyAppToolsFolder}\Monitor\MultiMon"; Components: "monitor\multimon"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\MultiMon"; Filename: "{#MyAppToolsFolder}\Monitor\MultiMon\MultiMon.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\MultiMon"; Components: "monitor\multimon";    
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\MultiMon"; Filename: "{#MyAppToolsFolder}\Monitor\MultiMon\MultiMon.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\MultiMon"; Components: "monitor\multimon";    



; PE-sieve
[Components]
Name: "monitor\pesieve"; Description: "PE-sieve"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\PE-sieve\*"; DestDir: "{#MyAppToolsFolder}\Monitor\PE-sieve"; Components: "monitor\pesieve"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\PE-sieve x64"; Filename: "{sys}\cmd.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\PE-sieve"; Components: "monitor\pesieve"; Parameters: "/K ""{#MyAppToolsFolder}\Monitor\PE-sieve\pe-sieve.exe"""; IconFilename: "{#MyAppToolsFolder}\Monitor\PE-sieve\pe-sieve.exe"; Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\PE-sieve x64"; Filename: "{sys}\cmd.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\PE-sieve"; Components: "monitor\pesieve"; Parameters: "/K ""{#MyAppToolsFolder}\Monitor\PE-sieve\pe-sieve.exe"""; IconFilename: "{#MyAppToolsFolder}\Monitor\PE-sieve\pe-sieve.exe"; Check: Is64BitInstallMode; 



; Portmon
[Components]
Name: "monitor\portmon"; Description: "Portmon"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\Portmon\*"; DestDir: "{#MyAppToolsFolder}\Monitor\Portmon"; Components: "monitor\portmon"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\Portmon"; Filename: "{#MyAppToolsFolder}\Monitor\Portmon\portmon.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Portmon"; Components: "monitor\portmon";    
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Portmon"; Filename: "{#MyAppToolsFolder}\Monitor\Portmon\portmon.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Portmon"; Components: "monitor\portmon";    



; Process Explorer
[Components]
Name: "monitor\processexplorer"; Description: "Process Explorer"; Types: full compact; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\Process Explorer\*"; DestDir: "{#MyAppToolsFolder}\Monitor\Process Explorer"; Components: "monitor\processexplorer"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\Process Explorer"; Filename: "{#MyAppToolsFolder}\Monitor\Process Explorer\procexp.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Explorer"; Components: "monitor\processexplorer";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Process Explorer"; Filename: "{#MyAppToolsFolder}\Monitor\Process Explorer\procexp.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Explorer"; Components: "monitor\processexplorer";   Check: not Is64BitInstallMode; 

[Icons]
Name: "{group}\{#MyAppName}\Process Explorer x64"; Filename: "{#MyAppToolsFolder}\Monitor\Process Explorer\procexp64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Explorer"; Components: "monitor\processexplorer";   Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Process Explorer x64"; Filename: "{#MyAppToolsFolder}\Monitor\Process Explorer\procexp64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Explorer"; Components: "monitor\processexplorer";   Check: Is64BitInstallMode; 



; Process Hacker 3
[Components]
Name: "monitor\processhacker3"; Description: "Process Hacker 3"; Types: full compact; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\Process Hacker 3\*"; DestDir: "{#MyAppToolsFolder}\Monitor\Process Hacker 3"; Components: "monitor\processhacker3"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\Process Hacker 3"; Filename: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\32bit\ProcessHacker.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\32bit"; Components: "monitor\processhacker3";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Process Hacker 3"; Filename: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\32bit\ProcessHacker.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\32bit"; Components: "monitor\processhacker3";   Check: not Is64BitInstallMode; 

[Icons]
Name: "{group}\{#MyAppName}\Process Hacker 3 x64"; Filename: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\64bit\ProcessHacker.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\64bit"; Components: "monitor\processhacker3";   Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Process Hacker 3 x64"; Filename: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\64bit\ProcessHacker.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Process Hacker 3\64bit"; Components: "monitor\processhacker3";   Check: Is64BitInstallMode; 



; Procmon
[Components]
Name: "monitor\procmon"; Description: "Procmon"; Types: full compact; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\Procmon\*"; DestDir: "{#MyAppToolsFolder}\Monitor\Procmon"; Components: "monitor\procmon"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\Procmon"; Filename: "{#MyAppToolsFolder}\Monitor\Procmon\Procmon.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Procmon"; Components: "monitor\procmon";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Procmon"; Filename: "{#MyAppToolsFolder}\Monitor\Procmon\Procmon.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Procmon"; Components: "monitor\procmon";   Check: not Is64BitInstallMode; 

[Icons]
Name: "{group}\{#MyAppName}\Procmon x64"; Filename: "{#MyAppToolsFolder}\Monitor\Procmon\Procmon64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Procmon"; Components: "monitor\procmon";   Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\Procmon x64"; Filename: "{#MyAppToolsFolder}\Monitor\Procmon\Procmon64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\Procmon"; Components: "monitor\procmon";   Check: Is64BitInstallMode; 



; RegShot
[Components]
Name: "monitor\regshot"; Description: "RegShot"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\RegShot\*"; DestDir: "{#MyAppToolsFolder}\Monitor\RegShot"; Components: "monitor\regshot"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\RegShot x64"; Filename: "{#MyAppToolsFolder}\Monitor\RegShot\Regshot-x64-ANSI.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\RegShot"; Components: "monitor\regshot";   Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\RegShot x64"; Filename: "{#MyAppToolsFolder}\Monitor\RegShot\Regshot-x64-ANSI.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\RegShot"; Components: "monitor\regshot";   Check: Is64BitInstallMode; 

[Icons]
Name: "{group}\{#MyAppName}\RegShot"; Filename: "{#MyAppToolsFolder}\Monitor\RegShot\Regshot-x86-ANSI.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\RegShot"; Components: "monitor\regshot";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\RegShot"; Filename: "{#MyAppToolsFolder}\Monitor\RegShot\Regshot-x86-ANSI.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\RegShot"; Components: "monitor\regshot";   Check: not Is64BitInstallMode; 



; SysAnalyzer
[Components]
Name: "monitor\sysanalyzer"; Description: "SysAnalyzer"; Types: full; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\SysAnalyzer\*"; DestDir: "{#MyAppToolsFolder}\Monitor\SysAnalyzer"; Components: "monitor\sysanalyzer"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\SysAnalyzer"; Filename: "{#MyAppToolsFolder}\Monitor\SysAnalyzer\sysAnalyzer.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\SysAnalyzer"; Components: "monitor\sysanalyzer";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\SysAnalyzer"; Filename: "{#MyAppToolsFolder}\Monitor\SysAnalyzer\sysAnalyzer.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\SysAnalyzer"; Components: "monitor\sysanalyzer";   Check: not Is64BitInstallMode; 



; TCPView
[Components]
Name: "monitor\tcpview"; Description: "TCPView"; Types: full compact; 

[Files]
Source: "{#MySrcDir}\toolkit\Monitor\TCPView\*"; DestDir: "{#MyAppToolsFolder}\Monitor\TCPView"; Components: "monitor\tcpview"; Flags: ignoreversion recursesubdirs createallsubdirs; 

[Icons]
Name: "{group}\{#MyAppName}\TCPView"; Filename: "{#MyAppToolsFolder}\Monitor\TCPView\tcpview.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\TCPView"; Components: "monitor\tcpview";   Check: not Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\TCPView"; Filename: "{#MyAppToolsFolder}\Monitor\TCPView\tcpview.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\TCPView"; Components: "monitor\tcpview";   Check: not Is64BitInstallMode; 

[Icons]
Name: "{group}\{#MyAppName}\TCPView x64"; Filename: "{#MyAppToolsFolder}\Monitor\TCPView\tcpview64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\TCPView"; Components: "monitor\tcpview";   Check: Is64BitInstallMode; 
Name: "{#MyAppBinsFolder}\sendto\sendto\Monitor\TCPView x64"; Filename: "{#MyAppToolsFolder}\Monitor\TCPView\tcpview64.exe"; WorkingDir: "{#MyAppToolsFolder}\Monitor\TCPView"; Components: "monitor\tcpview";   Check: Is64BitInstallMode; 


