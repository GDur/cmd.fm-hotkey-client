sendCommand(command) {
	global windowTitle
	ControlSend, WebViewHost1, %command% {Enter}, %windowTitle%
}