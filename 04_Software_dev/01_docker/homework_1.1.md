# Специалист по информационной безопасности: расширенный курс
## Модуль "Современная разработка ПО"
### Желобанов Егор SIB-48

# Домашнее задание к занятию «1.1. Контейнеризация (Docker)»

### Задание 1. Образы и контейнеры Docker

#### Описание задания

Необходимо установить базовые компоненты Docker. Выполните загрузку готового образа из общедоступного репозитория,
запустите контейнер на основе загруженного образа, реализуйсте базовые операции с контейнерами и образами.

Выполните задание, руководствуясь подробной [инструкцией](https://github.com/netology-code/ibdev-homeworks/blob/master/01_docker_new/task/docker.md).

### Ответы:

* скриншот вывода результатов команды `ifconfig` (на Kali Linux):

    ![](assets/task01/1_ifconfig.jpg)

* скриншот вывода результатов команды `sudo docker pull bash`:

  ![](assets/task01/2_pull_bash.jpg)

* скриншот вывода результатов команды `sudo docker run -it bash`:

  ![](assets/task01/3_run_bash.jpg)

* скриншот вывода результатов команды `sudo docker stop loving_shamir`:

  ![](assets/task01/4_stop_container.jpg)

* скриншот вывода результатов команды `sudo docker rm loving_shamir`:

  ![](assets/task01/5_rm_container.jpg)

* скриншот вывода результатов команды `sudo docker rmi bash`:

  ![](assets/task01/6_rmi_bash.jpg)

* скриншот вывода результатов команды `sudo docker ps -a`:

  ![](assets/task01/7_ps_a.jpg)

* скриншот вывода результатов команды `sudo docker image ls`:

  ![](assets/task01/8_image_ls.jpg)

### Задание 2. Bash в Docker

#### Описание задания

Необходимо выполнить работу с контейнером Docker в интерактивном режиме и предоставить объективные доказательства 
присутствия в контейнере.

Выполните задание, руководствуясь подробной [инструкцией](https://github.com/netology-code/ibdev-homeworks/blob/master/01_docker_new/task/bash.md).

### Ответы:

* скриншот вывода результатов команды `sudo docker run --rm -it bash`:

  ![](assets/task02/1_run_rm_bash.jpg)

* скриншот вывода результатов команды `whoami` и `cat /etc/*release*` (в контейнере):

  ![](assets/task02/2_whoami_cat.jpg)

* скриншот вывода результатов команды `ls -la /` (в контейнере):

  ![](assets/task02/3_ls_la.jpg)

* скриншот вывода результатов команды `whoami` и `cat /etc/*release*` (в основной системе):

  ![](assets/task02/4_whoami_cat_host.jpg)

* скриншот вывода результатов команды `ls -la /` (в основной системе):

  ![](assets/task02/5_ls_la_host.jpg)

### Задание 3. Dockerfile

#### Описание задания

Вы запустили контейнер на основе готового образа из общедоступного репозитория Docker HUB и вручную выполнили отдельные 
команды для решения простых задач. Далее необходимо подготовить образ, который будет содержать заложенные директивы. 
Они будут автоматически выполнены при запуске контейнера. Директивы прописываются в специальном конфигурационном файле Dockerfile.

Выполните задание, руководствуясь подробной [инструкцией](https://github.com/netology-code/ibdev-homeworks/blob/master/01_docker_new/task/dockerfile.md).

### Ответы:

* скриншот вывода содержимого [файла](assets/task03/ezhe_bash.sh) скрипта `ezhe_bash.sh`:

  ![](assets/task03/1_cat_ezhe_bash.jpg)

* скриншот вывода содержимого [файла Dockerfile](assets/task03/Dockerfile) `cat Dockerfile`:

  ![](assets/task03/2_cat_dockerfile.jpg)

* скриншот результатов сборки образа `sudo docker build -t image_ezhe_bash .`:

  ![](assets/task03/3_docker_build.jpg)

* скриншот результатов запуска контейнера `sudo docker run –rm image_ezhe_bash`:

  ![](assets/task03/4_docker_run.jpg)

* скриншот результатов запуска скрипта в основной системе `./ezhe_bash.sh`:

  ![](assets/task03/5_run_ezhe_bash_kali.jpg)

### Задание 4. Docker-compose

#### Описание задания

Необходимо реализовать запуск подготовленной связки контейнеров с использованием конфигурационного файла docker-compose.yml.

До сих пор вы взаимодействовали с одиночным контейнером, как обособленным элементов для решения своих задач. 
Теперь вам предстоит поработать с более сложной технологией контейнеризации - запуском подготовленной связки 
контейнеров (не менее двух). Это отдельные программные сервисы, которые взаимодействуют между собой в рамках единой задачи.

Выполните задание, руководствуясь подробной [инструкцией](https://github.com/netology-code/ibdev-homeworks/blob/master/01_docker_new/task/dockercompose.md).

### Ответы:

* скриншот вывода содержимого подготовленного [файла index.html](assets/task04/index.html), содержащий мое Ф.И.О.:

  ![](assets/task04/1_cat_index.jpg)

* скриншот вывода содержимого подготовленного [файла](assets/task04/docker-compose.yml) `docker-compose.yml`:

  ![](assets/task04/2_cat_docker_compose.jpg)

* скриншот результатов запуска подготовленной связки контейнеров командой `sudo docker-compose up`:

  ![](assets/task04/3_docker_compose_up.jpg)

* скриншот первоначальной титульной страницы Nginx при подключении браузером к контейнеру:

  ![](assets/task04/4_nginx_title_page.jpg)

* скриншот запуска связки контейнеров после замены файла `index.html` в контейнере, содержащий мое Ф.И.О.:

  ![](assets/task04/5_docker_compose_up_change_index.jpg)

* скриншот моего варианта титульной страницы Nginx при подключении браузером к контейнеру, содержащий мое Ф.И.О.:

  ![](assets/task04/6_my_nginx_title_page.jpg)

* скриншот вывода результатов команды остановки связки контейнеров `sudo docker-compose down`:

  ![](assets/task04/7_docker_compose_down.jpg)

