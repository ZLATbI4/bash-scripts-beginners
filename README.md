## Конспект по написанию Bash скриптов

Bash скрипты поддерживают стандартные команды линукс терминала, к примеру `ls`, `cat`, `pwd` и тд.  
Скрипты имеют расширение `.sh`

Каждый скрипт начинается с шабанга
> #!/bin/bash

### Запуск скрипта
Есть 2 варианта запуска:
- Нативно из под линукса, для этого нужно дать скрипту права на выполнение `sudo chmod a+x myscript.sh`, затем выполнить команду в терминале
  >./myscript.sh

  либо в GUI кликнуть по нему 2 раза

- Выполнив в терминале  
  > bash myscript.sh
---

### *Вывод сообщений*
для вывода сообщения используется команда `echo`
> echo "Hi! I'm amazing bash script!"

`echo -e` - записывает сообщение в файл (перезаписывая сам файл)
> echo -e "I'm only one string in the file" > file.txt
---
### *Переменные*
Для присвоения переменной значения используется знак `=`, он ставится БЕЗ ПРОБЕЛОВ, конструкция выглядит так `имя_переменной=значение_переменной`
> mylaptop="MacBook Air"
> screen_size=13

Чтобы использоват переменную нужно перед её именем поставить знак `$`
> echo "My laptop is `$mylaptop` with `$screen_size` inch screen"

Результат:
> My laptop is MacBook Air with 13 inch screen

Пример с числами:
> num1=5  
> num2=19  
> sum=$((`num1`+`num2`))  
> echo "`$num1` + `$num2` = `$sum`"
---
### Зарезервированные переменные
    `hostname` - хранит имя хоста
можно пропинговать самого себя, к примеру:

    ~$ ping `hostname`

Для передачи аргументов в скрипт используются `$0`, `$1`, `$2` и тд
К примеру, если выполнить скрипт передав через пробел в него параметры: 

    ~$ ./myscript.sh hello friend

то внутри скрипта переменная `$0` будет `hello`, а переменная `$1` будет `friend`
