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
MouseMove, 994,454,0
Send, ^!{tab}
#If
Return

;#If (!WinActive("Counter-Strike Source") and !WinActive("Synergy") and !WinActive("Counter-Strike:"))
;$tab::
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
;;cant works
;;Send ^!{tab}
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
;                ;if (bb="D"){
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
;#If
;Return


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

Necessary key for ChromeTabMouse
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
;;works indentations as expected.
;Send,^+v
;return

:*?:vv::
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


;ALL COMMENTS BELOW CAUSE ONLY OF CHROMETABMOUSE GET ITS OWN FUNCTIONNALITIES.

#If WinActive("ahk_exe sublime_text.exe")
+WheelUp::
;oki:=WinActive("ahk_exe sublime_text.exe")
;if (oki)
;{
    ;ActiveHwnd := WinExist("A")
    SendInput,+{WheelDown}
    ;Sleep,50
    ;if (oki=ActiveHwnd)
    ;{
    SendInput,+{WheelDown}
    ;Sleep,50
    SendInput,+{WheelDown}
    ;Sleep,50
    SendInput,+{WheelDown}
    ;}
;}
;else
;{
;SendInput,+{WheelDown} 
;}
return


+WheelDown::
;oki:=WinActive("ahk_exe sublime_text.exe")
;if (oki)
;{
    ;ActiveHwnd := WinExist("A")
    SendInput,+{WheelUp}
    ;if (oki=ActiveHwnd)
    ;{
    ;Sleep,50
    SendInput,+{WheelUp}
    ;Sleep,50
    SendInput,+{WheelUp}
    ;Sleep,50
    SendInput,+{WheelUp}
    ;}
;}
;else
;{
;SendInput,+{WheelUp}
;}
return

#If


;This functionnality help to choose a completion popup entry with a single key, instead several up or down followed by an enter.
;The first key can help to switch this on or off, the popup has been commented cause if close the sublimetext popup, next there will no need of activate or deactivate
;the special chars line, instead manually change the status on or off, it could be simpler to detect if that popup exists or not by using an exact pixel detection.
;the shift, control, alt and altgr can be used as normally.
;Simly configure the script as azerty or qwerty cause some chars are identicals.

;CONFIGURATION:
;azertyOrQwerty:=true
;USAGE:
;Double press the first special char key to change status on or off, the default is to off.
;Double press the first key and keep it down after 150 ms is enough to send it normally while status in on.
;Single press a special char send the equivalent number of keys according to its position on that keyboard line.
;Keep after 150ms will send up, not down, because sometimes the popupcompletion show the current selected entry 
;to the middle of the menu or as the last entry, not the first, nothing can predict this with certainty.
;NOTE: the next entry is not supported, it require the pixel detection to be sure the first key can be accessible.

global azertyOrQwerty


global startchars2
global startchars2bis

indexme(alist,aval)
{
    ;Msgbox,% alist.Length() "--" aval
    
    Loop,% alist.Length()
    {
        if (alist[A_Index]=aval)
        {
            ;,"THE SAME !"
            Return A_Index
        }
    }
    Return 0
}


#If WinActive("ahk_exe sublime_text.exe")


global lockme:=1



;>!@::
;>!#::
;>!$::
;>!%::
;>!^::
;>!*::
;>!)::
;>!&::
;>!é::
;>!"::
;>!'::
;>!(::
;>!§::
;>!è::
;>!!::
;>!ç::
;>!à::
$@::
$#::
$$::
$%::
$^::
$*::
$)::
$&::
$é::
$"::
$'::
$(::
$§::
$è::
$!::
$ç::
$à::
;Msgbox,% A_ThisHotkey
uniqchar:=LTrim(A_ThisHotkey,"~")
uniqchar:=LTrim(uniqchar,"$")
;Msgbox,% uniqchar
if (uniqchar="&")
{
    ;Msgbox,% uniqchar
    if ((A_TimeSincePriorHotkey < 300) and (A_TimeSincePriorHotkey > 50))
    {
        ;Send,{%uniqchar%}
        ;Msgbox,% "dddd"

        sleep,150
        aastate0:=GetKeyState("&","P")
        if (aastate0=1)
        {
            Send,{&}
            Return
        }

        if (lockme=1)
        {
            lockme:=0
        }
        else
        {
            lockme:=1
        }
        ;Msgbox,4096,SPECHARLOCK,Special chars lock is %lockme%,0.5
        ;NO STATUS CAUSE IT CLOSE COMPLETION POPUP
        Return
    }
    Return
}
sleep,150
aastate0:=GetKeyState(uniqchar,"P")
if (aastate0=1)
{
    reverseorder:=1
    ;lockme:=1
}
else
{
    reverseorder:=0
}

    

azertyOrQwerty:=true


startchars2:=["!","@","#","$","%","^","&","*","(",")"]
startchars2Exceptions:=["$"]
startchars2bis:=["&","é","""","'","(","§","è","!","ç","à"]
startchars2bisExceptions:=["&","é","""","'","(","§","è","!","ç","à"]



aastate1:=GetKeyState("RAlt","P")
aastate2:=GetKeyState("Control","P")
aastate3:=GetKeyState("Alt","P")
aastate4:=GetKeyState("Shift","P")
if ((lockme=1) OR (aastate1=1) OR ((aastate2=1) AND (aastate3=1)) OR (aastate4=1))
{
    ;Msgbox,"OPA"
    Send, {%uniqchar%}
}
else
{
    ;Msgbox,% azertyOrQwerty
    if (azertyOrQwerty=true)
    {
        ;Msgbox,% "OOOO" uniqchar
        superind:=indexme(startchars2bis,uniqchar)
        ;Msgbox,% superind
        superind2:=indexme(startchars2,uniqchar)
    }
    else
    {
        superind:=indexme(startchars2,uniqchar)
        superind2:=indexme(startchars2bis,uniqchar)
    }
    ;Msgbox,% superind
    ;
    if (superind=0)
    {
        Send, {%uniqchar%}
        Return
    }
    Loop,% superind
    {
        if (reverseorder=1)
        {
            Send, {Up}
        }
        else
        {
            Send, {Down}
        }
        
        Sleep,35
    }
    Sleep,100
    Send,{Tab}
}


return
#If

;;This lines below are additionnals, it can help when using a window and its full height can't extend at max, so let switch the taskbar and on top flags.
;;WIN KEY + F4 OR F5
;ABM_SETSTATE    := 10
;
;ABS_NORMAL      := 0x0
;ABS_AUTOHIDE    := 0x1
;ABS_ALWAYSONTOP := 0x2
;
;VarSetCapacity( APPBARDATA , 36, 0 ) 
;Off :=  NumPut(  36, APPBARDATA    ) 
;Off :=  NumPut( WinExist("ahk_class Shell_TrayWnd"), Off+0 )
;
;#F4::
; NumPut( ABS_ALWAYSONTOP, Off+24 )
; DllCall("Shell32.dll\SHAppBarMessage", UInt,ABM_SETSTATE, UInt,&APPBARDATA ) 
;Return
;
;#F5::
; NumPut( ABS_AUTOHIDE|ABS_ALWAYSONTOP, Off+24 )
; DllCall("Shell32.dll\SHAppBarMessage", UInt,ABM_SETSTATE, UInt,&APPBARDATA )
;Return
;
