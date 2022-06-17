This project development was not long but last at least one year, feel free to donate what you estimated you have been earn in term of time.
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/ot1985)

```
Warning since recent updates, something wrong has been revealed, it seems you need 2 AHK scripts for this to works,
i didn't had this issue, normally it's not required, but with this script, the double tab will not works, just get 
another file.AHK run while one only version at same time of theses, even with no code related(but the AHK need stay
alive and not close immediately too, there must be code lines in it under the header part, just get sure you have at
least 2 .AHK file started, if you don't know what start, choose something you want bind or rebind or simply cut the
code of a script into two, but i am not sure it is really good, now see V3 to know all.
```
# Window manager with modifiers or equikeys in corners and SublimeTab for sublimeText , general use and metro alt+tab(double TAB) (For different european keyboards and shortcuts and whole world with shift lock is TAB, keys)


##IDEA(SEE PAGE BOTTOM FOR W10)

##NEEDS

##HEADERS

##ALL OTHER SCRIPT LINES

##FIRST LINE AND GAMES

##APPLICATIONS

##THIRD IDEA

##MY IDEA

##FREE KEYS

##FUTURE

##THUMBNAILS CONFIGURATION

##END

##V5 AND KEYS

##V8

##W10

##IDEA(SEE PAGE BOTTOM FOR W10)
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

```ahk
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
;#UseHook Off;
;#Persistent
; #Warn  ; Enable warnings to assist with detecting common errors.
;SHORTCUTS https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
CoordMode, Mouse, Screen
```

Or headers made by default with the right click new file then autohotkey, not recommanded:
```autohotkey
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
```

Whole script convertible or modifiable
```autohotkey
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
```

This line is not necessary, it help just to avoid to use the tab functionnality with the application not compatible, mostly games due to keep key pressed continuously for example.
```autohotkey
#If (!WinActive("a window")) and (!WinActive("a game") and !WinActive("another"))
```
...
```autohotkey
#If
```

This line is just for send tab normally in another way, that permit for exemple in sublime text to get the completion working normally, not a normal tab with shift key, to look for first completions matches first of libs,..,classes,..,globals... names.
`Shift`

This is for positionate the mouse accordingly to your resolution supposed to be 1080, but maybe depend your metro banner configuration, it can become usefull with not much apps opened but unselectable when not enough banner space later. Change if you want.
```autohotkey
MouseMove, 494,454,0
```

This means the state can be pressed or not, D or U, for down or up
```autohotkey
(state = "D")```

Here we replace really the tab
```autohotkey
CapsLock::
Send {tab 1}
Return
```



##In application, this can works differently, while the application propose a configuration and control over keys, this could result into new functionnality or new usages of functionnalities, exemple with Sublime Text.

This permit to counter the sends or receives of keys control in the OS level, as windows does.
At least override the behavior without lost the old end even gain another functionnality.
To continue to send the literal tab as spaces or not, without confusion, sublime handle it perfectly like with the original tab key, maybe your configuration is confuse , i suggest you to disable options in main configuration, especially in contradiction with this program and certainly against others same rules in sublime text, elsewhere.
I use Sublime text version 3200, if you experience problem to send a normal tab key, you could try shift+tab or shift+shift lock.



##Third idea: rebind another same application
---
What i do:
- Send window under all others windows, release the key ² very fast.
- Send the window to the front, always on top, press less 0.5 second same key.
- Supress simply the always on top of the application, the others on top should appears automatically and immediatly, combine alt and ².
- Invert groups, soon.
- Select windows by thumbnails the fastest possible, double press the original tab key.
- etc

What this old app does:
- Cycle though identical windows.
- This app add temporal groups.

What another project can do too:
- In ChromeTabMouse, project CTM, use same next window by using shortcut that come from taskbar pinned and positioned app from 1 to 9.
- And/or you can go back the old application same windows.

[ChromeTabMouse](https://github.com/acccounttest/ChromeTabMouse-Chrome-Tab-Mouse)

Easy Window Switcher , wincycle.exe, Located in \%AppData%\Local\NeoSmart Technologies\wincycle\

This other application can do a similar approach, but i needed rewrite the shortcut to make it works cause the key for my country is not convertible with modifiers as it use already one modifier key, example ``` ctrl+` and ` ``` need 2 modifiers or 1, this last application permit to cycle the same windows of
the same application, notepad compatible, 0 config, it should change in main european main countries, but maybe you can find it for you,
 for belgium it is ``` ` ``` backtick but it is well triggered by their application, faster than a uncompiled .ahk file, really fast and usefully accessible,
 the ideal is forward it to this: 

```autohotkey
#²::            
Send !{ù}
Return
```

German langage use another key too, for french it should be the backtick but for me,
 it was the ù present on the same key of the backtick, but this isn't enough, so i use the famous exponent sign with the Win key.

As it is rarely used, it can be found at top left of your keyboard, this is the key left to 1, under escape, replace it, it's not garanted the key detection will still use same behavior or compatibility.

A new shortcut is needed to do this, send window flagged top of all others, below all others of the same flag activated but always on top, repeat the D/U value in the script in the other area of the key and detect if control was in the appropriate status when triggered keys occurs.

You can too make fake groups, by the way you can use and reuse the shortcut, if you do something in contradiction or others shortcuts, the same, you could lose them.



##MY IDEA
------------
In fact, current tool help you to achieve something more interesting, open the window really new always on top, normally you have to do more than one clic, but it does not works for all windows, all the orders now can be achieved in a `click`, earlier in the old fhasion alt-tab behavior, you had to minimum press the control ctrl to be sure the window is on front even after selected it as a white border around the thumbnail, but not under always on top window and maybe under.

AHK use ^ + # ! respectively for control,shift,windows,alt keys
~ $ * are other chars for appliance of the detection, maybe you could start from here, untested on others OS.
Forget about other signs, they are for platform compatibility and at OS level, they are really necessary.
I give others freekeys and all the others shortcuts available for windows management.
If you prefer use another key, you can try, combination of all special keys together is yet unecessary and incompatible or simply.

The unforgettable set always off

```autohotkey
$!²::
WinGet, active_id, ID, A
WinSet, AlwaysOnTop, OFF, ahk_id %active_id%
return
```

Here the concept between send window to the desktop, and set it to the front and visible first.

```autohotkey
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
```



##FREE KEYS
--------------
Same others keys in combination.
```autohotkey
;!²::
;return
;^²::
;return
```

A popup.
```autohotkey
;MsgBox, "debug purposes"
```

Prevent closes, suggest you to modify it and eventually ask and give admin powers before do it.
```autohotkey
;!F4:: return
```

Invalid if line is completed not in one line, you need return.
```autohotkey
;*!Esc::
```

Works.
```autohotkey
$!*Esc::
return
```

Another rebind.
```autohotkey
^Escape::
return
```

Delete the previous behavior to not enter in conflict, normally it should be not incompatible, just the idea is approximatively the same.
```autohotkey
#Esc::
return
```



##FUTURE
-----------
Add handle key `²` 2 seconds is another functionnality as others keys can works and are not conflictual or well deactivable.
The idea is keep remain a list of tab that were previously added in a list of always on top application, in the usual way the list is dynamic, so we could achieve an operation on that list of window, minimize them, remove the on top option to reactive it later on all same windows, but the same with all others windows until there are at least 2 windows in that list, the way to achieve it can look more similar without knowledge, you could do just a list of working application or reuse sometrhing less reliable that will detect any windows, in a loop or with more conditionnals instructions.



##THUMBNAILS CONFIGURATION
------------------------
After the use of the escape key after a `double tab`, the double same key is broken, change the window or type something, it works only when the script does it when we want to close the banner with the `right click` by sending a emulated escape key.
Change the size of metro thumbnails, see my Windows theme project, about metro thumbnails in `alt+tab`.
Important, for the MouseMove, change your thumbnails configuration with WinAeroTweaker, alt+tab section:
- Thumbnails size 300
- Horizontal spacing 10
- Vertical spacing 10
- Left and right margins 20
- Top margin 15
- Bottom margin 10


Personally i prefer use the number 1, no need to choose between them without knowledge of the title, a list is more appropriate, idk if the setting is reloadable on the fly and apply without need to reconnect the user, i don't have multi resolutions, i don't doubt AHK could control the banner of Metro, it could even split the squares if they start to go outside the screen, for me it was yet the case with not much windows but hopefully it's not too much disturbing, just the configuration allow me to have mouse positioned between the most 4 last used application, i have to move a pixel or two to choose the application.
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\NumThumbnails 1 to 16 for 1080 HD

The diode of the caps lock has been made to not stay in unfair status with unfair operation number, normally it should show the light but reverse its status, so when always on it stay always on, same for off, my preference, should works really better with caps lock diode off, if it come back on, then try `ctrl+shift lock` or `alt+shift lock`, 2 times should be enough in the worst cases.

If a problem occurs with the double tab then deactivate it, the normal `alt+tab` can works but as usual and original way, if you want same behaviour, add the section about waiting the `left mouse click` then reuse the steps, just after MouseMove, between lines, KeyWait AND AlwaysOnTop, ON, or, between lines, count:=0 AND #If, respectively for version 1 and version 2; or continue to send the virtualized keys, by default, ² half a second, for set last selected window into always on top mode.

If you want send a combined keys including `tab` then use the original key tab, ex: `ctrl+tab` or `alt+tab`, note: notepad can bring back to the front just by using `ctrl+alt` keys `down` or not when the window in under the user focus but below a stack of windows, it's normal, this program is exceptional with AHK, don't use it for AHK developments and tests.

This version add possibility to cancel the permanent `alt+tab` by sending escape when the user make a `right click` on it, don't use escape, usually when user send escape it break the same double tab and it need much time and operations to return to the normal detection, otherwise you can simply `click` outside the metro banner but with the `right click`.



(Mandatory)
 # Next potential enhancements, two compatibility fix for sticky/toggle/filter/modifiers... keys, here only alt-tab ctrl+esc and alt+esc
---
____

This explains why shortcuts and games essentially are not well done, compatible, or crash applications and computers,especially using alt+tab and fullscreen, principaly.
___

    https://docs.microsoft.com/en-us/windows/deployment/planning/compatibility-fixes-for-windows-8-windows-7-and-windows-vista

This is a long API value from simplest parameters of a call or a configuration in the main registry hive at the location given in the link.
2 of them can be particularly concerned by this project or others I post on Github.
Note the sandbox of chrome can already be deactivated but it will lose advert or other functionalities, by deactivating it there are many advantages and disadvantages:
+Gain latency by loading.
-Lose security and get infected by malwares easier or certainly.
-Lose functionalities intended from the website not from adverts or based on.
-Get less compatibility in future, caused by security or evolutivity.
+Memory enhances the time it becomes compatible in newers OS.

2 values referenced:
 - IgnoreAltTab

The problem occurs when an application fails to function when special key combinations are used.

The fix intercepts the RegisterRawInputDevices API and prevents the delivery of the WM_INPUT messages. This delivery failure forces the included hooks to be ignored and forces DInput to use Windows-specific hooks.

Note
For more detailed information about this application fix, see Using the IgnoreAltTab Fix.

 - IgnoreChromeSandbox

The fix allows Google Chrome to run on systems that have ntdll loaded above 4GB.

Compatibility:
---
Maybe upper.
Windows 10(not tested fully the all my projects).
Windows 8.
Maybe older.

Next you could try to understand more about the sandbox and his specialized flags, tokens are in the end.
https://chromium.googlesource.com/chromium/src/+/refs/heads/main/docs/design/chrome%3A//tracing
Apparently the page is no more accessible, maybe the end of the URL is not well done.

https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-7/cc722093(v=ws.10)


The shift key is incuded in sticky keys, by pressing down 5 times or otherwise, following the system and its version and configuration.
More about this and the utility of the deactivation permanent or temporaly of the filter keys.
https://docs.microsoft.com/en-us/windows-hardware/customize/enterprise/keyboardfilter

##MORE MODIFIER KEYS AND REASONABLE LIMITATIONS
---

Problem when the shiftlock is blocked without numpad diod on, either:
-You need send:
 - `alt`+`shiftlock` 
 - `ctrl`+`shiftlock`
 - `ctrl`+`alt`+`shiftlock` 
While this time i did'nt added `ctrl`+`shiftlock`=`ctrl`+`tab` as it's possible to use it already, and more the ctrl+shiftlock could not works as excepted, and the only way to change the `CAPSLOCK` status is send one of the two key combination, by pairs, no others, but i guess i could try it too and why not use a combination to pause the current script, this is doable by using the AHK routine sendmessage, see doc version 1.1, the most reliable version, the L version.

##V5 AND KEYS
---
The version 5 stopped send continually all the `control` keys and determines application behavior with `modifiers`, the version 4 was perfect to find this even with a timer of 500 to let it less intrusive especially in editors like sublime text, but more, that version added competitive shortcuts to execute permanently, not only the shortcut made that include the `control` key in it was affected but those with another key in combination with `backslash`, just like they could be started with that same second key, the `backslash` on my keyboard as first key of two in a combination, without need to keep it pressed all along, without really send it as application or other OS levels can recognize.

This affected the usage of notepad, editors and other applications without significant advantage except to not have to use shortcuts entirely and continually without systematically terminate it or cancell it.


The need to reuse the key you use for `exponent` is easily replaced with the key following tab key, but with this key it's not possible to send it, I tried literally by escaping, or enclosing it, it is triggered by AHK.


The different way to execute another key following the `tab` key is made differently, this script is just protected against itself.
This can be made like Tab & the key, this could be made to be functional for the whole line of digits, tab as a modifier.



Keys :
- Shift Lock sends a Tab.
- Alt-tab works normally(suppressed).
 - 
- Double Tab, maintain alt-tab opened(Now it's a single tap).
 - 
- Control key can be used after alt-tab and windows will always be on top(no more since one line code, but whole code about $tab needed to be in double in two separated AHK scripts).
 - 
- Right click after alt-tab cancel the GUI, no more since one line is enough all platforms.
 - 
- Left click select the window.
 - 

- The three exponents values in time :
 - 
- Half a second
 - 
- A second
 - 
- Two seconds(not defined)
 - 
- Tab+right clic=Send escape(Removed).
 - 


If you get troubles using a AHK script with specials characters, try to use theses tips:
-Reopen the file with encoding utf-8 with BOM(not only utf-8)
-Escape the character with a tick, i can't represent as usual in markdown because the paired ticks are used and triple too.
-Use at least 2 AHK script started in same time, this can help with short scripts.
```
`
```

Another little anomaly with the old version that used constantly to send `control` keys, without this when `shiftlock` is locked, it has been needed to press `control` with `alt` and `shiftlock`, it restablish the always `capital` on to off, normaly in future, i will check if it is necessary to check if `shiftlock` status can break the show(and btw the choose) of the application switcher, this could replace my current code, this is the path to the symbolic link as lnk, with this Run, "C:\Users\Default\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\Window Switcher.lnk".



##W8
---

Warning script can be broken, under Windows 8 and probably w10(but script part is commented out), if the code part of the windows taskbar double shortcut(one after one for sure bar is reduced) and only this code part, if at start(after headers) or at end, it break differently:
 - At start, it can works if it was previously written the last lines in the script, but it will stop the others main functionnalitites, can't reload.
 - At the end it will stop after a moment, like upper, maybe longer, but others functionnalitites can continue, if this stop, you probably need create  another script with that code alone separated, probably where more matching code part can reside to be interpretted in the same way or sens or reading.

Latest version and lost functionnalities due to code only a single line to make the banner of the "apps" thumbnails :
---
- Sometimes the need to do right click first before the left when you choose a thumbnails, the banner is like stuck else, note it could be the case even if not.
- Always on top is no more needed, it is included in other keys.
- Type it in certains applications that could have been changedin the way they react against a normal tab or more, maybe less "apps" only one tab key.
- ...
- 

##W10
---

-Double tab normally now a simple press, and coordinates changed into the middle of the screen.

-BUG: the exponent key or send window to the background can trigger it to reappear in a shorter detection time.

-Force Taskbar to show or hide, shortcuts are not working/used anymore the same way, OS manage it clearly differently.



## Notes about ^v::
---
<strike>
- Could not works in explorer windows and others applications, to not break others apps too i didn't added another original paste function more generic as it should be almost 100% compatible with the system, here is only for Python and Sublime text, it works well in python because it paste to the current line without have to firstly add *tab(s)* or correct indentation later, while it can too paste multiple lines without deform anything, ommit or add indentation proportionnaly to original line bloc, something that should works certainly with clipboard application or sublime text extensions differently or similarly.
- I can suggest you to use a rare modifier with an original letter, something like Window key or **Fn** with **v**.
- It's mostly all windows UI parts that are concerned, the risk it produce something else or something new is very low, the only thing that could happend is nothing that has been expected.
</strike>
I have not found how to get a clue against every type of paste in all applications, i prefered not override default <kbd>control-v</kbd>, but more reuse only double <kbd>v</kbd> in **sublime** for my formatting.
Maybe you would prefer not overide at all the paste even by double v so comment by ; this line:

```ahk
Send,+{Ins}
```
You can find after this:
```ahk
:*:vv::
;...
return
```

