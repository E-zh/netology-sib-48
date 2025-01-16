if ($args.Count -eq 2)
{
    $str = $args[1]

    if ($args[0] -eq "crypt")
    {
        $crypt = [System.Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($str))
        Write-Host $crypt
    }
    elseif ($args[0] -eq "decrypt")
    {
        $decrypt = [Text.Encoding]::Utf8.GetString([Convert]::FromBase64String($str))
        Write-Host $decrypt
    }
    else
    {
        throw "Ошибка! Первый параметр должен быть crypt или decrypt"
        #Exit 2
    }
}
else
{
    Write-Host "Ошибка! Необходимо указать два обязательных параметра! Например crypt 123"
}
