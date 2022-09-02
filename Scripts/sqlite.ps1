#cls

Import-Module ..\Modules\Get-UrlDownload.psm1

'https://www.sqlite.org/' + (Get-UrlDownload 'https://www.sqlite.org/download.html' "d391\('a9'\,'(\d\d\d\d/sqlite\-tools\-win32\-x86\-\d+?\.zip)")

