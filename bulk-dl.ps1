cls

# Requires PowerShell 7
#if ($PSVersionTable.PSVersion.Major -lt 7) { Write-Output 'Requires PowerShell 7' ; Exit-PSSession; }

Remove-Item .\Installer\ -Recurse
New-Item 'Installer' -Type Directory
Set-Location .\Installer


# DOWNLOAD PIPE
# | %{ wget.exe -cnd $_ }


######################################


# 7-zip gui
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {'https://www.7-zip.org/'+$_; break;} }

# 7-zip console
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-extra\.7z') {'https://www.7-zip.org/'+$_; break;} }

# Firefox
#'https://download.mozilla.org/?product=firefox-esr-next-latest-ssl&os=win64&lang=en-US' | %{ wget.exe -cnd $_ }

# Gecko Driver
#(Invoke-WebRequest -Uri https://github.com/mozilla/geckodriver/releases/latest).Links.href | %{ if ($_ -imatch '\-win64\.zip') {'https://github.com/'+$_; break;} }

# Git
#(Invoke-WebRequest -Uri https://git-scm.com/download/win).Links.href | %{ if ($_ -imatch '\-64\-bit\.exe') {$_; break;} }

# Tortoise Git
#(Invoke-WebRequest -Uri https://tortoisegit.org/download/).Links.href | %{ if ($_ -imatch '\-64bit\.msi') {'https:'+$_; break;} }

# MS JDK , # Invoke-WebRequest Bug on PowerShell 5 ?
#(Invoke-WebRequest -Uri 'https://docs.microsoft.com/en-us/java/openjdk/download').Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }

# Radeon Pro , # Invoke-WebRequest Bug on PowerShell 7 ?
#(Invoke-WebRequest -Uri 'https://www.amd.com/en/support/professional-graphics/amd-radeon-pro/amd-radeon-pro-w6000-series/amd-radeon-pro-w6800').Links.href | %{ if ($_ -imatch '\.exe') {$_; break;} }

# Scite
#(Invoke-WebRequest -Uri https://www.scintilla.org/SciTEDownload.html).Links.href | %{ if ($_ -imatch 'wscite\d+?\.zip') {$_; break;} }

# sqlite
#(Invoke-WebRequest -Uri https://www.sqlite.org/download.html).Links.href | %{ if ($_ -imatch 'sqlite\-tools\-.+?\.zip') {'https://www.sqlite.org/'+$_; break;} }
