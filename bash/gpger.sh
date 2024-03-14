#!/bin/bash

source manage.sh

menu() {

    if which gpg >/dev/null
    then
    while true;
    do
   
    echo "               .__"                               
    echo "__  _  __ ____ |  |   ____  ____   _____   ____"  
    echo "\ \/ \/ // __ \|  | _/ ___\/  _ \ /     \_/ __ \ " 
    echo " \     /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/" 
    echo "  \/\_/  \___  >____/\___  >____/|__|_|  /\___  >"
    echo "             \/          \/            \/     \/" 
    echo "==========================================================================="
    echo "Please choose from the following actions."
    echo "1. Generate New GPG key"
    echo "2. Add GPG key to git"
    echo "3. View GPG keys"
    echo "4. Delete GPG keys"
    echo "5. Exit"
    echo -e "==========================================================================="

    read -p "Enter your choice: " choice 

    if [ $choice == 1 ]
    then
        generate_key

    elif [ $choice == 2 ]
    then
        add_key

    elif [ $choice == 3 ]
    then
        view_keys

    elif [ $choice == 4 ]
    then
        delete_keys

    elif [ $choice == 5 ]
    then
        echo "You opted for exit. Thank You!"
        exit

    else
        echo "Please enter a valid choice!!"

    fi
    done

    else
    echo "GPG not found. Please install GPG."

    fi
}

menu