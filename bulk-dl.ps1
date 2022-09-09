cls

# Requires PowerShell 7
if ($PSVersionTable.PSVersion.Major -lt 7) { Write-Output 'Requires PowerShell 7' ; Exit-PSSession; }


# radeon pro


# 7-zip gui
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {'https://www.7-zip.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# 7-zip console
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-extra\.7z') {'https://www.7-zip.org/'+$_; break;} } | %{ wget.exe -cnd $_ }

# Firefox
#'https://download.mozilla.org/?product=firefox-esr-next-latest-ssl&os=win64&lang=en-US' | %{ wget.exe -cnd $_ }

# Gecko Driver
#(Invoke-WebRequest -Uri https://github.com/mozilla/geckodriver/releases/latest).Links.href | %{ if ($_ -imatch '\-win64\.zip') {'https://github.com/'+$_; break;} }


# Git
#(Invoke-WebRequest -Uri https://git-scm.com/download/win).Links.href | %{ if ($_ -imatch '\-64\-bit\.exe') {$_; break;} }

# Tortoise Git
#(Invoke-WebRequest -Uri https://tortoisegit.org/download/).Links.href | %{ if ($_ -imatch '\-64bit\.msi') {'https:'+$_; break;} }

# MS JDK
#https://docs.microsoft.com/en-us/java/openjdk/download
(Invoke-WebRequest -Uri https://docs.microsoft.com/en-us/java/openjdk/download).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }



#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }
#(Invoke-WebRequest -Uri https://www.7-zip.org/download.html).Links.href | %{ if ($_ -imatch '\-x64\.msi') {$_; break;} }

