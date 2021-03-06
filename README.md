cmd.fm-hotkey-client
====================

## What it is
This Project is an unofficial [cmd.fm](https://cmd.fm/) standalone version.
It supports global hotkeys.

## How to install it
1. install [Autohotkey](http://www.autohotkey.com/)
1. download this project [here](https://github.com/GDur/cmd.fm-hotkey-client/archive/master.zip) and unzip OR git clone
1. run the cmdfm player.ahk file

## What it does
- provides cmd.fm as a standalone version
- provides command shortcuts via Hotkeys
- if you want to change the genres you can do so:
  - navigate to source/load_settings.ahk (open with texteditor), change the genres in the list, and restart the cmdfm player.ahk-file
- if you want to change the hotkeys you can do so:
  - navigate to source/define_globla_hotkeys.ahk (open with texteditor), change the hotkeys, and restart the cmdfm player.ahk-file

## Hotkeys
| Hotkey        | Action (commands)
| ------------- |-------------
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Up      | volume up
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Down    | volume down
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Right   | next song
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Left    | previous song
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad0 | mute/unmute
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Enter   | pause/unpause
|
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad1 | play Progressive House
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad2 | play Piano
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad3 | play R&B
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad4 | play Punk
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad5 | play Chiptunes
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad6 | play Drum & Bass
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad7 | play Folk
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad8 | play House
[AppKey](http://upload.wikimedia.org/wikipedia/commons/3/3a/Qwerty.svg) + Numpad9 | play Singer / Songwriter


### Technologies
- app.js     - used to create the standalone cmd.fm client 
- Autohotkey - used to realize the global hotkeys (windows only)

by GDur
