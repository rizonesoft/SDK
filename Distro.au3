#NoTrayIcon

#OnAutoItStartRegister "_ReBarStartUp"


#Region AutoIt3Wrapper Directives Dection

#AutoIt3Wrapper_If_Run

	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	; #AutoIt3Wrapper_UseX64=Y										 ;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Run_Debug_Mode=Y								 ;~ (Y/N) Run Script with console debugging. Default=N
	#AutoIt3Wrapper_Run_SciTE_Minimized=Y 							 ;~ (Y/N) Minimize SciTE while script is running. Default=N
	#AutoIt3Wrapper_Run_SciTE_OutputPane_Minimized=N				 ;~ (Y/N) Minimize SciTE output pane at run time. Default=N
	;===============================================================================================================
	; Tidy Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Tidy=Y										 ;~ (Y/N) Run Tidy before compilation. Default=N
	#AutoIt3Wrapper_Tidy_Stop_OnError=N								 ;~ (Y/N) Continue when only Warnings. Default=Y
	;#Tidy_Parameters=												;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
	;===============================================================================================================
	; AU3Check settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_AU3Check=Y									 ;~ (Y/N) Run au3check before compilation. Default=Y
	;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
	;#AutoIt3Wrapper_AU3Check_Stop_OnWarning=						;~ (Y/N) Continue/Stop on Warnings.(Default=N)

#Autoit3Wrapper_If_Compile

	#AutoIt3Wrapper_ShowProgress=Y									;~ (Y/N) Show ProgressWindow during Compile. Default=Y
	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	;#AutoIt3Wrapper_UseX64=Y										;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Version=B                        				;~ (B/P) Use Beta or Production for AutoIt3 and Aut2Eex. Default is P
	#AutoIt3Wrapper_Run_Debug_Mode=N								;~ (Y/N) Run Script with console debugging. Default=N
	;#AutoIt3Wrapper_Autoit3Dir=									;~ Optionally override the AutoIt3 install directory to use.
	;#AutoIt3Wrapper_Aut2exe=										;~ Optionally override the Aut2exe.exe to use for this script
	;#AutoIt3Wrapper_AutoIt3=										;~ Optionally override the Autoit3.exe to use for this script
	;===============================================================================================================
	; Aut2Exe Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Icon=SDK\Themes\Icons\Distro.ico				;~ Filename of the Ico file to use for the compiled exe
	#AutoIt3Wrapper_OutFile_Type=exe								;~ exe=Standalone executable (Default); a3x=Tokenised AutoIt3 code file
	#AutoIt3Wrapper_OutFile=Distro.exe								;~ Target exe/a3x filename.
	;#AutoIt3Wrapper_OutFile_X64=Distro_X64.exe						;~ Target exe filename for X64 compile.
	#AutoIt3Wrapper_Compression=4									;~ Compression parameter 0-4  0=Low 2=normal 4=High. Default=2
	#AutoIt3Wrapper_UseUpx=N										;~ (Y/N) Compress output program.  Default=Y
	;#AutoIt3Wrapper_UPX_Parameters=								;~ Override the default settings for UPX.
	#AutoIt3Wrapper_Change2CUI=N									;~ (Y/N) Change output program to CUI in stead of GUI. Default=N
	;#AutoIt3Wrapper_Compile_both=Y									;~ (Y/N) Compile both X86 and X64 in one run. Default=N
	;===============================================================================================================
	; Target Program Resource info
	;===============================================================================================================
	#AutoIt3Wrapper_Res_Comment=Distro Building Environment				;~ Comment field
	#AutoIt3Wrapper_Res_Description=Distro Building Environment			;~ Description field
	#AutoIt3Wrapper_Res_Fileversion=1.0.0.1533
	#AutoIt3Wrapper_Res_FileVersion_AutoIncrement=Y  					;~ (Y/N/P) AutoIncrement FileVersion. Default=N
	#AutoIt3Wrapper_Res_FileVersion_First_Increment=N					;~ (Y/N) AutoIncrement Y=Before; N=After compile. Default=N
	#AutoIt3Wrapper_Res_HiDpi=Y                      					;~ (Y/N) Compile for high DPI. Default=N
	#AutoIt3Wrapper_Res_ProductVersion=0             					;~ Product Version
	#AutoIt3Wrapper_Res_Language=2057									;~ Resource Language code . Default 2057=English (United Kingdom)
	#AutoIt3Wrapper_Res_LegalCopyright=© 2016 Rizonesoft				;~ Copyright field
	#AutoIt3Wrapper_res_requestedExecutionLevel=asInvoker				;~ asInvoker, highestAvailable, requireAdministrator or None (remove the trsutInfo section).  Default is the setting from Aut2Exe (asInvoker)
	#AutoIt3Wrapper_res_Compatibility=Vista,Win7,Win8,Win81,Win10		;~ Vista/Windows7/win7/win8/win81 allowed separated by a comma     (Default=Win81)
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
	#AutoIt3Wrapper_Res_Field=ProductName|Distro Building Environment
	#AutoIt3Wrapper_Res_Field=HomePage|https://rizonesoft.com
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
	#AutoIt3Wrapper_Res_Icon_Add=SDK\Themes\Icons\DistroH.ico
	;===============================================================================================================
	; Tidy Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Tidy=N										 ;~ (Y/N) Run Tidy before compilation. Default=N
	;#AutoIt3Wrapper_Tidy_Stop_OnError=              				;~ (Y/N) Continue when only Warnings. Default=Y
	;#Tidy_Parameters=                               				;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
	;===============================================================================================================
	; Au3Stripper Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Au3Stripper=N
;~ (Y/N) Run Au3Stripper before compilation. default=N
	;#Au3Stripper_Parameters=/StripOnly								;~ Au3Stripper parameters...see SciTE4AutoIt3 Helpfile for options
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
#include <ListBoxConstants.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <StaticConstants.au3>
#include <StringConstants.au3>
#include <GuiConstantsEx.au3>
#include <EditConstants.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <Constants.au3>
#include <Misc.au3>

#include <WinAPITheme.au3>

#include "Includes\ReBar_Declarations.au3"
#include "Includes\ReBar_Functions.au3"
#include "Includes\ReBar_ModernMenu.au3"
#include "Includes\ReBar_Versioning.au3"
#include "Includes\ReBar_Logging.au3"
#include "Includes\ReBar_Splash.au3"
#include "Includes\ReBar_Process.au3"
#include "Includes\ReBar_AutoIt3Script.au3"

#include "UDF\Distro_Options.au3"

#include "Includes\ReBar_Startup.au3"


;===============================================================================================================
; Declarations
;===============================================================================================================
Global Const $COUNT_BUILD = 4
Global Const $COUNT_DISTRIBUTE = 7
Global Const $LINESPACING = 20
Global Const $SPACE_PRELINE = 22
Global Const $COUNT_PREREQ_COL = 2
Global Const $COUNT_PREREQ_ROW = 5
Global Const $COUNT_PREREQ_LINE = 6

Global Const $DIR_SIGNING = @ScriptDir & "\Signing\"

Global $g_ListDistros, $g_ImgDistros, $g_CountDistros = 0
Global $g_ListStatus, $g_ImgStatus
Global $g_MenuCreateSln, $g_GuiCreateSln
Global $g_IconBuild[$COUNT_BUILD], $g_ChkBuild[$COUNT_BUILD], $g_BtnHlpBuild[$COUNT_BUILD], $g_BtnGoBuild[$COUNT_BUILD]
Global $g_PrTopBuild[$COUNT_BUILD], $g_LineBuild[$COUNT_BUILD], $g_ProgressBuild[$COUNT_BUILD]
Global $g_BtnHlpBuildH[$COUNT_BUILD], $g_BtnGoBuildH[$COUNT_BUILD]
Global $g_IconDistribute[$COUNT_DISTRIBUTE], $g_ChkDistribute[$COUNT_DISTRIBUTE]
Global $g_BtnHlpDistribute[$COUNT_DISTRIBUTE], $g_BtnGoDistribute[$COUNT_DISTRIBUTE]
Global $g_PrgTopDistribute[$COUNT_DISTRIBUTE], $g_LineDistribute[$COUNT_DISTRIBUTE]
Global $g_ProgressDistribute[$COUNT_DISTRIBUTE], $g_BtnHlpDistributeH[$COUNT_DISTRIBUTE]
Global $g_BtnGoDistributeH[$COUNT_DISTRIBUTE]
Global $g_LinePreReq[$COUNT_PREREQ_COL][$COUNT_PREREQ_LINE], $g_IconPreStatus[$COUNT_PREREQ_COL][$COUNT_PREREQ_ROW]
Global $g_LblPreName[$COUNT_PREREQ_COL][$COUNT_PREREQ_ROW], $g_LblPreStatus[$COUNT_PREREQ_COL][$COUNT_PREREQ_ROW]
Global $g_LblPreURL[$COUNT_PREREQ_COL][$COUNT_PREREQ_ROW]
Global $g_BtnProcessAll, $g_TabLogging, $g_InstallSize = 0

Global $AU3_INSTALLED, $AU3_DIR, $AU3_CMD
Global $AUB_INSTALLED, $AUB_DIR, $AUB_CMD
Global $SCT_INSTALLED, $SCT_DIR, $SCT_CMD
Global $AUW_INSTALLED, $AUW_DIR, $AUW_CMD
Global $UPX_INSTALLED, $UPX_DIR, $UPX_CMD
Global $KSN_INSTALLED, $KSN_DIR, $KSN_CMD
Global $7ZP_INSTALLED, $7ZP_DIR, $7ZP_CMD
Global $INN_INSTALLED, $INN_DIR, $INN_CMD

Global $INI_DISTRO = ""
Global $DIR_DISTRO = ""
Global $AU3_DISTRO = ""

Global $INT_BLDPERC[$COUNT_BUILD], $INT_BLDPOS[$COUNT_BUILD]
Global $INT_DISPERC[$COUNT_DISTRIBUTE], $INT_DISPOS[$COUNT_DISTRIBUTE]

Global $COUNT_CHECKED_DISTROS = 0
Global $B_SINGULARITY = False
Global $ICO_PREREFRESH, $ICO_PREREFRESH_H = 1

Global $NSD_NAME, $NSD_PROG_NAME, $NSD_PROG_DESC, $NSD_BTNCREATE
;===============================================================================================================


_SplashStart("Initializing " & $g_ReBarProgName)
_SplashUpdate("Setting Working Directories", 1)
_SetWorkingDirectories()
_SplashUpdate("Initializing Logging Subsystem", 2)
_LoggingInitialize()
_SplashUpdate("Checking Integrity", 3)
_CheckResources($g_ReBarResFugue)
_CheckResources($g_ReBarResDoors)
_SplashUpdate("Building Interface", 5)
_StartCoreGUI()


Func _StartCoreGUI()

	Local $mnuFile, $miFileClose
	Local $mnuCreate
	Local $mnuHelp, $miHlpHome, $miHlpSupport
	Local $btnGenDocs

	$g_ReBarCoreGui = GUICreate($g_ReBarGuiTitle, $g_ReBarFormWidth, $g_ReBarFormHeight, -1, -1, -1)
	GUIRegisterMsg($WM_GETMINMAXINFO, "WM_GETMINMAXINFO")
	GUISetFont($g_ReBarFontSize, 400, -1, $g_ReBarFontName, $g_ReBarCoreGui, $CLEARTYPE_QUALITY)
	If Not @Compiled Then
		GUISetIcon($g_ReBarIcon, 0, $g_ReBarCoreGui)
	EndIf

	$mnuFile = _GUICtrlCreateODTopMenu("&File", $g_ReBarCoreGui)
	$mnuCreate = _GUICtrlCreateODTopMenu("&Create", $g_ReBarCoreGui)
	$mnuHelp = _GUICtrlCreateODTopMenu("&Help", $g_ReBarCoreGui)

	_GUICtrlCreateODMenuItem("", $mnuFile)
	$miFileClose = _GUICtrlCreateODMenuItem("&Close" & @TAB & "Esc", $mnuFile, $g_ReBarResFugue, 102)
	_GUICtrlCreateODMenuItem("", $mnuFile)
	$g_MenuCreateSln = _GUICtrlCreateODMenuItem("&Create new Solution...", $mnuCreate, $g_ReBarResFugue, 140)
	$g_ReBarAboutMenu = _GUICtrlCreateODMenuItem("&About " & $g_ReBarProgName, $mnuHelp, $g_ReBarResFugue, 103)
	$miHlpHome = _GUICtrlCreateODMenuItem($g_ReBarCompName & " &Home", $mnuHelp, $g_ReBarResFugue, 106)
	_GUICtrlCreateODMenuItem("", $mnuHelp)
	$miHlpSupport = _GUICtrlCreateODMenuItem($g_ReBarCompName & " &Support", $mnuHelp, $g_ReBarResFugue, 101)

	_SetMenuSelectBkColor(0xF7E0C9)
	_SetMenuSelectRectColor(0xE4A262)

	GUICtrlSetOnEvent($miFileClose, "_ShutdownProgram")
	GUICtrlSetOnEvent($g_MenuCreateSln, "_CreateNewSolutionDialog")
	GUICtrlSetOnEvent($g_ReBarAboutMenu, "_ShowAboutDialog")
	GUICtrlSetOnEvent($miHlpHome, "_OpenHomePageLink")
	GUICtrlSetOnEvent($miHlpSupport, "_OpenSupportLink")

	$g_ReBarGuiIcon = GUICtrlCreateIcon($g_ReBarIcon, 99, 10, 10, 64, 64)
	GUICtrlSetTip($g_ReBarGuiIcon, "Version " & $g_ReBarRunVersion & @CRLF & _
			"Build with AutoIt version " & @AutoItVersion & @CRLF & _
			"Copyright © " & @YEAR & " " & $g_ReBarCompName, _
			"About " & $g_ReBarProgName, $TIP_INFOICON, $TIP_BALLOON)
	GUICtrlSetCursor($g_ReBarGuiIcon, 0)
	GUICtrlSetOnEvent($g_ReBarGuiIcon, "_ShowAboutDialog")

	GUICtrlCreateLabel("Rizonesoft SDK (Distro) 1", 85, 15, 300, 100)
	GUICtrlSetFont(-1, 11)

	$g_ListDistros = GUICtrlCreateListView("", 10, 90, 450, 200)
	_GUICtrlListView_SetExtendedListViewStyle($g_ListDistros, BitOR($LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT, _
			$LVS_EX_SUBITEMIMAGES, $LVS_EX_CHECKBOXES, _
			$LVS_EX_DOUBLEBUFFER, $WS_EX_CLIENTEDGE, _
			$LVS_EX_FLATSB, $LVS_EX_INFOTIP))
	_WinAPI_SetWindowTheme(GUICtrlGetHandle($g_ListDistros), "Explorer")

	_GUICtrlListView_AddColumn($g_ListDistros, " Distros ", 450)
	_GUICtrlListView_AddColumn($g_ListDistros, " Script Path ", 100)
	_GUICtrlListView_AddColumn($g_ListDistros, " Distro Configuration ", 100)

	$g_ImgDistros = _GUIImageList_Create(16, 16, 5, 3, 0, 250)
	_GUICtrlListView_SetImageList($g_ListDistros, $g_ImgDistros, 1)

	$g_BtnProcessAll = GUICtrlCreateButton("Process", 270, 295, 190, 40)
	GUICtrlSetFont($g_BtnProcessAll, 11, 400)

	GUICtrlSetOnEvent($g_BtnProcessAll, "_RunBuildOption")

	GUICtrlCreateTab(10, 345, 760, 160)

	GUICtrlCreateTabItem(" Prerequisites ")

	GUICtrlCreateLabel("", 20, 380, 1, 111)
	GUICtrlSetBkColor(-1, 0xD9D9D9)
	GUICtrlCreateLabel("", 330, 380, 1, 111)
	GUICtrlSetBkColor(-1, 0xD9D9D9)
	GUICtrlCreateLabel("", 365, 380, 1, 111)
	GUICtrlSetBkColor(-1, 0xD9D9D9)

	For $iCol = 0 To $COUNT_PREREQ_COL - 1
		For $iLine = 0 To $COUNT_PREREQ_LINE - 1
			$g_LinePreReq[$iCol][$iLine] = GUICtrlCreateLabel("", 20 + ($iCol * 360), 380 + ($iLine * $SPACE_PRELINE), 346, 1)
			GUICtrlSetBkColor($g_LinePreReq[$iCol][$iLine], 0xD9D9D9)
		Next
		For $iRow = 0 To $COUNT_PREREQ_ROW - 1
			$g_IconPreStatus[$iCol][$iRow] = GUICtrlCreateIcon($g_ReBarResFugue, 122, 25 + ($iCol * 360), 383 + ($iRow * $SPACE_PRELINE), 16, 16)
			$g_LblPreName[$iCol][$iRow] = GUICtrlCreateLabel("Prerequisites", 50 + ($iCol * 360), 384 + ($iRow * $SPACE_PRELINE), 200, 16)
			$g_LblPreStatus[$iCol][$iRow] = GUICtrlCreateLabel("Not Installed", 250 + ($iCol * 360), 384 + ($iRow * $SPACE_PRELINE), 80, 16)
			GUICtrlSetFont($g_LblPreStatus[$iCol][$iRow], 8.5, -1, 4) ;Underlined
			GUICtrlSetColor($g_LblPreStatus[$iCol][$iRow], 0x0000FF)
			GUICtrlSetCursor($g_LblPreStatus[$iCol][$iRow], 0)
			$g_LblPreURL[$iCol][$iRow] = GUICtrlCreateIcon($g_ReBarResFugue, 126, 340 + ($iCol * 360), 383 + ($iRow * $SPACE_PRELINE), 16, 16)
		Next
	Next

	_HidePrerequisite(1, 2)
	_HidePrerequisite(1, 3)
	_HidePrerequisite(1, 4)

	GUICtrlCreateLabel("", 380, 380, 1, 111)
	GUICtrlSetBkColor(-1, 0xD9D9D9)
	GUICtrlCreateLabel("", 690, 380, 1, 111)
	GUICtrlSetBkColor(-1, 0xD9D9D9)
	GUICtrlCreateLabel("", 725, 380, 1, 111)
	GUICtrlSetBkColor(-1, 0xD9D9D9)

	$ICO_PREREFRESH = GUICtrlCreateIcon($g_ReBarResFugue, 128, 738, 383, 16, 16)
	GUICtrlSetCursor($ICO_PREREFRESH, 0)
	GUICtrlSetTip($ICO_PREREFRESH, "Rescan your Computer for installed Prerequisites.", " Prerequisites", $TIP_INFOICON, $TIP_BALLOON)

	$g_TabLogging = GUICtrlCreateTabItem(" Logging ")

	$g_ListStatus = GUICtrlCreateListView("", 20, 380, 720, 111, BitOR($LVS_REPORT, $LVS_NOCOLUMNHEADER))
	_GUICtrlListView_SetExtendedListViewStyle($g_ListStatus, BitOR($LVS_EX_FULLROWSELECT, $LVS_EX_DOUBLEBUFFER, _
			$LVS_EX_SUBITEMIMAGES, $LVS_EX_INFOTIP, _
			$WS_EX_CLIENTEDGE))
	_GUICtrlListView_AddColumn($g_ListStatus, "", 680)
	_WinAPI_SetWindowTheme(GUICtrlGetHandle($g_ListStatus), "Explorer")

	$g_ImgStatus = _GUIImageList_Create(16, 16, 5, 1, 8, 8)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -103)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -130)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -122)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -134)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -133)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -135)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -136)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -138)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -159)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -160)
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -999)
	_GUICtrlListView_SetImageList($g_ListStatus, $g_ImgStatus, 1)

	GUICtrlSetFont($g_ListStatus, 9, -1, -1, "Courier New")
	GUICtrlSetColor($g_ListStatus, 0x222222)

	GUICtrlCreateTabItem("") ; end tabitem definition

	GUICtrlCreateGroup("Build", 470, 10, 300, 120)
	GUICtrlSetFont(-1, 10, 700, 2)

	For $iBuild = 0 To $COUNT_BUILD - 1
		$g_IconBuild[$iBuild] = GUICtrlCreateIcon($g_ReBarResFugue, 109 + $iBuild, 480, 38 + ($iBuild * $LINESPACING), 16, 16)
		$g_ChkBuild[$iBuild] = GUICtrlCreateCheckbox(" Building...", 503, 38 + ($iBuild * $LINESPACING), 215, 16)
		$g_BtnHlpBuild[$iBuild] = GUICtrlCreateIcon($g_ReBarResFugue, 104, 718, 38 + ($iBuild * $LINESPACING), 16, 16)
		GUICtrlSetCursor($g_BtnHlpBuild[$iBuild], 0)
		$g_BtnGoBuild[$iBuild] = GUICtrlCreateIcon($g_ReBarResFugue, 108, 738, 38 + ($iBuild * $LINESPACING), 16, 16)
		GUICtrlSetCursor($g_BtnGoBuild[$iBuild], 0)
		$g_PrTopBuild[$iBuild] = 55 + ($iBuild * $LINESPACING)
		$g_LineBuild[$iBuild] = GUICtrlCreateLabel("", 503, $g_PrTopBuild[$iBuild], 215, 1)
		GUICtrlSetBkColor($g_LineBuild[$iBuild], 0xD9D9D9)
		$g_ProgressBuild[$iBuild] = GUICtrlCreateLabel("", 503, $g_PrTopBuild[$iBuild], 1, 1)
		GUICtrlSetBkColor($g_ProgressBuild[$iBuild], 0x3399FF)
		GUICtrlSetState($g_ProgressBuild[$iBuild], $GUI_HIDE)
;~ GUICtrlSetState($g_ChkBuild[$iBuild], $GUI_CHECKED)

		GUICtrlSetOnEvent($g_BtnGoBuild[$iBuild], "_RunBuildOption")

	Next

	GUICtrlSetData($g_ChkBuild[0], " Build Distros")
	GUICtrlSetData($g_ChkBuild[1], " Compress Program Executables")
	GUICtrlSetData($g_ChkBuild[2], " Sign Program Executables")
	GUICtrlSetData($g_ChkBuild[3], " Generate Documentation")

	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	GUICtrlCreateGroup("Distribution", 470, 140, 300, 200)
	GUICtrlSetFont(-1, 10, 700, 2)

	For $iDis = 0 To $COUNT_DISTRIBUTE - 1
		$g_IconDistribute[$iDis] = GUICtrlCreateIcon($g_ReBarResFugue, 114 + $iDis, 480, 168 + ($iDis * $LINESPACING), 16, 16)
		$g_ChkDistribute[$iDis] = GUICtrlCreateCheckbox(" Building...", 503, 168 + ($iDis * $LINESPACING), 215, 16)
		$g_BtnHlpDistribute[$iDis] = GUICtrlCreateIcon($g_ReBarResFugue, 104, 718, 168 + ($iDis * $LINESPACING), 16, 16)
		GUICtrlSetCursor($g_BtnHlpDistribute[$iDis], 0)
		$g_BtnGoDistribute[$iDis] = GUICtrlCreateIcon($g_ReBarResFugue, 108, 738, 168 + ($iDis * $LINESPACING), 16, 16)
		GUICtrlSetCursor($g_BtnGoDistribute[$iDis], 0)
		$g_PrgTopDistribute[$iDis] = 185 + ($iDis * $LINESPACING)
		$g_LineDistribute[$iDis] = GUICtrlCreateLabel("", 503, $g_PrgTopDistribute[$iDis], 215, 1)
		GUICtrlSetBkColor($g_LineDistribute[$iDis], 0xD9D9D9)
		$g_ProgressDistribute[$iDis] = GUICtrlCreateLabel("", 503, $g_PrgTopDistribute[$iDis], 0, 1)
		GUICtrlSetBkColor($g_ProgressDistribute[$iDis], 0x68CEFA)
		GUICtrlSetState($g_ProgressDistribute[$iDis], $GUI_HIDE)
		;GUICtrlSetState($g_ChkDistribute[$iDis], $GUI_CHECKED)

		GUICtrlSetOnEvent($g_BtnGoDistribute[$iDis], "_RunBuildOption")
	Next

	GUICtrlSetData($g_ChkDistribute[0], " Create Distribution")
	GUICtrlSetData($g_ChkDistribute[1], " Create Portable Package")
	GUICtrlSetData($g_ChkDistribute[2], " Create Installation")
	GUICtrlSetData($g_ChkDistribute[3], " Sign Installation")
	GUICtrlSetData($g_ChkDistribute[4], " Distribute Source Code")
	GUICtrlSetData($g_ChkDistribute[5], " Update GitHub Repository")
	GUICtrlSetData($g_ChkDistribute[6], " Create Source Code Package")

	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	_SplashUpdate("Loading Distros", 98, True)
	_PopulateDistros()
	_SplashUpdate("Checking Prerequasites", 99, True)
	_CheckPrerequisites()

	_SplashUpdate("", 100)
	GUISetState(@SW_SHOW, $g_ReBarCoreGui)

	; For some reason, a column can only be hidden after the GUI is shown.
	_GUICtrlListView_HideColumn($g_ListDistros, 1)
	_GUICtrlListView_HideColumn($g_ListDistros, 2)

	GUISetOnEvent($GUI_EVENT_CLOSE, "_ShutdownProgram", $g_ReBarCoreGui)

	AdlibRegister("_OnMainIconHover", 50)
	AdlibRegister("_GUIHoverControlExtended", 50)
	_SoftwareUpdateCheck()

	While 1
		Sleep(50)
	WEnd

EndFunc   ;==>_StartCoreGUI


Func _HidePrerequisite($iCol, $iRow)

	GUICtrlSetState($g_IconPreStatus[$iCol][$iRow], $GUI_HIDE)
	GUICtrlSetState($g_LblPreStatus[$iCol][$iRow], $GUI_HIDE)
	GUICtrlSetState($g_LblPreName[$iCol][$iRow], $GUI_HIDE)
	GUICtrlSetState($g_LblPreURL[$iCol][$iRow], $GUI_HIDE)

EndFunc


Func _OnMainIconHover()

	Local $iCursor = GUIGetCursorInfo()

	If Not @error Then
		If $iCursor[4] = $g_ReBarGuiIcon And $g_ReBarIcoHovering = 1 Then
			$g_ReBarIcoHovering = 0
			GUICtrlSetImage($g_ReBarGuiIcon, $g_ReBarIconHover, 201)
		ElseIf $iCursor[4] <> $g_ReBarGuiIcon And $g_ReBarIcoHovering = 0 Then
			$g_ReBarIcoHovering = 1
			GUICtrlSetImage($g_ReBarGuiIcon, $g_ReBarIcon, 99)
		EndIf
	EndIf


EndFunc   ;==>_OnMainIconHover


Func _PopulateDistros()

	_GUICtrlListView_BeginUpdate($g_ListDistros)
	_GUICtrlListView_DeleteAllItems($g_ListDistros)

	; Build Groups
	_GUICtrlListView_EnableGroupView($g_ListDistros)
	_GUICtrlListView_InsertGroup($g_ListDistros, -1, 1, "Prototype")
	_GUICtrlListView_InsertGroup($g_ListDistros, -1, 2, "Beta")
	_GUICtrlListView_InsertGroup($g_ListDistros, -1, 3, "Release Candidate")
	_GUICtrlListView_InsertGroup($g_ListDistros, -1, 4, "Final Release")
	_GUICtrlListView_InsertGroup($g_ListDistros, -1, 5, "Unknown")

	$g_CountDistros = 0

	Local $sConcreteDir = @ScriptDir & "\Concrete"
	Local $hSearch = FileFindFirstFile($sConcreteDir & "\*.*")

	While 1

		Local $sFileName = FileFindNextFile($hSearch)
		; If there is no more file matching the search.
		If @error Then ExitLoop

		Local $sDistroPath = $sConcreteDir & "\" & $sFileName

		If StringInStr(FileGetAttrib($sDistroPath), "D") Then

			Local $hDistroSearch = FileFindFirstFile($sDistroPath & "\*.sni")

			While 1

				Local $sDistroFile = FileFindNextFile($hDistroSearch)
				; If there is no more file matching the search.
				If @error Then ExitLoop

				Local $sDistroIniPath = $sDistroPath & "\" & $sDistroFile
				Local $sDSetScript = IniRead($sDistroIniPath, "SDK", "Script", "")
				Local $sAu3ScriptIn = $sDistroPath & "\" & $sDSetScript
				Local $sDistroName = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_Res_Comment")
				Local $sDistroDescription = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_Res_Description")
				Local $sDistroShortName = _AutoIt3Script_GetFilename($sAu3ScriptIn)
				Local $sDistroIcon = $sDistroPath & "\" & _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_Icon")
				Local $sDistroVersion = _AutoIt3Script_GetVersion($sAu3ScriptIn, 0)
				Local $sDistroMajor = _AutoIt3Script_GetVersion($sAu3ScriptIn, 1)
				Local $iDistroMaintenance = _AutoIt3Script_GetVersion($sAu3ScriptIn, 3)
				Local $iDistroBuild = _AutoIt3Script_GetVersion($sAu3ScriptIn, 4)
				Local $sDistroBuildPath = $sDistroPath & "\Distribution\" & $iDistroBuild
				Local $sDistroPathPortableName = $sDistroShortName & "_" & $iDistroBuild
				Local $sDistroPathPortable = $sDistroBuildPath & "\" & $sDistroPathPortableName
				Local $sDistroPathSource = $sDistroBuildPath & "\" & $sDistroPathPortableName & "_Source"
				Local $sUseX64 = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_UseX64")
				Local $sCompileBoth = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_Compile_both")
				Local $sOutFile = "", $sOutFile64 = "", $sOutFilePath = "", $sOutFilePath_X64 = ""

				If $sUseX64 = "Y" Then
					$sOutFile64 = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_OutFile_X64")
					If $sCompileBoth = "Y" Then
						$sOutFile = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_OutFile")
					EndIf
				Else
					$sOutFile = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_OutFile")
				EndIf

				If StringStripWS($sOutFile, 8) <> "" Then $sOutFilePath = $sDistroPath & "\" & $sOutFile
				If StringStripWS($sOutFile64, 8) <> "" Then $sOutFilePath_X64 = $sDistroPath & "\" & $sOutFile64

				If IniRead($sDistroIniPath, "SDK", "Compatibilty", "") = "Rizonesoft.SDK.2" Then

					_GUICtrlListView_AddItem($g_ListDistros, " " & $sDistroName & " " & $sDistroMajor & " (Build " & $iDistroBuild & ")", 0)
					_GUICtrlListView_AddSubItem($g_ListDistros, $g_CountDistros, $sAu3ScriptIn, 1)
					_GUICtrlListView_AddSubItem($g_ListDistros, $g_CountDistros, $sDistroIniPath, 2)
					_GUICtrlListView_SetItemGroupID($g_ListDistros, $g_CountDistros, $iDistroMaintenance + 1)
					_GUIImageList_AddIcon($g_ImgDistros, $sDistroIcon, 0)
					_GUICtrlListView_SetItemImage($g_ListDistros, $g_CountDistros, $g_CountDistros, 0)

					$g_CountDistros += 1

				EndIf

				IniWrite($sDistroIniPath, "Environment", "ScriptPath", $sDistroPath)
				IniWrite($sDistroIniPath, "Environment", "ScriptFullPath", $sAu3ScriptIn)
				IniWrite($sDistroIniPath, "Environment", "ProgramName", $sDistroName)
				IniWrite($sDistroIniPath, "Environment", "ProgramShortName", $sDistroShortName)
				IniWrite($sDistroIniPath, "Environment", "ProgramVersion", $sDistroVersion)
				IniWrite($sDistroIniPath, "Environment", "ProgramMajor", $sDistroMajor)
				IniWrite($sDistroIniPath, "Environment", "ProgramVersionMaintenance", $iDistroMaintenance)
				IniWrite($sDistroIniPath, "Environment", "ProgramVersionBuild", $iDistroBuild)
				IniWrite($sDistroIniPath, "Environment", "ProgramDescription", $sDistroDescription)
				IniWrite($sDistroIniPath, "Environment", "DistributionPath", $sDistroBuildPath)
				IniWrite($sDistroIniPath, "Environment", "DistributionPortableName", $sDistroPathPortableName)
				IniWrite($sDistroIniPath, "Environment", "DistributionPortablePath", $sDistroPathPortable)
				IniWrite($sDistroIniPath, "Environment", "DistributionPathSource", $sDistroPathSource)
				IniWrite($sDistroIniPath, "Environment", "OutputFile", $sOutFile)
				IniWrite($sDistroIniPath, "Environment", "OutputFilePath", $sOutFilePath)
				IniWrite($sDistroIniPath, "Environment", "OutputFile64Bit", $sOutFile64)
				IniWrite($sDistroIniPath, "Environment", "OutputFile64BitPath", $sOutFilePath_X64)

			WEnd

			FileClose($hDistroSearch)

		EndIf

	WEnd

	FileClose($hSearch)

	_GUICtrlListView_EndUpdate($g_ListDistros)

EndFunc   ;==>_PopulateDistros


Func _RunBuildOption()

	Switch @GUI_CtrlId
		Case $g_BtnGoBuild[0]
			_ProcessSelectedDistros(1)
		Case $g_BtnGoBuild[1]
			_ProcessSelectedDistros(2)
		Case $g_BtnGoBuild[2]
			_ProcessSelectedDistros(3)
		Case $g_BtnGoBuild[3]
			_ProcessSelectedDistros(4)
		Case $g_BtnGoDistribute[0]
			_ProcessSelectedDistros(5)
		Case $g_BtnGoDistribute[1]
			_ProcessSelectedDistros(6)
		Case $g_BtnGoDistribute[2]
			_ProcessSelectedDistros(7)
		Case $g_BtnGoDistribute[3]
			_ProcessSelectedDistros(8)
		Case $g_BtnGoDistribute[4]
			_ProcessSelectedDistros(9)
		Case $g_BtnGoDistribute[5]
			_ProcessSelectedDistros(10)
		Case $g_BtnGoDistribute[6]
			_ProcessSelectedDistros(11)
		Case $g_BtnProcessAll
			_ProcessSelectedDistros(99)
	EndSwitch

EndFunc   ;==>_RunBuildOption


#Region Processing


Func _ProcessSelectedDistros($iOption)

	Local $iDistroCount = _GUICtrlListView_GetItemCount($g_ListDistros)

	If $iDistroCount > 0 Then

		$COUNT_CHECKED_DISTROS = _GetCheckedItemCount($g_ListDistros)

		If $COUNT_CHECKED_DISTROS > 0 Then

			If $iOption < 99 Then
				$B_SINGULARITY = True
			EndIf

			If _CheckedBuildCount() > 0 Or $B_SINGULARITY = True Then

				_StartProcess()
				_StartLoggingMessage($iOption)

				For $i = 0 To $iDistroCount

					Local $iSelCount = _GUICtrlListView_GetItemChecked($g_ListDistros, $i)

					If $iSelCount = 1 Then

						Local $sItem = _GUICtrlListView_GetItemTextString($g_ListDistros, $i)
						Local $sSplit = StringSplit($sItem, "|")
						If @error Then ContinueLoop

						Local $sScriptPath = $sSplit[2]
						Local $sDistroIniPath = $sSplit[3]

						Switch $iOption
							Case 1
								_BuildSelection($sDistroIniPath, $sScriptPath, $i, 0)
							Case 2
								_CompressExecutables($sDistroIniPath, 1)
							Case 3
								_SignExecutables($sDistroIniPath, 2)
							Case 4
								_GenerateDocumentation($sDistroIniPath, 3)
							Case 5
								_CreateDistribution($sDistroIniPath, 0)
							Case 6
								_CreateZipPackage($sDistroIniPath, 1)
							Case 7
								_CreateInstall($sDistroIniPath, 2)
							Case 8
								_SignExecutables($sDistroIniPath, 0, 3)
							Case 9
								_DistributSourceCode($sDistroIniPath, 4)
							Case 10
								_CopySourceToGitDirectory($sDistroIniPath, 5)
							Case 99

;~ 								$B_SINGULARITY = False

;~ 								If GUICtrlRead($g_ChkBuild[0]) = $GUI_CHECKED Then
;~ 									_BuildSelection($sScriptPath, $i)
;~ 								EndIf

;~ 								If GUICtrlRead($g_ChkBuild[1]) = $GUI_CHECKED Then
;~ 									MsgBox(0, "", "Doing something else!")
;~ 									GUICtrlSetState($g_ChkBuild[1], $GUI_UNCHECKED)
;~ 								EndIf

						EndSwitch

					EndIf

				Next

				_EndProcess()
				_EndLogging()

			Else

				MsgBox(262176, "I'm still confused!", "What exactly would you like me to do with these Distros?" & @CRLF & _
						"Please select at least one Option to continue.", 60)

			EndIf

		Else

			MsgBox(262176, "I'm confused!", "What exactly would you like me to do?" & @CRLF & _
					"Please select at least one Distro.", 60)

		EndIf

	EndIf

EndFunc   ;==>_ProcessSelectedDistros


Func _StartProcess()

	GUICtrlSetState($g_TabLogging, $GUI_SHOW)
	_SetGUIState($GUI_DISABLE)

EndFunc   ;==>_StartProcess


Func _EndProcess()

	; Enable the Interface
	_SetGUIState($GUI_ENABLE)

	; Reset Build Icons
	If _CheckedBuildCount() = 0 Or $B_SINGULARITY = True Then
		For $iBuild = 0 To $COUNT_BUILD - 1
			GUICtrlSetImage($g_IconBuild[$iBuild], $g_ReBarResFugue, 109 + $iBuild)
		Next
	EndIf

	If _CheckedDistrobuteCount() = 0 Or $B_SINGULARITY = True Then
		For $iDis = 0 To $COUNT_DISTRIBUTE - 1
			GUICtrlSetImage($g_IconDistribute[$iDis], $g_ReBarResFugue, 114 + $iDis)
		Next
	EndIf

	$B_SINGULARITY = False

EndFunc   ;==>_EndProcess


Func _SetGUIState($iState)

	GUICtrlSetState($g_ListDistros, $iState)
	GUICtrlSetState($g_BtnProcessAll, $iState)

	For $iBuild = 0 To $COUNT_BUILD - 1
		GUICtrlSetState($g_IconBuild[$iBuild], $iState)
		GUICtrlSetState($g_ChkBuild[$iBuild], $iState)
		GUICtrlSetState($g_BtnHlpBuild[$iBuild], $iState)
		GUICtrlSetState($g_BtnGoBuild[$iBuild], $iState)
	Next

	For $iDis = 0 To $COUNT_DISTRIBUTE - 1
		GUICtrlSetState($g_IconDistribute[$iDis], $iState)
		GUICtrlSetState($g_ChkDistribute[$iDis], $iState)
		GUICtrlSetState($g_BtnHlpDistribute[$iDis], $iState)
		GUICtrlSetState($g_BtnGoDistribute[$iDis], $iState)
	Next

EndFunc   ;==>_SetGUIState


Func _StartLoggingMessage($iMessage)

	Local $sMessage = ""

	Switch $iMessage
		Case 1
			$sMessage = "Building Distros"
		Case 2
			$sMessage = "Compressing Executables"
		Case 3
			$sMessage = "Signing Executables"
		Case 4
			$sMessage = "Generating Documentation"
		Case 5
			$sMessage = "Creating Distribution"
		Case 6
			$sMessage = "Creating Protable Package"
		Case 7
			$sMessage = "Creating Installation"
		Case 8
			$sMessage = "Signing Installation Executable"
		Case 9
			$sMessage = "Distributing Source Code"
		Case 10
			$sMessage = "Updating GitHub Repository"
		Case 11
			$sMessage = "Creating Source Code Package"
	EndSwitch

	_StartLogging($sMessage & "...")

EndFunc   ;==>_StartLoggingMessage


Func _StartBuildProcess($iP)

	If $INT_BLDPERC[$iP] = 0 Then
		GUICtrlSetImage($g_IconBuild[$iP], @ScriptDir & "\SDK\Themes\Processing\16\Process.ani", 0)
	EndIf

EndFunc   ;==>_StartBuildProcess


Func _UpdateBuildProcess($iP)

	$INT_BLDPOS[$iP] += 1
	$INT_BLDPERC[$iP] = ($INT_BLDPOS[$iP] / $COUNT_CHECKED_DISTROS) * 100
	_DrawStatusSizeFromPercentage($g_ProgressBuild[$iP], $INT_BLDPERC[$iP], 503, $g_PrTopBuild[$iP] - 1, 215, 1)

	If $INT_BLDPERC[$iP] = 100 Then

		$INT_BLDPERC[$iP] = 0
		$INT_BLDPOS[$iP] = 0

		GUICtrlSetState($g_ChkBuild[$iP], $GUI_UNCHECKED)
		GUICtrlSetImage($g_IconBuild[$iP], $g_ReBarResFugue, 130)
		Sleep(1000)

		_DrawStatusSizeFromPercentage($g_ProgressBuild[$iP], $INT_BLDPERC[$iP], 503, $g_PrTopBuild[$iP] - 1, 215, 1)

	EndIf

EndFunc   ;==>_UpdateBuildProcess


Func _StartDistributionProcess($iP)

	If $INT_DISPERC[$iP] = 0 Then
		GUICtrlSetImage($g_IconDistribute[$iP], @ScriptDir & "\SDK\Themes\Processing\16\Process.ani", 0)
	EndIf

EndFunc   ;==>_StartDistributionProcess


Func _UpdateDistributionProcess($iP)

	$INT_DISPOS[$iP] += 1
	$INT_DISPERC[$iP] = ($INT_DISPOS[$iP] / $COUNT_CHECKED_DISTROS) * 100

	If $INT_DISPERC[$iP] = 100 Then

		$INT_DISPOS[$iP] = 0
		$INT_DISPERC[$iP] = 0

		GUICtrlSetState($g_ChkDistribute[$iP], $GUI_UNCHECKED)
		GUICtrlSetImage($g_IconDistribute[$iP], $g_ReBarResFugue, 130)
		Sleep(1000)

		_DrawStatusSizeFromPercentage($g_ProgressDistribute[$iP], $INT_DISPERC[$iP], 503, $g_PrgTopDistribute[$iP] - 1, 215, 1)

	EndIf

EndFunc   ;==>_UpdateDistributionProcess


#EndRegion Processing


#Region ~Build

Func _BuildSelection($sDistroIniPath, $sAu3ScriptIn, $iCurrDistro, $iB)

	_StartBuildProcess($iB)

	If FileExists($sAu3ScriptIn) Then

		If FileExists($AU3_CMD) Then

			If FileExists($AUW_CMD) Then

				Local $iWrapPID = Run(Chr(34) & $AU3_CMD & Chr(34) & Chr(32) & Chr(34) & $AUW_CMD & Chr(34) & " /NoStatus /prod /in " & _
						Chr(34) & $sAu3ScriptIn & Chr(34), _GetParentPath($sAu3ScriptIn), @SW_SHOW, $STDOUT_CHILD)

				While 1

					Local $sWrapOutput = StdoutRead($iWrapPID)
					If @error Then ; Exit the loop if the process closes or StdoutRead returns an error.
						ExitLoop
					EndIf

					_AutoIt3Script_WrapperOutPut($sWrapOutput)

				WEnd

				Local $sDistroPath = IniRead($sDistroIniPath, "Environment", "ScriptPath", "")
				Local $sDistroName = IniRead($sDistroIniPath, "Environment", "ProgramName", "ReBar Application Framework")
				Local $sDistroShortName = IniRead($sDistroIniPath, "Environment", "ProgramShortName", "ReBar")
				Local $sDistroVersion = _AutoIt3Script_GetVersion($sAu3ScriptIn, 0)
				Local $sDistroMajor = _AutoIt3Script_GetVersion($sAu3ScriptIn, 1)
				Local $iDistroBuild = _AutoIt3Script_GetVersion($sAu3ScriptIn, 4)
				Local $sDistroBuildPath = $sDistroPath & "\Distribution\" & $iDistroBuild
				Local $sDistroPathPortableName = $sDistroShortName & "_" & $iDistroBuild
				Local $sDistroPathPortable = $sDistroBuildPath & "\" & $sDistroPathPortableName
				Local $sDistroPathSource = $sDistroBuildPath & "\" & $sDistroPathPortableName & "_Source"

				IniWrite($sDistroIniPath, "Environment", "ProgramVersion", $sDistroVersion)
				IniWrite($sDistroIniPath, "Environment", "ProgramMajor", $sDistroMajor)
				IniWrite($sDistroIniPath, "Environment", "ProgramVersionBuild", $iDistroBuild)
				IniWrite($sDistroIniPath, "Environment", "DistributionPath", $sDistroBuildPath)
				IniWrite($sDistroIniPath, "Environment", "DistributionPortableName", $sDistroPathPortableName)
				IniWrite($sDistroIniPath, "Environment", "DistributionPortablePath", $sDistroPathPortable)
				IniWrite($sDistroIniPath, "Environment", "DistributionPathSource", $sDistroPathSource)

				_GUICtrlListView_SetItemText($g_ListDistros, $iCurrDistro, " " & $sDistroName & " " & $sDistroMajor & " (Build " & $iDistroBuild & ")")
				; _GUICtrlListView_SetItemChecked($g_ListDistros, $iCurrDistro, False)

			Else

				_EditLoggingWrite("ERROR: AutoIt3Wrapper.au3 is required to build this project.")
				_EditLoggingWrite("ERROR: Please install Scite for AutoIt.")

			EndIf

		Else

			_EditLoggingWrite("ERROR: AutoIt is required to build this project.")

		EndIf

	Else

		_EditLoggingWrite("ERROR: Expected to find AutoIt script at [" & $sAu3ScriptIn & "]")

	EndIf

	_UpdateBuildProcess($iB)

EndFunc   ;==>_BuildSelection


Func _CompressExecutables($sDistroIniPath, $iB)

	_StartBuildProcess($iB)

	Local $sOutputFile = IniRead($sDistroIniPath, "Environment", "OutputFilePath", "")
	Local $sOutputFile64Bit = IniRead($sDistroIniPath, "Environment", "OutputFile64BitPath", "")

	If $sOutputFile <> "" Then
		If FileExists($sOutputFile) Then
			_CompressExecutable($sOutputFile)
		EndIf
	EndIf

	If $sOutputFile64Bit <> "" Then
		If FileExists($sOutputFile64Bit) Then
			_CompressExecutable($sOutputFile64Bit)
		EndIf
	EndIf

	_UpdateBuildProcess($iB)

EndFunc   ;==>_CompressExecutables


Func _CompressExecutable($sOutFilePath)

	Local $sUPXParam = "--best --no-backup --overlay=copy --compress-exports=1 --compress-resources=1 --strip-relocs=1"
	Local $iPID

	If FileExists($sOutFilePath) Then

		If FileExists($UPX_CMD) Then

			Local $sTempOutFile = Chr(34) & $sOutFilePath & Chr(34)
			Local $sTempUPX = Chr(34) & $UPX_CMD & Chr(34)

			_EditLoggingWrite("Compressing: " & $sTempOutFile)
			_EditLoggingWrite("Parameters: " & $sUPXParam)

			$iPID = Run($sTempUPX & Chr(32) & $sUPXParam & Chr(32) & $sTempOutFile, "", @SW_HIDE, $STDOUT_CHILD)
			If $iPID Then

				Local $pHandle = _ProcessExitCode($iPID), $iExitCode
				Local $sOutput = "", $aOutput

				ProcessWaitClose($iPID)
				$sOutput = StdoutRead($iPID)

				; Build Array
				$aOutput = StringSplit($sOutput, @CRLF, $STR_ENTIRESPLIT)

				For $i = 1 To $aOutput[0] ; Loop through the array returned by StringSplit to display the individual values.
					If StringStripWS($aOutput[$i], 8) <> "" Then
						_EditLoggingWrite($aOutput[$i])
					EndIf
				Next

				StdioClose($iPID)
				$iExitCode = _ProcessExitCode($iPID, $pHandle)
				_ProcessCloseHandle($pHandle)

			Else

				_EditLoggingWrite("Error: Failed to UPX the executable.")

			EndIf

		Else
			_EditLoggingWrite("ERROR: UPX is required to compress the file.")
		EndIf

	Else
		_EditLoggingWrite("ERROR: [" & $sOutFilePath & "] does not exist.")
	EndIf

EndFunc   ;==>_CompressExecutable


Func _SignExecutables($sDistroIniPath, $iB = 0, $iD = 0)

	If $iD > 0 Then
		_StartDistributionProcess($iD)
	Else
		_StartBuildProcess($iB)
	EndIf

	If FileExists($KSN_CMD) Then

		_EditLoggingWrite("Checking connection to the Comodo Timestamp Server.")
		Local $iPing = Ping("timestamp.comodoca.com", 5000)
		Local $iPingError = @error

		If $iPing Then

			_EditLoggingWrite("Response Received: " & $iPing & " milliseconds.")

			Local $sCertInfoIni = IniRead($sDistroIniPath, "Signing", "CertificateSet", "Signing\Certum.ini")
			Local $sCertInfoPath = @ScriptDir & "\" & _CleanDirectoryName($sCertInfoIni)
			Local $sCertWorkPath = _GetParentPath($sCertInfoPath)
			Local $sCertBaseName = IniRead($sCertInfoPath, "Certificate", "CertificateName", "Certum.p12")
			Local $sCertPath = $sCertWorkPath & $sCertBaseName

			If FileExists($sCertInfoPath) Then

				_EditLoggingWrite("Certificate Information loaded from [" & $sCertInfoPath & "]")

				If FileExists($sCertPath) Then

					_EditLoggingWrite("Certificate loaded: [" & $sCertPath & "]")


					Local $sDescription = IniRead($sDistroIniPath, "Signing", "Description", "ReBar Framework")
					Local $sWebsite = IniRead($sDistroIniPath, "Signing", "Website", "https://wwww.rizonesoft.com")
					Local $sPassword = IniRead($sCertInfoPath, "Certificate", "Password", "*************")

					If $iD > 0 Then

						Local $sInstallOutputPath = IniRead($sDistroIniPath, "Environment", "InstallOutputPath", "")
						If FileExists($sInstallOutputPath) Then
							_RunSignCommand($sInstallOutputPath, $sCertPath, $sDescription & " Setup", $sWebsite, $sPassword)
						EndIf

					Else

						Local $sOutputFile = IniRead($sDistroIniPath, "Environment", "OutputFilePath", "")
						Local $sOutputFile64Bit = IniRead($sDistroIniPath, "Environment", "OutputFile64BitPath", "")

						If $sOutputFile <> "" Then
							If FileExists($sOutputFile) Then
								_RunSignCommand($sOutputFile, $sCertPath, $sDescription, $sWebsite, $sPassword)
							EndIf
						EndIf

						If $sOutputFile64Bit <> "" Then
							If FileExists($sOutputFile64Bit) Then
								_RunSignCommand($sOutputFile64Bit, $sCertPath, $sDescription, $sWebsite, $sPassword)
							EndIf
						EndIf

					EndIf

				Else

					_EditLoggingWrite("ERROR: Could not load code digning Certificate!")
					_EditLoggingWrite("ERROR: Looked for Certificate at [" & $sCertPath & "].")

				EndIf

			Else

				_EditLoggingWrite("ERROR: Could not load Certificate Information!")
				_EditLoggingWrite("ERROR: Looked for Certificate Information file at [" & $sCertInfoPath & "].")

			EndIf

		Else

			_EditLoggingWrite("Please note that a connection to the Comodo Timestamp Server is required for signing.")
			_EditLoggingWrite("ERROR: " & _ReturnConnectionError($iPingError))

		EndIf

	Else
		; kSign is not installed
		_EditLoggingWrite("ERROR: kSign is required for signing!")
	EndIf

	If $iD > 0 Then
		_UpdateDistributionProcess($iD)
	Else
		_UpdateBuildProcess($iB)
	EndIf

EndFunc   ;==>_SignExecutables


Func _RunSignCommand($sOutputFile, $sCertPath, $sDescription, $sWebsite, $sPassword)

	Local $signPID = ProcessExists("kSignCMD.exe")
	If $signPID Then
		_EditLoggingWrite("kSignCMD.exe (" & $signPID & ") Running!")
		_EditLoggingWrite("Closing kSignCMD.exe...")
		ProcessClose("kSignCMD.exe")
	EndIf

	_EditLoggingWrite("Signing: " & $sOutputFile)
	_EditLoggingWrite("Description: " & $sDescription)
	_EditLoggingWrite("Website: " & $sWebsite)

	Local $sPassMsk = ""
	Local $iPassLen = StringLen($sPassword)
	For $i = 1 To $iPassLen
		$sPassMsk &= "*"
	Next

	_EditLoggingWrite("Password: " & $sPassMsk)

	Local $iPID = Run($KSN_CMD & " /d " & Chr(34) & $sDescription & Chr(34) & " /du " & Chr(34) & $sWebsite & Chr(34) & _
			" /f " & Chr(34) & $sCertPath & Chr(34) & " /p " & $sPassword & Chr(32) & $sOutputFile, "", @SW_HIDE)
	If $iPID Then

		Local $pHandle = _ProcessExitCode($iPID)
		ProcessWaitClose($iPID, 20000)
		Local $iExitCode = _ProcessExitCode($iPID, $pHandle)
		_ProcessCloseHandle($pHandle)

		_EditLoggingWrite("EXITCODE: " & $iExitCode)

		If Not $iExitCode Then
			_EditLoggingWrite("Executable signed successfully.")
		Else
			_EditLoggingWrite("ERROR: Something went wrong! Please check your certificate password.")
		EndIf

	Else
		_EditLoggingWrite("ERROR: Failed to sign the executable.")
	EndIf

EndFunc   ;==>_RunSignCommand


Func _GenerateDocumentation($sDistroIniPath, $iB)

	Local $sDoc_Path = IniRead($sDistroIniPath, "Environment", "ScriptPath", _GetParentPath($sDistroIniPath)) & "\"
	Local $sTpl_Path = IniRead($sDistroIniPath, "Environment", "ScriptPath", _GetParentPath($sDistroIniPath)) & "\Templates\"

	_StartBuildProcess($iB)


	$g_InstallSize = _CalculateInstallSize($sDistroIniPath)

	Local $aDocFiles = IniReadSection($sDistroIniPath, "DocumentFiles")
	; Check if an error occurred.
	If Not @error Then
		; Enumerate through the array displaying the keys and their respective values.
		For $x = 1 To $aDocFiles[0][0]
			_ProcessTemplateFile($sDistroIniPath, $sTpl_Path & $aDocFiles[$x][0], $sDoc_Path & $aDocFiles[$x][1])
		Next
	EndIf

	_UpdateBuildProcess($iB)

EndFunc   ;==>_GenerateDocumentation


Func _ProcessTemplateFile($sDistroIniPath, $sDocTemplate, $sDocOutput)

;~ MsgBox($MB_SYSTEMMODAL, "Processing Document", $sDoc_Template & @CRLF  & $sDoc_Output)

	Local $sDistroProduct = IniRead($sDistroIniPath, "Environment", "ProgramName", "")
	Local $sDistroCompany = IniRead($sDistroIniPath, "Documents", "Company", "")
	Local $sDistroDesc = IniRead($sDistroIniPath, "Environment", "ProgramDescription", "")
	Local $sDistroVersion = IniRead($sDistroIniPath, "Environment", "ProgramVersion", "")
	Local $sDistroURL = IniRead($sDistroIniPath, "Documents", "CompanyURL", "https://www.rizonesoft.com")
	Local $sDistroDay = @MDAY
	Local $sDistroMonth = _DateToMonth(@MON)
	Local $sDistroYear = @YEAR

	; Open the Distro Template file for reading and store the handle to a variable.
	Local $hTemplateOpen = FileOpen($sDocTemplate, $FO_READ)
	If $hTemplateOpen = -1 Then
		MsgBox($MB_SYSTEMMODAL, "", "Could not find the specified document template.")
		Return SetError(1, 0, False)
	EndIf

	Local $sTemplateRead = FileRead($hTemplateOpen)
	$sTemplateRead = StringReplace($sTemplateRead, "[:PRODUCT:]", $sDistroProduct)
	$sTemplateRead = StringReplace($sTemplateRead, "[:DESCRIPTION:]", $sDistroDesc)
	$sTemplateRead = StringReplace($sTemplateRead, "[:COMPANY:]", $sDistroCompany)
	$sTemplateRead = StringReplace($sTemplateRead, "[:COMPANYURL:]", $sDistroURL)
	$sTemplateRead = StringReplace($sTemplateRead, "[:VERSION:]", $sDistroVersion)
	$sTemplateRead = StringReplace($sTemplateRead, "[:DAY:]", $sDistroDay)
	$sTemplateRead = StringReplace($sTemplateRead, "[:MONTH:]", $sDistroMonth)
	$sTemplateRead = StringReplace($sTemplateRead, "[:YEAR:]", $sDistroYear)
	$sTemplateRead = StringReplace($sTemplateRead, "[:INSTSIZE:]", $g_InstallSize & " MB")

	; Close the handle returned by FileOpen.
	FileClose($hTemplateOpen)

	FileDelete($sDocOutput)
	If Not FileWrite($sDocOutput, $sTemplateRead) Then
		Return SetError(3, 0, False)
	EndIf

	Return SetError(0, 0, True)

EndFunc   ;==>_ProcessTemplateFile


#EndRegion ~Build


#Region ~Distribution


Func _CreateDistribution($sDistroIniPath, $iD)

	Local $sInputPath = IniRead($sDistroIniPath, "Environment", "ScriptPath", _GetParentPath($sDistroIniPath))
	Local $sOutputPath = IniRead($sDistroIniPath, "Environment", "DistributionPortablePath", "")

	_StartDistributionProcess($iD)
	_DistributeDirectory($sOutputPath)

	Local $aDirs = IniReadSection($sDistroIniPath, "Dirs")
	If Not @error Then
		For $x = 1 To $aDirs[0][0]
			_DistributeDirectory($sOutputPath & "\" & $aDirs[$x][1])
		Next
	EndIf

	Local $aFiles = IniReadSection($sDistroIniPath, "Files")
	If Not @error Then
		For $x = 1 To $aFiles[0][0]
			_DistributeFile($sInputPath & "\" & $aFiles[$x][1], $sOutputPath & "\" & $aFiles[$x][1])
		Next
	EndIf

	Local $aDocFiles = IniReadSection($sDistroIniPath, "DocumentFiles")
	If Not @error Then
		For $x = 1 To $aDocFiles[0][0]
			_DistributeFile($sInputPath & "\" & $aDocFiles[$x][1], $sOutputPath & "\" & $aDocFiles[$x][1])
		Next
	EndIf

	_EditLoggingWrite("Generating update file.")

	Local $sUpdateURL = IniRead($sDistroIniPath, "Update", "UpdateURL", "http://www.rizonesoft.com")
	Local $iDistroBuild = IniRead($sDistroIniPath, "Environment", "ProgramVersionBuild", 0)
	Local $sDistroShortName = IniRead($sDistroIniPath, "Environment", "ProgramShortName", "ReBar")
	Local $sUpdateFilePath = @ScriptDir & "\Upload\www\update\" & $sDistroShortName & ".ru"

	DirCreate($sUpdateFilePath)

	IniWrite($sUpdateFilePath, "Update", "LatestBuild", $iDistroBuild)
	IniWrite($sUpdateFilePath, "Update", "UpdateURL", $sUpdateURL)

	If FileExists($sUpdateFilePath) Then
		_EditLoggingWrite("Successfully generated update file.")
		_EditLoggingWrite("[" & $sUpdateFilePath & "]")
	EndIf


	_UpdateDistributionProcess($iD)

EndFunc   ;==>_CreateDistribution


Func _DistributeFile($sFilePath, $sDestPath)

	If Not FileExists($sFilePath) Then
		_EditLoggingWrite("ERROR: The Source File does not exist:")
		_EditLoggingWrite("^ " & Chr(34) & $sFilePath & Chr(34))
		Return SetError(1, 0, 0)
	EndIf

	If Not FileCopy($sFilePath, $sDestPath, $FC_OVERWRITE + $FC_CREATEPATH) Then
		_EditLoggingWrite("ERROR: Could not create file:")
		_EditLoggingWrite("^ " & Chr(34) & $sFilePath & Chr(34))
		Return SetError(1, 0, 0)
	EndIf

	_EditLoggingWrite("File created: " & Chr(34) & StringReplace($sDestPath, @ScriptDir, "") & Chr(34))
	Return 1

EndFunc   ;==>_DistributeFile


Func _DistributeDirectory($sDestPath)

	If Not FileExists($sDestPath) Then
		If Not DirCreate($sDestPath) Then
			_EditLoggingWrite("ERROR: Could not create directory:")
			_EditLoggingWrite("^ " & Chr(34) & $sDestPath & Chr(34))
			Return SetError(1, 0, 0)
		EndIf
	EndIf

	_EditLoggingWrite("Directory created: " & Chr(34) & StringReplace($sDestPath, @ScriptDir, "") & Chr(34))
	Return 1

EndFunc   ;==>_DistributeDirectory


Func _ReturnDistributionState($sDistroIniPath)

	Local $iReturn = 0
	Local $sFilePath = ""
	Local $sDocPath = ""

	Local $sOutputPath = IniRead($sDistroIniPath, "Environment", "DistributionPortablePath", "")

	Local $aFiles = IniReadSection($sDistroIniPath, "Files")
	If Not @error Then
		For $x = 1 To $aFiles[0][0]
			$sFilePath = $sOutputPath & "\" & $aFiles[$x][1]
			If Not FileExists($sFilePath) Then
				_EditLoggingWrite("ERROR: Missing Distribution File:")
				_EditLoggingWrite("^ " & $sFilePath)
				$iReturn += 1
			EndIf
		Next
	EndIf

	Local $aDocFiles = IniReadSection($sDistroIniPath, "DocumentFiles")
	If Not @error Then
		For $x = 1 To $aDocFiles[0][0]
			$sDocPath = $sOutputPath & "\" & $aDocFiles[$x][1]
			If Not FileExists($sDocPath) Then
				_EditLoggingWrite("ERROR: Missing Distribution Document:")
				_EditLoggingWrite("^ " & $sDocPath)
				$iReturn += 1
			EndIf
		Next
	EndIf

	Return $iReturn

EndFunc   ;==>_ReturnDistributionState


Func _CreateZipPackage($sDistroIniPath, $iD)

	Local $sPackPath = IniRead($sDistroIniPath, "Environment", "DistributionPortablePath", "")

	_StartDistributionProcess($iD)

	If _ReturnDistributionState($sDistroIniPath) > 0 Then
		_EditLoggingWrite("ERROR: Could not create Zip package:")
		_EditLoggingWrite("^ The distribution is Incomplete.")
		_EditLoggingWrite("Check the Build configuration file and recreate the Distribution.")
	Else

		If FileExists($7ZP_CMD) Then
			_ProcessCommand(Chr(34) & $7ZP_CMD & Chr(34) & " a -tzip " & Chr(34) & $sPackPath & ".zip" & _
					Chr(34) & Chr(32) & Chr(34) & $sPackPath & Chr(34))
		EndIf

	EndIf

	_UpdateDistributionProcess($iD)

EndFunc   ;==>_CreateZipPackage


Func _CreateInstall($sDistroIniPath, $iD)

	_StartDistributionProcess($iD)

	If _ReturnDistributionState($sDistroIniPath) > 0 Then

		_EditLoggingWrite("ERROR: Could not create installation:")
		_EditLoggingWrite("^ The distribution is Incomplete.")
		_EditLoggingWrite("Check the Build configuration file and recreate the Distribution.")

	Else

		_GenerateInstallationScript($sDistroIniPath)

		Local $sInstallScriptPath = IniRead($sDistroIniPath, "Environment", "InstallScriptPath", "")
		If FileExists($sInstallScriptPath) Then
			_ProcessCommand(Chr(34) & $INN_CMD & Chr(34) & Chr(32) & Chr(34) & $sInstallScriptPath & Chr(34))
		EndIf

	EndIf

	_UpdateDistributionProcess($iD)

EndFunc   ;==>_CreateInstall


Func _GenerateInstallationScript($sDistroIniPath)

	Local $sDistoPath = IniRead($sDistroIniPath, "Environment", "DistributionPath", "")
	Local $sPackPath = IniRead($sDistroIniPath, "Environment", "DistributionPortablePath", "")
	Local $sPackPathName = IniRead($sDistroIniPath, "Environment", "DistributionPortableName", "")
	Local $sProgVersion = IniRead($sDistroIniPath, "Environment", "ProgramVersionBuild", "")
	Local $sCompanyName = IniRead($sDistroIniPath, "Documents", "Company", "")
	Local $sCompanyURL = IniRead($sDistroIniPath, "Documents", "CompanyURL", "")
	Local $sSupportURL = IniRead($sDistroIniPath, "Documents", "SupportURL", "")
	Local $sContactURL = IniRead($sDistroIniPath, "Documents", "ContactURL", "")
	Local $sUpdateURL = IniRead($sDistroIniPath, "Update", "UpdateURL", "http://www.rizonesoft.com")
	Local $sProgName = IniRead($sDistroIniPath, "Environment", "ProgramName", "")
	Local $sProgShortName = IniRead($sDistroIniPath, "Environment", "ProgramShortName", "")
	Local $sOutputFile = IniRead($sDistroIniPath, "Environment", "OutputFile", "")
	Local $sOutput64Bit = IniRead($sDistroIniPath, "Environment", "OutputFile64Bit", "")

	Local $sOutputBaseName = $sProgShortName & "_" & $sProgVersion & "_Setup.exe"
	Local $sScriptBaseName = $sProgShortName & "_" & $sProgVersion & "_Setup.iss"
	Local $sOutputFullPath = $sDistoPath & "\" & $sOutputBaseName
	Local $sScriptFullPath = $sDistoPath & "\" & $sScriptBaseName
	Local $sIniFilBaseName = $sProgShortName & ".ini"

	Local $64BitInstall = False
	If StringStripWS($sOutput64Bit, 8) <> "" Then
		$64BitInstall = True
	EndIf

	If Not FileExists($sDistoPath) Then DirCreate($sDistoPath)
	If FileExists($sScriptFullPath) Then FileDelete($sScriptFullPath)

	If Not FileWrite($sScriptFullPath, ";* " & $sProgName & " - Installer script" & @CRLF) Then
		MsgBox($MB_SYSTEMMODAL, "", "An error occurred whilst generating the setup script.")
		Return False
	EndIf

;~ Open the file for writing (append to the end of a file) and store the handle to a variable.
	Local $hFileOpen = FileOpen($sScriptFullPath, $FO_APPEND)
	If $hFileOpen = -1 Then
		MsgBox($MB_SYSTEMMODAL, "", "An error occurred whilst generating the setup script.")
		Return False
	EndIf

	FileWrite($hFileOpen, ";* Copyright (C) " & @YEAR & " " & $sCompanyName & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "; Requirements:" & @CRLF)
	FileWrite($hFileOpen, "; Inno Setup: http://www.jrsoftware.org/isdl.php" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "; Preprocessor related stuff" & @CRLF)
	FileWrite($hFileOpen, "#if VER < EncodeVer(5,5,9)" & @CRLF)
	FileWrite($hFileOpen, @TAB & "#error Update your Inno Setup version (5.5.9 or newer)" & @CRLF)
	FileWrite($hFileOpen, "#endif" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "#define distrodir " & Chr(34) & $sPackPathName & Chr(34) & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "#ifnexist distrodir + " & Chr(34) & "\" & $sOutputFile & Chr(34) & @CRLF)
	FileWrite($hFileOpen, @TAB & "#error Compile " & $sOutputFile & " first." & @CRLF)
	FileWrite($hFileOpen, "#endif" & @CRLF)
	If $64BitInstall = True Then
		FileWrite($hFileOpen, "" & @CRLF)
		FileWrite($hFileOpen, "#ifnexist distrodir + " & Chr(34) & "\" & $sOutput64Bit & Chr(34) & @CRLF)
		FileWrite($hFileOpen, @TAB & "#error Compile " & $sOutput64Bit & " first." & @CRLF)
		FileWrite($hFileOpen, "#endif" & @CRLF)
	EndIf

	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "#define app_version   " & Chr(34) & $sProgVersion & Chr(34) & @CRLF)
	FileWrite($hFileOpen, "#define app_name      " & Chr(34) & $sProgName & Chr(34) & @CRLF)
	FileWrite($hFileOpen, "#define app_copyright " & Chr(34) & "Copyright (C) " & @YEAR & " " & $sCompanyName & Chr(34) & @CRLF)
	FileWrite($hFileOpen, "#define quick_launch  " & Chr(34) & "{userappdata}\Microsoft\Internet Explorer\Quick Launch" & Chr(34) & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Setup]" & @CRLF)
	FileWrite($hFileOpen, "AppId={#app_name}" & @CRLF)
	FileWrite($hFileOpen, "AppName={#app_name}" & @CRLF)
	FileWrite($hFileOpen, "AppVersion={#app_version}" & @CRLF)
	FileWrite($hFileOpen, "AppVerName={#app_name} {#app_version}" & @CRLF)
	FileWrite($hFileOpen, "AppPublisher=" & $sCompanyName & @CRLF)
	FileWrite($hFileOpen, "AppPublisherURL=" & $sCompanyURL & @CRLF)
	FileWrite($hFileOpen, "AppSupportURL=" & $sSupportURL & @CRLF)
	FileWrite($hFileOpen, "AppUpdatesURL=" & $sUpdateURL & @CRLF)
	FileWrite($hFileOpen, "AppContact=" & $sContactURL & @CRLF)
	FileWrite($hFileOpen, "AppCopyright={#app_copyright}" & @CRLF)
	FileWrite($hFileOpen, "UninstallDisplayIcon={app}\" & $sOutputFile & @CRLF)
	FileWrite($hFileOpen, "UninstallDisplayName={#app_name} {#app_version}" & @CRLF)
	FileWrite($hFileOpen, "DefaultDirName={pf}\" & $sCompanyName & "\" & $sProgName & @CRLF)
	FileWrite($hFileOpen, "LicenseFile=" & $sPackPathName & "\License.txt" & @CRLF)
	FileWrite($hFileOpen, "OutputDir=." & @CRLF)
	FileWrite($hFileOpen, "OutputBaseFilename=" & StringReplace($sOutputBaseName, ".exe", "") & @CRLF)
	FileWrite($hFileOpen, "WizardImageFile=compiler:WizModernImage-IS.bmp" & @CRLF)
	FileWrite($hFileOpen, "Compression=lzma2/max" & @CRLF)
	FileWrite($hFileOpen, "InternalCompressLevel=max" & @CRLF)
	FileWrite($hFileOpen, "SolidCompression=yes" & @CRLF)
	FileWrite($hFileOpen, "EnableDirDoesntExistWarning=no" & @CRLF)
	FileWrite($hFileOpen, "AllowNoIcons=yes" & @CRLF)
	FileWrite($hFileOpen, "ShowTasksTreeLines=yes" & @CRLF)
	FileWrite($hFileOpen, "DisableDirPage=yes" & @CRLF)
	FileWrite($hFileOpen, "DisableProgramGroupPage=yes" & @CRLF)
	FileWrite($hFileOpen, "DisableReadyPage=yes" & @CRLF)
	FileWrite($hFileOpen, "DisableWelcomePage=yes" & @CRLF)
	FileWrite($hFileOpen, "AllowCancelDuringInstall=no" & @CRLF)
	FileWrite($hFileOpen, "MinVersion=5.1sp3" & @CRLF)
	If $64BitInstall <> "" Then
		FileWrite($hFileOpen, "ArchitecturesAllowed=x86 x64" & @CRLF)
		FileWrite($hFileOpen, "ArchitecturesInstallIn64BitMode=x64" & @CRLF)
	Else
		FileWrite($hFileOpen, "ArchitecturesAllowed=x86" & @CRLF)
	EndIf
	FileWrite($hFileOpen, "CloseApplications=true" & @CRLF)
	FileWrite($hFileOpen, "SetupMutex=" & Chr(34) & $sProgName & "_setup_mutex" & Chr(34) & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Languages]" & @CRLF)
	FileWrite($hFileOpen, "Name: en; MessagesFile: compiler:Default.isl" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Messages]" & @CRLF)
	FileWrite($hFileOpen, "SetupAppTitle    =Setup - {#app_name}" & @CRLF)
	FileWrite($hFileOpen, "SetupWindowTitle =Setup - {#app_name}" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[CustomMessages]" & @CRLF)
	FileWrite($hFileOpen, "en.msg_AppIsRunning          =Setup has detected that {#app_name} is currently running." & _
			"%n%nPlease close all instances of it now, then click OK to continue, or Cancel to exit." & @CRLF)
	FileWrite($hFileOpen, "en.msg_AppIsRunningUninstall =Uninstall has detected that {#app_name} is currently running." & _
			"%n%nPlease close all instances of it now, then click OK to continue, or Cancel to exit." & @CRLF)
	FileWrite($hFileOpen, "en.msg_DeleteSettings        =Do you also want to delete {#app_name}'s settings?%n%nIf you plan on installing " & _
			"{#app_name} again then you do not have to delete them." & @CRLF)
	FileWrite($hFileOpen, "en.tsk_AllUsers              =For all users" & @CRLF)
	FileWrite($hFileOpen, "en.tsk_CurrentUser           =For the current user only" & @CRLF)
	FileWrite($hFileOpen, "en.tsk_Other                 =Other tasks:" & @CRLF)
	FileWrite($hFileOpen, "en.tsk_ResetSettings         =Reset {#app_name}'s settings" & @CRLF)
	FileWrite($hFileOpen, "en.tsk_StartMenuIcon         =Create a Start Menu shortcut" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Tasks]" & @CRLF)
	FileWrite($hFileOpen, "Name: desktopicon;        Description: {cm:CreateDesktopIcon};     GroupDescription: {cm:AdditionalIcons}; Flags: unchecked" & @CRLF)
	FileWrite($hFileOpen, "Name: desktopicon\user;   Description: {cm:tsk_CurrentUser};       GroupDescription: {cm:AdditionalIcons}; Flags: unchecked exclusive" & @CRLF)
	FileWrite($hFileOpen, "Name: desktopicon\common; Description: {cm:tsk_AllUsers};          GroupDescription: {cm:AdditionalIcons}; Flags: unchecked exclusive" & @CRLF)
	FileWrite($hFileOpen, "Name: startup_icon;       Description: {cm:tsk_StartMenuIcon};     GroupDescription: {cm:AdditionalIcons}" & @CRLF)
	FileWrite($hFileOpen, "Name: quicklaunchicon;    Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked;             OnlyBelowVersion: 6.01" & @CRLF)
	FileWrite($hFileOpen, "Name: reset_settings;     Description: {cm:tsk_ResetSettings};     GroupDescription: {cm:tsk_Other};       Flags: checkedonce unchecked; Check: SettingsExistCheck()" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Files]" & @CRLF)

	If $64BitInstall = True Then
		FileWrite($hFileOpen, "Source: {#distrodir}\" & $sOutput64Bit & "; DestDir: {app}; DestName: " & $sOutputFile & "; Flags: ignoreversion; Check: Is64BitInstallMode()" & @CRLF)
		FileWrite($hFileOpen, "Source: {#distrodir}\" & $sOutputFile & "; DestDir: {app}; Flags: ignoreversion; Check: not Is64BitInstallMode()" & @CRLF)
	Else
		FileWrite($hFileOpen, "Source: {#distrodir}\" & $sOutputFile & "; DestDir: {app}; Flags: ignoreversion" & @CRLF)
	EndIf

	FileWrite($hFileOpen, "Source: {#distrodir}\" & $sIniFilBaseName & "; DestDir: {userappdata}\" & $sCompanyName & "\" & $sProgShortName & "; Flags: onlyifdoesntexist uninsneveruninstall" & @CRLF)

	Local $sSourceName = "", $sDesDirName = ""
	Local $aFiles = IniReadSection($sDistroIniPath, "Files")

	If Not @error Then
		For $x = 1 To $aFiles[0][0]
			If StringCompare($aFiles[$x][1], $sOutputFile) <> 0 And _
					StringCompare($aFiles[$x][1], $sOutput64Bit) <> 0 And _
					StringCompare($aFiles[$x][1], $sIniFilBaseName) <> 0 Then

				$sSourceName = _CleanDirectoryName($aFiles[$x][1])
				$sDesDirName = _GetDestDirFromString($sSourceName)
				FileWrite($hFileOpen, "Source: {#distrodir}\" & $sSourceName & "; DestDir: {app}" & $sDesDirName & "; Flags: ignoreversion" & @CRLF)

			EndIf
		Next
	EndIf

	Local $aDocFiles = IniReadSection($sDistroIniPath, "DocumentFiles")
	If Not @error Then
		For $x = 1 To $aDocFiles[0][0]
			$sSourceName = _CleanDirectoryName($aDocFiles[$x][1])
			$sDesDirName = _GetDestDirFromString($sSourceName)
			FileWrite($hFileOpen, "Source: {#distrodir}\" & $sSourceName & "; DestDir: {app}" & $sDesDirName & "; Flags: ignoreversion" & @CRLF)
		Next
	EndIf

	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Dirs]" & @CRLF)
	FileWrite($hFileOpen, "Name: {userappdata}\" & $sCompanyName & "\" & $sProgShortName & "\Logging" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Icons]" & @CRLF)
	FileWrite($hFileOpen, "Name: {commondesktop}\{#app_name}; Filename: {app}\" & $sOutputFile & "; Tasks: desktopicon\common; Comment: {#app_name} {#app_version}; WorkingDir: {app}; AppUserModelID: " & $sProgShortName & "; IconFilename: {app}\" & $sOutputFile & "; IconIndex: 0" & @CRLF)
	FileWrite($hFileOpen, "Name: {userdesktop}\{#app_name};   Filename: {app}\" & $sOutputFile & "; Tasks: desktopicon\user;   Comment: {#app_name} {#app_version}; WorkingDir: {app}; AppUserModelID: " & $sProgShortName & "; IconFilename: {app}\" & $sOutputFile & "; IconIndex: 0" & @CRLF)
	FileWrite($hFileOpen, "Name: {userstartmenu}\{#app_name}; Filename: {app}\" & $sOutputFile & "; Tasks: startup_icon;       Comment: {#app_name} {#app_version}; WorkingDir: {app}; AppUserModelID: " & $sProgShortName & "; IconFilename: {app}\" & $sOutputFile & "; IconIndex: 0" & @CRLF)
	FileWrite($hFileOpen, "Name: {#quick_launch}\{#app_name}; Filename: {app}\" & $sOutputFile & "; Tasks: quicklaunchicon;    Comment: {#app_name} {#app_version}; WorkingDir: {app};                        					IconFilename: {app}\" & $sOutputFile & "; IconIndex: 0" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[INI]" & @CRLF)
	FileWrite($hFileOpen, "Filename: {app}\" & $sIniFilBaseName & "; Section: " & $sProgShortName & "; Key: PortableEdition; String: 0" & @CRLF)
	FileWrite($hFileOpen, "Filename: {userappdata}\" & $sCompanyName & "\" & $sProgShortName & "\" & $sIniFilBaseName & "; Section: " & $sProgShortName & "; Key: PortableEdition; String: 0" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Run]" & @CRLF)
	FileWrite($hFileOpen, "Filename: {app}\" & $sOutputFile & "; Description: {cm:LaunchProgram,{#app_name}}; WorkingDir: {app}; Flags: nowait postinstall shellexec skipifsilent unchecked" & @CRLF)
	FileWrite($hFileOpen, "Filename: " & Chr(34) & $sCompanyURL & Chr(34) & "; Flags: shellexec" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[InstallDelete]" & @CRLF)
	FileWrite($hFileOpen, "Type: files;      Name: {userdesktop}\{#app_name}.lnk;   Check: not IsTaskSelected('desktopicon\user')   and IsUpgrade()" & @CRLF)
	FileWrite($hFileOpen, "Type: files;      Name: {commondesktop}\{#app_name}.lnk; Check: not IsTaskSelected('desktopicon\common') and IsUpgrade()" & @CRLF)
	FileWrite($hFileOpen, "Type: files;      Name: {userstartmenu}\{#app_name}.lnk; Check: not IsTaskSelected('startup_icon')       and IsUpgrade()" & @CRLF)
	FileWrite($hFileOpen, "Type: files;      Name: {#quick_launch}\{#app_name}.lnk; Check: not IsTaskSelected('quicklaunchicon')    and IsUpgrade(); OnlyBelowVersion: 6.01" & @CRLF)
	FileWrite($hFileOpen, "Type: files;      Name: {app}\" & $sIniFilBaseName & @CRLF)

	Local $aDocDelFiles = IniReadSection($sDistroIniPath, "DocumentFiles")
	If Not @error Then
		For $x = 1 To $aDocDelFiles[0][0]
			If Not StringInStr(FileGetAttrib($aDocDelFiles[$x][1]), "D") Then

				$sSourceName = _CleanDirectoryName($aDocDelFiles[$x][1])
				FileWrite($hFileOpen, "Type: files;      Name: {app}\" & $sSourceName & @CRLF)

			EndIf
		Next
	EndIf

	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[UninstallDelete]" & @CRLF)
	FileWrite($hFileOpen, "Type: files;      Name: {app}\" & $sIniFilBaseName & @CRLF)
	FileWrite($hFileOpen, "Type: dirifempty; Name: {app}" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "[Code]" & @CRLF)
	FileWrite($hFileOpen, "function IsUpgrade(): Boolean;" & @CRLF)
	FileWrite($hFileOpen, @TAB & "var" & @CRLF)
	FileWrite($hFileOpen, @TAB & "sPrevPath: String;" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "sPrevPath := WizardForm.PrevAppDir;" & @CRLF)
	FileWrite($hFileOpen, @TAB & "Result := (sPrevPath <> '');" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "// Check if " & $sProgName & "'s settings exist." & @CRLF)
	FileWrite($hFileOpen, "function SettingsExistCheck(): Boolean;" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "if FileExists(ExpandConstant('{userappdata}\" & $sCompanyName & "\" & $sProgShortName & "\" & $sIniFilBaseName & "')) then begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "Log('Custom Code: Settings are present');" & @CRLF)
	FileWrite($hFileOpen, @TAB & "Result := True;" & @CRLF)
	FileWrite($hFileOpen, @TAB & "end" & @CRLF)
	FileWrite($hFileOpen, @TAB & "else begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & "Log('Custom Code: Settings are NOT present');" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & "Result := False;" & @CRLF)
	FileWrite($hFileOpen, @TAB & "end;" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "function ShouldSkipPage(PageID: Integer): Boolean;" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "// Hide the license page if IsUpgrade()" & @CRLF)
	FileWrite($hFileOpen, @TAB & "if IsUpgrade() and (PageID = wpLicense) then" & @CRLF)
	FileWrite($hFileOpen, @TAB & "Result := True;" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "procedure CleanUpSettings();" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "DeleteFile(ExpandConstant('{userappdata}\" & $sCompanyName & "\" & $sProgShortName & "\" & $sIniFilBaseName & "'));" & @CRLF)
	FileWrite($hFileOpen, @TAB & "RemoveDir(ExpandConstant('{userappdata}\" & $sCompanyName & "\" & $sProgShortName & "'));" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "procedure CurPageChanged(CurPageID: Integer);" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "if CurPageID = wpSelectTasks then" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & "WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)" & @CRLF)
	FileWrite($hFileOpen, @TAB & "else if CurPageID = wpFinished then" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & "WizardForm.NextButton.Caption := SetupMessage(msgButtonFinish);" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "procedure CurStepChanged(CurStep: TSetupStep);" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "if CurStep = ssInstall then begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "if IsTaskSelected('reset_settings') then" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & "CleanUpSettings();" & @CRLF)
	FileWrite($hFileOpen, @TAB & "end;" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "// When uninstalling, ask the user to delete " & $sProgName & "'s settings." & @CRLF)
	FileWrite($hFileOpen, @TAB & "if CurUninstallStep = usUninstall then begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & "if SettingsExistCheck() then begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & @TAB & "if SuppressibleMsgBox(CustomMessage('msg_DeleteSettings'), mbConfirmation, MB_YESNO or MB_DEFBUTTON2, IDNO) = IDYES then" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & @TAB & "CleanUpSettings();" & @CRLF)
	FileWrite($hFileOpen, @TAB & @TAB & "end;" & @CRLF)
	FileWrite($hFileOpen, @TAB & "end;" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)
	FileWrite($hFileOpen, "" & @CRLF)
	FileWrite($hFileOpen, "procedure InitializeWizard();" & @CRLF)
	FileWrite($hFileOpen, "begin" & @CRLF)
	FileWrite($hFileOpen, @TAB & "WizardForm.SelectTasksLabel.Hide;" & @CRLF)
	FileWrite($hFileOpen, @TAB & "WizardForm.TasksList.Top    := 0;" & @CRLF)
	FileWrite($hFileOpen, @TAB & "WizardForm.TasksList.Height := PageFromID(wpSelectTasks).SurfaceHeight;" & @CRLF)
	FileWrite($hFileOpen, "end;" & @CRLF)

	FileClose($hFileOpen)

	IniWrite($sDistroIniPath, "Environment", "InstallScriptPath", $sScriptFullPath)
	IniWrite($sDistroIniPath, "Environment", "InstallOutputPath", $sOutputFullPath)
	; _ProcessCommand($INN_CMD & " " & Chr(34) & $sScriptFullPath & Chr(34))

EndFunc   ;==>_GenerateInstallationScript


Func _DistributSourceCode($sDistroIniPath, $iD)

	_StartDistributionProcess($iD)

	Local $sInputPath = IniRead($sDistroIniPath, "Environment", "ScriptPath", _GetParentPath($sDistroIniPath))
	Local $sOutputPath = IniRead($sDistroIniPath, "Environment", "DistributionPathSource", "")
	Local $sAu3ScriptIn = IniRead($sDistroIniPath, "Environment", "ScriptFullPath", "")
	Local $sScriptBaseName = IniRead($sDistroIniPath, "SDK", "Script", "")
	Local $sScriptFullPath = $sOutputPath & "\" & $sScriptBaseName
	Local $sIncludesSource = @ScriptDir & "\Includes"
	Local $sIncludesOutput = $sOutputPath & "\Includes"

	_DistributeDirectory($sOutputPath)

	Local $aSourceDirs = IniReadSection($sDistroIniPath, "SourceDirs")
	If Not @error Then
		For $x = 1 To $aSourceDirs[0][0]
			_DistributeDirectory($sOutputPath & "\" & $aSourceDirs[$x][1])
		Next
	EndIf

	_EditLoggingWrite("Processing Core Script...")
	_ProcessAutoItScript($sAu3ScriptIn, $sScriptFullPath)

	_EditLoggingWrite("Processing ReBar Includes...")
	Local $sIncludesSource = @ScriptDir & "\Includes\"

    Local $aReBarIncludes = _FileListToArray($sIncludesSource, "*")
    If @error = 1 Then
		_EditLoggingWrite("Error: Invalid Includes Path")
		_EditLoggingWrite("^ [" & $sIncludesSource & "]")
    EndIf
	If @error = 4 Then
        _EditLoggingWrite("Error: Nothing Here")
		_EditLoggingWrite("^ [" & $sIncludesSource & "]")
    EndIf

	For $a = 1 To $aReBarIncludes[0]
		_DistributeFile($sIncludesSource & "\" & $aReBarIncludes[$a], $sIncludesOutput & "\" & $aReBarIncludes[$a])
	Next

	Local $aSources = IniReadSection($sDistroIniPath, "Sources")
	If Not @error Then
		For $x = 1 To $aSources[0][0]
			_DistributeFile($sInputPath & "\" & $aSources[$x][1], $sOutputPath & "\" & $aSources[$x][1])
		Next
	EndIf

	Local $aDocFiles = IniReadSection($sDistroIniPath, "DocumentFiles")
	If Not @error Then
		For $x = 1 To $aDocFiles[0][0]
			_DistributeFile($sInputPath & "\" & $aDocFiles[$x][1], $sOutputPath & "\" & $aDocFiles[$x][1])
		Next
	EndIf
	_UpdateDistributionProcess($iD)

EndFunc   ;==>_DistributSourceCode


Func _FindReBarIncludes($sDistroIniPath)

	Local $sAu3ScriptIn = IniRead($sDistroIniPath, "Environment", "ScriptFullPath", "")
	Local $aScriptIn
	Local $iCurrLine
	Local $sIncludeLine
	Local $sIncludes
	Local $iIncludeCount = 0

	;Local $sReturn_Value

	Local $hFileOpen = FileOpen($sAu3ScriptIn, $FO_FULLFILE_DETECT)
	If $hFileOpen = -1 Then Return SetError(1, 0, 0) ; Unable to open the file
	Local $sFileRead = FileRead($hFileOpen)
	FileClose($hFileOpen)

	$aScriptIn = StringSplit(StringStripCR($sFileRead), @CRLF)

	For $iLine = 1 To $aScriptIn[0]

		$iCurrLine = $aScriptIn[$iLine]
		$iCurrLine = StringStripWS($iCurrLine, 7)

		; Is Not ReBar #include
		If StringInStr($iCurrLine, "Includes\ReBar_") Then
			$iIncludeCount += 1
			$sIncludeLine = StringReplace($iCurrLine, Chr(34), "")
			$sIncludeLine = StringReplace($sIncludeLine, "#Include", "")
			$sIncludeLine = StringStripWS($sIncludeLine, 7)
			Local $aIncludeSplt = StringSplit($sIncludeLine, "\")
			If $aIncludeSplt[0] >= 1 Then
				$sIncludeLine = $aIncludeSplt[$aIncludeSplt[0]]
			EndIf

			$sIncludes &= $sIncludeLine & "|"
		Else
			ContinueLoop
		EndIf

	Next

	$sIncludes = StringTrimRight($sIncludes, 1)
	Local $aIncludes[1] = [$iIncludeCount]
	_ArrayAdd($aIncludes, $sIncludes)
	;_ArrayDisplay($aIncludes, "ReBar Includes")
	Return $aIncludes

EndFunc   ;==>_FindReBarIncludes


Func _ProcessAutoItScript($sAu3ScriptIn, $sOutScript)

	Local $hScriptOpen = FileOpen($sAu3ScriptIn, $FO_READ)
	If $hScriptOpen = -1 Then
		MsgBox($MB_SYSTEMMODAL, "", "Could not find the specified document template.")
		Return SetError(1, 0, False)
	EndIf

	Local $sScriptRead = FileRead($hScriptOpen)
	$sScriptRead = StringReplace($sScriptRead, "..\..\Includes\ReBar_", "Includes\ReBar_")
	; Close the handle returned by FileOpen.
	FileClose($hScriptOpen)

	FileDelete($sOutScript)
	If Not FileWrite($sOutScript, $sScriptRead) Then
		Return SetError(3, 0, False)
	EndIf

	Return SetError(0, 0, True)

EndFunc   ;==>_ProcessAutoItScript


Func _CopySourceToGitDirectory($sDistroIniPath, $iD)

	_StartDistributionProcess($iD)

	Local $sInputPath = IniRead($sDistroIniPath, "Environment", "DistributionPathSource", "")
	Local $sGitBaseName = IniRead($sDistroIniPath, "Environment", "ProgramShortName", "")
	Local $sGitFullBath = @ScriptDir & "\GitHub\" & $sGitBaseName

	If FileExists($sGitFullBath) Then
		_CleanGitDirectory($sGitFullBath)
	Else
		DirCreate($sGitFullBath)
	EndIf

	Local $aSourceFiles = _FileListToArray($sInputPath, "*")
    If @error = 1 Then
		_EditLoggingWrite("Error: Source Code Path")
		_EditLoggingWrite("^ [" & $sInputPath & "]")
    EndIf
	If @error = 4 Then
        _EditLoggingWrite("Error: Nothing Here")
		_EditLoggingWrite("^ [" & $sInputPath & "]")
    EndIf

	For $x = 1 To $aSourceFiles[0]

		Local $sInputFilePath = $sInputPath & "\" & $aSourceFiles[$x]
		Local $sGitFilePath = $sGitFullBath & "\" & $aSourceFiles[$x]

		If StringInStr(FileGetAttrib($sInputFilePath), "D") Then
			DirCopy($sInputFilePath, $sGitFilePath, 1)
		Else
			FileCopy($sInputFilePath, $sGitFilePath, 1)
		EndIf
	Next

	_UpdateDistributionProcess($iD)

EndFunc


Func _CleanGitDirectory($sGitFullBath)

;~ 	Local $aGitFiles = _FileListToArray($sGitFullBath, "*")
;~     If @error = 1 Then
;~ 		_EditLoggingWrite("Error: Invalid Git Path")
;~ 		_EditLoggingWrite("^ [" & $sGitFullBath & "]")
;~     EndIf

;~ 	For $x = 1 To $aGitFiles[0]

;~ 		If StringInStr($aGitFiles[$x], ".git") Then
;~ 			ContinueLoop
;~ 		EndIf

;~ 		Local $sGitFilePath = @ScriptDir & "\GitHub\SDK\" & $aGitFiles[$x]

;~ 		If StringInStr(FileGetAttrib($sGitFilePath), "D") Then
;~ 			DirRemove($sGitFilePath, 1)
;~ 		Else
;~ 			FileDelete($sGitFilePath)
;~ 		EndIf
;~ 	Next

EndFunc


#EndRegion ~Distribution


Func _AutoIt3Script_WrapperOutPut($sOutPut)

	If StringStripWS($sOutPut, 8) <> "" Then

		;$sReplaceOut = StringReplace($sOutPut, "+>", "")
		;$sReplaceOut = StringReplace($sReplaceOut, "...>", "")
		;$sReplaceOut = StringReplace($sReplaceOut, "!>", "!")
		Local $sReplaceOut = StringReplace($sOutPut, "to:", "to: ")
		$sReplaceOut = StringReplace($sReplaceOut, "Created program:", "Created program: ")
		$sReplaceOut = StringReplace($sReplaceOut, "ended.", "ended. ")
		; This shortcut will not be used in the Distro Building Environment, so we remove it.
		$sReplaceOut = StringReplace($sReplaceOut, "Press F4 to jump to next error.", "")

		$sReplaceOut = StringRegExpReplace($sReplaceOut, "([0-9]+):([0-5][0-9]):([0-5][0-9])", "")

		If StringLeft($sReplaceOut, 1) == ">" Then $sReplaceOut = StringTrimLeft($sReplaceOut, 1)
		If StringLeft($sReplaceOut, 1) == "-" Then $sReplaceOut = StringTrimLeft($sReplaceOut, 1)

		If StringInStr($sReplaceOut, "Environment") Then StringReplace($sReplaceOut, @CRLF, "")

		If StringInStr($sReplaceOut, @CRLF) Then
			Local $aOutSplt = StringSplit($sReplaceOut, @CRLF, $STR_ENTIRESPLIT)
			For $x = 1 To $aOutSplt[0] ; Loop through the array returned by StringSplit to display the individual values.
				If StringStripWS($aOutSplt[$x], 8) <> "" Then
					_EditLoggingWrite(StringStripWS($aOutSplt[$x], 7))
				EndIf
			Next
		Else
			If StringStripWS($sReplaceOut, 8) <> "" Then
				_EditLoggingWrite(StringStripWS($sReplaceOut, 7))
			EndIf
		EndIf

	EndIf

EndFunc


Func _CleanDirectoryName($sFileName)

	If StringCompare(StringLeft($sFileName, 1), "\") = 0 Then
		Return StringTrimLeft($sFileName, 1)
	Else
		Return $sFileName
	EndIf

EndFunc   ;==>_CleanDirectoryName


Func _CreateNewSolutionDialog()

	GUICtrlSetState($g_MenuCreateSln, $GUI_DISABLE)
	WinSetTrans($g_ReBarCoreGui, Default, 200)

	$g_GuiCreateSln = GUICreate("Create New Solution", 500, 550, -1, -1, BitOR($WS_CAPTION, $WS_POPUPWINDOW))
	GUISetIcon($g_ReBarResFugue, 140)
	GUISetFont($g_ReBarFontSize, 400, -1, $g_ReBarFontName, $g_GuiCreateSln, $CLEARTYPE_QUALITY)

	Local $snSolutionName = IniRead($g_ReBarPathIni, "Solution", "SolutionName", "ReBar")

	GUICtrlCreateTab(10, 10, 480, 450)

	GUICtrlCreateTabItem(" Program ")
	GUICtrlCreateGroup("Solution", 20, 50, 455, 210)
	GUICtrlSetFont(-1, 10, 700, 2)
	GUICtrlCreateLabel("Solution Name", 30, 80, 220, 18)
	$NSD_NAME = GUICtrlCreateInput($snSolutionName, 30, 98, 410, 20)
	GUICtrlCreateLabel("Program Name", 30, 123, 220, 18)
	$NSD_PROG_NAME = GUICtrlCreateInput("", 30, 141, 410, 20)
	GUICtrlCreateLabel("Program Description", 30, 166, 220, 18)
	$NSD_PROG_DESC = GUICtrlCreateInput("", 30, 184, 410, 20)
	GUICtrlCreateLabel("Start Version", 30, 209, 220, 18)
	GUICtrlCreateInput("", 30, 227, 30, 20)
	GUICtrlCreateInput("", 65, 227, 30, 20)
	GUICtrlCreateInput("", 100, 227, 30, 20)
	GUICtrlCreateInput("", 135, 227, 60, 20)
	GUICtrlCreateLabel("Product Version", 250, 209, 220, 18)
	GUICtrlCreateInput("", 250, 227, 130, 20)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group
	GUICtrlCreateGroup("Icon", 20, 270, 94, 140)
	GUICtrlSetFont(-1, 10, 700, 2)
	GUICtrlCreateIcon(@ScriptFullPath, 99, 35, 295, 64, 64)
	GUICtrlCreateButton("Browse", 30, 365, 74, 30)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group
	GUICtrlCreateGroup("Compile Options", 130, 270, 345, 60)
	GUICtrlSetFont(-1, 10, 700, 2)
	GUICtrlCreateCheckbox(" Compile X86 Version", 140, 295, 160, 20)
	GUICtrlCreateCheckbox(" Compile X64 Version", 300, 295, 160, 20)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group
	GUICtrlCreateTabItem("") ; end tabitem definition

	$NSD_BTNCREATE = GUICtrlCreateButton("Create", 285, 510, 200, 35)
	GUICtrlSetOnEvent($NSD_BTNCREATE, "_CreateNewSolution")

	GUISetOnEvent($GUI_EVENT_CLOSE, "_CloseNewSolutionDialog", $g_GuiCreateSln)

	GUISetState(@SW_SHOW, $g_GuiCreateSln)

EndFunc   ;==>_CreateNewSolutionDialog


Func _CreateNewSolution()

	Local $sAu3ScriptIn = @ScriptDir & "\Concrete\ReBar\ReBar.au3"
	Local $sOldUseX64 = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_UseX64")
	Local $sOldBOrP = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_Version")
	Local $sOldOutFile = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_OutFile")
	Local $sOldOutFileX64 = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_OutFile_X64")
	Local $sOldProgramName = _AutoIt3Script_GetDirectiveValue($sAu3ScriptIn, "#AutoIt3Wrapper_Res_Comment")

	Local $sNewSolName = GUICtrlRead($NSD_NAME)

	Local $hSolutionOpen = FileOpen($sAu3ScriptIn, $FO_READ)
	If $hSolutionOpen = -1 Then
		Return SetError(1, 0, 0)
	EndIf

	Local $sSolutionRead = FileRead($hSolutionOpen)
	;$sSolutionRead = StringReplace($sScriptRead, "..\..\Includes\ReBar_", "Includes\ReBar_")

	; Close the handle returned by FileOpen.
	FileClose($hSolutionOpen)

	Local $sOutputDir = @ScriptDir & "\Concrete\" & $sNewSolName
	Local $sOutputSol = $sOutputDir & "\" & $sNewSolName & ".au3"
	_DistributeDirectory($sOutputDir)


;~ 	If Not FileWrite($sOutputSol, $sSolutionRead) Then
;~ 		Return SetError(1, 0, 0)
;~ 	EndIf

	Return SetError(0, 0, 0)
EndFunc   ;==>_CreateNewSolution


Func _CloseNewSolutionDialog()

	GUICtrlSetState($g_MenuCreateSln, $GUI_ENABLE)
	GUIDelete($g_GuiCreateSln)
	WinSetTrans($g_ReBarCoreGui, Default, 255)

EndFunc   ;==>_CloseNewSolutionDialog


Func _ProcessCommand($sCMD, $sWorkingDir = "")

	Local $iPID
	_EditLoggingWrite("Running: " & $sCMD)

	$iPID = Run($sCMD, $sWorkingDir, @SW_HIDE, $STDOUT_CHILD)
	If $iPID Then

		Local $pHandle = _ProcessExitCode($iPID), $iExitCode
		Local $sOutput = "", $aOutput

		ProcessWaitClose($iPID)
		$sOutput = StdoutRead($iPID)

		; Build Array
		If StringInStr($sOutput, @LF) Then
			$aOutput = StringSplit($sOutput, @LF, $STR_ENTIRESPLIT)
		ElseIf StringInStr($sOutput, @CR) Then ; @LF does not exist so split on the @CR
			$aOutput = StringSplit($sOutput, @CR, $STR_ENTIRESPLIT)
		EndIf

		For $i = 1 To $aOutput[0] ; Loop through the array returned by StringSplit to display the individual values.
			If StringStripWS($aOutput[$i], $STR_STRIPALL) <> "" Then
				_EditLoggingWrite(StringStripWS($aOutput[$i], 3))
			EndIf
		Next

		StdioClose($iPID)
		$iExitCode = _ProcessExitCode($iPID, $pHandle)
		_ProcessCloseHandle($pHandle)

	EndIf

EndFunc   ;==>_ProcessCommand




























Func _GetDestDirFromString($sSourceName)

	Local $sReturn = ""

	If StringInStr($sSourceName, "\") Then
		Local $aFilesSplt = StringSplit($sSourceName, "\")
		For $x = 1 To $aFilesSplt[0] - 1
			$sReturn &= "\" & $aFilesSplt[$x]
		Next
	EndIf

	Return $sReturn

EndFunc   ;==>_GetDestDirFromString


Func _CalculateInstallSize($sDistroIni_Path)

	Local $iSizeReturn = 0
	Local $sFiles_Path = IniRead($sDistroIni_Path, "Environment", "Script_Path", _GetParentPath($sDistroIni_Path)) & "\"
	Local $sDocs_Path = IniRead($sDistroIni_Path, "Environment", "Script_Path", _GetParentPath($sDistroIni_Path)) & "\Templates\"

	Local $aFiles = IniReadSection($sDistroIni_Path, "Files")
	; Check if an error occurred.
	If Not @error Then
		For $x = 1 To $aFiles[0][0]
			If Not StringInStr(FileGetAttrib($sFiles_Path & $aFiles[$x][1]), "D") Then
				$iSizeReturn += FileGetSize($sFiles_Path & $aFiles[$x][1])
			EndIf
		Next
	EndIf

	Local $aDocFiles = IniReadSection($sDistroIni_Path, "DocumentFiles")
	; Check if an error occurred.
	If Not @error Then
		For $x = 1 To $aDocFiles[0][0]
			$iSizeReturn += FileGetSize($sDocs_Path & $aDocFiles[$x][1])
		Next
	EndIf

	$iSizeReturn = Round($iSizeReturn / 1048576)
	Return $iSizeReturn

EndFunc   ;==>_CalculateInstallSize


Func _ReturnConnectionError($iError)

	Switch $iError
		Case 1
			Return "Host is Offline."
		Case 2
			Return "Host is Unreachable."
		Case 3
			Return "Bad Destination."
		Case 4
			Return "No Internet Connection."
	EndSwitch

EndFunc   ;==>_ReturnConnectionError


Func _CheckedBuildCount()

	Local $iCount = 0

	For $c = 0 To $COUNT_BUILD - 1
		If GUICtrlRead($g_ChkBuild[$c]) = $GUI_CHECKED Then
			$iCount += 1
		EndIf
	Next

	Return $iCount

EndFunc   ;==>_CheckedBuildCount


Func _CheckedDistrobuteCount()

	Local $iCount = 0

	For $c = 0 To $COUNT_DISTRIBUTE - 1
		If GUICtrlRead($g_ChkDistribute[$c]) = $GUI_CHECKED Then
			$iCount += 1
		EndIf
	Next

	Return $iCount

EndFunc   ;==>_CheckedDistrobuteCount


Func _AutoItWrapperOutputReplace($sOutput)

	Local $sReturn = $sOutput
	$sReturn = StringReplace($sReturn, "+>", "(::n::)+>")
	$sReturn = StringReplace($sReturn, "...>", "(::n::)...>")
	$sReturn = StringReplace($sReturn, ">Running:", "(::n::)>Running:")
	$sReturn = StringReplace($sReturn, ">", "> ")

	Return $sReturn

EndFunc   ;==>_AutoItWrapperOutputReplace


Func _GetCheckedItemCount($hWnd)

	Local $iCheckedCount = 0
	Local $iDistroCount = _GUICtrlListView_GetItemCount($hWnd)

	If $iDistroCount > 0 Then

		For $i = 0 To $iDistroCount

			Local $iSelCount = _GUICtrlListView_GetItemChecked($hWnd, $i)
			If $iSelCount = 1 Then
				$iCheckedCount += 1
			EndIf
		Next

	EndIf

	Return $iCheckedCount


EndFunc   ;==>_GetCheckedItemCount


Func _CheckPrerequisites()

	Local $aAutoItInfo = _CheckPrerequisite("AutoIt3\Uninstall.exe", "AutoIt 3.14 +", 0, 0)
	If $aAutoItInfo[0] = "Installed" Then
		$AU3_INSTALLED = True
		$AU3_DIR = $aAutoItInfo[9]
		$AU3_CMD = $AU3_DIR & "AutoIt3.exe"
	Else
		$AU3_INSTALLED = False
	EndIf

	Local $aAutoItBetaInfo = _CheckPrerequisite("AutoIt3\Beta\Uninstall.exe", "AutoIt Beta 3.15 +", 0, 1)
	If $aAutoItBetaInfo[0] = "Installed" Then
		$AUB_INSTALLED = True
		$AUB_DIR = $aAutoItBetaInfo[9]
		$AUB_CMD = $AUB_DIR & "AutoIt3.exe"
	Else
		$AUB_INSTALLED = False
	EndIf

	Local $aSciteInfo = _CheckPrerequisite("AutoIt3\SciTE\uninst.exe", "Scite4AutoIt", 0, 2)
	If $aSciteInfo[0] = "Installed" Then

		$SCT_INSTALLED = True
		$SCT_DIR = $aSciteInfo[9]
		$SCT_CMD = $SCT_DIR & "SciTE.exe"

		If FileExists($SCT_DIR & "AutoIt3Wrapper\AutoIt3Wrapper.au3") Then
			$AUW_INSTALLED = True
			$AUW_DIR = $SCT_DIR & "AutoIt3Wrapper\"
			$AUW_CMD = $AUW_DIR & "AutoIt3Wrapper.au3"
		Else
			$AUW_INSTALLED = False
		EndIf

	Else
		$SCT_INSTALLED = False
	EndIf

	Local $sUPXPath = @ScriptDir & "\SDK\Bin\UPX\upx.exe"
	If FileExists($sUPXPath) Then

		GUICtrlSetImage($g_IconPreStatus[0][3], $g_ReBarResFugue, 123)
		GUICtrlSetData($g_LblPreStatus[0][3], "Installed")
		GUICtrlSetData($g_LblPreName[0][3], "UPX version " & FileGetVersion($sUPXPath))

		$UPX_INSTALLED = True
		$UPX_CMD = $sUPXPath
		$UPX_DIR = _GetParentPath($sUPXPath)

	Else
		$UPX_INSTALLED = False
	EndIf

	Local $aKSignInfo = _CheckPrerequisite("kSign\unins000.exe", "K Software kSign 1.5 +", 0, 4)
	If $aKSignInfo[0] = "Installed" Then
		$KSN_INSTALLED = True
		$KSN_DIR = $aKSignInfo[9]
		$KSN_CMD = $KSN_DIR & "kSignCMD.exe"
	Else
		$AU3_INSTALLED = False
	EndIf

	Local $a7zip = _CheckPrerequisite("7-Zip\Uninstall.exe", "7-Zip", 1, 0)
	; _ArrayDisplay($a7zip)
	If $a7zip[0] = "Installed" Then
		$7ZP_INSTALLED = True
		$7ZP_DIR = $a7zip[9]
		$7ZP_CMD = $7ZP_DIR & "7z.exe"
	EndIf

		; _CheckPrerequisite("7-Zip", "7-Zip 9 +", 1, 1)
	Local $aInnoInfo = _CheckPrerequisite("Inno Setup 5\unins000.exe", "Inno Setup 5", 1, 1)
	If $aInnoInfo[0] = "Installed" Then
		$INN_INSTALLED = True
		$INN_DIR = $aInnoInfo[9]
		$INN_CMD = $INN_DIR & "ISCC.exe"
	EndIf

EndFunc   ;==>_CheckPrerequisites


Func _CheckPrerequisite($sSearch, $sExpectedName, $iCol, $iRow, $InfoURL = "")

	Local $aPrereqInfo = _GetInstall($sSearch, $sExpectedName)

	GUICtrlSetImage($g_IconPreStatus[$iCol][$iRow], $g_ReBarResFugue, $aPrereqInfo[1])
	GUICtrlSetData($g_LblPreStatus[$iCol][$iRow], $aPrereqInfo[0])
	GUICtrlSetData($g_LblPreName[$iCol][$iRow], $aPrereqInfo[4])

	Return $aPrereqInfo

EndFunc   ;==>_CheckPrerequisite


Func _GetInstall($sSearch, $sExpectedName, $sInfoURL = "")

	Local $sUninstallK = "", $sSubK = "", $aInfo[10]

	If @OSArch = "X64" Then
		$sUninstallK = "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
	Else
		$sUninstallK = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
	EndIf

	For $iK1 = 1 To 999

		$sSubK = RegEnumKey($sUninstallK, $iK1)
		If @error Then ExitLoop

		Local $sFullK = $sUninstallK & "\" & $sSubK

		Local $sDisplayName = RegRead($sFullK, "DisplayName")
		Local $sUninstallPath = RegRead($sFullK, "UninstallString")

		If StringInStr($sUninstallPath, $sSearch) Then

			$aInfo[0] = "Installed"
			$aInfo[1] = 123
			$aInfo[2] = $sInfoURL
			$aInfo[3] = RegRead($sFullK, "DisplayIcon")
			$aInfo[4] = $sDisplayName
			$aInfo[5] = RegRead($sFullK, "DisplayVersion")
			$aInfo[6] = RegRead($sFullK, "Publisher")
			$aInfo[7] = RegRead($sFullK, "InstallLocation")
			$aInfo[8] = $sUninstallPath

			Local $sCleanUnPath = StringReplace($aInfo[8], Chr(34), "")

			If $sCleanUnPath <> "" Then

				Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
				Local $aPathSplit = _PathSplit($sCleanUnPath, $sDrive, $sDir, $sFileName, $sExtension)

				$aInfo[9] = $sDrive & $sDir

			EndIf

			ExitLoop

		Else

			$aInfo[0] = "Not Installed"
			$aInfo[1] = 122
			$aInfo[2] = $sInfoURL
			$aInfo[3] = "Error"
			$aInfo[4] = $sExpectedName
			$aInfo[5] = "Error"
			$aInfo[6] = "Error"
			$aInfo[7] = "Error"
			$aInfo[8] = "Error"

		EndIf



	Next

	Return $aInfo

EndFunc   ;==>_GetInstall


Func _GUIHoverControlExtended()

	Local $iCursor = GUIGetCursorInfo()

	If Not @error Then

		For $iBuild = 0 To $COUNT_BUILD - 1
			If $iCursor[4] = $g_BtnGoBuild[$iBuild] And $g_BtnGoBuildH[$iBuild] = 1 Then
				$g_BtnGoBuildH[$iBuild] = 0
				GUICtrlSetImage($g_BtnGoBuild[$iBuild], $g_ReBarResFugue, 107)
			ElseIf $iCursor[4] <> $g_BtnGoBuild[$iBuild] And $g_BtnGoBuildH[$iBuild] = 0 Then
				$g_BtnGoBuildH[$iBuild] = 1
				GUICtrlSetImage($g_BtnGoBuild[$iBuild], $g_ReBarResFugue, 108)
			EndIf
		Next

		For $iDis = 0 To $COUNT_DISTRIBUTE - 1
			If $iCursor[4] = $g_BtnGoDistribute[$iDis] And $g_BtnGoDistributeH[$iDis] = 1 Then
				$g_BtnGoDistributeH[$iDis] = 0
				GUICtrlSetImage($g_BtnGoDistribute[$iDis], $g_ReBarResFugue, 107)
			ElseIf $iCursor[4] <> $g_BtnGoDistribute[$iDis] And $g_BtnGoDistributeH[$iDis] = 0 Then
				$g_BtnGoDistributeH[$iDis] = 1
				GUICtrlSetImage($g_BtnGoDistribute[$iDis], $g_ReBarResFugue, 108)
			EndIf
		Next

		If $iCursor[4] = $ICO_PREREFRESH And $ICO_PREREFRESH_H = 1 Then
			$ICO_PREREFRESH_H = 0
			GUICtrlSetImage($ICO_PREREFRESH, $g_ReBarResFugue, 129)
		ElseIf $iCursor[4] <> $ICO_PREREFRESH And $ICO_PREREFRESH_H = 0 Then
			$ICO_PREREFRESH_H = 1
			GUICtrlSetImage($ICO_PREREFRESH, $g_ReBarResFugue, 128)
		EndIf

	EndIf

EndFunc   ;==>_GUIHoverControlExtended





#include "Includes\ReBar_End.au3"
