v1.01

linecount = 1
delay = 850


F9::

Send **KINKY BOT v1.01** +{Enter}+{Enter}
Send **To use this bot, type something then press F10, the bot will copy the text and spam it in chat. 
Send You can also edit a variable in this script called linecount to change the amount of lines per message.**
Send +{Enter}Bot Available at https://github.com/Deanaro/KinkyBot
Send +{Enter}This bot requires AHK https://autohotkey.com/
Send +{Enter}+{Enter}**F9** - Help
Send +{Enter}**F10** - Start
Send +{Enter}**F11** - Start without copy
Send +{Enter}**F12** - Pause
Send +{Enter}**Ctrl{+}F12** - Terminate Bot

Send +{Enter}+{Enter}*Made by Kinky Dean*

Send {Enter}

Send {Enter}

Return

F10::

Send ^a
Send ^c
Send {Delete}
Pause, Off
Send {F12}
Send {F11}
Return

F11::

Loop,
{
	inputdelay = %delay%/%linecount%
	Send ^v 
	loop %linecount%-1
	{
		Send +{Enter}^v  
	}
	Send {Enter}
	sleep, inputdelay
}
Return

F12::Pause

^F12::
ExitApp
Return
