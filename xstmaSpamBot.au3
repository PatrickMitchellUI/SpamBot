#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.10.2
	Author:         xstma - (based off the work of Vort3chs)

	Script Function:
	Flood a user on any service that uses the 'Type Message > Hit Enter' format!

#ce ----------------------------------------------------------------------------

#include <Array.au3>
#include <File.au3>
#include <FileConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <SliderConstants.au3>
#include <ProgressConstants.au3>
#include <InetConstants.au3>
#include <String.au3>
#include <ButtonConstants.au3>


Global $optUpdate, $aIsMajor, $LatestVersionDev, $aVersionActual, $aCurVersion, $isMajor, $updateStat, $folderpath, $nvar, $cuicountdown, $rndvarprog, $radio4, $radio3, $progress1, $slidecheckbox, $readslide, $slider1, $button2, $label14, $rndnumbinput, $min, $max, $rndnumb, $message, $ms, $msgs, $spamnumb, $input1, $input2, $input3, $button1, $input4, $label1, $label2, $label3, $radio1, $radio2, $msgstosend, $spammeduser, $label5, $label6, $label7, $label8, $suicidalscript, $label10, $label11, $label12, $label13, $label14, $label15, $label16

spmGui()

$ScriptVersion = "3.07"

Func spmGui()
	ConsoleWrite('@@ (34) :(' & @MIN & ':' & @SEC & ') spmGui()' & @CR) ;### Function Trace
	#Region ### START Koda GUI section ### Form=
	$form1_1_1 = GUICreate("xstmaSpamBot", 400, 250, 900, 400, BitOr($WS_BORDER, $WS_POPUP), BitOR($WS_EX_TOPMOST, $WS_EX_TOOLWINDOW))
	$input1 = GUICtrlCreateInput("", 200, 80, 190, 21)
	$input3 = GUICtrlCreateInput("", 200, 111, 190, 21)
	$button1 = GUICtrlCreateButton("GO", 10, 180, 380, 30)
	$button99 = GUICtrlCreateButton("QUIT", 10, 215, 380, 30)
	$input4 = GUICtrlCreateInput("", 200, 142, 190, 21)
	$label1 = GUICtrlCreateLabel("Spam Message:", 10, 80, 80, 17)
	$label3 = GUICtrlCreateLabel("Time between each:", 10, 111, 109, 17)
	$msgstosend = GUICtrlCreateLabel("Number of messages to send:", 10, 142, 144, 17)
	$label10 = GUICtrlCreateLabel("The delay after hitting launch is 20 seconds, make sure you have a suitable text input selected for flooding! If you don't... Don't blame me!", 8, 304, 671, 17)
	$label14 = GUICtrlCreateLabel("ms", 584, 184, 17, 17)
	$label15 = GUICtrlCreateLabel("messages", 584, 217, 51, 17)
	$label4 = GUICtrlCreateLabel("UP ARROW KILLS THE SCRIPT", 120, 45, 400, 17)
	$progress1 = GUICtrlCreateProgress(10, 8, 380, 25)
	GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###
	GUISetState(@SW_SHOW)


	While 1
		$msg = GUIGetMsg()
		If $msg = $gui_event_close Then ExitLoop
		If $msg = $button1 Then button1()
		If $msg = $button99 Then button99()
WEnd
EndFunc   ;==>spmGui

Func button99()
	ConsoleWrite('@@ (106) :(' & @MIN & ':' & @SEC & ') button99()' & @CR) ;### Function Trace
	GUISetState(@SW_DISABLE)
	If GUICtrlRead($radio1) = $gui_checked Then
		HotKeySet("{UP}", "kill")
		kill()
	Else
		HotKeySet("{UP}", "kill")
		kill()
	EndIf
EndFunc

Func button1()
	ConsoleWrite('@@ (106) :(' & @MIN & ':' & @SEC & ') button1()' & @CR) ;### Function Trace
	GUISetState(@SW_DISABLE)
	If GUICtrlRead($radio1) = $gui_checked Then
		HotKeySet("{UP}", "EmergencyStop")
		custSpam()
	Else
		HotKeySet("{UP}", "EmergencyStop")
		custSpam()
	EndIf
EndFunc   ;==>button1


Func emergencyStop()
	ConsoleWrite('@@ (138) :(' & @MIN & ':' & @SEC & ') emergencyStop()' & @CR) ;### Function Trace
	Opt("SendKeyDelay", 0)
	Opt("SendKeyDownDelay", 0)
	Sleep(50)
	Send(" ")
	Send("{ENTER}")
	Sleep(30)
	Run("xstmaSpamBot.exe", "", "")
	Exit
EndFunc   ;==>emergencyStop

Func kill()
	ConsoleWrite('@@ (138) :(' & @MIN & ':' & @SEC & ') kill()' & @CR) ;### Function Trace
	Opt("SendKeyDelay", 0)
	Opt("SendKeyDownDelay", 0)
	Sleep(50)
	Send(" ")
	Send("{ENTER}")
	Sleep(30)
	Exit
EndFunc 

Func custSpam()
	ConsoleWrite('@@ (150) :(' & @MIN & ':' & @SEC & ') custSpam()' & @CR) ;### Function Trace
	GUICtrlSetData($progress1, 100)
	$rndvarprog = False
	$spmdusr = GUICtrlRead($spammeduser)
	$message = GUICtrlRead($input1)
	$ms = GUICtrlRead($input3)
	$msgs = GUICtrlRead($input4)
	Opt("SendKeyDelay", 0)
	Opt("SendKeyDownDelay", 0)
	Opt("TrayAutoPause", 1)
	GUICtrlSetData($progress1, 100)
	Sleep (1000)
	GUICtrlSetData($progress1, 90)
	Sleep (1000)
	GUICtrlSetData($progress1, 80)
	Sleep (1000)
	GUICtrlSetData($progress1, 70)
	Sleep (1000)
	GUICtrlSetData($progress1, 60)
	Sleep (1000)
	GUICtrlSetData($progress1, 50)
	Sleep (1000)
	GUICtrlSetData($progress1, 40)
	Sleep (1000)
	GUICtrlSetData($progress1, 30)
	Sleep (1000)
	GUICtrlSetData($progress1, 20)
	Sleep (1000)
	GUICtrlSetData($progress1, 10)
	Sleep (1000)
	GUICtrlSetData($progress1, 0)
	Sleep (1000)
	
	GUICtrlSetData($progress1, 20)
	For $spamnumb = 1 To $msgs
		GUICtrlSetData($progress1, 40)
		Send($message & "{ENTER}")
		Sleep($ms)
	Next
	GUICtrlSetData($progress1, 60)
	GUICtrlSetData($progress1, 100)
	MsgBox($mb_iconinformation, "DONE", "Spamming complete!")
	$rndvarprog = True
	GUISetState(@SW_SHOW)
	Sleep(2000)
	GUICtrlSetData($progress1, 0)
	GUISetState(@SW_ENABLE)
EndFunc   ;==>custSpam
