import sys
import os

if ((len(sys.argv) - 1) == 1):
    if os.path.exists(sys.argv[1]):
        if os.path.isfile(sys.argv[1]):
            print(sys.argv[1] + " - file")

        if os.path.isdir(sys.argv[1]):
            print(sys.argv[1] + " - directory")
    else:
        print(sys.argv[1] + " - not exist")
else:
    print("Ошибка! Необходимо указать один обязательный параметр! Например: .\\task3.py c:\\windows")
