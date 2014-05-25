/*
	For more information, please visit:
		https://github.com/GDur/cmd.fm-hotkey-client

	by GDur
*/

; these are options important for AHK
#include source\options.ahk

; start client
#include source\start_client.ahk

; load the settings
#include source\load_settings.ahk

; load/define functions
#include source\load_functions.ahk

; apply the setting via command
#include source\apply_settings.ahk

; define the global hotkeys
#include source\define_global_hotkeys.ahk