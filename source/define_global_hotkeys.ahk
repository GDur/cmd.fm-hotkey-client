; define shortcuts/hotkeys for your most loved genres
AppsKey & Numpad1::
	sendCommand("play " genres[1])
	isPlaying := true
return
AppsKey & Numpad2::
	sendCommand("play " genres[2])
	isPlaying := true
return
AppsKey & Numpad3::
	sendCommand("play " genres[3])
	isPlaying := true
return
AppsKey & Numpad4::
	sendCommand("play " genres[4])
	isPlaying := true
return
AppsKey & Numpad5::
	sendCommand("play " genres[5])
	isPlaying := true
return


; genreral usablility stuff like pause/mute/volume control etc.
AppsKey & Enter::
	if(isPlaying)
		sendCommand("pause")
	else
		sendCommand("resume")
		
	isPlaying := !isPlaying
return

AppsKey & Numpad0::
	if(isMuted)
		sendCommand("unmute")
	else
		sendCommand("mute")
		
	isMuted := !isMuted
return

AppsKey & Up::
	volume += volumeJump
	if(volume > 100)
		volume = 100
	sendCommand("volume " volume)
return

AppsKey & Down::
	volume -= volumeJump
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