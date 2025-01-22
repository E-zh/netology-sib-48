import sys
import base64

if ((len(sys.argv) - 1) == 2):
    arg1 = sys.argv[1]
    arg2 = sys.argv[2]

    if arg1 == 'crypt':
        message_bytes = arg2.encode('ascii')
        base64_bytes = base64.b64encode(message_bytes)
        print('Encrypting...')
        print(base64_bytes.decode('ascii'))
    elif arg1 == 'decrypt':
        base64_bytes = arg2.encode('ascii')
        message_bytes = base64.b64decode(base64_bytes)
        print("Decrypting...")
        print(message_bytes.decode('ascii'))
    else:
        print("Ошибка! Первый параметр должен быть crypt или decrypt!")
else:
    print("Ошибка! Необходимо указать два обязательных параметра! Например: .\\task4.py crypt text")
