
#cls
$r = iwr 'https://tortoisegit.org/download/'
$m = [regex]::Matches($r.Content,'(?ims)\<a href\=(.+?) class\=dl rel\=nofollow\>Download TortoiseGit')
$url = 'http:' + $m[1].Groups[1].Value
$url

