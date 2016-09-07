#include-once


$REBAR_RUN_PROG_ICON = @ScriptDir & "\SDK\Themes\Icons\Distro.ico"
$REBAR_FORM_WIDTH = 780
$REBAR_FORM_HEIGHT = 550

;===============================================================================================================
; Path Options
;===============================================================================================================
$REBAR_DIR_WORKING = @ScriptDir & "\SDK"
$REBAR_PATH_INI = $REBAR_DIR_WORKING & "\" & $REBAR_INI_FILENAME

;===============================================================================================================
; Splash Options
;===============================================================================================================
$REBAR_SPLASH_ENABLE = True													;~ Enable/Disable splash page on program load.
$REBAR_SPLASH_ANI = @ScriptDir & "\SDK\Themes\Processing\32\Stroke.ani"

;===============================================================================================================
; Resource Options
;===============================================================================================================
$REBAR_RES_FUGUE = @ScriptDir & "\SDK\Fugue.dll"
$REBAR_RES_DOORS = @ScriptDir & "\SDK\DoorsShell.dll"