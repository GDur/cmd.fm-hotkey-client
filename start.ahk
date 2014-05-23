/*
  - all commands will NOT activate the client window (NO focus steal)
  - start.ahk
    - runs client - if it does not run
    - AppKey + Up -> volume up
    - AppKey + Down -> volume down
    - AppKey + Right -> next song
    - AppKey + Left -> previous song
    - AppKey + Numpad0 -> mute/unmute
    - AppKey + Numpad1 -> play Progressive House
    - AppKey + F4 -> pause/unpause
	
by GDur

*/
SetTitleMatchMode, 2
SetKeyDelay, -1, 1


windowTitle := "cmd.fm client ahk_class AppjsWindow"


IfWinNotExist, %windowTitle%
{
    Run, client/app.exe
}

; select the iframe - makes it possible tos end the commands
WinWait, %windowTitle%, , 10
if ErrorLevel
{
    return
}
else {
	ControlClick, X100 Y101, %windowTitle%
}


; a list of the genres
genres := ["Acoustic", "Electronic Pop", "Progressive House", "Electronic", "Classical Guitar"]

sendCommand(command) {
	global windowTitle
	ControlSend, WebViewHost1, %command% {Enter}, %windowTitle%
}

; predefined settings
isPlaying := false
isMuted := false

isCommentsPreferedOn := false
volume := 50 ; prefered volume at start

if(isCommentsPreferedOn)
	sendCommand("comments on")
else
	sendCommand("comments off")

sendCommand("volume " volume)
	
AppsKey & F4::
	if(isPlaying)
		sendCommand("pause")
	else
		sendCommand("resume")
		
	isPlaying := !isPlaying
return

AppsKey & Numpad0::
	if(isMuted)
		sendCommand("mute")
	else
		sendCommand("unmute")
		
	isMuted := !isMuted
return

AppsKey & Numpad1::
	sendCommand("play " genres[3])
	isPlaying := true
return

AppsKey & Up::
	volume += 10
	if(volume > 100)
		volume = 100
	sendCommand("volume " volume)
return

AppsKey & Down::
	volume -= 10
	if(volume < 0)
		volume = 0
	sendCommand("volume " volume)
return

AppsKey & Right::
	sendCommand("next ")
return

AppsKey & Left::
	sendCommand("next ")
return
