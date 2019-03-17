; The URL chrome will open
ChatURL = https://www.twitch.tv/popout/abraxxustv/chat?popout=
; Note the ':' - it's special and required for IfWinExist to work properly
WindowTitle := "Twitch - Google Chrome"

IfWinExist, %WindowTitle%
{
    ; Move & Resize
    WinMove, %WindowTitle%,, 1913, 0, 568, 1046
}
; Open window and resize
else
{
    run chrome.exe --new-window %ChatURL%
    ; We need to wait for AHK to detect our new window
    sleep 1000
    ; Move & Resize
    WinMove, %WindowTitle%,, 1913, 0, 568, 1046
}




