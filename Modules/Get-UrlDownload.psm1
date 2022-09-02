<#function Get-UrlDownload ($url, $regex) {
    $r = iwr $url
    $m = [regex]::Matches($r, $regex)
    #$m
    foreach ($i in $m) {
        #$i.Groups[1].Value
        if ($i.Groups[1].Value -match 'wscite') {
            $url = $i.Groups[1].Value
            break
        }
    }


    return $url
}#>

function Get-UrlDownload ($url, $regex) {
    $r = iwr $url
    #Write-Output "Fetching $url"
    $m = [regex]::Match($r.Content, $regex)
    $url = $m.Groups[1].Value
    return $url
}

