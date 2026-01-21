##
##Create Logoff Shortcut on Desktop
##

$shell = New-Object -comObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath(“Desktop”)
$ShortcutFile = “$DesktopPath\Logoff.lnk”
$shortcut = $shell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = “C:\Windows\System32\logoff.exe”
$Shortcut.IconLocation = “%SystemRoot%\System32\SHELL32.dll, 44”
$shortcut.Save()