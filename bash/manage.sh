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
    echo "==========================================================================="
    echo "Select the key to be added to git from the list"
    keylist=$(gpg --list-secret-keys --keyid-format=long | awk /sec/ | cut -b 15-30)
    karr=()
    c=1
    for i in $keylist
    do
        echo "$c. $i"
        karr+=("$i")
        ((c++))
    done
    echo -e "==========================================================================="
    read -p "Enter the key number : " keyn
    
    ((keyn--))
    key=${karr[$keyn]}

    gpg --armor --export $key
    git config --global user.signingkey $key
    git config --global commit.gpgsign true
    
    echo "Key added to git. Please add this key to your Github account"
}

delete_keys() {
    echo "==========================================================================="
    echo "Select the Key(s) to be deleted from the list"

    keylist=$(gpg --list-secret-keys --keyid-format=long | awk /sec/ | cut -b 15-30)
    karr=()
    c=1
    for i in $keylist
    do
        echo "$c. $i"
        karr+=("$i")
        ((c++))
    done

    echo -e "==========================================================================="
    read -p "Enter the key-number of the key to be deleted: " kyn

    ((kyn--))
    keyid=${karr[kyn]}

    gpg --delete-secret-key $keyid
    gpg --delete-key $keyid
    echo "Selected key has been deleted"
    echo -e "==========================================================================="
}
