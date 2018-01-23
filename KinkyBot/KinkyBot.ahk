Version = v1.02

delay = 850
TextArray :=[Empty]
ArrayLength = 0

F9::
waspaused = %A_IsPaused%
Pause, Off

Send **KINKY BOT %Version%** +{Enter}+{Enter}
Send **To use this bot, type something then press F10 to add it to a list.
Send +{Enter}Press F11 to start the bot.**
Send +{Enter}Bot Available at https://github.com/Deanaro/KinkyBot
Send +{Enter}This bot requires AHK https://autohotkey.com/
Send +{Enter}+{Enter}**F9** - Help
Send +{Enter}**F10** - Add Line
Send +{Enter}**Ctrl{+}F10** - Reset Array
Send +{Enter}**F11** - Send in loop
Send +{Enter}**Ctrl{+}F11** - Send
Send +{Enter}**F12** - Pause
Send +{Enter}**Ctrl{+}F12** - Terminate Bot

Send +{Enter}+{Enter}*Made by Kinky Dean*

Send {Enter}

Send {Enter}

if waspaused
{
Pause, On
}
Return





F10::
waspaused = %A_IsPaused%
Pause, Off
Send ^a
Send ^c
ArrayLength ++
TextArray[ArrayLength] := clipboard
Send {Delete}
if waspaused
{
Pause, On
}
Return

^F10::
	waspaused = %A_IsPaused%
	Pause, Off
	TextArray :=[]
	ArrayLength = 0
	if waspaused
	{
	Pause, On
	}
	
Return

F11::
Pause, Off
Loop,
{
	i = 1
	loop, %ArrayLength%
	{
 		Send, % TextArray[i]
		i ++
 		Send {Enter}
 		Sleep, Delay
	}
}
Return

^F11::
waspaused = %A_IsPaused%
Pause, Off
i = 1
loop, %ArrayLength%
{
 	Send, % TextArray[i]
	i ++
 	Send {Enter}
 	Sleep, Delay
}
if waspaused
{
Pause, On
}
Return

F12::
Pause
Return

^F12::
ExitApp
Return
