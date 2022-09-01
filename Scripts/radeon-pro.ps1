
#cls

$r = iwr 'https://www.amd.com/en/support/graphics/radeon-400-series/radeon-rx-400-series/radeon-rx-470'
#https://drivers.amd.com/drivers/prographics/amd-software-pro-edition-22.q2-win10-win11-june13.exe


$m = [regex]::Matches($r.Content, '\"(.+?\.exe)')


$url = $null

foreach ($i in $m) {
    #$i.Groups[1].Value
    if ($i.Groups[1].Value -match 'pro\-edition') {
        $url = $i.Groups[1].Value
        break
    }
}


$url
