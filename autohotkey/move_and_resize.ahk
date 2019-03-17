; Example:
; "C:\path\to\AutoHotkey\AutoHotKey.exe" "C:\path\to\script\move_and_resize.ahk" "window title" "Xcord" "Ycord" "Width" "Height"

WindowTitle = %1%
Xcord = %2%
Ycord = %3%
Width = %4%
Height = %5%

; Try and locate based on window titles that START with WindowTitle
IfWinExist, %WindowTitle%
{
    ; Move & Resize
    WinMove, %WindowTitle%,, %Xcord%, %Ycord%, %Width%, %Height%
}
; If we didn't find a match...
else
{
    settitlematchmode regex
    ; Attempt searchiing window titles that CONTAIN our WindowTitle (more dangerous / aggressive search)
    IfWinExist, i)%WindowTitle%.*
    {
        WinMove, %WindowTitle%,, %Xcord%, %Ycord%, %Width%, %Height%
    }
}

