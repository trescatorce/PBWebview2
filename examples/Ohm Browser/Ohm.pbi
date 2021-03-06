﻿;Ohm.pbi

#APP_NAME = "Ohm"
#APP_VERSION = "0.2"

;- URL
;- Enum URL_STATE
Enumeration 0
	#URL_STATE_NORMAL
	#URL_STATE_FOCUSED
EndEnumeration

#URL_PADDING_LEFT = 2
#URL_PADDING_RIGHT = 2
#URL_FRAME_WIDTH = 2

;- URL_DATA
Structure URL_DATA
	url.i
	edit.i
	editOldProc.i
	state.l
EndStructure

#URL_VALID_PROTOCOLS = "http https edge ftp smtp"
#URL_OFFSET_Y = 1

#TOOLBAR_PADDING_LEFT = 4
#TOOLBAR_PADDING_RIGHT = 4
#TOOLBAR_PADDING_BOTTOM = 2

#BTN_MARGIN = 3

#TAB_MAX_ITEM_WIDTH = 300

;- Enum MENU_ID
Enumeration 1
	#MENU_ID_NEW_TAB
	#MENU_ID_CLOSE_TAB
	#MENU_ID_NEXT_TAB
	#MENU_ID_PREVIOUS_TAB
	#MENU_ID_QUIT
	
	#MENU_ID_GO_BACK
	#MENU_ID_GO_FORWARD
	#MENU_ID_GO_HOME
	#MENU_ID_RELOAD
	#MENU_ID_STOP
	
	#MENU_ID_ZOOM_IN
	#MENU_ID_ZOOM_OUT
	#MENU_ID_RESET_ZOOM
	#MENU_ID_TOGGLE_FULLSCREEN
	
	#MENU_ID_GET_VERSION
	
	#MENU_ID_URL_SELECT
	#MENU_ID_URL_SET_HTTP
	#MENU_ID_SHOW_MENU
EndEnumeration

;- Enum TIMER_ID
Enumeration 1
	#TIMER_ID_FULLSCREEN
EndEnumeration
