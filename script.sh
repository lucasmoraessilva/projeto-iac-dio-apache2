#!/bin/bash

updateServer(){
    #
    echo Atualizando repositório...
    apt-get -qq update

    #
    echo Atualizando pacotes...
    apt-get -qq upgrade
}

installApache2(){
    #
    echo Instalando Apache2
    apt-get -qq install apache2
}
