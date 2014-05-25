; define shortcuts/hotkeys for your most loved genres
AppsKey & Numpad1::
	sendCommand("play " genres[1])
return

AppsKey & Numpad2::
	sendCommand("play " genres[2])
return

AppsKey & Numpad3::
	sendCommand("play " genres[3])
return

AppsKey & Numpad4::
	sendCommand("play " genres[4])
return

AppsKey & Numpad5::
	sendCommand("play " genres[5])
return

AppsKey & Numpad6::
	sendCommand("play " genres[6])
return

AppsKey & Numpad7::
	sendCommand("play " genres[7])
return

AppsKey & Numpad8::
	sendCommand("play " genres[8])
return

AppsKey & Numpad9::
	sendCommand("play " genres[9])
return


; genreral usablility stuff like pause/mute/volume control etc.
AppsKey & Enter::
	if(isPlaying)
		sendCommand("pause")
	else
		sendCommand("resume")
return

AppsKey & Numpad0::
	if(isMuted)
		sendCommand("unmute")
	else
		sendCommand("mute")
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
	sendCommand("next")
return

AppsKey & Left::
	sendCommand("back")
return