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
(Invoke-WebRequest -Uri https://docs.microsoft.com/en-us/java/openjdk/download).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }

# Radeon Pro , # Invoke-WebRequest Bug on PowerShell 7 !!
(Invoke-WebRequest -Uri https://www.amd.com/en/support/professional-graphics/amd-radeon-pro/amd-radeon-pro-w6000-series/amd-radeon-pro-w6800).Links.href | %{ if ($_ -imatch '\.exe') {$_; break;} } | %{ wget.exe -cnd $_ }

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

# WinSCP
(Invoke-WebRequest -Uri https://winscp.net/eng/download.php).Links.href | %{ if ($_ -imatch '\-Setup\.exe') {'https://winscp.net'+$_; break;} } | %{ wget.exe -cnd $_ }

# curl & openssl
(Invoke-WebRequest -Uri https://curl.se/windows/).Links.href | %{ if ($_ -imatch '\-win64\-mingw\.zip') {'https://curl.se/windows/'+$_; break;} } | %{ wget.exe -cnd $_ }

# putty
https://www.chiark.greenend.org.uk/~sgtatham/putty/

# ImageMagick
(Invoke-WebRequest -Uri https://imagemagick.org/script/download.php).Links.href | %{ if ($_ -imatch '\-Q16\-x64\-static\.exe') {$_; break;} } | %{ wget.exe -cnd $_ }

# Paint .NET
(Invoke-WebRequest -Uri https://github.com/paintdotnet/release/releases/latest).Links.href | %{ if ($_ -imatch '\.winmsi\.x64\.zip') {'https://github.com'+$_; break;} } | %{ wget.exe -cnd $_ }
#paint.net.4.0.Install.exe [/skipConfig | /auto | /createMsi] [PROPERTY=VALUE...]

# Winaero
'https://winaerotweaker.com/download/' | %{ wget.exe -cnd $_ }

# aria2c
(Invoke-WebRequest -Uri https://github.com/aria2/aria2/releases/latest).Links.href | %{ if ($_ -imatch 'win\-64bit') {'https://github.com'+$_; break;} } | %{ wget.exe -cnd $_ }

# JDownloader2
#https://jdownloader.org/download/index
#(Invoke-WebRequest -Uri https://jdownloader.org/download/index).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }

# blender
(Invoke-WebRequest -Uri https://www.blender.org/download/).Links.href | %{ if ($_ -imatch '\-windows\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }

# lazarus
(Invoke-WebRequest -Uri https://www.lazarus-ide.org/index.php?page=downloads).Links.href | %{ if ($_ -imatch '\-win64\.exe') {$_; break;} } | %{ wget.exe -cnd $_ }

# inkscape
#https://inkscape.org/release/
#https://inkscape.org/release/inkscape-1.2.1/windows/64-bit/msi/dl/
#(Invoke-WebRequest -Uri https://inkscape.org/release/).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }

# Krita


# Gimp


# python
(Invoke-WebRequest -Uri https://www.python.org/downloads/windows/).Links.href | %{ if ($_ -imatch '\-amd64\.exe') {$_; break;} } | %{ wget.exe -cnd $_ }

# WordWeb
(Invoke-WebRequest -Uri https://wordweb.info/free/).Links.href | %{ if ($_ -imatch 'wordweb\.exe') {$_; break;} } | %{ wget.exe -cnd $_ }

# Sumatra PDF
(Invoke-WebRequest -Uri https://www.sumatrapdfreader.org/download-free-pdf-viewer).Links.href | %{ if ($_ -imatch '\-64\-install\.exe') {'https://www.sumatrapdfreader.org'+$_; break;} } | %{ wget.exe -cnd $_ }

# WinDjView
'https://sourceforge.net/projects/windjview/files/latest/download' | %{ wget.exe -cnd $_ }

# DjVuLibre
'https://sourceforge.net/projects/djvu/files/latest/download' | %{ wget.exe -cnd $_ }

# libreoffice


# audacity



(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }

(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} } | %{ wget.exe -cnd $_ }



