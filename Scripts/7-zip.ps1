cls

$r = iwr https://www.7-zip.org/download.html
$m = [regex]::Matches($r, '\<A href\=\"(.+?\.msi)\"')

foreach ($i in $m) {
    #$i.Groups[1].Value
    if (($i.Groups[1].Value -imatch '64\-bit') -and ($i.Groups[1].Value -inotmatch 'Portable')) {
        $url = $i.Groups[1].Value
        break
    }
    
}

$url
