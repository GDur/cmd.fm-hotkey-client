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