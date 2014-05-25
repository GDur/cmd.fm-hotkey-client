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
    ; wait until the iframe loaded 
    ; this is neccessary to apply the settings 
    Loop {
        PixelGetColor, color, 10, 65
        if (color = 0x000000)
            break
        
        Sleep, 100
    }
	ControlClick, X10 Y65, %windowTitle%
}