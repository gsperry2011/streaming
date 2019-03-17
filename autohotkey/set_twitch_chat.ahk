ChatURL = https://www.twitch.tv/popout/abraxxustv/chat?popout=
WindowTitle = Twitch - Gooogle Chrome

IfWinExist, Twitch - Google Chrome
{
    WinMove, Twitch - Google Chrome,, 1913, 0, 568, 1046
}
else
{
    run chrome.exe --new-window %ChatURL%
    sleep 1000
    WinMove, Twitch - Google Chrome,, 1913, 0, 568, 1046
}




