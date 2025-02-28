# Специалист по информационной безопасности: расширенный курс
## Модуль "Современная разработка ПО"
### Желобанов Егор SIB-48

# Домашнее задание к занятию «1.3. Системы контроля версий и CI/CD»

### Задание 1 - truffleHog

Есть замечательный инструмент, который называется [truffleHog](https://github.com/dxa4481/truffleHog). Он умеет искать по всей истории вашего проекта «секреты». Конечно же, если ваш проект использует git.

В этой лабораторной работе мы попробуем его в использовании на более-менее реалистичном примере, чтобы вы увидели, что не всё так гладко и достаточно часто бывает много ложных срабатываний, 
которые приходится «разгребать». Если вы просто отдадите «простыню» логов разработчикам, чтобы они сами разбирались — ничего хорошего из этого не выйдет.

В нашем случае мы воспользуемся специально подготовленным репозиторием для его исследования: https://github.com/netology-code/ib-secrets.

Отправьте найденные вами секреты с описанием того, чтобы это могло быть по вашему мнению.

#### Ответ:

Выполнил все по инструкции, развернул контейнер `buster` командой `docker run -it -p 8080:8080 python:buster /bin/bash`, 
далее в контейнере установил `truffleHog` командой `pip install truffleHog`. Запустил сканирование репозитория командой
`trufflehog https://github.com/netology-code/ib-secrets.git | tee -a ib-secrets-log.txt`, и затем вытащил файл лога 
[ib-secrets-log.txt](assets/ib-secrets-log.txt) в свою виртуальную машину Kali командой `sudo docker cp objective_kalam:/ib-secrets-log.txt /home/kali/Work/`:

![](assets/1_scan.jpg)

![](assets/2_copy_log.jpg)

Что удалось обнаружить в результате сканирования:

1. `service/keys/private.key` - критично, приватный ключ позволяет выполнить расшифровку:
    
    ```text
    ~~~~~~~~~~~~~~~~~~~~~
    [92mReason: High Entropy[0m
    [92mDate: 2021-01-21 07:08:16[0m
    [92mHash: d3d5d23e9b64d4c74ca66526b953afa2036391a2[0m
    [92mFilepath: service/keys/private.key[0m
    [92mBranch: origin/master[0m
    [92mCommit: fix(service): cleaned up
    [0m
    @@ -0,0 +1,27 @@
    +-----BEGIN RSA PRIVATE KEY-----
    [93m+MIIEpAIBAAKCAQEAxFv8lbJ+njQ1thnz25qZAsEQB0yRhz+Ri3X9r9+6M97dus80[0m
    [93m+BRdkRaQPHxJxNaAKQc1HylYqBITS3mMSGjwsJ6WtlIAoR8PBUY8fnidjVagTkLFO[0m
    [93m+dzZ+rEEOJtRB0zLUmeDxxDg2qMan2ijn2nksAshRhJQ8eNc84cdZ0pPdKz3ay774[0m
    [93m+Ccj3gHcYHmadICs6nIjcVuJ9S1z16sT7LBiOWR6hlVeV/lJ+1TYrhiTPW+j7CZaX[0m
    [93m+w/BbQZ+mKi/6QpY39tQntz73WIlqGO6uhLxpgUtFI+aZrcLXTHSWiSJLs9KAx++Q[0m
    [93m+5KMF86NOPu8poA+f1twa3jN1NM/lQQBwKhmXbQIDAQABAoIBAQCKbC5LeWE5NaUH[0m
    [93m+kpQOI5XqEx+xhZCxv2Zi4fLMoPMqzdmRb7BERpExZs4iIWYdX4zbhlMtmEBWnyvo[0m
    [93m+Cf8g73pRGMKdBRtgO+d0D2lCnJGyOKJSRiwCbjAuTk4joU4mDJdDQwgsQ1SE9kYt[0m
    [93m+zNhlczZLX9vXkohux4zrvRTdFc+8QsoojlKwRTpRUFoJW7V5yfU9BqrujTqhWdDm[0m
    [93m+m8VlcvWgPsX5djyDamgZuGr7aKjAMI4bXGahBIQdkWnpRnGu5e1gM1tCOqt/0WiR[0m
    [93m+iTRkew0P6tyLqaCzlTheOEOGil74d8IANfOBO3ePqObuGBuBtsFzr9OgJ7MreXH0[0m
    [93m+03CAsfUhAoGBAOpLN7hMNpw2wQp3DLXt9sn5MTyffEYVjK9IWeDErZNIDCKFXgwD[0m
    [93m+mwstTBSIXA0ORPs5YGJJ+ZbvRUnWsViMvT9tyKu365hrFTpDl28boXdSVSQ7D3ig[0m
    [93m+NmTF6HG5Yg+0v3cQD/dDcoi3YlJY7Bnw9KNMv6xemwzuq5A4Xv5RTndjAoGBANaN[0m
    [93m+Eh0gmmj+YaHhY+2MjO0TQFn1PMLxbwFvPJ/IfxbMg+ZZAXDV7fT8LlSWY4hnp44W[0m
    [93m+dZadlkdNZt1Dqs+xuiN0yE6HeLVa9rB1tpxhneKm3y+L2SThc+laQl7jnzkZaa//[0m
    [93m+HEQURfCmmLgJTZ0gtUc4Z9bN/rNC1gRdUD+wFfbvAoGBANqyN2KqkVcjrPGNyqmP[0m
    [93m+ZIuHNbR20lPBDb8X8/1g2PzfhaQ7hVwFiZXXRGruFa6CIVW3awaUMov28GBKLOSR[0m
    [93m+Cp3IZkYTubBeVEQ8j4BA9GkiyyK0lm5sbhmGusBc4PH0L7x9m8mcha6kLvza0Bgu[0m
    [93m+2MwNeeT1shlSN4a5d8JANtQtAoGAH09fAVksr33QCau2xYfpWP+iOH6Na3WIWZE+[0m
    [93m+K6M6yLz30rnSeAEAROw4Zqe7xsA5t4aXim9c6vLkvA2P89df7qSwRqWGfBDWR1Im[0m
    [93m+YBPu0pC/qVSjT7qHC9rcLLTTG6YVwlVcbqL2wfPN/a194hxP2CDnJnXRYZ+zU9e6[0m
    [93m+SlEMI4kCgYBa11Nlkt2YwHdpu0MAvTeA76983aQ20Tczx4qX17aOLdDdnVVQzoqr[0m
    [93m+tZWXbWOrRJohpU/kSJYxrcK3fFdPJ2ctwe7jqVTylEo3yfpdgLLd+5ZQRt/+4kt6[0m
    [93m+BTS1gNCQSJt8M2QznbIlNyWXi3jpjjKp7uyHJT/3r++5dfLmf5JE1g==[0m
    +-----END RSA PRIVATE KEY-----
    ```

2. `service/keys/public.key` - считаю не менее критично, т.к. с помощью него можно шифровать текст/сообщения и т.п.:

    ```text
    ~~~~~~~~~~~~~~~~~~~~~
    [92mReason: High Entropy[0m
    [92mDate: 2021-01-21 07:08:16[0m
    [92mHash: d3d5d23e9b64d4c74ca66526b953afa2036391a2[0m
    [92mFilepath: service/keys/public.key[0m
    [92mBranch: origin/master[0m
    [92mCommit: fix(service): cleaned up
    [0m
    @@ -0,0 +1,9 @@
    +-----BEGIN PUBLIC KEY-----
    [93m+MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxFv8lbJ+njQ1thnz25qZ[0m
    [93m+AsEQB0yRhz+Ri3X9r9+6M97dus80BRdkRaQPHxJxNaAKQc1HylYqBITS3mMSGjws[0m
    [93m+J6WtlIAoR8PBUY8fnidjVagTkLFOdzZ+rEEOJtRB0zLUmeDxxDg2qMan2ijn2nks[0m
    [93m+AshRhJQ8eNc84cdZ0pPdKz3ay774Ccj3gHcYHmadICs6nIjcVuJ9S1z16sT7LBiO[0m
    [93m+WR6hlVeV/lJ+1TYrhiTPW+j7CZaXw/BbQZ+mKi/6QpY39tQntz73WIlqGO6uhLxp[0m
    [93m+gUtFI+aZrcLXTHSWiSJLs9KAx++Q5KMF86NOPu8poA+f1twa3jN1NM/lQQBwKhmX[0m
    +bQIDAQAB
    +-----END PUBLIC KEY-----
    ```

3. `service/keys/symmetric.key` - предположительно симметричный ключ, используемый для шифрования и расшифровки каких-либо данных, и
    считаю его публикация в открытом доступе критична не менее первых двух случаев:

    ```text
    ~~~~~~~~~~~~~~~~~~~~~
    [92mReason: High Entropy[0m
    [92mDate: 2021-01-21 07:08:16[0m
    [92mHash: d3d5d23e9b64d4c74ca66526b953afa2036391a2[0m
    [92mFilepath: service/keys/symmetric.key[0m
    [92mBranch: origin/master[0m
    [92mCommit: fix(service): cleaned up
    [0m
    @@ -0,0 +1,6 @@
    [93m+INZqU5znzA+Kzb9SltHwINpSOzu99scvH3B3YqJYSap+M8ubNQo7mYURxR3gKbnv[0m
    [93m+TR5XJkiKBXALhC9/KlaDFGJEjo4o8xVC1lWgTwSx0p05tG+g8JMoQRCDoWz9f73+[0m
    [93m+PEiP3Z5Z0YjlSBBr4rp/CqUK+B8PhdMddJTNT4Hli6EwXqltJXoNqAMZUrNLvm6n[0m
    [93m+BBvJVebK2J+NqeZrsqteoWMLyAPfVa/RBrDlhhvOo4Z4O5uztulc2Kc2EMWSuquj[0m
    [93m+D93o+I4bBnrl2oSdl0F2uky6c4UYM5xyLrryeX9alKfPn9YUKEZwA/JZuh0fAyl8[0m
    +sPcddvjdmhm6smAYhI8yKw==
    ```

4. Учетные данные администратора и пользователя (логин, хэш пароля, роль в системе), естественно это критичная информация:

    ```text
    ~~~~~~~~~~~~~~~~~~~~~
    [92mReason: High Entropy[0m
    [92mDate: 2021-01-21 07:06:57[0m
    [92mHash: 357116ea59d9d0d4cfe8bed75c09da0f3ee99b2a[0m
    [92mFilepath: service/docker-entrypoint-initdb.d/01_data.sql[0m
    [92mBranch: origin/master[0m
    [92mCommit: feat(service): symmetric version added
    [0m
    @@ -1,4 +0,0 @@
    -INSERT INTO users(login, password, roles)
    -VALUES
    -       ('admin', '$2a$10$ctPFhgJh.[93m[93mYIE21AA0OGl5er3p9f3XsAwkmTXnP2I7BxCpQbr1QAg2[0m[0m', '{"ADMIN", "USER"}'), -- у этого пользователя две роли (т.е. он и админ, и обычный юзер)
    -       ('user', '$2a$10$ctPFhgJh.[93m[93mYIE21AA0OGl5er3p9f3XsAwkmTXnP2I7BxCpQbr1QAg2[0m[0m', '{"USER"}');
    ```

### Задание 2 - BFG Repo-Cleaner

Для удаления «чувствительных данных» существуют специальные инструменты. [Самые простые](https://docs.github.com/en/github/authenticating-to-github/removing-sensitive-data-from-a-repository):

  1. BFG Repo-Cleaner.
  2. Встроенная в `git` команда `filter-branch`.

Разработчики уверяют, что вычистили все найденные вами в предыдущем задании секреты из истории с помощью BFG Repo-Cleaner. Убедитесь, так ли это.

Для этого используйте следующий репозиторий: https://github.com/netology-code/ib-secrets-fixed.git.

Отправьте общее заключение в свободной форме о выполнении разработчиками задачи по вычистке репозитория.

#### Ответ:

Теперь сканируем другой репозиторий командой `trufflehog https://github.com/netology-code/ib-secrets-fixed.git | tee -a ib-secrets-fixed-log.txt`:

![](assets/3_scan_fixed.jpg)

Скопировав файл лога [ib-secrets-fixed-log.txt](assets/ib-secrets-fixed-log.txt) к себе на машину, и проанализировав его, 
стало ясно, что удалены не все секреты, учетные данные также остались в публичном доступе:

```text
~~~~~~~~~~~~~~~~~~~~~
[92mReason: High Entropy[0m
[92mDate: 2021-01-21 07:06:57[0m
[92mHash: 4fdf97a45db2364d1a6a2b9e246e7da7f08922f7[0m
[92mFilepath: service/docker-entrypoint-initdb.d/01_data.sql[0m
[92mBranch: origin/master[0m
[92mCommit: feat(service): symmetric version added
[0m
@@ -1,4 +0,0 @@
-INSERT INTO users(login, password, roles)
-VALUES
-       ('admin', '$2a$10$ctPFhgJh.[93m[93mYIE21AA0OGl5er3p9f3XsAwkmTXnP2I7BxCpQbr1QAg2[0m[0m', '{"ADMIN", "USER"}'), -- у этого пользователя две роли (т.е. он и админ, и обычный юзер)
-       ('user', '$2a$10$ctPFhgJh.[93m[93mYIE21AA0OGl5er3p9f3XsAwkmTXnP2I7BxCpQbr1QAg2[0m[0m', '{"USER"}');
```
