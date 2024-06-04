/* 
NOTE: For automatic startup place a shortcut to this script in the directory 
`%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`

An extend layer activated with the capslock key. Similar to https://dreymar.colemak.org/layers-extend.html but with far 
fewer features.

Key map: qwerty keys -> caps layer function (see key below)

Standard:
  u  i  o  p    ->    h  e  b  d
h [j  k  l  ;]  ->  < [v  ^  >  s]
  m  ,  .  /    ->       l  r  x  i

Columnar:
   u  i  o  p   ->      h  e  b  d 
h [j  k  l  ;]  ->   < [v  ^  >  s] 
   m  ,  .  /   ->      l  r  x  i 

Key:
- []: indicates home row
- h: home
- b: backspace
- d: delete
- e: end
- l: word left
- r: word right
- x: delete line (place cursor at start of next line)
- s: select line (excluding leading whitespace)
- i: insert line above (place cursor at start of new line)
*/

#Requires Autohotkey v2.0
#SingleInstance Force


;;;; top row
CapsLock & u::home
CapsLock & i::end
CapsLock & o::backspace
CapsLock & p::delete


;;;; home row
CapsLock & h::left
CapsLock & j::down
CapsLock & k::up
CapsLock & l::right

; select line (excluding leading whitespace)
CapsLock & `;::Send '{end}+{home}'


;;;; bottom row

; word left
#HotIf GetKeyState("Shift")
CapsLock & m::Send '^+{left}'
#HotIf !GetKeyState("Shift")
CapsLock & m::Send '^{left}'

; word right
#HotIf GetKeyState("Shift")
CapsLock & ,::Send '^+{right}'
#HotIf !GetKeyState("Shift")
CapsLock & ,::Send '^{right}'

; delete line (place cursor at start of next line)
CapsLock & .::Send '{home}+{down}{backspace}'

; insert line above (place cursor at start of new line)
CapsLock & /::Send '{up}{end}{enter}'