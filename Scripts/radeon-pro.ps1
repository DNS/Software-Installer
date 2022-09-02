
#cls

$r = iwr https://www.amd.com/en/support/graphics/radeon-400-series/radeon-rx-400-series/radeon-rx-470

$m = [regex]::Matches($r, '\"(.+?\.exe)')

foreach ($i in $m) {
    #$i.Groups[1].Value
    if ($i.Groups[1].Value -match 'pro\-edition') {
        $url = $i.Groups[1].Value
        break
    }
}


$url
