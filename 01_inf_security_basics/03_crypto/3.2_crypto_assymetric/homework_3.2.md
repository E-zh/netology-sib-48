# Специалист по информационной безопасности: расширенный курс
## Модуль "Основы информационной безопасности"
### Блок 3. Криптографическая защита информации
### Желобанов Егор SIB-48

# Домашнее задание к занятию «3.2. Ассиметричные криптосистемы»

### Задача №1:
* Публичный и приватный ключи - [public.key](assets/task01/public.key) и [private.key](assets/task01/private.key)
* Passphrase - `FarEast2024`
* Зашифрованный файл - [cypher.txt](assets/task01/cypher.txt)

### Задача №2 - GnuPG: подпись сообщения

1. Генерация keypair:
    ```shell
   pub   rsa2048 2024-09-19 [SC]
      E1F27A88701F3D67F7250C537F66CA46BE51F938
    uid                      Egor Zhelobanov <e.zhelobanov@gmail.com>
    sub   rsa2048 2024-09-19 [E]
   ```
   ```shell
    $ gpg --list-keys
    gpg: checking the trustdb
    gpg: marginals needed: 3  completes needed: 1  trust model: pgp
    gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
    [keyboxd]
    ---------
    pub   rsa2048 2024-09-19 [SC]
          E1F27A88701F3D67F7250C537F66CA46BE51F938
    uid           [ultimate] Egor Zhelobanov <e.zhelobanov@gmail.com>
    sub   rsa2048 2024-09-19 [E]
    ```

2. Создал файл [message.txt](assets/task02/message.txt) и подписал его:
   ```shell
   $ gpg --output message.sig --local-user e.zhelobanov@gmail.com --detach-sign message.txt
   ```
   
3. Проверил что подпись соответствует сообщению:
   ```shell
   $ gpg --verify message.sig message.txt
   gpg: Signature made Thu Sep 19 21:04:33 2024
   gpg:                using RSA key E1F27A88701F3D67F7250C537F66CA46BE51F938
   gpg: Good signature from "Egor Zhelobanov <e.zhelobanov@gmail.com>" [ultimate]
   ```
   
4. Создал текстовый файл [modified.txt](assets/task02/modified.txt) с завтрашней датой, выполнил проверку:
   ```shell
   $ gpg --verify message.sig modified.txt
   gpg: Signature made Thu Sep 19 21:04:33 2024
   gpg:                using RSA key E1F27A88701F3D67F7250C537F66CA46BE51F938
   gpg: BAD signature from "Egor Zhelobanov <e.zhelobanov@gmail.com>" [ultimate]
   ```
   
5. Экспортировал публичный ключ:
   ```shell
   $ gpg --output public.gpg --armor --export e.zhelobanov@gmail.com
   ```
   
#### Результат работы:
* Публичный ключ - [public.gpg](assets/task02/public.gpg)
* Файл сообщения - [message.txt](assets/task02/message.txt)
* Подпись к файлу - [message.sig](assets/task02/message.sig)

### Задача №3 - GnuPG: decrypt*

1. Импортировал ключи, результат вывода команды `gpg --list-keys`:
   ```shell
   $ gpg --list-keys
   [keyboxd]
   ---------
   pub   rsa2048 2020-08-18 [SC]
         A455F393F78B5D7A28A0C9C9C5A11DDB9343CA79
   uid           [ unknown] netology <student@netology>
   sub   rsa2048 2020-08-18 [E]
   
   pub   rsa2048 2024-09-19 [SC]
         E1F27A88701F3D67F7250C537F66CA46BE51F938
   uid           [ultimate] Egor Zhelobanov <e.zhelobanov@gmail.com>
   sub   rsa2048 2024-09-19 [E]
   
   pub   rsa2048 2020-08-18 [SC]
         EFDDD64EC65A89E7D882E12DEC12A0D8D7C8B540
   uid           [ unknown] netology <infosec@netology>
   sub   rsa2048 2020-08-18 [E]
   ```
   
2. Но увы, файл не расшифровывается и валидность не проходит:
```shell
$ gpg --decrypt -o message.enc netology.gpg
gpg: decrypt_message failed: Unexpected error

$ gpg --decrypt message.enc
gpg: encrypted with rsa2048 key, ID 423BB7DA845A8006, created 2020-08-18
      "netology <student@netology>"
1984
gpg: Signature made Tue Aug 18 22:50:07 2020
gpg:                using RSA key EFDDD64EC65A89E7D882E12DEC12A0D8D7C8B540
gpg:                issuer "infosec@netology"
gpg: Good signature from "netology <infosec@netology>" [unknown]
gpg: WARNING: The key's User ID is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: EFDD D64E C65A 89E7 D882  E12D EC12 A0D8 D7C8 B540
```