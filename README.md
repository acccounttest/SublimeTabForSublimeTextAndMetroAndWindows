# Window manager with modifiers or equikeys in corners and SublimeTab for sublimeText , general use and metro alt+tab (For different european keyboards and shortcuts and whole world with tab and shift lock, keys)


##IDEA

##NEEDS

##HEADERS

##ALL OTHER SCRIPT LINES

##FIRST LINE AND GAMES

##APPLICATIONS

##THIRD IDEA

##MY IDEA

##FREE KEYS

##VERSION 1 NOW VERSION2

##IDEA
--------
Main idea is replace the tab of the keyboard with shift lock, i prefer and is nearer the others keys but much more used.

The second functionnality is about the windows selection, the metro applications banner need to stay on top of all without need to keep press the keys, you can 
continue to use others keys and no need to press other more, they are just acting as normally.

Third application do same but not with blacklist/whitelist but groups but temporally only and not top of all others is considered, as well not under all others or all others inverted.

Sublime Text is nice but Tab is nicer.
Alt+tab by default in Windows 8 is metro, just configure their sizes to see more squares, set thumbnails a little reduced, ideal is dynamic cause the 1080 make sometimes bigger otherwise others lesser(See my Windows theme for know it).
Always on top is not easy and not usable with all others alt+tab, this script can add the necessary that was no more necessary and add more and more.



##NEEDS
----------
The AHK langage is a script langage, very the most easiest langage to start to learn without discontinuity, it help maintain,
reproduce and classify all the keys of your keyboard; if you need, all you have to do is copy paste the script,
this one is not specially suspicious, mathematical, or impossible.
Juste install AHK, personnaly, i prefer the AHK_L 64 Unicode, even if greater part or forks are probably concerning the
most critical compatibility reason to achieve aims in any circumstances, the encoding, is normally 100% convertible in
any automation scripts.



##Headers part or right clic new folder and new file and click Autohotkey
-------------------------------------------------------------------------
In games it coud be necessary to deactive script temporaly, or pause shortcuts by same right clic on icon in notification area, kill it or blacklist the application, accessible in all proper ways to do it, presented in the simplest form in this script, by using the title of the windows, it's rarely needed to aim the window more specifically, don't forget eventually in a more complex matching window attribute, use the regex options each times you did, example with SetTitleMatchMode, it apply until it is reapplied, it is not used in this script, if you want not exclude applications from this for the moment, just comment out the line starting by #If and the line #If, with the commentary sign ; first. 

`
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
;#UseHook Off;
;#Persistent
; #Warn  ; Enable warnings to assist with detecting common errors.
;SHORTCUTS https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
CoordMode, Mouse, Screen
`

Or headers made by default with the right click new file then autohotkey, not recommanded:
`
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
`

##Whole script convertible or modifiable

`
CapsLock::
Send {tab 1}
Return

#If (!WinActive("Counter-Strike Source")) and (!WinActive("Example") and !WinActive("Sample"))
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
KeyWait, LButton, D
Sleep,150
GetKeyState, state, Control
if (state = "D"){
    WinGet, active_id, ID, A
    WinSet, AlwaysOnTop, ON, ahk_id %active_id%
}
}
Return
#If
`

This line is not necessary, it help just to avoid to use the tab functionnality with the application not compatible, mostly games due to keep key pressed continuously for example.
`#If (!WinActive("a window")) and (!WinActive("a game") and !WinActive("another"))`
...
`#If`

This line is just for send tab normally in another way, that permit for exemple in sublime text to get the completion working normally, not a normal tab with shift key, to look for first completions matches first of libs,..,classes,..,globals... names.
`Shift`

This is for positionate the mouse accordingly to your resolution supposed to be 1080, but maybe depend your metro banner configuration, it can become usefull with not much apps opened but unselectable when not enough banner space later. Change if you want.
`
MouseMove, 494,454,0
`

This means the state can be pressed or not, D or U, for down or up
`(state = "D")`

Here we replace really the tab
`
CapsLock::
Send {tab 1}
Return
`



##In application, this can works differently, while the application propose a configuration and control over keys, this could result into new functionnality or new usages of functionnalities, exemple with Sublime Text.

This permit to counter the sends or receives of keys control in the OS level, as windows does.
At least override the behavior without lost the old end even gain another functionnality.
To continue to send the literal tab as spaces or not, without confusion, sublime handle it perfectly like with the original tab key, maybe your configuration is confuse , i suggest you to disable options in main configuration, especially in contradiction with this program and certainly against others same rules in sublime text, elsewhere.
I use Sublime text version 3200, if you experience problem to send a normal tab key, you could try shift+tab or shift+shift lock.



##Third idea: rebind another same application

What i do:
1.Send window under all others windows, release the key ² very fast.
1.Send the window to the front, always on top, press less 0.5 second same key.
1.Supress simply the always on top of the application, the others on top should appears automatically and immediatly, combine alt and ².
1.Invert groups, soon.
1.Select windows by thumbnails the fastest possible, double press the original tab key.
1.etc

What this old app does:
1.Cycle though identical windows.
1.This app add temporal groups.

Easy Window Switcher , wincycle.exe, Located in \%AppData%\Local\NeoSmart Technologies\wincycle\

This other application can do a similar approach, but i needed rewrite the shortcut to make it works cause the key for my country is not convertible with modifiers as it use already one modifier key, example ctrl+` and ` need 2 modifiers or 1, this last application permit to cycle the same windows of
the same application, notepad compatible, 0 config, it should change in main european main countries, but maybe you can find it for you,
 for belgium it is ` backtick but it is well triggered by their application, faster than a uncompiled .ahk file, really fast and usefully accessible,
 the ideal is forward it to this: 

`
#²::            
Send !{ù}
Return
`

German langage use another key too, for french it should be the backtick but for me,
 it was the ù present on the same key of the backtick, but this isn't enough, so i use the famous exponent sign with the Win key.

As it is rarely used, it can be found at top left of your keyboard, this is the key left to 1, under escape, replace it, it's not garanted the key detection will still use same behavior or compatibility.

A new shortcut is needed to do this, send window flagged top of all others, below all others of the same flag activated but always on top, repeat the D/U value in the script in the other area of the key and detect if control was in the appropriate status when triggered keys occurs.

You can too make fake groups, by the way you can use and reuse the shortcut, if you do something in contradiction or others shortcuts, the same, you could lose them.



##MY IDEA
------------
In fact, current tool help you to achieve something more interesting, open the window really new always on top, normally you have to do more than one clic, but it does not works for all windows, all the orders now can be achieved in a clic, earlier in the old fhasion alt-tab behavior, you had to minimum press the control ctrl to be sure the window is on front even after selected it as a white border around the thumbnail, but not under always on top window and maybe under.

AHK use ^ + # ! respectively for control,shift,windows,alt keys
~ $ * are other chars for appliance of the detection, maybe you could start from here, untested on others OS.
Forget about other signs, they are for platform compatibility and at OS level, they are really necessary.
I give others freekeys and all the others shortcuts available for windows management.
If you prefer use another key, you can try, combination of all special keys together is yet unecessary and incompatible or simply.

The unforgettable set always off

`
$!²::
WinGet, active_id, ID, A
WinSet, AlwaysOnTop, OFF, ahk_id %active_id%
return
`

Here the concept between send window to the desktop, and set it to the front and visible first.

`
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
`



##FREE KEYS
--------------
Same others keys in combination.
`
;!²::
;return
;^²::
;return
`

A popup.
`
;MsgBox, "debug purposes"
`

Prevent closes, suggest you to modify it and eventually ask and give admin powers before do it.
`
;!F4:: return
`

Invalid if line is completed not in one line, you need return.
`
;*!Esc::
`

Works.
`
$!*Esc::
return
`

Another rebind.
`
^Escape::
return
`

Delete the previous behavior to not enter in conflict, normally it should be not incompatible, just the idea is approximatively the same.
`
#Esc::
return
`



##FUTURE
-----------
Add handle key `²` 2 seconds is another functionnality as others keys can works and are not conflictual or well deactivable.
The idea is keep remain a list of tab that were previously added in a list of always on top application, in the usual way the list is dynamic, so we could achieve an operation on that list of window, minimize them, remove the on top option to reactive it later on all same windows, but the same with all others windows until there are at least 2 windows in that list, the way to achieve it can look more similar without knowledge, you could do just a list of working application or reuse sometrhing less reliable that will detect any windows, in a loop or with more conditionnals instructions.



##VERSION 1 NOW VERSION2
------------------------
After the use of the escape key after a `double tab`, the double same key is broken, change the window or type something, it works only when the script does it when we want to close the banner with the `right click` by sending a emulated escape key.
Change the size of metro thumbnails, see my Windows theme project, about metro thumbnails in `alt+tab`.
Important, for the MouseMove, change your thumbnails configuration with WinAeroTweaker, alt+tab section:
-1.Thumbnails size 300
-1. Horizontal spacing 10
-1. Vertical spacing 10
-1. Left and right margins 20
-1. Top margin 15
-1. Bottom margin 10


Personally i prefer use the number 1, no need to choose between them without knowledge of the title, a list is more appropriate, idk if the setting is reloadable on the fly and apply without need to reconnect the user, i don't have multi resolutions, i don't doubt AHK could control the banner of Metro, it could even split the squares if they start to go outside the screen, for me it was yet the case with not much windows but hopefully it's not too much disturbing, just the configuration allow me to have mouse positioned between the most 4 last used application, i have to move a pixel or two to choose the application.
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\NumThumbnails 1 to 16 for 1080 HD

The diode of the caps lock has been made to not stay in unfair status with unfair operation number, normally it should show the light but reverse its status, so when always on it stay always on, same for off, my preference, should works really better with caps lock diode off, if it come back on, then try `ctrl+shift lock` or `alt+shift lock`, 2 times should be enough in the worst cases.

If a problem occurs with the double tab then deactivate it, the normal `alt+tab` can works but as usual and original way, if you want same behaviour, add the section about waiting the `left mouse click` then reuse the steps, just after MouseMove, between lines, KeyWait AND AlwaysOnTop, ON, or, between lines, count:=0 AND #If, respectively for version 1 and version 2; or continue to send the virtualized keys, by default, ² half a second, for set last selected window into always on top mode.

If you want send a combined keys including `tab` then use the original key tab, ex: `ctrl+tab` or `alt+tab`, note: notepad can bring back to the front just by using `ctrl+alt` keys `down` or not when the window in under the user focus but below a stack of windows, it's normal, this program is exceptional with AHK, don't use it for AHK developments and tests.

This version add possibility to cancel the permanent `alt+tab` by sending escape when the user make a `right click` on it, don't use escape, usually when user send escape it break the same double tab and it need much time and operations to return to the normal detection, otherwise you can simply `click` outside the metro banner but with the `right click`.

This version need to be explicitly compatible with certain applications , steam.exe, but compatible with much more others for bring to front, ex: consoles, it does not override the window application preference, always on top, exemple with steam.exe, without add it in exception list, it stack the captures of tabs like right click so when user want use the right click, it is appearing and disappearing immediately, so the number of false tab into false right click need to be inferiors, the number of real right click need to be equal or superior to remove the bug and allow the drop down menu to stay visible and not close directly, it's very rare.
