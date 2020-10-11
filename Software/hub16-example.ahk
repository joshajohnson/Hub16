#NoEnv
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time
#MaxHotkeysPerInterval 2000
SetTitleMatchMode, 2 ; Partial title string matching

;Hub16
;------------------  ENC1:Clockwise: q
;|  ENC1   ENC2   |  ENC1:Anticlockwise: r
;| a   b   c   d  |  ENC1:Button: s
;| e   f   g   h  |  ENC2:Clockwise: t
;| i   j   k   l  |  ENC2:Anticlockwise: u
;| m   n   o   p  |  ENC2:Button: v
;------------------

; Remember to uncomment lines before using them, and restart the script each time!

#if (getKeyState("F24", "P"))
F24::return

;------------------------------------------------------------------------------
; Row 0 / Encoders
;------------------------------------------------------------------------------

;q::{}

;r::{}

;s::{}

;t::{}

;u::{}

;v::{}

;------------------------------------------------------------------------------
; Row 1
;------------------------------------------------------------------------------

;a::{}

;b::{}

;c::{}

;d::{}

;------------------------------------------------------------------------------
; Row 2
;------------------------------------------------------------------------------

e::
{   ; Update URL, keeping ID number
    Send {control down}{l}{control up} ; Get URL Bar
    Sleep, 50
    Send {right} ; End of URL
    Sleep, 50
    Send {control down}{left}{control up} ; Move left of number
    Send {control down}{shift down}{home}{shift up}{control up} ; Select URL other than ID
    Send www.url-before-number.com/number= ; Update with URL
    Send {enter}
    return

}

f::
{

    Send ¯\\\_(ツ)_/¯
    return
}

g::
{
    Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://website.com
    return
}

h::
{   ; Login into application
    if WinActive("application name"){
        Send area {enter}
        Sleep, 1500
        Send team {enter}
        Sleep, 1500
        Send username {tab}{tab}
    }

    ; Activate application
    if WinExist("application name")
        WinActivate
    else if WinExist("launcher name")
        WinActivate
    else
        Run, C:\ProgramData\Microsoft\Windows\path-to-application
    return

}

;------------------------------------------------------------------------------
; Row 3
;------------------------------------------------------------------------------

;i::{}

;j::{}

k::
{
    Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://another-website.com
    return
}

l::
{             
    ; If Excel Active, open sceen
    if WinActive("ahk_exe EXCEL.EXE")
        Send {control down}{o}{control up}
    ; If Excel not active, activate excel
    else if WinExist("ahk_exe EXCEL.EXE")
        WinActivate
    else
        Run, EXCEL.EXE
    return
}

;------------------------------------------------------------------------------
; Row 4
;------------------------------------------------------------------------------

m::
{ ; Replace text to fix website 404
    Send {control down}{l}{control up}
    Send {right}
    Send {control down}{left}{left}{left}{left}{left}{control up}
    Send {control down}{shift down}{right}{control up}{shift up}
    Send new-text/
    Send {enter}
    return
}

;n::{}

o::
{   ; Pull Webex Teams to front / open if closed
    if WinActive("Webex Teams")
        return
    else if WinExist("Webex Teams")
        WinActivate
    return
}

p::
{             
    ; If outlook Active, new email
    if WinActive("ahk_exe OUTLOOK.EXE")
        Send {control down}{n}{control up}
    ; If Outlook not active, activate outlook
    else if WinExist("ahk_exe OUTLOOK.EXE")
        WinActivate
    else
        Run, OUTLOOK.EXE
    return

}