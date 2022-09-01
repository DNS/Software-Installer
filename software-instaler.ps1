
#cls

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process


Set-Location .\Scripts
$d = Get-ChildItem -File | Get-Item

Set-Location ..\Installer
$d | %{ Invoke-Expression $_.FullName } | %{ wget.exe -cnd $_ }

Get-ChildItem .\ -File | Invoke-Item

Set-Location ..\



