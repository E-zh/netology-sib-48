# Специалист по информационной безопасности: расширенный курс
## Модуль "Основы информационной безопасности"
### Блок 4. Защита информации в финансовых системах, международные и отраслевые стандарты
### Желобанов Егор SIB-48

# Домашнее задание к занятию «4.1. Финансовые системы»

### Задача №1 - ГОСТ Р 57580

Вам необходимо изучить ГОСТ Р 57580. Документ состоит из двух частей:
1. ГОСТ Р 57580.1-2017
1. ГОСТ Р 57580.2-2018

Ответьте на следующие вопросы:
1. Что такое контур безопасности?

Контур безопасности - это совокупность объектов информатизации, определяемая областью применения настоящего стандарта, используемых для реализации бизнес-процессов и (или) технологических процессов финансовой организации единой степени критичности (важности), для которой финансовой организацией применяется единая политика (режим) защиты информации (единый набор требований к обеспечению защиты информации)

2. Что/кто является субъектом доступа (в рамках данного стандарта)? Какие основные типы их рассматриваются?

Субъект доступа - это работник финансовой организации или иное лицо, осуществляющий физический и (или) логический доступ, или программный сервис, осуществляющий логический доступ.

В составе основных типов субъектов доступа в настоящем стандарте как минимум рассматриваются следующие:

* пользователи - субъекты доступа, в том числе клиенты финансовой организации, осуществляющие доступ к объектам и (или) ресурсам доступа с целью использования финансовых услуг, предоставляемых информационной инфраструктурой финансовой организации;
* эксплуатационный персонал - субъекты доступа, в том числе представители подрядных организаций, которые решают задачи обеспечения эксплуатации и (или) администрирования объектов и (или) ресурсов доступа, для которых необходимо осуществление логического доступа, включая задачи, связанные с эксплуатацией и администрированием технических мер защиты информации;
* технический (вспомогательный) персонал - субъекты доступа, в том числе представители подрядных организаций, решающие задачи, связанные с обеспечением эксплуатации объектов доступа, для выполнения которых не требуется осуществление логического доступа, или выполняющие хозяйственную деятельность и осуществляющие физический доступ к объектам доступа без цели их непосредственного использования;
* программные сервисы - процессы выполнения программ в информационной инфраструктуре, осуществляющие логический доступ к ресурсам доступа.
 
3. Что такое компрометация аутентификационных данных?

Компрометация аутентификационных данных - это событие, связанное с возникновением возможности использования аутентификационных данных субъектом, не являющимся легальным владельцем указанных аутентификационных данных.

4. Что такое фактор аутентификации? На какие категории подразделяются факторы? 

Фактор аутентификации - это блок данных, используемых при аутентификации субъекта или объекта доступа.

Факторы аутентификации подразделяются на следующие три категории:
* что-то, что субъект или объект доступа знает, например, пароли легальных субъектов доступа, ПИН-коды;
* что-то, чем субъект или объект доступа обладает, например, данные, хранимые на персональных технических устройствах аутентификации: токенах, смарт-картах и иных носителях;
* что-то, что свойственно субъекту или объекту доступа, например, биометрические данные физического лица - легального субъекта доступа.

5. Что такое однофакторная и многофакторная аутентификация?

* Однофакторная аутентификация - это аутентификация, для осуществления которой используется один фактор аутентификации.
* Многофакторная аутентификация - это аутентификация, для осуществления которой используются два и более различных факторов аутентификации.

6. Чем событие ЗИ отличается от инцидента ЗИ?

Событие защиты информации - это идентифицированное возникновение и (или) изменение состояния объектов информатизации финансовой организации, действия работников финансовой организации и (или) иных лиц, указывающие на возможный (потенциальный) инцидент защиты информации.

Инцидент защиты информации - это одно или серия связанных нежелательных или неожиданных событий защиты информации, которые могут привести к риску нарушения выполнения бизнес-процессов, технологических процессов финансовой организации и (или) нарушить безопасность информации.

В составе типов инцидентов защиты информации рекомендуется как минимум рассматривать:
* несанкционированный доступ к информации;
* нарушение в обеспечении защиты информации, включая нарушение работы технических мер защиты информации, появление уязвимостей защиты информации;
* нарушение требований законодательства Российской Федерации, в том числе нормативных актов Банка России, внутренних документов финансовой организации в области обеспечения защиты информации;
* нарушение регламентированных сроков выполнения процедур и операций в рамках предоставления финансовых услуг;
* нарушение установленных показателей предоставления финансовых услуг;
* нанесение финансового ущерба финансовой организации, ее клиентам и контрагентам;
* выполнение операций (транзакций), приводящих к финансовым последствиям финансовой организации, ее клиентов и контрагентов, осуществление переводов денежных средств по распоряжению лиц, не обладающих соответствующими полномочиями, или с использованием искаженной информации, содержащейся в соответствующих распоряжениях (электронных сообщениях).

7. Что такое компенсирующие меры? В каких случаях они применяются?

Компенсирующие меры направленны на нейтрализацию угроз безопасности информации, определенных в модели угроз, и нарушителей безопасности информации финансовой организации.
Компенсирующие меры могут разрабатываться при невозможности технической реализации отдельных выбранных мер защиты информации, а также с учетом экономической целесообразности на этапах адаптации (уточнения) базового состава мер.

8. Сколько уровней ЗИ определяет стандарт? Перечислите их.

Стандарт определяет три уровня защиты информации:
* уровень 1 - усиленный;
* уровень 2 - стандартный;
* уровень 3 - минимальный.

9. Какой из всех возможных объектов атак нарушитель выберет с наибольшей вероятностью (с точки зрения авторов стандарта)?

С наибольшей вероятностью нарушитель для атаки выберет наиболее слабо контролируемый объект, где его деятельность будет оставаться необнаруженной максимально долго.

10. Для оценки полноты реализации процессов системы ЗИ используют качественную модель оценивания. Приведите уровни соответствия с их описанием, указанные в данной модели?

Для оценки полноты реализации процессов системы ЗИ используют следующую качественную модель оценивания:
* нулевой уровень соответствия: организационные и технические меры процесса системы ЗИ не реализуются или реализуются в единичных случаях. Общие подходы (способы) реализации организационных и технических мер процесса системы ЗИ не установлены. Контроль и совершенствование реализации организационных и технических мер процесса системы ЗИ не осуществляются.
* первый уровень соответствия: организационные и технические меры процесса системы ЗИ реализуются в незначительном количестве, бессистемно и/или эпизодически. Общие подходы (способы) реализации организационных и технических мер процесса системы ЗИ не установлены. Контроль и совершенствование реализации организационных и технических мер процесса системы ЗИ не осуществляются.
* второй уровень соответствия: организационные и технические меры процесса системы ЗИ реализуются в значительном количестве на постоянной основе. Общие подходы (способы) реализации организационных и технических мер процесса системы ЗИ установлены в единичных случаях. Реализация организационных и технических мер процесса системы ЗИ осуществляется на усмотрение исполнителя. Контроль и совершенствование реализации организационных и технических мер процесса системы ЗИ практически не осуществляются.
* третий уровень соответствия: организационные и технические меры процесса системы ЗИ реализуются в значительном количестве на постоянной основе в соответствии с общими подходами (способами), установленными в финансовой организации. Контроль и совершенствование реализации организационных и технических мер процесса системы ЗИ осуществляются бессистемно и/или эпизодически.
* четвертый уровень соответствия: организационные и технические меры процесса системы ЗИ реализуются в полном объеме на постоянной основе в соответствии с общими подходами (способами), установленными в финансовой организации. В финансовой организации в основном реализованы контроль и совершенствование реализации организационных и технических мер процесса системы ЗИ.
* пятый уровень соответствия: организационные и технические меры процесса системы ЗИ реализуются в полном объеме на постоянной основе в соответствии с общими подходами (способами), установленными в финансовой организации. В финансовой организации реализованы постоянный контроль и необходимое своевременное совершенствование реализации организационных и технических мер процесса системы ЗИ.

11. Что рекомендуется использовать в качестве основных источников свидетельств для оценки соответствия ЗИ?

Оценку соответствия ЗИ следует основывать на свидетельствах, в качестве основных источников которых рекомендуется использовать:
* Документы проверяемой организации и иные материалы проверяемой организации в бумажном или электронном виде и, при необходимости, документы третьих лиц, относящиеся к обеспечению ЗИ финансовой организации и находящиеся в распоряжении проверяемой организации.
* Устные высказывания сотрудников проверяемой организации в процессе проводимых опросов в области оценки соответствия ЗИ.
* Результаты наблюдений членов проверяющей группы за процессами системы ЗИ и деятельностью сотрудников проверяемой организации в области оценки соответствия ЗИ.
* Параметры конфигураций и настроек технических объектов информатизации и средств ЗИ.
* Технические и программные средства сбора свидетельств полноты реализации мер ЗИ (анализ электронных журналов регистрации, анализ фактических настроек, анализ уязвимостей, проведение тестирования на проникновение и т.п.).

Выбор конкретных источников свидетельств при проведении оценки соответствия ЗИ осуществляет проверяющая организация (проверяющая группа) с учетом предложений проверяемой организации и обеспечения максимальной достоверности оценки соответствия ЗИ.

### Задача №2 - Тинькофф Мобильный SDK
#### Токен сообщения

В рамках документации описано формирование подписи сообщения (в терминологии документа - `Token`), которая позволяет верифицировать, что сообщение действительно от вас. Вам нужно найти описание этого алгоритма и подписать следующий документ:

```json
{
  "TerminalKey": "TerminalKey",
  "Amount": "100000",
  "OrderId": "10001",
  "Description": "Подарочная карта на 1000 рублей"
}
```

В качестве пароля (password) используйте строку `TopSecret`. 

При пересылке любых данных важно удостовериться, что они не изменились. Для этого вместе с данными пересылается специальный токен - это хэш-функция от строки, получаемой из исходных данных. Способ получения подобного токена описан в [документации Тинькофф](https://www.tinkoff.ru/kassa/develop/sdk/). Теперь попробуем сформировать токен.  

В качестве результата пришлите токен для указанного документа.

### Ответ:

1. Как указано на странице 36 документации для [Android](assets/android.pdf):
    ```text
    Для формирования подписи необходимо:
    1. Собрать все параметры запроса Ключ-Значение, кроме параметра Token. Например,
        [["TerminalKey","TestB"],["PaymentId","20150"]].
    2. Добавить туда пару Password-Значение.
        [["TerminalKey","TestB"],["PaymentId","20150"],["Password","123456789"]].
    3. Отсортировать по ключам в алфавитном порядке.
        [["Password","123456789"],["PaymentId","20150"],["TerminalKey","TestB"]].
    4. Конкатенировать значения. 12345678920150TestB.
    5. Вычислить SHA-256 от пункта 4.
    ```
   
2. Собираем все параметры, и сортируем их по алфавиту:
    ```text
    [["Amount","100000"],["Description","Подарочная карта на 1000 рублей"],["OrderId","10001"],["Password","TopSecret"],["TerminalKey","TerminalKey"]]
    ```
    
3. Далее конкатенируем значение в `1000000Подарочная карта на 1000 рублей10001TopSecretTerminalKey`
4. Вычисляем хэш `sha256` из строки, который и будет являться токеном:
    ```shell
    $ echo '1000000Подарочная карта на 1000 рублей10001TopSecretTerminalKey' | openssl dgst -sha256
    SHA2-256(stdin)= bc2a28deed6e729718d996a5c78e101835c1cc89b962636f66d611aac4f75771
    ```
   
Ответ на задание: Token - `bc2a28deed6e729718d996a5c78e101835c1cc89b962636f66d611aac4f75771`

### Дополнительное задание
Шифрование карточных данных

В рамках документации описывается механизм передачи карточных данных с мобильного устройства на сервер (они не передаются в открытом виде). Вам нужно найти описание этого алгоритма и зашифровать следующие карточные данные:

* PAN=4300000000000777
* ExpDate=0823
* CardHolder=COURSAR
* CVV=999

### Ответ

1. Все на той же 36 странице документации для [Android](assets/android.pdf) указано как это сделать:
    ```text
    Алгоритм шифрования карточных данных
    1. Введенные пользователем номер карты, expiry date и secure code приводятся к виду:
        "PAN=%pan%;ExpDate=%month%%year%;CVV=%secure_code%".
    2. Выполняется шифрование строк с шага 1 алгоритмом RSA/ECB/PKCS1Padding с
        использованием publicKey в качестве ключа.
    3. Полученная криптограмма на шаге 2 кодируется алгоритмом Base64.
    ```
   
2. Приводим данные к виду: `"PAN=4300000000000777;ExpDate=0823;CardHolder=COURSAR;CVV=999"`, и получаем из них строку `43000000000007770823COURSAR999`, которую записываем в файл [message.txt](assets/message.txt)
3. Далее выполняем команды шифрования и кодировки в base64:
   ```shell
   $ openssl pkeyutl -encrypt -pubin -inkey public.key -in message.txt -out cypher.txt
   
   $ openssl enc -base64 -in cypher.txt -out msg.base64
   ```
   
4. В результате получаем зашифрованный файл [cypher.txt](assets/cypher.txt) и закодированный файл [msg.base64](assets/msg.base64)
5. Для расшифровки используем команды:
   ```shell
   $ openssl enc -d -base64 -in msg.base64 -out msg.txt
   
   $ openssl pkeyutl -decrypt -inkey private.key -in msg.txt -out decrypted.txt
   ```
6. В результате получаем раскодированный [msg.txt](assets/msg.txt) и расшифрованный [decrypted.txt](assets/decrypted.txt), причем msg.txt и изначальный cypher.txt идентичны, как и message.txt и decrypted.txt.