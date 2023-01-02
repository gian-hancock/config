/* 
 * For automatic startup place a shortcut to this script in the directory `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`
 */

#SingleInstance Force
#MaxHotkeysPerInterval 800
SetCapsLockState, AlwaysOff

/* 
| -------------------------------- | -------------------------------- |
| Shortcut                         | Output                           |
| CAPSLOCK + { h, j, k, l }        | { Left, Down, Up, Right }        |
| CAPSLOCK + { 0, $ }              | { Home, End }                    |
| CAPSLOCK + { shift+x, x }        | { Backspace, Delete}             |
| CAPSLOCK + { b, w }              | CTRL + { Left, Right }
*/

CapsLock::
	If (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey < 250)
	{
		If GetKeyState("CapsLock", "T") 
			SetCapsLockState, AlwaysOff
		else
			SetCapsLockState, AlwaysOn
	}
return

CapsLock & LALT::
    SetCapsLockState, Off
    SetCapsLockState, AlwaysOff
return

CapsLock & k::
    Send {Up}
return

CapsLock & j::
    Send {Down}
return

CapsLock & h::
    Send {Left}
return

CapsLock & l::
    Send {Right}
return

CapsLock & 0::
    Send {Home}
return

CapsLock & 4::
    Send {End}
return

CapsLock & h::
    Send {Backspace}
return

CapsLock & `;::
    Send {Delete}
return

CapsLock & m::
    Send ^{Left}
return

CapsLock & .::
    Send ^{Right}
return

#if GetKeyState("LSHIFT", "P")
	CapsLock & i::
    	Send +{Up}
	return

	CapsLock & k::
	    Send +{Down}
	return

	CapsLock & j::
	    Send +{Left}
	return

	CapsLock & l::
	    Send +{Right}
	return

	CapsLock & u::
	    Send +{Home}
	return

	CapsLock & o::
	    Send +{End}
	return
	
	CapsLock & m::
		Send +^{Left}
	return

	CapsLock & .::
		Send +^{Right}
	return
#if

#if GetKeyState("LCONTROL", "P")
	CapsLock & i::
    	Send ^{Up}
	return

	CapsLock & k::
	    Send ^{Down}
	return

	CapsLock & j::
	    Send ^{Left}
	return

	CapsLock & l::
	    Send ^{Right}
	return

	CapsLock & u::
	    Send ^{Home}
	return

	CapsLock & o::
	    Send ^{End}
	return
	
	CapsLock & h::
		Send ^{Backspace}
	return

	CapsLock & `;::
		Send ^{Delete}
	return
#if

return