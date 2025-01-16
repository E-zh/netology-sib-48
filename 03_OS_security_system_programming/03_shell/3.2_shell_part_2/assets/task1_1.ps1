if ($args.Count -eq 1)
{
    $par = $args[0]
    Write-Host ("$par" + "1")
}
else
{
    Write-Host "Ошибка! Необходимо указать один обязательный параметр! Например test1_1.ps1 5"
}
