$files = Get-ChildItem
$i = 0

foreach ($n in $files)
{
    $i++
    Write-Host ($n.Name)
}

Write-Host ("Total: " + $i)
