#cls

Import-Module ..\Modules\Get-UrlDownload.psm1

Get-UrlDownload 'https://www.scintilla.org/SciTEDownload.html' '\<a href\=\"(.+?wscite\d+?.zip)'

