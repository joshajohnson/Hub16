; Thanks to TaranVH for this script (https://github.com/TaranVH)

#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

;------------------  ENC1:Clockwise: q
;|  ENC1   ENC2   |  ENC1:Anticlockwise: r
;| a   b   c   d  |  ENC1:Button: s
;| e   f   g   h  |  ENC2:Clockwise: t
;| i   j   k   l  |  ENC2:Anticlockwise: u
;| m   n   o   p  |  ENC2:Button: v
;------------------

; Run the below if F24 is pressed, and KiCad is open.
#if (getKeyState("F24", "P")) and if WinActive("ahk_exe kicad.exe")
F24::return

; Row 1
a::Esc
b::Del
c::^+m ; Measure
d::^+v ; Via
; Row 2
e::^+z ; Copper pour
f::^+k ; Keepout area
g::`   ; Decrease via size
h::\   ; Increase via size
; Row 3
i::^+t ; Text
j::^+h ; Dimension
k::^m  ; Move exactly
l::^r  ; Move relative
; Row 4
; m::
; n::
; o::
; p::

; Encoder 1
; Clockwise
q::w    ; Next track width
; Anti Clockwise
r::^w   ; Prev track width
; Button
; s::
; Encoder 2
; Clockwise
t::n 	; Next grid size
; Anti Clockwise
u::^n   ; Previous grid size
; Button
; v::

; Template for your chosen application
; #if (getKeyState("F24", "P")) and if WinActive("ahk_exe applicaton.exe")
; F24::return

; ; Row 1
; a::
; b::
; c::
; d::
; ; Row 2
; e::
; f::
; g::
; h::
; ; Row 3
; i::
; j::
; k::
; l::
; ; Row 4
; m::
; n::
; o::
; p::

; ; Encoder 1
; ; Clockwise
; q::
; ; Anti Clockwise
; r::
; ; Button
; s::
; ; Encoder 2
; ; Clockwise
; t::
; ; Anti Clockwise
; u::
; ; Button
; v::

; If not in Kicad / any above apps, run the below
#if (getKeyState("F24", "P")) 
F24::return

; Row 1
a::Esc
b::^w
c::WheelUp
d::WheelDown
; Row 2
e::^Tab
f::LButton
g::MButton
h::RButton
; Row 3
i::
{	
	; If Excel Active, open file
	if WinActive("ahk_exe EXCEL.EXE")
		Send {control down}{o}{control up}
	; If Excel not active, activate excel
	else if WinExist("ahk_exe EXCEL.EXE")
		WinActivate
	else
		Run, EXCEL.EXE
	return
}
j::
{	; Login into Application
	if WinActive("Title Of Application"){
		; Adjust below keypresses to suit your use case
		Send system{enter}
		Sleep, 200
		Send department{enter}
		Sleep, 200
		Send username{tab}{tab}
	}
	; Activate app
	if WinExist("Title Of Application")
		WinActivate
	else if WinExist("Title Of Application Launcher")
		WinActivate
	else
		Run, C:\path-to-exe
	return
}
k::
{	
	; If Outlook Active, new email
	if WinActive("ahk_exe OUTLOOK.EXE")
		Send {control down}{n}{control up}
	; If Outlook not active, activate outlook
	else if WinExist("ahk_exe OUTLOOK.EXE")
		WinActivate
	else
		Run, OUTLOOK.EXE
	return
}
; Row 4
m:: 
{
	Send (╯°□°)╯︵ ┻━┻
	return
}
n::
{
	Send ¯\_(ツ)_/¯
	return
}
; o::
; p::

; Encoder 1
; Clockwise
q::Volume_Up
; Anti Clockwise
r::Volume_Down
; Button
s:: Volume_Mute
; Encoder 2
; Clockwise
t::Media_Next
; Anti Clockwise
u::Media_Prev
; Button
v::Media_Play_Pause