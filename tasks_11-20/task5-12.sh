#! /bin/bash

echo "Input the name of the file:"
read name

if test -e "$name";
then 
    echo "В данном каталоге существует файл с именем $name";
else
    echo "В данном каталоге не существует файл с именем $name";
fi

exit 0