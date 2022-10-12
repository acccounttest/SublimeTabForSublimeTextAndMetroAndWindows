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
# Window manager with modifiers or equikeys in corners and **SublimeTab** for *SublimeText* , general use and metro alt+tab(double TAB) (For different european keyboards and shortcuts and whole world with shift lock is TAB, keys)


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
Main idea is replace the <kbd>tab</kbd> of the keyboard with <kbd>shift lock</kbd>, i prefer and is nearer the others keys but much more used.

The second functionnality is about the windows selection, the metro applications banner need to stay on top of all without need to keep press the keys, you can continue to use others keys and no need to press other more, they are just acting as normally.

Third application do same but not with blacklist/whitelist but groups but temporally only and not top of all others is considered, as well not under all others or all others inverted.

**Sublime Text** is nice but Tab is nicer.
<kbd>Alt+tab</kbd> by default in Windows 8 is metro, just configure their sizes to see more squares, set thumbnails a little reduced, ideal is dynamic cause the 1080 make sometimes bigger otherwise others lesser(See my Windows theme for know it).
Always on top is not easy and not usable with all others <kbd>alt+tab</kbd>, this script can add the necessary that was no more necessary and add more functionnalities, old versions were better for old systems.



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

Or headers made by default with the <kbd>right click</kbd> new file then Autohotkey, not recommanded:
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

This line is just for send tab normally in another way, that permit for exemple in **Sublime text** to get the completion working normally, not a normal <kbd>tab</kbd> with <kbd>shift key</kbd>, to look for first completions matches first of libs,..,classes,..,globals... names.
<kbd>Shift</kbd>

This is for positionate the mouse accordingly to your resolution supposed to be 1080, but maybe depend your metro banner configuration, it can become usefull with not much apps opened but unselectable when not enough banner space later. Change if you want.
```autohotkey
MouseMove, 494,454,0
```

This means the state can be pressed or not, <kbd>D</kbd> or <kbd>U</kbd>, for <kbd>down</kbd> or <kbd>up</kbd>
```autohotkey
(state = "D")```

Here we replace really the tab
```autohotkey
CapsLock::
Send {tab 1}
Return
```



##In application, this can works differently, while the application propose a configuration and control over keys, this could result into new functionnality or new usages of functionnalities, exemple with **Sublime Text**.

This permit to counter the sends or receives of keys control in the OS level, as windows does.
At least override the behavior without lost the old end even gain another functionnality.
To continue to send the literal <kbd>ta</kbd>b as <kbd>spaces</kbd> or not, without confusion, **Sublime** handle it perfectly like with the original <kbd>tab key</kbd>, maybe your configuration is confuse , i suggest you to disable options in main configuration, especially in contradiction with this program and certainly against others same rules in **Sublime text**, elsewhere.
I use **Sublime text** version 3200, if you experience problem to send a normal <kbd>tab key</kbd>, you could try <kbd>shift+tab</kbd> or <kbd>shift+shift lock</kbd>, this key status could be locked definitively too with AHK, and should still with any other combination of <kbd>modifier(s) key(s)</kbd>, maybe not with the <kbd>numpad lock</kbd> status like when you can press <kbd>Numpad4</kbd> in the same time and it should switch despit a AHK script running include a line to control this status definitively.



##Third idea: rebind another same application
---
What i do:
- Send window under all others windows, release the key <kbd>²</kbd> very fast.
- Send the window to the front, always on top, press less 0.5 second same key.
- Supress simply the always on top of the application, the others on top should appears automatically and immediatly, combine <kbd>alt</kbd> and <kbd>²</kbd>.
- Invert groups, soon.
- Select windows by thumbnails the fastest possible, double press the original tab key.
- etc

What this old app does:
- Cycle though identical windows.
- This app add temporal groups.

What another project can do too:
- In ChromeTabMouse, project CTM, use same next window by using shortcut that come from taskbar pinned and positioned app from <kbd>1</kbd> to <kbd>9</kbd>.
- And/or you can go back the old application same windows.

[ChromeTabMouse](https://github.com/acccounttest/ChromeTabMouse-Chrome-Tab-Mouse)

`Easy Window Switcher , wincycle.exe, Located in \%AppData%\Local\NeoSmart Technologies\wincycle\`

This other application can do a similar approach, but i needed rewrite the shortcut to make it works cause the key for my country is not convertible with modifiers as it use already one modifier key, example <kbd>ctrl+`<kbd> and <kbd>`</kbd> need 2 modifiers or 1, this last application permit to cycle the same windows of the exact same application name, notepad compatible, 0 config, it should change in main European main countries, but maybe you can find it for you, for Belgium it is <kbd> ´ </kbd> <kbd>tick</kbd>, but it is well triggered by their application, faster than a uncompiled .ahk file, really fast and usefully accessible, the real utility is you can pla ywith temp windows up to 3 to never lose them, the ideal is forward it to this: 

```autohotkey
#²::            
Send !{ù}
Return
```

German langage use another key too, for french it should be the <kbd>backtick</kbd> but for me, it was the <kbd>ù</kbd> present on the same key of the <kbd>backtick</kbd>, but this isn't enough, so i use the famous <kbd>exponent</kbd> sign with the <kbd>Win key</kbd>.

As it is rarely used, it can be found at top left of your keyboard, this is the <kbd>left key</kbd> to 1, under <kbd>escape</kbd>, replace it, it's not garanted the key detection will still use the same behavior or compatibility.

A new shortcut is needed to do this, send window flagged top of all others, below all others of the same flag activated but always on top, repeat the <kbd>D</kbd>/<kbd>U</kbd> value in the script in the other area of the key and detect if control was in the appropriate status when triggered keys occurs.

You can too make fake groups, by the way you can use and reuse the shortcut, if you do something in contradiction or others shortcuts, the same, you could lose them.



##MY IDEA
------------
In fact, current tool help you to achieve something more interesting, open the window really new always on top, normally you have to do more than one clic, but it does not works for all windows, all the orders now can be achieved in a <kbd>click</kbd>, earlier in the old fashion <kbd>alt-tab</kbd> behavior, you had to minimum press the <kbd>control</kbd> to be sure the window is on front even after selected it as a white border around the thumbnail, but not under always on top window and maybe under.

AHK use ^ + # ! respectively for control,shift,windows,alt keys
~ $ * are other chars for appliance of the detection, maybe you could start from here, untested on others OS.
Forget about other signs, they are for platform compatibility and at OS level, they are really necessary.
I give others freekeys and all the others shortcuts available for windows management.
If you prefer use another key, you can try, combination of all special keys together is yet unecessary and incompatible or simply.

The unforgettable set always off.

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
Add handle key <kbd>²</kbd> 2 seconds is another functionnality as others keys can works and are not conflictual or well deactivable.
The idea is keep remain a list of tab(s) that were previously added in a list of always on top application, in the usual way the list is dynamic, so we could achieve an operation on that list of window, minimize them, remove the on top option to reactive it later on all same windows, but the same with all others windows until there are at least 2 windows in that list, the way to achieve it can look more similar without knowledge, you could do just a list of working application or reuse sometrhing less reliable that will detect any windows, in a loop or with more conditionnals instructions.



##THUMBNAILS CONFIGURATION
------------------------
After the use of the escape key after a <kbd>double tab</kbd>, the double same key is broken, change the window or type something, it works only when the script does it when we want to close the banner with the <kbd>right click</kbd> by sending a emulated escape key.
Change the size of metro thumbnails, see my Windows theme project, about metro thumbnails in <kbd>alt+tab</kbd>.
Important, for the MouseMove, change your thumbnails configuration with WinAeroTweaker, <kbd>alt+tab</kbd> section:
- Thumbnails size 300
- Horizontal spacing 10
- Vertical spacing 10
- Left and right margins 20
- Top margin 15
- Bottom margin 10


Personally i prefer use the number 1, no need to choose between them without knowledge of the title, a list is more appropriate, idk if the setting is reloadable on the fly and apply without need to reconnect the user, i don't have multi resolutions, i don't doubt AHK could control the banner of Metro, it could even split the squares if they start to go outside the screen, for me it was yet the case with not much windows but hopefully it's not too much disturbing, just the configuration allow me to have mouse positioned between the most 4 last used application, i have to move a pixel or two to choose the application.
 
`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband\NumThumbnails`
 
1 to 16 for 1080 HD

The diode of the caps lock has been made to not stay in unfair status with unfair operation number, normally it should show the light but reverse its status, so when always on it stay always on, same for off, my preference, should works really better with caps lock diode off, if it come back on, then try ctrl+shift lock</kbd> or <kbd>alt+shift lock</kbd>, 2 times should be enough in the worst cases.

If a problem occurs with the double tab then deactivate it, the normal <kbd>alt+tab</kbd> can works but as usual and original way, if you want same behaviour, add the section about waiting the <kbd>left mouse click</kbd> then reuse the steps, just after MouseMove, between lines, KeyWait AND AlwaysOnTop, ON, or, between lines, count:=0 AND #If, respectively for version 1 and version 2; or continue to send the virtualized keys, by default, <kbd>²</kbd> half a second, for set last selected window into always on top mode.

If you want send a combined keys including <kbd>tab</kbd> then use the original key tab, ex: <kbd>ctrl+tab</kbd> or <kbd>alt+tab</kbd>, note: notepad can bring back to the front just by using <kbd>ctrl+alt</kbd> keys <kbd>down</kbd> or not when the window in under the user focus but below a stack of windows, it's normal, this program is exceptional with AHK, don't use it for AHK developments and tests.

This version add possibility to cancel the permanent <kbd>alt+tab</kbd> by sending escape when the user make a <kbd>right click</kbd> on it, don't use <kbd>escape</kbd>, usually when user send <kbd>escape</kbd> it break the same double tab and it need much time and operations to return to the normal detection, otherwise you can simply <kbd>click</kbd> outside the metro banner but with the <kbd>right click</kbd>.



(Mandatory)
 # Next potential enhancements, two compatibility fix for sticky/toggle/filter/modifiers... keys, here only <kbd>alt-tab</kbd> <kbd>ctrl+esc</kbd> and <kbd>alt+esc</kbd>
---
____

This explains why shortcuts and games essentially are not well done, compatible, or crash applications and computers, especially using <kbd>alt+tab</kbd> and fullscreen, principaly.
___

`https://docs.microsoft.com/en-us/windows/deployment/planning/compatibility-fixes-for-windows-8-windows-7-and-windows-vista`

This is a long API value from simplest parameters of a call or a configuration in the main registry hive at the location given in the link.
2 of them can be particularly concerned by this project or others I post on Github.
Note the sandbox of chrome can already be deactivated but it will lose advert or other functionalities, by deactivating it there are many advantages and disadvantages:
 + Gain latency by loading.
 - Lose security and get infected by malwares easier or certainly.
 - Lose functionalities intended from the website not from adverts or based on.
 - Get less compatibility in future, caused by security or evolutivity.
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
`https://chromium.googlesource.com/chromium/src/+/refs/heads/main/docs/design/chrome%3A//tracing`
Apparently the page is no more accessible, maybe the end of the URL is not well done.

`https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-7/cc722093(v=ws.10)`

The shift key is incuded in sticky keys, by pressing down 5 times or otherwise, following the system and its version and configuration.
More about this and the utility of the deactivation permanent or temporaly of the filter keys.
 
`https://docs.microsoft.com/en-us/windows-hardware/customize/enterprise/keyboardfilter`

 
##MORE MODIFIER KEYS AND REASONABLE LIMITATIONS
---

Problem when the shiftlock is blocked without numpad diod on, either:
-You need send:
 - <kbd>alt+shiftlock</kbd>
 - <kbd>ctrl+shiftlock</kbd>
 - <kbd>ctrl+alt+shiftlock</kbd>
While this time i did'nt added <kbd>ctrl+shiftlock</kbd> = <kbd>ctrl+tab</kbd> as it's possible to use it already, and more the <kbd>ctrl+shiftlock</kbd> could not works as excepted, and the only way to change the <kbd>CAPSLOCK</kbd> status is send one of the two key combination, by pairs, no others, but i guess i could try it too and why not use a combination to pause the current script, this is doable by using the AHK routine sendmessage, see doc version 1.1, the most reliable version, the L version.

##V5 AND KEYS
---
The version 5 stopped send continually all the <kbd>control</kbd> keys and determines application behavior with <kbd>modifiers</kbd>, the version 4 was perfect to find this even with a timer of 500 to let it less intrusive especially in editors like **Sublime text**, but more, that version added competitive shortcuts to execute permanently, not only the shortcut made that include the <kbd>control</kbd> key in it was affected but those with another key in combination with <kbd>backslash</kbd>, just like they could be started with that same second key, the <kbd>backslash</kbd> on my keyboard as first key of two in a combination, without need to keep it pressed all along, without really send it as application or other OS levels can recognize.

This affected the usage of notepad, editors and other applications without significant advantage except to not have to use shortcuts entirely and continually without systematically terminate it or cancell it.


The need to reuse the key you use for <kbd>exponent</kbd> is easily replaced with the key following tab key, but with this key it's not possible to send it, I tried literally by escaping, or enclosing it, it is triggered by AHK.


The different way to execute another key following the <kbd>tab</kbd> key is made differently, this script is just protected against itself.
This can be made like Tab & the key, this could be made to be functional for the whole line of digits, tab as a modifier, you can experiment it in the project CTM differently.



Keys :
 - <kbd>Shift Lock</kbd> sends a <kbd>Tab</kbd>.
 - <kbd>Alt-tab</kbd> works normally(suppressed).
 - 
 - <kbd>Double Tab</kbd>, maintain <kbd>alt-tab</kbd> opened(Now it's a single tap).
 - 
 - <kbd>Control key</kbd> can be used after <kbd>alt-tab</kbd> and windows will always be on top(no more since one line code, but whole code about $tab needed to be in double in two separated AHK scripts).
 - 
 - <kbd>Right click</kbd> after <kbd>alt-tab</kbd> cancel the GUI, no more since one line is enough all platforms.
 - 
 - <kbd>Left click</kbd> select the window.
 - 
 - <kbd>Alt + Right click</kbd> still necessary since one line code was implemented for all solutions, usually not specially, example with CTM that can get system clipboard frozen, so you must quit the current browser concerned, using **SublimeTab** with a single Tab does not solve the banner that continue to be shown, even a simple right click does not change the white highlight around windows during this shortcut and the other with the modifier too. 


- The three exponents values in time :
 - 
- Half a second
 - 
- A second
 - 
- Two seconds(not defined)
 - 
- <kbd>Tab+right</kbd> click=Send <kbd>escape</kbd>(Removed).
 - 


If you get troubles using a AHK script with specials characters, try to use theses tips:
 - Reopen the file with encoding utf-8 with BOM(not only utf-8)
 - Escape the character with a <kbd>tick</kbd>, i can't represent as usual in markdown because the paired ticks are used and triple too.
 - Use at least 2 AHK script started in same time, this can help with short scripts.
```
`
```

Another little anomaly with the old version that used constantly to send <kbd>control</kbd> keys, without this when <kbd>shiftlock</kbd> is locked, it has been needed to press <kbd>control</kbd> with <kbd>alt</kbd> and <kbd>shiftlock</kbd>, it restablish the always <kbd>capital</kbd> on to off, normaly in future, i will check if it is necessary to check if <kbd>shiftlock</kbd> status can break the show(and BTW the choose) of the application switcher, this could replace my current code, this is the path to the symbolic link as ".lnk", with this : 
 
```ahk
 Run, "C:\Users\Default\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\Window Switcher.lnk".
```


##W8
---

Warning script can be broken, under Windows 8 and probably w10(but script part is commented out), if the code part of the windows taskbar double shortcut(one after one for sure bar is reduced) and only this code part, if at start(after headers) or at end, it break differently:
 - At start, it can works if it was previously written the last lines in the script, but it will stop the others main functionalities, can't reload.
 - At the end it will stop after a moment, like upper, maybe longer, but others functionnalitites can continue, if this stop, you probably need create another script with that code alone separated, probably where more matching code part can reside to be interpretted in the same way or sens or reading.

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



## Notes about paste with/wo indentation, now universal with vv
---
<strike>
- Could not works in explorer windows and others applications, to not break others apps too i didn't added another original paste function more generic as it should be almost 100% compatible with the system, here is only for Python and **Sublime text**, it works well in python because it paste to the current line without have to firstly add <kbd>tab(s)</kbd> or correct indentation later, while it can too paste multiple lines without deform anything, ommit or add indentation proportionnaly to original line bloc, something that should works certainly with clipboard application or sublime text extensions differently or similarly.
- I can suggest you to use a rare modifier with an original letter, something like Window key or <kbd>Fn</kbd> with <kbd>v</kbd>.
- It's mostly all windows UI parts that are concerned, the risk it produce something else or something new is very low, the only thing that could happend is nothing that has been expected.
</strike>
I have not found how to get a clue against every type of paste in all applications, i prefered not override default <kbd>control-v</kbd>, but more reuse only double <kbd>v</kbd> in **sublime** for my formatting.
Maybe you would prefer not overide at all the paste even by double v so comment by ; this line:

```ahk
Send,+{Ins}
```
You can find after this:
```ahk
:*?:vv::
;...
return
```

## About sublime text and multi selection with indentation
---

The subject of the multi cursor in **Sublime text** with the previous shortcuts can miss the first line when you want paste the same content of each lines to every new lines and same lines amount, but it can fail for certains reasons, not with <kbd>win key</kbd> and <kbd>v key</kbd>, the next idea is "howto" do that by using multi cursors per area at the same time each x lines per tag number in the texts parts.
```ahk
;pureclipboard content instead
<#v::
    Clip0 = %ClipBoardAll%
    ClipBoard = %ClipBoard%
    Send ^v
    Sleep 50
    ClipBoard = %Clip0%
    VarSetCapacity(Clip0, 0)
return
```


## not included, open task manager faster
---

Another *trick* for thoses that like to use and switch between <kbd>mouse</kbd> and  <kbd>numpad keys</kbd>
Instead use more <kbd>letter keys</kbd> or your finger(s) to open the task manager, simply press <kbd>control</kbd> and <kbd>Numpad Del</kbd> keys, considering <kbd>numlock status</kbd> is turned ON.
Normally replace the pixels where the mouse is positionned because it's for 1080p scren resolution, this is due to during the UAC prompt, no AHK script can continue before and while and after the popup start to really make options yes and no to be visible.
Only this shortcut can open directly the task manager, or eventually a direct <kbd>right click</kbd> to the startmenu or to the bottom left corner of the screen, and then only <kbd>letter g</kbd> to access the prompt yes and no.


This code below was not added by default in the script, but it has been tested.

```ahk
^NumpadDot::
MouseMove,1028,550
Send,^+{Esc}
;MouseMove,1028,550

;Sleep,1000
;Send,{click}
;SendInput,{Left}
;Sleep,50
;Send,{Enter}
;
;Send,NumpadOff
;Send,{Numpad4}
;Send,NumpadOn

;enter::
;Send,Click
;return

return
```

A faster method could be other AHK technics to bypass or ask admin rights priviledges like start another script separatly with special parameter to:
```ahk
;...
Run *RunAs "%A_ScriptFullPath%"
;...
;return
```


 # Specials keys and esperluet operator key
---

If you want disable certain <kbd> modifier(s) </kbd> and <kbd> capslock(or <kbd> tab </kbd>)</kbd> keys combination, see :

https://www.autohotkey.com/docs/KeyList.htm#SpecialKeys

This always has been not studied, the modifiers are sensible and it's better let them act as normally without override their eventual new default behavior, if you want enable or disable or avoid certain combinations of them, use **CTM**, this project in the same repository can help you to figure out, if your keys are working well, if you can use them always and plainly, and finally if the keys are replaceable or moved or duplicated and keep certain of their functionalities.


In contradiction with **sublimetab**, better instead use <kbd> capslock </kbd> and <kbd> tab </kbd> key but it's harder than <kbd> esc </kbd> but safer :
```
~$CapsLock::
msgbox,"CAPSLOCK"
return
```


```
Capslock & X::Run, http://www.google.com/search?q=%clipboard%
;...
```
You could want use theses types of combo, it is not possible with the ```specials chars``` of the keyboard line and these disadvantages :
 - It's not possible to differentiate with only this code if it's consecutive or not.
 - The <kbd> special chars keys </kbd> are not working, are missing or not representative in the expression.
 - The <kbd> timings </kbd> cannot be used, the actions are directly consecutive to all the actions of the triggers
 - You should require to erase the next letter completely everywhere, this is not done, maybe headers and directives can help you but it's not enough, <kbd> keys </kbd> could be remaining or doing an erasure operation like in *SublimeText*.
 - Its much more common to use this <kbd> key </kbd> and same other keys, one after one, in different activities like code writing.
 - Other application can rewrite theses keys and are candidate to not execute the actions if you not use *AHK* itself or something else low level. 


An example for <kbd> qwerty </kbd> user only probably, should involve minor modifications to works in <kbd> azerty </kbd> and others as the two <kbd> chevrons </kbd> are in the same key and one with the <kbd> shift </kbd> modifier, considering all the keyboards the most common key at the same key position in the keyboards, not of <kbd> qwerty </kbd>, include the <kbd> backslash </kbd> character.

```
AppsKey::ToolTip Press < or > to cycle through tabs.
AppsKey Up::ToolTip
~AppsKey & <::Send ^+{tab}
~AppsKey & >::Send ^{tab}
```

This key is already included in **CTM** then the best alternative is use the keys in the same time, but with minor modifications or script overriding the program triggers, it should be possible to temporally use more shortcut combinations including this special key not written like in **CTM**.


## Completion entry with special chars keys
-------------------------------------------

;This functionnality help to choose a completion popup entry with a single key, instead several up or down followed by an enter.

;The first key can help to switch this on or off, the popup has been commented cause if close the sublimetext popup, next there will no need of activate or deactivate the special chars line, instead manually change the status on or off, it could be simpler to detect if that popup exists or not by using an exact pixel detection.

;the shift, control, alt and altgr can be used as normally.

;Simply configure the script as azerty or qwerty cause some chars are identicals.


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
See this variable further set to true or false, for respectively azerty or qwerty.


OR USE:

```ahk
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
Tab & @::
Tab & #::
Tab & $::
Tab & %::
Tab & ^::
Tab & *::
Tab & )::
Tab & &::
Tab & é::
Tab & "::
Tab & '::
Tab & (::
Tab & §::
Tab & è::
Tab & !::
Tab & ç::
Tab & à::

azertyOrQwerty:=true
startchars2:=["!","@","#","$","%","^","&","*","(",")"]
startchars2bis:=["&","é","""","'","(","§","è","!","ç","à"]

sleep,150
uniqchar:=LTrim(A_ThisHotkey,"Tab")
if (uniqchar=" & &")
{
    uniqchar:=StrReplace(uniqchar," & ","")
}
else
{
    uniqchar:=LTrim(uniqchar," & ")
}

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

if (azertyOrQwerty=true)
{
    superind:=indexme(startchars2bis,uniqchar)
}
else
{
    superind:=indexme(startchars2,uniqchar)
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
Sleep,50
Send,{Tab}

return

#If
```
