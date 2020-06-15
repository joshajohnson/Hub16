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

; Types the key character to ensure it is working.
#if (getKeyState("F24", "P")) 
F24::return

; Row 1
a::a
b::b
c::c
d::d
; Row 2
e::e
f::f
g::g
h::h
; Row 3
i::i
j::j
k::k
l::l
; Row 4
m::m
n::n
o::o
p::p

; Encoder 1
; Clockwise
q::q
; Anti Clockwise
r::r
; Button
s::s
; Encoder 2
; Clockwise
t::t
; Anti Clockwise
u::u
; Button
v::v