#include-once

#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <EditConstants.au3>

#include "ReBar_Declarations.au3"
#include "ReBar_Functions.au3"

; #INDEX# =======================================================================================================================
; Title .........: ReBar End
; AutoIt Version : 3.3.15.0
; Language ......: English
; Description ...: General Functions for Rizonesoft ReBar Framwork.
;                  NB: Must be inserted (Included) at the end of every ReBar Script.
; Author(s) .....: Derick Payne (Rizonesoft)
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _OnMainIconHover
; _ShutdownProgram
; _ShowAboutDialog
; _OnReBarExit
; _ComErrHandler
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#============================================================================================================
; ===============================================================================================================================

If Not IsDeclared("iEventError") Then Global $iEventError
If Not IsDeclared("oErrorHandler") Then Global $oErrorHandler

Func _ShutdownProgram()
	Exit($REBAR_EXITCODE)
EndFunc   ;==>_CloseProgram


; #FUNCTION# ====================================================================================================================
; Author ........: Derick Payne (Rizonesoft)
; Modified.......:
; ===============================================================================================================================
Func _ShowAboutDialog()

	GUICtrlSetState($REBAR_ABOUT_MENU, $GUI_DISABLE)
	WinSetTrans($REBAR_GUI_CORE, Default, 200)

	Local $abTitle, $abVersion, $abCopyright, $abHome
	Local $abSpaceLabel, $abSpaceProg, $abBtnOK, $abGNU, $abSupport, $abCountry
	Local $abPayPal, $abFacebook, $abTwittter, $abGoogle
	Local $abReBar

	$REBAR_ABOUT_GUI = GUICreate("About " & $REBAR_PROG_NAME, 400, 480, -1, -1, BitOR($WS_CAPTION, $WS_POPUPWINDOW), $WS_EX_TOPMOST)
	GUISetFont($REBAR_FONT_SIZE, 400, 0, $REBAR_FONT_NAME, $REBAR_ABOUT_GUI, 5)
	GUISetIcon($REBAR_RES_FUGUE, 103)

	GUISetOnEvent($GUI_EVENT_CLOSE, "_CloseAboutDlg", $REBAR_ABOUT_GUI)

	GUICtrlCreateIcon($REBAR_ICON, 99, 10, 10, 64, 64)
	$abTitle = GUICtrlCreateLabel($REBAR_PROG_NAME, 88, 16, 220, 18)
	GUICtrlSetFont($abTitle, 11, 700)
	GUICtrlCreateLabel("Version " & $REBAR_RUN_VERSION, 88, 40, 230, 15)
	GUICtrlCreateLabel("Build with AutoIt version " & @AutoItVersion, 88, 55, 230, 15)
	GUICtrlCreateLabel("Copyright © " & @YEAR & " " & $REBAR_COMP_NAME, 88, 75, 230, 15)
	GUICtrlSetColor(-1, 0x666666)
	$abPayPal = GUICtrlCreateIcon($REBAR_RES_DOORS, 101, 326, 0, 64, 64)
	GUICtrlSetTip($abPayPal, "Help us keep our software free.")
	GUICtrlSetCursor($abPayPal, 0)

	GUICtrlCreateLabel("", 10, 105, 380, 1)
	GUICtrlSetBkColor(-1, 0xA0A0A0)
	GUICtrlCreateLabel("", 10, 106, 380, 1)
	GUICtrlSetBkColor(-1, 0xFFFFFF)

	GUICtrlCreateLabel(" Home: ", 10, 120, 60, 15, $SS_RIGHT)
	$abHome = GUICtrlCreateLabel($REBAR_ABOUT_HOME, 75, 120, 300, 15)
	GUICtrlSetFont($abHome, 8.5, -1, 4) ;Underlined
	GUICtrlSetColor($abHome, 0x0000FF)
	GUICtrlSetCursor($abHome, 0)
	GUICtrlCreateLabel("License: ", 10, 138, 60, 15, $SS_RIGHT)
	$abGNU = GUICtrlCreateLabel("GNU General Public License 3", 75, 138, 300, 15)
	GUICtrlSetColor($abGNU, 0x666666)

	GUICtrlCreateLabel("Support: ", 10, 156, 60, 15, $SS_RIGHT)
	$abSupport = GUICtrlCreateLabel($REBAR_ABOUT_SUPPORT, 75, 156, 300, 15)
	GUICtrlSetFont($abSupport, 8.5, -1, 4) ;Underlined
	GUICtrlSetColor($abSupport, 0x0000FF)
	GUICtrlSetCursor($abSupport, 0)

	$abCountry = GUICtrlCreateIcon($REBAR_RES_DOORS, 102, 334, 165, 48, 48)
	GUICtrlSetTip($abCountry, "This software was proudly made in South Africa.", "Proudly South African", $TIP_INFOICON)
	GUICtrlSetCursor($abCountry, 0)

	GUICtrlCreateGroup("Contributors", 10, 205, 380, 130)
	GUICtrlSetFont(-1, 10, 700, 2)
	GUICtrlCreateEdit($REBAR_ABOUT_CREDITS, 15, 230, 370, 90, BitOR($WS_VSCROLL, $ES_READONLY), $WS_EX_CLIENTEDGE)
	GUICtrlSetColor(-1, 0x333333)
	GUICtrlSetFont(-1, 8.5, -1, 2)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$abReBar = GUICtrlCreateLabel("Powered by Rizonesoft ReBar Framework version " & $REBAR_VERSION, 15, 340, 370, 15, $SS_RIGHT)
	GUICtrlSetFont($abReBar, 8.5)
	GUICtrlSetColor($abReBar, 0x555555)
	GUICtrlSetCursor($abReBar, 0)

	Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
	_PathSplit(@ScriptDir, $sDrive, $sDir, $sFileName, $sExtension)
	Local $drvSpaceUsed = DriveSpaceTotal($sDrive) - DriveSpaceFree($sDrive)

	$abSpaceLabel = GUICtrlCreateLabel("(" & $sDrive & ") " & Round(DriveSpaceFree($sDrive) / 1024, 2) & " GB FREE OF " & _
			Round(DriveSpaceTotal($sDrive) / 1024, 2) & " GB", 15, 380, 300, 15)
	GUICtrlSetFont($abSpaceLabel, 8.5, 700)
	GUICtrlSetColor($abSpaceLabel, 0x333333)
	$abSpaceProg = GUICtrlCreateProgress(15, 400, 370, 15)
	GUICtrlSetData($abSpaceProg, ($drvSpaceUsed / DriveSpaceTotal($sDrive)) * 100)
	$abBtnOK = GUICtrlCreateButton("OK", 260, 435, 130, 33, $BS_DEFPUSHBUTTON)

	$abFacebook = GUICtrlCreateIcon($REBAR_RES_DOORS, 103, 20, 435, 32, 32)
	GUICtrlSetTip($abFacebook, "Like us on Facebook.")
	GUICtrlSetCursor($abFacebook, 0)
	$abTwittter = GUICtrlCreateIcon($REBAR_RES_DOORS, 104, 55, 435, 32, 32)
	GUICtrlSetTip($abTwittter, "Follow us on Twitter.")
	GUICtrlSetCursor($abTwittter, 0)
	$abGoogle = GUICtrlCreateIcon($REBAR_RES_DOORS, 106, 90, 435, 32, 32)
	GUICtrlSetTip($abGoogle, "Find us on Google.")
	GUICtrlSetCursor($abGoogle, 0)

	GUICtrlSetOnEvent($abBtnOK, "_CloseAboutDlg")

	GUICtrlSetOnEvent($abHome, "_OpenHomePageLink")
	GUICtrlSetOnEvent($abSupport, "_OpenSupportLink")
	GUICtrlSetOnEvent($abPayPal, "_OpenDonateLink")
	GUICtrlSetOnEvent($abCountry, "_OpenCountryLink")
	GUICtrlSetOnEvent($abReBar, "_OpenReBarLink")
	GUICtrlSetOnEvent($abFacebook, "_OpenFacebookLink")
	GUICtrlSetOnEvent($abTwittter, "_OpenTwitterLink")
	GUICtrlSetOnEvent($abGoogle, "_OpenGoogleLink")

	GUISetState(@SW_SHOW, $REBAR_ABOUT_GUI)


EndFunc   ;==>_AboutDlg


;~ https://www.autoitscript.com/forum/topic/99603-resize-but-dont-get-smaller-than-original-size/#comment-714621
;~ Global $REBAR_GUI_MINWIDTH = 750, $REBAR_GUI_MINHEIGHT = 530
;~ Global $REBAR_GUI_MAXWIDTH = @DesktopWidth, $REBAR_GUI_MAXHEIGHT = @DesktopHeight
;~ GUIRegisterMsg($WM_GETMINMAXINFO, "WM_GETMINMAXINFO")
Func WM_GETMINMAXINFO($hWnd, $msg, $wParam, $lParam)
	Local $tagMaxinfo = DllStructCreate("int;int;int;int;int;int;int;int;int;int", $lParam)
	DllStructSetData($tagMaxinfo, 7, $REBAR_GUI_MINWIDTH) ; min X
	DllStructSetData($tagMaxinfo, 8, $REBAR_GUI_MINHEIGHT) ; min Y
	;	DllStructSetData($tagMaxinfo, 9, $REBAR_GUI_MAXWIDTH); max X
	;	DllStructSetData($tagMaxinfo, 10, $REBAR_GUI_MAXHEIGHT) ; max Y
	Return 0
EndFunc   ;==>WM_GETMINMAXINFO


Func _OpenCountryLink()
	ShellExecute($REBAR_ABOUT_COUNTRY)
EndFunc


Func _OpenDonateLink()
	ShellExecute($REBAR_ABOUT_DONATE)
EndFunc


Func _OpenFacebookLink()
	ShellExecute($REBAR_ABOUT_FACEBOOK)
EndFunc


Func _OpenFeedLink()
	ShellExecute($REBAR_ABOUT_RSS)
EndFunc


Func _OpenGoogleLink()
	ShellExecute($REBAR_ABOUT_GOOGLE)
EndFunc


Func _OpenHomePageLink()
	ShellExecute($REBAR_ABOUT_HOME)
EndFunc


Func _OpenLinkedInLink()
	ShellExecute($REBAR_ABOUT_LINKEDIN)
EndFunc


Func _OpenReBarLink()
	ShellExecute($REBAR_ABOUT_HOME)
EndFunc


Func _OpenSupportLink()
	ShellExecute($REBAR_ABOUT_SUPPORT)
EndFunc


Func _OpenTwitterLink()
	ShellExecute($REBAR_ABOUT_TWITTER)
EndFunc


Func _CloseAboutDlg()

	GUICtrlSetState($REBAR_ABOUT_MENU, $GUI_ENABLE)
	GUIDelete($REBAR_ABOUT_GUI)
	WinSetTrans($REBAR_GUI_CORE, Default, 255)

EndFunc   ;==>_CloseAboutDlg


; #FUNCTION# ====================================================================================================================
; Author ........: Derick Payne (Rizonesoft)
; Modified.......:
; ===============================================================================================================================
Func _OnReBarExit()

	; AutoIt Exit Methods:
	;	$EXITCLOSE_NORMAL - Closed Naturally.
	;	$EXITCLOSE_BYEXIT - Closed by Exit Function.
	;	$EXITCLOSE_BYCLICK - Closed by Clicking on Exit of the Systray.
	;	$EXITCLOSE_BYLOGOFF - Closed by user Logoff
	;	$EXITCLOSE_BYSUTDOWN - Closed by Windows Shutdown

	IniWrite($REBAR_PATH_INI, $REBAR_PROG_SHORTNAME, "ExitMethod", @exitMethod)

EndFunc   ;==>_ReBarExit


; #FUNCTION# ====================================================================================================================
; Name...........: __GUICtrlMonthCal_Resize
; Description ...: Custom Com error handler (
; Author ........: Derick Payne (Rizonesoft)
; Modified.......:
; Remarks .......: Install using 'ObjEvent("AutoIt.Error", "_ComErrHandler")'
;                  The Com error handler must be installed at the beginning of the script.
;                  Take a look at ReBar_Startup.au3 for a working example.
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _ComErrHandler()
    Local $HexError = Hex($oErrorHandler.number, 8)
    MsgBox(0, "", "We intercepted a COM Error!" & @CRLF & _
            "Number is: " & $HexError & @CRLF & _
            "WinDescription is: " & $oErrorHandler.windescription)
    $iEventError = 1 ; Use to check when a COM Error occurs
EndFunc   ;==>ErrFunc