#SingleInstance force
#Persistent
SetTitleMatchMode, 2
SetKeyDelay, -1, 1

Menu, Tray, Icon, favicon.ico

menu, tray, add ; separator
menu, tray, add, List of Hotkeys, hotkeylist
menu, tray, add, About cmd.fm Player, about

goto, program

hotkeylist:
	Run, https://github.com/GDur/cmd.fm-hotkey-client#hotkeys
return
about:
	Run, https://github.com/GDur/cmd.fm-hotkey-client#what-it-is
return

program:
windowTitle := "cmd.fm client ahk_class AppjsWindow"