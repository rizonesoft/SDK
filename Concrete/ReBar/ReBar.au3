#NoTrayIcon
#OnAutoItStartRegister "_ReBarStartUp"

#Region AutoIt3Wrapper Directives Dection

#AutoIt3Wrapper_If_Run

	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	#AutoIt3Wrapper_UseX64=Y										 ;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Run_Debug_Mode=N								 ;~ (Y/N) Run Script with console debugging. Default=N
	#AutoIt3Wrapper_Run_SciTE_Minimized=Y 							 ;~ (Y/N) Minimize SciTE while script is running. Default=N
	#AutoIt3Wrapper_Run_SciTE_OutputPane_Minimized=N				 ;~ (Y/N) Minimize SciTE output pane at run time. Default=N
	;===============================================================================================================
	; Tidy Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Tidy=Y										 ;~ (Y/N) Run Tidy before compilation. Default=N
	#AutoIt3Wrapper_Tidy_Stop_OnError=N								 ;~ (Y/N) Continue when only Warnings. Default=Y
	;#Tidy_Parameters= 												;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
	;===============================================================================================================
	; AU3Check settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_AU3Check=Y									 ;~ (Y/N) Run au3check before compilation. Default=Y
	;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
	;#AutoIt3Wrapper_AU3Check_Stop_OnWarning=						;~ (Y/N) Continue/Stop on Warnings.(Default=N)

#Autoit3Wrapper_If_Compile

	#AutoIt3Wrapper_ShowProgress=Y									 ;~ (Y/N) Show ProgressWindow during Compile. Default=Y
	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	#AutoIt3Wrapper_UseX64=Y										 ;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Version=B                        				 ;~ (B/P) Use Beta or Production for AutoIt3 and Aut2Eex. Default is P
	#AutoIt3Wrapper_Run_Debug_Mode=N								 ;~ (Y/N) Run Script with console debugging. Default=N
	;#AutoIt3Wrapper_Autoit3Dir=									;~ Optionally override the AutoIt3 install directory to use.
	;#AutoIt3Wrapper_Aut2exe=										;~ Optionally override the Aut2exe.exe to use for this script
	;#AutoIt3Wrapper_AutoIt3=										;~ Optionally override the Autoit3.exe to use for this script
	;===============================================================================================================
	; Aut2Exe Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Icon=Themes\Icons\ReBar.ico						 ;~ Filename of the Ico file to use for the compiled exe
	#AutoIt3Wrapper_OutFile_Type=exe								 ;~ exe=Standalone executable (Default); a3x=Tokenised AutoIt3 code file
	#AutoIt3Wrapper_OutFile=ReBar.exe								 ;~ Target exe/a3x filename.
	#AutoIt3Wrapper_OutFile_X64=ReBar_X64.exe						 ;~ Target exe filename for X64 compile.
	;#AutoIt3Wrapper_Compression=4									;~ Compression parameter 0-4  0=Low 2=normal 4=High. Default=2
	;#AutoIt3Wrapper_UseUpx=Y										;~ (Y/N) Compress output program.  Default=Y
	;#AutoIt3Wrapper_UPX_Parameters=								;~ Override the default settings for UPX.
	#AutoIt3Wrapper_Change2CUI=N									 ;~ (Y/N) Change output program to CUI in stead of GUI. Default=N
	#AutoIt3Wrapper_Compile_both=Y									 ;~ (Y/N) Compile both X86 and X64 in one run. Default=N
	;===============================================================================================================
	; Target Program Resource info
	;===============================================================================================================
	#AutoIt3Wrapper_Res_Comment=ReBar Framework							 ;~ Comment field
	#AutoIt3Wrapper_Res_Description=AutoIt Application Framework      	 ;~ Description field
	#AutoIt3Wrapper_Res_Fileversion=1.0.0.739
	#AutoIt3Wrapper_Res_FileVersion_AutoIncrement=Y  					 ;~ (Y/N/P) AutoIncrement FileVersion. Default=N
	#AutoIt3Wrapper_Res_FileVersion_First_Increment=N					 ;~ (Y/N) AutoIncrement Y=Before; N=After compile. Default=N
	#AutoIt3Wrapper_Res_HiDpi=Y                      					 ;~ (Y/N) Compile for high DPI. Default=N
	#AutoIt3Wrapper_Res_ProductVersion=0             					 ;~ Product Version
	#AutoIt3Wrapper_Res_Language=2057									 ;~ Resource Language code . Default 2057=English (United Kingdom)
	#AutoIt3Wrapper_Res_LegalCopyright=© 2016 Rizonesoft				 ;~ Copyright field
	#AutoIt3Wrapper_res_requestedExecutionLevel=highestAvailable		 ;~ asInvoker, highestAvailable, requireAdministrator or None (remove the trsutInfo section).  Default is the setting from Aut2Exe (asInvoker)
	#AutoIt3Wrapper_res_Compatibility=Vista,Win7,Win8,Win81				 ;~ Vista/Windows7/win7/win8/win81 allowed separated by a comma     (Default=Win81)
	;#AutoIt3Wrapper_Res_SaveSource=N									;~ (Y/N) Save a copy of the Script_source in the EXE resources. Default=N
	; If _Res_SaveSource=Y the content of Script_source depends on the _Run_Au3Stripper and #Au3Stripper_parameters directives:
	;    If _Run_Au3Stripper=Y then
	;        If #Au3Stripper_parameters=/STRIPONLY then Script_source is stripped script & stripped includes
	;        If #Au3Stripper_parameters=/STRIPONLYINCLUDES then Script_source is original script & stripped includes
	;       With any other parameters, the SaveSource directive is ignored as obfuscation is intended to protect the source
	;   If _Run_Au3Stripper=N or is not set then
	;       Scriptsource is original script only
	; AutoIt3Wrapper indicates the SaveSource action taken in the SciTE console during compilation
	; See SciTE4AutoIt3 Helpfile for more detail on Au3Stripper parameters
	;===============================================================================================================
	; Free form resource fields ... max 15
	;===============================================================================================================
	; You can use the following variables:
	;	%AutoItVer% which will be replaced with the version of AutoIt3
	;	%date% = PC date in short date format
	;	%longdate% = PC date in long date format
	;	%time% = PC timeformat
	;	eg: #AutoIt3Wrapper_Res_Field=AutoIt Version|%AutoItVer%
	#AutoIt3Wrapper_Res_Field=CompanyName|Rizonesoft
	#AutoIt3Wrapper_Res_Field=ProductName|ReBar Framework
	#AutoIt3Wrapper_Res_Field=HomePage|https://www.rizonesoft.com
	#AutoIt3Wrapper_Res_Field=AutoItVersion|%AutoItVer%
	; Add extra ICO files to the resources
	; Use full path of the ico files to be added
	; ResNumber is a numeric value used to access the icon: TraySetIcon(@ScriptFullPath, ResNumber)
	; If no ResNumber is specified, the added icons are numbered from 201 up
	; #AutoIt3Wrapper_Res_Icon_Add=                   				;~ Filename[,ResNumber[,LanguageCode]] of ICO to be added.
	; #AutoIt3Wrapper_Res_File_Add=                   				;~ Filename[,Section [,ResName[,LanguageCode]]] to be added.
	; Add files to the resources - can be compressed
	; #AutoIt3Wrapper_Res_Remove=
	; Remove resources
	#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\ReBarH.ico
	;===============================================================================================================
	; Tidy Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Tidy=N										 ;~ (Y/N) Run Tidy before compilation. Default=N
	;#AutoIt3Wrapper_Tidy_Stop_OnError=              				;~ (Y/N) Continue when only Warnings. Default=Y
	;#Tidy_Parameters=                               				;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
	;===============================================================================================================
	; Au3Stripper Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Au3Stripper=N								 ;~ (Y/N) Run Au3Stripper before compilation. default=N
	;#Au3Stripper_Parameters=										;~ Au3Stripper parameters...see SciTE4AutoIt3 Helpfile for options
	;#Au3Stripper_Ignore_Variables=
	;===============================================================================================================
	; AU3Check settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_AU3Check=Y									 ;~ (Y/N) Run au3check before compilation. Default=Y
	;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
	#AutoIt3Wrapper_AU3Check_Stop_OnWarning=Y 						 ;~ (Y/N) Continue/Stop on Warnings.(Default=N)
	;===============================================================================================================
	; Versioning Settings
	;===============================================================================================================
	;#AutoIt3Wrapper_Versioning=V									;~ (Y/N/V) Run Versioning to update the script source. default=N
	;	V=only run when fileversion is increased by #AutoIt3Wrapper_Res_FileVersion_AutoIncrement.
	;#AutoIt3Wrapper_Versioning_Parameters=/NoPrompt				;~ /NoPrompt  : Will skip the Comments prompt
	;	/Comments  : Text to added in the Comments. It can also contain the below variables.
	;===============================================================================================================
	; RUN BEFORE AND AFTER definitions
	;===============================================================================================================
	;The following directives can contain: these variables
	;	%in% , %out%, %outx64%, %icon% which will be replaced by the fullpath\filename.
	;	%scriptdir% same as @ScriptDir and %scriptfile% = filename without extension.
	;	%fileversion% is the information from the #AutoIt3Wrapper_Res_Fileversion directive
	;	%scitedir% will be replaced by the SciTE program directory
	;	%autoitdir% will be replaced by the AutoIt3 program directory
	;#AutoIt3Wrapper_Run_Before_Admin=               				;~ (Y/N) Run subsequent Run_Before statements with #RequireAdmin. Default=N
	;#AutoIt3Wrapper_Run_After_Admin=                				;~ (Y/N) Run subsequent Run_After statements with #RequireAdmin. Default=N
	;#AutoIt3Wrapper_Run_Before=                     				;~ process to run before compilation - multiple records will be processed in sequence
	;#AutoIt3Wrapper_Run_After=                      				;~ process to run after compilation - multiple records will be processed in sequence
	;===============================================================================================================

#AutoIt3Wrapper_EndIf

#EndRegion AutoIt3Wrapper Directives Dection

Opt("CaretCoordMode", 1) ;~ 1=absolute, 0=relative, 2=client
Opt("ExpandEnvStrings", 1) ;~ 0=don't expand, 1=do expand
Opt("ExpandVarStrings", 1) ;~ 0=don't expand, 1=do expand
Opt("GUICloseOnESC", 1) ;~ 1=ESC  closes, 0=ESC won't close
Opt("GUICoordMode", 1) ;~ 1=absolute, 0=relative, 2=cell
Opt("GUIDataSeparatorChar", "|") ;~ "|" is the default
Opt("GUIOnEventMode", 1) ;~ 0=disabled, 1=OnEvent mode enabled
Opt("GUIResizeMode", 802) ;~ 0=no resizing, <1024 special resizing
Opt("GUIEventOptions", 0) ;~ 0=default, 1=just notification, 2=GUICtrlRead tab index
Opt("MouseClickDelay", 10) ;~ 10 milliseconds
Opt("MouseClickDownDelay", 10) ;~ 10 milliseconds
Opt("MouseClickDragDelay", 250) ;~ 250 milliseconds
Opt("MouseCoordMode", 1) ;~ 1=absolute, 0=relative, 2=client
Opt("MustDeclareVars", 1) ;~ 0=no, 1=require pre-declaration
Opt("PixelCoordMode", 1) ;~ 1=absolute, 0=relative, 2=client
Opt("SendAttachMode", 0) ;~ 0=don't attach, 1=do attach
Opt("SendCapslockMode", 1) ;~ 1=store and restore, 0=don't
Opt("SendKeyDelay", 5) ;~ 5 milliseconds
Opt("SendKeyDownDelay", 1) ;~ 1 millisecond
Opt("TCPTimeout", 100) ;~ 100 milliseconds
Opt("TrayAutoPause", 1) ;~ 0=no pause, 1=Pause
Opt("TrayIconDebug", 1) ;~ 0=no info, 1=debug line info
Opt("TrayIconHide", 1) ;~ 0=show, 1=hide tray icon
Opt("TrayMenuMode", 1) ;~ 0=append, 1=no default menu, 2=no automatic check, 4=menuitemID  not return
Opt("TrayOnEventMode", 1) ;~ 0=disable, 1=enable
Opt("WinDetectHiddenText", 0) ;~ 0=don't detect, 1=do detect
Opt("WinSearchChildren", 1) ;~ 0=no, 1=search children also
Opt("WinTextMatchMode", 1) ;~ 1=complete, 2=quick
Opt("WinTitleMatchMode", 1) ;~ 1=start, 2=subStr, 3=exact, 4=advanced, -1 to -4=Nocase
Opt("WinWaitDelay", 250) ;~ 250 milliseconds


#include <ListviewConstants.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <StaticConstants.au3>
#include <StringConstants.au3>
#include <GuiConstantsEx.au3>
#include <EditConstants.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <Constants.au3>
#include <GDIPlus.au3>
#include <GuiMenu.au3>


#include "..\..\Includes\ReBar_Declarations.au3"
#include "..\..\Includes\ReBar_ModernMenu.au3"
#include "..\..\Includes\ReBar_Versioning.au3"
#include "..\..\Includes\ReBar_Functions.au3"
#include "..\..\Includes\ReBar_Logging.au3"
#include "..\..\Includes\ReBar_Splash.au3"

#include "UDF\ReBar_Options.au3"

#include "..\..\Includes\ReBar_Startup.au3"

;===============================================================================================================
; Declarations
;===============================================================================================================
Global $GUI_ICON_HOVER = 0
Global $ICON_HOVER = @ScriptFullPath
;===============================================================================================================


_SplashStart("Initializing " & $REBAR_PROG_NAME, $REBAR_SPLASH_ENABLE)
_SplashUpdate("Setting Working Directories", 1, $REBAR_SPLASH_ENABLE)
_SetWorkingDirectories()
_SplashUpdate("Initializing Logging Subsystem", 2, $REBAR_SPLASH_ENABLE)
_LoggingInitialize()
_SplashUpdate("Checking Integrity", 3, $REBAR_SPLASH_ENABLE)
_CheckResources($REBAR_RES_FUGUE)
_CheckResources($REBAR_RES_DOORS)
_SplashUpdate("Building Interface", 5, $REBAR_SPLASH_ENABLE)
_StartCoreGUI()


Func _StartCoreGUI()

	Local $mnuFile, $miFileClose
	Local $mnuHelp, $miHlpHome, $miHlpSupport

	$REBAR_GUI_CORE = GUICreate($REBAR_ISADMINST & _GUIGetTitle($REBAR_PROG_NAME), $REBAR_FORM_WIDTH, $REBAR_FORM_HEIGHT, -1, -1, -1)
	GUIRegisterMsg($WM_GETMINMAXINFO, "WM_GETMINMAXINFO")
	GUISetFont($REBAR_FONT_SIZE, 400, -1, $REBAR_FONT_NAME, $REBAR_GUI_CORE, $CLEARTYPE_QUALITY)
	If Not @Compiled Then
		GUISetIcon($REBAR_ICON, 0, $REBAR_GUI_CORE)
		$ICON_HOVER = @ScriptDir & "\Themes\Icons\ReBarH.ico"
	EndIf

	$mnuFile = _GUICtrlCreateODTopMenu("&File", $REBAR_GUI_CORE)
	$mnuHelp = _GUICtrlCreateODTopMenu("&Help", $REBAR_GUI_CORE)

	_GUICtrlCreateODMenuItem("", $mnuFile)
	$miFileClose = _GUICtrlCreateODMenuItem("&Close" & @TAB & "Esc", $mnuFile, $REBAR_RES_FUGUE, 102)
	_GUICtrlCreateODMenuItem("", $mnuFile)
	$REBAR_ABOUT_MENU = _GUICtrlCreateODMenuItem("&About " & $REBAR_PROG_NAME, $mnuHelp, $REBAR_RES_FUGUE, 103)
	$miHlpHome = _GUICtrlCreateODMenuItem($REBAR_COMP_NAME & " &Home", $mnuHelp, $REBAR_RES_FUGUE, 106)
	_GUICtrlCreateODMenuItem("", $mnuHelp)
	$miHlpSupport = _GUICtrlCreateODMenuItem($REBAR_COMP_NAME & " &Support", $mnuHelp, $REBAR_RES_FUGUE, 101)

	_SetMenuSelectBkColor(0xF7E0C9)
	_SetMenuSelectRectColor(0xE4A262)

	GUICtrlSetOnEvent($miFileClose, "_ShutdownProgram")
	GUICtrlSetOnEvent($REBAR_ABOUT_MENU, "_ShowAboutDialog")
	GUICtrlSetOnEvent($miHlpHome, "_OpenHomePageLink")
	GUICtrlSetOnEvent($miHlpSupport, "_OpenSupportLink")

	$REBAR_GUI_ICON = GUICtrlCreateIcon($REBAR_ICON, 99, 10, 10, 64, 64)
	GUICtrlSetTip($REBAR_GUI_ICON, "Version " & FileGetVersion(@ScriptFullPath) & @CRLF & _
			"Build with AutoIt version " & @AutoItVersion & @CRLF & _
			"Copyright © " & @YEAR & " " & $REBAR_COMP_NAME, _
			"About " & $REBAR_PROG_NAME, $TIP_INFOICON, $TIP_BALLOON)
	GUICtrlSetCursor($REBAR_GUI_ICON, 0)

	GUICtrlSetOnEvent($REBAR_GUI_ICON, "_ShowAboutDialog")

	; This will close the splash page.
	_SplashUpdate("", 100, $REBAR_SPLASH_ENABLE)
	GUISetState(@SW_SHOW, $REBAR_GUI_CORE)

	GUISetOnEvent($GUI_EVENT_CLOSE, "_ShutdownProgram", $REBAR_GUI_CORE)

	While 1
		_OnMainIconHover()
		Sleep(55)
	WEnd

EndFunc   ;==>_StartCoreGUI


Func _OnMainIconHover()

	Local $iCursor = GUIGetCursorInfo()

	If Not @error Then
		If $iCursor[4] = $REBAR_GUI_ICON And $REBAR_GUI_ICON_HOVER = 1 Then
			$REBAR_GUI_ICON_HOVER = 0
			GUICtrlSetImage($REBAR_GUI_ICON, $ICON_HOVER, 201)
		ElseIf $iCursor[4] <> $REBAR_GUI_ICON And $REBAR_GUI_ICON_HOVER = 0 Then
			$REBAR_GUI_ICON_HOVER = 1
			GUICtrlSetImage($REBAR_GUI_ICON, $REBAR_ICON, 99)
		EndIf
	EndIf

EndFunc   ;==>_OnMainIconHover


#include "..\..\Includes\ReBar_End.au3"