##
# Create This PC Shortcut on Desktop
##

$shell = New-Object -comObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$shortcutFile = "$DesktopPath\This PC.lnk"
$shortcut = $shell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = "%windir%\explorer.exe ''"
$shortcut.IconLocation = "%windir%\System32\imageres.dll, 104"
$shortcut.Save()