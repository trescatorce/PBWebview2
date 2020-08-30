;Generated by PB Type Library Importer Version: 1.0

XIncludeFile "windows/Unknwn.pbi"

;- ICoreWebView2AcceleratorKeyPressedEventArgs

DataSection
	IID_ICoreWebView2AcceleratorKeyPressedEventArgs:
	Data.l $9224476E
	Data.w $D8C3, $4EB7
	Data.b $BB, $65, $2F, $D7, $79, $2B, $27, $CE
EndDataSection

Interface ICoreWebView2AcceleratorKeyPressedEventArgs Extends IUnknown
	get_KeyEventKind(KeyEventKind.i)
	get_VirtualKey(VirtualKey.i)
	get_KeyEventLParam(lParam.i)
	get_PhysicalKeyStatus(PhysicalKeyStatus.i)
	get_Handled(Handled.i)
	put_Handled(Handled.l)
EndInterface 

;- Enum COREWEBVIEW2_KEY_EVENT_KIND
#COREWEBVIEW2_KEY_EVENT_KIND_KEY_DOWN = 0
#COREWEBVIEW2_KEY_EVENT_KIND_KEY_UP = 1
#COREWEBVIEW2_KEY_EVENT_KIND_SYSTEM_KEY_DOWN = 2
#COREWEBVIEW2_KEY_EVENT_KIND_SYSTEM_KEY_UP = 3

;- COREWEBVIEW2_PHYSICAL_KEY_STATUS
Structure COREWEBVIEW2_PHYSICAL_KEY_STATUS Align #PB_Structure_AlignC
	RepeatCount.l
	ScanCode.l
	IsExtendedKey.l
	IsMenuKeyDown.l
	WasKeyDown.l
	IsKeyReleased.l
EndStructure

;- ICoreWebView2AcceleratorKeyPressedEventHandler

DataSection
	IID_ICoreWebView2AcceleratorKeyPressedEventHandler:
	Data.l $A7D303F9
	Data.w $503C, $4B7E
	Data.b $BC, $40, $5C, $7C, $E6, $CA, $BA, $AA
EndDataSection

Interface ICoreWebView2AcceleratorKeyPressedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2Controller

DataSection
	IID_ICoreWebView2Controller:
	Data.l $7CCC5C7F
	Data.w $8351, $4572
	Data.b $90, $77, $9C, $1C, $80, $91, $38, $35
EndDataSection

Interface ICoreWebView2Controller Extends IUnknown
	get_IsVisible(IsVisible.i)
	put_IsVisible(IsVisible.l)
	get_Bounds(Bounds.i)
	CompilerIf #PB_Compiler_Processor = #PB_Processor_x64
		put_Bounds(Bounds.i)
	CompilerElse
		put_Bounds(Bounds_tagRECT_left.l, Bounds_tagRECT_top.l, Bounds_tagRECT_right.l, Bounds_tagRECT_bottom.l)
	CompilerEndIf
	get_ZoomFactor(ZoomFactor.i)
	put_ZoomFactor(ZoomFactor.d)
	add_ZoomFactorChanged(eventHandler.i, token.i)
	remove_ZoomFactorChanged(token.q)
	CompilerIf #PB_Compiler_Processor = #PB_Processor_x64
		SetBoundsAndZoomFactor(Bounds.i, ZoomFactor.d)
	CompilerElse
		SetBoundsAndZoomFactor(Bounds_tagRECT_left.l, Bounds_tagRECT_top.l, Bounds_tagRECT_right.l, Bounds_tagRECT_bottom.l, ZoomFactor.d)
	CompilerEndIf
	MoveFocus(reason.l)
	add_MoveFocusRequested(eventHandler.i, token.i)
	remove_MoveFocusRequested(token.q)
	add_GotFocus(eventHandler.i, token.i)
	remove_GotFocus(token.q)
	add_LostFocus(eventHandler.i, token.i)
	remove_LostFocus(token.q)
	add_AcceleratorKeyPressed(eventHandler.i, token.i)
	remove_AcceleratorKeyPressed(token.q)
	get_ParentWindow(topLevelWindow.i)
	put_ParentWindow(topLevelWindow.i)
	NotifyParentWindowPositionChanged()
	Close()
	get_CoreWebView2(CoreWebView2.i)
EndInterface 

;- ICoreWebView2ZoomFactorChangedEventHandler

DataSection
	IID_ICoreWebView2ZoomFactorChangedEventHandler:
	Data.l $F1828246
	Data.w $8B98, $4274
	Data.b $B7, $8, $EC, $DB, $6B, $F3, $84, $3A
EndDataSection

Interface ICoreWebView2ZoomFactorChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- EventRegistrationToken
Structure EventRegistrationToken Align #PB_Structure_AlignC
	value.q
EndStructure

;- Enum COREWEBVIEW2_MOVE_FOCUS_REASON
#COREWEBVIEW2_MOVE_FOCUS_REASON_PROGRAMMATIC = 0
#COREWEBVIEW2_MOVE_FOCUS_REASON_NEXT = 1
#COREWEBVIEW2_MOVE_FOCUS_REASON_PREVIOUS = 2

;- ICoreWebView2MoveFocusRequestedEventHandler

DataSection
	IID_ICoreWebView2MoveFocusRequestedEventHandler:
	Data.l $4B21D6DD
	Data.w $3DE7, $47B0
	Data.b $80, $19, $7D, $3A, $CE, $6E, $36, $31
EndDataSection

Interface ICoreWebView2MoveFocusRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2MoveFocusRequestedEventArgs

DataSection
	IID_ICoreWebView2MoveFocusRequestedEventArgs:
	Data.l $71922903
	Data.w $B180, $49D0
	Data.b $AE, $D2, $C9, $F9, $D1, $0, $64, $B1
EndDataSection

Interface ICoreWebView2MoveFocusRequestedEventArgs Extends IUnknown
	get_reason(value.i)
	get_Handled(value.i)
	put_Handled(value.l)
EndInterface 

;- ICoreWebView2FocusChangedEventHandler

DataSection
	IID_ICoreWebView2FocusChangedEventHandler:
	Data.l $76E67C71
	Data.w $663F, $4C17
	Data.b $B7, $1A, $93, $81, $CC, $F3, $B9, $4B
EndDataSection

Interface ICoreWebView2FocusChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2

DataSection
	IID_ICoreWebView2:
	Data.l $189B8AAF
	Data.w $426, $4748
	Data.b $B9, $AD, $24, $3F, $53, $7E, $B4, $6B
EndDataSection

Interface ICoreWebView2 Extends IUnknown
	get_Settings(Settings.i)
	get_Source(uri.i)
	Navigate(uri.s)
	NavigateToString(htmlContent.s)
	add_NavigationStarting(eventHandler.i, token.i)
	remove_NavigationStarting(token.q)
	add_ContentLoading(eventHandler.i, token.i)
	remove_ContentLoading(token.q)
	add_SourceChanged(eventHandler.i, token.i)
	remove_SourceChanged(token.q)
	add_HistoryChanged(eventHandler.i, token.i)
	remove_HistoryChanged(token.q)
	add_NavigationCompleted(eventHandler.i, token.i)
	remove_NavigationCompleted(token.q)
	add_FrameNavigationStarting(eventHandler.i, token.i)
	remove_FrameNavigationStarting(token.q)
	add_FrameNavigationCompleted(eventHandler.i, token.i)
	remove_FrameNavigationCompleted(token.q)
	add_ScriptDialogOpening(eventHandler.i, token.i)
	remove_ScriptDialogOpening(token.q)
	add_PermissionRequested(eventHandler.i, token.i)
	remove_PermissionRequested(token.q)
	add_ProcessFailed(eventHandler.i, token.i)
	remove_ProcessFailed(token.q)
	AddScriptToExecuteOnDocumentCreated(javaScript.s, handler.i)
	RemoveScriptToExecuteOnDocumentCreated(id.s)
	ExecuteScript(javaScript.s, handler.i)
	CapturePreview(imageFormat.l, imageStream.i, handler.i)
	Reload()
	PostWebMessageAsJson(webMessageAsJson.s)
	PostWebMessageAsString(webMessageAsString.s)
	add_WebMessageReceived(handler.i, token.i)
	remove_WebMessageReceived(token.q)
	CallDevToolsProtocolMethod(methodName.s, parametersAsJson.s, handler.i)
	get_BrowserProcessId(value.i)
	get_CanGoBack(CanGoBack.i)
	get_CanGoForward(CanGoForward.i)
	GoBack()
	GoForward()
	GetDevToolsProtocolEventReceiver(eventName.s, receiver.i)
	Stop()
	add_NewWindowRequested(eventHandler.i, token.i)
	remove_NewWindowRequested(token.q)
	add_DocumentTitleChanged(eventHandler.i, token.i)
	remove_DocumentTitleChanged(token.q)
	get_DocumentTitle(title.i)
	AddHostObjectToScript(name.s, object.i)
	RemoveHostObjectFromScript(name.s)
	OpenDevToolsWindow()
	add_ContainsFullScreenElementChanged(eventHandler.i, token.i)
	remove_ContainsFullScreenElementChanged(token.q)
	get_ContainsFullScreenElement(ContainsFullScreenElement.i)
	add_WebResourceRequested(eventHandler.i, token.i)
	remove_WebResourceRequested(token.q)
	AddWebResourceRequestedFilter(uri.s, ResourceContext.l)
	RemoveWebResourceRequestedFilter(uri.s, ResourceContext.l)
	add_WindowCloseRequested(eventHandler.i, token.i)
	remove_WindowCloseRequested(token.q)
EndInterface 

;- ICoreWebView2Settings

DataSection
	IID_ICoreWebView2Settings:
	Data.l $203FBA37
	Data.w $6850, $4DCC
	Data.b $A2, $5A, $58, $A3, $51, $AC, $62, $5D
EndDataSection

Interface ICoreWebView2Settings Extends IUnknown
	get_IsScriptEnabled(IsScriptEnabled.i)
	put_IsScriptEnabled(IsScriptEnabled.l)
	get_IsWebMessageEnabled(IsWebMessageEnabled.i)
	put_IsWebMessageEnabled(IsWebMessageEnabled.l)
	get_AreDefaultScriptDialogsEnabled(AreDefaultScriptDialogsEnabled.i)
	put_AreDefaultScriptDialogsEnabled(AreDefaultScriptDialogsEnabled.l)
	get_IsStatusBarEnabled(IsStatusBarEnabled.i)
	put_IsStatusBarEnabled(IsStatusBarEnabled.l)
	get_AreDevToolsEnabled(AreDevToolsEnabled.i)
	put_AreDevToolsEnabled(AreDevToolsEnabled.l)
	get_AreDefaultContextMenusEnabled(enabled.i)
	put_AreDefaultContextMenusEnabled(enabled.l)
	get_AreHostObjectsAllowed(allowed.i)
	put_AreHostObjectsAllowed(allowed.l)
	get_IsZoomControlEnabled(enabled.i)
	put_IsZoomControlEnabled(enabled.l)
	get_IsBuiltInErrorPageEnabled(enabled.i)
	put_IsBuiltInErrorPageEnabled(enabled.l)
EndInterface 

;- ICoreWebView2NavigationStartingEventHandler

DataSection
	IID_ICoreWebView2NavigationStartingEventHandler:
	Data.l $73337A4
	Data.w $64D2, $4C7E
	Data.b $AC, $9F, $98, $7F, $F, $61, $34, $97
EndDataSection

Interface ICoreWebView2NavigationStartingEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2NavigationStartingEventArgs

DataSection
	IID_ICoreWebView2NavigationStartingEventArgs:
	Data.l $EE1938CE
	Data.w $D385, $4CB0
	Data.b $85, $4B, $F4, $98, $F7, $8C, $3D, $88
EndDataSection

Interface ICoreWebView2NavigationStartingEventArgs Extends IUnknown
	get_uri(uri.i)
	get_IsUserInitiated(IsUserInitiated.i)
	get_IsRedirected(IsRedirected.i)
	get_RequestHeaders(RequestHeaders.i)
	get_Cancel(Cancel.i)
	put_Cancel(Cancel.l)
	get_NavigationId(navigation_id.i)
EndInterface 

;- ICoreWebView2HttpRequestHeaders

DataSection
	IID_ICoreWebView2HttpRequestHeaders:
	Data.l $2C1F04DF
	Data.w $C90E, $49E4
	Data.b $BD, $25, $4A, $65, $93, $0, $33, $7B
EndDataSection

Interface ICoreWebView2HttpRequestHeaders Extends IUnknown
	GetHeader(name.s, value.i)
	GetHeaders(name.s, iterator.i)
	Contains(name.s, Contains.i)
	SetHeader(name.s, value.s)
	RemoveHeader(name.s)
	GetIterator(iterator.i)
EndInterface 

;- ICoreWebView2HttpHeadersCollectionIterator

DataSection
	IID_ICoreWebView2HttpHeadersCollectionIterator:
	Data.l $4212F3A7
	Data.w $FBC, $4C9C
	Data.b $81, $18, $17, $ED, $63, $70, $C1, $B3
EndDataSection

Interface ICoreWebView2HttpHeadersCollectionIterator Extends IUnknown
	GetCurrentHeader(name.i, value.i)
	get_HasCurrentHeader(hasCurrent.i)
	MoveNext(hasNext.i)
EndInterface 

Structure ICoreWebView2HttpHeadersCollectionIteratorVtbl Extends IUnknownVtbl
	GetCurrentHeader.i
	get_HasCurrentHeader.i
	MoveNext.i
EndStructure

;- ICoreWebView2ContentLoadingEventHandler

DataSection
	IID_ICoreWebView2ContentLoadingEventHandler:
	Data.l $7AF5CC82
	Data.w $AE19, $4964
	Data.b $BD, $71, $B9, $BC, $5F, $3, $E8, $5D
EndDataSection

Interface ICoreWebView2ContentLoadingEventHandler Extends IUnknown
	Invoke(webview.i, args.i)
EndInterface 

;- ICoreWebView2ContentLoadingEventArgs

DataSection
	IID_ICoreWebView2ContentLoadingEventArgs:
	Data.l $2A800835
	Data.w $2179, $45D6
	Data.b $A7, $45, $66, $57, $E9, $A5, $46, $B9
EndDataSection

Interface ICoreWebView2ContentLoadingEventArgs Extends IUnknown
	get_IsErrorPage(IsErrorPage.i)
	get_NavigationId(navigation_id.i)
EndInterface 

;- ICoreWebView2SourceChangedEventHandler

DataSection
	IID_ICoreWebView2SourceChangedEventHandler:
	Data.l $8FEDD1A7
	Data.w $3A33, $416F
	Data.b $AF, $81, $88, $1E, $EB, $0, $14, $33
EndDataSection

Interface ICoreWebView2SourceChangedEventHandler Extends IUnknown
	Invoke(webview.i, args.i)
EndInterface 

;- ICoreWebView2SourceChangedEventArgs

DataSection
	IID_ICoreWebView2SourceChangedEventArgs:
	Data.l $BD9A4BFB
	Data.w $BE19, $40BD
	Data.b $96, $8B, $EB, $CF, $D, $72, $7E, $F3
EndDataSection

Interface ICoreWebView2SourceChangedEventArgs Extends IUnknown
	get_IsNewDocument(IsNewDocument.i)
EndInterface 

;- ICoreWebView2HistoryChangedEventHandler

DataSection
	IID_ICoreWebView2HistoryChangedEventHandler:
	Data.l $54C9B7D7
	Data.w $D9E9, $4158
	Data.b $86, $1F, $F9, $7E, $1C, $3C, $66, $31
EndDataSection

Interface ICoreWebView2HistoryChangedEventHandler Extends IUnknown
	Invoke(webview.i, args.i)
EndInterface 

;- ICoreWebView2NavigationCompletedEventHandler

DataSection
	IID_ICoreWebView2NavigationCompletedEventHandler:
	Data.l $9F921239
	Data.w $20C4, $455F
	Data.b $9E, $3F, $60, $47, $A5, $E, $24, $8B
EndDataSection

Interface ICoreWebView2NavigationCompletedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2NavigationCompletedEventArgs

DataSection
	IID_ICoreWebView2NavigationCompletedEventArgs:
	Data.l $361F5621
	Data.w $EA7F, $4C55
	Data.b $95, $EC, $3C, $5E, $69, $92, $EA, $4A
EndDataSection

Interface ICoreWebView2NavigationCompletedEventArgs Extends IUnknown
	get_IsSuccess(IsSuccess.i)
	get_WebErrorStatus(COREWEBVIEW2_WEB_ERROR_STATUS.i)
	get_NavigationId(navigation_id.i)
EndInterface 

;- Enum COREWEBVIEW2_WEB_ERROR_STATUS
#COREWEBVIEW2_WEB_ERROR_STATUS_UNKNOWN = 0
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_COMMON_NAME_IS_INCORRECT = 1
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_EXPIRED = 2
#COREWEBVIEW2_WEB_ERROR_STATUS_CLIENT_CERTIFICATE_CONTAINS_ERRORS = 3
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_REVOKED = 4
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_IS_INVALID = 5
#COREWEBVIEW2_WEB_ERROR_STATUS_SERVER_UNREACHABLE = 6
#COREWEBVIEW2_WEB_ERROR_STATUS_TIMEOUT = 7
#COREWEBVIEW2_WEB_ERROR_STATUS_ERROR_HTTP_INVALID_SERVER_RESPONSE = 8
#COREWEBVIEW2_WEB_ERROR_STATUS_CONNECTION_ABORTED = 9
#COREWEBVIEW2_WEB_ERROR_STATUS_CONNECTION_RESET = 10
#COREWEBVIEW2_WEB_ERROR_STATUS_DISCONNECTED = 11
#COREWEBVIEW2_WEB_ERROR_STATUS_CANNOT_CONNECT = 12
#COREWEBVIEW2_WEB_ERROR_STATUS_HOST_NAME_NOT_RESOLVED = 13
#COREWEBVIEW2_WEB_ERROR_STATUS_OPERATION_CANCELED = 14
#COREWEBVIEW2_WEB_ERROR_STATUS_REDIRECT_FAILED = 15
#COREWEBVIEW2_WEB_ERROR_STATUS_UNEXPECTED_ERROR = 16

;- ICoreWebView2ScriptDialogOpeningEventHandler

DataSection
	IID_ICoreWebView2ScriptDialogOpeningEventHandler:
	Data.l $72D93789
	Data.w $2727, $4A9B
	Data.b $A4, $FC, $1B, $26, $9, $CB, $CB, $E3
EndDataSection

Interface ICoreWebView2ScriptDialogOpeningEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2ScriptDialogOpeningEventArgs

DataSection
	IID_ICoreWebView2ScriptDialogOpeningEventArgs:
	Data.l $B8F6356E
	Data.w $24DC, $4D74
	Data.b $90, $FE, $AD, $7, $1E, $11, $CB, $91
EndDataSection

Interface ICoreWebView2ScriptDialogOpeningEventArgs Extends IUnknown
	get_uri(uri.i)
	get_Kind(Kind.i)
	get_Message(Message.i)
	Accept()
	get_DefaultText(DefaultText.i)
	get_ResultText(ResultText.i)
	put_ResultText(ResultText.s)
	GetDeferral(deferral.i)
EndInterface 

;- Enum COREWEBVIEW2_SCRIPT_DIALOG_KIND
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_ALERT = 0
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_CONFIRM = 1
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_PROMPT = 2
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_BEFOREUNLOAD = 3

;- ICoreWebView2Deferral

DataSection
	IID_ICoreWebView2Deferral:
	Data.l $A7ED8BF0
	Data.w $3EC9, $4E39
	Data.b $84, $27, $3D, $6F, $15, $7B, $D2, $85
EndDataSection

Interface ICoreWebView2Deferral Extends IUnknown
	Complete()
EndInterface 

;- ICoreWebView2PermissionRequestedEventHandler

DataSection
	IID_ICoreWebView2PermissionRequestedEventHandler:
	Data.l $543B4ADE
	Data.w $9B0B, $4748
	Data.b $9A, $B7, $D7, $64, $81, $B2, $23, $AA
EndDataSection

Interface ICoreWebView2PermissionRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2PermissionRequestedEventArgs

DataSection
	IID_ICoreWebView2PermissionRequestedEventArgs:
	Data.l $774B5EA1
	Data.w $3FAD, $435C
	Data.b $B1, $FC, $A7, $7D, $1A, $CD, $5E, $AF
EndDataSection

Interface ICoreWebView2PermissionRequestedEventArgs Extends IUnknown
	get_uri(uri.i)
	get_PermissionKind(value.i)
	get_IsUserInitiated(IsUserInitiated.i)
	get_State(value.i)
	put_State(value.l)
	GetDeferral(deferral.i)
EndInterface 

;- Enum COREWEBVIEW2_PERMISSION_KIND
#COREWEBVIEW2_PERMISSION_KIND_UNKNOWN_PERMISSION = 0
#COREWEBVIEW2_PERMISSION_KIND_MICROPHONE = 1
#COREWEBVIEW2_PERMISSION_KIND_CAMERA = 2
#COREWEBVIEW2_PERMISSION_KIND_GEOLOCATION = 3
#COREWEBVIEW2_PERMISSION_KIND_NOTIFICATIONS = 4
#COREWEBVIEW2_PERMISSION_KIND_OTHER_SENSORS = 5
#COREWEBVIEW2_PERMISSION_KIND_CLIPBOARD_READ = 6

;- Enum COREWEBVIEW2_PERMISSION_STATE
#COREWEBVIEW2_PERMISSION_STATE_DEFAULT = 0
#COREWEBVIEW2_PERMISSION_STATE_ALLOW = 1
#COREWEBVIEW2_PERMISSION_STATE_DENY = 2

;- ICoreWebView2ProcessFailedEventHandler

DataSection
	IID_ICoreWebView2ProcessFailedEventHandler:
	Data.l $7D2183F9
	Data.w $CCA8, $40F2
	Data.b $91, $A9, $EA, $FA, $D3, $2C, $8A, $9B
EndDataSection

Interface ICoreWebView2ProcessFailedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2ProcessFailedEventArgs

DataSection
	IID_ICoreWebView2ProcessFailedEventArgs:
	Data.l $EA45D1F4
	Data.w $75C0, $471F
	Data.b $A6, $E9, $80, $3F, $BF, $F8, $FE, $F2
EndDataSection

Interface ICoreWebView2ProcessFailedEventArgs Extends IUnknown
	get_ProcessFailedKind(ProcessFailedKind.i)
EndInterface 

;- Enum COREWEBVIEW2_PROCESS_FAILED_KIND
#COREWEBVIEW2_PROCESS_FAILED_KIND_BROWSER_PROCESS_EXITED = 0
#COREWEBVIEW2_PROCESS_FAILED_KIND_RENDER_PROCESS_EXITED = 1
#COREWEBVIEW2_PROCESS_FAILED_KIND_RENDER_PROCESS_UNRESPONSIVE = 2

;- ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler

DataSection
	IID_ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler:
	Data.l $7082ABED
	Data.w $591, $428F
	Data.b $A7, $22, $60, $C2, $F8, $14, $54, $6B
EndDataSection

Interface ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler Extends IUnknown
	Invoke(errorCode.l, id.s)
EndInterface 

;- ICoreWebView2ExecuteScriptCompletedHandler

DataSection
	IID_ICoreWebView2ExecuteScriptCompletedHandler:
	Data.l $3B717C93
	Data.w $3ED5, $4450
	Data.b $9B, $13, $7F, $56, $AA, $36, $7A, $C7
EndDataSection

Interface ICoreWebView2ExecuteScriptCompletedHandler Extends IUnknown
	Invoke(errorCode.l, resultObjectAsJson.s)
EndInterface 

;- Enum COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT
#COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT_PNG = 0
#COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT_JPEG = 1

;- _LARGE_INTEGER
Structure _LARGE_INTEGER Align #PB_Structure_AlignC
	QuadPart.q
EndStructure

;- ICoreWebView2CapturePreviewCompletedHandler

DataSection
	IID_ICoreWebView2CapturePreviewCompletedHandler:
	Data.l $DCED64F8
	Data.w $D9C7, $4A3C
	Data.b $B9, $FD, $FB, $BC, $A0, $B4, $34, $96
EndDataSection

Interface ICoreWebView2CapturePreviewCompletedHandler Extends IUnknown
	Invoke(result.l)
EndInterface 

;- ICoreWebView2WebMessageReceivedEventHandler

DataSection
	IID_ICoreWebView2WebMessageReceivedEventHandler:
	Data.l $199328C8
	Data.w $9964, $4F5F
	Data.b $84, $E6, $E8, $75, $B1, $B7, $63, $D6
EndDataSection

Interface ICoreWebView2WebMessageReceivedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2WebMessageReceivedEventArgs

DataSection
	IID_ICoreWebView2WebMessageReceivedEventArgs:
	Data.l $B263B5AE
	Data.w $9C54, $4B75
	Data.b $B6, $32, $40, $AE, $1A, $B, $69, $12
EndDataSection

Interface ICoreWebView2WebMessageReceivedEventArgs Extends IUnknown
	get_Source(Source.i)
	get_webMessageAsJson(webMessageAsJson.i)
	TryGetWebMessageAsString(webMessageAsString.i)
EndInterface 

;- ICoreWebView2CallDevToolsProtocolMethodCompletedHandler

DataSection
	IID_ICoreWebView2CallDevToolsProtocolMethodCompletedHandler:
	Data.l $C20CF895
	Data.w $BA7C, $493B
	Data.b $AB, $2E, $8A, $6E, $3A, $36, $2, $A2
EndDataSection

Interface ICoreWebView2CallDevToolsProtocolMethodCompletedHandler Extends IUnknown
	Invoke(errorCode.l, returnObjectAsJson.s)
EndInterface 

;- ICoreWebView2DevToolsProtocolEventReceiver

DataSection
	IID_ICoreWebView2DevToolsProtocolEventReceiver:
	Data.l $FE59C48C
	Data.w $540C, $4A3C
	Data.b $88, $98, $8E, $16, $2, $E0, $5, $5D
EndDataSection

Interface ICoreWebView2DevToolsProtocolEventReceiver Extends IUnknown
	add_DevToolsProtocolEventReceived(handler.i, token.i)
	remove_DevToolsProtocolEventReceived(token.q)
EndInterface 

;- ICoreWebView2DevToolsProtocolEventReceivedEventHandler

DataSection
	IID_ICoreWebView2DevToolsProtocolEventReceivedEventHandler:
	Data.l $8E1DED79
	Data.w $A40B, $4271
	Data.b $8B, $E6, $57, $64, $C, $16, $7F, $4A
EndDataSection

Interface ICoreWebView2DevToolsProtocolEventReceivedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2DevToolsProtocolEventReceivedEventArgs

DataSection
	IID_ICoreWebView2DevToolsProtocolEventReceivedEventArgs:
	Data.l $F661B1C2
	Data.w $5FF5, $4700
	Data.b $B7, $23, $C4, $39, $3, $45, $39, $B4
EndDataSection

Interface ICoreWebView2DevToolsProtocolEventReceivedEventArgs Extends IUnknown
	get_ParameterObjectAsJson(ParameterObjectAsJson.i)
EndInterface 

;- ICoreWebView2NewWindowRequestedEventHandler

DataSection
	IID_ICoreWebView2NewWindowRequestedEventHandler:
	Data.l $ACAA30EF
	Data.w $A40C, $47BD
	Data.b $9C, $B9, $D9, $C2, $AA, $DC, $9F, $CB
EndDataSection

Interface ICoreWebView2NewWindowRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2NewWindowRequestedEventArgs

DataSection
	IID_ICoreWebView2NewWindowRequestedEventArgs:
	Data.l $9EDC7F5F
	Data.w $C6EA, $4F3C
	Data.b $82, $7B, $A8, $88, $7, $94, $C0, $A9
EndDataSection

Interface ICoreWebView2NewWindowRequestedEventArgs Extends IUnknown
	get_uri(uri.i)
	put_NewWindow(NewWindow.i)
	get_NewWindow(NewWindow.i)
	put_Handled(Handled.l)
	get_Handled(Handled.i)
	get_IsUserInitiated(IsUserInitiated.i)
	GetDeferral(deferral.i)
EndInterface 

;- ICoreWebView2DocumentTitleChangedEventHandler

DataSection
	IID_ICoreWebView2DocumentTitleChangedEventHandler:
	Data.l $6423D6B1
	Data.w $5A57, $46C5
	Data.b $BA, $46, $DB, $B3, $73, $5E, $E7, $C9
EndDataSection

Interface ICoreWebView2DocumentTitleChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2ContainsFullScreenElementChangedEventHandler

DataSection
	IID_ICoreWebView2ContainsFullScreenElementChangedEventHandler:
	Data.l $120888E3
	Data.w $4CAD, $4EC2
	Data.b $B6, $27, $B2, $1, $6D, $5, $61, $2D
EndDataSection

Interface ICoreWebView2ContainsFullScreenElementChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2WebResourceRequestedEventHandler

DataSection
	IID_ICoreWebView2WebResourceRequestedEventHandler:
	Data.l $F6DC79F2
	Data.w $E1FA, $4534
	Data.b $89, $68, $4A, $FF, $10, $BB, $AA, $32
EndDataSection

Interface ICoreWebView2WebResourceRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2WebResourceRequestedEventArgs

DataSection
	IID_ICoreWebView2WebResourceRequestedEventArgs:
	Data.l $2D7B3282
	Data.w $83B1, $41CA
	Data.b $8B, $BF, $FF, $18, $F6, $BF, $E3, $20
EndDataSection

Interface ICoreWebView2WebResourceRequestedEventArgs Extends IUnknown
	get_Request(Request.i)
	get_Response(Response.i)
	put_Response(Response.i)
	GetDeferral(deferral.i)
	get_ResourceContext(context.i)
EndInterface 

;- ICoreWebView2WebResourceRequest

DataSection
	IID_ICoreWebView2WebResourceRequest:
	Data.l $11B02254
	Data.w $B827, $49F6
	Data.b $89, $74, $30, $F6, $E6, $C5, $5A, $F6
EndDataSection

Interface ICoreWebView2WebResourceRequest Extends IUnknown
	get_uri(uri.i)
	put_uri(uri.s)
	get_Method(Method.i)
	put_Method(Method.s)
	get_Content(Content.i)
	put_Content(Content.i)
	get_Headers(Headers.i)
EndInterface 

;- ICoreWebView2WebResourceResponse

DataSection
	IID_ICoreWebView2WebResourceResponse:
	Data.l $5953D1FC
	Data.w $B08F, $46DD
	Data.b $AF, $D3, $66, $B1, $72, $41, $9C, $D0
EndDataSection

Interface ICoreWebView2WebResourceResponse Extends IUnknown
	get_Content(Content.i)
	put_Content(Content.i)
	get_Headers(Headers.i)
	get_StatusCode(StatusCode.i)
	put_StatusCode(StatusCode.l)
	get_ReasonPhrase(ReasonPhrase.i)
	put_ReasonPhrase(ReasonPhrase.s)
EndInterface 

Structure ICoreWebView2WebResourceResponseVtbl Extends IUnknownVtbl
	get_Content.i
	put_Content.i
	get_Headers.i
	get_StatusCode.i
	put_StatusCode.i
	get_ReasonPhrase.i
	put_ReasonPhrase.i
EndStructure

;- ICoreWebView2HttpResponseHeaders

DataSection
	IID_ICoreWebView2HttpResponseHeaders:
	Data.l $B5F6D4D5
	Data.w $1BFF, $4869
	Data.b $85, $B8, $15, $81, $53, $1, $7B, $4
EndDataSection

Interface ICoreWebView2HttpResponseHeaders Extends IUnknown
	AppendHeader(name.s, value.s)
	Contains(name.s, Contains.i)
	GetHeader(name.s, value.i)
	GetHeaders(name.s, iterator.i)
	GetIterator(iterator.i)
EndInterface 

Structure ICoreWebView2HttpResponseHeadersVtbl Extends IUnknownVtbl
	AppendHeader.i
	Contains.i
	GetHeader.i
	GetHeaders.i
	GetIterator.i
EndStructure

;- Enum COREWEBVIEW2_WEB_RESOURCE_CONTEXT
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_ALL = 0
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_DOCUMENT = 1
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_STYLESHEET = 2
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_IMAGE = 3
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MEDIA = 4
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_FONT = 5
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SCRIPT = 6
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_XML_HTTP_REQUEST = 7
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_FETCH = 8
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_TEXT_TRACK = 9
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_EVENT_SOURCE = 10
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_WEBSOCKET = 11
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MANIFEST = 12
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SIGNED_EXCHANGE = 13
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_PING = 14
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_CSP_VIOLATION_REPORT = 15
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_OTHER = 16

;- ICoreWebView2WindowCloseRequestedEventHandler

DataSection
	IID_ICoreWebView2WindowCloseRequestedEventHandler:
	Data.l $63C89928
	Data.w $AD32, $4421
	Data.b $A0, $E4, $EC, $99, $B3, $4A, $A9, $7E
EndDataSection

Interface ICoreWebView2WindowCloseRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2CreateCoreWebView2ControllerCompletedHandler

DataSection
	IID_ICoreWebView2CreateCoreWebView2ControllerCompletedHandler:
	Data.l $86EF6808
	Data.w $3C3F, $4C6F
	Data.b $97, $5E, $8C, $E0, $B9, $8F, $70, $BA
EndDataSection

Interface ICoreWebView2CreateCoreWebView2ControllerCompletedHandler Extends IUnknown
	Invoke(result.l, createdController.i)
EndInterface 

;- ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler

DataSection
	IID_ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler:
	Data.l $8B4F98CE
	Data.w $DB0D, $4E71
	Data.b $85, $FD, $C4, $C4, $EF, $1F, $26, $30
EndDataSection

Interface ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler Extends IUnknown
	Invoke(result.l, created_environment.i)
EndInterface 

;- ICoreWebView2Environment

DataSection
	IID_ICoreWebView2Environment:
	Data.l $DA66D884
	Data.w $6DA8, $410E
	Data.b $96, $30, $8C, $48, $F8, $B3, $A4, $E
EndDataSection

Interface ICoreWebView2Environment Extends IUnknown
	CreateCoreWebView2Controller(ParentWindow.i, handler.i)
	CreateWebResourceResponse(Content.i, StatusCode.l, ReasonPhrase.s, Headers.s, Response.i)
	get_BrowserVersionString(versionInfo.i)
	add_NewBrowserVersionAvailable(eventHandler.i, token.i)
	remove_NewBrowserVersionAvailable(token.q)
EndInterface 

;- ICoreWebView2NewBrowserVersionAvailableEventHandler

DataSection
	IID_ICoreWebView2NewBrowserVersionAvailableEventHandler:
	Data.l $E82E8242
	Data.w $EE39, $4A57
	Data.b $A0, $65, $E1, $32, $56, $D6, $3, $42
EndDataSection

Interface ICoreWebView2NewBrowserVersionAvailableEventHandler Extends IUnknown
	Invoke(webviewEnvironment.i, args.i)
EndInterface 

;- ICoreWebView2EnvironmentOptions

DataSection
	IID_ICoreWebView2EnvironmentOptions:
	Data.l $97E9FBD9
	Data.w $646A, $4B75
	Data.b $86, $82, $14, $9B, $71, $DA, $CE, $59
EndDataSection

Interface ICoreWebView2EnvironmentOptions Extends IUnknown
	get_AdditionalBrowserArguments(value.i)
	put_AdditionalBrowserArguments(value.s)
	get_Language(value.i)
	put_Language(value.s)
	get_TargetCompatibleBrowserVersion(value.i)
	put_TargetCompatibleBrowserVersion(value.s)
EndInterface 

Structure ICoreWebView2EnvironmentOptionsVtbl Extends IUnknownVtbl
	get_AdditionalBrowserArguments.i
	put_AdditionalBrowserArguments.i
	get_Language.i
	put_Language.i
	get_TargetCompatibleBrowserVersion.i
	put_TargetCompatibleBrowserVersion.i
EndStructure

