
$r = iwr 'https://github.com/mozilla/geckodriver/releases/latest'
$x = $r.Content -match '<a href="(.+?\-win64\.zip)"'
$url = 'https://github.com' + $Matches[1]
$url
