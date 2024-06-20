/* 
NOTE: For automatic startup place a shortcut to this script in the directory 
`%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`

An extend layer activated with the capslock key. Similar to https://dreymar.colemak.org/layers-extend.html but with far 
fewer features.

Key map: qwerty keys -> caps layer function (see key below)

Standard:
y  u  i  o  p    -> c  h  b  e  d
 h [j  k  l  ;]  ->  < [v  ^  >  s]
   n  m  ,  .  / ->    p  l  i  r  x

Columnar:
y  u  i  o  p   ->   c  h  b  e  d 
h [j  k  l  ;]  ->   < [v  ^  >  s]
n  m  ,  .  /   ->   p  l  i  r  x 

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
- c: copy
- p: paste
*/

#Requires Autohotkey v2.0
#SingleInstance Force


;;;; top row
CapsLock & y::^c
CapsLock & u::home
CapsLock & i::backspace
CapsLock & o::end
CapsLock & p::delete


;;;; home row
CapsLock & h::left
CapsLock & j::down
CapsLock & k::up
CapsLock & l::right

; select line (excluding leading whitespace)
CapsLock & `;::Send '{end}+{home}'


;;;; bottom row
CapsLock & n::^v

; word left
#HotIf GetKeyState("Shift")
CapsLock & m::Send '^+{left}'
#HotIf !GetKeyState("Shift")
CapsLock & m::Send '^{left}'

; insert line above (place cursor at start of new line)
CapsLock & ,::Send '{up}{end}{enter}'

; word right
#HotIf GetKeyState("Shift")
CapsLock & .::Send '^+{right}'
#HotIf !GetKeyState("Shift")
CapsLock & .::Send '^{right}'

; delete line (place cursor at start of next line)
CapsLock & /::Send '{home}+{down}{backspace}'