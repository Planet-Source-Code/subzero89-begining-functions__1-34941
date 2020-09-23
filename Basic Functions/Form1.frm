VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Basic Functions"
   ClientHeight    =   3735
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6090
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3735
   ScaleWidth      =   6090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1800
      TabIndex        =   25
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Change Form Text"
      Height          =   375
      Left            =   1800
      TabIndex        =   24
      Top             =   1800
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   4680
      TabIndex        =   23
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton Command19 
      Caption         =   "Decrypt Text"
      Height          =   375
      Left            =   4680
      TabIndex        =   22
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command18 
      Caption         =   "Encrypt Text"
      Height          =   375
      Left            =   4680
      TabIndex        =   21
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command17 
      Caption         =   "White"
      Height          =   255
      Left            =   4680
      TabIndex        =   20
      Top             =   3360
      Width           =   615
   End
   Begin VB.CommandButton Command16 
      Caption         =   "Red"
      Height          =   255
      Left            =   4080
      TabIndex        =   19
      Top             =   3360
      Width           =   615
   End
   Begin VB.CommandButton Command15 
      Caption         =   "Black"
      Height          =   255
      Left            =   3480
      TabIndex        =   18
      Top             =   3360
      Width           =   615
   End
   Begin VB.CommandButton Command13 
      Caption         =   "Change"
      Height          =   375
      Left            =   3840
      TabIndex        =   16
      Top             =   1320
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   3360
      TabIndex        =   15
      Text            =   "Change Caption"
      Top             =   1680
      Width           =   2055
   End
   Begin VB.CommandButton Command14 
      Enabled         =   0   'False
      Height          =   375
      Left            =   3360
      TabIndex        =   14
      Top             =   2040
      Width           =   2055
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Check2"
      Height          =   255
      Left            =   3840
      TabIndex        =   13
      Top             =   960
      Width           =   255
   End
   Begin VB.CommandButton Command12 
      Caption         =   "Check Invisible"
      Height          =   375
      Left            =   3360
      TabIndex        =   12
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Check Visible"
      Height          =   375
      Left            =   3360
      TabIndex        =   11
      Top             =   120
      Width           =   1215
   End
   Begin VB.CheckBox Check1 
      Height          =   255
      Left            =   1680
      TabIndex        =   10
      Top             =   3240
      Width           =   255
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Disable Check Box"
      Height          =   375
      Left            =   0
      TabIndex        =   9
      Top             =   3360
      Width           =   1575
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Enable Check Box"
      Height          =   375
      Left            =   0
      TabIndex        =   8
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Stop Form Flash"
      Height          =   375
      Left            =   1440
      TabIndex        =   6
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Timer Timer1 
      Left            =   2880
      Top             =   960
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Form Flash"
      Height          =   375
      Left            =   1440
      TabIndex        =   5
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Center Screen"
      Height          =   375
      Left            =   1440
      TabIndex        =   4
      Top             =   240
      Width           =   1335
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Disable CtrlAltDel"
      Height          =   375
      Left            =   0
      TabIndex        =   3
      Top             =   1200
      Width           =   1335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Enable CtrlAltDel"
      Height          =   375
      Left            =   0
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close CD"
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   360
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Open CD"
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1335
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Change Background color"
      Height          =   495
      Left            =   3480
      TabIndex        =   17
      Top             =   2760
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "I will update this soon and make a copy and paste friendly version of this...Enjoy it!"
      Height          =   855
      Left            =   0
      TabIndex        =   7
      Top             =   1800
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'This is to Open/Close the CD Drive
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
'This is the declaration for the Form Flash
Private Declare Function FlashWindow Lib "user32" (ByVal hwnd As Long, ByVal bInvert As Long) As Long

Private Sub Command1_Click()
'this opens the CDROM
mciSendString "set CDAudio door open", t, 127, 0

End Sub

Private Sub Command10_Click()
'This stops the Form Flash
Timer1.Enabled = False

End Sub

Private Sub Command11_Click()
Check2.Visible = True

End Sub

Private Sub Command12_Click()
Check2.Visible = False
End Sub

Private Sub Command13_Click()
Command14.Caption = Text1
End Sub

Private Sub Command15_Click()
Form1.BackColor = HFFF
End Sub

Private Sub Command16_Click()
Form1.BackColor = &HFF
End Sub

Private Sub Command17_Click()
Form1.BackColor = &HFFFFFF
End Sub

Private Sub Command18_Click()
Text2.PasswordChar = "*"
End Sub

Private Sub Command19_Click()
Text2.PasswordChar = ""
End Sub

Private Sub Command2_Click()
'This closes the CDROM
mciSendString "set CDAudio door closed", t, 127, 0

End Sub

Private Sub Command3_Click()
Form1.Caption = Text3
End Sub

Private Sub Command4_Click()
EnableCtrlAltDelete (False)

 EnableCtrlAltDelete (True)

End Sub

Private Sub Command5_Click()
DisableCtrlAltDelete (False)

 DisableCtrlAltDelete (True)

End Sub

Private Sub Command6_Click()
Check1.Enabled = True
End Sub

Private Sub Command7_Click()
Check1.Enabled = False
End Sub

Private Sub Command8_Click()
'this centers the Form in the middle of the screen
Top = Screen.Height / 2 - Height / 2
Left = Screen.Width / 2 - Width / 2
End Sub

Private Sub Command9_Click()
Timer1.Enabled = True

End Sub

Private Sub Form_Load()
'This is for Form Flash
Timer1.Interval = 1 'Change value depending On the speed of flahing.
'Disables Timer on Startup
Timer1.Enabled = False
End Sub


Private Sub ProgressBar1_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
ProgressBar1.Value = Slider1.Value
End Sub

Private Sub Slider1_Click()
Slider1.Value = ProgressBar1.Value
End Sub

Private Sub Text1_Change()
Command14.Caption = ""
End Sub

Private Sub Timer1_Timer()
'This is for the form flash
 FlashWindow hwnd, 1
End Sub
