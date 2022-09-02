#cls


Import-Module ..\Modules\Get-UrlDownload.psm1

'https://www.7-zip.org/' + (Get-UrlDownload 'https://www.7-zip.org/download.html' '\<A href\=\"(.+?\-extra\.7z)')


