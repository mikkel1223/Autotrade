z::

Send, {Ctrl Down}
Send, t
Sleep,10
Send, {Ctrl Up}
Sleep,10
Send, roblox
Sleep,10
Send, {Enter}
Sleep,100
SetBatchLines -1
SetKeyDelay -1


    Send, {F12}

    Sleep,1000
    Send, {Ctrl Down}
    Send, {Shift Down}
    Send, {P}
    Send, {Ctrl Up}
    Send, {Shift Up}
Sleep,100
Send, Application
Sleep,100
Send, {Enter}
Sleep,400
CoordMode, Mouse, Screen
Click, 1911, 397

#Persistent

; Store the original hook
hHook := DllCall("SetWindowsHookEx", "int", 14, "Ptr", RegisterCallback("MouseHook", "Fast"), "Ptr", 0, "UInt", 0)

; Disable mouse clicks


Send, {Tab}
 
Loop 7 {
    Send, {Down}
    Sleep, 100
}


Send, {Right}
Sleep, 100 

Send, {Down}
Sleep,100

Send, {Tab}
Send, {Tab}

Send, .ROBLOSECURITY
Sleep,100
Send, {Tab}
Send, {Tab}
Send, {Tab}
Send, {Tab}
Sleep,10
Send, {Down}

Send, {Enter}
Send, {Tab}

Send, {Ctrl Down}
Send, {c}
Send, {Ctrl Up}
Sleep, 100
Send, {Ctrl Down}
Send, {Tab}
Send, {Ctrl Up}

Sleep,100
Send, {Ctrl Down}
Send, {v}
Send, {Ctrl Up}
Sleep,10
Send, {Enter}
Sleep,100

Sleep, 100
Send, {Ctrl Down}
Send, {Tab}
Send, {Ctrl Up}

Sleep,100
Send, {Ctrl Down}
Send, {v}
Sleep,10
Send, {Enter}
Send, {Ctrl Up}
Sleep,100



Sleep,10000
; Enable mouse clicks
DllCall("BlockInput", "UInt", 0)

; Unhook the mouse hook
DllCall("UnhookWindowsHookEx", "Ptr", hHook)

; Wait for the script to be manually terminated
InputBox, dummy, Mouse Clicks Disabled, Press OK to exit the script., , 200, 100
return

MouseHook(nCode, wParam, lParam)
{
    return 1 ; Block the mouse click events
}




Return