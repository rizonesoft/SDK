#include-once

#include <Misc.au3>

#include "ReBar_Declarations.au3"
#include "ReBar_Functions.au3"


; ===============================================================================================================================
; Custom Com Error Handler
; ===============================================================================================================================
Global $iEventError = 0 ; to be checked to know if com error occurs. Must be reset after handling.
Global $oErrorHandler = ObjEvent("AutoIt.Error", "_ComErrHandler") ; Install a custom error handler

; Perform a deliberate failure (the object doesn't exist)
; Local $oIE = ObjCreate("InternetExplorer.Application")
; $oIE.visible = 1
; $oIE.bogus
; If $iEventError Then
; MsgBox(0, "", "There was an error on the previous line.")
; $iEventError = 0 ; Reset after displaying a COM Error occurred
; EndIf
; ===============================================================================================================================
OnAutoItExitRegister("_OnReBarExit")


;RGB to BGR or BGR to RGB
;~ Func _ColorConvert($iColor)
;~ 	Return BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
;~ EndFunc


If IsAdmin() And $REBAR_TITLE_SHOWADMIN == 1 Then
	$REBAR_ISADMINST = "Administrator ~ "
Else
	$REBAR_ISADMINST = ""
EndIf


If _Singleton($REBAR_ISADMINST & _GUIGetTitle($REBAR_PROG_NAME), 1) = 0 And $REBAR_SINGLETON = True Then
	MsgBox($MB_SYSTEMMODAL + $MB_ICONINFORMATION, "Warning", "Another occurence of " & $REBAR_PROG_NAME & _
			" is already running. This message will self-destruct in " & _
			$REBAR_MSG_TIMEOUT & " seconds.", $REBAR_MSG_TIMEOUT)
	Exit
EndIf


If Not @Compiled Then

	$REBAR_COMP_NAME = $REBAR_RUN_COMP_NAME
    $REBAR_PROG_SHORTNAME = $REBAR_RUN_PROG_SHORTNAME
	$REBAR_PROG_NAME = $REBAR_RUN_PROG_NAME
	$REBAR_ICON = $REBAR_RUN_PROG_ICON
	$REBAR_RUN_VERSION = _AutoIt3Script_GetVersion(@ScriptFullPath, 0)

Else

	$REBAR_RUN_VERSION = FileGetVersion(@ScriptFullPath)

EndIf


Func _SetWorkingDirectories()

	If IniRead($REBAR_PATH_INI, $REBAR_PROG_SHORTNAME, "PortableEdition", 1) = 0 Then
		_SetAppDataDirectory()
	Else
		If Not _GenerateIniFile($REBAR_PATH_INI) Then
			_SetAppDataDirectory()
		Else
			_ResetWorkingDirectories()
		EndIf
	EndIf

EndFunc   ;==>_SetWorkingDirectories


Func _SetAppDataDirectory()

	_CreateAppDataDirectories()

	$REBAR_PATH_APPDATA_PARENT = @AppDataDir & "\" & $REBAR_COMP_NAME
	$REPAR_PATH_APPDATA = $REBAR_PATH_APPDATA_PARENT & "\" & $REBAR_PROG_SHORTNAME
	$REBAR_DIR_WORKING = $REPAR_PATH_APPDATA

	_ResetWorkingDirectories()
	_GenerateIniFile($REBAR_PATH_INI, 0)

EndFunc   ;==>_SetAppDataDirectory


Func _ResetWorkingDirectories()

	$REBAR_INI_FILENAME = $REBAR_PROG_SHORTNAME & ".ini"
	$REBAR_PATH_INI = $REBAR_DIR_WORKING & "\" & $REBAR_INI_FILENAME
	$REBAR_CACHE_BASE = $REBAR_DIR_WORKING & "\Cache"
	$REBAR_CACHE_PATH = $REBAR_CACHE_BASE & "\" & $REBAR_PROG_SHORTNAME
	$REBAR_LOG_FILENAME = $REBAR_PROG_SHORTNAME & ".log"
	$REBAR_LOG_BASE = $REBAR_DIR_WORKING & "\Logging"
	$REBAR_LOG_PATH = $REBAR_LOG_BASE & "\" & $REBAR_LOG_FILENAME

	DirCreate($REBAR_CACHE_PATH)
	; DirCreate($REBAR_LOG_BASE)

EndFunc


Func _GenerateIniFile($iniPath, $bPortable = 1)

	Local $iResult

	$iResult = IniWrite($iniPath, $REBAR_PROG_SHORTNAME, "PortableEdition", $bPortable)
	Return $iResult

EndFunc   ;==>_GenerateIniFile


Func _CreateAppDataDirectories()

	DirCreate($REBAR_PATH_APPDATA_PARENT)
	DirCreate($REPAR_PATH_APPDATA)

EndFunc   ;==>_CreateAppDataDirectories
