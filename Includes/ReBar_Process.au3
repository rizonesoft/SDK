;===============================================================================
;
; Function Name:    _ProcessExitCode()
; Description:      Returns a handle/exitcode from use of Run().
; Parameter(s):     $iPID         - ProcessID returned from a Run() execution
;                   $hProcess     - Process handle
; Requirement(s):   None
; Return Value(s):  On Success - Returns Process handle while Run() is executing
;                                (use above directly after Run() line with only PID parameter)
;                              - Returns Process Exitcode when Process does not exist
;                                (use above with PID and Process Handle parameter returned from first UDF call)
;                   On Failure - 0
; Author(s):        MHz (Thanks to DaveF for posting these DllCalls in Support Forum)
;
;===============================================================================
;
Func _ProcessExitCode($iPID, $hProcess = 0)

	; 0 = Return Process Handle of PID else use Handle to Return Exitcode of a PID
	Local $vPlaceholder

	If Not IsArray($hProcess) Then
		; Return the process handle of a PID
		$hProcess = DllCall('kernel32.dll', 'ptr', 'OpenProcess', 'int', 0x400, 'int', 0, 'int', $iPID)
		If Not @error Then Return $hProcess
	Else
		; Return Process Exitcode of PID
		$hProcess = DllCall('kernel32.dll', 'ptr', 'GetExitCodeProcess', 'ptr', $hProcess[0], 'int*', $vPlaceholder)
		If Not @error Then Return $hProcess[2]
	EndIf

	Return 0

EndFunc   ;==>_ProcessExitCode


Func _ProcessCloseHandle($h_Process)
	; Close the process handle of a PID
	DllCall('kernel32.dll', 'ptr', 'CloseHandle', 'ptr', $h_Process)
	If Not @error Then Return 1
	Return 0
EndFunc   ;==>_ProcessCloseHandle