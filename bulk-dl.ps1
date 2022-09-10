#cls

# Requires PowerShell 7
if ($PSVersionTable.PSVersion.Major -lt 7) { Write-Output 'Requires PowerShell 7' ; exit; }

Remove-Item .\Installer\ -Recurse
New-Item 'Installer' -Type Directory
Set-Location .\Installer


# DOWNLOAD PIPE
# | %{ wget.exe -cnd $_ }


######################################


# 7-zip gui
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {'https://www.7-zip.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# 7-zip console
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-extra\.7z') {'https://www.7-zip.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# Firefox
'https://download.mozilla.org/?product=firefox-esr-next-latest-ssl&os=win64&lang=en-US' | %{ wget.exe -cnd $_ }

# Gecko Driver
(Invoke-WebRequest -Uri https://github.com/mozilla/geckodriver/releases/latest).Links.href | %{ if ($_ -imatch '\-win64\.zip') {'https://github.com/'+$_; break;} } | %{ wget.exe -cnd $_ }

# Git
(Invoke-WebRequest -Uri https://git-scm.com/download/win).Links.href | %{ if ($_ -imatch '\-64\-bit\.exe') {$_; break;} } | %{ wget.exe -cnd $_ }

# Tortoise Git
(Invoke-WebRequest -Uri https://tortoisegit.org/download/).Links.href | %{ if ($_ -imatch '\-64bit\.msi') {'https:'+$_; break;} } | %{ wget.exe -cnd $_ }

# MS JDK , # Invoke-WebRequest Bug on PowerShell 5 !!
(Invoke-WebRequest -Uri 'https://docs.microsoft.com/en-us/java/openjdk/download').Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }

# Radeon Pro , # Invoke-WebRequest Bug on PowerShell 7 !!
#(Invoke-WebRequest -Uri 'https://www.amd.com/en/support/professional-graphics/amd-radeon-pro/amd-radeon-pro-w6000-series/amd-radeon-pro-w6800').Links.href | %{ if ($_ -imatch '\.exe') {$_; break;} } | %{ wget.exe -cnd $_ }

# Scite
(Invoke-WebRequest -Uri https://www.scintilla.org/SciTEDownload.html).Links.href | %{ if ($_ -imatch 'wscite\d+?\.zip') {$_; break;} } | %{ wget.exe -cnd $_ }

# sqlite
(Invoke-WebRequest -Uri https://www.sqlite.org/download.html).Links.href | %{ if ($_ -imatch 'sqlite\-tools\-.+?\.zip') {'https://www.sqlite.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# wget
(Invoke-WebRequest -Uri https://eternallybored.org/misc/wget/).Links.href | %{ if ($_ -imatch 'wget\.exe') {'https://eternallybored.org/misc/wget/'+$_; break;} } | %{ wget.exe -cnd $_ }

# ffmpeg
(Invoke-WebRequest -Uri https://github.com/GyanD/codexffmpeg/releases/latest).Links.href | %{ if ($_ -imatch '\-full_build\.7z') {'https://github.com'+$_; break;} } | %{ wget.exe -cnd $_ }

# flac
https://ftp.osuosl.org/pub/xiph/releases/flac/
(Invoke-WebRequest -Uri https://ftp.osuosl.org/pub/xiph/releases/flac/).Links.href | Sort-Object -Descending | %{ if ($_ -imatch '\-win\.zip') {$_; break;} } | %{ wget.exe -cnd $_ }




(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }




