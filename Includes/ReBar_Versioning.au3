#include-once


; #INDEX# =======================================================================================================================
; Title .........: Versioning
; AutoIt Version : 3.3.15.0
; Description ...: Versioning Functions
; Author(s) .....: Derick Payne (Rizonesoft)
; ===============================================================================================================================


;===============================================================================================================
; Tidy Settings
;===============================================================================================================
#AutoIt3Wrapper_Run_Tidy=Y										 ;~ (Y/N) Run Tidy before compilation. Default=N
#AutoIt3Wrapper_Tidy_Stop_OnError=Y								 ;~ (Y/N) Continue when only Warnings. Default=Y


#include "ReBar_Functions.au3"
#include "ReBar_Declarations.au3"
#include "ReBar_AutoIt3Script.au3"


#Region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; ===============================================================================================================================
#EndRegion Global Variables and Constants


#Region Functions list
; #CURRENT# =====================================================================================================================
; _GetProgramVersion
; _GUIGetTitle
; ===============================================================================================================================
#EndRegion Functions list


Func _GUIGetTitle($sGUIName)

	Local $sReturn = ""
	Local $sProgamVersion = ""
	Local $sProgramBuild = ""
	Local $sAutoItArch = ""
	Local $sAutoItVers = ""

	If $REBAR_TITLE_SHOWARCH == 1 Then
		$sAutoItArch = " : " & _AutoItGetArchitecture() & "-Bit"
	EndIf

	If @Compiled Then

		Local $sReturn = FileGetVersion(@ScriptFullPath)

		Local $sPltReturn = StringSplit($sReturn, ".")
		If IsArray($sPltReturn) Then

			If $REBAR_TITLE_SHOWVERSION == 1 Then
				$sProgamVersion = Chr(32) & $sPltReturn[1]
			EndIf

			If $REBAR_TITLE_SHOWBUILD == 1 Then
				$sProgramBuild = " : Build " & $sPltReturn[$sPltReturn[0]]
			EndIf

			$sReturn = $sGUIName & $sProgamVersion & $sProgramBuild & $sAutoItArch

		EndIf

	Else

		If $REBAR_TITLE_SHOWVERSION == 1 Then
			$sProgamVersion = Chr(32) & _AutoIt3Script_GetVersion(@ScriptFullPath, 1)
		EndIf

		If $REBAR_TITLE_SHOWBUILD == 1 Then
			$sProgramBuild = " : Build " & _AutoIt3Script_GetVersion(@ScriptFullPath, 4)
		EndIf

		If $REBAR_TITLE_SHOWAUTOIT == 1 Then
			$sAutoItVers = " : using AutoIt version " & @AutoItVersion
		EndIf

		$sReturn = $sGUIName & $sProgamVersion & $sProgramBuild & $sAutoItVers & $sAutoItArch

	EndIf

	Return $sReturn

EndFunc   ;==>_GUIGetTitle


; #FUNCTION# ====================================================================================================================
; Author(s) .....: Derick Payne (Rizonesoft)
; Modified ......:
; ===============================================================================================================================
Func _GetProgramVersion($iFlag = 1)

	Local $sReturn = ""

	If @Compiled Then

		Local $sFullVersion = FileGetVersion(@ScriptFullPath)

		If $iFlag == 0 Then
			$sReturn = $sFullVersion
		EndIf

		Local $sPltReturn = StringSplit($sFullVersion, ".")
		If $iFlag <= $sPltReturn[0] Then
			$sReturn = $sPltReturn[$iFlag]
		Else
			Return SetError(1, 2, 0)
		EndIf

	Else
		$sReturn = _AutoIt3Script_GetVersion(@ScriptFullPath, $iFlag)
	EndIf

	Return $sReturn

EndFunc   ;==>_GetProgramVersion
