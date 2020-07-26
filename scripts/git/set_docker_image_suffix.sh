#!/bin/bash

BRANCH=$1

case $BRANCH in

  dev | development | desarrollo)
    echo "-dev"
    ;;

  staging | "pre" | stage )
    echo "-pre"
    ;;

  *)
    echo ""
    ;;
esac