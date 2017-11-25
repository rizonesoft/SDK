#include-once

#Region AutoIt3Wrapper Directives Section
;===============================================================================================================
; Tidy Settings
;===============================================================================================================
;#AutoIt3Wrapper_Run_Tidy=Y										 ;~ (Y/N) Run Tidy before compilation. Default=N
;#AutoIt3Wrapper_Tidy_Stop_OnError=Y								 ;~ (Y/N) Continue when only Warnings. Default=Y

#EndRegion AutoIt3Wrapper Directives Section


; #INDEX# =======================================================================================================================
; Title .........: Localization (Custom)
; AutoIt Version : 3.3.15.0
; Language ......: English
; Description ...: Localization Functions.
; Author(s) .....: Derick Payne (Rizonesoft)
; ===============================================================================================================================


#include "..\..\..\Includes\Localization.au3"


; #CONSTANTS# ===================================================================================================================
Global Const $LNG_COUNTCUSTOM = 10
Global Const $LNG_COUNTMENUS = 102
Global Const $LNG_COUNTMESSAGES2 = 10
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
If Not IsDeclared("g_sLanguageFile") Then Global $g_sLanguageFile
If Not IsDeclared("g_aLangCustom") Then Global $g_aLangCustom[$LNG_COUNTCUSTOM]
If Not IsDeclared("g_aLangMenus") Then Global $g_aLangMenus[$LNG_COUNTMENUS]
If Not IsDeclared("g_aLangMessages2") Then Global $g_aLangMessages2[$LNG_COUNTMESSAGES2]
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; ===============================================================================================================================


Func _Localization_Custom()

	;~ Check if the language strings is already loaded. Because we do not want to load the language strings twice.
	If StringLen($g_aLangCustom[0]) > 0 Then
		Return
	EndIf

	$g_aLangCustom[0]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Custom", "Status.Welcome", "Welcome Buddies"))
	$g_aLangCustom[1]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Custom", "Status.Updates", "Checking for Updates"))

EndFunc


Func _Localization_Menus()

	If StringLen($g_aLangMenus[0]) > 0 Then
		Return
	EndIf

	$g_aLangMenus[0]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "File", "&File"))
	$g_aLangMenus[1]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "File.Preferences", "&Preferences"))
	$g_aLangMenus[2]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "File.Logging", "&Logging"))
	$g_aLangMenus[3]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "File.Log.OpenFile", "Open &log File"))
	$g_aLangMenus[4]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "File.Log.OpenDir", "Open log &Directory"))
	$g_aLangMenus[5]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "File.Close", "Close\tAlt+F4"))
	$g_aLangMenus[6]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help", "&Help"))
	$g_aLangMenus[7]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.Update", "Check for &updates"))
	$g_aLangMenus[8]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.Home", "%{Company.Name} &Home"))
	$g_aLangMenus[9]  = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.Forums", "Product Support &Forums"))
	$g_aLangMenus[10] = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.Downloads", "More &Downloads"))
	$g_aLangMenus[11] = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.Contact", "&Contact %{Company.Name}"))
	$g_aLangMenus[12] = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.Issue", "Create an &issue"))
	$g_aLangMenus[13] = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.Donate", "Donate to &our Cause"))
	$g_aLangMenus[14] = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Help.About", "About %{Program.Name}"))
	$g_aLangMenus[15] = _Localization_ReplaceVar(IniRead($g_sLanguageFile, "Menus", "Debug", "&Debug"))

EndFunc


Func _Localization_Messages2()

	If StringLen($g_aLangMessages2[0]) > 0 Then
		Return
	EndIf

EndFunc