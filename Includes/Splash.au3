#include-once


#Region AutoIt3Wrapper Directives Dection
;===============================================================================================================
; Tidy Settings
;===============================================================================================================
#AutoIt3Wrapper_Run_Tidy=Y										;~ (Y/N) Run Tidy before compilation. Default=N
#AutoIt3Wrapper_Tidy_Stop_OnError=Y								;~ (Y/N) Continue when only Warnings. Default=Y

#EndRegion AutoIt3Wrapper Directives Dection


#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <StringConstants.au3>
#include <GuiConstantsEx.au3>

#include "ProgressBar.au3"


; #INDEX# =======================================================================================================================
; Title .........: Splash
; AutoIt Version : 3.3.15.0
; Description ...: Displays an animated Splash screen
; Author(s) .....: Derick Payne (Rizonesoft)
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
Global $g_hSplashForm
Global $g_SplashMessage
Global $g_hSplashProg1
Global $g_hSplashProg2

If Not IsDeclared("g_sThemesDir") Then Global $g_sThemesDir
If Not IsDeclared("g_SplashAnimation") Then Global $g_SplashAnimation
If Not IsDeclared("g_iSplashDelay") Then Global $g_iSplashDelay = 100
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _Splash_Start
; _Splash_Update
; ===============================================================================================================================
Func _Splash_Start($sMessage = "Loading Message")

	If Not FileExists($g_SplashAnimation) Then
		MsgBox(0, "Error", $g_SplashAnimation)
	EndIf

	$g_hSplashForm = GUICreate("", 250, 150, -1, -1, BitOR($WS_POPUP, $WS_BORDER))
	GUISetFont(9, -1, -1, "Tahoma", $g_hSplashForm, 5)
	GUICtrlCreateIcon($g_SplashAnimation, -1, (250 - 32) / 2, 15, 32, 32)
	$g_SplashMessage = GUICtrlCreateLabel($sMessage, 10, 60, 230, 30, $SS_CENTER)

;~ StatusBar Background
	GUICtrlCreateLabel("", 9, 99, 232, 12)
	GUICtrlSetBkColor(-1, 0x555555)
	GUICtrlCreateLabel("", 10, 100, 230, 10)
	GUICtrlSetBkColor(-1, 0xD3D3D3)

;~ StatusBar
	$g_hSplashProg1 = GUICtrlCreateLabel("", 11, 101, 2, 8)
	$g_hSplashProg2 = GUICtrlCreateLabel("", 12, 102, 2, 6)
	_ProgressBar_SetColors($g_hSplashProg1, $g_hSplashProg2, "Green")

	GUISetState(@SW_SHOW, $g_hSplashForm)

EndFunc   ;==>_Splash_Start


Func _Splash_Update($sMessage, $iPerc, $bIsImportant = False)

	_ProgressBar_SetData($g_hSplashForm, $g_hSplashProg1, $g_hSplashProg2, 11, 101, 228, $iPerc)

	If StringStripWS($sMessage, $STR_STRIPALL) <> "" Then
		GUICtrlSetData($g_SplashMessage, $sMessage)
		Sleep($g_iSplashDelay)
	EndIf

	If $iPerc = 100 Then
		GUIDelete($g_hSplashForm)
	EndIf

EndFunc   ;==>_Splash_Update
