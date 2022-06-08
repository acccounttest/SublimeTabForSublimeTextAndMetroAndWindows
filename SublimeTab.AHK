#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
;#UseHook Off;
;#MaxHotkeysPerInterval 2
;#Persistent
; #Warn  ; Enable warnings to assist with detecting common errors.
;SHORTCUTS https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen


CapsLock::
Send {tab 1}
Return


#If (!WinActive("Counter-Strike Source") and !WinActive("Synergy") and !WinActive("Counter-Strike:"))
$tab::
;;GetKeyState, aastate, Alt
;;if (aastate = "D"){
;;Return
;;}
;
;;GetKeyState, bbstate, Tab
;;if (bbstate = "U"){
;;if (aastate = "D"){
;;Return
;;}
;;}
;
;GetKeyState, state, Shift
;if (state = "D"){
;Send, {TAB down}{TAB up}
;}  
;else{
;Send {Alt down}{Tab down}
;Keywait, Control
;Send {Control down}
;Sleep 300
;Send {Control up}
;Send {Tab up}
;Send {Alt up}
;
;cant works
;Send ^!{tab}
;
;MouseMove, 494,454,0
;    Loop{   
;            getkeystate,escme,Esc, D
;            if (escme="D")
;            {
;                break
;            }
;            ;getkeystate,escmetoo,RButton, D
;            ;if (escmetoo="D")
;            ;{
;            ;    Send,{Esc}
;            ;    break
;            ;}
;            getkeystate,aa,Control, D
;            getkeystate,bb,LButton, D
;            If (aa="D" OR bb="D"){
;                if (aa="D"){
;                    Send, {LButton down}
;                    Send, {LButton up}
;                    Sleep,100
;                    WinGet, active_id, ID, A
;                    WinShow, ahk_id %active_id%
;                    WinActivate, ahk_id %active_id%
;                    WinSet, AlwaysOnTop, ON, ahk_id %active_id%
;                    Sleep,100
;                }
;                ;if (acount>=500){
;                ;    break
;                ;}
;               ;if (bb="D"){
;                ;    Send,{Control down}
;                ;    Send,{Control up}
;                ;}
;                break
;            }
;            acount+=1
;            if (acount>=1500){
;                break
;            }
;            Sleep 1
;    }
;}
Run, "C:\Users\Default\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\Window Switcher.lnk"
#If
Return


²::
Sleep,150
GetKeyState, state, ²
aastate:=GetKeyState("Tab","P")
if (aastate = 1){
;Send,{²}
Return
}
if (state = "D"){
    ;msgbox % "11"
    WinGet, active_id, ID, A
;WinMaximize, ahk_id %active_id%
WinShow, ahk_id %active_id%
WinActivate, ahk_id %active_id%
WinSet, AlwaysOnTop, ON, ahk_id %active_id%
}
else{
    WinGet, active_id, ID, A
WinSet, AlwaysOnTop, OFF, ahk_id %active_id%
WinSet, Bottom,,A
}
return


; Below is update for app, easy windows switcher, in fact its ´ but depend what lang
#²::            
Send !{ù}
return

$!²::
WinGet, active_id, ID, A
WinSet, AlwaysOnTop, OFF, ahk_id %active_id%
;WinRestore, ahk_id %active_id%
return





;$!*Esc:: return

^Escape:: return

#Esc:: return

;!F4:: return

;*!Esc::


;^v::
;if !WinActive("ahk_class PX_WINDOW_CLASS ahk_exe sublime_text.exe")
;{
;    ;msgbox,"dds"
;    ;SendInput,^v
;    ;Send,^{vk56}
;    ;Send,%Clipboard%
;    ;Send,^{vk56}
;    ;only this below should not alter clipboard content and permit to not add indentation in sublime itself in many langages.
;    Send,+{Ins}
;    ;Note this could not works as before incertain applications, ex: One commander V2, a pasted clipboard content in a folder does not create a new file named by default with the date.
;    Return
;}
;works indentations as expected.
;Send,^+v
;return

:*:vv::
If WinActive("ahk_class PX_WINDOW_CLASS ahk_exe sublime_text.exe")
{
Send,^+v
}
else
{
    ;Send,^v
    Send,+{Ins}
}
return 

+WheelUp::
oki:=WinActive("ahk_exe sublime_text.exe")
if (oki)
{
    ActiveHwnd := WinExist("A")

    SendInput,+{WheelUp}
    ;Sleep,50
    if (oki=ActiveHwnd)
    {
    SendInput,+{WheelUp}
    ;Sleep,50
    SendInput,+{WheelUp}
    ;Sleep,50
    SendInput,+{WheelUp}
    }
}
else
{
SendInput,+{WheelUp} 
}
return


+WheelDown::
oki:=WinActive("ahk_exe sublime_text.exe")
if (oki)
{
    ActiveHwnd := WinExist("A")
    SendInput,+{WheelDown}
    if (oki=ActiveHwnd)
    {
    ;Sleep,50
    SendInput,+{WheelDown}
    ;Sleep,50
    SendInput,+{WheelDown}
    ;Sleep,50
    SendInput,+{WheelDown}
    }
}
else
{
SendInput,+{WheelDown}
}
return


;This lines below are additionnals, it can help when using a window and its full height can't extend at max, so let switch the taskbar and on top flags.
;WIN KEY + F4 OR F5
ABM_SETSTATE    := 10

ABS_NORMAL      := 0x0
ABS_AUTOHIDE    := 0x1
ABS_ALWAYSONTOP := 0x2

VarSetCapacity( APPBARDATA , 36, 0 ) 
Off :=  NumPut(  36, APPBARDATA    ) 
Off :=  NumPut( WinExist("ahk_class Shell_TrayWnd"), Off+0 )

#F4::
 NumPut( ABS_ALWAYSONTOP, Off+24 )
 DllCall("Shell32.dll\SHAppBarMessage", UInt,ABM_SETSTATE, UInt,&APPBARDATA ) 
Return

#F5::
 NumPut( ABS_AUTOHIDE|ABS_ALWAYSONTOP, Off+24 )
 DllCall("Shell32.dll\SHAppBarMessage", UInt,ABM_SETSTATE, UInt,&APPBARDATA )
Return

