if ($args.Count -eq 1)
{
    # проверяем на существование
    if (Test-Path $args[0])
    {
        # проверяем является ли файлом
        if (Test-Path -Path $args[0] -PathType Leaf)
        {
            Write-Host ($args[0] + " - file")
        }
        else
        # соответственно иначе - это каталог
        {
            Write-Host ($args[0] + " - directory")
        }
    }
    else
    {
        Write-Host ($args[0] + " - not exist")
    }
}
else
{
    Write-Host "Ошибка! Необходимо указать один обязательный параметр! Например c:\windows"
}
