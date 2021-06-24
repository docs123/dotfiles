# Functions
# https://github.com/microsoft/terminal/issues/1669#issuecomment-562082594
function Start-MSYS2 {
    & "C:\msys64\msys2_shell.cmd" -defterm -no-start -mingw64 $args
}

function Start-Stow {
    & perl "C:\msys64\usr\bin\stow" $args
}

function Start-Stream ($channel) {
    & streamlink twitch.tv/$channel best --player mpv --player-passthrough hls --twitch-disable-ads $args
}

# Aliases
Set-Alias msys Start-MSYS2
Set-Alias stow Start-Stow
Set-Alias ttv Start-Stream
# Remove
Remove-Alias -Name man

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# https://docs.microsoft.com/en-us/powershell/module/psreadline/set-psreadlineoption?view=powershell-7.1#example-4--set-multiple-color-options
Set-PSReadLineOption -Colors @{
  Command            = 'Magenta'
  Number             = 'DarkGray'
  Member             = 'DarkGray'
  Operator           = 'DarkGray'
  Type               = 'DarkGray'
  Variable           = 'DarkGreen'
  Parameter          = 'DarkGreen'
  ContinuationPrompt = 'DarkGray'
  Default            = 'DarkGray'
}