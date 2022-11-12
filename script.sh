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

downloadSitesFiles(){
    # Baixando arquivos do site a ser hospedado do repositório do GitHub
    echo "Baixando arquivos do site..."
    wget -q -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
}

transferFilesToApacheFolder(){
    # Descompatando arquivos do site
    echo "Descompatando arquivos do site..."
    unzip -qq /tmp/main.zip -d /tmp

    # Movendo arquivos para o diretório de exibição do site
    echo "Movendo arquivos do site para o diretório de exibição..."
    mv /tmp/linux-site-dio-main/* /var/www/html/
}
