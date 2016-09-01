#include-once


#include <GUIConstantsEx.au3>
#include <FileConstants.au3>
#include <GuiListView.au3>
#include <GuiListBox.au3>
#include <GuiEdit.au3>
#include <Date.au3>

#include "ReBar_Declarations.au3"
#include "ReBar_Functions.au3"


; #INDEX# =======================================================================================================================
; Title .........: Logging
; AutoIt Version : 3.3.12.0
; Language ......: English
; Description ...: Rizonesoft Logging System.
; Author(s) .....: Derick Payne
; Dll(s) ........:
; ===============================================================================================================================

;~ If Not IsDeclared("REBAR_LOG_BASE") Then Global $REBAR_LOG_BASE = ""
;~ If Not IsDeclared("REBAR_LOG_PATH") Then Global $REBAR_LOG_PATH = ""
;~ If Not IsDeclared("REBAR_LOG_FILERWE") Then Global $REBAR_LOG_FILERWE = 0
;~ If Not IsDeclared("REBAR_LOG_ENABLED") Then Global $REBAR_LOG_ENABLED = 0

; #CURRENT# =====================================================================================================================
; _LoggingInitialize
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Derick Payne
; Modified.......:
; ===============================================================================================================================
Func _LoggingInitialize()

	If $REBAR_LOG_ENABLED Then

		; When run from a CD, we cannot perform logging.
		If DriveGetType(StringLeft(@ScriptFullPath, 3)) = "CDROM" Then
			$REBAR_LOG_FILERWE = 0
		Else

			If BitAND(__LoggingDirCreate(), __LoggingFileReset()) Then

				; Log file and directory seems valid. Enable logging.
				$REBAR_LOG_FILERWE = 1

				_LoggingWrite("", False)
				_LoggingWrite("", False)
				_LoggingWrite("                                            ./", False)
				_LoggingWrite("                                          (o o)", False)
				_LoggingWrite("--------------------------------------oOOo-(-)-oOOo--------------------------------------", False)
				_LoggingWrite("", False)
				_LoggingGetSystemInfo()

			Else
				; Log file could not be created. Disable logging.
				$REBAR_LOG_FILERWE = 0
			EndIf

		EndIf

	EndIf

EndFunc


Func _StartLogging($sMessage)

	If $REBAR_LOG_ENABLED Then
		_ClearLogging()
		_EditLoggingWrite($sMessage)
		_LoggingWrite("------------------------------------------------------------------------------------------", False)
	EndIf

EndFunc


Func _EndLogging()

	If $REBAR_LOG_ENABLED Then
		_EditLoggingWrite("Finished!")
		_LoggingWrite("------------------------------------------------------------------------------------------", False)
	EndIf

EndFunc


Func _ClearLogging()

	If $REBAR_LOG_ENABLED Then

		If Not IsDeclared("LST_STATUS") Then Local $LST_STATUS

		_GUICtrlListView_BeginUpdate($LST_STATUS)
		_GUICtrlListView_DeleteAllItems($LST_STATUS)
		_GUICtrlListView_EndUpdate($LST_STATUS)

		;_GUICtrlListBox_BeginUpdate($LST_STATUS)
		;_GUICtrlListBox_ResetContent($LST_STATUS)
		;_GUICtrlListBox_EndUpdate($LST_STATUS)

	EndIf

EndFunc


Func _EditLoggingWrite($sMessage = "", $bTimePrex = True, $UseListBox = True)

	If $REBAR_LOG_ENABLED Then

		Local $sTimeStamp = ""
		;Local $sCleanMessage = StringReplace($sMessage, @CRLF, " ")

		If Not IsDeclared("LST_STATUS") Then Local $LST_STATUS
		If Not IsDeclared("EDIT_STATUS") Then Local $EDIT_STATUS
		If Not IsDeclared("EDIT_INFO") Then Local $EDIT_INFO

		GUICtrlSetState($LST_STATUS, $GUI_SHOW)
		GUICtrlSetState($EDIT_INFO, $GUI_HIDE)

		If $bTimePrex Then
			$sTimeStamp = "[" & @HOUR & ":" & @MIN & ":" & @SEC & ":" & @MSEC & "] "
		EndIf

		If $UseListBox Then

			Local $iImage = 0

			If StringInStr($sMessage, "error") Then
				$iImage = 2
			ElseIf StringInStr($sMessage, "Response Received") Or _
				StringInStr($sMessage, "success") Then
				$iImage = 1
			ElseIf StringLeft($sMessage, 9) = "Finished!" Then
				Switch @MON
					Case 10
						$iImage = 4
					Case 12
						$iImage = 5
					Case Else
						$iImage = 3
				EndSwitch
			ElseIf StringLeft($sMessage, 1) = "^" Then
				$iImage = 6
			ElseIf StringStripWS($sMessage, 8) = "" Then
				$iImage = 8
			EndIf
			_GUICtrlListView_AddItem($LST_STATUS, Chr(32) & $sMessage, $iImage)
			_GUICtrlListView_SetItemFocused($LST_STATUS, _GUICtrlListView_GetItemCount($LST_STATUS) - 1)
			_GUICtrlListView_EnsureVisible($LST_STATUS, _GUICtrlListView_GetItemCount($LST_STATUS) - 1)

		Else

			_GUICtrlListView_AddItem($LST_STATUS, Chr(32) & $sMessage, $iImage)
			_GUICtrlListView_SetItemFocused($LST_STATUS, _GUICtrlListView_GetItemCount($LST_STATUS) - 1)
			_GUICtrlListView_EnsureVisible($LST_STATUS, _GUICtrlListView_GetItemCount($LST_STATUS) - 1)

		EndIf

		_LoggingWrite($sMessage, $bTimePrex)

	EndIf

EndFunc


Func _LoggingWrite($sData = "", $bTimePrex = True)

	If $REBAR_LOG_ENABLED Then

		If __LoggingFileReset() And $REBAR_LOG_FILERWE Then

			Local $hLogOpen = FileOpen($REBAR_LOG_PATH, $FO_APPEND)
			If $hLogOpen = -1 Then
				; Log file could not be opened. Disable logging.
				$REBAR_LOG_FILERWE = 0
				Return 0
			EndIf

			Local $sTimePrex= ""
			If $bTimePrex Then $sTimePrex = __GenerateTimePrefix(0) & Chr(32)

			FileWriteLine($hLogOpen, $sTimePrex & $sData & @CRLF)
			FileClose($hLogOpen)

		EndIf

		$REBAR_LOG_FILERWE = 1
		Return 1

	EndIf

EndFunc


Func _LoggingGetSystemInfo()

	Local $aRAMStats = MemGetStats()

	_LoggingWrite(StringFormat(	"DATE:              %s", __GenerateTimePrefix(0, False)))
	_LoggingWrite(StringFormat(	"PROGRAM:           %s", $REBAR_PROG_NAME & Chr(32) & FileGetVersion(@ScriptFullPath)))
	_LoggingWrite(StringFormat( "PROGRAM PATH:      %s", "[" & @ScriptFullPath & "]"))
	_LoggingWrite(StringFormat( "COMPILED:          %s", __StringFromBoolean(@Compiled)))
	If Not @Compiled Then
		_LoggingWrite(StringFormat( "AUTOIT VERSION:    %s", @AutoItVersion))
		_LoggingWrite(StringFormat( "AUTOIT 64-BIT:     %s", __StringFromBoolean(@AutoItX64)))
	EndIf
	_LoggingWrite(StringFormat(	"WINDOWS VERSION:   %s", _GetWindowsVersion(@OSVersion) & " " & @OSServicePack))
	_LoggingWrite(StringFormat(	"SYSTEM TYPE:       %s", StringReplace(@OSArch, "X", "") & "-Bit Operating System"))
	_LoggingWrite(StringFormat(	"MEMORY (RAM):      %s", Round(($aRAMStats[1] /1024), 2) & " MB"))
	_LoggingWrite(StringFormat(	"PROGRAM FILES:     %s", @ProgramFilesDir))
	_LoggingWrite(StringFormat(	"WINDOWS DIRECTORY: %s", @WindowsDir))
	_LoggingWrite("-----------------------------------------------------------------------------------------", False)
	_LoggingWrite("", False)

EndFunc


Func __StringFromBoolean($bBoolean)

	If $bBoolean = 1 Then
		Return "YES"
	ElseIf $bBoolean = 0 Then
		Return "NO"
	EndIf

EndFunc


Func __GenerateTimePrefix($iFlag = 0, $bFormat = 1)

	Local $sReturn = ""

	Switch $iFlag
		Case 0
			$sReturn = _NowDate() & " " & _NowTime(5)
		Case 1
			$sReturn = _NowDate()
		Case 2
			$sReturn = _NowTime(5)
		Case 3
			$sReturn = _NowTime(5) & ":" & @MSEC
	EndSwitch

	If $bFormat Then
		Return StringFormat("[ %s ]", $sReturn)
	Else
		Return $sReturn
	EndIf

EndFunc


; #FUNCTION# ====================================================================================================================
; Name...........: __LoggingFileCreate
; Return values .: Success: 1
;                  Failure: 0
; Author ........: Derick Payne
; ===============================================================================================================================
Func __LoggingFileCreate()

		If FileExists($REBAR_LOG_PATH) Then
			Return 1
		Else
			If FileWrite($REBAR_LOG_PATH,	"=========================================================================================" & @CRLF & _
											" " & StringUpper($REBAR_PROG_NAME) & " VERSION " & $REBAR_LOG_VERSION & @CRLF & _
											"=========================================================================================" & @CRLF & _
											"") Then
				Return 1
			EndIf
		EndIf

		Return 0

EndFunc


; #FUNCTION# ====================================================================================================================
; Name...........: __LoggingFileReset
; Return values .: Success: 1
;                  Failure: 0
; Author ........: Derick Payne
; ===============================================================================================================================
Func __LoggingFileReset()

	If FileExists($REBAR_LOG_PATH) Then
		If FileGetSize($REBAR_LOG_PATH) >= $REBAR_LOG_STORAGE Then
			If FileDelete($REBAR_LOG_PATH) Then Return 1
		Else
			If FileSetAttrib($REBAR_LOG_PATH, "-RSH") Then Return 1
		EndIf
	Else
		If __LoggingFileCreate() Then Return 1
	EndIf

	Return 0

EndFunc


; #FUNCTION# ====================================================================================================================
; Name...........: __LoggingDirCreate
; Return values .: Success: 1
;                  Failure: 0
; Author ........: Derick Payne
; ===============================================================================================================================
Func __LoggingDirCreate()

	If FileExists($REBAR_DIR_WORKING) Then

		Local $dirLogging = $REBAR_LOG_BASE

		If  FileExists($dirLogging) Then
			Return 1
		Else
			If DirCreate($dirLogging) Then Return 1
		EndIf

		Return 0

	Else

		Return 0

	EndIf

EndFunc