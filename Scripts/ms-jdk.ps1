cls

$r = iwr https://docs.microsoft.com/en-us/java/openjdk/download

$m = [regex]::Matches($r, '\"(.+?x64\.msi)\"')
$url = $m[0].Groups[1].Value

$url

