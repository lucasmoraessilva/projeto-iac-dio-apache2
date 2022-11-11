#!/bin/bash

updateServer(){
    # Atualizando lista de pacotes
    echo Atualizando lista de pacotes...
    apt-get -qq update

    # Atualizando pacotes
    echo Atualizando pacotes...
    apt-get -qq upgrade
}

installApache2(){
    # Instalando servidor web Apache2
    echo Instalando Apache2...
    apt-get -qq install apache2
}

installDependentPackages(){
    # Instalando pacotes dependentes para configuração do projeto
    echo Instalando dependências...
    apt-get -qq install unzip wget
}
