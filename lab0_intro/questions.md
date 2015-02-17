# Warmup Questions

1.  What is the clone url of this repository?
    >   answer

2.  What is the output of the ``cal`` command?
        multi
        line
        answer  El calendario

# Homework Questions

1.  What is the ``grep``command?
    >   Es una linea de comando que busca una palabra especifica dentro de un file. 

2.  What is a *makefile*?
    >   Es un script que utiliza make para llevar la gestión de compilación de programas. 

3.  What is *git*?
    >   Es un software de control de versiones.

4.  What does the ``-prune`` option of ``find`` do? Give an example
    >   La opción de "-prune" excluye los directorios deseados de la acción de "find". Es decir, "find" te indica cual es el donde están ubicados los files con algún nombre/cualquier criterio y la acción de -prune evita que "find" busque dentro de los subdirectorios que deseas ignorar. Por ejemplo,
            find / -name text '/pics' -prune\ 
Indica buscar todos los files que contengan 'text' en su nombre exepto en el subdirectorio /pics.

5.  Where is the file ``grub.cfg``
    >   answer

6.  How many files with ``gnu`` in its name are in ``/usr/src``
    >   answer

7.  How many files contain ``gpl`` inside in ``/usr/src``
    >   answer

8.  What does the ``cut`` command do?
    >  Command que se utiliza para extraer secciones de una linea de input. Pueden ser bytes (-b), characters (-c) y fields (-f). 

9.  What does the ``wget`` command do?
    >   Es un comando que descarga archivos a traves de una red. Significa "web get".

10.  What does the ``diff`` command do?
    >  Este command analiza dos files y muestra las diferencias que hay entre los dos files. En escencia, crea una lista de instrucciones de como cambiar un archivo para que sea identico al segundo. 

11.  How many users exist in *Guitaca*?
    >   answer

12. What command will produce a table of Users and Shells sorted by shell (tip: using ``cut`` and ``sort``)
    >   answer

13. What command will produce the number of users with shell ``/sbin/nologin`` (tip: using ``grep`` and ``wc``)
    >   grep/ sbin/nologin -print -wc

14.  What is the name of the linux distribution running on *Guitaca*?
    >   answer

15. Create a script for finding duplicate images based on their content (tip: hash or checksum)
    You may look in the internet for ideas, but please indicate the source of any code you use
    Save this script as ``find_duplicates.sh`` in this directory and commit your changes to github

16. What is the meaning of ``#! /bin/bash`` at the start of scripts?
    >  Le indica al shell con cual programa debe interpretar el script al ser ejecutado. En este ejemplo se indica que el script debe ser interpretado y ejecutado por el shell bash. 

17. How many unique images are in the ``sipi_images`` folder?
    >   28
    
