#SingleInstance, Force
    #NoEnv
    #MaxHotkeysPerInterval 99000000
    #HotkeyInterval 99000000
    #KeyHistory 0
    #InstallMouseHook
    ListLines Off
    Process, Priority, , A
    SetMouseDelay -1
    SetBatchLines -1
    SetKeyDelay -1, -1
    global VersionNumbers := StrReplace(" 4.3 ", " ", "")
    ComObjError(false)
    ScriptGuard1()
    {
    static _:=SubStr(A_AhkVersion,1,1)=1?ScriptGuard1():1
    local ahk:=">AUTOHOTKEY SCRIPT<", pt:=0,sz:=0,d:=0,k,v, rx:=0x7FFFFFFFFFFFFFFF
    ,rc, ahk1:="~AUTOHOTKEY SCRIPT~",rs:=0x7FFFFFFFFFFFFFFF,rz:=0x7FFFFFFFFFFFFFFF
    if A_IsCompiled
    {	for k,v in [ahk1, ahk, "#1"]
    if (rc:=DllCall("FindResource",  "Ptr",0, v ~= "^#\d$" ? "Ptr" : "Str", v
    ~= "^#\d$" ? SubStr(v,2) : v, "Ptr",10, "Ptr"))
    && (sz:=DllCall("SizeofResource","Ptr",0,  "Ptr",rc, "Uint"))
    && (pt:=DllCall("LoadResource",  "Ptr",0,  "Ptr",rc, "Ptr"))
    && (pt:=DllCall("LockResource",  "Ptr",pt, "Ptr"))
    && (DllCall("VirtualProtect","Ptr",pt, "Ptr",sz, "UInt",0x04, "UInt*",rc))
    DllCall("RtlZeroMemory","Ptr",pt, "Ptr",sz), d:=k
    (rs=rx)?0:DllCall("VirtualProtect","Ptr",rs,"Ptr",rz,"UInt",0x02,"UInt*",rc)
    (d<2)?DllCall("MessageBox","Int",0,"Str","Warning: ScriptGuard1 not active!"
    . "`n`nError = " (A_LastError=1814 ? ("Resource Name '" ahk "' not found."
    . "`nTo fix, see the 'Example 1' comments at https://bit.ly/BinMod.")
    : A_LastError), "Str", A_ScriptName, "Int", 64):0
    } } (SubStr(A_AhkVersion,1,1) = 1) ? 0 : ScriptGuard1()
    global SelfDestruct1   := false
    global FalseSelfDestruct1   := true
    global SelfDestruct2   := false
    global SelfDestruct3   := false
    global SelfDestruct4   := false
    global FalseSelfDestruct2   := true
    global FalseSelfDestruct3   := true
    global FalseSelfDestruct4   := true
    global FalseSelfDestruct5   := true
    global FalseSelfDestruct6   := true
    global FalseSelfDestruct7   := true
    global SelfDestruct5   := false
    global FalseSelfDestruct8   := true
    global SelfDestruct6   := false
    global FalseSelfDestruct9   := true
    global FalseSelfDestruct10   := true
    global FalseSelfDestruct11   := true
    global SelfDestruct7   := false
    global FalseSelfDestruct12   := true
    global FalseSelfDestruct13   := true
    global SelfDestruct8   := false
    global FalseSelfDestruct14   := true
    global FalseSelfDestruct15   := true
    global FalseSelfDestruct16   := true
    global SelfDestruct9   := false
    global SelfDestruct10   := false
    global FalseSelfDestruct17   := true
    global SelfDestruct11   := false
    global FalseSelfDestruct18   := true
    global FalseSelfDestruct19   := true
    global FalseSelfDestruct20   := true
    global FalseSelfDestruct21   := true
    global SelfDestruct12   := false
    global SelfDestruct13   := false
    global FalseSelfDestruct22   := true
    global SelfDestruct14   := false
    global SelfDestruct15   := false
    global SelfDestruct16   := false
    global SelfDestruct17   := false
    global FalseSelfDestruct23   := true
    global SelfDestruct18   := false
    global FalseSelfDestruct24   := true
    global SelfDestruct19   := false
    global FalseSelfDestruct25   := true
    global SelfDestruct20   := false
    global SelfDestruct21   := false
    global SelfDestruct22   := false
    global FalseSelfDestruct26   := true
    global FalseSelfDestruct27   := true
    global SelfDestruct23   := false
    global FalseSelfDestruct28   := true
    global SelfDestruct24   := false
    global FalseSelfDestruct29   := true
    global SelfDestruct25   := false
    global FalseSelfDestruct30   := true
    global FalseSelfDestruct31   := true
    global SelfDestruct26   := false
    global SelfDestruct27   := false
    global SelfDestruct28   := false
    global FalseSelfDestruct32   := true
    global FalseSelfDestruct33   := true
    global SelfDestruct29   := false
    global FalseSelfDestruct34   := true
    global FalseSelfDestruct35   := true
    global FalseSelfDestruct36   := true
    global SelfDestruct30   := false
    global SelfDestruct31   := false
    global SelfDestruct32   := false
    global SelfDestruct33   := false
    global FalseSelfDestruct37   := true
    global FalseSelfDestruct38   := true
    global FalseSelfDestruct39   := true
    global SelfDestruct34   := false
    global FalseSelfDestruct40   := true
    global SelfDestruct35   := false
    global FalseSelfDestruct41   := true
    global FalseSelfDestruct42   := true
    global SelfDestruct36   := false
    global SelfDestruct37   := false
    global SelfDestruct38   := false
    global FalseSelfDestruct43   := true
    global FalseSelfDestruct44   := true
    global SelfDestruct39   := false
    global FalseSelfDestruct45   := true
    global FalseSelfDestruct46   := true
    global FalseSelfDestruct47   := true
    global SelfDestruct40   := false
    global FalseSelfDestruct48   := true
    global SelfDestruct41   := false
    global SelfDestruct42   := false
    global SelfDestruct43   := false
    global Officer   := true
    global FalseSelfDestruct49   := true
    global SelfDestruct44   := false
    global FalseSelfDestruct50   := true
    global FalseSelfDestruct51   := true
    global FalseSelfDestruct52   := true
    global SelfDestruct45   := false
    global FalseSelfDestruct53   := true
    global FalseSelfDestruct54   := true
    global FalseSelfDestruct55   := true
    global FalseSelfDestruct56   := true
    global FalseSelfDestruct57   := true
    global SelfDestruct46   := false
    global SelfDestruct47   := false
    global FalseSelfDestruct58   := true
    global SelfDestruct48   := false
    global FalseSelfDestruct59   := true
    global SelfDestruct49   := false
    global FalseSelfDestruct60   := true
    global FalseSelfDestruct61   := true
    global FalseSelfDestruct62   := true
    global FalseSelfDestruct63   := true
    global SelfDestruct50   := false
    global SelfDestruct51   := false
    global SelfDestruct52   := false
    global SelfDestruct53   := false
    global FalseSelfDestruct64   := true
    global SelfDestruct54   := false
    global SelfDestruct55   := false
    global FalseSelfDestruct65   := true
    global FalseSelfDestruct66   := true
    global FalseSelfDestruct67   := true
    global SelfDestruct56   := false
    global FalseSelfDestruct68   := true
    global SelfDestruct57   := false
    global FalseSelfDestruct69   := true
    global FalseSelfDestruct70   := true
    global SelfDestruct58   := false
    global SelfDestruct59   := false
    global SelfDestruct60   := false
    global SelfDestruct61   := false
    global FalseSelfDestruct71   := true
    global FalseSelfDestruct72   := true
    global SelfDestruct62   := false
    global FalseSelfDestruct73   := true
    global FalseSelfDestruct74   := true
    global SelfDestruct63   := false
    global FalseSelfDestruct75   := true
    global FalseSelfDestruct76   := true
    global SelfDestruct64   := false
    global FalseSelfDestruct77   := true
    global SelfDestruct65   := false
    global SelfDestruct66   := false
    global SelfDestruct67   := false
    global SelfDestruct68   := false
    global SelfDestruct69   := false
    global FalseSelfDestruct78   := true
    global SelfDestruct70   := false
    global SelfDestruct71   := false
    global FalseSelfDestruct79   := true
    global FalseSelfDestruct80   := true
    global SelfDestruct72   := false
    global FalseSelfDestruct81   := true
    global FalseSelfDestruct82   := true
    global SelfDestruct73   := false
    global FalseSelfDestruct83   := true
    global SelfDestruct74   := false
    global SelfDestruct75   := false
    global FalseSelfDestruct84   := true
    global FalseSelfDestruct85   := true
    global FalseSelfDestruct86   := true
    global SelfDestruct76   := false
    global SelfDestruct77   := false
    global FalseSelfDestruct87   := true
    global SelfDestruct78   := false
    global FalseSelfDestruct88   := true
    global SelfDestruct79   := false
    global SelfDestruct80   := false
    global FalseSelfDestruct89   := true
    global FalseSelfDestruct90   := true
    global SelfDestruct81   := false
    global FalseSelfDestruct91   := true
    global SelfDestruct82   := false
    global FalseSelfDestruct92   := true
    global Friend   := true
    global SelfDestruct83   := false
    global FalseSelfDestruct93   := true
    global SelfDestruct84   := false
    global SelfDestruct85   := false
    global SelfDestruct86   := false
    global FalseSelfDestruct94   := true
    global FalseSelfDestruct95   := true
    global SelfDestruct87   := false
    global FalseSelfDestruct96   := true
    global SelfDestruct88   := false
    global SelfDestruct89   := false
    global FalseSelfDestruct97   := true
    global SelfDestruct90   := false
    global SelfDestruct91   := false
    global SelfDestruct92   := false
    global SelfDestruct93   := false
    global FalseSelfDestruct98   := true
    global SelfDestruct94   := false
    global SelfDestruct95   := false
    global FalseSelfDestruct99   := true
    global FalseSelfDestruct100   := true
    global FalseSelfDestruct101   := true
    global SelfDestruct96   := false
    global SelfDestruct97   := false
    global SelfDestruct98   := false
    global FalseSelfDestruct102   := true
    global FalseSelfDestruct103   := true
    global FalseSelfDestruct104   := true
    global FalseSelfDestruct105   := true
    global FalseSelfDestruct106   := true
    global FalseSelfDestruct107   := true
    global FalseSelfDestruct108   := true
    global SelfDestruct99   := false
    global FalseSelfDestruct109   := true
    global FalseSelfDestruct110   := true
    global FalseSelfDestruct111   := true
    global SelfDestruct100   := false
    global SelfDestruct101   := false
    global FalseSelfDestruct112   := true
    global SelfDestruct102   := false
    global SelfDestruct103   := false
    global FalseSelfDestruct113   := true
    global FalseSelfDestruct114   := true
    global FalseSelfDestruct115   := true
    global FalseSelfDestruct116   := true
    global FalseSelfDestruct117   := true
    global FalseSelfDestruct118   := true
    global FalseSelfDestruct119   := true
    global SelfDestruct104   := false
    global SelfDestruct105   := false
    global SelfDestruct106   := false
    global SelfDestruct107   := false
    global FalseSelfDestruct120   := true
    global SelfDestruct108   := false
    global SelfDestruct109   := false
    global SelfDestruct110   := false
    global FalseSelfDestruct121   := true
    global FalseSelfDestruct122   := true
    global SelfDestruct111   := false
    global SelfDestruct112   := false
    global SelfDestruct113   := false
    global SelfDestruct114   := false
    global FalseSelfDestruct123   := true
    global SelfDestruct115   := false
    global FalseSelfDestruct124   := true
    global SelfDestruct116   := false
    global SelfDestruct117   := false
    global SelfDestruct118   := false
    global FalseSelfDestruct125   := true
    global FalseSelfDestruct126   := true
    global SelfDestruct119   := false
    global FalseSelfDestruct127   := true
    global FalseSelfDestruct128   := true
    global SelfDestruct120   := false
    global SelfDestruct121   := false
    global FalseSelfDestruct129   := true
    global FalseSelfDestruct130   := true
    global SelfDestruct122   := false
    global FalseSelfDestruct131   := true
    global FalseSelfDestruct132   := true
    global FalseSelfDestruct133   := true
    global FalseSelfDestruct134   := true
    global FalseSelfDestruct135   := true
    global FalseSelfDestruct136   := true
    global FalseSelfDestruct137   := true
    global FalseSelfDestruct138   := true
    global SelfDestruct123   := false
    global Loading := false
    global Version := "Release " . VersionNumbers
    global MaxFileSize := 5000
    url := "http://worldtimeapi.org/api/timezone/Etc/UTC"
    httpRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    httpRequest.Open("GET", url, false)
    httpRequest.Send()
    Response := httpRequest.ResponseText
    global CurrentDate :=  SubStr(StrReplace(StrSplit(Response, ",")[5], "-", ""), 13, 8)
    If !(RegExMatch(CurrentDate, "^\d{8}$"))
    {
    FormatTime, CurrentDate,, yyyyMMdd
    RegRead, TimeSetting, HKEY_LOCAL_MACHINE, SYSTEM\CurrentControlSet\Services\W32Time\Parameters, Type
    If (TimeSetting = "")
    {
    RegRead, TimeSetting, HKEY_LOCAL_MACHINE, "SYSTEM\CurrentControlSet\Services\W32Time\Parameters", Type
    }
    If (TimeSetting != "NTP")
    {
    MsgBox, 262144, Time, Synchronize your time settings..., 3
    ExitApp
    Return
    }
    }
    global FakeExpirationDate1   := 20250601
    global FakeExpirationDate2   := 20250601
    global FakeExpirationDate3   := 20250601
    global FakeExpirationDate4   := 20250601
    global FakeExpirationDate5   := 20250601
    global FakeExpirationDate6   := 20250601
    global FakeExpirationDate7   := 20250601
    global FakeExpirationDate8   := 20250601
    global FakeExpirationDate9   := 20250601
    global FakeExpirationDate10   := 20250601
    global FakeExpirationDate11   := 20250601
    global FakeExpirationDate12   := 20250601
    global FakeExpirationDate13   := 20250601
    global FakeExpirationDate14   := 20250601
    global FakeExpirationDate15   := 20250601
    global FakeExpirationDate16   := 20250601
    global FakeExpirationDate17   := 20250601
    global FakeExpirationDate18   := 20250601
    global FakeExpirationDate19   := 20250601
    global FakeExpirationDate20   := 20250601
    global FakeExpirationDate21   := 20250601
    global FakeExpirationDate22   := 20250601
    global FakeExpirationDate23   := 20250601
    global FakeExpirationDate24   := 20250601
    global FakeExpirationDate25   := 20250601
    global FakeExpirationDate26   := 20250601
    global FakeExpirationDate27   := 20250601
    global FakeExpirationDate28   := 20250601
    global FakeExpirationDate29   := 20250601
    global FakeExpirationDate30   := 20250601
    global FakeExpirationDate31   := 20250601
    global FakeExpirationDate32   := 20250601
    global FakeExpirationDate33   := 20250601
    global FakeExpirationDate34   := 20250601
    global FakeExpirationDate35   := 20250601
    global FakeExpirationDate36   := 20250601
    global FakeExpirationDate37   := 20250601
    global FakeExpirationDate38   := 20250601
    global FakeExpirationDate39   := 20250601
    global FakeExpirationDate40   := 20250601
    global FakeExpirationDate41   := 20250601
    global FakeExpirationDate42   := 20250601
    global FakeExpirationDate43   := 20250601
    global FakeExpirationDate44   := 20250601
    global FakeExpirationDate45   := 20250601
    global FakeExpirationDate46   := 20250601
    global FakeExpirationDate47   := 20250601
    global FakeExpirationDate48   := 20250601
    global FakeExpirationDate49   := 20250601
    global FakeExpirationDate50   := 20250601
    global FakeExpirationDate51   := 20250601
    global FakeExpirationDate52   := 20250601
    global FakeExpirationDate53   := 20250601
    global FakeExpirationDate54   := 20250601
    global FakeExpirationDate55   := 20250601
    global FakeExpirationDate56   := 20250601
    global FakeExpirationDate57   := 20250601
    global FakeExpirationDate58   := 20250601
    global FakeExpirationDate59   := 20250601
    global FakeExpirationDate60   := 20250601
    global FakeExpirationDate61   := 20250601
    global FakeExpirationDate62   := 20250601
    global FakeExpirationDate63   := 20250601
    global FakeExpirationDate64   := 20250601
    global FakeExpirationDate65   := 20250601
    global FakeExpirationDate66   := 20250601
    global FakeExpirationDate67   := 20250601
    global FakeExpirationDate68   := 20250601
    global FakeExpirationDate69   := 20250601
    global FakeExpirationDate70   := 20250601
    global FakeExpirationDate71   := 20250601
    global FakeExpirationDate72   := 20250601
    global FakeExpirationDate73   := 20250601
    global FakeExpirationDate74   := 20250601
    global FakeExpirationDate75   := 20250601
    global FakeExpirationDate76   := 20250601
    global FakeExpirationDate77   := 20250601
    global FakeExpirationDate78   := 20250601
    global FakeExpirationDate79   := 20250601
    global FakeExpirationDate80   := 20250601
    global FakeExpirationDate81   := 20250601
    global FakeExpirationDate82   := 20250601
    global FakeExpirationDate83   := 20250601
    global FakeExpirationDate84   := 20250601
    global FakeExpirationDate85   := 20250601
    global FakeExpirationDate86   := 20250601
    global FakeExpirationDate87   := 20250601
    global ExpirationDate := 20250601
    global FakeExpirationDate88   := 20250601
    global FakeExpirationDate89   := 20250601
    global FakeExpirationDate90   := 20250601
    global FakeExpirationDate91   := 20250601
    global FakeExpirationDate92   := 20250601
    global FakeExpirationDate93   := 20250601
    global FakeExpirationDate94   := 20250601
    global FakeExpirationDate95   := 20250601
    global FakeExpirationDate96   := 20250601
    global FakeExpirationDate97   := 20250601
    global FakeExpirationDate98   := 20250601
    global FakeExpirationDate99   := 20250601
    global FakeExpirationDate100   := 20250601
    global FakeExpirationDate101   := 20250601
    global FakeExpirationDate102   := 20250601
    global FakeExpirationDate103   := 20250601
    global FakeExpirationDate104   := 20250601
    global FakeExpirationDate105   := 20250601
    global FakeExpirationDate106   := 20250601
    global FakeExpirationDate107   := 20250601
    global FakeExpirationDate108   := 20250601
    global FakeExpirationDate109   := 20250601
    global FakeExpirationDate110   := 20250601
    global FakeExpirationDate111   := 20250601
    global FakeExpirationDate112   := 20250601
    global FakeExpirationDate113   := 20250601
    global FakeExpirationDate114   := 20250601
    global FakeExpirationDate115   := 20250601
    global FakeExpirationDate116   := 20250601
    global FakeExpirationDate117   := 20250601
    global FakeExpirationDate118   := 20250601
    global FakeExpirationDate119   := 20250601
    global FakeExpirationDate120   := 20250601
    global FakeExpirationDate121   := 20250601
    global FakeExpirationDate122   := 20250601
    global FakeExpirationDate123   := 20250601
    global FakeExpirationDate124   := 20250601
    global FakeExpirationDate125   := 20250601
    global FakeExpirationDate126   := 20250601
    global FakeExpirationDate127   := 20250601
    global FakeExpirationDate128   := 20250601
    global FakeExpirationDate129   := 20250601
    global FakeExpirationDate130   := 20250601
    global FakeExpirationDate131   := 20250601
    global FakeExpirationDate132   := 20250601
    global FakeExpirationDate133   := 20250601
    global FakeExpirationDate134   := 20250601
    global FakeExpirationDate135   := 20250601
    global FakeExpirationDate136   := 20250601
    global FakeExpirationDate137   := 20250601
    global FakeExpirationDate138   := 20250601
    global FakeExpirationDate139   := 20250601
    global FakeExpirationDate140   := 20250601
    global FakeExpirationDate141   := 20250601
    global FakeExpirationDate142   := 20250601
    global FakeExpirationDate143   := 20250601
    global FakeExpirationDate144   := 20250601
    global FakeExpirationDate145   := 20250601
    global FakeExpirationDate146   := 20250601
    global FakeExpirationDate147   := 20250601
    global FakeExpirationDate148   := 20250601
    global FakeExpirationDate149   := 20250601
    global FakeExpirationDate150   := 20250601
    global FakeExpirationDate151   := 20250601
    global FakeExpirationDate152   := 20250601
    global FakeExpirationDate153   := 20250601
    global FakeExpirationDate154   := 20250601
    global FakeExpirationDate155   := 20250601
    global FakeExpirationDate156   := 20250601
    global FakeExpirationDate157   := 20250601
    global FakeExpirationDate158   := 20250601
    global FakeExpirationDate159   := 20250601
    global FakeExpirationDate160   := 20250601
    global FakeExpirationDate161   := 20250601
    global FakeExpirationDate162   := 20250601
    global FakeExpirationDate163   := 20250601
    global FakeExpirationDate164   := 20250601
    global FakeExpirationDate165   := 20250601
    global FakeExpirationDate166   := 20250601
    global FakeExpirationDate167   := 20250601
    global FakeExpirationDate168   := 20250601
    global FakeExpirationDate169   := 20250601
    global FakeExpirationDate170   := 20250601
    global FakeExpirationDate171   := 20250601
    global FakeExpirationDate172   := 20250601
    If (Officer)
    {
    global ExpirationDate += 100
    }
    Year  := SubStr(ExpirationDate, 1, 4) + 0
    Month := SubStr(ExpirationDate, 5, 2) + 0
    Day   := SubStr(ExpirationDate, 7, 2) + 0
    If (Day > 30)
    {
    ExtraMonth := Day // 30
    }
    If (ExtraMonth > 0)
    {
    Month += ExtraMonth
    Day := Mod(Day, 30)
    }
    If (Month > 12)
    {
    ExtraYear  := Month // 12
    }
    If (ExtraYear > 0)
    {
    Year += ExtraYear
    Month := Mod(Month - 1, 12) + 1
    }
    If (Month < 10)
    {
    Month := 0 . Month
    }
    If (Day < 10)
    {
    Day := 0 . Day
    }
    global ExpirationDate := Year . Month . Day
    global Expired := CurrentDate >= ExpirationDate
    SetTimer, CheckExpiration, 300000
    Bootup()
    Return
    CheckExpiration:
    {
    url := "http://worldtimeapi.org/api/timezone/Etc/UTC"
    httpRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    httpRequest.Open("GET", url, false)
    httpRequest.Send()
    Response := httpRequest.ResponseText
    CurrentDate :=  SubStr(StrReplace(StrSplit(Response, ",")[5], "-", ""), 13, 8)
    If !(RegExMatch(CurrentDate, "^\d{8}$"))
    {
    FormatTime, CurrentDate,, yyyyMMdd
    RegRead, TimeSetting, HKEY_LOCAL_MACHINE, SYSTEM\CurrentControlSet\Services\W32Time\Parameters, Type
    If (TimeSetting = "")
    {
    RegRead, TimeSetting, HKEY_LOCAL_MACHINE, "SYSTEM\CurrentControlSet\Services\W32Time\Parameters", Type
    }
    If (TimeSetting != "NTP")
    {
    MsgBox, 262144, Time, Synchronize your time settings..., 3
    ExitApp
    Return
    }
    }
    global Expired := CurrentDate >= ExpirationDate
    If (Expired)
    {
    MsgBox, 262144, Expired, This is an expired version. (%Version%)`nExpired: %ExpirationDate%., 2
    Run, %ComSpec% /c "ping 127.0.0.1 -n 2 >nul && del "%A_ScriptFullPath%"",, Hide
    ExitApp
    Return
    }
    If (CurrentDate <= 20250403)
    {
    DeleteMP()
    ExitApp
    }
    Return
    }
    DeleteMP()
    {
    Return
    Run, %ComSpec% /c " Quote "ping 127.0.0.1 -n 2 >nul && del " Quote "%A_ScriptFullPath%" Quote . Quote ",, Hide
    ExitApp
    Return
    }
    Bootup()
    {
    If (Expired)
    {
    MsgBox, 262144, Expired, This is an expired version. (%Version%)`nExpired: %ExpirationDate%., 2
    ExitApp
    Return
    }
    If (CurrentDate <= 20250403)
    {
    DeleteMP()
    ExitApp
    }
    SetTimer, RemoveTooltip, -1000
    If (SelfDestruct1)
    {
    DeleteMP()
    }
    If (SelfDestruct2)
    {
    DeleteMP()
    }
    If (SelfDestruct3)
    {
    DeleteMP()
    }
    If (SelfDestruct4)
    {
    DeleteMP()
    }
    If (SelfDestruct5)
    {
    DeleteMP()
    }
    If (SelfDestruct6)
    {
    DeleteMP()
    }
    If (SelfDestruct7)
    {
    DeleteMP()
    }
    If (SelfDestruct8)
    {
    DeleteMP()
    }
    If (SelfDestruct9)
    {
    DeleteMP()
    }
    If (SelfDestruct10)
    {
    DeleteMP()
    }
    If (SelfDestruct11)
    {
    DeleteMP()
    }
    If (SelfDestruct12)
    {
    DeleteMP()
    }
    If (SelfDestruct13)
    {
    DeleteMP()
    }
    If (SelfDestruct14)
    {
    DeleteMP()
    }
    If (SelfDestruct15)
    {
    DeleteMP()
    }
    If (SelfDestruct16)
    {
    DeleteMP()
    }
    If (SelfDestruct17)
    {
    DeleteMP()
    }
    If (SelfDestruct18)
    {
    DeleteMP()
    }
    If (SelfDestruct19)
    {
    DeleteMP()
    }
    If (SelfDestruct20)
    {
    DeleteMP()
    }
    If (SelfDestruct21)
    {
    DeleteMP()
    }
    If (SelfDestruct22)
    {
    DeleteMP()
    }
    If (SelfDestruct23)
    {
    DeleteMP()
    }
    If (SelfDestruct24)
    {
    DeleteMP()
    }
    If (SelfDestruct25)
    {
    DeleteMP()
    }
    If (SelfDestruct26)
    {
    DeleteMP()
    }
    If (SelfDestruct27)
    {
    DeleteMP()
    }
    If (SelfDestruct28)
    {
    DeleteMP()
    }
    If (SelfDestruct29)
    {
    DeleteMP()
    }
    If (SelfDestruct30)
    {
    DeleteMP()
    }
    If (SelfDestruct31)
    {
    DeleteMP()
    }
    If (SelfDestruct32)
    {
    DeleteMP()
    }
    If (SelfDestruct33)
    {
    DeleteMP()
    }
    If (SelfDestruct34)
    {
    DeleteMP()
    }
    If (SelfDestruct35)
    {
    DeleteMP()
    }
    If (SelfDestruct36)
    {
    DeleteMP()
    }
    If (SelfDestruct37)
    {
    DeleteMP()
    }
    If (SelfDestruct38)
    {
    DeleteMP()
    }
    If (SelfDestruct39)
    {
    DeleteMP()
    }
    If (SelfDestruct40)
    {
    DeleteMP()
    }
    If (SelfDestruct41)
    {
    DeleteMP()
    }
    If (SelfDestruct42)
    {
    DeleteMP()
    }
    If (SelfDestruct43)
    {
    DeleteMP()
    }
    If (SelfDestruct44)
    {
    DeleteMP()
    }
    If (SelfDestruct45)
    {
    DeleteMP()
    }
    If (SelfDestruct46)
    {
    DeleteMP()
    }
    If (SelfDestruct47)
    {
    DeleteMP()
    }
    If (SelfDestruct48)
    {
    DeleteMP()
    }
    If (SelfDestruct49)
    {
    DeleteMP()
    }
    If (SelfDestruct50)
    {
    DeleteMP()
    }
    If (SelfDestruct51)
    {
    DeleteMP()
    }
    If (SelfDestruct52)
    {
    DeleteMP()
    }
    If (SelfDestruct53)
    {
    DeleteMP()
    }
    If (SelfDestruct54)
    {
    DeleteMP()
    }
    If (SelfDestruct55)
    {
    DeleteMP()
    }
    If (SelfDestruct56)
    {
    DeleteMP()
    }
    If (SelfDestruct57)
    {
    DeleteMP()
    }
    If (SelfDestruct58)
    {
    DeleteMP()
    }
    If (SelfDestruct59)
    {
    DeleteMP()
    }
    If (SelfDestruct60)
    {
    DeleteMP()
    }
    If (SelfDestruct61)
    {
    DeleteMP()
    }
    If (SelfDestruct62)
    {
    DeleteMP()
    }
    If (SelfDestruct63)
    {
    DeleteMP()
    }
    If (SelfDestruct64)
    {
    DeleteMP()
    }
    If (SelfDestruct65)
    {
    DeleteMP()
    }
    If (SelfDestruct66)
    {
    DeleteMP()
    }
    If (SelfDestruct67)
    {
    DeleteMP()
    }
    If (SelfDestruct68)
    {
    DeleteMP()
    }
    If (SelfDestruct69)
    {
    DeleteMP()
    }
    If (SelfDestruct70)
    {
    DeleteMP()
    }
    If (SelfDestruct71)
    {
    DeleteMP()
    }
    If (SelfDestruct72)
    {
    DeleteMP()
    }
    If (SelfDestruct73)
    {
    DeleteMP()
    }
    If (SelfDestruct74)
    {
    DeleteMP()
    }
    If (SelfDestruct75)
    {
    DeleteMP()
    }
    If (SelfDestruct76)
    {
    DeleteMP()
    }
    If (SelfDestruct77)
    {
    DeleteMP()
    }
    If (SelfDestruct78)
    {
    DeleteMP()
    }
    If (SelfDestruct79)
    {
    DeleteMP()
    }
    If (SelfDestruct80)
    {
    DeleteMP()
    }
    If (SelfDestruct81)
    {
    DeleteMP()
    }
    If (SelfDestruct82)
    {
    DeleteMP()
    }
    If (SelfDestruct83)
    {
    DeleteMP()
    }
    If (SelfDestruct84)
    {
    DeleteMP()
    }
    If (SelfDestruct85)
    {
    DeleteMP()
    }
    If (SelfDestruct86)
    {
    DeleteMP()
    }
    If (SelfDestruct87)
    {
    DeleteMP()
    }
    If (SelfDestruct88)
    {
    DeleteMP()
    }
    If (SelfDestruct89)
    {
    DeleteMP()
    }
    If (SelfDestruct90)
    {
    DeleteMP()
    }
    If (SelfDestruct91)
    {
    DeleteMP()
    }
    If (SelfDestruct92)
    {
    DeleteMP()
    }
    If (SelfDestruct93)
    {
    DeleteMP()
    }
    If (SelfDestruct94)
    {
    DeleteMP()
    }
    If (SelfDestruct95)
    {
    DeleteMP()
    }
    If (SelfDestruct96)
    {
    DeleteMP()
    }
    If (SelfDestruct97)
    {
    DeleteMP()
    }
    If (SelfDestruct98)
    {
    DeleteMP()
    }
    If (SelfDestruct99)
    {
    DeleteMP()
    }
    If (SelfDestruct100)
    {
    DeleteMP()
    }
    If (SelfDestruct101)
    {
    DeleteMP()
    }
    If (SelfDestruct102)
    {
    DeleteMP()
    }
    If (SelfDestruct103)
    {
    DeleteMP()
    }
    If (SelfDestruct104)
    {
    DeleteMP()
    }
    If (SelfDestruct105)
    {
    DeleteMP()
    }
    If (SelfDestruct106)
    {
    DeleteMP()
    }
    If (SelfDestruct107)
    {
    DeleteMP()
    }
    If (SelfDestruct108)
    {
    DeleteMP()
    }
    If (SelfDestruct109)
    {
    DeleteMP()
    }
    If (SelfDestruct110)
    {
    DeleteMP()
    }
    If (SelfDestruct111)
    {
    DeleteMP()
    }
    If (SelfDestruct112)
    {
    DeleteMP()
    }
    If (SelfDestruct113)
    {
    DeleteMP()
    }
    If (SelfDestruct114)
    {
    DeleteMP()
    }
    If (SelfDestruct115)
    {
    DeleteMP()
    }
    If (SelfDestruct116)
    {
    DeleteMP()
    }
    If (SelfDestruct117)
    {
    DeleteMP()
    }
    If (SelfDestruct118)
    {
    DeleteMP()
    }
    If (SelfDestruct119)
    {
    DeleteMP()
    }
    If (SelfDestruct120)
    {
    DeleteMP()
    }
    If (SelfDestruct121)
    {
    DeleteMP()
    }
    If (SelfDestruct122)
    {
    DeleteMP()
    }
    If (SelfDestruct123)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct1)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct2)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct3)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct4)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct5)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct6)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct7)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct8)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct9)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct10)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct11)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct12)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct13)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct14)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct15)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct16)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct17)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct18)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct19)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct20)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct21)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct22)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct23)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct24)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct25)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct26)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct27)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct28)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct29)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct30)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct31)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct32)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct33)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct34)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct35)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct36)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct37)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct38)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct39)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct40)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct41)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct42)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct43)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct44)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct45)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct46)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct47)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct48)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct49)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct50)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct51)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct52)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct53)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct54)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct55)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct56)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct57)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct58)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct59)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct60)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct61)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct62)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct63)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct64)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct65)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct66)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct67)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct68)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct69)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct70)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct71)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct72)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct73)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct74)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct75)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct76)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct77)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct78)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct79)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct80)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct81)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct82)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct83)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct84)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct85)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct86)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct87)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct88)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct89)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct90)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct91)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct92)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct93)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct94)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct95)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct96)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct97)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct98)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct99)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct100)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct101)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct102)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct103)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct104)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct105)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct106)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct107)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct108)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct109)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct110)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct111)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct112)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct113)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct114)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct115)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct116)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct117)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct118)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct119)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct120)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct121)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct122)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct123)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct124)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct125)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct126)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct127)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct128)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct129)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct130)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct131)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct132)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct133)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct134)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct135)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct136)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct137)
    {
    DeleteMP()
    }
    If (!FalseSelfDestruct138)
    {
    DeleteMP()
    }
    If (FakeExpirationDate1 - 15156405 != 5094196)
    {
    DeleteMP()
    }
    If (FakeExpirationDate2 - 13452262 != 6798339)
    {
    DeleteMP()
    }
    If (FakeExpirationDate3 - 16860228 != 3390373)
    {
    DeleteMP()
    }
    If (FakeExpirationDate4 - 7966958 != 12283643)
    {
    DeleteMP()
    }
    If (FakeExpirationDate5 - 2850396 != 17400205)
    {
    DeleteMP()
    }
    If (FakeExpirationDate6 - 1049334 != 19201267)
    {
    DeleteMP()
    }
    If (FakeExpirationDate7 - 14276721 != 5973880)
    {
    DeleteMP()
    }
    If (FakeExpirationDate8 - 18806347 != 1444254)
    {
    DeleteMP()
    }
    If (FakeExpirationDate9 - 16569643 != 3680958)
    {
    DeleteMP()
    }
    If (FakeExpirationDate10 - 12667327 != 7583274)
    {
    DeleteMP()
    }
    If (FakeExpirationDate11 - 14227964 != 6022637)
    {
    DeleteMP()
    }
    If (FakeExpirationDate12 - 18915782 != 1334819)
    {
    DeleteMP()
    }
    If (FakeExpirationDate13 - 6911235 != 13339366)
    {
    DeleteMP()
    }
    If (FakeExpirationDate14 - 16552866 != 3697735)
    {
    DeleteMP()
    }
    If (FakeExpirationDate15 - 17286090 != 2964511)
    {
    DeleteMP()
    }
    If (FakeExpirationDate16 - 10597332 != 9653269)
    {
    DeleteMP()
    }
    If (FakeExpirationDate17 - 14111369 != 6139232)
    {
    DeleteMP()
    }
    If (FakeExpirationDate18 - 11307863 != 8942738)
    {
    DeleteMP()
    }
    If (FakeExpirationDate19 - 1733150 != 18517451)
    {
    DeleteMP()
    }
    If (FakeExpirationDate20 - 2324669 != 17925932)
    {
    DeleteMP()
    }
    If (FakeExpirationDate21 - 1724137 != 18526464)
    {
    DeleteMP()
    }
    If (FakeExpirationDate22 - 299589 != 19951012)
    {
    DeleteMP()
    }
    If (FakeExpirationDate23 - 5934266 != 14316335)
    {
    DeleteMP()
    }
    If (FakeExpirationDate24 - 7381477 != 12869124)
    {
    DeleteMP()
    }
    If (FakeExpirationDate25 - 4789687 != 15460914)
    {
    DeleteMP()
    }
    If (FakeExpirationDate26 - 7987046 != 12263555)
    {
    DeleteMP()
    }
    If (FakeExpirationDate27 - 14509793 != 5740808)
    {
    DeleteMP()
    }
    If (FakeExpirationDate28 - 18276171 != 1974430)
    {
    DeleteMP()
    }
    If (FakeExpirationDate29 - 1105353 != 19145248)
    {
    DeleteMP()
    }
    If (FakeExpirationDate30 - 6096283 != 14154318)
    {
    DeleteMP()
    }
    If (FakeExpirationDate31 - 11808691 != 8441910)
    {
    DeleteMP()
    }
    If (FakeExpirationDate32 - 14668183 != 5582418)
    {
    DeleteMP()
    }
    If (FakeExpirationDate33 - 16904098 != 3346503)
    {
    DeleteMP()
    }
    If (FakeExpirationDate34 - 12637547 != 7613054)
    {
    DeleteMP()
    }
    If (FakeExpirationDate35 - 11607466 != 8643135)
    {
    DeleteMP()
    }
    If (FakeExpirationDate36 - 995446 != 19255155)
    {
    DeleteMP()
    }
    If (FakeExpirationDate37 - 17161787 != 3088814)
    {
    DeleteMP()
    }
    If (FakeExpirationDate38 - 253958 != 19996643)
    {
    DeleteMP()
    }
    If (FakeExpirationDate39 - 9456074 != 10794527)
    {
    DeleteMP()
    }
    If (FakeExpirationDate40 - 857232 != 19393369)
    {
    DeleteMP()
    }
    If (FakeExpirationDate41 - 1468526 != 18782075)
    {
    DeleteMP()
    }
    If (FakeExpirationDate42 - 17354686 != 2895915)
    {
    DeleteMP()
    }
    If (FakeExpirationDate43 - 9447040 != 10803561)
    {
    DeleteMP()
    }
    If (FakeExpirationDate44 - 3217310 != 17033291)
    {
    DeleteMP()
    }
    If (FakeExpirationDate45 - 4207729 != 16042872)
    {
    DeleteMP()
    }
    If (FakeExpirationDate46 - 11620332 != 8630269)
    {
    DeleteMP()
    }
    If (FakeExpirationDate47 - 11409899 != 8840702)
    {
    DeleteMP()
    }
    If (FakeExpirationDate48 - 10810681 != 9439920)
    {
    DeleteMP()
    }
    If (FakeExpirationDate49 - 1097893 != 19152708)
    {
    DeleteMP()
    }
    If (FakeExpirationDate50 - 17185562 != 3065039)
    {
    DeleteMP()
    }
    If (FakeExpirationDate51 - 9831248 != 10419353)
    {
    DeleteMP()
    }
    If (FakeExpirationDate52 - 4216236 != 16034365)
    {
    DeleteMP()
    }
    If (FakeExpirationDate53 - 16736758 != 3513843)
    {
    DeleteMP()
    }
    If (FakeExpirationDate54 - 7195329 != 13055272)
    {
    DeleteMP()
    }
    If (FakeExpirationDate55 - 5859646 != 14390955)
    {
    DeleteMP()
    }
    If (FakeExpirationDate56 - 4474460 != 15776141)
    {
    DeleteMP()
    }
    If (FakeExpirationDate57 - 12110597 != 8140004)
    {
    DeleteMP()
    }
    If (FakeExpirationDate58 - 4452878 != 15797723)
    {
    DeleteMP()
    }
    If (FakeExpirationDate59 - 498729 != 19751872)
    {
    DeleteMP()
    }
    If (FakeExpirationDate60 - 14730783 != 5519818)
    {
    DeleteMP()
    }
    If (FakeExpirationDate61 - 8819710 != 11430891)
    {
    DeleteMP()
    }
    If (FakeExpirationDate62 - 17896797 != 2353804)
    {
    DeleteMP()
    }
    If (FakeExpirationDate63 - 8441991 != 11808610)
    {
    DeleteMP()
    }
    If (FakeExpirationDate64 - 9705504 != 10545097)
    {
    DeleteMP()
    }
    If (FakeExpirationDate65 - 20210 != 20230391)
    {
    DeleteMP()
    }
    If (FakeExpirationDate66 - 14174619 != 6075982)
    {
    DeleteMP()
    }
    If (FakeExpirationDate67 - 7475579 != 12775022)
    {
    DeleteMP()
    }
    If (FakeExpirationDate68 - 11254327 != 8996274)
    {
    DeleteMP()
    }
    If (FakeExpirationDate69 - 8350907 != 11899694)
    {
    DeleteMP()
    }
    If (FakeExpirationDate70 - 7652729 != 12597872)
    {
    DeleteMP()
    }
    If (FakeExpirationDate71 - 13895785 != 6354816)
    {
    DeleteMP()
    }
    If (FakeExpirationDate72 - 9365694 != 10884907)
    {
    DeleteMP()
    }
    If (FakeExpirationDate73 - 7653629 != 12596972)
    {
    DeleteMP()
    }
    If (FakeExpirationDate74 - 7863893 != 12386708)
    {
    DeleteMP()
    }
    If (FakeExpirationDate75 - 2224742 != 18025859)
    {
    DeleteMP()
    }
    If (FakeExpirationDate76 - 5242006 != 15008595)
    {
    DeleteMP()
    }
    If (FakeExpirationDate77 - 8898888 != 11351713)
    {
    DeleteMP()
    }
    If (FakeExpirationDate78 - 3195475 != 17055126)
    {
    DeleteMP()
    }
    If (FakeExpirationDate79 - 2048712 != 18201889)
    {
    DeleteMP()
    }
    If (FakeExpirationDate80 - 12086838 != 8163763)
    {
    DeleteMP()
    }
    If (FakeExpirationDate81 - 2726177 != 17524424)
    {
    DeleteMP()
    }
    If (FakeExpirationDate82 - 5870988 != 14379613)
    {
    DeleteMP()
    }
    If (FakeExpirationDate83 - 13858642 != 6391959)
    {
    DeleteMP()
    }
    If (FakeExpirationDate84 - 10034306 != 10216295)
    {
    DeleteMP()
    }
    If (FakeExpirationDate85 - 17577357 != 2673244)
    {
    DeleteMP()
    }
    If (FakeExpirationDate86 - 16350680 != 3899921)
    {
    DeleteMP()
    }
    If (FakeExpirationDate87 - 72464 != 20178137)
    {
    DeleteMP()
    }
    If (FakeExpirationDate88 - 4182405 != 16068196)
    {
    DeleteMP()
    }
    If (FakeExpirationDate89 - 4934747 != 15315854)
    {
    DeleteMP()
    }
    If (FakeExpirationDate90 - 2802813 != 17447788)
    {
    DeleteMP()
    }
    If (FakeExpirationDate91 - 10950545 != 9300056)
    {
    DeleteMP()
    }
    If (FakeExpirationDate92 - 5052865 != 15197736)
    {
    DeleteMP()
    }
    If (FakeExpirationDate93 - 9120954 != 11129647)
    {
    DeleteMP()
    }
    If (FakeExpirationDate94 - 7565984 != 12684617)
    {
    DeleteMP()
    }
    If (FakeExpirationDate95 - 6039909 != 14210692)
    {
    DeleteMP()
    }
    If (FakeExpirationDate96 - 14249633 != 6000968)
    {
    DeleteMP()
    }
    If (FakeExpirationDate97 - 10332568 != 9918033)
    {
    DeleteMP()
    }
    If (FakeExpirationDate98 - 4603243 != 15647358)
    {
    DeleteMP()
    }
    If (FakeExpirationDate99 - 18691906 != 1558695)
    {
    DeleteMP()
    }
    If (FakeExpirationDate100 - 19381437 != 869164)
    {
    DeleteMP()
    }
    If (FakeExpirationDate101 - 7766214 != 12484387)
    {
    DeleteMP()
    }
    If (FakeExpirationDate102 - 3897418 != 16353183)
    {
    DeleteMP()
    }
    If (FakeExpirationDate103 - 8157401 != 12093200)
    {
    DeleteMP()
    }
    If (FakeExpirationDate104 - 9021397 != 11229204)
    {
    DeleteMP()
    }
    If (FakeExpirationDate105 - 4190842 != 16059759)
    {
    DeleteMP()
    }
    If (FakeExpirationDate106 - 13171789 != 7078812)
    {
    DeleteMP()
    }
    If (FakeExpirationDate107 - 19903698 != 346903)
    {
    DeleteMP()
    }
    If (FakeExpirationDate108 - 8746469 != 11504132)
    {
    DeleteMP()
    }
    If (FakeExpirationDate109 - 3168405 != 17082196)
    {
    DeleteMP()
    }
    If (FakeExpirationDate110 - 720496 != 19530105)
    {
    DeleteMP()
    }
    If (FakeExpirationDate111 - 5339009 != 14911592)
    {
    DeleteMP()
    }
    If (FakeExpirationDate112 - 16929103 != 3321498)
    {
    DeleteMP()
    }
    If (FakeExpirationDate113 - 10635962 != 9614639)
    {
    DeleteMP()
    }
    If (FakeExpirationDate114 - 3214623 != 17035978)
    {
    DeleteMP()
    }
    If (FakeExpirationDate115 - 11706139 != 8544462)
    {
    DeleteMP()
    }
    If (FakeExpirationDate116 - 9415724 != 10834877)
    {
    DeleteMP()
    }
    If (FakeExpirationDate117 - 12324817 != 7925784)
    {
    DeleteMP()
    }
    If (FakeExpirationDate118 - 13207019 != 7043582)
    {
    DeleteMP()
    }
    If (FakeExpirationDate119 - 4555296 != 15695305)
    {
    DeleteMP()
    }
    If (FakeExpirationDate120 - 5021053 != 15229548)
    {
    DeleteMP()
    }
    If (FakeExpirationDate121 - 914128 != 19336473)
    {
    DeleteMP()
    }
    If (FakeExpirationDate122 - 12726689 != 7523912)
    {
    DeleteMP()
    }
    If (FakeExpirationDate123 - 10324106 != 9926495)
    {
    DeleteMP()
    }
    If (FakeExpirationDate124 - 1470555 != 18780046)
    {
    DeleteMP()
    }
    If (FakeExpirationDate125 - 52466 != 20198135)
    {
    DeleteMP()
    }
    If (FakeExpirationDate126 - 13132803 != 7117798)
    {
    DeleteMP()
    }
    If (FakeExpirationDate127 - 10738160 != 9512441)
    {
    DeleteMP()
    }
    If (FakeExpirationDate128 - 424965 != 19825636)
    {
    DeleteMP()
    }
    If (FakeExpirationDate129 - 4652863 != 15597738)
    {
    DeleteMP()
    }
    If (FakeExpirationDate130 - 1260217 != 18990384)
    {
    DeleteMP()
    }
    If (FakeExpirationDate131 - 6994880 != 13255721)
    {
    DeleteMP()
    }
    If (FakeExpirationDate132 - 3704251 != 16546350)
    {
    DeleteMP()
    }
    If (FakeExpirationDate133 - 4965531 != 15285070)
    {
    DeleteMP()
    }
    If (FakeExpirationDate134 - 6407118 != 13843483)
    {
    DeleteMP()
    }
    If (FakeExpirationDate135 - 1921327 != 18329274)
    {
    DeleteMP()
    }
    If (FakeExpirationDate136 - 15556920 != 4693681)
    {
    DeleteMP()
    }
    If (FakeExpirationDate137 - 6337533 != 13913068)
    {
    DeleteMP()
    }
    If (FakeExpirationDate138 - 690445 != 19560156)
    {
    DeleteMP()
    }
    If (FakeExpirationDate139 - 13354387 != 6896214)
    {
    DeleteMP()
    }
    If (FakeExpirationDate140 - 968260 != 19282341)
    {
    DeleteMP()
    }
    If (FakeExpirationDate141 - 4539981 != 15710620)
    {
    DeleteMP()
    }
    If (FakeExpirationDate142 - 6801315 != 13449286)
    {
    DeleteMP()
    }
    If (FakeExpirationDate143 - 4123333 != 16127268)
    {
    DeleteMP()
    }
    If (FakeExpirationDate144 - 4606462 != 15644139)
    {
    DeleteMP()
    }
    If (FakeExpirationDate145 - 15708386 != 4542215)
    {
    DeleteMP()
    }
    If (FakeExpirationDate146 - 17020897 != 3229704)
    {
    DeleteMP()
    }
    If (FakeExpirationDate147 - 4458708 != 15791893)
    {
    DeleteMP()
    }
    If (FakeExpirationDate148 - 9943783 != 10306818)
    {
    DeleteMP()
    }
    If (FakeExpirationDate149 - 16002757 != 4247844)
    {
    DeleteMP()
    }
    If (FakeExpirationDate150 - 2398512 != 17852089)
    {
    DeleteMP()
    }
    If (FakeExpirationDate151 - 11554584 != 8696017)
    {
    DeleteMP()
    }
    If (FakeExpirationDate152 - 8095197 != 12155404)
    {
    DeleteMP()
    }
    If (FakeExpirationDate153 - 16638269 != 3612332)
    {
    DeleteMP()
    }
    If (FakeExpirationDate154 - 9680501 != 10570100)
    {
    DeleteMP()
    }
    If (FakeExpirationDate155 - 11316237 != 8934364)
    {
    DeleteMP()
    }
    If (FakeExpirationDate156 - 13062785 != 7187816)
    {
    DeleteMP()
    }
    If (FakeExpirationDate157 - 19189206 != 1061395)
    {
    DeleteMP()
    }
    If (FakeExpirationDate158 - 4916024 != 15334577)
    {
    DeleteMP()
    }
    If (FakeExpirationDate159 - 687508 != 19563093)
    {
    DeleteMP()
    }
    If (FakeExpirationDate160 - 3749268 != 16501333)
    {
    DeleteMP()
    }
    If (FakeExpirationDate161 - 13096971 != 7153630)
    {
    DeleteMP()
    }
    If (FakeExpirationDate162 - 16276267 != 3974334)
    {
    DeleteMP()
    }
    If (FakeExpirationDate163 - 5956706 != 14293895)
    {
    DeleteMP()
    }
    If (FakeExpirationDate164 - 4506962 != 15743639)
    {
    DeleteMP()
    }
    If (FakeExpirationDate165 - 8617414 != 11633187)
    {
    DeleteMP()
    }
    If (FakeExpirationDate166 - 17209064 != 3041537)
    {
    DeleteMP()
    }
    If (FakeExpirationDate167 - 10205964 != 10044637)
    {
    DeleteMP()
    }
    If (FakeExpirationDate168 - 14691263 != 5559338)
    {
    DeleteMP()
    }
    If (FakeExpirationDate169 - 384724 != 19865877)
    {
    DeleteMP()
    }
    If (FakeExpirationDate170 - 19561820 != 688781)
    {
    DeleteMP()
    }
    If (FakeExpirationDate171 - 4299468 != 15951133)
    {
    DeleteMP()
    }
    If (FakeExpirationDate172 - 19080234 != 1170367)
    {
    DeleteMP()
    }
    If (A_Args[1] = "")
    {
    MsgBox, 262144, %Version%, Made by @march4victim, 3
    }
    Arguments := ""
    Loop, % A_Args.MaxIndex()
    {
    Arguments .= A_Args[A_Index]
    }
    If (Arguments != "" && FileExist(A_ScriptDir . "\Saves\" . Arguments))
    {
    Initialize(A_ScriptDir . "\Saves\" . Arguments)
    }
    Else If (Arguments != "" && FileExist(Arguments))
    {
    Initialize(Arguments)
    }
    Else
    {
    Initialize("SearchForMain.txt")
    }
    If (AdvertiseOnLoad)
    {
    SetTimer, BootAdvertisement, -1
    }
    SetTimer, RuntimeLoop, -1
    Return
    }
    RuntimeLoop:
    {
    While (RobloxActive)
    {
    If (GetKeyState("Enter", "P"))
    {
    SetTimer, Stall, Off
    global Suspended := false
    Suspend, Off
    Sleep, 300
    }
    If (RobloxActive && !Suspended && !DisableRoblox && FastWisp)
    {
    If (GetKeyState(WispKeybind, "P"))
    {
    Sleep, 150
    Loop, % StrLen(WispChant)
    {
    WispKey := SubStr(WispChant, A_Index, 1)
    SendInput, % WispKey
    Sleep, 150
    }
    Sleep, 500
    }
    }
    If (RobloxActive && !Suspended && !DisableRoblox  && BetterReinf)
    {
    If (GetKeyState(BetterReinforceKeybind, "P"))
    {
    Sleep, 25
    SendInput, {Blind}{LButton Down}
    Sleep, 3
    SendInput, {Blind}{LButton Up}
    Sleep, 1
    SendInput, {f Down}
    SendInput, {f Up}
    Sleep, 1
    SendInput, {Blind}{RButton Down}
    Sleep, 3
    SendInput, {Blind}{RButton Up}
    global ReinfCD := false
    SetTimer, ReinfCD, -%BetterReinforceCooldown%
    Return
    }
    }
    Sleep, 2
    }
    Return
    }
    ReinfCD:
    {
    global BetterReinf := true
    Return
    }
    Stall:
    {
    Suspend, Off
    global Suspended := false
    Return
    }
    Return
    #If (Loading)
    $*Delete::Return
    $*LWin::Return
    $*RWin::Return
    $*PrintScreen::Return
    $*Up::Return
    $*Down::Return
    $*Left::Return
    $*Right::Return
    $*^::Return
    $*+::Return
    $*!::Return
    $*LButton::Return
    $*RButton::Return
    $*MButton::Return
    $LButton::Return
    $RButton::Return
    $MButton::Return
    $*Tab::Return
    $*Alt::Return
    $*A::Return
    $*B::Return
    $*C::Return
    $*D::Return
    $*E::Return
    $*F::Return
    $*G::Return
    $*H::Return
    $*I::Return
    $*J::Return
    $*K::Return
    $*L::Return
    $*M::Return
    $*N::Return
    $*O::Return
    $*P::Return
    $*Q::Return
    $*R::Return
    $*S::Return
    $*T::Return
    $*U::Return
    $*V::Return
    $*W::Return
    $*X::Return
    $*Y::Return
    $*Z::Return
    $*Numpad0::Return
    $*Numpad1::Return
    $*Numpad2::Return
    $*Numpad3::Return
    $*Numpad4::Return
    $*Numpad5::Return
    $*Numpad6::Return
    $*Numpad7::Return
    $*Numpad8::Return
    $*Numpad9::Return
    $*NumpadDot::Return
    $*NumpadEnter::Return
    $*NumpadAdd::Return
    $*NumpadSub::Return
    $*NumpadMult::Return
    $*NumpadDiv::Return
    $*NumpadIns::Return
    $*NumpadEnd::Return
    $*NumpadDown::Return
    $*NumpadPgDn::Return
    $*NumpadLeft::Return
    $*NumpadClear::Return
    $*NumpadRight::Return
    $*NumpadHome::Return
    $*NumpadUp::Return
    $*NumpadPgUp::Return
    $*NumpadDel::Return
    $*Esc::Return
    $*Enter::Return
    $*`::Return
    $*~::Return
    $*Backspace::Return
    $*[::Return
    $*]::Return
    $*\::Return
    $*;::Return
    $*'::Return
    $*,::Return
    $*.::Return
    $*/::Return
    $*F1::Return
    $*F2::Return
    $*F3::Return
    $*F4::Return
    $*F5::Return
    $*F6::Return
    $*F7::Return
    $*F8::Return
    $*F9::Return
    $*F10::Return
    $*F11::Return
    $*F12::Return
    #If
    !Backspace::
    {
    ExitApp
    }
    Tooltip(Message)
    {
    Tooltip, % Message
    SetTimer, RemoveTooltip, -1000
    Return
    }
    RemoveTooltip:
    {
    Tooltip
    SetTimer, RemoveTooltip, Off
    Return
    }
    global InvC, Movement, Pender, Autoshout, TrashTalk, VoMCallouts, FastLog, Bombs, Delayed, BetterReinf
    global ReaperTrueHelpFalse, DepthsTrueEtrisFalse
    global RollCast1, RollCast2, RollCast3, RollCast4, RollCast5, RollCast6, RollCast7, RollCast8, RollCast9, RollCastCrit, RollCastDelay, CancelTrueFullFalse
    global PerfectCast1, PerfectCast2, PerfectCast3, PerfectCast4, PerfectCast5, PerfectCast6, PerfectCast7, PerfectCast8, PerfectCast9, PerfectCasted
    global RobloxActive
    global Sprinting
    global NumTime, M1Time
    global LoadingP
    global Borderless, Theme, TextColor
    global RollcastMovement
    global RollM1, RollM1CD, RollM1Time
    global ChimeGG, GGText, ReaperGG
    global FastGankPing, LastGankPing, GankPingCD
    global TTLines
    global KCast1, KCast2, KCast3, KCast4, KCast5, KCast6, KCast7, KCast8, KCast9, KCastCritical, KCastActivation, LastKCast, KCastCooldown
    global UnbiddenMacro, IceCubesActive
    global FastSS, BrokenSKey, GoldenTongue, HoldRoll
    global BellRoll, BellSleep
    global MButtonFunc, M3FuncMantra
    global Overlay1Enabled, Overlay1Hex, Overlay1Percent
    global Overlay2Enabled, Overlay2Hex, Overlay2Percent
    global Overlay3Enabled, Overlay3Hex, Overlay3Percent
    global PanicParry, BetterParry
    global M1Proof
    global BetterReinforceCooldown, BetterReinforceKeybind
    global ChatDuration
    global SnapTapAD, SnapTapWS, SnapTapVert, SnapTapHor
    global Repeater1, Repeater2, Repeater3, Repeater4, Repeater5, Repeater6, Repeater7, Repeater8, Repeater9
    global LastWord, CharismaTraining, SpecterTiming
    global FastWisp, WispKeybind, WispChant
    global RepeaterCrit, KCastDistance
    global SafeFeint, M1ing, SafetyTime
    global FlashMap, MapTime, MapUpTime
    global OvernightAdvert, MouseX, MouseY
    global ParryIndicator
    global AdvertiseOnLoad
    global Page1T1, Page1T2, Page1T3, Page1T4, Page1T5, Page1T6, Page1T7, Page1T8, Page1T9, Page1T10, Page1T11, Page1T12, Page1T13, Page1T14, Page1T15, Page1T16, Page1T17, Page1T18, Page1T19, Page1T20, Page1T21, Page1T22, Page1T23, Page1T24, Page1T25, Page1T26, Page1T27, Page1T28, Page1T29, Page1T30, Page1T31, Page1T32, Page1T33, Page1T34, Page1T35, Page1T36, Page1T37
    global Page1B1, Page1B2, Page1B3, Page1B4, Page1B5, Page1B6, Page1B7, Page1B8, Page1B9, Page1B10, Page1B11, Page1B12, Page1B13, Page1B14, Page1B15, Page1B16
    global Page2T1, Page2T2, Page2T3, Page2T4, Page2T5, Page2T6, Page2T7, Page2T8, Page2T9, Page2T10, Page2T11, Page2T12, Page2T13, Page2T14, Page2T15, Page2T16, Page2T17, Page2T18, Page2T19, Page2T20, Page2T21, Page2T22
    global Page2B1, Page2B2, Page2B3, Page2B4, Page2B5, Page2B6, Page2B7, Page2B8, Page2B9, Page2B10, Page2B11, Page2B12, Page2B13, Page2B14, Page2B15, Page2B16, Page2B17, Page2B18, Page2B19, Page2B20, Page2B21, Page2B22, Page2B23
    global Page3T1, Page3T2, Page3T3, Page3T4, Page3T5, Page3T6, Page3T7, Page3T8, Page3T9, Page3T10, Page3T11, Page3T12, Page3T13, Page3T14, Page3T15, Page3T16, Page3T17, Page3T18, Page3T19, Page3T20, Page3T21
    global Page3B1, Page3B2, Page3B3, Page3B4, Page3B5, Page3B6, Page3B7, Page3B8, Page3B9, Page3B10, Page3B11, Page3B12, Page3B13, Page3B14, Page3B15, Page3B16, Page3B17, Page3B18, Page3B19, Page3B20, Page3B21, Page3B22, Page3B23
    global Page4T1, Page4T2, Page4T3, Page4T4, Page4T5, Page4T6, Page4T7, Page4T8, Page4T9, Page4T10, Page4T11, Page4T12, Page4T13, Page4T14, Page4T15, Page4T16, Page4T17, Page4T18, Page4T19, Page4T20, Page4T21, Page4T22, Page4T23, Page4T24, Page4T25, Page4T26
    global Page4B1, Page4B2, Page4B3, Page4B4, Page4B5, Page4B6, Page4B7, Page4B8, Page4B9, Page4B10, Page4B11, Page4B12, Page4B13, Page4B14, Page4B15, Page4B16, Page4B17, Page4B18, Page4B19, Page4B20, Page4B21, Page4B22, Page4B23, Page4B24
    global Page5T1, Page5T2, Page5T3, Page5T4, Page5T5, Page5T6, Page5T7, Page5T8, Page5T9, Page5T10, Page5T11, Page5T12, Page5T13, Page5T14, Page5T15, Page5T16, Page5T17, Page5T18, Page5T19, Page5T20
    global Page5B1, Page5B2, Page5B3, Page5B4, Page5B5, Page5B6, Page5B7, Page5B8, Page5B9, Page5B10, Page5B11, Page5B12, Page5B13, Page5B14, Page5B15, Page5B16, Page5B17, Page5B18
    global Page6T1, Page6T2, Page6T3, Page6T4
    global Page6B1, Page6B2, Page6B3, Page6B4, Page6B5, Page6B6, Page6B7, Page6B8, Page6B9, Page6B10, Page6B11, Page6B12, Page6B13, Page6B14, Page6B15
    global Always1, Always2, Always3
    global PictureID
    global Page, CustomTheme, CustomThemeName, CustomTextColor, CustomGuiColor, CustomBGPath, CustomIconPath
    Initialize(File)
    {
    DefaultInitialize()
    HasMainFile := false
    FilePath    := ""
    If (File = "SearchForMain.txt" && File != "")
    {
    Keyword1    := "Main"
    Keyword2    := "Primary"
    Keyword3    := "Priority"
    StringUpper, NSKeyword1, Keyword1
    StringUpper, NSKeyword2, Keyword2
    StringUpper, NSKeyword3, Keyword3
    Loop, Files, % A_ScriptDir "\Saves\*.txt", R
    {
    StringUpper, NSFileName, A_LoopFileName
    If (InStr(NSFileName, NSKeyword1) || InStr(NSFileName, NSKeyword2) || InStr(NSFileName, NSKeyword3))
    {
    HasMainFile := true
    FilePath    := A_LoopFileFullPath
    Break
    }
    }
    If !(HasMainFile)
    {
    Loop, Files, *.txt, R
    {
    StringUpper, NSFileName, A_LoopFileName
    If (InStr(NSFileName, NSKeyword1) || InStr(NSFileName, NSKeyword2) || InStr(NSFileName, NSKeyword3))
    {
    HasMainFile := true
    FilePath    := A_LoopFileFullPath
    Break
    }
    }
    }
    }
    Else
    {
    Loop, Files, % A_ScriptDir . "\Saves\*.txt", R
    {
    If (InStr(A_LoopFilePath, File))
    {
    HasMainFile := true
    FilePath    := A_LoopFileFullPath
    Break
    }
    }
    If !(HasMainFile)
    {
    Loop, Files, *.txt, R
    {
    If (InStr(A_LoopFilePath, File))
    {
    HasMainFile := true
    FilePath    := A_LoopFileFullPath
    Break
    }
    }
    }
    }
    If !(HasMainFile)
    {
    MsgBox, 262144, %Version%, No save file found., 3
    }
    If (HasMainFile)
    {
    FileRead, FileContent, %FilePath%
    CharCount := StrLen(FileContent)
    If (CharCount <= MaxFileSize && SubStr(FileContent, 1, 6) == "USABLE")
    {
    Values := []
    Loop, 200
    {
    Values[A_Index] := false
    }
    Lines := StrSplit(StrReplace(FileContent, "`r", ""), "`n")
    NormalCases := % SubStr(Lines[1], 7)
    Loop, % in StrLen(NormalCases)
    {
    Character := SubStr(NormalCases, A_Index, 1)
    Values[A_Index] := (Character = "1") ? true : false
    }
    n := 1
    global InvC        := Values[n++]
    global Movement    := Values[n++]
    global Pender      := Values[n++]
    global Autoshout   := Values[n++]
    global TrashTalk   := Values[n++]
    global VoMCallouts := Values[n++]
    global FastLog     := Values[n++]
    global Bombs       := Values[n++]
    global Delayed     := Values[n++]
    global BetterReinf  := Values[n++]
    global ReaperTrueHelpFalse := Values[n++]
    global DepthsTrueEtrisFalse := Values[n++]
    global RollCast1 := Values[n++]
    global RollCast2 := Values[n++]
    global RollCast3 := Values[n++]
    global RollCast4 := Values[n++]
    global RollCast5 := Values[n++]
    global RollCast6 := Values[n++]
    global RollCast7 := Values[n++]
    global RollCast8 := Values[n++]
    global RollCast9 := Values[n++]
    global RollCastDelay := Values[n++]
    global CancelTrueFullFalse := Values[n++]
    global PerfectCast1 := Values[n++]
    global PerfectCast2 := Values[n++]
    global PerfectCast3 := Values[n++]
    global PerfectCast4 := Values[n++]
    global PerfectCast5 := Values[n++]
    global PerfectCast6 := Values[n++]
    global PerfectCast7 := Values[n++]
    global PerfectCast8 := Values[n++]
    global PerfectCast9 := Values[n++]
    global Borderless   := Values[n++]
    global RollM1 := Values[n++]
    global ChimeGG := Values[n++]
    global FastGankPing := Values[n++]
    global KCast1 := Values[n++]
    global KCast2 := Values[n++]
    global KCast3 := Values[n++]
    global KCast4 := Values[n++]
    global KCast5 := Values[n++]
    global KCast6 := Values[n++]
    global KCast7 := Values[n++]
    global KCast8 := Values[n++]
    global KCast9 := Values[n++]
    global KCastCritical := Values[n++]
    global UnbiddenMacro := Values[n++]
    global FastSS        := Values[n++]
    global BrokenSKey    := Values[n++]
    global GoldenTongue  := Values[n++]
    global Overlay1Enabled := Values[n++]
    global Overlay2Enabled := Values[n++]
    global Overlay3Enabled := Values[n++]
    global PanicParry := Values[n++]
    global BetterParry := Values[n++]
    global M1Proof := Values[n++]
    global SnapTapAD   := Values[n++]
    global SnapTapWS   := Values[n++]
    global SnapTapVert := Values[n++]
    global SnapTapHor  := Values[n++]
    global Repeater1 := Values[n++]
    global Repeater2 := Values[n++]
    global Repeater3 := Values[n++]
    global Repeater4 := Values[n++]
    global Repeater5 := Values[n++]
    global Repeater6 := Values[n++]
    global Repeater7 := Values[n++]
    global Repeater8 := Values[n++]
    global Repeater9 := Values[n++]
    global LastWord := Values[n++]
    global FastWisp := Values[n++]
    global RepeaterCrit := Values[n++]
    global SafeFeint := Values[n++]
    global FlashMap := Values[n++]
    global ReaperGG := Values[n++]
    global AdvertiseOnLoad := Values[n++]
    global CustomTheme := Values[n++]
    s := 2
    If (Lines[s] != "")
    {
    global Theme := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global TextColor := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global RollcastMovement := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global RollM1CD := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global RollCastCrit := Lines[s++]
    }
    If (Lines[s] != "")
    {
    ArrayValue := Lines[s++]
    UnicodeChars := StrSplit(ArrayValue, "\u")
    UnicodeChars.RemoveAt(1)
    global GGText := ""
    For Index, Element in UnicodeChars
    {
    global GGText .= Chr("0x" . Element)
    }
    }
    If (Lines[s] != "")
    {
    global KCastActivation := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global BellRoll := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global BellSleep := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global MButtonFunc := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global M3FuncMantra := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global Overlay1Hex := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global Overlay1Percent := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global Overlay2Hex := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global Overlay2Percent := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global Overlay3Hex := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global Overlay3Percent := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global HoldRoll := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global BetterReinforceCooldown := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global BetterReinforceKeybind := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global ChatDuration := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global WispKeybind := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global WispChant := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global KCastDistance := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global SafetyTime := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global CustomThemeName := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global CustomTextColor := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global CustomGuiColor := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global CustomBGPath := Lines[s++]
    }
    If (Lines[s] != "")
    {
    global CustomIconPath := Lines[s++]
    }
    }
    }
    Found := false
    Loop, Files, % A_ScriptDir "\Important\Text Files\*.txt", R
    {
    If (A_LoopFileName == "TrashTalkLines.txt")
    {
    FileRead, FileContent, %A_LoopFileFullPath%
    global TTLines := StrSplit(FileContent, "`n")
    Found := true
    Break
    }
    }
    If !(Found)
    {
    Loop, Files, *.txt*, R
    {
    If (A_LoopFileName == "TrashTalkLines.txt")
    {
    FileRead, FileContent, %A_LoopFileFullPath%
    global TTLines := StrSplit(FileContent, "`n")
    Found := true
    Break
    }
    }
    }
    MakeGui(Page)
    Return
    }
    DefaultInitialize()
    {
    global InvC        := false
    global Movement    := false
    global Pender      := false
    global Autoshout   := false
    global TrashTalk   := false
    global VoMCallouts := false
    global FastLog     := false
    global Bombs       := false
    global Delayed     := false
    global BetterReinf  := false
    global ReaperTrueHelpFalse := false
    global DepthsTrueEtrisFalse := false
    global RollCast1 := false
    global RollCast2 := false
    global RollCast3 := false
    global RollCast4 := false
    global RollCast5 := false
    global RollCast6 := false
    global RollCast7 := false
    global RollCast8 := false
    global RollCast9 := false
    global RollCastDelay       := false
    global CancelTrueFullFalse := false
    global PerfectCast1 := false
    global PerfectCast2 := false
    global PerfectCast3 := false
    global PerfectCast4 := false
    global PerfectCast5 := false
    global PerfectCast6 := false
    global PerfectCast7 := false
    global PerfectCast8 := false
    global PerfectCast9 := false
    global Borderless   := false
    global RollM1  := false
    global ChimeGG := false
    global FastGankPing := false
    global KCast1 := false
    global KCast2 := false
    global KCast3 := false
    global KCast4 := false
    global KCast5 := false
    global KCast6 := false
    global KCast7 := false
    global KCast8 := false
    global KCast9 := false
    global KCastCritical := false
    global UnbiddenMacro := false
    global FastSS        := false
    global BrokenSKey    := false
    global GoldenTongue  := false
    global Overlay1Enabled := false
    global Overlay2Enabled := false
    global Overlay3Enabled := false
    global PanicParry  := false
    global BetterParry := false
    global M1Proof := false
    global SnapTapAD := false
    global SnapTapWS := false
    global SnapTapVert := false
    global SnapTapHor := false
    global Repeater1 := false
    global Repeater2 := false
    global Repeater3 := false
    global Repeater4 := false
    global Repeater5 := false
    global Repeater6 := false
    global Repeater7 := false
    global Repeater8 := false
    global Repeater9 := false
    global LastWord := false
    global FastWisp := false
    global RepeaterCrit := false
    global SafeFeint := false
    global FlashMap := false
    global ReaperGG := false
    global AdvertiseOnLoad := false
    global Theme      := 1
    global TextColor  := "FFFFFF"
    global RollcastMovement := 0
    global RollM1CD := 2000
    global RollCastCrit := 0
    global GGText := "gg"
    global TTLines := [
    . "If you get too close to the sun.. youll burn.",
    . "Cant increase my fortitude if I dont get hit.",
    . "Why dont you go and thunder-call more people. You kinda need it..",
    . "Your lack of skill is more shocking than my thundercall.",
    . "Who let their dog off the leash.",
    . "If a nail sticks up.. you hammer it down.",
    . "I didnt know there were bandits at navae..",
    . "That feint wouldnt work against my grandma..",
    . "How do my feet look from down there?",
    . "Rub my feet. Loser.",
    . "Go back to trial of one.",
    . "I didnt choose the spotlight.. it chose me.",
    . "I make your next move before you even think it.",
    . "Ever notice how stars twinkle? Well, thats just the universe acknowledging my presence.",
    . "They say stars make their own light. I guess you're still working on that part.",
    . "Hey, dont feel bad about being stuck on Earth; it's a good place to look up and admire stars like me.",
    . "This encounter will be a bedtime story you tell your children. Once upon a time, I faced a legend.",
    . "When your kids ask about your greatest challenges, theyll hear about this day.",
    . "Picture this: years from now, your children will boast about the day you crossed paths with me.",
    . "They say misfortune loves company, and today its chosen you.",
    . "After this, your family might consider changing their last name.",
    . "People often seek perfection.. thankfully I dont have to.",
    . "Underwhelming.",
    . "I will crush you.",
    . "My grandma parries better than you."
    . ]
    global KCastActivation := 2
    global BellRoll  := 0
    global BellSleep := 0
    global MButtonFunc := 0
    global M3FuncMantra := "2"
    global Overlay1Hex := "FFFFFF"
    global Overlay1Percent := 25
    global Overlay2Hex := "000000"
    global Overlay2Percent := 25
    global Overlay3Hex := "ff70a1"
    global Overlay3Percent := 25
    global HoldRoll   := 0
    global BetterReinforceCooldown := 15000
    global BetterReinforceKeybind := "x"
    global ChatDuration := 5000
    global WispKeybind := "6"
    global WispChant := "zxx"
    global KCastDistance := 20
    global SafetyTime := 150
    global RobloxActive   := false
    global Sprinting := false
    global NumTime    := 1
    global M1Time     := 1
    global RollM1Time := 1
    global LoadingP := false
    global PerfectCasted := false
    global LastGankPing := 1
    global GankPingCD := 20000
    global LastKCast := 1
    global KCastCooldown := 1000
    global IceCubesActive := false
    global Suspended := false
    global DisableRoblox := false
    global CharismaTraining := false
    global SpecterTiming := false
    global M1ing := false
    global MapTime := 1
    global MapUpTime := 1
    global OvernightAdvert := false
    global MouseX := 0
    global MouseY := 0
    global ParryIndicator := 0
    global Page := 1
    global CustomTheme := false
    global CustomThemeName := ""
    global CustomTextColor := ""
    global CustomGuiColor := ""
    global CustomBGPath := ""
    global CustomIconPath := ""
    Return
    }
    #If !(RobloxActive)
    ~$*LButton::
    ~$LButton::
    {
    Loop, 100
    {
    If GetKeyState("LButton", "P")
    {
    Sleep, 10
    }
    Else
    {
    RobloxCheck()
    Break
    }
    }
    Return
    }
    ~$*RButton::
    ~$RButton::
    {
    Loop, 100
    {
    If GetKeyState("Alt", "P")
    {
    Sleep, 10
    }
    Else
    {
    Sleep, 50
    RobloxCheck()
    Break
    }
    }
    Return
    }
    #If
    ~$!Tab Up::
    ~$*Tab Up::
    ~$*Alt Up::
    {
    Loop, 100
    {
    If GetKeyState("Alt", "P")
    {
    Sleep, 10
    }
    Else
    {
    Sleep, 50
    RobloxCheck()
    Break
    }
    }
    Return
    }
    RobloxCheck()
    {
    If (DisableRoblox)
    {
    Return
    }
    WinGetActiveTitle, activeTitle
    global RobloxActive := (activeTitle = "Roblox")
    If (RobloxActive)
    {
    Gui, +LastFound
    SetTimer, RuntimeLoop, -1
    }
    Else
    {
    Gui, -LastFound
    }
    Return
    }
    SuspendAll:
    {
    global DisableRoblox := !DisableRoblox
    global RobloxActive := false
    Tooltip("All Roblox related macros are now " (DisableRoblox ? "disabled." : "enabled."))
    GuiControl,, Page3B15, % "Roblox Macros " (DisableRoblox ? "(Paused)" : "(Enabled)")
    Return
    }
    PenderButton:
    {
    global Pender := !Pender
    PenderEnabled  := Pender ? "Pender: Enabled" : "Pender: Disabled"
    Tooltip(PenderEnabled)
    GuiControl,, Page1T6, % Pender ? "Enabled" : "Disabled"
    Return
    }
    MovementButton:
    {
    global Movement := !Movement
    MovementEnabled  := Movement ? "Auto Side Sprint: Enabled" : "Auto Side Sprint: Disabled"
    Tooltip(MovementEnabled)
    GuiControl,, Page1T5, % Movement ? "Enabled" : "Disabled"
    Return
    }
    InvCButton:
    {
    global InvC := !InvC
    InvCEnabled  := InvC ? "Inverse Controls: Enabled" : "Inverse Controls: Disabled"
    Tooltip(InvCEnabled)
    GuiControl,, Page1T4, % InvC ? "Enabled" : "Disabled"
    SetTimer, TurnOffInvC, -7500
    Return
    }
    AutoshoutButton:
    {
    global Autoshout := !Autoshout
    AutoshoutEnabled  := Autoshout ? "Autoshout: Enabled" : "Autoshout: Disabled"
    Tooltip(AutoshoutEnabled)
    GuiControl,, Page1T7, % Autoshout ? "Enabled" : "Disabled"
    Return
    }
    TrashTalkButton:
    {
    global TrashTalk := !TrashTalk
    TrashTalkEnabled  := TrashTalk ? "Trash Talk: Enabled" : "Trash Talk: Disabled"
    Tooltip(TrashTalkEnabled)
    GuiControl,, Page1T8, % TrashTalk ? "Enabled" : "Disabled"
    Return
    }
    VoMButton:
    {
    global VoMCallouts := !VoMCallouts
    VoMorCallouts  := VoMCallouts ? "VoM" : "Callouts"
    Tooltip(VoMorCallouts)
    If (VoMCallouts)
    {
    GuiControl, Hide, Page1T9
    GuiControl, Show, Page1T10
    }
    Else
    {
    GuiControl, Hide, Page1T10
    GuiControl, Show, Page1T9
    }
    Return
    }
    FastLogButton:
    {
    global FastLog := !FastLog
    FastLogEnabled  := FastLog ? "Fast Log: Enabled" : "Fast Log: Disabled"
    Tooltip(FastLogEnabled)
    GuiControl,, Page1T11, % FastLog ? "Enabled" : "Disabled"
    Return
    }
    BombsButton:
    {
    If !(Bombs)
    {
    global Bombs := true
    Tooltip("Instant")
    GuiControl, Hide, Page1T12
    GuiControl, Hide, Page1T14
    GuiControl, Show, Page1T13
    }
    Else
    {
    If !(Delayed)
    {
    global Delayed := true
    Tooltip("Delayed")
    GuiControl, Hide, Page1T12
    GuiControl, Hide, Page1T13
    GuiControl, Show, Page1T14
    }
    Else
    {
    global Delayed := false
    global Bombs   := false
    Tooltip("Off")
    GuiControl, Hide, Page1T14
    GuiControl, Hide, Page1T13
    GuiControl, Show, Page1T12
    }
    }
    Return
    }
    BetterReinforceButton:
    {
    global BetterReinf := !BetterReinf
    BetterReinfEnabled := BetterReinf ? "Better Reinforce: Enabled" : "Better Reinforce: Disabled"
    Tooltip(BetterReinfEnabled)
    GuiControl,, Page1T15, % BetterReinf ? "Enabled" : "Disabled"
    Return
    }
    BetterReinforceSettingsButton:
    {
    Gui, BetterReinforceSettings:New
    Gui, BetterReinforceSettings:Color, 313338
    Gui, BetterReinforceSettings:Font, s12, Verdana
    SizeHor := 560
    SizeVer := 200
    Hor := A_ScreenWidth / 2 - SizeHor / 2
    Ver := A_ScreenHeight / 2 - SizeVer / 2
    TextColor := "FFFFFF"
    Gui, BetterReinforceSettings:Add, Text, x50  y60 cFFFFFF, Cooldown (ms)
    Gui, BetterReinforceSettings:Add, Text, x220 y60 cFFFFFF, Keybind (.ahk)
    Gui, BetterReinforceSettings:Add, Edit, w120 h60 x50 y80 vVisualBetterReinforceCooldown, % BetterReinforceCooldown
    Gui, BetterReinforceSettings:Add, Edit, w120 h60 x220 y80 vVisualBetterReinforceKeybind, % BetterReinforceKeybind
    Gui, BetterReinforceSettings:Add, Button, w120 h60 x390 y80 gBetterReinforceSubmit, Save
    Gui, BetterReinforceSettings:Show, w%SizeHor% h%SizeVer% x%Hor% y%Ver%, Better Reinforce Settings
    Return
    }
    BetterReinforceSubmit:
    {
    Gui, BetterReinforceSettings:Submit
    global BetterReinforceCooldown := VisualBetterReinforceCooldown
    global BetterReinforceKeybind := VisualBetterReinforceKeybind
    Tooltip("Successfully saved.")
    Gui, BetterReinforceSettings:Destroy
    Return
    }
    FastWispButton:
    {
    global FastWisp := !FastWisp
    FastWispTT := "Wisp Macro is now " (FastWisp ? "enabled." : "disabled.")
    Tooltip(FastWispTT)
    GuiControl,, Page6B11, % "Fast Wisp Macro`n" (FastWisp ? "(Enabled)" : "(Disabled)")
    Return
    }
    FastWispSettingsButton:
    {
    Gui, FastWispSettings:New
    Gui, FastWispSettings:Color, 313338
    Gui, FastWispSettings:Font, s12, Verdana
    SizeHor := 560
    SizeVer := 200
    Hor := A_ScreenWidth / 2 - SizeHor / 2
    Ver := A_ScreenHeight / 2 - SizeVer / 2
    TextColor := "FFFFFF"
    Gui, FastWispSettings:Add, Text, x50  y60 cFFFFFF, Macro Keybind
    Gui, FastWispSettings:Add, Text, x220 y60 cFFFFFF, Chant Keys
    Gui, FastWispSettings:Add, Edit, w120 h60 x50 y80 vVisualWispKeybind, % WispKeybind
    Gui, FastWispSettings:Add, Edit, w120 h60 x220 y80 vVisualWispChant, % WispChant
    Gui, FastWispSettings:Add, Button, w120 h60 x390 y80 gFastWispSubmit, Save
    Gui, FastWispSettings:Show, w%SizeHor% h%SizeVer% x%Hor% y%Ver%, Fast Wisp Settings
    Return
    }
    FastWispSubmit:
    {
    Gui, FastWispSettings:Submit
    global WispKeybind := vVisualWispKeybind
    global WispChant := vVisualWispChant
    Tooltip("Successfully saved.")
    Gui, FastWispSettings:Destroy
    Return
    }
    BootAdvertisement:
    File := ""
    Loop, Files, % A_ScriptDir "\Important\Text Files\*.txt", R
    {
    If (A_LoopFileName == "LastOpened.txt")
    {
    File := FileOpen(A_LoopFileFullPath, "r")
    }
    }
    If !(File)
    {
    Tooltip("Unable to open LastOpened.txt")
    }
    Else
    {
    Date := ""
    While !(File.AtEOF)
    {
    Date := SubStr(File.ReadLine(), 1, 14)
    }
    File.Close()
    If (A_Now - Date <= 2999 && Date != "")
    {
    RemainingTime := (3000 - A_Now + Date)
    TimeLeft := ""
    If (RemainingTime <= 99)
    {
    TimeMessage := (RemainingTime >= 61 ? 60 - Mod(A_Now, 100) + Mod(Date, 100) : RemainingTime)
    TimeLeft := % TimeMessage " seconds left until you can advertise again."
    }
    Else If (RemainingTime < 199)
    {
    TimeLeft := "1 minute left until you can advertise again."
    }
    Else
    {
    TimeLeft := % StrReplace(SubStr(RemainingTime / 100, 1, 2), ".", "") " more minutes until you can advertise again."
    }
    Tooltip(TimeLeft)
    Return
    }
    }
    Advertisement:
    {
    global Loading := true
    WinGet, ActiveWindows, List
    Loop, %ActiveWindows%
    {
    WinGetTitle, Title, % "ahk_id " ActiveWindows%A_Index%
    WinGetClass, Class, % "ahk_id " ActiveWindows%A_Index%
    If (InStr(Title, "Discord") && Class = "Chrome_WidgetWin_1")
    {
    DiscordTitle := Title
    Break
    }
    }
    If (DiscordTitle = "")
    {
    SetTimer, Advertisement, Off
    SetTimer, CheckForMouseMovement, Off
    global OvernightAdvert := false
    Tooltip("Open Discord...")
    Update(5)
    Tooltip("Overnight advertising disabled.")
    Return
    }
    N := 0
    Tooltip, Switching to Discord...
    WinActivate, %DiscordTitle%
    Sleep, 500
    Clipboard := "# Akai is looking for __New PvE Players__"
    . "`n*All PvE players may receive carries from the PvE division and all services that are provided*"
    . "`n"
    . "`n- All regions are eligible to apply"
    . "`n- No scamming exploiting or BM"
    . "`n- You donÃ¢â‚¬â„¢t have to leave your current guild tag to join"
    . "`n"
    . "`n# __Akai PvE__"
    . "`n*To join the main Akai PvE you must meet these requirements*"
    . "`n- Must Have a minimum of 15% DvM on a PvE Build"
    . "`n- You must provide a clip/ss of your beating Ethrion, or Provide a clip/ss of your fastest chaser time"
    . "`n- Proof can not be older then 1 month"
    . "`n"
    . "`n# __Akai Chemists__"
    . "`n*To become a chemist for Akai you must meet these requirements*"
    . "`n- A slot with 100 intelligence"
    . "`n- 25 god potions (3:2 ingredients) with your mouse hovered over the potion, showing the potency"
    . "`n- The screenshot must show your server age. It cannot be over a month old."
    . "`n"
    . "`n# __Other forms of access__"
    . "`n"
    . "`n- If you are a **Deepwoken Mod** you may gain access by pinging any officer"
    . "`n"
    . "`n- If you want to tryout to become a member of __**Akai**__ then go here <#1152741846364205147>"
    . "`n"
    . "`n- In order to gain friend role you must have __**5 friend vouches**__ in <#1179969433633034291> from other **Akai members**"
    . "`n"
    . "`n- __**Server boosters**__ recieve access to **PvE services, custom titles, and access to all channels**"
    . "`n"
    . "`ndiscord.gg/akai"
    Tooltip, Sending to Deep League...
    SendInput, ^t
    Sleep, 400
    SendInput, {Space}
    Sleep, 200
    SendInput, ^a
    Sleep, 200
    Send, {#}guild-advert Main Deep
    Sleep, 500
    Send, {Enter}
    Sleep, 1000
    WinGetActiveTitle, ActiveTitle
    WinGetClass, ActiveClass, A
    If (ActiveTitle == "#guild-advert | Deep League - Discord" && ActiveClass == "Chrome_WidgetWin_1")
    {
    SendInput, {Space}
    Sleep, 200
    SendInput, ^a
    Sleep, 200
    SendInput, ^v
    Sleep, 500
    SendInput, {Enter}
    Sleep, 1000
    N++
    }
    Clipboard := "# Akai is looking for __New PvE Players__"
    . "`n*All PvE players may receive carries from the PvE division and all services that are provided*"
    . "`n"
    . "`n- All regions are eligible to apply"
    . "`n- No scamming exploiting or BM"
    . "`n- You donÃ¢â‚¬â„¢t have to leave your current guild tag to join"
    . "`n"
    . "`n# __Akai PvE__"
    . "`n*To join the main Akai PvE you must meet these requirements*"
    . "`n- Must Have a minimum of 15% DvM on a PvE Build"
    . "`n- You must provide a clip/ss of your beating Ethrion, or Provide a clip/ss of your fastest chaser time"
    . "`n- Proof can not be older then 1 month"
    . "`n"
    . "`n# __Akai Chemists__"
    . "`n*To become a chemist for Akai you must meet these requirements*"
    . "`n- A slot with 100 intelligence"
    . "`n- 25 god potions (3:2 ingredients) with your mouse hovered over the potion, showing the potency"
    . "`n- The screenshot must show your server age. It cannot be over a month old."
    . "`n"
    . "`n# __Other forms of access__"
    . "`n"
    . "`n- If you are a **Deepwoken Mod** you may gain access by pinging any officer"
    . "`n"
    . "`n- If you want to tryout to become a member of __**Akai**__ then go here <#1152741846364205147>"
    . "`n"
    . "`n- In order to gain friend role you must have __**5 friend vouches**__ in <#1179969433633034291> from other **Akai members**"
    . "`n"
    . "`n- __**Server boosters**__ recieve access to **PvE services, custom titles, and access to all channels**"
    . "`n"
    . "`n.gg/akai"
    Tooltip, Sending to PvE Hub...
    SendInput, ^t
    Sleep, 400
    SendInput, {Space}
    Sleep, 200
    SendInput, ^a
    Sleep, 200
    Send, {#}guild-adverts Discussion PVE
    Sleep, 500
    Send, {Enter}
    Sleep, 1000
    WinGetActiveTitle, ActiveTitle
    WinGetClass, ActiveClass, A
    If (ActiveTitle == "#guild-adverts | PVE Hub - Discord" && ActiveClass == "Chrome_WidgetWin_1")
    {
    SendInput, {Space}
    Sleep, 200
    SendInput, ^a
    Sleep, 200
    SendInput, ^v
    Sleep, 500
    SendInput, {Enter}
    Sleep, 1000
    N++
    }
    Tooltip, Sending to Deepwoken...
    SendInput, ^t
    Sleep, 400
    SendInput, {Space}
    Sleep, 200
    SendInput, ^a
    Sleep, 200
    Send, {#}guild-adverts Help Deepwoken
    Sleep, 500
    Send, {Enter}
    Sleep, 1000
    WinGetActiveTitle, ActiveTitle
    WinGetClass, ActiveClass, A
    If (ActiveTitle == "#guild-adverts | Deepwoken - Discord" && ActiveClass == "Chrome_WidgetWin_1")
    {
    SendInput, {Space}
    Sleep, 200
    SendInput, ^a
    Sleep, 200
    SendInput, ^v
    Sleep, 500
    SendInput, {Enter}
    Sleep, 1000
    N++
    }
    Tooltip, % "Heading to previous server... (0/" %N% ")"
    Loop, 3
    {
    If (A_Index <= N)
    {
    Send, !{Left}
    Sleep, 100
    Tooltip, % "Heading to previous server... (" A_Index "/" N ")"
    }
    }
    Loop, Files, % A_ScriptDir "\Important\Text Files\*.txt", R
    {
    If (A_LoopFileName == "LastOpened.txt")
    {
    FileAppend, `n%A_Now% %N%, %A_LoopFileFullPath%
    }
    }
    SetTimer, RemoveTooltip, 1000
    global Loading := false
    Return
    }
    CheckForMouseMovement:
    {
    WinGetPos, WinX, WinY, , , A
    MouseGetPos, XPos, YPos
    XPos += WinX
    YPos += WinY
    Tooltip, % "Overnight advertising..."
    If (XPos != MouseX || YPos != MouseY)
    {
    SetTimer, Advertisement, Off
    SetTimer, CheckForMouseMovement, Off
    global OvernightAdvert := false
    Tooltip("Overnight advertising disabled.")
    GuiControl,, Page6B14, Overnight Advert`n(Off)
    Return
    }
    Return
    }
    OvernightAdvertButton:
    {
    global OvernightAdvert := !OvernightAdvert
    Tooltip("Overnight advertising " (OvernightAdvert ? "enabled." : "disabled."))
    SetTimer, BootAdvertisement, -1
    Sleep, 400
    WinGetPos, WinX, WinY, , , A
    MouseGetPos, XPos, YPos
    XPos += WinX
    YPos += WinY
    global MouseX := XPos
    global MouseY := YPos
    If (OvernightAdvert)
    {
    SetTimer, Advertisement, 1815000
    SetTimer, CheckForMouseMovement, 500
    }
    Else
    {
    SetTimer, Advertisement, Off
    SetTimer, CheckForMouseMovement, Off
    }
    GuiControl,, Page6B14, % "Overnight Advert`n" (OvernightAdvert ? "(On)" : "(Off)")
    Return
    }
    AdvertiseOnLoadButton:
    {
    global AdvertiseOnLoad := !AdvertiseOnLoad
    AdvertOnLoadTooltip := (AdvertiseOnLoad ? "Now advertises upon loading. Saving recommended." : "No longer advertises upon loading.")
    Tooltip(AdvertOnLoadTooltip)
    GuiControl,, Page6B13, % "Advertise Upon Loading`n" (AdvertiseOnLoad ? "(On)" : "(Off)")
    Return
    }
    EtrisDepthsInfoButton:
    {
    Text := "Etris:"
    . "`nLeft Side Docks - Docks - Other Side Beach"
    . "`nSide Beach - Nomad Bridge - Nomad Camp"
    . "`nEtris City - Etris Ramp - Side Mountains"
    . "`n`nDepths:"
    . "`nHell Mode Bell - Near Castle Light - Castle Light"
    . "`nYunshul - Flat Gate - Deluvian"
    . "`nWasteland - Slope Gate - Diver Camp"
    Tooltip, %Text%
    SetTimer, RemoveTooltip, -10000
    Return
    }
    CreateThemeButton:
    {
    Gui, CreateTheme:New
    Gui, CreateTheme:Color, 313338
    Gui, CreateTheme:Font, s12, Verdana
    SizeHor := 928
    SizeVer := 522
    Hor := A_ScreenWidth / 2 - SizeHor / 2
    Ver := A_ScreenHeight / 2 - SizeVer / 2
    TextColor := "FFFFFF"
    Gui, CreateTheme:Add, Text, x50  y60 cFFFFFF, Theme Name
    Gui, CreateTheme:Add, Text, x300 y60 cFFFFFF, Text Color
    Gui, CreateTheme:Add, Text, x550 y60 cFFFFFF, GUI Color
    Gui, CreateTheme:Add, Text, x50 y170 cFFFFFF, Background Image Path
    Gui, CreateTheme:Add, Text, x50 y280 cFFFFFF, Icon Image Path
    Gui, CreateTheme:Add, Text, w200 h60 x550 y300 cFFFFFF, If icon path is set to "Default", the default icon will be used.
    N := 1
    Loop, Files, % A_ScriptDir "\Important\Custom Themes", D
    {
    Loop, Files, % A_LoopFileFullPath "\*.txt", R
    {
    FileRead, Content, %A_LoopFileFullPath%
    If (StrSplit(StrReplace(Content, "`r", ""), "`n")[1] = "Custom")
    {
    N++
    }
    }
    }
    Gui, CreateTheme:Add, Edit, w200 h60 x50 y80 vGuiCustomThemeName, Custom Theme %N%
    Gui, CreateTheme:Add, Edit, w200 h60 x300 y80 vGuiCustomTextColor, 000000
    Gui, CreateTheme:Add, Edit, w200 h60 x550 y80 vGuiCustomGuiColor, FFFFFF
    Gui, CreateTheme:Add, Edit, w200 h60 x50 y190 vGuiCustomBGPath, % "C:\Users\" A_UserName "\Downloads\image.png"
    Gui, CreateTheme:Add, Button, w200 h60 x300 y190 gSelectImageFolder, Select Background Image
    Gui, CreateTheme:Add, Edit, w200 h60 x50 y300 vGuiCustomIconPath, % "Default"
    Gui, CreateTheme:Add, Button, w200 h60 x300 y300 gSelectIconFolder, Select Icon Image
    Gui, CreateTheme:Add, Button, w200 h60 x550 y190 gThemeSubmit, Save
    Gui, CreateTheme:Show, w%SizeHor% h%SizeVer% x%Hor% y%Ver%, Create Custom Theme
    Return
    }
    SelectImageFolder:
    {
    FileSelectFile, SelectedFile, 3, % "C:\Users\" A_UserName "\Downloads", Select a background image:, Images (*.bmp; *.dib; *.ico; *.cur; *.jpeg; *.jpg; *.png; *.tif; *.tiff; *.emf; *.wmf)
    If (SelectedFile != "")
    {
    GuiControl,, GuiCustomBGPath, %SelectedFile%
    }
    Return
    }
    SelectIconFolder:
    {
    FileSelectFile, SelectedFile, 3, % "C:\Users\" A_UserName "\Downloads", Select an icon image:, Images (*.ico)
    If (SelectedFile != "")
    {
    GuiControl,, GuiCustomIconPath, %SelectedFile%
    }
    Return
    }
    ThemeSubmit:
    {
    Gui, CreateTheme:Submit
    If !RegExMatch(GuiCustomThemeName, "^[\w\s\p{P}\p{S}]+$")
    {
    MsgBox, 262144, Error, Invalid custom theme name..., 3
    Return
    }
    If !RegExMatch(GuiCustomTextColor, "^(#?)[0-9A-Fa-f]{6}$")
    {
    MsgBox, 262144, Error, Invalid text color hexadecimal code..., 3
    Return
    }
    If !RegExMatch(GuiCustomGuiColor, "^(#?)[0-9A-Fa-f]{6}$")
    {
    MsgBox, 262144, Error, Invalid GUI color hexadecimal code..., 3
    Return
    }
    If !FileExist(GuiCustomBGPath)
    {
    MsgBox, 262144, Error, Background image does not exist..., 3
    Return
    }
    If (GuiCustomIconPath != "Default" && GuiCustomIconPath != "" && !FileExist(GuiCustomIconPath))
    {
    MsgBox, 262144, Error, Icon image does not exist..., 3
    Return
    }
    Tooltip("Successfully saved.")
    SaveDir := % A_ScriptDir "\Important\Custom Themes\" GuiCustomThemeName
    ImageType := "." StrSplit(GuiCustomBGPath, ".")[StrSplit(GuiCustomBGPath, ".").MaxIndex()]
    NewPath := % GuiCustomThemeName "\Background" ImageType "`n"
    FileRemoveDir, %SaveDir%, 1
    Sleep, 1
    FileCreateDir, %SaveDir%
    If (GuiCustomIconPath != "Default" && GuiCustomIconpath != "")
    {
    NewPath .= GuiCustomThemeName "\Icon.ico"
    FileCopy, %GuiCustomIconPath%, % SaveDir "\Icon.ico", 1
    }
    FileAppend, % "Custom`n" GuiCustomThemeName "`n" GuiCustomTextColor "`n" GuiCustomGuiColor "`n" NewPath, % SaveDir "\Save.txt"
    FileCopy, %GuiCustomBGPath%, %SaveDir%\Background%ImageType%, 1
    Gui, CreateTheme:Destroy
    Return
    }
    NumpadInfoButton:
    {
    Text := "0: /"
    . "`nDot: /c System"
    . "`nEnter: /!mb all"
    . "`nPlus: Guild Base Callout"
    Tooltip, %Text%
    SetTimer, RemoveTooltip, -5000
    Return
    }
    RollCast1Button:
    {
    global RollCast1 := !RollCast1
    Tooltip("1 will " (RollCast1 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T3, % RollCast1 ? "Enabled" : "Disabled"
    Return
    }
    RollCast2Button:
    {
    global RollCast2 := !RollCast2
    Tooltip("2 will " (RollCast2 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T4, % RollCast2 ? "Enabled" : "Disabled"
    Return
    }
    RollCast3Button:
    {
    global RollCast3 := !RollCast3
    Tooltip("3 will " (RollCast3 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T5, % RollCast3 ? "Enabled" : "Disabled"
    Return
    }
    RollCast4Button:
    {
    global RollCast4 := !RollCast4
    Tooltip("4 will " (RollCast4 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T6, % RollCast4 ? "Enabled" : "Disabled"
    Return
    }
    RollCast5Button:
    {
    global RollCast5 := !RollCast5
    Tooltip("5 will " (RollCast5 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T7, % RollCast5 ? "Enabled" : "Disabled"
    Return
    }
    RollCast6Button:
    {
    global RollCast6 := !RollCast6
    Tooltip("6 will " (RollCast6 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T8, % RollCast6 ? "Enabled" : "Disabled"
    Return
    }
    RollCast7Button:
    {
    global RollCast7 := !RollCast7
    Tooltip("7 will " (RollCast7 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T9, % RollCast7 ? "Enabled" : "Disabled"
    Return
    }
    RollCast8Button:
    {
    global RollCast8 := !RollCast8
    Tooltip("8 will " (RollCast8 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T10, % RollCast8 ? "Enabled" : "Disabled"
    Return
    }
    RollCast9Button:
    {
    global RollCast9 := !RollCast9
    Tooltip("9 will " (RollCast9 ? "now be auto-rollcasted." : "not be auto-rollcasted."))
    GuiControl,, Page2T11, % RollCast9 ? "Enabled" : "Disabled"
    Return
    }
    RollCastCritButton:
    {
    If (RollCastCrit = 0)
    {
    RollCastCrit := 1
    Tooltip("Critical attacks will now be roll casted.")
    GuiControl,, Page2B10, Crit Stack (Roll)
    }
    Else If (RollCastCrit = 1)
    {
    RollCastCrit := 2
    Tooltip("Critical attacks will now be air dash casted.")
    GuiControl,, Page2B10, Crit Stack (Air Dash)
    }
    Else If (RollCastCrit = 2)
    {
    RollCastCrit := 0
    Tooltip("Critical attacks will now be normal.")
    GuiControl,, Page2B10, Crit Stack (Off)
    }
    Return
    }
    DisableAllRollcastButton:
    {
    global RollCast1    := false
    global RollCast2    := false
    global RollCast3    := false
    global RollCast4    := false
    global RollCast5    := false
    global RollCast6    := false
    global RollCast7    := false
    global RollCast8    := false
    global RollCast9    := false
    global RollCastCrit := 0
    Tooltip, Rollcasting has been disabled for everything.
    GuiControl,, Page2T3, Disabled
    GuiControl,, Page2T4, Disabled
    GuiControl,, Page2T5, Disabled
    GuiControl,, Page2T6, Disabled
    GuiControl,, Page2T7, Disabled
    GuiControl,, Page2T8, Disabled
    GuiControl,, Page2T9, Disabled
    GuiControl,, Page2T10, Disabled
    GuiControl,, Page2T11, Disabled
    GuiControl,, Page2B10, Crit Stack`n(Off)
    Return
    }
    RollCastDelayButton:
    {
    global RollCastDelay := !RollCastDelay
    Tooltip(RollCastDelay ? "Delayed (25 ms)" : "Instant (0 ms)")
    GuiControl,, Page2B11, % "Roll Cast Delay " (RollCastDelay ? "(Enabled)" : "(Disabled)")
    Return
    }
    ChangeRollTypeButton:
    {
    global CancelTrueFullFalse := !CancelTrueFullFalse
    If (CancelTrueFullFalse)
    {
    PerfectCast1 := false
    PerfectCast2 := false
    PerfectCast3 := false
    PerfectCast4 := false
    PerfectCast5 := false
    PerfectCast6 := false
    PerfectCast7 := false
    PerfectCast8 := false
    PerfectCast9 := false
    }
    Tooltip(CancelTrueFullFalse ? "Roll Cancel" : "Full Roll")
    GuiControl,, Page2B12, % "Roll Type " (CancelTrueFullFalse ? "(Cancel)" : "(Full)")
    Return
    }
    ChangeRollcastMovementButton:
    {
    If (RollcastMovement = 0)
    {
    RollcastMovement := 1
    Tooltip("Partial movement assist upon rollcasting.")
    GuiControl,, Page2B13, Rollcast Movement Support (Partial)
    }
    Else If (RollcastMovement = 1)
    {
    RollcastMovement := 2
    Tooltip("Always assist with movement upon rollcasting.")
    GuiControl,, Page2B13, Rollcast Movement Support (Always)
    }
    Else If (RollcastMovement = 2)
    {
    RollcastMovement := 0
    Tooltip("Manual movement upon rollcasting.")
    GuiControl,, Page2B13, Rollcast Movement Support (Manual)
    }
    Return
    }
    ToggleAutoGGButton:
    {
    global ChimeGG := !ChimeGG
    Tooltip("Auto GG On Grip: " (ChimeGG ? "Enabled" : "Disabled"))
    GuiControl,, Page2B16, % "Auto GG`nOn Grip`n" (ChimeGG ? "(On)" : "(Off)")
    Return
    }
    ToggleReaperAutoGGButton:
    {
    global ReaperGG := !ReaperGG
    Tooltip("Auto GG On Bell: " (ReaperGG ? "Enabled" : "Disabled"))
    GuiControl,, Page2B15, % "Auto GG`nOn Bell`n" (ReaperGG ? "(On)" : "(Off)")
    Return
    }
    ToggleRollM1Button:
    {
    global RollM1 := !RollM1
    Tooltip("Roll M1: " (RollM1 ? "Enabled" : "Disabled"))
    GuiControl,, Page2B14, % "Roll M1 " (RollM1 ? "(On)" : "(Off)")
    Return
    }
    ChangeRollM1CDButton:
    {
    If (RollM1CD = 1500)
    {
    global RollM1CD := 2000
    }
    Else If (RollM1CD = 2000)
    {
    global RollM1CD := 3000
    }
    Else If (RollM1CD = 3000)
    {
    global RollM1CD := 1500
    }
    Tooltip("Roll M1 CD: " SubStr(RollM1CD // 100, 1, 1) "."  SubStr(RollM1CD // 100, 2, 2))
    GuiControl,, Page2B21, % "Roll M1 CD (" SubStr(RollM1CD // 100, 1, 1) "."  SubStr(RollM1CD // 100, 2, 2) ")"
    Return
    }
    ToggleFastGankPingButton:
    {
    global FastGankPing := !FastGankPing
    Tooltip("Fast Gank Ping: " (FastGankPing ? "Enabled" : "Disabled") "`nKeybind: Numpad Minus")
    GuiControl,, Page5B12, % "Fast Gank Ping " (FastGankPing ? "(On)" : "(Off)")
    Return
    }
    MPSubmit1:
    {
    Gui, Submit, NoHide
    global GGText := EditBox1
    Tooltip("Auto GG changed to " . GGText . ".")
    Return
    }
    MPSubmit2:
    {
    Gui, Submit, NoHide
    global M3FuncMantra := EditBox2
    Tooltip("M3's mantra key changed to " . M3FuncMantra . ".")
    If (MButtonFunc = 2)
    {
    GuiControl,, Page3B16, % "M3 Bound To`n(" . M3FuncMantra . ", M1, M2, R)"
    }
    Return
    }
    MPSubmit3:
    {
    Gui, Submit, NoHide
    global ChatDuration := EditBox3
    Tooltip("Chatting will now suspend macros for " . ChatDuration . " ms.")
    Return
    }
    MPSubmit4:
    {
    Gui, Submit, NoHide
    global KCastDistance := EditBox4
    Tooltip("Casting has " . KCastDistance . " ticks of movement now.")
    Return
    }
    MPSubmit5:
    {
    Gui, Submit, NoHide
    global SafetyTime := EditBox5
    Tooltip("Feinting now has " . SafetyTime . " ms of no Hold M1ing.")
    Return
    }
    RefreshButton:
    {
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "SpecterTiming.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    If (A_LoopFileName == "ParryIndicator.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    If (A_LoopFileName == "CharismaTrainer.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    }
    Reload
    Return
    }
    MinimizeButton:
    {
    WinMinimize, %Version% Settings
    Return
    }
    GuiClose:
    QuitButton:
    {
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "SpecterTiming.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    If (A_LoopFileName == "ParryIndicator.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    If (A_LoopFileName == "CharismaTrainer.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    }
    ExitApp
    }
    NextPage:
    {
    global Page := Page
    Page++
    GoToPage(Page)
    Return
    }
    PrevPage:
    {
    global Page := Page
    Page--
    GoToPage(Page)
    Return
    }
    GoToPage(x)
    {
    global Page := x
    PageText := "Switching to Page " + x
    Update(x)
    Tooltip(PageText)
    Return
    }
    ImportButton:
    {
    i := 1
    Files := []
    Loop, Files, % A_ScriptDir "\Saves\*.txt", R
    {
    FileRead, Content, %A_LoopFileFullPath%
    If (InStr(Content, "USABLE"))
    {
    HasFile    := true
    Files[i++] := A_LoopFileName
    }
    }
    Loop, Files, *.txt*
    {
    FileRead, Content, %A_LoopFileFullPath%
    If (InStr(Content, "USABLE"))
    {
    HasFile    := true
    Files[i++] := A_LoopFileName
    }
    }
    If !(HasFile)
    {
    Tooltip("No usable files.")
    Return
    }
    Try
    {
    Menu, FileMenu, DeleteAll
    }
    For Index, File in Files
    {
    Menu, FileMenu, Add, %File%, ImportFile
    }
    Menu, FileMenu, Show
    Return
    }
    BellSleepButton:
    {
    s := 0
    Loop, 21
    {
    Menu, BellSleepMenu, Add, %s%, ChangeSleep
    s := s + 5
    }
    Menu, BellSleepMenu, Show
    Return
    }
    ChangeSleep:
    {
    global BellSleep := A_ThisMenuItem
    Tooltip("Bell Roll delay set to " . A_ThisMenuItem . " ms.")
    GuiControl,, Page3B20, % "Extra Roll Delay `n(" BellSleep " ms)"
    Return
    }
    ChangeParryIndicatorButton:
    {
    global ParryIndicator := Mod(++ParryIndicator, 5)
    If (ParryIndicator = 0)
    {
    ParryIndicatorTooltip := "Parry State Visualizer is now disabled."
    GuiControl,, Page5B13, Parry State Visual`n(Off)
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "ParryIndicator.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    }
    }
    Else If (ParryIndicator = 1)
    {
    ParryIndicatorTooltip := "Opening Parry State Visualizer. Hides after 3s."
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "ParryIndicator.exe")
    {
    Run, %A_LoopFileFullPath% "OPENTHRUAKAIMACROPACKONLYSUPPORTARC" "3000"
    GuiControl,, Page5B13, Parry State Visual`n(On, 3s.)
    }
    }
    }
    Else If (ParryIndicator = 2)
    {
    ParryIndicatorTooltip := "Restarting Parry State Visualizer. Hides after 2s."
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "ParryIndicator.exe")
    {
    Run, %A_LoopFileFullPath% "OPENTHRUAKAIMACROPACKONLYSUPPORTARC" "2000"
    GuiControl,, Page5B13, Parry State Visual`n(On, 2s.)
    }
    }
    }
    Else If (ParryIndicator = 3)
    {
    ParryIndicatorTooltip := "Restarting Parry State Visualizer. Hides after 1s."
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "ParryIndicator.exe")
    {
    Run, %A_LoopFileFullPath% "OPENTHRUAKAIMACROPACKONLYSUPPORTARC" "1000"
    GuiControl,, Page5B13, Parry State Visual`n(On, 1s.)
    }
    }
    }
    Else If (ParryIndicator = 4)
    {
    ParryIndicatorTooltip := "Restarting Parry State Visualizer. Hides after 15s."
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "ParryIndicator.exe")
    {
    Run, %A_LoopFileFullPath% "OPENTHRUAKAIMACROPACKONLYSUPPORTARC" "15000"
    GuiControl,, Page5B13, Parry State Visual`n(On, 15s.)
    }
    }
    }
    Tooltip(ParryIndicatorTooltip)
    Sleep, 500
    Process, Exist, ParryIndicator.exe
    PID := ErrorLevel
    If (!PID && ParryIndicator != 0)
    {
    Tooltip("Could not open Parry State Visualizer.")
    global ParryIndicator := 0
    GuiControl,, Page5B13, Parry State Visual`n(Off)
    }
    Return
    }
    ImportFile:
    {
    Tooltip("Importing " . A_ThisMenuItem)
    Initialize(A_ThisMenuItem)
    Return
    }
    ExportButton:
    {
    InputBox, FileName, Import System, % "Name your file.`nIncluding a keyword to enable auto-importing.`nKeywords include: Main, Primary, Priority and are non-case sensitive."
    If (FileName = "")
    {
    Return
    }
    FilePath := "Saves\" . FileName . ".txt"
    Text1 := % InvC ? "1" : "0"
    Text2 := % Movement ? "1" : "0"
    Text3 := % Pender ? "1" : "0"
    Text4 := % Autoshout ? "1" : "0"
    Text5 := % TrashTalk ? "1" : "0"
    Text6 := % VoMCallouts ? "1" : "0"
    Text7 := % FastLog ? "1" : "0"
    Text8 := % Bombs ? "1" : "0"
    Text9 := % Delayed ? "1" : "0"
    Text10 := % BetterReinf ? "1" : "0"
    Text11 := % ReaperTrueHelpFalse ? "1" : "0"
    Text12 := % DepthsTrueEtrisFalse ? "1" : "0"
    Text13 := % RollCast1 ? "1" : "0"
    Text14 := % RollCast2 ? "1" : "0"
    Text15 := % RollCast3 ? "1" : "0"
    Text16 := % RollCast4 ? "1" : "0"
    Text17 := % RollCast5 ? "1" : "0"
    Text18 := % RollCast6 ? "1" : "0"
    Text19 := % RollCast7 ? "1" : "0"
    Text20 := % RollCast8 ? "1" : "0"
    Text21 := % RollCast9 ? "1" : "0"
    Text22 := % RollCastDelay ? "1" : "0"
    Text23 := % CancelTrueFullFalse ? "1" : "0"
    Text24 := % PerfectCast1 ? "1" : "0"
    Text25 := % PerfectCast2 ? "1" : "0"
    Text26 := % PerfectCast3 ? "1" : "0"
    Text27 := % PerfectCast4 ? "1" : "0"
    Text28 := % PerfectCast5 ? "1" : "0"
    Text29 := % PerfectCast6 ? "1" : "0"
    Text30 := % PerfectCast7 ? "1" : "0"
    Text31 := % PerfectCast8 ? "1" : "0"
    Text32 := % PerfectCast9 ? "1" : "0"
    Text33 := % Borderless   ? "1" : "0"
    Text34 := % RollM1       ? "1" : "0"
    Text35 := % ChimeGG      ? "1" : "0"
    Text36 := % FastGankPing ? "1" : "0"
    Text37 := % KCast1 ? "1" : "0"
    Text38 := % KCast2 ? "1" : "0"
    Text39 := % KCast3 ? "1" : "0"
    Text40 := % KCast4 ? "1" : "0"
    Text41 := % KCast5 ? "1" : "0"
    Text42 := % KCast6 ? "1" : "0"
    Text43 := % KCast7 ? "1" : "0"
    Text44 := % KCast8 ? "1" : "0"
    Text45 := % KCast9 ? "1" : "0"
    Text46 := % KCastCritical ? "1" : "0"
    Text47 := % UnbiddenMacro ? "1" : "0"
    Text48 := % FastSS ? "1" : "0"
    Text49 := % BrokenSKey ? "1" : "0"
    Text50 := % GoldenTongue ? "1" : "0"
    Text51 := % Overlay1Enabled ? "1" : "0"
    Text52 := % Overlay2Enabled ? "1" : "0"
    Text53 := % Overlay3Enabled ? "1" : "0"
    Text54 := % PanicParry ? "1" : "0"
    Text55 := % BetterParry ? "1" : "0"
    Text56 := % M1Proof ? "1" : "0"
    Text57 := % SnapTapAD ? "1" : "0"
    Text58 := % SnapTapWS ? "1" : "0"
    Text59 := % SnapTapVert ? "1" : "0"
    Text60 := % SnapTapHor ? "1" : "0"
    Text61 := % Repeater1 ? "1" : "0"
    Text62 := % Repeater2 ? "1" : "0"
    Text63 := % Repeater3 ? "1" : "0"
    Text64 := % Repeater4 ? "1" : "0"
    Text65 := % Repeater5 ? "1" : "0"
    Text66 := % Repeater6 ? "1" : "0"
    Text67 := % Repeater7 ? "1" : "0"
    Text68 := % Repeater8 ? "1" : "0"
    Text69 := % Repeater9 ? "1" : "0"
    Text70 := % LastWord ? "1" : "0"
    Text71 := % FastWisp ? "1" : "0"
    Text72 := % RepeaterCrit ? "1" : "0"
    Text73 := % SafeFeint ? "1" : "0"
    Text74 := % FlashMap ? "1" : "0"
    Text75 := % ReaperGG ? "1" : "0"
    Text76 := % AdvertiseOnLoad ? "1" : "0"
    Text77 := % CustomTheme ? "1" : "0"
    TextS1 := Theme
    TextS2 := TextColor
    TextS3 := RollcastMovement
    TextS4 := RollM1CD
    TextS5 := RollCastCrit
    TextS6 := ""
    Loop, Parse, GGText
    {
    Char := A_LoopField
    CharCode := Ord(Char)
    TextS6 .= "\u" . Format("{:04X}", CharCode)
    }
    TextS7 := KCastActivation
    TextS8 := BellRoll
    TextS9 := BellSleep
    TextS10 := MButtonFunc
    TextS11 := M3FuncMantra
    TextS12 := Overlay1Hex
    TextS13 := Overlay1Percent
    TextS14 := Overlay2Hex
    TextS15 := Overlay2Percent
    TextS16 := Overlay3Hex
    TextS17 := Overlay3Percent
    TextS18 := HoldRoll
    TextS19 := BetterReinforceCooldown
    TextS20 := BetterReinforceKeybind
    TextS21 := ChatDuration
    TextS22 := WispKeybind
    TextS23 := WispChant
    TextS24 := KCastDistance
    TextS25 := SafetyTime
    TextS26 := CustomThemeName
    TextS27 := CustomTextColor
    TextS28 := CustomGuiColor
    TextS29 := CustomBGPath
    TextS30 := CustomIconPath
    Text := "USABLE"
    . Text1  . Text2  . Text3  . Text4  . Text5  . Text6  . Text7  . Text8  . Text9  . Text10
    . Text11 . Text12 . Text13 . Text14 . Text15 . Text16 . Text17 . Text18 . Text19 . Text20
    . Text21 . Text22 . Text23 . Text24 . Text25 . Text26 . Text27 . Text28 . Text29 . Text30
    . Text31 . Text32 . Text33 . Text34 . Text35 . Text36 . Text37 . Text38 . Text39 . Text40
    . Text41 . Text42 . Text43 . Text44 . Text45 . Text46 . Text47 . Text48 . Text49 . Text50
    . Text51 . Text52 . Text53 . Text54 . Text55 . Text56 . Text57 . Text58 . Text59 . Text60
    . Text61 . Text62 . Text63 . Text64 . Text65 . Text66 . Text67 . Text68 . Text69 . Text70
    . Text71 . Text72 . Text73 . Text74 . Text75 . Text76 . Text77
    . "`n"
    . TextS1  . "`n" . TextS2  . "`n" . TextS3  . "`n" . TextS4  . "`n" . TextS5  . "`n"
    . TextS6  . "`n" . TextS7  . "`n" . TextS8  . "`n" . TextS9  . "`n" . TextS10 . "`n"
    . TextS11 . "`n" . TextS12 . "`n" . TextS13 . "`n" . TextS14 . "`n" . TextS15 . "`n"
    . TextS16 . "`n" . TextS17 . "`n" . TextS18 . "`n" . TextS19 . "`n" . TextS20 . "`n"
    . TextS21 . "`n" . TextS22 . "`n" . TextS23 . "`n" . TextS24 . "`n" . TextS25 . "`n"
    . TextS26 . "`n" . TextS27 . "`n" . TextS28 . "`n" . TextS29 . "`n" . TextS30
    If (StrLen(Text) > MaxFileSize)
    {
    MsgBox, 262144, Import System, Save file is too big. Check edit boxes.
    Return
    }
    FileCreateDir, Saves
    If !(FileExist(FilePath))
    {
    FileAppend, %Text%, %FilePath%
    }
    Else
    {
    FileDelete, %FilePath%
    Sleep, 100
    FileAppend, %Text%, %FilePath%
    }
    Return
    }
    PerfectCast1Button:
    {
    global PerfectCast1 := !PerfectCast1
    EnsureCompatibleRolls()
    Tooltip("1 will " (PerfectCast1 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T3, % PerfectCast1 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast2Button:
    {
    global PerfectCast2 := !PerfectCast2
    EnsureCompatibleRolls()
    Tooltip("2 will " (PerfectCast2 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T4, % PerfectCast2 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast3Button:
    {
    global PerfectCast3 := !PerfectCast3
    EnsureCompatibleRolls()
    Tooltip("3 will " (PerfectCast3 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T5, % PerfectCast3 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast4Button:
    {
    global PerfectCast4 := !PerfectCast4
    EnsureCompatibleRolls()
    Tooltip("4 will " (PerfectCast4 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T6, % PerfectCast4 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast5Button:
    {
    global PerfectCast5 := !PerfectCast5
    EnsureCompatibleRolls()
    Tooltip("5 will " (PerfectCast5 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T7, % PerfectCast5 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast6Button:
    {
    global PerfectCast6 := !PerfectCast6
    EnsureCompatibleRolls()
    Tooltip("6 will " (PerfectCast6 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T8, % PerfectCast6 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast7Button:
    {
    global PerfectCast7 := !PerfectCast7
    EnsureCompatibleRolls()
    Tooltip("7 will " (PerfectCast7 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T9, % PerfectCast7 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast8Button:
    {
    global PerfectCast8 := !PerfectCast8
    EnsureCompatibleRolls()
    Tooltip("8 will " (PerfectCast8 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T10, % PerfectCast8 ? "Enabled" : "Disabled"
    Return
    }
    PerfectCast9Button:
    {
    global PerfectCast9 := !PerfectCast9
    EnsureCompatibleRolls()
    Tooltip("9 will " (PerfectCast9 ? "now be perfect casted." : "not be perfect casted."))
    GuiControl,, Page3T11, % PerfectCast9 ? "Enabled" : "Disabled"
    Return
    }
    DisableAllPerfectCastButton:
    {
    global PerfectCast1 := false
    global PerfectCast2 := false
    global PerfectCast3 := false
    global PerfectCast4 := false
    global PerfectCast5 := false
    global PerfectCast6 := false
    global PerfectCast7 := false
    global PerfectCast8 := false
    global PerfectCast9 := false
    Tooltip("Perfect casting has been disabled for everything.")
    GuiControl,, Page3T3, Disabled
    GuiControl,, Page3T4, Disabled
    GuiControl,, Page3T5, Disabled
    GuiControl,, Page3T6, Disabled
    GuiControl,, Page3T7, Disabled
    GuiControl,, Page3T8, Disabled
    GuiControl,, Page3T9, Disabled
    GuiControl,, Page3T10, Disabled
    GuiControl,, Page3T11, Disabled
    Return
    }
    KCast1Button:
    {
    global KCast1 := !KCast1
    Tooltip("1 will " (KCast1 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T3, % KCast1 ? "Enabled" : "Disabled"
    Return
    }
    KCast2Button:
    {
    global KCast2 := !KCast2
    Tooltip("2 will " (KCast2 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T4, % KCast2 ? "Enabled" : "Disabled"
    Return
    }
    KCast3Button:
    {
    global KCast3 := !KCast3
    Tooltip("3 will " (KCast3 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T5, % KCast3 ? "Enabled" : "Disabled"
    Return
    }
    KCast4Button:
    {
    global KCast4 := !KCast4
    Tooltip("4 will " (KCast4 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T6, % KCast4 ? "Enabled" : "Disabled"
    Return
    }
    KCast5Button:
    {
    global KCast5 := !KCast5
    Tooltip("5 will " (KCast1 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T7, % KCast5 ? "Enabled" : "Disabled"
    Return
    }
    KCast6Button:
    {
    global KCast6 := !KCast6
    Tooltip("6 will " (KCast6 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T8, % KCast6 ? "Enabled" : "Disabled"
    Return
    }
    KCast7Button:
    {
    global KCast7 := !KCast7
    Tooltip("7 will " (KCast7 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T9, % KCast7 ? "Enabled" : "Disabled"
    Return
    }
    KCast8Button:
    {
    global KCast8 := !KCast8
    Tooltip("8 will " (KCast8 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T10, % KCast8 ? "Enabled" : "Disabled"
    Return
    }
    KCast9Button:
    {
    global KCast9 := !KCast9
    Tooltip("9 will " (KCast9 ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4T11, % KCast9 ? "Enabled" : "Disabled"
    Return
    }
    KCastCriticalButton:
    {
    global KCastCritical := !KCastCritical
    Tooltip("Critcal attacks will " (KCastCritical ? "now be K-casted." : "not be K-casted."))
    GuiControl,, Page4B10, % "K-Cast Critical " (KCastCritical ? "(On)" : "(Off)")
    Return
    }
    DisableAllKCastButton:
    {
    global KCast1 := false
    global KCast2 := false
    global KCast3 := false
    global KCast4 := false
    global KCast5 := false
    global KCast6 := false
    global KCast7 := false
    global KCast8 := false
    global KCast9 := false
    global KCastCritical := false
    Tooltip, Perfect casting has been disabled for everything.
    SetTimer, RemoveTooltip, 2000
    GuiControl,, Page4T3, Disabled
    GuiControl,, Page4T4, Disabled
    GuiControl,, Page4T5, Disabled
    GuiControl,, Page4T6, Disabled
    GuiControl,, Page4T7, Disabled
    GuiControl,, Page4T8, Disabled
    GuiControl,, Page4T9, Disabled
    GuiControl,, Page4T10, Disabled
    GuiControl,, Page4T11, Disabled
    GuiControl,, Page4B10, K-Cast Critical`n(Off)
    Return
    }
    ChangeKCastActivationButton:
    {
    If (KCastActivation = 0)
    {
    global KCastActivation := 1
    Tooltip, K-casting is now in Partial mode. Activating if W key is not held.
    GuiControl,, Page4B12, K-Cast Mode`n(Partial)
    }
    Else If (KCastActivation = 1)
    {
    global KCastActivation := 2
    Tooltip, K-casting is now in Limited mode. Activating if W/A/S/D keys are not held.
    GuiControl,, Page4B12, K-Cast Mode`n(Limited)
    }
    Else If (KCastActivation = 2)
    {
    global KCastActivation := 0
    Tooltip, K-casting is now in Absolute mode. It will always activate.
    GuiControl,, Page4B12, K-Cast Mode`n(Absolute)
    }
    SetTimer, RemoveTooltip, 2000
    Return
    }
    Repeater1Button:
    {
    global Repeater1 := !Repeater1
    Tooltip("1 will " (Repeater1 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T3, % Repeater1 ? "Enabled" : "Disabled"
    Return
    }
    Repeater2Button:
    {
    global Repeater2 := !Repeater2
    Tooltip("2 will " (Repeater2 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T4, % Repeater2 ? "Enabled" : "Disabled"
    Return
    }
    Repeater3Button:
    {
    global Repeater3 := !Repeater3
    Tooltip("3 will " (Repeater3 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T5, % Repeater3 ? "Enabled" : "Disabled"
    Return
    }
    Repeater4Button:
    {
    global Repeater4 := !Repeater4
    Tooltip("4 will " (Repeater4 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T6, % Repeater4 ? "Enabled" : "Disabled"
    Return
    }
    Repeater5Button:
    {
    global Repeater5 := !Repeater5
    Tooltip("5 will " (Repeater5 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T7, % Repeater5 ? "Enabled" : "Disabled"
    Return
    }
    Repeater6Button:
    {
    global Repeater6 := !Repeater6
    Tooltip("6 will " (Repeater6 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T8, % Repeater6 ? "Enabled" : "Disabled"
    Return
    }
    Repeater7Button:
    {
    global Repeater7 := !Repeater7
    Tooltip("7 will " (Repeater7 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T9, % Repeater7 ? "Enabled" : "Disabled"
    Return
    }
    Repeater8Button:
    {
    global Repeater8 := !Repeater8
    Tooltip("8 will " (Repeater8 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T10, % Repeater8 ? "Enabled" : "Disabled"
    Return
    }
    Repeater9Button:
    {
    global Repeater9 := !Repeater9
    Tooltip("9 will " (Repeater9 ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5T11, % Repeater9 ? "Enabled" : "Disabled"
    Return
    }
    RepeaterCritButton:
    {
    global RepeaterCrit := !RepeaterCrit
    Tooltip("R will " (RepeaterCrit ? "now be repeated." : "not be repeated."))
    GuiControl,, Page5B10, % "Repeat R`n" (RepeaterCrit ? "(Enabled)" : "(Disabled)")
    Return
    }
    DisableAllRepeatersButton:
    {
    global Repeater1 := false
    global Repeater2 := false
    global Repeater3 := false
    global Repeater4 := false
    global Repeater5 := false
    global Repeater6 := false
    global Repeater7 := false
    global Repeater8 := false
    global Repeater9 := false
    global RepeaterCrit := false
    Tooltip("All repeaters have been disabled.")
    GuiControl,, Page5T3, Disabled
    GuiControl,, Page5T4, Disabled
    GuiControl,, Page5T5, Disabled
    GuiControl,, Page5T6, Disabled
    GuiControl,, Page5T7, Disabled
    GuiControl,, Page5T8, Disabled
    GuiControl,, Page5T9, Disabled
    GuiControl,, Page5T10, Disabled
    GuiControl,, Page5T11, Disabled
    GuiControl,, Page5B10, Repeat R`n(Disabled)
    Return
    }
    EnsureCompatibleRolls()
    {
    global CancelTrueFullFalse := false
    Return
    }
    UnbiddenMacroButton:
    {
    global UnbiddenMacro := !UnbiddenMacro
    Tooltip("Unbidden macro is now " (UnbiddenMacro ? "enabled." : "disabled."))
    GuiControl,, Page3B10, % "Unbidden Macro " (UnbiddenMacro ? "(On)" : "(Off)")
    Return
    }
    FastSSButton:
    {
    global FastSS := !FastSS
    Tooltip("Windows key to screenshot is now " (FastSS ? "enabled." : "disabled."))
    GuiControl,, Page3B11, % "Windows`nKey to SS`n" (FastSS ? "(On)" : "(Off)")
    Return
    }
    BrokenSKeyButton:
    {
    global BrokenSKey := !BrokenSKey
    Tooltip("S key is now " (BrokenSKey ? "disabled." : "enabled."))
    GuiControl,, Page3B12, % "Broken S Key " (BrokenSKey ? "(On)" : "(Off)")
    Return
    }
    GoldenTongueButton:
    {
    global GoldenTongue := !GoldenTongue
    Tooltip("Y " (GoldenTongue ? "now activates" : "no longer activates") " Golden Tongue.")
    GuiControl,, Page3B13, % "Golden Tongue Macro " (GoldenTongue ? "(On)" : "(Off)")
    Return
    }
    HoldRollButton:
    {
    global HoldRoll := Mod(HoldRoll + 1, 4)
    RollTT := (HoldRoll <= 1 ? (HoldRoll < 1 ? "Hold to Dodge is now off." : "Hold to Dodge is now manual.") : (HoldRoll < 3 ? "Hold to Dodge is now semi-automatic." : "Hold to Dodge is now automatic.") )
    Tooltip(RollTT)
    GuiControl,, Page3B21, % "Hold to Dodge`n" (HoldRoll <= 1 ? (HoldRoll < 1 ? "(Off)" : "(Manual)") : (HoldRoll < 3 ? "(S. Auto)" : "(Auto)") )
    Return
    }
    BellRollButton:
    {
    If (BellRoll == 0)
    {
    global BellRoll := 1
    Tooltip("Bell Roll is set to standing.")
    GuiControl,, Page3B19, Bell Roll (Standing)
    }
    Else If (BellRoll == 1)
    {
    global BellRoll := 2
    Tooltip("Bell Roll is set to circular.")
    GuiControl,, Page3B19, Bell Roll (Circular)
    }
    Else If (BellRoll == 2)
    {
    global BellRoll := 0
    Tooltip("Bell Roll is now disabled.")
    GuiControl,, Page3B19, Bell Roll (Disabled)
    }
    Return
    }
    MButtonFuncButton:
    {
    If (MButtonFunc == 0)
    {
    global MButtonFunc := 1
    Tooltip("M3 now instantly uppercuts.")
    GuiControl,, Page3B16, M3 Bound To`n(Uppercut)
    }
    Else If (MButtonFunc == 1)
    {
    global MButtonFunc := 2
    Tooltip("M3 now feints into a critical.")
    GuiControl,, Page3B16, % "M3 Bound To`n(" . M3FuncMantra . ", M1, M2, R)"
    }
    Else If (MButtonFunc == 2)
    {
    global MButtonFunc := 0
    Tooltip("M3 now functions normally.")
    GuiControl,, Page3B16, M3 Bound To`n(Normal)
    }
    Return
    }
    LastWordButton:
    {
    global LastWord := !LastWord
    LastWordTooltip := "Last Word macro (Pause/Break key) is now " (LastWord ? "enabled." : "disabled.")
    Tooltip(LastWordTooltip)
    GuiControl,, Page4B20, % "Last Word`n" (LastWord ? "(Enabled)" : "(Disabled)")
    Return
    }
    CharismaButton:
    {
    global CharismaTraining := !CharismaTraining
    CharismaTooltip := "Charisma Macro (P) is now " (CharismaTraining ? "enabled." : "disabled.")
    If (CharismaTraining)
    {
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "CharismaTrainer.exe")
    {
    Run, %A_LoopFileFullPath% "OPENTHRUAKAIMACROPACKONLYboxedbypvetag"
    }
    }
    }
    Else
    {
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "CharismaTrainer.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    }
    }
    Tooltip(CharismaTooltip)
    GuiControl,, Page4B21, % "Charisma Macro`n" (CharismaTraining ? "(Enabled)" : "(Disabled)")
    Sleep, 500
    Process, Exist, CharismaTrainer.exe
    PID := ErrorLevel
    If (!PID && CharismaTraining)
    {
    Tooltip("Could not open Charisma Trainer.")
    global CharismaTraining := false
    GuiControl,, Page4B21, Charisma Macro`n(Disabled)
    }
    Return
    }
    SpecterTimingButton:
    {
    global SpecterTiming := !SpecterTiming
    SpecterTooltip := "Spectral Dashes are " (SpecterTiming ? "now" : "no longer") " visualized."
    If (SpecterTiming)
    {
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "SpecterTiming.exe")
    {
    Run, %A_LoopFileFullPath% "OPENTHRUAKAIMACROPACKONLY"
    }
    }
    }
    Else
    {
    Loop, Files, % A_ScriptDir "\Important\Dependencies\*.exe", R
    {
    If (A_LoopFileName == "SpecterTiming.exe")
    {
    Process, Exist, %A_LoopFileName%
    PID := ErrorLevel
    If (PID)
    {
    Run, %A_LoopFileFullPath% "to close"
    }
    }
    }
    }
    Tooltip(SpecterTooltip)
    GuiControl,, Page5B11, % "Spectral Dash Visual`n" (SpecterTiming ? "(Enabled)" : "(Disabled)")
    Sleep, 1000
    Process, Exist, SpecterTiming.exe
    PID := ErrorLevel
    If (!PID && SpecterTiming)
    {
    Tooltip("Could not open Specter Cooldown Visualizer.")
    global SpecterTiming := false
    GuiControl,, Page5B11, Spectral Dash Visual`n(Disabled)
    }
    Return
    }
    FlashMapButton:
    {
    global FlashMap := !FlashMap
    FlashMapTooltip := "Flash Map is now " (FlashMap ? "enabled." : "disabled.")
    Tooltip(FlashMapTooltip)
    GuiControl,, Page4B22, % "Flash Map`n" (FlashMap ? "(Enabled)" : "(Disabled)")
    Return
    }
    Overlay1Button:
    {
    global Overlay1Enabled := !Overlay1Enabled
    OverlayTooltip := "Overlay 1 is now " (Overlay1Enabled ? "enabled." : "disabled.")
    Tooltip(OverlayTooltip)
    GuiControl,, Page6B1, % "Overlay 1 " (Overlay1Enabled ? "(Enabled)" : "(Disabled)")
    Return
    }
    Overlay1SettingsButton:
    {
    Gui, Overlay1Settings:New
    Gui, Overlay1Settings:Color, 313338
    Gui, Overlay1Settings:Font, s12, Verdana
    SizeHor := 560
    SizeVer := 200
    Hor := A_ScreenWidth / 2 - SizeHor / 2
    Ver := A_ScreenHeight / 2 - SizeVer / 2
    TextColor := "FFFFFF"
    Gui, Overlay1Settings:Add, Text, x47 y60 c%Overlay1Hex%, Hex Color Code
    Gui, Overlay1Settings:Add, Text, x227 y60 c%TextColor%, Transparency
    Gui, Overlay1Settings:Add, Edit, w120 h60 x50 y80 vVisualOverlay1Hex, % Overlay1Hex
    Gui, Overlay1Settings:Add, Edit, w120 h60 x220 y80 vVisualOverlay1Percent, % Overlay1Percent
    Gui, Overlay1Settings:Add, Button, w120 h60 x390 y80 gSubmit1, Save
    Gui, Overlay1Settings:Show, w%SizeHor% h%SizeVer% x%Hor% y%Ver%, Overlay 1 Settings
    Return
    }
    Submit1:
    {
    Gui, Overlay1Settings:Submit
    If (RegExMatch(VisualOverlay1Percent, "^(100|[1-9]?\d)$", Match))
    {
    If (Percent <= 100)
    {
    global Overlay1Percent := Match1
    }
    Else
    {
    Tooltip("Percent must be an integer from 0 to 100.")
    Gui, Overlay1Settings:Destroy
    Return
    }
    }
    Else
    {
    Tooltip("Invalid percent. Percent must be an integer from 0 to 100.")
    Gui, Overlay1Settings:Destroy
    Return
    }
    If (RegExMatch(VisualOverlay1Hex, "i)#{0,1}([A-F0-9]{6}|[A-F0-9]{3})", Match))
    {
    global Overlay1Hex := Match1
    }
    Else
    {
    Tooltip("Invalid hex code.")
    Gui, Overlay1Settings:Destroy
    Return
    }
    Tooltip("Successfully saved.")
    Gui, Overlay1Settings:Destroy
    Return
    }
    Overlay2Button:
    {
    global Overlay2Enabled := !Overlay2Enabled
    OverlayTooltip := "Overlay 2 is now " (Overlay2Enabled ? "enabled." : "disabled.")
    Tooltip(OverlayTooltip)
    GuiControl,, Page6B3, % "Overlay 2 " (Overlay2Enabled ? "(Enabled)" : "(Disabled)")
    Return
    }
    Overlay2SettingsButton:
    {
    Gui, Overlay2Settings:New
    Gui, Overlay2Settings:Color, 313338
    Gui, Overlay2Settings:Font, s12, Verdana
    SizeHor := 560
    SizeVer := 200
    Hor := A_ScreenWidth / 2 - SizeHor / 2
    Ver := A_ScreenHeight / 2 - SizeVer / 2
    TextColor := "FFFFFF"
    Gui, Overlay2Settings:Add, Text, x47 y60 c%Overlay2Hex%, Hex Color Code
    Gui, Overlay2Settings:Add, Text, x227 y60 c%TextColor%, Transparency
    Gui, Overlay2Settings:Add, Edit, w120 h60 x50 y80 vVisualOverlay2Hex, % Overlay2Hex
    Gui, Overlay2Settings:Add, Edit, w120 h60 x220 y80 vVisualOverlay2Percent, % Overlay2Percent
    Gui, Overlay2Settings:Add, Button, w120 h60 x390 y80 gSubmit2, Save
    Gui, Overlay2Settings:Show, w%SizeHor% h%SizeVer% x%Hor% y%Ver%, Overlay 2 Settings
    Return
    }
    Submit2:
    {
    Gui, Overlay2Settings:Submit
    If (RegExMatch(VisualOverlay2Percent, "^(100|[1-9]?\d)$", Match))
    {
    If (Percent <= 100)
    {
    global Overlay2Percent := Match1
    }
    Else
    {
    Tooltip("Percent must be an integer from 0 to 100.")
    Gui, Overlay2Settings:Destroy
    Return
    }
    }
    Else
    {
    Tooltip("Invalid percent. Percent must be an integer from 0 to 100.")
    Gui, Overlay2Settings:Destroy
    Return
    }
    If (RegExMatch(VisualOverlay2Hex, "i)#{0,1}([A-F0-9]{6}|[A-F0-9]{3})", Match))
    {
    global Overlay2Hex := Match1
    }
    Else
    {
    Tooltip("Invalid hex code.")
    Gui, Overlay2Settings:Destroy
    Return
    }
    Tooltip("Successfully saved.")
    Gui, Overlay2Settings:Destroy
    Return
    }
    Overlay3Button:
    {
    global Overlay3Enabled := !Overlay3Enabled
    OverlayTooltip := "Overlay 3 is now " (Overlay3Enabled ? "enabled." : "disabled.")
    Tooltip(OverlayTooltip)
    GuiControl,, Page6B5, % "Overlay 3 " (Overlay3Enabled ? "(Enabled)" : "(Disabled)")
    Return
    }
    Overlay3SettingsButton:
    {
    Gui, Overlay3Settings:New
    Gui, Overlay3Settings:Color, 313338
    Gui, Overlay3Settings:Font, s12, Verdana
    SizeHor := 560
    SizeVer := 200
    Hor := A_ScreenWidth / 2 - SizeHor / 2
    Ver := A_ScreenHeight / 2 - SizeVer / 2
    TextColor := "FFFFFF"
    Gui, Overlay3Settings:Add, Text, x47 y60 c%Overlay3Hex%, Hex Color Code
    Gui, Overlay3Settings:Add, Text, x227 y60 c%TextColor%, Transparency
    Gui, Overlay3Settings:Add, Edit, w120 h60 x50 y80 vVisualOverlay3Hex, % Overlay3Hex
    Gui, Overlay3Settings:Add, Edit, w120 h60 x220 y80 vVisualOverlay3Percent, % Overlay3Percent
    Gui, Overlay3Settings:Add, Button, w120 h60 x390 y80 gSubmit3, Save
    Gui, Overlay3Settings:Show, w%SizeHor% h%SizeVer% x%Hor% y%Ver%, Overlay 3 Settings
    Return
    }
    Submit3:
    {
    Gui, Overlay3Settings:Submit
    If (RegExMatch(VisualOverlay3Percent, "^(100|[1-9]?\d)$", Match))
    {
    If (Percent <= 100)
    {
    global Overlay3Percent := Match1
    }
    Else
    {
    Tooltip("Percent must be an integer from 0 to 100.")
    Gui, Overlay3Settings:Destroy
    Return
    }
    }
    Else
    {
    Tooltip("Invalid percent. Percent must be an integer from 0 to 100.")
    Gui, Overlay3Settings:Destroy
    Return
    }
    If (RegExMatch(VisualOverlay3Hex, "i)#{0,1}([A-F0-9]{6}|[A-F0-9]{3})", Match))
    {
    global Overlay3Hex := Match1
    }
    Else
    {
    Tooltip("Invalid hex code.")
    Gui, Overlay3Settings:Destroy
    Return
    }
    Tooltip("Successfully saved.")
    Gui, Overlay3Settings:Destroy
    Return
    }
    PanicParryButton:
    {
    global PanicParry := !PanicParry
    PanicParryTT := "Panic Parry (Z) is now " (PanicParry ? "enabled." : "disabled.")
    Tooltip(PanicParryTT)
    GuiControl,, Page4B13, % "Panic Parry " (PanicParry ? "(Enabled)" : "(Disabled)")
    Return
    }
    BetterParryButton:
    {
    global BetterParry := !BetterParry
    BetterParryTT := "Better Parry is now " (BetterParry ? "enabled." : "disabled.")
    Tooltip(BetterParryTT)
    GuiControl,, Page4B14, % "Better Parry " (BetterParry ? "(Enabled)" : "(Disabled)")
    Return
    }
    M1ProofButton:
    {
    global M1Proof := !M1Proof
    Tooltip("M1 safety checks are now " (M1Proof ? "disabled." : "enabled."))
    GuiControl,, Page3B14, % "M1 Checks " (M1Proof ? "(Disabled)" : "(Enabled)")
    Return
    }
    SnapTapADButton:
    {
    global SnapTapAD := !SnapTapAD
    Tooltip("Razer Snap Tap (A/D) is now " (SnapTapAD ? "enabled." : "disabled."))
    GuiControl,, Page6B7, % "Snap Tap A/D`n" (SnapTapAD ? "(Enabled)" : "(Disabled)")
    Return
    }
    SnapTapWSButton:
    {
    global SnapTapWS := !SnapTapWS
    Tooltip("Razer Snap Tap (W/S) is now " (SnapTapWS ? "enabled." : "disabled."))
    GuiControl,, Page6B8, % "Snap Tap W/S`n" (SnapTapWS ? "(Enabled)" : "(Disabled)")
    Return
    }
    SnapTapVertButton:
    {
    global SnapTapVert := !SnapTapVert
    Tooltip("Razer Snap Tap (Up Arrow/Down Arrow) is now " (SnapTapVert ? "enabled." : "disabled."))
    GuiControl,, Page6B10, % "Snap Tap Up/Down`n" (SnapTapVert ? "(Enabled)" : "(Disabled)")
    Return
    }
    SnapTapHorButton:
    {
    global SnapTapHor := !SnapTapHor
    Tooltip("Razer Snap Tap (Left Arrow/Right Arrow) is now " (SnapTapHor ? "enabled." : "disabled."))
    GuiControl,, Page6B9, % "Snap Tap Left/Right`n" (SnapTapHor ? "(Enabled)" : "(Disabled)")
    Return
    }
    SafeFeintButton:
    {
    global SafeFeint := !SafeFeint
    Tooltip("Safe Feint is now " (SafeFeint ? "enabled." : "disabled."))
    GuiControl,, Page3B15, % "Safe Feint " (SafeFeint ? "(Enabled)" : "(Disabled)")
    Return
    }
    CheckIfIsExpired()
    {
    global Expired := (CurrentDate >= ExpirationDate)
    Return
    }
    !m::
    {
    NewGui(true)
    Return
    }
    NewGui(Show)
    {
    global Page := 1
    MakeGui(1)
    ShowPage()
    Return
    }
    Update(Page)
    {
    HideAll()
    ShowPage()
    Return
    }
    SetMPIcon()
    {
    If (CustomTheme && CustomIconPath != "" && CustomIconPath != "Default")
    {
    If FileExist(A_ScriptDir "\Important\Custom Themes\" CustomIconPath)
    {
    Menu, Tray, Icon, %A_ScriptDir%\Important\Custom Themes\%CustomIconPath%
    Return
    }
    Tooltip("Unable to load custom icon.")
    }
    Loop, Files, % A_ScriptDir "\Important\Default Theme\*.ico", R
    {
    If (A_LoopFileName == "Akai.ico")
    {
    Menu, Tray, Icon, %A_LoopFileFullPath%
    Return
    }
    }
    Loop, Files, *.ico, R
    {
    If (A_LoopFileName == "Akai.ico")
    {
    Menu, Tray, Icon, %A_LoopFileFullPath%
    Return
    }
    }
    Return
    }
    ShowPage()
    {
    If (Page = 1)
    {
    GuiControl,, Page1T4, % InvC ? "Enabled" : "Disabled"
    GuiControl,, Page1T5, % Movement ? "Enabled" : "Disabled"
    GuiControl,, Page1T6, % Pender ? "Enabled" : "Disabled"
    GuiControl,, Page1T7, % Autoshout ? "Enabled" : "Disabled"
    GuiControl,, Page1T8, % TrashTalk ? "Enabled" : "Disabled"
    GuiControl,, Page1T11, % FastLog ? "Enabled" : "Disabled"
    GuiControl,, Page1T15, % BetterReinf ? "Enabled" : "Disabled"
    Loop, 37
    {
    If (A_Index = 9 || A_Index = 10 || A_Index >= 12 && A_Index <= 14)
    {
    Continue
    }
    GuiControl, Show, Page%Page%T%A_Index%
    }
    If (VoMCallouts)
    {
    GuiControl, Show, Page1T10
    }
    Else
    {
    GuiControl, Show, Page1T9
    }
    If !(Bombs)
    {
    GuiControl, Show, Page1T12
    }
    Else
    {
    If !(Delayed)
    {
    GuiControl, Show, Page1T13
    }
    Else
    {
    GuiControl, Show, Page1T14
    }
    }
    Loop, 19
    {
    GuiControl, Show, Page%Page%B%A_Index%
    }
    }
    Else If (Page = 2)
    {
    GuiControl,, Page2T3, % RollCast1 ? "Enabled" : "Disabled"
    GuiControl,, Page2T4, % RollCast2 ? "Enabled" : "Disabled"
    GuiControl,, Page2T5, % RollCast3 ? "Enabled" : "Disabled"
    GuiControl,, Page2T6, % RollCast4 ? "Enabled" : "Disabled"
    GuiControl,, Page2T7, % RollCast5 ? "Enabled" : "Disabled"
    GuiControl,, Page2T8, % RollCast6 ? "Enabled" : "Disabled"
    GuiControl,, Page2T9, % RollCast7 ? "Enabled" : "Disabled"
    GuiControl,, Page2T10, % RollCast8 ? "Enabled" : "Disabled"
    GuiControl,, Page2T11, % RollCast9 ? "Enabled" : "Disabled"
    RCC := ""
    If (RollCastCrit = 0)
    {
    RCC := "(Off)"
    }
    Else If (RollCastCrit = 1)
    {
    RCC := "(Roll)"
    }
    Else If (RollCastCrit = 2)
    {
    RCC := "(Air Dash)"
    }
    GuiControl,, Page2B10, Crit Stack %RCC%
    GuiControl,, Page2B11, % "Roll Cast Delay " (RollCastDelay ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page2B12, % "Roll Type " (CancelTrueFullFalse ? "(Cancel)" : "(Full)")
    RCM := ""
    If (RollcastMovement = 0)
    {
    RCM := "(Manual)"
    }
    Else If (RollcastMovement = 1)
    {
    RCM := "(Partial)"
    }
    Else If (RollcastMovement = 2)
    {
    RCM := "(Always)"
    }
    GuiControl,, Page2B13, Rollcast Movement Support %RCM%
    GuiControl,, Page2B14, % "Roll M1 " (RollM1 ? "(On)" : "(Off)")
    GuiControl,, Page2B15, % "Auto GG`nOn Bell`n" (ReaperGG ? "(On)" : "(Off)")
    GuiControl,, Page2B16, % "Auto GG`nOn Grip`n" (ChimeGG ? "(On)" : "(Off)")
    GuiControl,, EditBox1, %GGText%
    GuiControl,, Page2B21, % "Roll M1 CD (" SubStr(RollM1CD // 100, 1, 1) "."  SubStr(RollM1CD // 100, 2, 2) ")"
    Loop, 22
    {
    GuiControl, Show, Page%Page%T%A_Index%
    }
    Loop, 23
    {
    GuiControl, Show, Page%Page%B%A_Index%
    }
    GuiControl, Show, EditBox1
    }
    Else If (Page = 3)
    {
    If (MButtonFunc == 0)
    {
    M3Func := "(Normal)"
    }
    Else If (MButtonFunc == 1)
    {
    M3Func := "(Uppercut)"
    }
    Else If (MButtonFunc == 2)
    {
    M3Func := % "`n(" . M3FuncMantra . ", M1, M2, R)"
    }
    GuiControl,, Page3T3, % PerfectCast1 ? "Enabled" : "Disabled"
    GuiControl,, Page3T4, % PerfectCast2 ? "Enabled" : "Disabled"
    GuiControl,, Page3T5, % PerfectCast3 ? "Enabled" : "Disabled"
    GuiControl,, Page3T6, % PerfectCast4 ? "Enabled" : "Disabled"
    GuiControl,, Page3T7, % PerfectCast5 ? "Enabled" : "Disabled"
    GuiControl,, Page3T8, % PerfectCast6 ? "Enabled" : "Disabled"
    GuiControl,, Page3T9, % PerfectCast7 ? "Enabled" : "Disabled"
    GuiControl,, Page3T10, % PerfectCast8 ? "Enabled" : "Disabled"
    GuiControl,, Page3T11, % PerfectCast9 ? "Enabled" : "Disabled"
    If (BellRoll == 0)
    {
    BellText := "(Disabled)"
    }
    Else If (BellRoll == 1)
    {
    BellText := "(Standing)"
    }
    Else If (BellRoll == 2)
    {
    BellText := "(Circular)"
    }
    RollType := (HoldRoll <= 1 ? (HoldRoll < 1 ? "(Off)" : "(Manual)") : (HoldRoll < 3 ? "(S. Auto)" : "(Auto)"))
    GuiControl,, Page3B19, % "Bell Roll " BellText
    GuiControl,, Page3B20, % "Extra Roll Delay `n(" BellSleep " ms)"
    GuiControl,, Page3B21, % "Hold to Dodge`n" RollType
    GuiControl,, Page3B10, % "Unbidden Macro " (UnbiddenMacro ? "(On)" : "(Off)")
    GuiControl,, Page3B11, % "Windows`nKey to SS`n" (FastSS ? "(On)" : "(Off)")
    GuiControl,, Page3B12, % "Broken S Key " (BrokenSKey ? "(On)" : "(Off)")
    GuiControl,, Page3B13, % "Golden Tongue Macro " (GoldenTongue ? "(On)" : "(Off)")
    GuiControl,, Page3B14, % "M1 Checks " (M1Proof ? "(Disabled)" : "(Enabled)")
    GuiControl,, Page3B15, % "Roblox Macros " (DisableRoblox ? "(Paused)" : "(Enabled)")
    GuiControl,, Page3B16, % "M3 Bound To " M3Func
    GuiControl,, EditBox2, %M3FuncMantra%
    Loop, 21
    {
    GuiControl, Show, Page%Page%T%A_Index%
    }
    Loop, 23
    {
    GuiControl, Show, Page%Page%B%A_Index%
    }
    GuiControl, Show, EditBox2
    }
    Else If (Page = 4)
    {
    GuiControl,, Page4T3, % KCast1 ? "Enabled" : "Disabled"
    GuiControl,, Page4T4, % KCast2 ? "Enabled" : "Disabled"
    GuiControl,, Page4T5, % KCast3 ? "Enabled" : "Disabled"
    GuiControl,, Page4T6, % KCast4 ? "Enabled" : "Disabled"
    GuiControl,, Page4T7, % KCast5 ? "Enabled" : "Disabled"
    GuiControl,, Page4T8, % KCast6 ? "Enabled" : "Disabled"
    GuiControl,, Page4T9, % KCast7 ? "Enabled" : "Disabled"
    GuiControl,, Page4T10, % KCast8 ? "Enabled" : "Disabled"
    GuiControl,, Page4T11, % KCast9 ? "Enabled" : "Disabled"
    GuiControl,, Page4B10, % "K-Cast Critical " (KCastCritical ? "(On)" : "(Off)")
    If (KCastActivation = 0)
    {
    KCastMode := "(Absolute)"
    }
    Else If (KCastActivation = 1)
    {
    KCastMode := "(Partial)"
    }
    Else If (KCastActivation = 2)
    {
    KCastMode := "(Limited)"
    }
    GuiControl,, Page4B12, % "K-Cast Mode " KCastMode
    GuiControl,, Page4B13, % "Panic Parry " (PanicParry ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page4B14, % "Better Parry " (BetterParry ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page4B15, % "Safe Feint " (SafeFeint ? "(Enabled)" : "(Disabled)")
    GuiControl,, EditBox5, %SafetyTime%
    GuiControl,, EditBox4, %KCastDistance%
    GuiControl,, EditBox3, %ChatDuration%
    GuiControl,, Page4B20, % "Last Word`n" (LastWord ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page4B21, % "Charisma Macro`n" (CharismaTraining ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page4B22, % "Flash Map`n" (FlashMap ? "(Enabled)" : "(Disabled)")
    Loop, 26
    {
    GuiControl, Show, Page%Page%T%A_Index%
    }
    Loop, 24
    {
    GuiControl, Show, Page%Page%B%A_Index%
    }
    GuiControl, Show, EditBox3
    GuiControl, Show, EditBox4
    GuiControl, Show, EditBox5
    }
    Else If (Page = 5)
    {
    GuiControl,, Page5T3, % Repeater1 ? "Enabled" : "Disabled"
    GuiControl,, Page5T4, % Repeater2 ? "Enabled" : "Disabled"
    GuiControl,, Page5T5, % Repeater3 ? "Enabled" : "Disabled"
    GuiControl,, Page5T6, % Repeater4 ? "Enabled" : "Disabled"
    GuiControl,, Page5T7, % Repeater5 ? "Enabled" : "Disabled"
    GuiControl,, Page5T8, % Repeater6 ? "Enabled" : "Disabled"
    GuiControl,, Page5T9, % Repeater7 ? "Enabled" : "Disabled"
    GuiControl,, Page5T10, % Repeater8 ? "Enabled" : "Disabled"
    GuiControl,, Page5T11, % Repeater9 ? "Enabled" : "Disabled"
    ParryVisualButtonText := "(Off)"
    If (ParryIndicator > 0)
    {
    If (ParryIndicator = 1)
    {
    ParryVisualButtonText := "(On, 1s.)"
    }
    Else If (ParryIndicator = 2)
    {
    ParryVisualButtonText := "(On, 2s.)"
    }
    Else If (ParryIndicator = 3)
    {
    ParryVisualButtonText := "(On, 3s.)"
    }
    Else If (ParryIndicator = 4)
    {
    ParryVisualButtonText := "(On, 15s.)"
    }
    }
    GuiControl,, Page5B10, % "Repeat R`n" (RepeaterCrit ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page5B11, % "Spectral Dash Visual`n" (SpecterTiming ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page5B12, % "Fast Gank Ping " (FastGankPing ? "(On)" : "(Off)")
    GuiControl,, Page5B13, % "Parry State Visual`n" ParryVisualButtonText
    Loop, 20
    {
    GuiControl, Show, Page%Page%T%A_Index%
    }
    Loop, 16
    {
    GuiControl, Show, Page%Page%B%A_Index%
    }
    }
    Else If (Page = 6)
    {
    GuiControl,, Page6B1, % "Overlay 1 " (Overlay1Enabled ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B3, % "Overlay 2 " (Overlay2Enabled ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B5, % "Overlay 3 " (Overlay3Enabled ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B7, % "Snap Tap A/D`n" (SnapTapAD ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B8, % "Snap Tap W/S`n" (SnapTapWS ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B9, % "Snap Tap Left/Right`n" (SnapTapHor ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B10, % "Snap Tap Up/Down`n" (SnapTapVert ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B11, % "Fast Wisp Macro`n" (FastWisp ? "(Enabled)" : "(Disabled)")
    GuiControl,, Page6B13, % "Advertise Upon Loading`n" (AdvertiseOnLoad ? "(On)" : "(Off)")
    GuiControl,, Page6B14, % "Overnight Advert`n" (OvernightAdvert ? "(On)" : "(Off)")
    Loop, 4
    {
    GuiControl, Show, Page%Page%T%A_Index%
    }
    Loop, 15
    {
    GuiControl, Show, Page%Page%B%A_Index%
    }
    }
    GuiControl,, Always3, Page %Page%
    Return
    }
    HideAll()
    {
    HidePage(1, 37, 16)
    HidePage(2, 22, 23)
    HidePage(3, 21, 23)
    HidePage(4, 26, 24)
    HidePage(5, 20, 16)
    HidePage(6, 4, 15)
    GuiControl, Hide, EditBox1
    GuiControl, Hide, EditBox2
    GuiControl, Hide, EditBox3
    GuiControl, Hide, EditBox4
    GuiControl, Hide, EditBox5
    Return
    }
    HidePage(GivenPage, NumT, NumB)
    {
    Loop, % NumT
    {
    GuiControl, Hide, Page%GivenPage%T%A_Index%
    }
    Loop, % NumB
    {
    GuiControl, Hide, Page%GivenPage%B%A_Index%
    }
    Return
    }
    ChangeTheme:
    {
    Try
    {
    Menu, Themes, DeleteAll
    }
    Menu, Themes, Add, Dark, SetTheme1
    Menu, Themes, Add, Midnight, SetTheme2
    Menu, Themes, Add, Galactic, SetTheme3
    Menu, Themes, Add, Akai Red, SetTheme4
    Menu, Themes, Add, Akai Crimson, SetTheme5
    Menu, Themes, Add, Galactic Akai Red, SetTheme6
    Menu, Themes, Add, Galactic Akai Crimson, SetTheme7
    Menu, Themes, Add, Light, SetTheme8
    i := 1
    Files := []
    Loop, Files, % A_ScriptDir "\Important\Custom Themes\*.txt", R
    {
    FileRead, Content, %A_LoopFileFullPath%
    If (InStr(Content, "Custom"))
    {
    HasFile := true
    Files[i++] := StrSplit(StrReplace(Content, "`r", ""), "`n")[2]
    }
    }
    For Index, File in Files
    {
    Menu, Themes, Add, %File%, SetCustomTheme
    }
    Menu, Themes, Add, Toggle Borders, ChangeBorders
    Menu, Themes, Show
    Return
    }
    SetCustomTheme:
    {
    global CustomTheme := true
    global CustomThemeName := A_ThisMenuItem
    FoundStuff := false
    Loop, Files, % A_ScriptDir "\Important\Custom Themes\*.txt", R
    {
    FileRead, Content, %A_LoopFileFullPath%
    SaveLines := StrSplit(StrReplace(Content, "`r", ""), "`n")
    If (InStr(Content, "Custom") && SaveLines[2] = A_ThisMenuItem)
    {
    global CustomTextColor := SaveLines[3]
    global CustomGuiColor := SaveLines[4]
    global CustomBGPath := SaveLines[5]
    If (SaveLines.Length() >= 6)
    {
    global CustomIconPath := SaveLines[6]
    }
    FoundStuff := true
    Break
    }
    }
    If !(FoundStuff)
    {
    Tooltip("Unable to locate save data for theme: " A_ThisMenuItem ".")
    MsgBox, 262148, Cannot Find Theme, Would you like to remove the theme from Important\Custom Themes?
    IfMsgBox Yes
    {
    If (FileExist(A_ScriptDir "\Important\Custom Themes\" A_ThisMenuItem) = "D")
    {
    FileRemoveDir, % A_ScriptDir "\Important\Custom Themes\" A_ThisMenuItem, 1
    Tooltip("Successfully removed " A_ThisMenuItem ".")
    Return
    }
    Tooltip("Could not find " A_ThisMenuItem " in Important\Custom Themes.")
    }
    Return
    }
    MakeGui(1)
    Return
    }
    ChangeBorders:
    {
    global Borderless := !Borderless
    HasBorders := % Borderless ? "disabled" : "enabled"
    Tooltip("Borders are now " . HasBorders . ".")
    MakeGui(1)
    Return
    }
    SetTheme1:
    {
    global CustomTheme := false
    global Theme := 1
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    SetTheme2:
    {
    global CustomTheme := false
    global Theme := 2
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    SetTheme3:
    {
    global CustomTheme := false
    global Theme := 3
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    SetTheme4:
    {
    global CustomTheme := false
    global Theme := 4
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    SetTheme5:
    {
    global CustomTheme := false
    global Theme := 5
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    SetTheme6:
    {
    global CustomTheme := false
    global Theme := 6
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    SetTheme7:
    {
    global CustomTheme := false
    global Theme := 7
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    SetTheme8:
    {
    global CustomTheme := false
    global Theme := 8
    Tooltip("Theme set to " A_ThisMenuItem ".")
    MakeGui(1)
    Return
    }
    GalaxyBG()
    {
    SpaceBGPath := ""
    Loop, Files, % A_ScriptDir "\Important\Default Theme\*.jpg", R
    {
    If (A_LoopFileName == "Space.jpg")
    {
    SpaceBGPath := A_LoopFileFullPath
    }
    }
    If (SpaceBGPath == "")
    {
    Loop, Files, *.jpg*, R
    {
    If (A_LoopFileName == "Space.jpg")
    {
    SpaceBGPath := A_LoopFileFullPath
    }
    }
    }
    If (SpaceBGPath != "")
    {
    Gui, Add, Picture, vPictureID w1072 h603 x0 y0, %SpaceBGPath%
    }
    Return
    }
    Stylist()
    {
    If (CustomTheme && FileExist(A_ScriptDir "\Important\Custom Themes\" CustomBGPath))
    {
    global TextColor := CustomTextColor
    Gui, Color, %CustomGuiColor%
    Gui, Add, Picture, vPictureID w1072 h603 x0 y0, % A_ScriptDir "\Important\Custom Themes\" CustomBGPath
    Tooltip("Changing theme to " CustomThemeName ".")
    Return
    }
    Else
    {
    Tooltip("Unable to change theme to " CustomThemeName ".")
    MsgBox, 262148, Cannot Find Theme, Would you like to remove the theme from Important\Custom Themes?
    IfMsgBox Yes
    {
    Loop, Files, % A_ScriptDir . "\Important\Custom Themes", D
    {
    ThisDir := A_LoopFileFullPath
    Loop, Files, % ThisDir . "\*.txt", R
    {
    FileRead, Content, %A_LoopFileFullPath%
    SaveLines := StrSplit(StrReplace(Content, "`r", ""), "`n")
    If (SaveLines[2] = CustomThemeName && SaveLines[3] = CustomTextColor && SaveLines[4] = CustomGuiColor && SaveLines[5] = CustomBGPath)
    {
    FileRemoveDir, %ThisDir%, 1
    Tooltip("Successfully removed " CustomThemeName ".")
    global CustomTheme := false
    global CustomThemeName := ""
    global CustomTextColor := ""
    global CustomGuiColor := ""
    global CustomBGPath := ""
    global CustomIconPath := ""
    NoStylist()
    Update(1)
    Return
    }
    }
    }
    Tooltip("Unable to remove " CustomThemeName " from Important\Custom Themes.")
    }
    global CustomTheme := false
    global CustomThemeName := ""
    global CustomTextColor := ""
    global CustomGuiColor := ""
    global CustomBGPath := ""
    global CustomIconPath := ""
    NoStylist()
    Update(1)
    }
    Return
    }
    NoStylist()
    {
    If (Borderless)
    {
    Gui, -Border +LastFound
    }
    Else
    {
    Gui, +Border +LastFound
    }
    If (CustomTheme)
    {
    Stylist()
    Return
    }
    If (Theme = 1)
    {
    Gui, Color, 313338
    global TextColor := "FFFFFF"
    }
    Else If (Theme = 2)
    {
    Gui, Color, 000000
    global TextColor := "FFFFFF"
    }
    Else If (Theme = 3)
    {
    Gui, Color, 000000
    GalaxyBG()
    global TextColor := "FFFFFF"
    }
    Else If (Theme = 4)
    {
    Gui, Color, 000000
    global TextColor := "D63A3A"
    }
    Else If (Theme = 5)
    {
    Gui, Color, 000000
    global TextColor := "C81414"
    }
    Else If (Theme = 6)
    {
    Gui, Color, 000000
    GalaxyBG()
    global TextColor := "D63A3A"
    }
    Else If (Theme = 7)
    {
    Gui, Color, 000000
    GalaxyBG()
    global TextColor := "C81414"
    }
    Else If (Theme = 8)
    {
    Gui, Color, FFFFFF
    global TextColor := "000000"
    }
    Return
    }
    MakeGui(Page)
    {
    SetMPIcon()
    Gui, Destroy
    NoStylist()
    Gui, Add, Text, x43 y70 vPage1T1 Hidden c%TextColor%,  Toggle:
    Gui, Add, Text, x43 y175 vPage1T2 Hidden c%TextColor%, Keybinds:
    Gui, Add, Text, w80 x43 y325 vPage1T3 Hidden c%TextColor%, Fast Toggle Key:`n`n(Alt + Num)
    Gui, Add, Button, w60 h50 x145 y50 vPage1B1 Hidden gInvCButton BackgroundTrans Center 0x200 E0x200, Inverse Controls
    Gui, Add, Button, w60 h50 x240 y50 vPage1B2 Hidden gMovementButton BackgroundTrans Center 0x200 E0x200, Auto`nSide`nSprint
    Gui, Add, Button, w60 h50 x335 y50 vPage1B3 Hidden gPenderButton BackgroundTrans Center 0x200 E0x200, Pender
    Gui, Add, Button, w60 h50 x430 y50 vPage1B4 Hidden gAutoshoutButton BackgroundTrans Center 0x200 E0x200, Autoshout
    Gui, Add, Button, w60 h50 x525 y50 vPage1B5 Hidden gTrashTalkButton BackgroundTrans Center 0x200 E0x200, Trash Talk
    Gui, Add, Button, w60 h50 x620 y50 vPage1B6 Hidden gVoMButton BackgroundTrans Center 0x200 E0x200, Vow`nor`nCallouts
    Gui, Add, Button, w60 h50 x715 y50 vPage1B7 Hidden gFastLogButton BackgroundTrans Center 0x200 E0x200, Fast Log
    Gui, Add, Button, w60 h50 x810 y50 vPage1B8 Hidden gBombsButton BackgroundTrans Center 0x200 E0x200, Bombs
    Gui, Add, Button, w60 h50 x905 y50 vPage1B9 Hidden gBetterReinforceButton BackgroundTrans Center 0x200 E0x200, Better Reinforce
    Gui, Add, Text, x155 y125 vPage1T4  Hidden c%TextColor%, % InvC ? "Enabled" : "Disabled"
    Gui, Add, Text, x250 y125 vPage1T5  Hidden c%TextColor%, % Movement ? "Enabled" : "Disabled"
    Gui, Add, Text, x345 y125 vPage1T6  Hidden c%TextColor%, % Pender ? "Enabled" : "Disabled"
    Gui, Add, Text, x440 y125 vPage1T7  Hidden c%TextColor%, % Autoshout ? "Enabled" : "Disabled"
    Gui, Add, Text, x535 y125 vPage1T8 Hidden c%TextColor%, % TrashTalk ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage1T9 Hidden x631 y125 c%TextColor%, Callouts
    Gui, Add, Text, vPage1T10 Hidden x638 y125 c%TextColor%, VoM
    Gui, Add, Text, vPage1T11 Hidden x725 y125 c%TextColor%, % FastLog ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage1T12 Hidden x832 y125 c%TextColor%, Off
    Gui, Add, Text, vPage1T13 Hidden x826 y125 c%TextColor%, Instant
    Gui, Add, Text, vPage1T14 Hidden x820 y125 c%TextColor%, Delayed
    Gui, Add, Text, vPage1T15 Hidden x915 y125 c%TextColor%, % BetterReinf ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage1T16 Hidden x158 y175 c%TextColor%, WASD
    Gui, Add, Text, vPage1T17 Hidden x163 y195 c%TextColor%, F, Q
    Gui, Add, Text, vPage1T18 Hidden x163 y215 c%TextColor%, R, C
    Gui, Add, Text, vPage1T19 Hidden x259 y175 c%TextColor%, ASD
    Gui, Add, Text, vPage1T20 Hidden x355 y175 c%TextColor%, X/P
    Gui, Add, Text, vPage1T21 Hidden x345 y195 c%TextColor%, (Toggle)
    Gui, Add, Text, vPage1T22 Hidden x440 y175 c%TextColor%, Z/X + Q
    Gui, Add, Text, vPage1T23 Hidden x427 y195 c%TextColor%, (Switch Mode)
    Gui, Add, Text, vPage1T24 Hidden x553 y175 c%TextColor%, ]
    Gui, Add, Text, vPage1T25 Hidden x637 y175 c%TextColor%, 0,1-9
    Gui, Add, Text, vPage1T26 Hidden x627 y195 c%TextColor%, (Numpad)
    Gui, Add, Text, vPage1T27 Hidden x717 y175 c%TextColor%, Backtick (~)
    Gui, Add, Text, vPage1T28 Hidden x836 y175 c%TextColor%, Z
    Gui, Add, Button, vPage1B10 Hidden w60 h50 x905 y175 gBetterReinforceSettingsButton BackgroundTrans Center 0x200 E0x200, % "Beter Reinforce Settings"
    Gui, Add, Text, vPage1T29 Hidden x169 y325 c%TextColor%, 1
    Gui, Add, Text, vPage1T30 Hidden x264 y325 c%TextColor%, 2
    Gui, Add, Text, vPage1T31 Hidden x359 y325 c%TextColor%, 3
    Gui, Add, Text, vPage1T32 Hidden x454 y325 c%TextColor%, 4
    Gui, Add, Text, vPage1T33 Hidden x549 y325 c%TextColor%, 5
    Gui, Add, Text, vPage1T34 Hidden x644 y325 c%TextColor%, 6
    Gui, Add, Text, vPage1T35 Hidden x739 y325 c%TextColor%, 7
    Gui, Add, Text, vPage1T36 Hidden x834 y325 c%TextColor%, 8
    Gui, Add, Text, vPage1T37 Hidden x929 y325 c%TextColor%, 9
    Gui, Add, Button, vPage1B11 Hidden w60 h60 x300 y440 gBootAdvertisement BackgroundTrans Center 0x200 E0x200, Advertise
    Gui, Add, Button, vPage1B12 Hidden w60 h60 x420 y440 gEtrisDepthsInfoButton BackgroundTrans Center 0x200 E0x200, Callout Info
    Gui, Add, Button, vPage1B14 Hidden w60 h60 x540 y440 gNumpadInfoButton BackgroundTrans Center 0x200 E0x200, Persistent Numpad Keys
    Gui, Add, Button, vPage1B13 Hidden w60 h60 x660 y440 gCreateThemeButton BackgroundTrans Center 0x200 E0x200, Create Custom Theme
    Gui, Add, Button, vPage1B15 Hidden w60 h60 x780 y440 gChangeTheme BackgroundTrans Center 0x200 E0x200, Change Theme
    Gui, Add, Button, vPage1B16 Hidden w60 h60 x900 y440 gNextPage BackgroundTrans Center 0x200 E0x200, Page 2
    Gui, Add, Text, vPage2T1 Hidden x43 y70  c%TextColor%,  Toggle:
    Gui, Add, Text, vPage2T2 Hidden x43 y175 c%TextColor%, Keybinds:
    Gui, Add, Button, vPage2B1 Hidden w60 h50 x145 y50 gRollCast1Button BackgroundTrans Center 0x200 E0x200, Roll Cast 1
    Gui, Add, Button, vPage2B2 Hidden w60 h50 x240 y50 gRollCast2Button BackgroundTrans Center 0x200 E0x200, Roll Cast 2
    Gui, Add, Button, vPage2B3 Hidden w60 h50 x335 y50 gRollCast3Button BackgroundTrans Center 0x200 E0x200, Roll Cast 3
    Gui, Add, Button, vPage2B4 Hidden w60 h50 x430 y50 gRollCast4Button BackgroundTrans Center 0x200 E0x200, Roll Cast 4
    Gui, Add, Button, vPage2B5 Hidden w60 h50 x525 y50 gRollCast5Button BackgroundTrans Center 0x200 E0x200, Roll Cast 5
    Gui, Add, Button, vPage2B6 Hidden w60 h50 x620 y50 gRollCast6Button BackgroundTrans Center 0x200 E0x200, Roll Cast 6
    Gui, Add, Button, vPage2B7 Hidden w60 h50 x715 y50 gRollCast7Button BackgroundTrans Center 0x200 E0x200, Roll Cast 7
    Gui, Add, Button, vPage2B8 Hidden w60 h50 x810 y50 gRollCast8Button BackgroundTrans Center 0x200 E0x200, Roll Cast 8
    Gui, Add, Button, vPage2B9 Hidden w60 h50 x905 y50 gRollCast9Button BackgroundTrans Center 0x200 E0x200, Roll Cast 9
    Gui, Add, Text, vPage2T3 Hidden x155 y125 c%TextColor%, % RollCast1 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T4 Hidden x250 y125 c%TextColor%, % RollCast2 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T5 Hidden x345 y125 c%TextColor%, % RollCast3 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T6 Hidden x440 y125 c%TextColor%, % RollCast4 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T7 Hidden x535 y125 c%TextColor%, % RollCast5 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T8 Hidden x630 y125 c%TextColor%, % RollCast6 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T9 Hidden x725 y125 c%TextColor%, % RollCast7 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T10 Hidden x820 y125 c%TextColor%, % RollCast8 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T11 Hidden x915 y125 c%TextColor%, % RollCast9 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage2T12 Hidden x169 y175 c%TextColor%, 1
    Gui, Add, Text, vPage2T13 Hidden x264 y175 c%TextColor%, 2
    Gui, Add, Text, vPage2T14 Hidden x359 y175 c%TextColor%, 3
    Gui, Add, Text, vPage2T15 Hidden x454 y175 c%TextColor%, 4
    Gui, Add, Text, vPage2T16 Hidden x549 y175 c%TextColor%, 5
    Gui, Add, Text, vPage2T17 Hidden x644 y175 c%TextColor%, 6
    Gui, Add, Text, vPage2T18 Hidden x739 y175 c%TextColor%, 7
    Gui, Add, Text, vPage2T19 Hidden x834 y175 c%TextColor%, 8
    Gui, Add, Text, vPage2T20 Hidden x929 y175 c%TextColor%, 9
    Gui, Add, Text, vPage2T21 Hidden x910 y280 c%TextColor%, Auto GG
    Gui, Add, Text, vPage2T22 Hidden x918 y300 c%TextColor%, Text
    RCC := ""
    If (RollCastCrit = 0)
    {
    RCC := "(Off)"
    }
    Else If (RollCastCrit = 1)
    {
    RCC := "(Roll)"
    }
    Else If (RollCastCrit = 2)
    {
    RCC := "(Air Dash)"
    }
    Gui, Add, Button, vPage2B10 Hidden w60 h60 x60 y330 gRollCastCritButton BackgroundTrans Center 0x200 E0x200, Crit Stack %RCC%
    Gui, Add, Button, vPage2B11 Hidden w60 h60 x180 y330 gRollCastDelayButton BackgroundTrans Center 0x200 E0x200, % "Roll Cast Delay " (RollCastDelay ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage2B12 Hidden w60 h60 x300 y330 gChangeRollTypeButton BackgroundTrans Center 0x200 E0x200, % "Roll Type " (CancelTrueFullFalse ? "(Cancel)" : "(Full)")
    RCM := ""
    If (RollcastMovement = 0)
    {
    RCM := "(Manual)"
    }
    Else If (RollcastMovement = 1)
    {
    RCM := "(Partial)"
    }
    Else If (RollcastMovement = 2)
    {
    RCM := "(Always)"
    }
    Gui, Add, Button, vPage2B13 Hidden w60 h60 x420 y330 gChangeRollcastMovementButton BackgroundTrans Center 0x200 E0x200, Rollcast Movement Support %RCM%
    Gui, Add, Button, vPage2B14 Hidden w60 h60 x540 y330 gToggleRollM1Button BackgroundTrans Center 0x200 E0x200, % "Roll M1 " (RollM1 ? "(On)" : "(Off)")
    Gui, Add, Button, vPage2B15 Hidden w60 h60 x660 y330 gToggleReaperAutoGGButton BackgroundTrans Center 0x200 E0x200, % "Auto GG`nOn Bell`n" (ReaperGG ? "(On)" : "(Off)")
    Gui, Add, Button, vPage2B16 Hidden w60 h60 x780 y330 gToggleAutoGGButton BackgroundTrans Center 0x200 E0x200, % "Auto GG`nOn Grip`n" (ChimeGG ? "(On)" : "(Off)")
    Gui, Add, Edit  , w60 h35 x900 y330 vEditBox1 Hidden BackgroundTrans Center 0x200 E0x200, %GGText%
    Gui, Add, Button, vPage2B17 Hidden w60 h25 x900 y365 gMPSubmit1 BackgroundTrans Center 0x200 E0x200, Submit
    Gui, Add, Button, vPage2B18 Hidden w60 h60 x300 y440 gDisableAllRollcastButton BackgroundTrans Center 0x200 E0x200, Disable All Roll Casts
    Gui, Add, Button, vPage2B19 Hidden w60 h60 x420 y440 gImportButton BackgroundTrans Center 0x200 E0x200, Import Settings
    Gui, Add, Button, vPage2B20 Hidden w60 h60 x540 y440 gExportButton BackgroundTrans Center 0x200 E0x200, Export Settings
    Gui, Add, Button, vPage2B21 Hidden w60 h60 x660 y440 gChangeRollM1CDButton BackgroundTrans Center 0x200 E0x200, % "Roll M1 CD (" SubStr(RollM1CD // 100, 1, 1) "."  SubStr(RollM1CD // 100, 2, 2) ")"
    Gui, Add, Button, vPage2B22 Hidden w60 h60 x780 y440 gPrevPage BackgroundTrans Center 0x200 E0x200, Page 1
    Gui, Add, Button, vPage2B23 Hidden w60 h60 x900 y440 gNextPage BackgroundTrans Center 0x200 E0x200, Page 3
    Gui, Add, Text, vPage3T1 Hidden x43 y70  c%TextColor%,  Toggle:
    Gui, Add, Text, vPage3T2 Hidden x43 y175 c%TextColor%, Keybinds:
    Gui, Add, Button, vPage3B1 Hidden w60 h50 x145 y50 gPerfectCast1Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 1
    Gui, Add, Button, vPage3B2 Hidden w60 h50 x240 y50 gPerfectCast2Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 2
    Gui, Add, Button, vPage3B3 Hidden w60 h50 x335 y50 gPerfectCast3Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 3
    Gui, Add, Button, vPage3B4 Hidden w60 h50 x430 y50 gPerfectCast4Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 4
    Gui, Add, Button, vPage3B5 Hidden w60 h50 x525 y50 gPerfectCast5Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 5
    Gui, Add, Button, vPage3B6 Hidden w60 h50 x620 y50 gPerfectCast6Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 6
    Gui, Add, Button, vPage3B7 Hidden w60 h50 x715 y50 gPerfectCast7Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 7
    Gui, Add, Button, vPage3B8 Hidden w60 h50 x810 y50 gPerfectCast8Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 8
    Gui, Add, Button, vPage3B9 Hidden w60 h50 x905 y50 gPerfectCast9Button BackgroundTrans Center 0x200 E0x200, Perfect Cast 9
    Gui, Add, Text, vPage3T3 Hidden x155 y125 c%TextColor%, % PerfectCast1 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T4 Hidden x250 y125 c%TextColor%, % PerfectCast2 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T5 Hidden x345 y125 c%TextColor%, % PerfectCast3 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T6 Hidden x440 y125 c%TextColor%, % PerfectCast4 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T7 Hidden x535 y125 c%TextColor%, % PerfectCast5 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T8 Hidden x630 y125 c%TextColor%, % PerfectCast6 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T9 Hidden x725 y125 c%TextColor%, % PerfectCast7 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T10 Hidden x820 y125 c%TextColor%, % PerfectCast8 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T11 Hidden x915 y125 c%TextColor%, % PerfectCast9 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage3T12 Hidden x169 y175 c%TextColor%, 1
    Gui, Add, Text, vPage3T13 Hidden x264 y175 c%TextColor%, 2
    Gui, Add, Text, vPage3T14 Hidden x359 y175 c%TextColor%, 3
    Gui, Add, Text, vPage3T15 Hidden x454 y175 c%TextColor%, 4
    Gui, Add, Text, vPage3T16 Hidden x549 y175 c%TextColor%, 5
    Gui, Add, Text, vPage3T17 Hidden x644 y175 c%TextColor%, 6
    Gui, Add, Text, vPage3T18 Hidden x739 y175 c%TextColor%, 7
    Gui, Add, Text, vPage3T19 Hidden x834 y175 c%TextColor%, 8
    Gui, Add, Text, vPage3T20 Hidden x929 y175 c%TextColor%, 9
    Gui, Add, Text, vPage3T21 Hidden x900 y300 c%TextColor%, Macro Key 1
    If (MButtonFunc == 0)
    {
    M3Func := "(Normal)"
    }
    Else If (MButtonFunc == 1)
    {
    M3Func := "(Uppercut)"
    }
    Else If (MButtonFunc == 2)
    {
    M3Func := % "`n(" . M3FuncMantra . ", M1, M2, R)"
    }
    Gui, Add, Button, vPage3B10 Hidden w60 h60 x60 y330  gUnbiddenMacroButton BackgroundTrans Center 0x200 E0x200, % "Unbidden Macro " (UnbiddenMacro ? "(On)" : "(Off)")
    Gui, Add, Button, vPage3B11 Hidden w60 h60 x180 y330 gFastSSButton BackgroundTrans Center 0x200 E0x200, % "Windows`nKey to SS`n" (FastSS ? "(On)" : "(Off)")
    Gui, Add, Button, vPage3B12 Hidden w60 h60 x300 y330 gBrokenSKeyButton BackgroundTrans Center 0x200 E0x200, % "Broken S Key " (BrokenSKey ? "(On)" : "(Off)")
    Gui, Add, Button, vPage3B13 Hidden w60 h60 x420 y330 gGoldenTongueButton BackgroundTrans Center 0x200 E0x200, % "Golden Tongue Macro " (GoldenTongue ? "(On)" : "(Off)")
    Gui, Add, Button, vPage3B14 Hidden w60 h60 x540 y330 gM1ProofButton BackgroundTrans Center 0x200 E0x200, % "M1 Checks " (M1Proof ? "(Disabled)" : "(Enabled)")
    Gui, Add, Button, vPage3B15 Hidden w60 h60 x660 y330 gSuspendAll BackgroundTrans Center 0x200 E0x200, % "Roblox Macros " (DisableRoblox ? "(Paused)" : "(Enabled)")
    Gui, Add, Button, vPage3B16 Hidden w60 h60 x780 y330 gMButtonFuncButton BackgroundTrans Center 0x200 E0x200, % "M3 Bound To " M3Func
    Gui, Add, Edit  , w60 h35 x900 y330 vEditBox2 Hidden BackgroundTrans Center 0x200 E0x200, %M3FuncMantra%
    Gui, Add, Button, vPage3B17 Hidden w60 h25 x900 y365 gMPSubmit2 BackgroundTrans Center 0x200 E0x200, Submit
    If (BellRoll == 0)
    {
    BellText := "(Disabled)"
    }
    Else If (BellRoll == 1)
    {
    BellText := "(Standing)"
    }
    Else If (BellRoll == 2)
    {
    BellText := "(Circular)"
    }
    RollType := (HoldRoll <= 1 ? (HoldRoll < 1 ? "(Off)" : "(Manual)") : (HoldRoll < 3 ? "(S. Auto)" : "(Auto)") )
    Gui, Add, Button, vPage3B18 Hidden w60 h60 x300 y440 gDisableAllPerfectCastButton BackgroundTrans Center 0x200 E0x200, Disable All Perfect Casts
    Gui, Add, Button, vPage3B19 Hidden w60 h60 x420 y440 gBellRollButton BackgroundTrans Center 0x200 E0x200, % "Bell Roll " BellText
    Gui, Add, Button, vPage3B20 Hidden w60 h60 x540 y440 gBellSleepButton BackgroundTrans Center 0x200 E0x200, % "Extra Roll Delay `n(" BellSleep " ms)"
    Gui, Add, Button, vPage3B21 Hidden w60 h60 x660 y440 gHoldRollButton BackgroundTrans Center 0x200 E0x200, % "Hold to Dodge`n" RollType
    Gui, Add, Button, vPage3B22 Hidden w60 h60 x780 y440 gPrevPage BackgroundTrans Center 0x200 E0x200, Page 2
    Gui, Add, Button, vPage3B23 Hidden w60 h60 x900 y440 gNextPage BackgroundTrans Center 0x200 E0x200, Page 4
    Gui, Add, Text, vPage4T1 Hidden x43 y70  c%TextColor%,  Toggle:
    Gui, Add, Text, vPage4T2 Hidden x43 y175 c%TextColor%, Keybinds:
    Gui, Add, Button, vPage4B1 Hidden w60 h50 x145 y50 gKCast1Button BackgroundTrans Center 0x200 E0x200, K-Cast 1
    Gui, Add, Button, vPage4B2 Hidden w60 h50 x240 y50 gKCast2Button BackgroundTrans Center 0x200 E0x200, K-Cast 2
    Gui, Add, Button, vPage4B3 Hidden w60 h50 x335 y50 gKCast3Button BackgroundTrans Center 0x200 E0x200, K-Cast 3
    Gui, Add, Button, vPage4B4 Hidden w60 h50 x430 y50 gKCast4Button BackgroundTrans Center 0x200 E0x200, K-Cast 4
    Gui, Add, Button, vPage4B5 Hidden w60 h50 x525 y50 gKCast5Button BackgroundTrans Center 0x200 E0x200, K-Cast 5
    Gui, Add, Button, vPage4B6 Hidden w60 h50 x620 y50 gKCast6Button BackgroundTrans Center 0x200 E0x200, K-Cast 6
    Gui, Add, Button, vPage4B7 Hidden w60 h50 x715 y50 gKCast7Button BackgroundTrans Center 0x200 E0x200, K-Cast 7
    Gui, Add, Button, vPage4B8 Hidden w60 h50 x810 y50 gKCast8Button BackgroundTrans Center 0x200 E0x200, K-Cast 8
    Gui, Add, Button, vPage4B9 Hidden w60 h50 x905 y50 gKCast9Button BackgroundTrans Center 0x200 E0x200, K-Cast 9
    Gui, Add, Text, vPage4T3 Hidden x155 y125 c%TextColor%, % KCast1 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T4 Hidden x250 y125 c%TextColor%, % KCast2 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T5 Hidden x345 y125 c%TextColor%, % KCast3 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T6 Hidden x440 y125 c%TextColor%, % KCast4 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T7 Hidden x535 y125 c%TextColor%, % KCast5 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T8 Hidden x630 y125 c%TextColor%, % KCast6 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T9 Hidden x725 y125 c%TextColor%, % KCast7 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T10 Hidden x820 y125 c%TextColor%, % KCast8 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T11 Hidden x915 y125 c%TextColor%, % KCast9 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage4T12 Hidden x169 y175 c%TextColor%, 1
    Gui, Add, Text, vPage4T13 Hidden x264 y175 c%TextColor%, 2
    Gui, Add, Text, vPage4T14 Hidden x359 y175 c%TextColor%, 3
    Gui, Add, Text, vPage4T15 Hidden x454 y175 c%TextColor%, 4
    Gui, Add, Text, vPage4T16 Hidden x549 y175 c%TextColor%, 5
    Gui, Add, Text, vPage4T17 Hidden x644 y175 c%TextColor%, 6
    Gui, Add, Text, vPage4T18 Hidden x739 y175 c%TextColor%, 7
    Gui, Add, Text, vPage4T19 Hidden x834 y175 c%TextColor%, 8
    Gui, Add, Text, vPage4T20 Hidden x929 y175 c%TextColor%, 9
    Gui, Add, Text, vPage4T21 Hidden x668 y280 c%TextColor%, Hold M1
    Gui, Add, Text, vPage4T22 Hidden x662 y300 c%TextColor%, Pause (ms)
    Gui, Add, Text, vPage4T23 Hidden x796 y280 c%TextColor%, K-Cast
    Gui, Add, Text, vPage4T24 Hidden x790 y300 c%TextColor%, Distance
    Gui, Add, Text, vPage4T25 Hidden x910 y280 c%TextColor%, Suspend
    Gui, Add, Text, vPage4T26 Hidden x898 y300 c%TextColor%, Duration (ms)
    Gui, Add, Button, vPage4B10 Hidden w60 h60 x60 y330 gKCastCriticalButton BackgroundTrans Center 0x200 E0x200, % "K-Cast Critical " (KCastCritical ? "(On)" : "(Off)")
    If (KCastActivation = 0)
    {
    KCastMode := "(Absolute)"
    }
    Else If (KCastActivation = 1)
    {
    KCastMode := "(Partial)"
    }
    Else If (KCastActivation = 2)
    {
    KCastMode := "(Limited)"
    }
    Gui, Add, Button, vPage4B12 Hidden w60 h60 x180 y330 gChangeKCastActivationButton BackgroundTrans Center 0x200 E0x200, % "K-Cast Mode " KCastMode
    Gui, Add, Button, vPage4B13 Hidden w60 h60 x300 y330 gPanicParryButton BackgroundTrans Center 0x200 E0x200, % "Panic Parry " (PanicParry ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage4B14 Hidden w60 h60 x420 y330 gBetterParryButton BackgroundTrans Center 0x200 E0x200, % "Better Parry " (BetterParry ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage4B15 Hidden w60 h60 x540 y330 gSafeFeintButton BackgroundTrans Center 0x200 E0x200, % "Safe Feint " (SafeFeint ? "(Enabled)" : "(Disabled)")
    Gui, Add, Edit  , w60 h35 x660 y330 vEditBox5 Hidden BackgroundTrans Center 0x200 E0x200, %SafetyTime%
    Gui, Add, Button, vPage4B16 Hidden w60 h25 x660 y365 gMPSubmit5 BackgroundTrans Center 0x200 E0x200, Submit
    Gui, Add, Edit  , w60 h35 x780 y330 vEditBox4 Hidden BackgroundTrans Center 0x200 E0x200, %KCastDistance%
    Gui, Add, Button, vPage4B17 Hidden w60 h25 x780 y365 gMPSubmit4 BackgroundTrans Center 0x200 E0x200, Submit
    Gui, Add, Edit  , w60 h35 x900 y330 vEditBox3 Hidden BackgroundTrans Center 0x200 E0x200, %ChatDuration%
    Gui, Add, Button, vPage4B18 Hidden w60 h25 x900 y365 gMPSubmit3 BackgroundTrans Center 0x200 E0x200, Submit
    Gui, Add, Button, vPage4B19 Hidden w60 h60 x300 y440 gDisableAllKCastButton BackgroundTrans Center 0x200 E0x200, Disable All K-Casts
    Gui, Add, Button, vPage4B20 Hidden w60 h60 x420 y440 gLastWordButton BackgroundTrans Center 0x200 E0x200, % "Last Word`n" (LastWord ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage4B21 Hidden w60 h60 x540 y440 gCharismaButton BackgroundTrans Center 0x200 E0x200, % "Charisma Macro`n" (CharismaTraining ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage4B22 Hidden w60 h60 x660 y440 gFlashMapButton BackgroundTrans Center 0x200 E0x200, % "Flash Map`n" (FlashMap ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage4B23 Hidden w60 h60 x780 y440 gPrevPage BackgroundTrans Center 0x200 E0x200, Page 3
    Gui, Add, Button, vPage4B24 Hidden w60 h60 x900 y440 gNextPage BackgroundTrans Center 0x200 E0x200, Page 5
    Gui, Add, Text, vPage5T1 Hidden x43 y70  c%TextColor%,  Toggle:
    Gui, Add, Text, vPage5T2 Hidden x43 y175 c%TextColor%, Keybinds:
    Gui, Add, Button, vPage5B1 Hidden w60 h50 x145 y50 gRepeater1Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 1
    Gui, Add, Button, vPage5B2 Hidden w60 h50 x240 y50 gRepeater2Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 2
    Gui, Add, Button, vPage5B3 Hidden w60 h50 x335 y50 gRepeater3Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 3
    Gui, Add, Button, vPage5B4 Hidden w60 h50 x430 y50 gRepeater4Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 4
    Gui, Add, Button, vPage5B5 Hidden w60 h50 x525 y50 gRepeater5Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 5
    Gui, Add, Button, vPage5B6 Hidden w60 h50 x620 y50 gRepeater6Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 6
    Gui, Add, Button, vPage5B7 Hidden w60 h50 x715 y50 gRepeater7Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 7
    Gui, Add, Button, vPage5B8 Hidden w60 h50 x810 y50 gRepeater8Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 8
    Gui, Add, Button, vPage5B9 Hidden w60 h50 x905 y50 gRepeater9Button BackgroundTrans Center 0x200 E0x200, Repeat Cast 9
    Gui, Add, Text, vPage5T3 Hidden x155 y125 c%TextColor%, % Repeater1 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T4 Hidden x250 y125 c%TextColor%, % Repeater2 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T5 Hidden x345 y125 c%TextColor%, % Repeater3 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T6 Hidden x440 y125 c%TextColor%, % Repeater4 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T7 Hidden x535 y125 c%TextColor%, % Repeater5 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T8 Hidden x630 y125 c%TextColor%, % Repeater6 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T9 Hidden x725 y125 c%TextColor%, % Repeater7 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T10 Hidden x820 y125 c%TextColor%, % Repeater8 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T11 Hidden x915 y125 c%TextColor%, % Repeater9 ? "Enabled" : "Disabled"
    Gui, Add, Text, vPage5T12 Hidden x169 y175 c%TextColor%, 1
    Gui, Add, Text, vPage5T13 Hidden x264 y175 c%TextColor%, 2
    Gui, Add, Text, vPage5T14 Hidden x359 y175 c%TextColor%, 3
    Gui, Add, Text, vPage5T15 Hidden x454 y175 c%TextColor%, 4
    Gui, Add, Text, vPage5T16 Hidden x549 y175 c%TextColor%, 5
    Gui, Add, Text, vPage5T17 Hidden x644 y175 c%TextColor%, 6
    Gui, Add, Text, vPage5T18 Hidden x739 y175 c%TextColor%, 7
    Gui, Add, Text, vPage5T19 Hidden x834 y175 c%TextColor%, 8
    Gui, Add, Text, vPage5T20 Hidden x929 y175 c%TextColor%, 9
    ParryVisualButtonText := "(Off)"
    If (ParryIndicator > 0)
    {
    If (ParryIndicator = 1)
    {
    ParryVisualButtonText := "(On, 1s.)"
    }
    Else  If (ParryIndicator = 2)
    {
    ParryVisualButtonText := "(On, 2s.)"
    }
    Else If (ParryIndicator = 3)
    {
    ParryVisualButtonText := "(On, 3s.)"
    }
    Else  If (ParryIndicator = 4)
    {
    ParryVisualButtonText := "(On, 15s.)"
    }
    }
    Gui, Add, Button, vPage5B10 Hidden w60 h60 x60  y330 gRepeaterCritButton BackgroundTrans Center 0x200 E0x200, % "Repeat R`n" (RepeaterCrit ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage5B11 Hidden w60 h60 x180 y330 gSpecterTimingButton BackgroundTrans Center 0x200 E0x200, % "Spectral Dash Visual`n" (SpecterTiming ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage5B12 Hidden w60 h60 x300 y330 gToggleFastGankPingButton BackgroundTrans Center 0x200 E0x200, % "Fast Gank Ping " (FastGankPing ? "(On)" : "(Off)")
    Gui, Add, Button, vPage5B13 Hidden w60 h60 x420 y330 gChangeParryIndicatorButton BackgroundTrans Center 0x200 E0x200, % "Parry State Visual`n" ParryVisualButtonText
    Gui, Add, Button, vPage5B14 Hidden w60 h60 x300 y440 gDisableAllRepeatersButton BackgroundTrans Center 0x200 E0x200, Disable All Repeaters
    Gui, Add, Button, vPage5B15 Hidden w60 h60 x780 y440 gPrevPage BackgroundTrans Center 0x200 E0x200, Page 4
    Gui, Add, Button, vPage5B16 Hidden w60 h60 x900 y440 gNextPage BackgroundTrans Center 0x200 E0x200, Page 6
    Gui, Add, Text, vPage6T1 Hidden x43 y70 c%TextColor%, Hard Toggle:
    Gui, Add, Text, vPage6T2 Hidden x43 y115  c%TextColor%, Toggle With:
    Gui, Add, Text, vPage6T3 Hidden x43 y135  c%TextColor%, Alt + "-"/"="
    Gui, Add, Text, vPage6T4 Hidden x43 y180  c%TextColor%, Settings:
    Gui, Add, Button, vPage6B1 Hidden w60 h50 x145 y50 gOverlay1Button BackgroundTrans Center 0x200 E0x200, % "Overlay 1 " (Overlay1Enabled ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B2 Hidden w60 h50 x145 y162 gOverlay1SettingsButton BackgroundTrans Center 0x200 E0x200, % "Overlay 1 Settings"
    Gui, Add, Button, vPage6B3 Hidden w60 h50 x240 y50 gOverlay2Button BackgroundTrans Center 0x200 E0x200, % "Overlay 2 " (Overlay2Enabled ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B4 Hidden w60 h50 x240 y162 gOverlay2SettingsButton BackgroundTrans Center 0x200 E0x200, % "Overlay 2 Settings"
    Gui, Add, Button, vPage6B5 Hidden w60 h50 x335 y50 gOverlay3Button BackgroundTrans Center 0x200 E0x200, % "Overlay 3 " (Overlay3Enabled ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B6 Hidden w60 h50 x335 y162 gOverlay3SettingsButton BackgroundTrans Center 0x200 E0x200, % "Overlay 3 Settings"
    Gui, Add, Button, vPage6B7 Hidden w60 h50 x430 y50 gSnapTapADButton BackgroundTrans Center 0x200 E0x200, % "Snap Tap A/D`n" (SnapTapAD ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B8 Hidden w60 h50 x525 y50 gSnapTapWSButton BackgroundTrans Center 0x200 E0x200, % "Snap Tap W/S`n" (SnapTapWS ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B9 Hidden w60 h50 x430 y162 gSnapTapHorButton BackgroundTrans Center 0x200 E0x200, % "Snap Tap Left/Right`n" (SnapTapHor ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B10 Hidden w60 h50 x525 y162 gSnapTapVertButton BackgroundTrans Center 0x200 E0x200, % "Snap Tap Up/Down`n" (SnapTapVert ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B11 Hidden w60 h50 x620 y50 gFastWispButton BackgroundTrans Center 0x200 E0x200, % "Fast Wisp Macro`n" (FastWisp ? "(Enabled)" : "(Disabled)")
    Gui, Add, Button, vPage6B12 Hidden w60 h50 x620 y162 gFastWispSettingsButton BackgroundTrans Center 0x200 E0x200, % "Fast Wisp Settings"
    Gui, Add, Button, vPage6B13 Hidden w60 h60 x300 y440 gAdvertiseOnLoadButton BackgroundTrans Center 0x200 E0x200, % "Advertise Upon Loading`n" (AdvertiseOnLoad ? "(On)" : "(Off)")
    Gui, Add, Button, vPage6B14 Hidden w60 h60 x420 y440 gOvernightAdvertButton BackgroundTrans Center 0x200 E0x200, % "Overnight Advert`n" (OvernightAdvert ? "(On)" : "(Off)")
    Gui, Add, Button, vPage6B15 Hidden w60 h60 x780 y440 gPrevPage BackgroundTrans Center 0x200 E0x200, Page 5
    Gui, Add, Button, vAlways1 w60 h60 x60 y440 gRefreshButton BackgroundTrans Center 0x200 E0x200, Refresh
    Gui, Add, Button, vAlways2 w60 h60 x180 y440 gQuitButton BackgroundTrans Center 0x200 E0x200, Quit
    Gui, Add, Text, vAlways3 x970 y541 c%TextColor%, Page %Page%
    If (Borderless)
    {
    Gui, Add, Button, w20 h20 x984 y0 gMinimizeButton, --
    Gui, Add, Button, w20 h20 x1004 y0 gQuitButton, X
    }
    If (CustomTheme && FileExist(A_ScriptDir "\Important\Custom Themes\" CustomIconPath) = "A")
    {
    If (Borderless)
    {
    Gui, Add, Picture, w40 h40 x16 y9, %A_ScriptDir%\Important\Custom Themes\%CustomIconPath%
    }
    Else
    {
    Gui, Add, Picture, w40 h40 x16 y525, %A_ScriptDir%\Important\Custom Themes\%CustomIconPath%
    }
    }
    Else
    {
    ImagePath := ""
    If (ImagePath == "")
    {
    Loop, Files, *.ico, R
    {
    If (A_LoopFileName == "Akai.ico")
    {
    ImagePath := A_LoopFileFullPath
    }
    }
    }
    If (ImagePath != "")
    {
    If (Borderless)
    {
    Gui, Add, Picture, w40 h40 x16 y9, %ImagePath%
    }
    Else
    {
    Gui, Add, Picture, w40 h40 x16 y525, %ImagePath%
    }
    }
    }
    Gui, Show, w1024 h576 x144 y81, %Version% Settings
    ShowPage()
    Return
    }
    Load()
    {
    Loop
    {
    WinGetPos, WinX, WinY, WinWidth, WinHeight, A
    Offset := (WinX = 0 && WinY = 0 ? 10 : 0)
    PixelGetColor, ScreenColor, WinWidth / 2, WinHeight / 2 - 100 - Offset
    If (ScreenColor = "0xDADCDA" || ScreenColor = "0xE3E0C0")
    {
    global Pender := false
    global LoadingP := false
    Tooltip("Pender disabled")
    GuiControl,, Page1T8, % Pender ? "Enabled" : "Disabled"
    Return
    }
    If (GetKeyState("x", "P") || GetKeyState("p", "P"))
    {
    GuiControl,, Page1T8, % Pender ? "Enabled" : "Disabled"
    Return
    }
    If (LoadingP)
    {
    OffSet1 := (WinX = 0 && WinY = 0 ? 0 : 24)
    MouseClick , Left, WinWidth / 2, (WinHeight / (20 / 3) + 96 + Offset1)
    Sleep, 1
    MouseClick , Left, WinWidth / 2, (WinHeight / (20 / 3) + 96 + Offset1)
    OffSet2 := (WinX = 0 && WinY = 0 ? 0 : 4)
    MouseClick , Left, WinWidth / 2, (WinHeight / 2 + 70 + 14 + Offset2)
    Sleep, 1
    MouseClick , Left, WinWidth / 2, (WinHeight / 2 + 70 + 14 + Offset2)
    }
    Else
    {
    Return
    }
    }
    Return
    }
    #If (RobloxActive && InvC)
    $w::
    {
    Send, {Blind}{s Down}
    Return
    }
    $w Up::
    {
    Send, {Blind}{s Up}
    Return
    }
    $a::
    {
    Send, {Blind}{d Down}
    Return
    }
    $a Up::
    {
    Send, {Blind}{d Up}
    Return
    }
    $s::
    {
    Send, {Blind}{w Down}
    Return
    }
    $s Up::
    {
    Send, {Blind}{w Up}
    Return
    }
    $d::
    {
    Send, {Blind}{a Down}
    Return
    }
    $d Up::
    {
    Send, {Blind}{a Up}
    Return
    }
    $f::
    {
    Send, {Blind}{g Down}
    Return
    }
    $f Up::
    {
    Send, {Blind}{g Up}
    Return
    }
    $g::
    {
    Send, {Blind}{f Down}
    Return
    }
    $g Up::
    {
    Send, {Blind}{f Up}
    Return
    }
    $c::
    {
    Send, {Blind}{r Down}
    Return
    }
    $c Up::
    {
    Send, {Blind}{r Up}
    Return
    }
    $r::
    {
    Send, {Blind}{c Down}
    Return
    }
    $r Up::
    {
    Send, {Blind}{c Up}
    Return
    }
    #If
    #If (RobloxActive && Pender)
    ~$*p Up::
    {
    global LoadingP := !LoadingP
    PenderTooltip := (LoadingP ? "Enabled autoclicker" : "Disabled autoclicker")
    Load()
    Return
    }
    ~$*x Up::
    {
    global LoadingP := !LoadingP
    PenderTooltip := (LoadingP ? "Enabled autoclicker" : "Pender disabled")
    Tooltip(PenderTooltip)
    If !(LoadingP)
    {
    SetTimer, PenderButton, -1
    }
    Else
    {
    Load()
    }
    Return
    }
    #If
    #If (RobloxActive && Movement)
    ~$a::
    {
    Loop
    {
    If GetKeyState("a", "P")
    {
    If !Sprinting
    {
    If (!GetKeyState("w", "P") && !GetKeyState("s", "P"))
    {
    Send, s
    Send, w
    Sleep, 5
    SendInput, {w Down}
    SendInput, {s Down}
    global Sprinting := true
    }
    }
    }
    Else
    {
    If !GetKeyState("w", "P")
    {
    SendInput, {w Up}
    }
    SendInput, {s Up}
    global Sprinting := false
    Break
    }
    Sleep, 6
    }
    Return
    }
    ~$d::
    {
    Loop
    {
    If GetKeyState("d", "P")
    {
    If !Sprinting
    {
    If (!GetKeyState("w", "P") && !GetKeyState("s", "P"))
    {
    Send, s
    Send, w
    Sleep, 5
    SendInput, {w Down}
    SendInput, {s Down}
    global Sprinting := true
    }
    }
    }
    Else
    {
    If !GetKeyState("w", "P")
    {
    SendInput, {w Up}
    }
    SendInput, {s Up}
    global Sprinting := false
    Break
    }
    Sleep, 6
    }
    Return
    }
    ~$w::
    {
    If !GetKeyState("s", "P")
    {
    SendInput, {s Up}
    }
    global Sprinting := false
    Return
    }
    ~$s::
    {
    If !GetKeyState("w", "P")
    {
    SendInput, {w Up}
    }
    global Sprinting := false
    Loop
    {
    If !GetKeyState("s", "P")
    {
    Sleep, 6
    }
    Else
    {
    global Sprinting := false
    Break
    }
    }
    Return
    }
    #If
    UsedMantra()
    {
    global RollM1Time := A_TickCount - RollM1CD + 650
    global NumTime    := A_TickCount + 650
    Return
    }
    WUp:
    {
    If !(GetKeyState("w", "P"))
    {
    SendInput, {w Up}
    }
    Return
    }
    RollCast()
    {
    If (A_TickCount >= M1Time + 400)
    {
    If (RollcastMovement = 1)
    {
    If !(GetKeyState("w", "P") || GetKeyState("a", "P") || GetKeyState("s", "P") || GetKeyState("d", "P"))
    {
    SendInput, {w Down}
    SetTimer, WUp, -200
    }
    }
    Else If (RollcastMovement = 2)
    {
    If !(GetKeyState("w", "P"))
    {
    SendInput, {w Down}
    SetTimer, WUp, -200
    }
    }
    If (RollCastDelay)
    {
    Sleep, 25
    }
    SendInput, q
    }
    Return
    }
    UnblockM1:
    {
    global PerfectCasted := false
    SetTimer, UnblockM1, Off
    Return
    }
    KCast:
    {
    LastKCast := A_TickCount
    SendInput, {LShift Down}
    SendInput, {LShift Up}
    SendInput, {k Down}
    Sleep, 5
    Loop, %KCastDistance%
    {
    MouseMove, 0, 1, 0, R
    }
    Sleep, 5
    SendInput, {LButton Down}
    SendInput, {LButton Up}
    Sleep, 5
    SendInput, {LShift Down}
    SendInput, {LShift Up}
    SendInput, {k Up}
    SetTimer, KCast, Off
    Return
    }
    PerfectCast:
    {
    global PerfectCasted := true
    Send, {Blind}{LButton Up}
    Sleep, 3
    Send, {Blind}{LButton Down}
    Sleep, 3
    Send, {Blind}{LButton Up}
    SetTimer, UnblockM1, -350
    SetTimer, PerfectCast, Off
    Return
    }
    #If (RobloxActive && BrokenSKey)
    $*s::Return
    #If
    #If (RobloxActive && ReaperGG)
    ~$c::
    {
    Sleep, 10
    SendInput, /
    Sleep, 50
    SendInput, %GGText%
    Sleep, 100
    SendInput, {Enter}
    Sleep, 5000
    Return
    }
    #If
    #If (RobloxActive && ChimeGG)
    ~$b::
    {
    Sleep, 10
    SendInput, /
    Sleep, 50
    SendInput, %GGText%
    Sleep, 100
    SendInput, {Enter}
    Sleep, 5000
    Return
    }
    #If
    #If (RobloxActive && Autoshout)
    $\::
    {
    Send, /
    Sleep, 10
    SendInput, {Text}!help im low
    Sleep, 25
    Send, {Enter}
    Return
    }
    ~$!z::
    {
    ReaperTrueHelpFalse := !ReaperTrueHelpFalse
    If (ReaperTrueHelpFalse)
    {
    Tooltip("Reaper")
    }
    Else
    {
    Tooltip("Help")
    }
    Return
    }
    ~$!x::
    {
    DepthsTrueEtrisFalse := !DepthsTrueEtrisFalse
    If (DepthsTrueEtrisFalse)
    {
    Tooltip("Depths")
    }
    Else
    {
    Tooltip("Etris")
    }
    Return
    }
    #If
    ResetCooldown:
    {
    SetTimer, ResetCooldown, Off
    Return
    }
    #If (RobloxActive && TrashTalk)
    ]::
    {
    SendInput, /
    Sleep, 40
    If (Autoshout)
    {
    SendInput, {!}
    }
    Random, r, 1, TTLines.Length()
    SetKeyDelay, -1, -1
    SendLevel, 1
    SendEvent, % SubStr(TTLines[r], 1, StrLen(TTLines[r]) - 1)
    Sleep, 150
    SendLevel, 0
    SendEvent, {Enter}
    SetKeyDelay, 0, 25
    Sleep, 50
    Return
    }
    #If
    #If (RobloxActive && VoMCallouts)
    Numpad7::
    {
    SendInput, Return
    SendInput, {Space}
    Return
    }
    Numpad9::
    {
    SendInput, live
    SendInput, {Space}
    Return
    }
    Numpad1::
    {
    SendInput, fight
    SendInput, {Space}
    Return
    }
    Numpad3::
    {
    SendInput, run
    SendInput, {Space}
    Return
    }
    Numpad5::
    {
    Send, /
    Sleep, 10
    SendInput, all Return
    Sleep, 7
    Send, {Enter}
    Return
    }
    #If
    Callout(Type, Place)
    {
    Send, /
    Sleep, 20
    SendInput, {!}%Type% %Place%
    Sleep, 40
    Send, {Enter}
    Sleep, 10
    Return
    }
    #If (RobloxActive && !VoMCallouts)
    Numpad7::
    {
    Place := DepthsTrueEtrisFalse ? "hell mode bell" : "left side docks"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad8::
    {
    Place := DepthsTrueEtrisFalse ? "near castle light" : "docks"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad9::
    {
    Place := DepthsTrueEtrisFalse ? "castle light" : "right side beach"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad4::
    {
    Place := DepthsTrueEtrisFalse ? "yunshul" : "side beach"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad5::
    {
    Place := DepthsTrueEtrisFalse ? "flat gate" : "nomad bridge"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad6::
    {
    Place := DepthsTrueEtrisFalse ? "deluvian" : "nomad camp"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad1::
    {
    Place := DepthsTrueEtrisFalse ? "wasteland" : "etris city"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad2::
    {
    Place := DepthsTrueEtrisFalse ? "slope gate" : "etris ramp"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    Numpad3::
    {
    Place := DepthsTrueEtrisFalse ? "diver camp" : "side mountains"
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    Callout(Type, Place)
    Return
    }
    #If
    #If (RobloxActive && FastLog)
    `::
    {
    Click, (A_ScreenWidth * 164 / 2559), (A_ScreenHeight * 18 / 1439)
    Click, (A_ScreenWidth * 164 / 2559), (A_ScreenHeight * 18 / 1439)
    Sleep, 20
    Loop, 60
    {
    Click, (A_ScreenWidth * 1224 / 2559), (A_ScreenHeight * 776 / 1439)
    Sleep, 4
    }
    Return
    }
    #If
    #If (RobloxActive && Bombs)
    ~$z::
    {
    If (Delayed)
    {
    Sleep, 25
    }
    Send, {Blind}{e}
    Return
    }
    #If
    #If (RobloxActive && FastGankPing)
    NumpadSub::
    {
    If !(A_TickCount >= LastGankPing + GankPingCD)
    {
    Return
    }
    WinGet, ActiveWindows, List
    Loop, %ActiveWindows%
    {
    WinGetTitle, Title, % "ahk_id " ActiveWindows%A_Index%
    WinGetClass, Class, % "ahk_id " ActiveWindows%A_Index%
    If (InStr(Title, "Discord") && Class = "Chrome_WidgetWin_1")
    {
    DiscordTitle := Title
    Break
    }
    }
    If (DiscordTitle = "")
    {
    Tooltip("Open Discord...")
    Return
    }
    global LastGankPing := A_TickCount
    x := 450
    y := 0
    width := Min(520, A_ScreenWidth - x)
    height := 80
    hdcScreen := DllCall("GetDC", "Ptr", 0, "Ptr")
    hdcCompatible := DllCall("CreateCompatibleDC", "Ptr", hdcScreen, "Ptr")
    hbm := DllCall("CreateCompatibleBitmap", "Ptr", hdcScreen, "Int", width, "Int", height, "Ptr")
    DllCall("SelectObject", "Ptr", hdcCompatible, "Ptr", hbm)
    DllCall("BitBlt", "Ptr", hdcCompatible, "Int", 0, "Int", 0, "Int", width, "Int", height, "Ptr", hdcScreen, "Int", x, "Int", y, "UInt", 0x00CC0020)
    DllCall("OpenClipboard", "Ptr", 0)
    DllCall("EmptyClipboard")
    DllCall("SetClipboardData", "UInt", 2, "Ptr", hbm)
    DllCall("CloseClipboard")
    DllCall("DeleteDC", "Ptr", hdcCompatible)
    DllCall("ReleaseDC", "Ptr", 0, "Ptr", hdcScreen)
    global Loading := true
    Tooltip, Switching to Discord...
    WinActivate, %DiscordTitle%
    Sleep, 500
    Tooltip, Switching to gank ping channel...
    SendInput, ^t
    Sleep, 500
    SendInput, {Text}#gank-ping Members Akai
    Sleep, 700
    SendInput, {Enter}
    Sleep, 600
    WinGetActiveTitle, ActiveTitle
    WinGetClass, ActiveClass, A
    If (!InStr(ActiveTitle, "#gank-ping") || ActiveClass != "Chrome_WidgetWin_1")
    {
    Tooltip("Unable to find gank-ping channel...")
    Clipboard := ""
    global Loading := false
    WinActivate, Roblox
    RobloxCheck()
    Return
    }
    Tooltip, Posting...
    SendInput, ^v {Text}@Gank Ping
    Sleep, 500
    SendInput, {Enter}
    Tooltip("Finished")
    Clipboard := ""
    global Loading := false
    WinActivate, Roblox
    RobloxCheck()
    Return
    }
    #If
    IceCubesExpired:
    {
    If (IceCubesActive)
    {
    global IceCubesActive := false
    }
    SetTimer, IceCubesExpired, Off
    }
    UsedIceCubes()
    {
    If (IceCubesActive)
    {
    global IceCubesActive := false
    SetTimer, IceCubesExpired, Off
    }
    Else If !(IceCubesActive)
    {
    global IceCubesActive := true
    SetTimer, IceCubesExpired, -13500
    }
    Return
    }
    #If (RobloxActive && !UnbiddenMacro)
    ~$r::
    {
    If (KCastCritical && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCastCrit > 0)
    {
    If (RollcastMovement = 1)
    {
    If !(GetKeyState("w", "P") || GetKeyState("a", "P") || GetKeyState("s", "P") || GetKeyState("d", "P"))
    {
    SendInput, {w Down}
    SetTimer, WUp, -200
    }
    }
    Else If (RollcastMovement = 2)
    {
    If !(GetKeyState("w", "P"))
    {
    SendInput, {w Down}
    SetTimer, WUp, -200
    }
    }
    If (RollCastCrit = 2)
    {
    Send, {Space}
    }
    Sleep, 25
    Send, q
    }
    If (RepeaterCrit)
    {
    SetTimer, RepeaterR, 3
    }
    Return
    }
    ~$r Up::
    {
    SetTimer, RepeaterR, Off
    Return
    }
    #If
    #If (RobloxActive && UnbiddenMacro)
    $r::
    {
    If (IceCubesActive)
    {
    SendInput, 3
    Sleep, 1
    SendInput, r
    global IceCubesActive := false
    SetTimer, IceCubesExpired, Off
    }
    Else
    {
    SendInput, r
    }
    Return
    }
    #If
    #If (RobloxActive && FastSS)
    $LWin::
    {
    N := 1
    Loop, Files, % A_ScriptDir . "\Grip Clips\*", R
    {
    N++
    }
    Run, %A_ScriptDir%\Important\Dependencies\screenshot.exe %N%
    Sleep, 500
    Return
    }
    #If
    #If (RobloxActive && GoldenTongue)
    $y::
    {
    SendInput, /
    Sleep, 50
    SendInput, e
    Sleep, 40
    SendInput, {Enter}
    Return
    }
    #If
    SpamRoll:
    {
    If !(GetKeyState("q", "P"))
    {
    SetTimer, SpamRoll, Off
    Return
    }
    Send, {Blind}{q Down}
    Sleep, 1
    Send, {Blind}{q Up}
    Return
    }
    #If (HoldRoll == 1)
    ~$*q::
    {
    WinGetActiveTitle, ActiveTitle
    If (InStr(ActiveTitle, "Discord") || InStr(ActiveTitle, "Notepad"))
    {
    Return
    }
    SetTimer, SpamRoll, 3
    Return
    }
    ~$*q Up::
    {
    SetTimer, SpamRoll, Off
    Return
    }
    #If
    #If (RobloxActive && HoldRoll == 2)
    ~$*q::
    {
    WinGetActiveTitle, ActiveTitle
    If (InStr(ActiveTitle, "Discord"))
    {
    Return
    }
    SetTimer, SpamRoll, 3
    Return
    }
    ~$*q Up::
    {
    SetTimer, SpamRoll, Off
    SendEvent, {RButton Up}
    Sleep, 1
    SendEvent, {RButton Down}
    Sleep, 1
    If !(GetKeyState("RButton", "P"))
    {
    SendEvent, {RButton Up}
    }
    Return
    }
    #If
    #If (RobloxActive && HoldRoll == 3)
    ~$*q::
    {
    WinGetActiveTitle, ActiveTitle
    If (InStr(ActiveTitle, "Discord"))
    {
    Return
    }
    SendEvent, {q Up}
    SendEvent, {q Down}
    FirstRoll := 0
    While (GetKeyState("q", "P") && FirstRoll != 10)
    {
    Sleep, 1
    FirstRoll++
    }
    SendEvent, {RButton Up}
    Sleep, 1
    SendEvent, {RButton Down}
    Sleep, 1
    If !(GetKeyState("RButton", "P"))
    {
    SendEvent, {RButton Up}
    }
    Sleep, 100
    Return
    }
    ~$*q Up::
    {
    SetTimer, SpamRoll, Off
    Return
    }
    #If
    #If (RobloxActive && BellRoll > 0)
    ~$*c::
    {
    Sleep, 140
    Sleep, BellSleep
    If (BellRoll == 1)
    {
    Loop, 20
    {
    SendInput, q
    Sleep, 1
    }
    Sleep, 5
    SendInput, {RButton Down}
    Sleep, 1
    SendInput, {RButton Up}
    }
    Else If (BellRoll == 2)
    {
    SendInput, {w Down}
    Sleep, 1
    SendInput, q
    Sleep, 5
    If !(GetKeyState("w", "P"))
    {
    SendInput, {w Up}
    }
    Sleep, 5
    SendInput, {RButton Down}
    Sleep, 1
    SendInput, {s Down}
    Sleep, 3
    SendInput, {RButton Up}
    Sleep, 1
    If !(GetKeyState("s", "P"))
    {
    SendInput, {s Up}
    }
    }
    Return
    }
    #If
    #If (RobloxActive && MButtonFunc > 0)
    MButton::
    {
    If (MButtonFunc == 1)
    {
    SendInput, {Control Down}
    Sleep, 3
    SendInput, {LButton Down}
    Sleep, 1
    SendInput, {LButton Up}
    Sleep, 1
    SendInput, {Control Up}
    }
    Else If (MButtonFunc == 2)
    {
    SendInput, %M3FuncMantra%
    Sleep, 1
    SendInput, {LButton Down}
    Sleep, 1
    SendInput, {LButton Up}
    Sleep, 1
    SendInput, {RButton Down}
    Sleep, 1
    SendInput, {RButton Up}
    Loop, 25
    {
    SendInput, r
    Sleep, 1
    }
    }
    Return
    }
    #If
    #If (RobloxActive && PanicParry)
    ~$*z::
    {
    SendInput, {f Down}
    SendInput, {RButton Up}
    Sleep, 1
    SendInput, {RButton Down}
    Sleep, 1
    If !(GetKeyState("RButton", "P"))
    {
    SendInput, {RButton Up}
    }
    SendInput, {LButton Down}
    Sleep, 1
    If !(GetKeyState("LButton", "P"))
    {
    SendInput, {LButton Up}
    }
    While (GetKeyState("z", "P"))
    {
    Sleep, 1
    }
    If !(GetKeyState("f", "P"))
    {
    SendInput, {f Up}
    }
    Return
    }
    #If
    #If (RobloxActive && BetterParry)
    ~$*f::
    {
    SendInput, {RButton Up}
    Sleep, 3
    SendInput, {RButton Down}
    Sleep, 1
    If !(GetKeyState("RButton", "P"))
    {
    SendInput, {RButton Up}
    }
    SendInput, {LButton Down}
    Sleep, 3
    If !(GetKeyState("LButton", "P"))
    {
    SendInput, {LButton Up}
    }
    While (GetKeyState("f", "P"))
    {
    Sleep, 1
    }
    Return
    }
    #If
    #If (RobloxActive && !M1Proof)
    ~$LButton::
    {
    global M1ing := true
    global M1Time := A_TickCount
    If (RollM1 && A_TickCount >= RollM1Time + RollM1CD)
    {
    If (RollcastMovement = 1)
    {
    If !(GetKeyState("w", "P") || GetKeyState("a", "P") || GetKeyState("s", "P") || GetKeyState("d", "P"))
    {
    SendInput, {w Down}
    SetTimer, WUp, -200
    }
    }
    Else If (RollcastMovement = 2)
    {
    If !(GetKeyState("w", "P"))
    {
    SendInput, {w Down}
    SetTimer, WUp, -200
    }
    }
    Sleep, 40
    SendInput, {q Down}
    SendInput, {q Up}
    global RollM1Time := A_TickCount
    }
    RobloxCheck()
    Return
    }
    #If
    #If (LastWord)
    $*Pause::
    {
    WinGetTitle, ActiveTitle, A
    If (InStr(ActiveTitle, "Discord") == 0)
    {
    WinGet, ActiveWindows, List
    Loop, %ActiveWindows%
    {
    WinGetTitle, Title, % "ahk_id " ActiveWindows%A_Index%
    WinGetClass, Class, % "ahk_id " ActiveWindows%A_Index%
    If (InStr(Title, "Discord") && Class = "Chrome_WidgetWin_1")
    {
    DiscordTitle := Title
    Break
    }
    }
    If (DiscordTitle = "")
    {
    Tooltip("Open Discord...")
    Return
    }
    WinActivate, %DiscordTitle%
    WinMaximize, %DiscordTitle%
    Sleep, 250
    }
    Else
    {
    DiscordTitle := ActiveTitle
    }
    If (InStr(DiscordTitle, "@") == 0)
    {
    MouseMove, (40 * A_ScreenWidth / 2559), (200 * A_ScreenHeight / 1439)
    Sleep, 25
    Send, {WheelUp 30}
    MouseMove, (40 * A_ScreenWidth / 2559), (130 * A_ScreenHeight / 1439)
    Sleep, 250
    SendInput, {Blind}{LButton}
    Sleep, 100
    }
    SendInput, ^a
    Sleep, 25
    SendInput, {#} LAST WORD NIGGA
    Sleep, 50
    MouseMove, (2532 * A_ScreenWidth / 2559), (106 * A_ScreenHeight / 1439)
    SendInput, {Enter}
    Sleep, 25
    SendInput, {LButton Down}
    Sleep, 1
    SendInput, {LButton Up}
    MouseMove, (2400 * A_ScreenWidth / 2559), (165 * A_ScreenHeight / 1439)
    Sleep, 25
    SendInput, {LButton Down}
    Sleep, 1
    SendInput, {LButton Up}
    Sleep, 77
    SendInput, {Enter}
    Sleep, 100
    Return
    }
    #If
    #If (SnapTapAD)
    A_Held := 0
    D_Held := 0
    A_Script := 0
    D_Script := 0
    ~$*a::
    {
    A_Held := 1
    If (D_Script)
    {
    D_Script := 0
    Send, {Blind}{d up}
    }
    If (!A_Script)
    {
    A_Script := 1
    }
    Return
    }
    ~$*a up::
    {
    A_Held := 0
    If (A_Script)
    {
    A_Script := 0
    }
    If (D_Held AND !D_Script)
    {
    D_Script := 1
    Send, {Blind}{d down}
    }
    Return
    }
    ~$*d::
    {
    D_Held := 1
    If (A_Script)
    {
    A_Script := 0
    Send, {Blind}{a up}
    }
    If (!D_Script)
    {
    D_Script := 1
    }
    Return
    }
    ~$*d up::
    {
    D_Held := 0
    If (D_Script)
    {
    D_Script := 0
    }
    If (A_Held AND !A_Script)
    {
    A_Script := 1
    Send, {Blind}{a down}
    }
    Return
    }
    #If
    #If (SnapTapHor)
    Left_Held := 0
    Right_Held := 0
    Left_Script := 0
    Right_Script := 0
    $*left::
    {
    Left_Held := 1
    If (Right_Script)
    {
    Right_Script := 0
    Send, {Blind}{right up}
    SetTimer, SendRight, Off
    }
    If (!Left_Script)
    {
    Left_Script := 1
    Send, {Blind}{left down}
    SetTimer, SendLeft, -250
    }
    Return
    }
    $*left up::
    {
    Left_Held := 0
    If (Left_Script)
    {
    Left_Script := 0
    Send, {Blind}{left up}
    SetTimer, SendLeft, Off
    }
    If (Right_Held AND !Right_Script)
    {
    Right_Script := 1
    Send, {Blind}{right down}
    SetTimer, SendRight, -1
    }
    Return
    }
    $*right::
    {
    Right_Held := 1
    If (Left_Script)
    {
    Left_Script := 0
    Send, {Blind}{left up}
    SetTimer, SendLeft, Off
    }
    If (!Right_Script)
    {
    Right_Script := 1
    Send, {Blind}{right down}
    SetTimer, SendRight, -250
    }
    Return
    }
    $*right up::
    {
    Right_Held := 0
    If (Right_Script)
    {
    Right_Script := 0
    Send, {Blind}{right up}
    SetTimer, SendRight, Off
    }
    If (Left_Held AND !Left_Script)
    {
    Left_Script := 1
    Send, {Blind}{left down}
    SetTimer, SendLeft, -1
    }
    Return
    }
    SendRight:
    {
    Loop
    {
    If (Right_Script)
    {
    Send, {Blind}{right down}
    }
    Else
    {
    Send, {Blind}{right up}
    Return
    }
    Sleep, 30
    }
    Return
    }
    SendLeft:
    {
    Loop
    {
    If (Left_Script)
    {
    Send, {Blind}{left down}
    }
    Else
    {
    Send, {Blind}{left up}
    Return
    }
    Sleep, 30
    }
    Return
    }
    #If
    #If (SnapTapWS)
    W_Held := 0
    W_Held := 0
    W_Script := 0
    S_Script := 0
    ~$*w::
    {
    W_Held := 1
    If (S_Script)
    {
    S_Script := 0
    Send, {Blind}{s up}
    }
    If (!W_Script)
    {
    W_Script := 1
    }
    Return
    }
    ~$*w up::
    {
    W_Held := 0
    If (W_Script)
    {
    W_Script := 0
    }
    If (S_Held AND !S_Script)
    {
    S_Script := 1
    Send, {Blind}{s down}
    }
    Return
    }
    ~$*s::
    {
    S_Held := 1
    If (W_Script)
    {
    W_Script := 0
    Send, {Blind}{w up}
    }
    If (!S_Script)
    {
    S_Script := 1
    }
    Return
    }
    ~$*s up::
    {
    S_Held := 0
    If (S_Script)
    {
    S_Script := 0
    }
    If (W_Held AND !W_Script)
    {
    W_Script := 1
    Send, {Blind}{w down}
    }
    Return
    }
    #If
    #If (SnapTapVert)
    Up_Held := 0
    Down_Held := 0
    Up_Script := 0
    Down_Script := 0
    $*up::
    {
    Up_Held := 1
    If (Down_Script)
    {
    Down_Script := 0
    Send, {Blind}{down up}
    SetTimer, SendDown, Off
    }
    If (!Up_Script)
    {
    Up_Script := 1
    Send, {Blind}{up down}
    SetTimer, SendUp, -250
    }
    Return
    }
    $*up up::
    {
    Up_Held := 0
    If (Up_Script)
    {
    Up_Script := 0
    Send, {Blind}{up up}
    SetTimer, SendUp, Off
    }
    If (Down_Held AND !Down_Script)
    {
    Down_Script := 1
    Send, {Blind}{down down}
    SetTimer, SendDown, -1
    }
    Return
    }
    $*down::
    {
    Down_Held := 1
    If (Up_Script)
    {
    Up_Script := 0
    Send, {Blind}{up up}
    SetTimer, SendUp, Off
    }
    If (!Down_Script)
    {
    Down_Script := 1
    Send, {Blind}{down down}
    SetTimer, SendDown, -250
    }
    Return
    }
    $*down up::
    {
    Down_Held := 0
    If (Down_Script)
    {
    Down_Script := 0
    Send, {Blind}{down up}
    SetTimer, SendDown, Off
    }
    If (Up_Held AND !Up_Script)
    {
    Up_Script := 1
    Send, {Blind}{up down}
    SetTimer, SendUp, -1
    }
    Return
    }
    SendUp:
    {
    Loop
    {
    If (Up_Script)
    {
    Send, {Blind}{up down}
    }
    Else
    {
    Send, {Blind}{up up}
    Return
    }
    Sleep, 30
    }
    Return
    }
    SendDown:
    {
    Loop
    {
    If (Down_Script)
    {
    Send, {Blind}{down down}
    }
    Else
    {
    Send, {Blind}{down up}
    Return
    }
    Sleep, 30
    }
    Return
    }
    #If
    #If (RobloxActive && FlashMap)
    $m::
    {
    If (MapTime + 850 >= A_TickCount)
    {
    Return
    }
    Send, {Blind}{m Down}
    global MapTime := A_TickCount
    While(GetKeyState("m", "P"))
    {
    Sleep, 10
    }
    Return
    }
    ~$m Up::
    {
    If (MapUpTime + 750 >= A_TickCount)
    {
    Return
    }
    global MapUpTime := A_TickCount
    While (MapTime + 550 >= A_TickCount)
    {
    Sleep, 5
    }
    Send, {Blind}{m Down}
    Sleep, 1
    Send, {Blind}{m Up}
    Return
    }
    #If
    Repeater1:
    {
    Send, {Blind}{1 Up}
    Send, {Blind}{1 Down}
    Send, {Blind}{1 Up}
    Return
    }
    Repeater2:
    {
    Send, {Blind}{2 Up}
    Send, {Blind}{2 Down}
    Send, {Blind}{2 Up}
    Return
    }
    Repeater3:
    {
    Send, {Blind}{3 Up}
    Send, {Blind}{3 Down}
    Send, {Blind}{3 Up}
    Return
    }
    Repeater4:
    {
    Send, {Blind}{4 Up}
    Send, {Blind}{4 Down}
    Send, {Blind}{4 Up}
    Return
    }
    Repeater5:
    {
    Send, {Blind}{5 Up}
    Send, {Blind}{5 Down}
    Send, {Blind}{5 Up}
    Return
    }
    Repeater6:
    {
    Send, {Blind}{6 Up}
    Send, {Blind}{6 Down}
    Send, {Blind}{6 Up}
    Return
    }
    Repeater7:
    {
    Send, {Blind}{7 Up}
    Send, {Blind}{7 Down}
    Send, {Blind}{7 Up}
    Return
    }
    Repeater8:
    {
    Send, {Blind}{8 Up}
    Send, {Blind}{8 Down}
    Send, {Blind}{8 Up}
    Return
    }
    Repeater9:
    {
    Send, {Blind}{9 Up}
    Send, {Blind}{9 Down}
    Send, {Blind}{9 Up}
    Return
    }
    RepeaterR:
    {
    Send, {Blind}{r Up}
    Send, {Blind}{r Down}
    Send, {Blind}{r Up}
    Return
    }
    #If (RobloxActive)
    ~$*/::
    {
    Sleep, 25
    If (Autoshout)
    {
    SendInput, {Text}!
    }
    SetTimer, Stall, -%ChatDuration%
    global Suspended := true
    Suspend, On
    Return
    }
    ~$#+s::
    {
    global RobloxActive := false
    Return
    }
    ~$LButton Up::
    ~$*LButton Up::
    global M1ing := false
    ~$*Shift::
    {
    RobloxCheck()
    Return
    }
    ~$^RButton::
    {
    global M1Time := A_TickCount
    Return
    }
    ~$0::
    {
    UsedMantra()
    Return
    }
    ~$1::
    {
    If (KCast1 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast1)
    {
    RollCast()
    }
    If (PerfectCast1)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater1)
    {
    SetTimer, Repeater1, 3
    }
    Return
    }
    ~$2::
    {
    If (KCast2 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast2)
    {
    RollCast()
    }
    If (PerfectCast2)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater2)
    {
    SetTimer, Repeater2, 3
    }
    Return
    }
    ~$3::
    {
    If (UnbiddenMacro)
    {
    UsedIceCubes()
    }
    If (KCast3 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast3)
    {
    RollCast()
    }
    If (PerfectCast3)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater3)
    {
    SetTimer, Repeater3, 3
    }
    Return
    }
    ~$4::
    {
    If (KCast4 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast4)
    {
    RollCast()
    }
    If (PerfectCast4)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater4)
    {
    SetTimer, Repeater4, 3
    }
    Return
    }
    ~$5::
    {
    If (KCast5 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast5)
    {
    RollCast()
    }
    If (PerfectCast5)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater5)
    {
    SetTimer, Repeater5, 3
    }
    Return
    }
    ~$6::
    {
    If (KCast6 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast6)
    {
    RollCast()
    }
    If (PerfectCast6)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater6)
    {
    SetTimer, Repeater6, 3
    }
    Return
    }
    ~$7::
    {
    If (KCast7 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast7)
    {
    RollCast()
    }
    If (PerfectCast7)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater7)
    {
    SetTimer, Repeater7, 3
    }
    Return
    }
    ~$8::
    {
    If (KCast8 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast8)
    {
    RollCast()
    }
    If (PerfectCast8)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater8)
    {
    SetTimer, Repeater8, 3
    }
    Return
    }
    ~$9::
    {
    If (KCast9 && A_TickCount >= LastKCast + KCastCooldown)
    {
    If (KCastActivation = 0 || KCastActivation = 1 && !GetKeyState("w", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    Else If (KCastActivation = 2 && !GetKeyState("w", "P") && !GetKeyState("a", "P") && !GetKeyState("s", "P") && !GetKeyState("d", "P"))
    {
    SetTimer, KCast, -1
    Return
    }
    }
    If (RollCast9)
    {
    RollCast()
    }
    If (PerfectCast9)
    {
    SetTimer, PerfectCast, 40
    }
    If (Repeater9)
    {
    SetTimer, Repeater9, 3
    }
    Return
    }
    ~$1 Up::
    {
    Sleep, 5
    SetTimer, Repeater1, Off
    Return
    }
    ~$2 Up::
    {
    Sleep, 5
    SetTimer, Repeater2, Off
    Return
    }
    ~$3 Up::
    {
    Sleep, 5
    SetTimer, Repeater3, Off
    Return
    }
    ~$4 Up::
    {
    Sleep, 5
    SetTimer, Repeater4, Off
    Return
    }
    ~$5 Up::
    {
    Sleep, 5
    SetTimer, Repeater5, Off
    Return
    }
    ~$6 Up::
    {
    Sleep, 5
    SetTimer, Repeater6, Off
    Return
    }
    ~$7 Up::
    {
    Sleep, 5
    SetTimer, Repeater7, Off
    Return
    }
    ~$8 Up::
    {
    Sleep, 5
    SetTimer, Repeater8, Off
    Return
    }
    ~$9 Up::
    {
    Sleep, 5
    SetTimer, Repeater9, Off
    Return
    }
    ~$RButton::
    {
    If (SafeFeint)
    {
    Send, {Blind}{LButton Up}
    }
    SetTimer, PerfectCast, Off
    global NumTime := A_TickCount + 50
    global M1Time := 1
    RobloxCheck()
    Return
    }
    ~$RButton Up::
    {
    If (SafeFeint)
    {
    Sleep, % SafetyTime
    If (M1ing)
    {
    Send, {Blind}{LButton Up}
    Sleep, 3
    Send, {Blind}{LButton Down}
    }
    }
    Return
    }
    Numpad0::
    {
    Send, /
    Return
    }
    NumpadDot::
    {
    SendInput, /
    Sleep, 30
    SendInput, {Space}
    Sleep, 5
    SendInput, ^a
    Sleep, 5
    SendInput, /c System
    Sleep, 5
    SendInput, {Enter}
    Return
    }
    NumpadEnter::
    {
    SendInput, /
    Sleep, 50
    SendInput, {!}mb all
    Sleep, 40
    Send, {Enter}
    Return
    }
    NumpadAdd::
    {
    Type  := ReaperTrueHelpFalse ? "reaper" : "help"
    SendInput, /
    Sleep, 30
    SendInput, {!}%Type% guild base
    Sleep, 30
    Send, {Enter}
    Sleep, 10
    Return
    }
    #If
    TurnOffInvC:
    {
    global InvC := false
    Send, {Blind}{w Up}
    Send, {Blind}{a Up}
    Send, {Blind}{s Up}
    Send, {Blind}{d Up}
    Send, {Blind}{r Up}
    Send, {Blind}{c Up}
    InvCEnabled  := ? "Inverse Controls: Disabled"
    Tooltip(InvCEnabled)
    Update(1)
    Return
    }
    $!1::
    {
    SetTimer, InvCButton, -1
    Return
    }
    ~$!2::
    {
    SetTimer, MovementButton, -1
    Return
    }
    ~$!3::
    {
    SetTimer, PenderButton, -1
    Return
    }
    ~$!4::
    {
    SetTimer, AutoshoutButton, -1
    Return
    }
    ~$!5::
    {
    SetTimer, TrashTalkButton, -1
    Return
    }
    ~$!6::
    {
    SetTimer, VoMButton, -1
    Return
    }
    ~$!7::
    {
    SetTimer, FastLogButton, -1
    Return
    }
    ~$!8::
    {
    SetTimer, BombsButton, -1
    Return
    }
    ~$!9::
    {
    SetTimer, BetterReinforceButton, -1
    Return
    }
    ~$!-::
    {
    ScreenAcross := A_ScreenWidth
    ScreenUp := A_ScreenHeight
    If (Overlay1Enabled)
    {
    Gui, Overlay1:New, -Caption +AlwaysOnTop +ToolWindow +E0x20 +HwndOverlay1
    Gui, Overlay1:Color, %Overlay1Hex%
    Gui, Overlay1:Show, w%ScreenAcross% h%ScreenUp% x0 y0, Overlay 1
    WinSet, Transparent, %Overlay1Percent%, Overlay 1
    }
    If (Overlay2Enabled)
    {
    Gui, Overlay2:New, -Caption +AlwaysOnTop +ToolWindow +E0x20 +HwndOverlay2
    Gui, Overlay2:Color, %Overlay2Hex%
    Gui, Overlay2:Show, w%ScreenAcross% h%ScreenUp% x0 y0, Overlay 2
    WinSet, Transparent, %Overlay2Percent%, Overlay 2
    }
    If (Overlay3Enabled)
    {
    Gui, Overlay3:New, -Caption +AlwaysOnTop +ToolWindow +E0x20 +HwndOverlay3
    Gui, Overlay3:Color, %Overlay3Hex%
    Gui, Overlay3:Show, w%ScreenAcross% h%ScreenUp% x0 y0, Overlay 3
    WinSet, Transparent, %Overlay3Percent%, Overlay 3
    }
    Return
    }
    ~$!=::
    {
    Gui, Overlay1:Destroy
    Gui, Overlay2:Destroy
    Gui, Overlay3:Destroy
    Return
    }