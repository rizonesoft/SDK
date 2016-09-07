#include-once

#include <FileConstants.au3>

Global $REBAR_PROG_NAME = FileGetVersion(@ScriptFullPath, $FV_PRODUCTNAME)
Global $REBAR_PROG_SHORTNAME = _GetFilenameFromPath(@ScriptFullPath)
Global $REBAR_COMP_NAME = FileGetVersion(@ScriptFullPath, $FV_COMPANYNAME)
Global $REBAR_EXITCODE = 0
Global $REBAR_DEBUG = 1
Global $REBAR_VERSION = 1															;~ ReBar Framework version.
Global $REBAR_USEGDIPUS = False
Global $REBAR_ISADMINST = ""

;===============================================================================================================
; Title Options
;===============================================================================================================
Global $REBAR_TITLE_SHOWADMIN = 1
Global $REBAR_TITLE_SHOWAUTOIT = 1
Global $REBAR_TITLE_SHOWARCH = 1
Global $REBAR_TITLE_SHOWVERSION = 1
Global $REBAR_TITLE_SHOWBUILD = 1

;===============================================================================================================
; Runtime Options (When not Compiled)
;===============================================================================================================
Global $REBAR_RUN_COMP_NAME = "Rizonesoft"
Global $REBAR_RUN_PROG_NAME = "ReBar Framework"
Global $REBAR_RUN_PROG_SHORTNAME = "ReBar"
Global $REBAR_RUN_PROG_ICON = @ScriptDir & "\Themes\Icons\ReBar.ico"
Global $REBAR_RUN_VERSION = 0

;===============================================================================================================
; Path Options
;===============================================================================================================
Global $REBAR_DIR_WORKING = @ScriptDir
Global $REBAR_INI_FILENAME = $REBAR_PROG_SHORTNAME & ".ini"
Global $REBAR_PATH_INI = $REBAR_DIR_WORKING & "\" & $REBAR_INI_FILENAME
Global $REBAR_PATH_APPDATA_PARENT = @AppDataDir & "\" & $REBAR_COMP_NAME
Global $REPAR_PATH_APPDATA = $REBAR_PATH_APPDATA_PARENT & "\" & $REBAR_PROG_SHORTNAME
Global $REPAR_PATH_APPDATA_INI = $REPAR_PATH_APPDATA & "\" & $REBAR_INI_FILENAME

;===============================================================================================================
; Caching Options
;===============================================================================================================
Global $REBAR_CACHE_BASE = $REBAR_DIR_WORKING & "\Cache"
Global $REBAR_CACHE_PATH = $REBAR_CACHE_BASE & "\" & $REBAR_PROG_SHORTNAME

;===============================================================================================================
; Logging Options
;===============================================================================================================
Global Const $REBAR_LOG_NAME = $REBAR_COMP_NAME & " " & $REBAR_PROG_NAME & " Logging System"
Global Const $REBAR_LOG_VERSION = "1.2"

Global $REBAR_LOG_FILERWE = 0
Global $REBAR_LOG_ENABLED = 1														;~ Enable/Disable ReBar logging subsystem.
Global $REBAR_LOG_STORAGE = 5242880 ; Bytes
Global $REBAR_LOG_FILENAME = $REBAR_PROG_SHORTNAME & ".log"
Global $REBAR_LOG_BASE = $REBAR_DIR_WORKING & "\Logging"
Global $REBAR_LOG_PATH = $REBAR_LOG_BASE & "\" & $REBAR_LOG_FILENAME

;===============================================================================================================
; Interface Options
;===============================================================================================================
Global $REBAR_GUI_CORE
Global $REBAR_GUI_ICON
Global $REBAR_SINGLETON = True														;~ Only one instance of the program may be running.
Global $REBAR_GUI_ICON_HOVER = 1
Global $REBAR_ICON = @ScriptFullPath
Global $REBAR_FORM_WIDTH = 750
Global $REBAR_FORM_HEIGHT = 530
Global $REBAR_FONT_NAME = "Verdana"													;~ Main GUI Font
Global $REBAR_FONT_SIZE = 8.5														;~ Main GUI Font Size
Global $REBAR_MSG_TIMEOUT = 60														;~ Time in seconds a message should be shown before closing.
Global $REBAR_GUI_MINWIDTH = 300
Global $REBAR_GUI_MINHEIGHT = 300

;===============================================================================================================
; Splash Options
;===============================================================================================================
Global $REBAR_SPLASH_ENABLE = True													;~ Enable/Disable splash page on program load.
Global $REBAR_SPLASH_ANI = @ScriptDir & "\Themes\Processing\32\Stroke.ani"

;===============================================================================================================
; Resource Options
;===============================================================================================================
Global $REBAR_RES_FUGUE = @ScriptDir & "\Fugue.dll"
Global $REBAR_RES_DOORS = @ScriptDir & "\DoorsShell.dll"

;===============================================================================================================
; About Dialog Options
;===============================================================================================================
;Global Const $REBAR_ABOUT_LINK = "https://www.rizonesoft.com"

Global $REBAR_ABOUT_GUI																;~ About Dialog
Global $REBAR_ABOUT_MENU															;~ About Dialog Menu Item
Global $REBAR_ABOUT_HOME = "http://www.rizonesoft.com"
Global $REBAR_ABOUT_CREDITS =	"Derick Payne (Rizonesoft), Brian J Christy (Beege), " & _
								"G Sandler (MrCreatoR), Holger Kotsch, KaFu, LarsJ, nickston, ProgAndy, Yashied"
Global $REBAR_ABOUT_DONATE = "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7UGGCSDUZJPFE"
Global $REBAR_ABOUT_COUNTRY = "http://www.rizonesoft.com"
Global $REBAR_ABOUT_FACEBOOK = "https://www.facebook.com/rizonesoft"
Global $REBAR_ABOUT_TWITTER = "https://twitter.com/rizonesoft"
Global $REBAR_ABOUT_GOOGLE = "https://plus.google.com/+Rizonesoftsa/posts"
Global $REBAR_ABOUT_LINKEDIN = "https://www.linkedin.com/in/rizonesoft"
Global $REBAR_ABOUT_RSS = "http://www.rizonesoft.com/feed/"
Global $REBAR_ABOUT_SUPPORT = "http://www.rizonesoft.com"