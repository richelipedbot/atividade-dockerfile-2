#!/bin/bash
# Iniciar o MySQL em segundo plano
service mysql start

# Iniciar o Apache para servir phpMyAdmin
httpd

# Manter o container ativo
tail -f /dev/null
