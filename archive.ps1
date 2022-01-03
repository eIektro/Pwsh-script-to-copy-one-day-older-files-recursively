$Path = pwd; $NewPath = 'D:\ARCHIVE'; Get-ChildItem -Path $Path | ForEach-Object {  $Year = $_.LastWriteTime.Year;$Month = $_.LastWriteTime.Month;$FolderName = $_.LastWriteTime.ToString("dd.MM.yy");$ArchDir = "$NewPath\$Year\$Month\$FolderName";if (-not (Test-Path -Path $ArchDir)) { New-Item -ItemType "directory" -Path $ArchDir | Out-Null }; Move-Item -Path $_.FullName -Destination $ArchDir }