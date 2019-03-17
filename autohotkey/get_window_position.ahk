WindowTitle = %1%

IfWinExist, %WindowTitle%
{
    WinGetPos, Xpos, Ypos, Width, Height
    WinGetText, Text
    WinGetTitle, Title
    MsgBox,
    (
    The Window's
    Location: X: %Xpos%`, Y: %Ypos%
    Width: %Width%, Height: %Height%
    Title: %Title%
    Text: %Text%
    )
}
else
{
    MsgBox, Couldn't locate a window name %1%
}



