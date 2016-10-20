#include-once


$g_ReBarRunIcon = @ScriptDir & "\SDK\Themes\Icons\Distro.ico"
$g_ReBarRunIconHover = @ScriptDir & "\SDK\Themes\Icons\DistroH.ico"
$g_ReBarFormWidth = 780
$g_ReBarFormHeight = 550

;===============================================================================================================
; Path Options
;===============================================================================================================
$g_ReBarWorkingDir = @ScriptDir & "\SDK"
$g_ReBarPathIni = $g_ReBarWorkingDir & "\" & $g_ReBarIniFileName

;===============================================================================================================
; Splash Options
;===============================================================================================================
$g_ReBarSplashEnable = True													;~ Enable/Disable splash page on program load.
$g_ReBarSplashAni = @ScriptDir & "\SDK\Themes\Processing\32\Stroke.ani"

;===============================================================================================================
; Resource Options
;===============================================================================================================
$g_ReBarResFugue = @ScriptDir & "\SDK\Fugue.dll"
$g_ReBarResDoors = @ScriptDir & "\SDK\DoorsShell.dll"