#!/bin/bash

BRANCH=$1

case $BRANCH in

  dev | development | desarrollo)
    echo "-dev:latest"
    ;;

  staging | "pre" | stage )
    echo "-pre:latest"
    ;;

  *)
    echo ":latest"
    ;;
esac