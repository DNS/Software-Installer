#cls

$r = iwr https://git-scm.com/download/win
$m = [regex]::Matches($r, '\=\"(.+?\.exe)\"')

foreach ($i in $m) {
    #$i.Groups[1].Value
    if (($i.Groups[1].Value -imatch '64\-bit') -and ($i.Groups[1].Value -inotmatch 'Portable')) {
        $url = $i.Groups[1].Value
        break
    }
    
}

$url

