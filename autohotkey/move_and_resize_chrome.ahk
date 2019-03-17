; Example:
; "C:\path\to\AutoHotkey\AutoHotKey.exe" "C:\path\to\script\move_and_resize_chrome.ahk" "window title" "Xcord" "Ycord" "Width" "Height"
; Literal:
; "C:\Program Files\AutoHotkey\AutoHotKey.exe" "C:\Users\<user>\Documents\git\streaming\autohotkey\move_and_resize_chrome.ahk" "Twitch - Google Chrome" "1913" "0" "568" "1046" "www.google.com"

WindowTitle = %1%
Xcord = %2%
Ycord = %3%
Width = %4%
Height = %5%
URL = %6%

IfWinExist, %WindowTitle%
{
    ; Move & Resize
    WinMove, %WindowTitle%,, %Xcord%, %Ycord%, %Width%, %Height%
}
else
{
    run chrome.exe --new-window %URL%
    ; We need to wait for AHK to detect our new window
    sleep 1000
    ; Move & Resize
    WinMove, %WindowTitle%,, %Xcord%, %Ycord%, %Width%, %Height%
}




