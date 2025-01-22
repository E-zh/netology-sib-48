import sys

if ((len(sys.argv) - 1) == 1 ) :
    if (sys.argv[1]).isdigit() :
        print(int(sys.argv[1]) + 1)
    else :
        print ("Ошибка! Параметр должен быть числом! Например: .\\task1_2.py 5")
else :
    print ("Ошибка! Необходимо указать один обязательный параметр! Например: .\\task1_2.py 5")
