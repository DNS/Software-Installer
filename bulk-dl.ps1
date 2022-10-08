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
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {'https://www.7-zip.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# 7-zip console
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-extra\.7z\Z') {'https://www.7-zip.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# Firefox
'https://download.mozilla.org/?product=firefox-esr-next-latest-ssl&os=win64&lang=en-US' | %{ wget.exe -cnd $_ }

# Gecko Driver
(Invoke-RestMethod -Uri https://api.github.com/repos/mozilla/geckodriver/releases/latest).assets.browser_download_url | %{ if ($_ -imatch 'win64\.zip\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Git
(Invoke-WebRequest -Uri https://git-scm.com/download/win).Links.href | %{ if ($_ -imatch '\-64\-bit\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Tortoise Git
(Invoke-WebRequest -Uri https://tortoisegit.org/download/).Links.href | %{ if ($_ -imatch '\-64bit\.msi\Z') {'https:'+$_; break;} } | %{ wget.exe -cnd $_ }

# MS JDK , # Invoke-WebRequest Bug on PowerShell 5 !!
(Invoke-WebRequest -Uri https://docs.microsoft.com/en-us/java/openjdk/download).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Radeon Pro , # Invoke-WebRequest Bug on PowerShell 7 !!
(Invoke-WebRequest -Uri https://www.amd.com/en/support/professional-graphics/amd-radeon-pro/amd-radeon-pro-w6000-series/amd-radeon-pro-w6800).Links.href | %{ if ($_ -imatch '\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Scite
(Invoke-WebRequest -Uri https://www.scintilla.org/SciTEDownload.html).Links.href | %{ if ($_ -imatch 'wscite\d+?\.zip\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# sqlite
(Invoke-WebRequest -Uri https://www.sqlite.org/download.html).Links.href | %{ if ($_ -imatch 'sqlite\-tools\-.+?\.zip\Z') {'https://www.sqlite.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# DB Browser for SQLite
(Invoke-RestMethod -Uri https://api.github.com/repos/sqlitebrowser/sqlitebrowser/releases/latest).assets.browser_download_url | %{ if ($_ -imatch 'win64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# wget
(Invoke-WebRequest -Uri https://eternallybored.org/misc/wget/).Links.href | %{ if ($_ -imatch 'wget\.exe\Z') {'https://eternallybored.org/misc/wget/'+$_; break;} } | %{ wget.exe -cnd $_ }

# ffmpeg
(Invoke-RestMethod -Uri https://api.github.com/repos/GyanD/codexffmpeg/releases/latest).assets.browser_download_url | %{ if ($_ -imatch '\-full_build\.7z\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# flac
(Invoke-WebRequest -Uri https://ftp.osuosl.org/pub/xiph/releases/flac/).Links.href | Sort-Object -Descending | %{ if ($_ -imatch '\-win\.zip\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# WinSCP
(Invoke-WebRequest -Uri https://winscp.net/eng/download.php).Links.href | %{ if ($_ -imatch '\-Setup\.exe\Z') {'https://winscp.net'+$_; break;} } | %{ wget.exe -cnd $_ }

# curl & openssl
(Invoke-WebRequest -Uri https://curl.se/windows/).Links.href | %{ if ($_ -imatch '\-win64\-mingw\.zip\Z') {'https://curl.se/windows/'+$_; break;} } | %{ wget.exe -cnd $_ }

# putty
#https://www.chiark.greenend.org.uk/~sgtatham/putty/

# ImageMagick
(Invoke-WebRequest -Uri https://imagemagick.org/script/download.php).Links.href | %{ if ($_ -imatch '\-Q16\-x64\-static\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Paint .NET
#paint.net.4.0.Install.exe\Z [/skipConfig | /auto | /createMsi] [PROPERTY=VALUE...]
(Invoke-RestMethod -Uri https://api.github.com/repos/paintdotnet/release/releases/latest).assets.browser_download_url | %{ if ($_ -imatch '\.winmsi\.x64\.zip\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Winaero
'https://winaerotweaker.com/download/' | %{ wget.exe -cnd $_ }

# aria2c
(Invoke-RestMethod -Uri https://api.github.com/repos/aria2/aria2/releases/latest).assets.browser_download_url | %{ if ($_ -imatch 'win\-64bit') {$_; break;} } | %{ wget.exe -cnd $_ }



# JDownloader2
#https://jdownloader.org/download/index
#(Invoke-WebRequest -Uri https://jdownloader.org/download/index).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# blender
(Invoke-WebRequest -Uri https://www.blender.org/download/).Links.href | %{ if ($_ -imatch '\-windows\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# lazarus
(Invoke-WebRequest -Uri https://www.lazarus-ide.org/index.php?page=downloads).Links.href | %{ if ($_ -imatch '\-win64\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# inkscape
#https://inkscape.org/release/
#https://inkscape.org/release/inkscape-1.2.1/windows/64-bit/msi/dl/
#(Invoke-WebRequest -Uri https://inkscape.org/release/).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Krita
(Invoke-WebRequest -Uri https://krita.org/en/download/krita-desktop/).Links.href | %{ if ($_ -imatch 'x64.*?\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Gimp
(Invoke-WebRequest -Uri https://www.gimp.org/downloads/).Links.href | %{ if ($_ -imatch '\.exe\Z') {'https:'+$_; break;} } | %{ wget.exe -cnd $_ }

# python
(Invoke-WebRequest -Uri https://www.python.org/downloads/windows/).Links.href | %{ if ($_ -imatch '\-amd64\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# WordWeb dictionary
(Invoke-WebRequest -Uri https://wordweb.info/free/).Links.href | %{ if ($_ -imatch 'wordweb\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# Sumatra PDF
(Invoke-WebRequest -Uri https://www.sumatrapdfreader.org/download-free-pdf-viewer).Links.href | %{ if ($_ -imatch '\-64\-install\.exe\Z') {'https://www.sumatrapdfreader.org'+$_; break;} } | %{ wget.exe -cnd $_ }

# WinDjView
'https://sourceforge.net/projects/windjview/files/latest/download' | %{ wget.exe -cnd $_ }

# DjVuLibre
'https://sourceforge.net/projects/djvu/files/latest/download' | %{ wget.exe -cnd $_ }

# libreoffice
(Invoke-WebRequest -Uri https://www.libreoffice.org/download/download-libreoffice/ -UserAgent '(Windows NT 10.0; Win64; x64; rv:102.0)').Links.href | %{ if ($_ -imatch 'x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

# tor browser
(Invoke-WebRequest -Uri https://www.torproject.org/download/).Links.href | %{ if ($_ -imatch '\.exe\Z') {'https://www.torproject.org'+$_; break;} } | %{ wget.exe -cnd $_ }

# tor expert bundle
(Invoke-WebRequest -Uri https://www.torproject.org/download/tor/).Links.href | %{ if ($_ -imatch '\.zip\Z') {'https://www.torproject.org'+$_; break;} } | %{ wget.exe -cnd $_ }

# audacity


# telegram
(Invoke-RestMethod -Uri https://api.github.com/repos/telegramdesktop/tdesktop/releases/latest).assets.browser_download_url | %{ if ($_ -imatch 'tsetup\-x64.+?\.exe\Z') {$_; break;} } | %{ wget.exe -cnd $_ }




(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }

(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }
(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi\Z') {$_; break;} } | %{ wget.exe -cnd $_ }



