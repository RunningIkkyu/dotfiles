#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
DOT_FILE_LIST="zsh/.zshrc zsh/.alias zsh/.export"
DST_DIR=$HOME

force=$1

if [ "$force" == "-f" ]; then
    force=1
else
    force=0
fi

cd $DST_DIR

for file in $DOT_FILE_LIST
do
    name=`basename $file`
    #echo "$DST_DIR/$name" 
    # back up file or remove file based on "-f" flag
    if [ -e "$DST_DIR/$name" ]; then
        if [ $force -eq 0 ]; then
            mv "$name" "$name.bk"
            echo "backup $PWD/$name to $PWD/$name.bk"
        else
            rm "$name"
            echo "remove old config $PWD/$name"
        fi
    fi

    cd $DST_DIR && ln -s $SCRIPT_DIR/$file .
done
