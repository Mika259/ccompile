#!/bin/bash
# C Language Only
clear

# padam hastag di depan 2 baris code di bawah dan ubah nama file test.c
#file="test.c"
#output="output"

# tambah hashtag di depan baris command di bawah untuk off input
read -p "[+] Filename (test.c): " file;clear

compile () {
        if gcc $1 -o $2;then
                echo "Compiler C Bash Execute -"
                ./$2
        else
                echo "Code Error.."
        fi
        echo "";echo "Programme Finished..."
        rm $2
}
compile $file $output
