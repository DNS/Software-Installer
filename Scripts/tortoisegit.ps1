#cls

Import-Module ..\Modules\Get-UrlDownload.psm1

'https:' + (Get-UrlDownload 'https://tortoisegit.org/download/' '\<\/span\>\)\<\/td\>\<td\>\<a href\=(.+?\-64bit\.msi)')

