#!/usr/bin/env sh

case $1 in
    "--encrypt" )
        xsel|gpg --trust-model=always -ear `zenity --entry --title="Recipient" --text="Enter recipient name:" --entry-text "name"` 2>&1|xsel --clipboard
        ;;
    "--decrypt" )
        xsel|gpg -a --decrypt|xsel --clipboard
        ;;
    * )
        echo "Usage:"
        echo "      $0 [--decrypt|--encrypt]"
        ;;
esac
