#!/bin/bash

generate_key(){
    echo "==========================================================================="
    gpg --full-generate-key
    echo "==========================================================================="
}

view_keys() {
    echo "==========================================================================="
    echo "Your GPG keys are:"
    gpg --list-secret-keys --keyid-format=long
    echo "==========================================================================="
}

add_key() {
    echo "Select the key to be added to git from the list"
    gpg --list-secret-keys --keyid-format=long
    echo -e "==========================================================================="
    read -p "Enter the key: " key
    
    gpg --armor --export $key
    git config --global user.signingkey $key
    git config --global commit.gpgsign true
    
    echo "Key added to git. Please add this key to your Github account"
}

delete_keys() {
    echo "==========================================================================="
    echo "Select the Key(s) to be deleted from the list"
    gpg --list-secret-keys
    echo -e "==========================================================================="
    read -p "Enter the number of keys to be deleted: " ndk

    i=0
    while [ $i -lt $ndk ]
    do
    echo "==========================================================================="
    read -p "Enter Key: " keyid

    gpg --delete-secret-key $keyid
    gpg --delete-key $keyid
    echo "Selected key has been deleted"
    echo -e "==========================================================================="
    ((i++))
    done
}

renew_keys() {

}