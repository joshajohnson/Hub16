; Thanks to TaranVH for this script (https://github.com/TaranVH)

#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

; ------------------
; |  ENC1   ENC2   |
; | a   b   c   d  |
; | e   f   g   h  |
; | i   j   k   l  |
; | m   n   o      |
; ------------------

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

; Run if the above have not been triggered
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
; i::
; j::
; k::
; l::
; Row 4
; m::
; n::
; o::

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