; Example:
; "C:\path\to\AutoHotkey\AutoHotKey.exe" "C:\path\to\script\move_and_resize.ahk" "window title" "Xcord" "Ycord" "Width" "Height"
; Literal:
; "C:\Program Files\AutoHotkey\AutoHotKey.exe" "C:\Users\<user>\Documents\git\streaming\autohotkey\move_and_resize.ahk" "Twitch - Google Chrome" "1913" "0" "568" "1046"

WindowTitle = %1%
Xcord = %2%
Ycord = %3%
Width = %4%
Height = %5%

IfWinExist, %WindowTitle%
{
    ; Move & Resize
    WinMove, %WindowTitle%,, %Xcord%, %Ycord%, %Width%, %Height%
}
