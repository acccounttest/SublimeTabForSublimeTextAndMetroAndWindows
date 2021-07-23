#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
;#UseHook Off;
;#Persistent
; #Warn  ; Enable warnings to assist with detecting common errors.
;SHORTCUTS https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
CoordMode, Mouse, Screen

;Tab , windows and metro enhanced

CapsLock::
Send {tab 1}
Return

~Alt & ~Tab::
KeyWait,Control,D
Sleep,100
WinGet, active_id, ID, A
WinShow, ahk_id %active_id%
WinActivate, ahk_id %active_id%
WinSet, AlwaysOnTop, ON, ahk_id %active_id%
Sleep,100
Sleep,100
GetKeyState, state, RButton
if (state = "D")
{
Send,{Esc}
}
return

#If (!WinActive("Counter-Strike Source")) and !WinActive("ahk_exe steam.exe"))
$tab::
GetKeyState, state, Shift
if (state = "D"){
Send {TAB down}{TAB up}
}
else{
Send {Alt down}{Tab down}
Keywait Control
Send {Control down}
Sleep 600
Send {Control up}
Send {Tab up}
Send {Alt up}
MouseMove, 494,454,0

GetKeyState, state, RButton
if (state = "D")
{
Send,{Esc}
}
Keywait,Control,D
    Send, {LButton down}
    Send, {LButton up}
    Sleep,100
    WinGet, active_id, ID, A
    WinShow, ahk_id %active_id%
    WinActivate, ahk_id %active_id%
    WinSet, AlwaysOnTop, ON, ahk_id %active_id%
    Sleep,100
}
Return
#If



#²::
Send !{ù}
Return



$!²::
WinGet, active_id, ID, A
WinSet, AlwaysOnTop, OFF, ahk_id %active_id%
return



~²::
Sleep,150
GetKeyState, state, ²
if (state = "D"){
    ;msgbox % "11"
    WinGet, active_id, ID, A
;WinMaximize, ahk_id %active_id%
WinShow, ahk_id %active_id%
WinActivate, ahk_id %active_id%
WinSet, AlwaysOnTop, ON, ahk_id %active_id%
;Process,Priority,....exe, High
;WinRestore, ahk_id %active_id%
}
else{
    WinGet, active_id, ID, A
WinSet, AlwaysOnTop, OFF, ahk_id %active_id%
WinSet, Bottom,,A
}
return
