Attribute VB_Name = "Module1"

'-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
' Used for DisableCtrlAltDelete
Private Declare Function SystemParametersInfo Lib _
"user32" Alias "SystemParametersInfoA" (ByVal uAction _
As Long, ByVal uParam As Long, ByVal lpvParam As Any, _
ByVal fuWinIni As Long) As Long
'-------------------------------------------

Sub DisableCtrlAltDelete(bDisabled As Boolean)
    ' Disables Control Alt Delete Breaking as well as Ctrl-Escape
    Dim X As Long
    X = SystemParametersInfo(97, bDisabled, CStr(1), 0)
End Sub


Sub EnableCtrlAltDelete(bEnabled As Boolean)
    ' Disables Control Alt Delete Breaking as well as Ctrl-Escape
    Dim X As Long
    X = SystemParametersInfo(97, bEnabled, CStr(1), 0)
End Sub
'This hides the start button
Public Function HideStartButton()
Dim Handle As Long, FindClass As Long
FindClass& = FindWindow("Shell_TrayWnd", "")
Handle& = FindWindowEx(FindClass&, 0, "Button", vbNullString)
ShowWindow Handle&, 0
End Function
'This shows the start button
Public Function ShowStartButton()
Dim Handle As Long, FindClass As Long
FindClass& = FindWindow("Shell_TrayWnd", "")
Handle& = FindWindowEx(FindClass&, 0, "Button", vbNullString)
ShowWindow Handle&, 1
End Function
'This hides the Task Bar
Public Function HideTaskBar()
Dim FindClass As Long, FindParent As Long, Handle As Long
FindClass& = FindWindow("Shell_TrayWnd", vbNullString)
FindParent& = FindWindowEx(FindClass&, 0, "TrayNotifyWnd", vbNullString)
Handle& = FindWindowEx(FindParent&, 0, "TrayClockWClass", vbNullString)
ShowWindow Handle&, 0
End Function
'This shows the Task Bar
Public Function ShowTaskBarClock()
Dim FindClass As Long, FindParent As Long, Handle As Long
FindClass& = FindWindow("Shell_TrayWnd", vbNullString)
FindParent& = FindWindowEx(FindClass&, 0, "TrayNotifyWnd", vbNullString)
Handle& = FindWindowEx(FindParent&, 0, "TrayClockWClass", vbNullString)
ShowWindow Handle&, 1
End Function
