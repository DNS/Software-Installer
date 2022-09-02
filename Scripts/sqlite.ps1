cls

$r = iwr https://www.sqlite.org/download.html
$m = [regex]::Match($r, "\('a9','(.+?\.zip)'\);")
$url = 'https://www.sqlite.org/' + $m.Groups[1].Value

$url



