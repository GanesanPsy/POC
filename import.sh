#!/usr/bin/env bash

usage() {
    echo "Import an existing dialog model to a Custom Commands application."
    echo "-r | --region             Region (i.e. westus)"
    echo "-s | --subscriptionkey    Speech subscription key"
    echo "-l | --language           Language of the application (i.e. en-us)"
    echo "-a | --appid              Id of the application"
    echo "-f | --file               File with the dialog model"
}

#file="@-" # We use the standard input by default, unless a file is specified.

while [ "$1" != "" ]; do
    case $1 in
        -r | --region ) shift
            region=$1
            ;;
        -s | --subscriptionkey ) shift
            subscriptionkey=$1
            ;;
        -l | --language ) shift
            language=$1
            ;;
        -a | --appid ) shift
            appid=$1
            ;;
        -f | --file ) shift
            file=$1
            ;;
        -h | --help ) 
            usage
            exit
            ;;
         * )
            usage
            exit 1
    esac
    shift
done
