#NoTrayIcon
#OnAutoItStartRegister "_ReBarStartUp"

#Region AutoIt3Wrapper Directives Section

#AutoIt3Wrapper_ShowProgress=Y									;~ (Y/N) Show ProgressWindow during Compile. Default=Y
;===============================================================================================================
; AutoIt3 Settings
;===============================================================================================================
#AutoIt3Wrapper_UseX64=Y										;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
#AutoIt3Wrapper_Version=B                        				;~ (B/P) Use Beta or Production for AutoIt3 and Aut2Eex. Default is P
#AutoIt3Wrapper_Run_Debug_Mode=N								;~ (Y/N) Run Script with console debugging. Default=N
;#AutoIt3Wrapper_Autoit3Dir=									;~ Optionally override the AutoIt3 install directory to use.
;#AutoIt3Wrapper_Aut2exe=										;~ Optionally override the Aut2exe.exe to use for this script
;#AutoIt3Wrapper_AutoIt3=										;~ Optionally override the Autoit3.exe to use for this script
;===============================================================================================================
; Aut2Exe Settings
;===============================================================================================================
#AutoIt3Wrapper_Icon=Themes\Icons\ReBar.ico						;~ Filename of the Ico file to use for the compiled exe
#AutoIt3Wrapper_OutFile_Type=exe								;~ exe=Standalone executable (Default); a3x=Tokenised AutoIt3 code file
#AutoIt3Wrapper_OutFile=ReBar.exe								;~ Target exe/a3x filename.
#AutoIt3Wrapper_OutFile_X64=ReBar_X64.exe						;~ Target exe filename for X64 compile.
;#AutoIt3Wrapper_Compression=4									;~ Compression parameter 0-4  0=Low 2=normal 4=High. Default=2
;#AutoIt3Wrapper_UseUpx=Y										;~ (Y/N) Compress output program.  Default=Y
;#AutoIt3Wrapper_UPX_Parameters=								;~ Override the default settings for UPX.
#AutoIt3Wrapper_Change2CUI=N									;~ (Y/N) Change output program to CUI in stead of GUI. Default=N
#AutoIt3Wrapper_Compile_both=Y									;~ (Y/N) Compile both X86 and X64 in one run. Default=N
;===============================================================================================================
; Target Program Resource info
;===============================================================================================================
#AutoIt3Wrapper_Res_Comment=ReBar Framework							;~ Comment field
#AutoIt3Wrapper_Res_Description=AutoIt Application Framework      	;~ Description field
#AutoIt3Wrapper_Res_Fileversion=5.0.2.1995
#AutoIt3Wrapper_Res_FileVersion_AutoIncrement=Y  					;~ (Y/N/P) AutoIncrement FileVersion. Default=N
#AutoIt3Wrapper_Res_FileVersion_First_Increment=N					;~ (Y/N) AutoIncrement Y=Before; N=After compile. Default=N
#AutoIt3Wrapper_Res_HiDpi=Y                      					;~ (Y/N) Compile for high DPI. Default=N
#AutoIt3Wrapper_Res_ProductVersion=5             					;~ Product Version
#AutoIt3Wrapper_Res_Language=2057									;~ Resource Language code . Default 2057=English (United Kingdom)
#AutoIt3Wrapper_Res_LegalCopyright=© 2018 Rizonesoft				;~ Copyright field
#AutoIt3Wrapper_res_requestedExecutionLevel=highestAvailable		;~ asInvoker, highestAvailable, requireAdministrator or None (remove the trsutInfo section).  Default is the setting from Aut2Exe (asInvoker)
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
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\ReBarH.ico					; 201

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Information.ico		; 202
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Complete.ico			; 203
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Cross.ico			 	; 204
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Exclamation.ico		; 205
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Smiley-Glass.ico		; 206
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Skull.ico				; 207
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Snowman.ico			; 208

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Update.ico					; 209
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Error.ico						; 210

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Check.ico				; 211
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Error.ico				; 212
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Gear.ico				; 213
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Information.ico		; 214
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Love.ico				; 215

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\PayPal.ico				; 216
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\PayPalH.ico				; 217
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\sa.ico					; 218
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\saH.ico					; 219
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\Facebook.ico			; 220
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\FacebookH.ico			; 221
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\Twitter.ico				; 222
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\TwitterH.ico			; 223
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GooglePlus.ico			; 224
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GooglePlusH.ico			; 225
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GitHub.ico				; 226
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GitHubH.ico				; 227

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\af.ico					; 228
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ar.ico					; 229
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\bg.ico					; 230
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\cs.ico					; 231
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\da.ico					; 232
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\de.ico					; 233
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\el.ico					; 234
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\en.ico					; 235
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\es.ico					; 236
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\fr.ico					; 237
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\hi.ico					; 238
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\hr.ico					; 239
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\id.ico					; 240
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\is.ico					; 241
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\it.ico					; 242
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\iw.ico					; 243
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ja.ico					; 244
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ko.ico					; 245
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\nl.ico					; 246
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\no.ico					; 247
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\pl.ico					; 248
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\pt.ico					; 249
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ro.ico					; 250
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ru.ico					; 251
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\sk.ico					; 252
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\sv.ico					; 253
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\th.ico					; 254
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\tr.ico					; 255
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\vi.ico					; 256
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\zh-CN.ico				; 257

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Update.ico				; 258
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Home.ico				; 259
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Mail.ico				; 260
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\GitHub.ico				; 261
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\About.ico				; 262
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Logbook.ico				; 263
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Close.ico				; 264

;===============================================================================================================
; Tidy Settings
;===============================================================================================================
;#AutoIt3Wrapper_Run_Tidy=N										;~ (Y/N) Run Tidy before compilation. Default=N
;#AutoIt3Wrapper_Tidy_Stop_OnError=              				;~ (Y/N) Continue when only Warnings. Default=Y
;#Tidy_Parameters=                               				;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
;===============================================================================================================
; Au3Stripper Settings
;===============================================================================================================
#AutoIt3Wrapper_Run_Au3Stripper=N								;~ (Y/N) Run Au3Stripper before compilation. default=N
;#Au3Stripper_Parameters=										;~ Au3Stripper parameters...see SciTE4AutoIt3 Helpfile for options
;#Au3Stripper_Ignore_Variables=
;===============================================================================================================
; AU3Check settings
;===============================================================================================================
#AutoIt3Wrapper_Run_AU3Check=Y									;~ (Y/N) Run au3check before compilation. Default=Y
;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
#AutoIt3Wrapper_AU3Check_Stop_OnWarning=Y 						;~ (Y/N) Continue/Stop on Warnings.(Default=N)
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

#EndRegion AutoIt3Wrapper Directives Section


Opt("CaretCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("ExpandEnvStrings", 1)			;~ 0=don't expand, 1=do expand
Opt("ExpandVarStrings", 1)			;~ 0=don't expand, 1=do expand
Opt("GUICloseOnESC", 0)				;~ 1=ESC  closes, 0=ESC won't close
Opt("GUICoordMode", 1)				;~ 1=absolute, 0=relative, 2=cell
Opt("GUIDataSeparatorChar", "|")	;~ "|" is the default
Opt("GUIOnEventMode", 1)			;~ 0=disabled, 1=OnEvent mode enabled
Opt("GUIResizeMode", 802)			;~ 0=no resizing, <1024 special resizing
Opt("GUIEventOptions", 0)			;~ 0=default, 1=just notification, 2=GUICtrlRead tab index
Opt("MouseClickDelay", 10)			;~ 10 milliseconds
Opt("MouseClickDownDelay", 10)		;~ 10 milliseconds
Opt("MouseClickDragDelay", 250)		;~ 250 milliseconds
Opt("MouseCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("MustDeclareVars", 1)			;~ 0=no, 1=require pre-declaration
Opt("PixelCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("SendAttachMode", 0)			;~ 0=don't attach, 1=do attach
Opt("SendCapslockMode", 1)			;~ 1=store and restore, 0=don't
Opt("SendKeyDelay", 5)				;~ 5 milliseconds
Opt("SendKeyDownDelay", 1)			;~ 1 millisecond
Opt("TCPTimeout", 100)				;~ 100 milliseconds
Opt("TrayAutoPause", 1)				;~ 0=no pause, 1=Pause
Opt("TrayIconDebug", 1)				;~ 0=no info, 1=debug line info
Opt("TrayIconHide", 1)				;~ 0=show, 1=hide tray icon
Opt("TrayMenuMode", 1)				;~ 0=append, 1=no default menu, 2=no automatic check, 4=menuitemID  not return
Opt("TrayOnEventMode", 1)			;~ 0=disable, 1=enable
Opt("WinDetectHiddenText", 0)		;~ 0=don't detect, 1=do detect
Opt("WinSearchChildren", 1)			;~ 0=no, 1=search children also
Opt("WinTextMatchMode", 1)			;~ 1=complete, 2=quick
Opt("WinTitleMatchMode", 4)			;~ 1=start, 2=subStr, 3=exact, 4=advanced, -1 to -4=Nocase
Opt("WinWaitDelay", 250)			;~ 250 milliseconds


Func _ReBarStartUp()
EndFunc   ;==>_ReBarStartUp


#include <GuiConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Misc.au3>

#include "..\..\Includes\About.au3"
#include "..\..\Includes\Donate.au3"
#include "..\..\Includes\GuiMenuEx.au3"
#include "..\..\Includes\ImageListEx.au3"
#include "..\..\Includes\Link.au3"
#include "..\..\Includes\Logging.au3"
#include "..\..\Includes\Splash.au3"
#include "..\..\Includes\StringEx.au3"
#include "..\..\Includes\Update.au3"
#include "..\..\Includes\Versioning.au3"

#include "UDF\Localization.au3"


;~ Constants
Global Const $CNT_MENUICONS		= 8
Global Const $CNT_LOGICONS		= 7

;~ General Settings
Global $g_sCompanyName			= "Rizonesoft"
Global $g_sProgShortName		= "ReBar"
Global $g_sProgShortName_X64	= $g_sProgShortName & "_X64"
Global $g_sProgName				= "ReBar Framework"
Global $g_iSingleton			= True
Global $g_sUrlCompHomePage		= "https://goo.gl/m4Bhqe|www.rizonesoft.com"							; https://www.rizonesoft.com
Global $g_sUrlContact			= "https://goo.gl/X1kR2a|www.rizonesoft.com/contact"					; https://www.rizonesoft.com/contact
Global $g_sUrlDownloads			= "https://goo.gl/BWhZ4G|www.rizonesoft.com/downloads"					; https://www.rizonesoft.com/downloads/
Global $g_sUrlFacebook			= "https://goo.gl/o1wRdC|Facebook.com/rizonesoft"						; https://www.facebook.com/rizonesoft
Global $g_sUrlTwitter			= "https://goo.gl/Rcc5Wz|Twitter.com/Rizonesoft"						; https://twitter.com/Rizonesoft
Global $g_sUrlGooglePlus		= "https://goo.gl/oNirJT|Plus.google.com/+Rizonesoftsa" 				; https://plus.google.com/+Rizonesoftsa/posts
Global $g_sUrlRSS				= "https://goo.gl/s1kUi4|www.rizonesoft.com/feed"						; https://www.rizonesoft.com/feed
Global $g_sUrlPayPal			= "https://goo.gl/WkkaUm|PayPal.me/rizonesoft"							; https://www.paypal.me/rizonesoft
Global $g_sUrlGitHub			= "https://goo.gl/xSVA2p|GitHub.com/rizonesoft/SDK"						; https://github.com/rizonesoft/SDK
Global $g_sUrlGitHubIssues		= "https://goo.gl/AYwYWv|GitHub.com/rizonesoft/SDK/issues"				; https://github.com/rizonesoft/SDK/issues
Global $g_sUrlSA				= "https://goo.gl/Fn6UKQ|Wikipedia.org/wiki/South_Africa"				; https://en.wikipedia.org/wiki/South_Africa
Global $g_sUrlProgPage			= "https://goo.gl/2oGi56|www.rizonesoft.com/downloads/rizonesoft-sdk/"	; https://www.rizonesoft.com/downloads/rizonesoft-sdk/


;~ Path Settings
Global $g_sWorkingDir		= @ScriptDir ;~ Working Directory
Global $g_sRootDir			= @ScriptDir ;~ Root Directory
Global $g_sPathIni			= $g_sWorkingDir & "\" & $g_sProgShortName & ".ini" ;~ Full Path to the Configuaration file
Global $g_sAppDataRoot		= @AppDataDir & "\" & $g_sCompanyName & "\" & $g_sProgShortName
Global $g_sThemesDir		= $g_sRootDir & "\Themes" ;~ Themes Directory
Global $g_sDocsDir			= $g_sRootDir & "\Documents\" & $g_sProgShortName ;~ Documentation Directory
Global $g_sDocHelpFile		= $g_sDocsDir & "\" & $g_sProgShortName & ".chm"
Global $g_sDocChanges		= $g_sDocsDir & "\Changes.txt"
Global $g_sDocLicense		= $g_sDocsDir & "\License.txt"
Global $g_sDocReadme		= $g_sDocsDir & "\Readme.txt"

;~ Language Settings
Global $g_sLanguageDir		= $g_sRootDir & "\Language\" & $g_sProgShortName
Global $g_sLanguageFile		= $g_sLanguageDir & "\af.ini"

;~ Resources
Global $g_iUpdateIconStart				= 209
Global $g_iDialogIconStart				= 211
Global $g_iAboutIconStart				= 216
Global $g_iMenuIconsStart				= 258
Global $g_aCoreIcons[3]
Global $g_iSizeIcon						= 64
Global $g_aLognIcons[$CNT_LOGICONS]
Global $g_aMenuIcons[$CNT_MENUICONS]

;~ Logging Settings
Global $g_sLoggingRoot		= $g_sWorkingDir & "\Logging\" & $g_sProgShortName
Global $g_sLoggingPath		= $g_sLoggingRoot & "\" & $g_sProgShortName & ".log"
Global $g_GuiLogBoxHeight	= 150
Global $g_iLogIconStart		= -202
Global $g_iUpdateSubStatus	= True

;~ Cache Settings
Global $g_sCacheRoot		= $g_sWorkingDir & "\Cache\" & $g_sProgShortName
Global $g_iEnableCache		= 1

;~ Splash Page Settings
Global $g_SplashAnimation 	= $g_sThemesDir & "\Processing\32\Stroke.ani"
Global $g_iSplashDelay		= 100

;~ Update Notification Settings
Global $g_sUpdateAnimation	= $g_sThemesDir & "\Processing\" & $g_iSizeIcon & "\Globe.ani"
Global $g_sRemoteUpdateFile	= "https://www.rizonesoft.com/update/" & $g_sProgShortName & ".ru"
Global $g_iCheckForUpdates	= 4

;~ Donate Time
Global $g_iUptimeMonitor	= 0
Global $g_iDonateTime		= 0
Global $g_iDonateTimeSet	= 259200 ; 10800 = 3 Hours | 86400 = Day | 259200 = 3 Days (Default) | 432000 = 5 Days

;~ Title Settings
Global $g_TitleShowAdmin	= True	;~ Show whether program is running as Administrator
Global $g_TitleShowArch		= True	;~ Show program architecture
Global $g_TitleShowVersion	= True	;~ Show program version
Global $g_TitleShowBuild	= True	;~ Show program build
Global $g_TitleShowAutoIt	= True	;~ Show AutoIt version

;~ Interface Settings
Global $g_iCoreGuiWidth		= 650
Global $g_iCoreGuiHeight	= 500
Global $g_iMsgBoxTimeOut	= 60

;~ About Dialog
Global $g_sAboutCredits		= "Derick Payne (Rizonesoft), Brian J Christy (Beege), " & _
							"G Sandler (MrCreatoR), Holger Kotsch, KaFu, LarsJ, nickston, ProgAndy, Yashied"
Global $g_sProgramTitle = _GUIGetTitle($g_sProgName)	;~ Get Program Ttile, including version.
Global $g_hCoreGui										;~ Main GUI
Global $g_hGuiIcon										;~ Main Icon
Global $g_AniUpdate
Global $g_hMenuFile, $g_hMenuFileLog
Global $g_hMenuHelp, $g_hUpdateMenuItem
Global $g_hMenuDebug
Global $g_OldSystemParam								;~ Used when resizing the main GUI
Global $g_hSubHeading


_Localization_Messages()   		;~ Load Message Language Strings
If _Singleton($g_sProgramTitle, 1) = 0 And $g_iSingleton = True Then
	MsgBox($MB_SYSTEMMODAL + $MB_ICONINFORMATION, $g_aLangMessages[3], $g_aLangMessages[4], $g_iMsgBoxTimeOut)
	Exit
EndIf


If @OSVersion = "WIN_2000" Or @OSVersion = "WIN_XPe" Or @OSVersion = "WIN_2003" Then
	Local $iMsgBoxResult = MsgBox($MB_YESNO + $MB_ICONERROR + $MB_TOPMOST, $g_aLangMessages[3], StringFormat($g_aLangMessages[5], _
				_Link_Split($g_sUrlContact, 2)), $g_iMsgBoxTimeOut)
	Switch $iMsgBoxResult
		Case $IDYES
			ShellExecute(_Link_Split($g_sUrlContact))
			_TerminateProgram()
		Case -1, $IDNO
			_TerminateProgram()
	EndSwitch
Else

	If Not @AutoItX64 And @OSArch = "X64" Then

		Local $s64BitExePath = @ScriptDir & "\" & $g_sProgShortName_X64 & ".exe"

		If FileExists($s64BitExePath) Then
			ShellExecute($s64BitExePath)
			_TerminateProgram()
		Else

			Local $iMsgBoxResult = MsgBox($MB_YESNO + $MB_ICONWARNING + $MB_TOPMOST, $g_aLangMessages[3], StringFormat($g_aLangMessages[6], _
					_Link_Split($g_sUrlDownloads, 2)), $g_iMsgBoxTimeOut)

			Switch $iMsgBoxResult
				Case $IDYES
					ShellExecute(_Link_Split($g_sUrlDownloads))
					_TerminateProgram()
				Case -1, $IDNO
					_TerminateProgram()
			EndSwitch

		EndIf

	Else

		_Splash_Start($g_aLangMessages[7])
		_Splash_Update($g_aLangMessages[8], 2)
		_Localization_Messages()    ;~ Load Message Language Strings
		_Localization_Messages2()	;~ Load Custom Message Language Strings
		_Localization_Menus()		;~ Load Menu Language Strings
		_Localization_Custom()		;~ Load Custom Language Strings
		_Localization_About()		;~ Load Language Strings
		_Splash_Update($g_aLangMessages[9], 4)
		_SetResources()
		_Splash_Update($g_aLangMessages[10], 6)
		_SetWorkingDirectories()
		_Splash_Update($g_aLangMessages[11], 8)
		_Logging_Initialize($g_sProgName)
		_Splash_Update($g_aLangMessages[12], 10)
		_LoadConfiguration()
		_Splash_Update($g_aLangMessages[13], 12)
		_SetHotKeys()
		_Splash_Update($g_aLangMessages[14], 14)
		_StartCoreGui()

	EndIf

EndIf


Func _SetHotKeys()

	HotKeySet("{ESC}", "_MinimizeProgram")

EndFunc


Func _StartCoreGui()

	Local $miFileOptions, $miLogOpenFile, $miLogOpenRoot, $miFileClose
	Local $miHelpHome, $miHelpDownloads, $miHelpContact, $miHelpGitHub, $miHelpDonate, $miHelpAbout
	Local $hHeading

	$g_hCoreGui = GUICreate($g_sProgramTitle, $g_iCoreGuiWidth, $g_iCoreGuiHeight, -1, 25, $WS_OVERLAPPEDWINDOW)
	If Not @Compiled Then GUISetIcon($g_aCoreIcons[0])
	GUISetFont(8.5, 400, -1, "Verdana", $g_hCoreGui, $CLEARTYPE_QUALITY)
	GUISetOnEvent($GUI_EVENT_CLOSE, "_ShutdownProgram", $g_hCoreGui)

	GUIRegisterMsg($WM_GETMINMAXINFO, "WM_GETMINMAXINFO")
	GUIRegisterMsg($WM_EXITSIZEMOVE, "WM_EXITSIZEMOVE")
	GUIRegisterMsg($WM_SYSCOMMAND, "WM_SYSCOMMAND")

	$g_hMenuFile = GUICtrlCreateMenu($g_aLangMenus[0])
	$g_hMenuHelp = GUICtrlCreateMenu($g_aLangMenus[6])
	$g_hMenuDebug = GUICtrlCreateMenu($g_aLangMenus[15])

	_GuiCtrlMenuEx_SetMenuIconBkColor(0xF0F0F0)
	_GuiCtrlMenuEx_SetMenuIconBkGrdColor(0xFFFFFF)

	$miFileOptions = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[1], $g_hMenuFile, $g_aMenuIcons[7], $g_iDialogIconStart + 2)
	$g_hMenuFileLog = _GuiCtrlMenuEx_CreateMenu($g_aLangMenus[2], $g_hMenuFile)
	$miLogOpenFile = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[3], $g_hMenuFileLog, $g_aMenuIcons[5], $g_iMenuIconsStart + 5)
	$miLogOpenRoot = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[4], $g_hMenuFileLog)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuFile)
	$miFileClose = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[5], $g_hMenuFile, $g_aMenuIcons[6], $g_iMenuIconsStart + 6)

	$g_hUpdateMenuItem = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[7], $g_hMenuHelp, $g_aMenuIcons[0], $g_iMenuIconsStart)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpHome = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[8], $g_hMenuHelp, $g_aMenuIcons[1], $g_iMenuIconsStart + 1)
	$miHelpDownloads = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[10], $g_hMenuHelp)
	$miHelpContact = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[11], $g_hMenuHelp, $g_aMenuIcons[2], $g_iMenuIconsStart + 2)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpGitHub = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[12], $g_hMenuHelp, $g_aMenuIcons[3], $g_iMenuIconsStart + 3)
	$miHelpDonate = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[13], $g_hMenuHelp)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpAbout = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[14], $g_hMenuHelp, $g_aMenuIcons[4], $g_iMenuIconsStart + 4)

	GUICtrlSetOnEvent($miLogOpenFile, "_Logging_OpenFile")
	GUICtrlSetOnEvent($miLogOpenRoot, "_Logging_OpenDirectory")
	GUICtrlSetOnEvent($miFileClose, "_ShutdownProgram")

	GUICtrlSetOnEvent($g_hUpdateMenuItem, "_CheckForUpdates")
	GUICtrlSetOnEvent($miHelpHome, "_About_HomePage")
	GUICtrlSetOnEvent($miHelpDownloads, "_About_Downloads")
	GUICtrlSetOnEvent($miHelpContact, "_About_Contact")
	GUICtrlSetOnEvent($miHelpGitHub, "_About_GitHubIssues")
	GUICtrlSetOnEvent($miHelpDonate, "_About_PayPal")
	GUICtrlSetOnEvent($miHelpAbout, "_About_ShowDialog")

	$g_hGuiIcon = GUICtrlCreateIcon($g_aCoreIcons[0], 99, 10, 10, $g_iSizeIcon, $g_iSizeIcon)
	GUICtrlSetTip($g_hGuiIcon, $g_aLangAbout[1] & Chr(32) & _GetProgramVersion(0) & @CRLF & _
			$g_aLangAbout[2] & Chr(32) & @AutoItVersion & @CRLF & _
			$g_aLangAbout[3] & " © " & @YEAR & " " & $g_sCompanyName, _
			$g_aLangAbout[0], $TIP_INFOICON, $TIP_BALLOON)
	GUICtrlSetCursor($g_hGuiIcon, 0)
	GUICtrlSetOnEvent($g_hGuiIcon, "_About_ShowDialog")
	$g_AniUpdate = GUICtrlCreateIcon($g_sUpdateAnimation, 0, 10, 10, $g_iSizeIcon, $g_iSizeIcon)
	GUICtrlSetState($g_AniUpdate, $GUI_HIDE)
	$hHeading = GUICtrlCreateLabel($g_sProgName & " " & _GetProgramVersion(1), $g_iSizeIcon + 22, 15, 300, 35)
	GUICtrlSetFont($hHeading, 12)
	$g_hSubHeading = GUICtrlCreateLabel($g_aLangCustom[0], $g_iSizeIcon + 22, 38, 350, 35)
	GUICtrlSetFont($g_hSubHeading, 10)
	GUICtrlSetColor($g_hSubHeading, 0x353535)

	$g_hListStatus = GUICtrlCreateListView("", 10, $g_iCoreGuiHeight - $g_GuiLogBoxHeight - 30, _
			$g_iCoreGuiWidth - 20, $g_GuiLogBoxHeight, BitOR($LVS_REPORT, $LVS_NOCOLUMNHEADER))
	_GUICtrlListView_SetExtendedListViewStyle($g_hListStatus, BitOR($LVS_EX_FULLROWSELECT, $LVS_EX_DOUBLEBUFFER, _
			$LVS_EX_SUBITEMIMAGES, $LVS_EX_INFOTIP, $WS_EX_CLIENTEDGE))
	_GUICtrlListView_AddColumn($g_hListStatus, "", 680)
	_WinAPI_SetWindowTheme(GUICtrlGetHandle($g_hListStatus), "Explorer")
	GUICtrlSetResizing($g_hListStatus, BitOR($GUI_DOCKLEFT, $GUI_DOCKRIGHT, $GUI_DOCKBOTTOM, $GUI_DOCKHEIGHT))
	GUICtrlSetFont($g_hListStatus, 9, -1, -1, "Courier New")
	GUICtrlSetColor($g_hListStatus, 0x333333)

	$g_hImgStatus = _GUIImageList_Create(16, 16, 5, 1, 8, 8)
	For $iLx = 0 To $CNT_LOGICONS - 1
		_ImageListEx_AddBlankIcon($g_hImgStatus, $g_hListStatus, $g_aLognIcons[$iLx], $g_iLogIconStart - $iLx)
	Next
	_GUIImageList_Add($g_hImgStatus, _GUICtrlListView_CreateSolidBitMap($g_hListStatus, 0xFFFFFF, 16, 16))
	_GUICtrlListView_SetImageList($g_hListStatus, $g_hImgStatus, 1)

	_Splash_Update("", 100)
	GUISetState(@SW_SHOW, $g_hCoreGui)
	AdlibRegister("_OnIconsHover", 65)
	AdlibRegister("_UptimeMonitor", 1000)

	If $g_iCheckForUpdates == 4 Then
		_SoftwareUpdateCheck()
	EndIf

	_Logging_Start("Testing Log System.")
	_TestLoggingSystem(_Logging_SetLevel("Testing " & $g_aLangLogging[1] & ".", "SUCCESS"), 1000)
	_TestLoggingSystem(_Logging_SetLevel("This is an error message!", "ERROR"), 1000)
	_TestLoggingSystem(_Logging_SetLevel($g_aLangLogging[9] & "!", "WARNING"), 1000)
	_Logging_End()

	While 1
		Sleep(30)
	WEnd

EndFunc   ;==>_StartCoreGui


Func _TestLoggingSystem($sMessage, $iSleep)
	_Logging_EditWrite($sMessage)
	Sleep($iSleep)
EndFunc   ;==>_TestLoggingSystem


#Region "Events"

Func _OnIconsHover()

	Local $iCursor = GUIGetCursorInfo()
	If Not @error Then

		If $iCursor[4] = $g_hGuiIcon And $g_aCoreIcons[2] == 1 Then
			$g_aCoreIcons[2] = 0
			GUICtrlSetImage($g_hGuiIcon, $g_aCoreIcons[1], 201)
		ElseIf $iCursor[4] <> $g_hGuiIcon And $g_aCoreIcons[2] == 0 Then
			$g_aCoreIcons[2] = 1
			GUICtrlSetImage($g_hGuiIcon, $g_aCoreIcons[0], 99)
		EndIf

	EndIf

EndFunc   ;==>_OnIconsHover


;~ https://www.autoitscript.com/forum/topic/99603-resize-but-dont-get-smaller-than-original-size/#comment-714621
Func WM_GETMINMAXINFO($hWnd, $msg, $wParam, $lParam)
	Local $tagMaxinfo = DllStructCreate("int;int;int;int;int;int;int;int;int;int", $lParam)
	DllStructSetData($tagMaxinfo, 7, $g_iCoreGuiWidth) ; min X
	DllStructSetData($tagMaxinfo, 8, $g_iCoreGuiHeight) ; min Y
	Return 0
EndFunc   ;==>WM_GETMINMAXINFO


Func WM_SYSCOMMAND($hWnd, $msg, $wParam, $lParam)
	Switch BitAND($wParam, 0xFFF0)
		Case 0xF010, 0xF000
			Local $tBool = DllStructCreate("int")
			DllCall("user32.dll", "int", "SystemParametersInfo", "int", 38, "int", 0, "ptr", DllStructGetPtr($tBool), "int", 0)
			$g_OldSystemParam = DllStructGetData($tBool, 1)
			DllCall("user32.dll", "int", "SystemParametersInfo", "int", 37, "int", 0, "ptr", 0, "int", 2)
	EndSwitch
EndFunc   ;==>WM_SYSCOMMAND


Func WM_EXITSIZEMOVE($hWnd, $msg, $wParam, $lParam)
	DllCall("user32.dll", "int", "SystemParametersInfo", "int", 37, "int", $g_OldSystemParam, "ptr", 0, "int", 2)
EndFunc   ;==>WM_EXITSIZEMOVE
#EndRegion "Events"


#Region "Resources"

Func _SetResources()

	If @Compiled Then

		$g_aCoreIcons[0] = @ScriptFullPath
		$g_aCoreIcons[1] = @ScriptFullPath

		For $iLi = 0 To $CNT_LOGICONS - 1
			$g_aLognIcons[$iLi] = @ScriptFullPath
		Next

		For $iMi = 0 To $CNT_MENUICONS - 1
			$g_aMenuIcons[$iMi] = @ScriptFullPath
		Next

	Else

		$g_aCoreIcons[0] = $g_sThemesDir & "\Icons\" & $g_sProgShortName & ".ico"
		$g_aCoreIcons[1] = $g_sThemesDir & "\Icons\" & $g_sProgShortName & "H.ico"

		$g_aLognIcons[0] = $g_sThemesDir & "\Icons\logging\Information.ico"
		$g_aLognIcons[1] = $g_sThemesDir & "\Icons\logging\Complete.ico"
		$g_aLognIcons[2] = $g_sThemesDir & "\Icons\logging\Cross.ico"
		$g_aLognIcons[3] = $g_sThemesDir & "\Icons\logging\Exclamation.ico"
		$g_aLognIcons[4] = $g_sThemesDir & "\Icons\logging\Smiley-Glass.ico"
		$g_aLognIcons[5] = $g_sThemesDir & "\Icons\logging\Skull.ico"
		$g_aLognIcons[6] = $g_sThemesDir & "\Icons\logging\Snowman.ico"

		$g_aMenuIcons[0] = $g_sThemesDir & "\Icons\Menus\Update.ico"
		$g_aMenuIcons[1] = $g_sThemesDir & "\Icons\Menus\Home.ico"
		$g_aMenuIcons[2] = $g_sThemesDir & "\Icons\Menus\Mail.ico"
		$g_aMenuIcons[3] = $g_sThemesDir & "\Icons\Menus\GitHub.ico"
		$g_aMenuIcons[4] = $g_sThemesDir & "\Icons\Menus\About.ico"
		$g_aMenuIcons[5] = $g_sThemesDir & "\Icons\Menus\Logbook.ico"
		$g_aMenuIcons[6] = $g_sThemesDir & "\Icons\Menus\Close.ico"
		$g_aMenuIcons[7] = $g_sThemesDir & "\Icons\Dialogs\Gear.ico"

	EndIf

	$g_aCoreIcons[2] = 1

EndFunc   ;==>_SetResources

#EndRegion "Resources"


#Region "Working Directories"

Func _ResetWorkingDirectories()

	$g_sPathIni = $g_sWorkingDir & "\" & $g_sProgShortName & ".ini"
	$g_sCacheRoot = $g_sWorkingDir & "\Cache\" & $g_sProgShortName
	$g_sLoggingRoot = $g_sWorkingDir & "\Logging\" & $g_sProgShortName
	$g_sLoggingPath = $g_sLoggingRoot & "\" & $g_sProgShortName & ".log"
	If $g_iEnableCache == 1 Then DirCreate($g_sCacheRoot)

EndFunc   ;==>_ResetWorkingDirectories


Func _SetAppDataDirectory()

	DirCreate($g_sAppDataRoot)

	$g_sWorkingDir = $g_sAppDataRoot

	_ResetWorkingDirectories()
	_GenerateIniFile($g_sPathIni, 0)

EndFunc   ;==>_SetAppDataDirectory


Func _SetWorkingDirectories()

	If IniRead($g_sPathIni, $g_sProgShortName, "PortableEdition", 1) = 0 Then
		_SetAppDataDirectory()
	Else
		If Not _GenerateIniFile($g_sPathIni) Then
			_SetAppDataDirectory()
		Else
			_ResetWorkingDirectories()
		EndIf
	EndIf

EndFunc   ;==>_SetWorkingDirectories


Func _GenerateIniFile($iniPath, $bPortable = 1)
	Local $iResult
    ; MsgBox(0, "", $iniPath)
	$iResult = IniWrite($iniPath, $g_sProgShortName, "PortableEdition", $bPortable)
	Return $iResult
EndFunc   ;==>_GenerateIniFile

#EndRegion "Working Directories"


#Region "Configuration (Settings)"

Func _LoadConfiguration()

	$g_iCheckForUpdates = Int(IniRead($g_sPathIni, $g_sProgShortName, "CheckForUpdates", 4))
	$g_iUptimeMonitor = Int(IniRead($g_sPathIni, "Donate", "Seconds", 0))
	$g_iDonateTime = Int(IniRead($g_sPathIni, "Donate", "DonateTime", 0))

EndFunc   ;==>_LoadConfiguration


Func _SaveConfiguration()

	IniWrite($g_sPathIni, "Donate", "Seconds", $g_iUptimeMonitor)

EndFunc

#EndRegion "Configuration (Settings)"


Func _CheckForUpdates()

	_SetUpdateAnimationState($GUI_SHOW)
	_SoftwareUpdateCheck(True)
	_SetUpdateAnimationState($GUI_HIDE)

EndFunc   ;==>_CheckForUpdates


Func _UptimeMonitor()
	If $g_iUptimeMonitor < 2000000000 Then
		$g_iUptimeMonitor += 1
	EndIf
EndFunc


Func _SetUpdateAnimationState($iState)

	If $iState = 16 Then

		If FileExists($g_sUpdateAnimation) Then
			GUICtrlSetState($g_AniUpdate, $GUI_SHOW)
			GUICtrlSetState($g_hGuiIcon, $GUI_HIDE)
		EndIf
		_SetProcessingStates($GUI_DISABLE)
		GUICtrlSetData($g_hSubHeading, $g_aLangCustom[1])

	ElseIf $iState = 32 Then

		If FileExists($g_sUpdateAnimation) Then
			GUICtrlSetState($g_AniUpdate, $GUI_HIDE)
			GUICtrlSetState($g_hGuiIcon, $GUI_SHOW)
		EndIf
		_SetProcessingStates($GUI_ENABLE)
		GUICtrlSetData($g_hSubHeading, $g_aLangCustom[0])

	EndIf

EndFunc   ;==>_SetUpdateAnimationState


Func _SetProcessingStates($iState)

	GUICtrlSetState($g_hMenuFile, $iState)
	GUICtrlSetState($g_hMenuHelp, $iState)
	GUICtrlSetState($g_hMenuDebug, $iState)

EndFunc   ;==>_SetProcessingStates


Func _ShutdownProgram()

	AdlibUnRegister("_OnIconsHover")
	AdlibUnRegister("_UptimeMonitor")

	_SaveConfiguration()

	If $g_iUptimeMonitor > $g_iDonateTimeSet = True And _
			$g_iDonateTime == 0 Then
		IniWrite($g_sPathIni, "Donate", "DonateTime", $g_iUptimeMonitor)
		_Donate_ShowDialog()
	Else
		;~ If $g_ClearCacheOnExit == 1 Then DirRemove($g_CachePath, 1)
		WinSetTrans($g_hCoreGui, Default, 255)
		_TerminateProgram()
	EndIf

EndFunc   ;==>_ShutdownProgram


Func _TerminateProgram()

	If $g_iSingleton Then
		Local $iPID = ProcessExists(@ScriptName)
		If $iPID Then ProcessClose($iPID)
	EndIf
	Exit

EndFunc


Func _MinimizeProgram()

	Local $iState = WinGetState($g_hCoreGui)

	If BitAND($iState, 4) Then
		WinSetState($g_hCoreGui, "", @SW_MINIMIZE)
	EndIf
EndFunc