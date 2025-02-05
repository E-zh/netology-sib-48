#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {
    /* выделяем буфер из 24 символов для хранения команды */
    char command[24] = "ping ";
    /* буфер для хранения хоста, который нужно пропинговать */
    char host[16];

    printf("please enter host for ping\n");
    /* получаем от пользователя имя хоста */
    /* нужно ввести в консоли, например, ya.ru и нажать Enter */
    fgets(host, sizeof(host), stdin);

    /* отладочный вывод - печатаем команду */
    printf("command: %s\n", command);
    /* отладочный вывод - печатаем хост */
    printf("host: %s\n", host);

    /* добавляем к команде хост, при этом \0 в команде заменяется на первый символ из host */
    strcat(command, host);

    /* отладочный вывод - печатаем полную команду */
    printf("full command: %s\n", command);

    /* выполняем команду */
    system(command);

    return 0;
}
