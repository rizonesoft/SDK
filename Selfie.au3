#NoTrayIcon
#OnAutoItStartRegister "_ReBarStartUp"

#Region AutoIt3Wrapper Directives Dection

#AutoIt3Wrapper_If_Run

	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	#AutoIt3Wrapper_UseX64=Y										;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Run_Debug_Mode=N								;~ (Y/N) Run Script with console debugging. Default=N
	#AutoIt3Wrapper_Run_SciTE_Minimized=Y 							;~ (Y/N) Minimize SciTE while script is running. Default=N
	#AutoIt3Wrapper_Run_SciTE_OutputPane_Minimized=N				;~ (Y/N) Minimize SciTE output pane at run time. Default=N
	;===============================================================================================================
	; Tidy Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Tidy=Y										;~ (Y/N) Run Tidy before compilation. Default=N
	#AutoIt3Wrapper_Tidy_Stop_OnError=N								;~ (Y/N) Continue when only Warnings. Default=Y
	;#Tidy_Parameters= 												;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
	;===============================================================================================================
	; AU3Check settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_AU3Check=Y									;~ (Y/N) Run au3check before compilation. Default=Y
	;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
	;#AutoIt3Wrapper_AU3Check_Stop_OnWarning=						;~ (Y/N) Continue/Stop on Warnings.(Default=N)

#Autoit3Wrapper_If_Compile

	#AutoIt3Wrapper_ShowProgress=Y									;~ (Y/N) Show ProgressWindow during Compile. Default=Y
	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	#AutoIt3Wrapper_UseX64=N										;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Version=B                        				;~ (B/P) Use Beta or Production for AutoIt3 and Aut2Eex. Default is P
	#AutoIt3Wrapper_Run_Debug_Mode=N								;~ (Y/N) Run Script with console debugging. Default=N
	;#AutoIt3Wrapper_Autoit3Dir=									;~ Optionally override the AutoIt3 install directory to use.
	;#AutoIt3Wrapper_Aut2exe=										;~ Optionally override the Aut2exe.exe to use for this script
	;#AutoIt3Wrapper_AutoIt3=										;~ Optionally override the Autoit3.exe to use for this script
	;===============================================================================================================
	; Aut2Exe Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Icon=SDK\Themes\Icons\Selfie.ico					 ;~ Filename of the Ico file to use for the compiled exe
	#AutoIt3Wrapper_OutFile_Type=exe								 ;~ exe=Standalone executable (Default); a3x=Tokenised AutoIt3 code file
	#AutoIt3Wrapper_OutFile=Selfie.exe								 ;~ Target exe/a3x filename.
	#AutoIt3Wrapper_OutFile_X64=Selfie_X64.exe						 ;~ Target exe filename for X64 compile.
	;#AutoIt3Wrapper_Compression=4									;~ Compression parameter 0-4  0=Low 2=normal 4=High. Default=2
	;#AutoIt3Wrapper_UseUpx=Y										;~ (Y/N) Compress output program.  Default=Y
	;#AutoIt3Wrapper_UPX_Parameters=								;~ Override the default settings for UPX.
	#AutoIt3Wrapper_Change2CUI=N									 ;~ (Y/N) Change output program to CUI in stead of GUI. Default=N
	#AutoIt3Wrapper_Compile_both=N									 ;~ (Y/N) Compile both X86 and X64 in one run. Default=N
	;===============================================================================================================
	; Target Program Resource info
	;===============================================================================================================
	#AutoIt3Wrapper_Res_Comment=Selfie									;~ Comment field
	#AutoIt3Wrapper_Res_Description=Create Rizonesoft SDK Distribution	;~ Description field
	#AutoIt3Wrapper_Res_Fileversion=1.0.0.138
	#AutoIt3Wrapper_Res_FileVersion_AutoIncrement=Y  					;~ (Y/N/P) AutoIncrement FileVersion. Default=N
	#AutoIt3Wrapper_Res_FileVersion_First_Increment=N					;~ (Y/N) AutoIncrement Y=Before; N=After compile. Default=N
	#AutoIt3Wrapper_Res_HiDpi=Y                      					;~ (Y/N) Compile for high DPI. Default=N
	#AutoIt3Wrapper_Res_ProductVersion=0             					;~ Product Version
	#AutoIt3Wrapper_Res_Language=2057									;~ Resource Language code . Default 2057=English (United Kingdom)
	#AutoIt3Wrapper_Res_LegalCopyright=© 2016 Rizonesoft				;~ Copyright field
	#AutoIt3Wrapper_res_requestedExecutionLevel=asInvoker				;~ asInvoker, highestAvailable, requireAdministrator or None (remove the trsutInfo section).  Default is the setting from Aut2Exe (asInvoker)
	#AutoIt3Wrapper_res_Compatibility=Vista,Win7,Win8,Win81				;~ Vista/Windows7/win7/win8/win81 allowed separated by a comma     (Default=Win81)
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
	#AutoIt3Wrapper_Res_Field=ProductName|Selfie
	#AutoIt3Wrapper_Res_Field=HomePage|http://www.rizonesoft.com
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
	#AutoIt3Wrapper_Res_Icon_Add=SDK\Themes\Icons\SelfieH.ico
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


#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <StaticConstants.au3>
#include <StringConstants.au3>
#include <GuiConstantsEx.au3>
#include <EditConstants.au3>
#include <Constants.au3>
#include <GDIPlus.au3>
#include <GuiMenu.au3>

#include "Includes\ReBar_AutoIt3Script.au3"
#include "Includes\ReBar_Declarations.au3"
#include "Includes\ReBar_ModernMenu.au3"
#include "Includes\ReBar_Versioning.au3"
#include "Includes\ReBar_Functions.au3"
#include "Includes\ReBar_Process.au3"
#include "Includes\ReBar_Logging.au3"
#include "Includes\ReBar_Splash.au3"

#include "UDF\Selfie_Options.au3"

#include "Includes\ReBar_Startup.au3"

Global Const $g_Au3RizonesoftSDK = @ScriptDir & "\Distro.au3"
;===============================================================================================================
; Declarations
;===============================================================================================================
Global $g_DirAutoIt3, $g_CmdAutoIt3
Global $g_DirAutoIt3Beta, $g_CmdAutoIt3Beta
Global $g_DirAutoIt3Wrapper, $g_CmdAutoIt3Wrapper
Global $g_DirUPX, $g_CmdUPX, $g_DirKSign, $g_CmdKSign, $g_DirScite, $g_CmdScite
Global $g_ProcessingAni, $g_ListStatus, $g_ImgStatus, $g_LblStatus
;===============================================================================================================


_SplashStart("Initializing " & $g_ReBarProgName)
_SplashUpdate("Setting Working Directories", 1)
_SetWorkingDirectories()
_SplashUpdate("Checking Integrity", 2)
_CheckResources($g_ReBarResFugue)
_CheckResources($g_ReBarResDoors)
_SplashUpdate("Loading Environment", 3)
_LoadEnvironment()
_SplashUpdate("Building Interface", 4)
_StartCoreGUI()


Func _StartCoreGUI()

	Local $mnuFile, $miFileClose
	Local $mnuTasks, $miTskBuild, $miTskCompressExes, $miTskSign, $miTskDocs, $miTskGit, $miTskDistribute
	Local $mnuHelp, $miHlpHome, $miHlpSupport

	$g_ReBarCoreGui = GUICreate($g_ReBarGuiTitle, $g_ReBarFormWidth, $g_ReBarFormHeight, -1, -1, BitOR($WS_OVERLAPPEDWINDOW, $WS_VISIBLE, $WS_CLIPSIBLINGS))
	GUIRegisterMsg($WM_GETMINMAXINFO, "WM_GETMINMAXINFO")
	GUISetFont($g_ReBarFontSize, 400, -1, $g_ReBarFontName, $g_ReBarCoreGui, $CLEARTYPE_QUALITY)
	If Not @Compiled Then
		GUISetIcon($g_ReBarIcon, 0, $g_ReBarCoreGui)
	EndIf

	$mnuFile = _GUICtrlCreateODTopMenu("&File", $g_ReBarCoreGui)
	$mnuTasks = _GUICtrlCreateODTopMenu("&Tasks", $g_ReBarCoreGui)
	$mnuHelp = _GUICtrlCreateODTopMenu("&Help", $g_ReBarCoreGui)

	_GUICtrlCreateODMenuItem("", $mnuFile)
	$miFileClose = _GUICtrlCreateODMenuItem("&Close" & @TAB & "Esc", $mnuFile, $g_ReBarResFugue, 102)
	_GUICtrlCreateODMenuItem("", $mnuFile)

	$miTskBuild = _GUICtrlCreateODMenuItem("&Build Rizonesoft SDK", $mnuTasks, $g_ReBarResFugue, 109)
	$miTskCompressExes = _GUICtrlCreateODMenuItem("&Compress Executables", $mnuTasks, $g_ReBarResFugue, 110)
	$miTskSign = _GUICtrlCreateODMenuItem("&Sign Executables", $mnuTasks, $g_ReBarResFugue, 111)
	$miTskDocs = _GUICtrlCreateODMenuItem("&Generate Documentation", $mnuTasks, $g_ReBarResFugue, 112)
	_GUICtrlCreateODMenuItem("", $mnuTasks)
	$miTskDistribute = _GUICtrlCreateODMenuItem("Create &Distribution", $mnuTasks, $g_ReBarResFugue, 114)
	$miTskGit = _GUICtrlCreateODMenuItem("Update GitHub Repository", $mnuTasks, $g_ReBarResFugue, 119)

	$g_ReBarAboutMenu = _GUICtrlCreateODMenuItem("&About " & $g_ReBarProgName, $mnuHelp, $g_ReBarResFugue, 103)
	$miHlpHome = _GUICtrlCreateODMenuItem($g_ReBarCompName & " &Home", $mnuHelp, $g_ReBarResFugue, 106)
	_GUICtrlCreateODMenuItem("", $mnuHelp)
	$miHlpSupport = _GUICtrlCreateODMenuItem($g_ReBarCompName & " &Support", $mnuHelp, $g_ReBarResFugue, 101)

	_SetMenuSelectBkColor(0xF7E0C9)
	_SetMenuSelectRectColor(0xE4A262)

	GUICtrlSetOnEvent($miFileClose, "_ShutdownProgram")

	GUICtrlSetOnEvent($miTskBuild, "_BuildRizonesoftSDK")
	GUICtrlSetOnEvent($miTskCompressExes, "_CompressExecutables")
	GUICtrlSetOnEvent($miTskSign, "_SignExecutables")
	GUICtrlSetOnEvent($miTskDistribute, "_CreateDistribution")
	GUICtrlSetOnEvent($miTskGit, "_CopyToGit")
	GUICtrlSetOnEvent($g_ReBarAboutMenu, "_ShowAboutDialog")
	GUICtrlSetOnEvent($miHlpHome, "_OpenHomePageLink")
	GUICtrlSetOnEvent($miHlpSupport, "_OpenSupportLink")

	$g_ReBarGuiIcon = GUICtrlCreateIcon($g_ReBarIcon, 99, 10, 10, 64, 64)
	GUICtrlSetTip($g_ReBarGuiIcon, "Version " & $g_ReBarRunVersion & @CRLF & _
			"Build with AutoIt version " & @AutoItVersion & @CRLF & _
			"Copyright © " & @YEAR & " " & $g_ReBarCompName, _
			"About " & $g_ReBarProgName, $TIP_INFOICON, $TIP_BALLOON)
	GUICtrlSetCursor($g_ReBarGuiIcon, 0)

	$g_ProcessingAni = GUICtrlCreateIcon(@ScriptDir & "\SDK\Themes\Processing\32\Stroke.ani", 0, $g_ReBarFormWidth - 42, 10, 32, 32)
	GUICtrlSetResizing($g_ProcessingAni, BitOR($GUI_DOCKRIGHT, $GUI_DOCKWIDTH, $GUI_DOCKHEIGHT))
	GUICtrlSetState($g_ProcessingAni, $GUI_HIDE)
	GUICtrlCreateLabel("Selfie " & _GetProgramVersion(), 90, 10, 500, 20)
	GUICtrlSetFont(-1, 12, 400)
	$g_LblStatus = GUICtrlCreateLabel("", 90, 35, 500, 20)
	GUICtrlSetFont($g_LblStatus, 10, 400)

	GUICtrlSetOnEvent($g_ReBarGuiIcon, "_ShowAboutDialog")

	$g_ListStatus = GUICtrlCreateListView("", 10, 85, 630, 380, BitOR($LVS_REPORT, $LVS_NOCOLUMNHEADER))
	GUICtrlSetResizing($g_ListStatus, BitOR($GUI_DOCKLEFT, $GUI_DOCKRIGHT, $GUI_DOCKBOTTOM, $GUI_DOCKTOP))
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
	_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -999)
	_GUICtrlListView_SetImageList($g_ListStatus, $g_ImgStatus, 1)

	GUICtrlSetFont($g_ListStatus, 9, -1, -1, "Courier New")
	GUICtrlSetColor($g_ListStatus, 0x222222)

	_SplashUpdate("Initializing Logging Subsystem", 5)
	_LoggingInitialize()

	; This will close the splash page.
	_SplashUpdate("", 100)
	GUISetState(@SW_SHOW, $g_ReBarCoreGui)

	GUISetOnEvent($GUI_EVENT_CLOSE, "_ShutdownProgram", $g_ReBarCoreGui)
	AdlibRegister("_OnMainIconHover", 50)

	While 1

		Sleep(55)
	WEnd

EndFunc   ;==>_StartCoreGUI


Func _StartProcess($sMessage)

	_StartLogging($sMessage)
	GUICtrlSetState($g_ProcessingAni, $GUI_SHOW)
	GUICtrlSetData($g_LblStatus, $sMessage)

EndFunc   ;==>_StartProcess


Func _EndProcess()

	_EndLogging()
	GUICtrlSetState($g_ProcessingAni, $GUI_HIDE)

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


Func _BuildRizonesoftSDK()

	_StartProcess("Building Rizonesoft SDK")

	If FileExists($g_Au3RizonesoftSDK) Then

		If FileExists($g_CmdAutoIt3) Then

			If FileExists($g_CmdAutoIt3Wrapper) Then

				Local $iWrapPID = Run(Chr(34) & $g_CmdAutoIt3 & Chr(34) & Chr(32) & Chr(34) & $g_CmdAutoIt3Wrapper & Chr(34) & _
						" /NoStatus /prod /in " & Chr(34) & $g_Au3RizonesoftSDK & Chr(34), _GetParentPath($g_Au3RizonesoftSDK), @SW_SHOW, $STDOUT_CHILD)

				While 1

					Local $sWrapOutput = StdoutRead($iWrapPID)
					If @error Then ; Exit the loop if the process closes or StdoutRead returns an error.
						ExitLoop
					EndIf

					_AutoIt3Script_WrapperOutPut($sWrapOutput)

				WEnd

			EndIf

		EndIf

	EndIf

	_EndProcess()

EndFunc   ;==>_BuildRizonesoftSDK


Func _CompressExecutables()

	_StartProcess("Compressing Program Executables")

	; Read the INI section labelled 'UPX'. This will return a 2 dimensional array.
	Local $aUPXFiles = IniReadSection($g_ReBarPathIni, "UPX")

	; Check if an error occurred.
	If Not @error Then
		For $x = 1 To $aUPXFiles[0][0]
			_CompressExecutable(@ScriptDir & "\" & $aUPXFiles[$x][1])
		Next
	EndIf

	_EndProcess()

EndFunc   ;==>_CompressExecutables


Func _CompressExecutable($sOutFilePath)

	Local $sUPXParam = "--best --no-backup --overlay=copy --compress-exports=1 --compress-resources=1 --strip-relocs=1"
	Local $iPID

	If FileExists($sOutFilePath) Then

		If FileExists($g_CmdUPX) Then

			Local $sTempOutFile = Chr(34) & $sOutFilePath & Chr(34)
			Local $sTempUPX = Chr(34) & $g_CmdUPX & Chr(34)

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


Func _SignExecutables()

	_StartProcess("Signing Executables")

	If FileExists($g_CmdKSign) Then

		_EditLoggingWrite("Checking connection to the Comodo Timestamp Server.")
		Local $iPing = Ping("timestamp.comodoca.com", 5000)
		Local $iPingError = @error

		If $iPing Then

			_EditLoggingWrite("Response Received: " & $iPing & " milliseconds.")

			Local $sCertInfoIni = IniRead($g_ReBarPathIni, "Signing", "CertificateSet", "Signing\Certum.ini")
			Local $sCertInfoPath = @ScriptDir & "\" & _CleanDirectoryName($sCertInfoIni)
			Local $sCertWorkPath = _GetParentPath($sCertInfoPath)
			Local $sCertBaseName = IniRead($sCertInfoPath, "Certificate", "CertificateName", "Certum.p12")
			Local $sCertPath = $sCertWorkPath & $sCertBaseName

			If FileExists($sCertInfoPath) Then

				_EditLoggingWrite("Certificate Information loaded from [" & $sCertInfoPath & "]")

				Local $sDescription = IniRead($g_ReBarPathIni, "Signing", "Description", "Rizonesoft SDK")
				Local $sWebsite = IniRead($g_ReBarPathIni, "Signing", "Website", "http://wwww.rizonesoft.com")
				Local $sPassword = IniRead($sCertInfoPath, "Certificate", "Password", "*************")

				If FileExists($sCertPath) Then

					_EditLoggingWrite("Certificate loaded: [" & $sCertPath & "]")

					Local $aFilesSign = IniReadSection($g_ReBarPathIni, "UPX")

					; Check if an error occurred.
					If Not @error Then

						For $x = 1 To $aFilesSign[0][0]

							Local $sFileToSign = @ScriptDir & "\" & $aFilesSign[$x][1]
							_SignExecutable($sCertPath, $sFileToSign, $sDescription, $sWebsite, $sPassword)

						Next

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

	_EndProcess()

EndFunc   ;==>_SignExecutables


Func _SignExecutable($sCertPath, $sFileToSign, $sDescription, $sWebsite, $sPassword)

	Local $signPID = ProcessExists("kSignCMD.exe")
	If $signPID Then
		_EditLoggingWrite("kSignCMD.exe (" & $signPID & ") Running!")
		_EditLoggingWrite("Closing kSignCMD.exe...")
		ProcessClose("kSignCMD.exe")
	EndIf

	Local $sPassMsk = ""
	Local $iPassLen = StringLen($sPassword)
	For $i = 1 To $iPassLen
		$sPassMsk &= "*"
	Next

	_EditLoggingWrite("Description: " & $sDescription)
	_EditLoggingWrite("Website: " & $sWebsite)
	_EditLoggingWrite("Password: " & $sPassMsk)
	_EditLoggingWrite("Signing: " & $sFileToSign)

	Local $iPID = Run($g_CmdKSign & " /d " & Chr(34) & $sDescription & Chr(34) & " /du " & Chr(34) & $sWebsite & Chr(34) & _
		" /f " & Chr(34) & $sCertPath & Chr(34) & " /p " & $sPassword & Chr(32) & $sFileToSign, "", @SW_HIDE)

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

EndFunc


Func _CreateDistribution()

	Local $sDistroExeName = IniRead($g_ReBarPathIni, "Distribution", "SDKExe", "Distro.exe")
	Local $sDistroExePath = @ScriptDir & "\" & $sDistroExeName
	Local $sDistroBuild = _GetProgramVersionFromFile($sDistroExePath, 4)
	Local $sDistroDir = @ScriptDir & "\Distribution\RizonesoftSDK_" & $sDistroBuild


	_StartProcess("Creating Distribution")
	DirCreate($sDistroDir)

	_EditLoggingWrite("Building File List")
	Local $aDisFileList = _FileListToArrayRec(@ScriptDir, "*",  $FLTAR_FILESFOLDERS, 1)

    If @error = 1 Then
		_EditLoggingWrite("Error: Invalid Source Path")
		_EditLoggingWrite("^ [" & @ScriptDir & "]")
    EndIf

	For $a = 1 To $aDisFileList[0]

		If _ValidateExcludes($aDisFileList[$a]) Then ContinueLoop
		If StringInStr(FileGetAttrib(@ScriptDir & "\" & $aDisFileList[$a]), "D") Then
			_DistributeDirectory($sDistroDir & "\" & $aDisFileList[$a])
		Else
			_DistributeFile(@ScriptDir & "\" & $aDisFileList[$a], $sDistroDir & "\" & $aDisFileList[$a])
		EndIf

	Next

	IniWrite($sDistroDir & "\Signing\Certum.ini", "Certificate", "Password", "**********")
	IniWrite($g_ReBarPathIni, "Environment", "DistributionPath", $sDistroDir)
	_EndProcess()

EndFunc


Func _ValidateExcludes($sFileName)

	Local $aExcludes = IniReadSection($g_ReBarPathIni, "Excludes")
	If Not @error Then
		For $x = 1 To $aExcludes[0][0]
			If StringLeft($sFileName, StringLen($aExcludes[$x][1])) = $aExcludes[$x][1] Then
				Return True
			EndIf
		Next
	EndIf

	Return False

EndFunc


Func _CleanDirectoryName($sFileName)

	If StringCompare(StringLeft($sFileName, 1), "\") = 0 Then
		Return StringTrimLeft($sFileName, 1)
	Else
		Return $sFileName
	EndIf

EndFunc   ;==>_CleanDirectoryName


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


Func _LoadEnvironment()

	Local $aAutoItInfo = _GetProgramInstallInfo("AutoIt3\Uninstall.exe")
	Local $aAutoItBetaInfo = _GetProgramInstallInfo("AutoIt3\Beta\Uninstall.exe")
	Local $aSciteInfo = _GetProgramInstallInfo("AutoIt3\SciTE\uninst.exe")
	Local $aKSignInfo = _GetProgramInstallInfo("kSign\unins000.exe")
	Local $aInnoInfo = _GetProgramInstallInfo("Inno Setup 5\unins000.exe")
	Local $a7zip = _GetProgramInstallInfo("7-Zip\Uninstall.exe")

	$g_DirAutoIt3 = $aAutoItInfo[7]
	$g_CmdAutoIt3 = $g_DirAutoIt3 & "AutoIt3.exe"
	$g_DirAutoIt3Beta = $aAutoItBetaInfo[7]
	$g_CmdAutoIt3Beta = $g_DirAutoIt3Beta & "AutoIt3.exe"
	$g_DirScite = $aSciteInfo[7]
	$g_CmdScite = $g_DirScite & "SciTE.exe"
	$g_DirKSign = $aKSignInfo[7]
	$g_CmdKSign = $g_DirKSign & "kSignCMD.exe"

	$g_CmdUPX = @ScriptDir & "\SDK\Bin\UPX\upx.exe"
	$g_DirUPX = _GetParentPath($g_CmdUPX)

	If FileExists($g_DirScite & "AutoIt3Wrapper\AutoIt3Wrapper.au3") Then
		$g_DirAutoIt3Wrapper = $g_DirScite & "AutoIt3Wrapper\"
		$g_CmdAutoIt3Wrapper = $g_DirAutoIt3Wrapper & "AutoIt3Wrapper.au3"
	EndIf

EndFunc   ;==>_LoadEnvironment


Func _GetProgramInstallInfo($sSearch)

	Local $sUninstallK = "", $sSubK = "", $aInfo[8]

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

			$aInfo[0] = 1
			$aInfo[1] = RegRead($sFullK, "DisplayIcon")
			$aInfo[2] = $sDisplayName
			$aInfo[3] = RegRead($sFullK, "DisplayVersion")
			$aInfo[4] = RegRead($sFullK, "Publisher")
			$aInfo[5] = RegRead($sFullK, "InstallLocation")
			$aInfo[6] = $sUninstallPath

			Local $sCleanUnPath = StringReplace($aInfo[6], Chr(34), "")

			If $sCleanUnPath <> "" Then

				Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
				Local $aPathSplit = _PathSplit($sCleanUnPath, $sDrive, $sDir, $sFileName, $sExtension)

				$aInfo[7] = $sDrive & $sDir

			EndIf

			ExitLoop

		Else

			$aInfo[0] = 0
			$aInfo[1] = ""
			$aInfo[2] = ""
			$aInfo[3] = ""
			$aInfo[4] = ""
			$aInfo[5] = ""
			$aInfo[6] = ""
			$aInfo[7] = ""

		EndIf

	Next

	Return $aInfo

EndFunc   ;==>_GetProgramInstallInfo


Func _CopyToGit()

	_StartProcess("Updating GitHub Repository")
	_EditLoggingWrite("Cleaning GitHub Repository")
	_CleanGitDirectory()

	Local $sDistroDir = IniRead($g_ReBarPathIni, "Environment", "DistributionPath", "")
	Local $sGitDir = @ScriptDir & "\GitHub\SDK"

	If FileExists($sDistroDir) Then

		_EditLoggingWrite("Building File List")
		Local $aGitFiles = _FileListToArrayRec($sDistroDir, "*",  $FLTAR_FILESFOLDERS, 1)

		If @error = 1 Then
			_EditLoggingWrite("Error: Invalid Source Path")
			_EditLoggingWrite("^ [" & $sDistroDir & "]")
		EndIf

		For $a = 1 To $aGitFiles[0]

		If _ValidateExcludes($aGitFiles[$a]) Then ContinueLoop
			If StringInStr(FileGetAttrib($sDistroDir & "\" & $aGitFiles[$a]), "D") Then
				_DistributeDirectory($sGitDir & "\" & $aGitFiles[$a])
			Else
				_DistributeFile($sDistroDir & "\" & $aGitFiles[$a], $sGitDir & "\" & $aGitFiles[$a])
			EndIf

		Next

	EndIf

	_EndProcess()

EndFunc


Func _SignSelfie($sFileToSign)

	If FileExists($g_CmdKSign) Then

		_EditLoggingWrite("Checking connection to the Comodo Timestamp Server.")
		Local $iPing = Ping("timestamp.comodoca.com", 5000)
		Local $iPingError = @error

		If $iPing Then

			_EditLoggingWrite("Response Received: " & $iPing & " milliseconds.")

			Local $sCertInfoIni = IniRead($g_ReBarPathIni, "Signing", "CertificateSet", "Signing\Certum.ini")
			Local $sCertInfoPath = @ScriptDir & "\" & _CleanDirectoryName($sCertInfoIni)
			Local $sCertWorkPath = _GetParentPath($sCertInfoPath)
			Local $sCertBaseName = IniRead($sCertInfoPath, "Certificate", "CertificateName", "Certum.p12")
			Local $sCertPath = $sCertWorkPath & $sCertBaseName

			If FileExists($sCertInfoPath) Then

				Local $sPassword = IniRead($sCertInfoPath, "Certificate", "Password", "*************")
				_EditLoggingWrite("Certificate Information loaded from [" & $sCertInfoPath & "]")

				Local $sDescription = IniRead($g_ReBarPathIni, "Signing", "SelfieDescription", "Rizonesoft SDK Selfie")
				Local $sWebsite = IniRead($g_ReBarPathIni, "Signing", "Website", "http://wwww.rizonesoft.com")

				If FileExists($sCertPath) Then

					_SignExecutable($sCertPath, $sFileToSign, $sDescription, $sWebsite, $sPassword)

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

EndFunc


Func _CleanGitDirectory()

	Local $hGitSearch = FileFindFirstFile(@ScriptDir & "\GitHub\SDK\*.*")
	If $hGitSearch = -1 Then
        Return False
    EndIf

	Local $sGitFileName = "", $sGitPath = ""
	While 1

        $sGitFileName = FileFindNextFile($hGitSearch)
        If @error Then ExitLoop

		If StringInStr($sGitFileName, ".git") Then
			ContinueLoop
		EndIf

		$sGitPath = @ScriptDir & "\GitHub\SDK\" & $sGitFileName

		If StringInStr(FileGetAttrib($sGitPath), "D") Then
			DirRemove($sGitPath, 1)
		Else
			FileDelete($sGitPath)
		EndIf

    WEnd

    ; Close the search handle.
    FileClose($hGitSearch)


EndFunc


Func _DistributeFile($sSourcePath, $sDestPath)

	If Not FileExists($sSourcePath) Then
		_EditLoggingWrite("ERROR: The Source File does not exist:")
		_EditLoggingWrite("^ " & Chr(34) & $sSourcePath & Chr(34))
		Return SetError(1, 0, 0)
	EndIf

	If Not FileCopy($sSourcePath, $sDestPath, $FC_OVERWRITE + $FC_CREATEPATH) Then
		_EditLoggingWrite("ERROR: Could not create file:")
		_EditLoggingWrite("^ " & Chr(34) & $sSourcePath & Chr(34))
		Return SetError(1, 0, 0)
	EndIf

	_EditLoggingWrite("File Copied: " & Chr(34) & StringReplace($sDestPath, @ScriptDir, "") & Chr(34))
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

	_EditLoggingWrite("Directory Created: " & Chr(34) & StringReplace($sDestPath, @ScriptDir, "") & Chr(34))
	Return 1

EndFunc   ;==>_DistributeDirectory


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


;~ Func _AutoItWrapperOutputReplace($sOutput)

;~ 	Local $sReturn = $sOutput
;~ 	$sReturn = StringReplace($sReturn, "+>", "(::n::)+>")
;~ 	$sReturn = StringReplace($sReturn, "...>", "(::n::)...>")
;~ 	$sReturn = StringReplace($sReturn, ">Running:", "(::n::)>Running:")
;~ 	$sReturn = StringReplace($sReturn, ">", "> ")

;~ 	Return $sReturn

;~ EndFunc   ;==>_AutoItWrapperOutputReplace


#include "Includes\ReBar_End.au3"
