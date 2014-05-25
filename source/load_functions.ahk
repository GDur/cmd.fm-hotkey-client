sendCommand(command_and_options) {
	global windowTitle, isPlaying, isMuted
	
	StringSplit, commandArray, command_and_options, %A_Space%
	command := commandArray1

	if(command = "play") {
		isPlaying := true
	}
	
	if(command = "pause" or command = "resume") {
		isPlaying := !isPlaying
	}
	
	if(command = "unmute" or command = "mute") {
		isMuted := !isMuted
	}
	
	ControlSend, WebViewHost1, %command_and_options% {Enter}, %windowTitle%
}