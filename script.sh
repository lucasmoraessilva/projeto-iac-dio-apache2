#!/bin/bash

updateServer(){
    #
    echo Atualizando repositório...
    apt-get -qq update

    #
    echo Atualizando pacotes...
    apt-get -qq upgrade
}
