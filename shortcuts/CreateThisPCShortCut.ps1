##
# Create This PC Shortcut on Desktop
##

$shell = New-Object -comObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$ShortcutFile = "$DesktopPath\Deze Computer.lnk"
$shortcut = $shell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = "%windir%\explorer.exe ''"
$Shortcut.IconLocation = "%windir%\System32\imageres.dll, 104"
$shortcut.Save()