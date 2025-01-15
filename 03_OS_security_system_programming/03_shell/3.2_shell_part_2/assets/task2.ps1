$names = Get-ChildItem
$i=0

foreach($n in $names) {
    $i++
    Write-Host ($n.Name)
}

Write-Host ("Total: " + $i)
