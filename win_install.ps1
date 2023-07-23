# simple installer for windows
# might need to be run with admin priveledges...
# install
winget install twpayne.chezmoi
## ~\AppData\Local\Microsoft\WinGet\Packages\twpayne.chezmoi_Microsoft.Winget.Source_8wekyb3d8bbwe\chezmoi.exe
## add to path
$CHEZMOI_PATH="$HOME\AppData\Local\Microsoft\WinGet\Packages\twpayne.chezmoi_Microsoft.Winget.Source_8wekyb3d8bbwe\chezmoi.exe"
# [Environment]::SetEnvironmentVariable("Path", $env:Path + ";$CHEZMOI_PATH", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";$CHEZMOI_PATH", [EnvironmentVariableTarget]::Machine)
$env:PATH += ";$CHEZMOI_PATH"
## init the repo
chezmoi init --apply Don-Burns

