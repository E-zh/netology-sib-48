import sys
import base64

if ((len(sys.argv) - 1) == 2):
    arg1 = sys.argv[1]
    arg2 = sys.argv[2]

    if arg1 == 'crypt':
        print('Encrypting...')
        print(base64.b64encode(arg2.encode('ascii')).decode('ascii'))
    elif arg1 == 'decrypt':
        print("Decrypting...")
        print(base64.b64decode(arg2.encode('ascii')).decode('ascii'))
    else:
        print("Ошибка! Первый параметр должен быть crypt или decrypt!")
else:
    print("Ошибка! Необходимо указать два обязательных параметра! Например: .\\task4.py crypt text")
