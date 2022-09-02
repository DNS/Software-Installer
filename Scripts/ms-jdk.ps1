#cls

Import-Module ..\Modules\Get-UrlDownload.psm1

Get-UrlDownload 'https://docs.microsoft.com/en-us/java/openjdk/download' '\<a href\=\"(.+?\-x64\.msi)\"'


