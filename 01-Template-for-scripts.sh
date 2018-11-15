#!/bin/bash

# Enconding = UTF-8
#====================================Header===================================
#=============================================================================
#AUTHOR
# Fabio Rodrigues Pinto <fabioti1607@gmail.com>
#
#PROGRAM
#01-Template-for-scripts.sh
#
#DESCRIPTION
#Cria template para cabeçalho e blocos para novos scripts.
#
#CHANGELOG
#
#=============================================================================

#============================VERIFICACAO
#=======================================

#==============================VARIAVEIS

name='organize'
version='0.1a'

#=======================================

#================================FUNCOES
_HELP()
{
cat <<EOF
${name} Versão ${version}

Opções
 -c, --create
 	Cria um template no diretorio atual.

 -h, --help
 	Imprime a ajuda do script.

EOF
}

_CREATE() # Cria o template no diretorio atual.
{
	cat <<EOF
#!/bin/bash

# Enconding = UTF-8
#====================================Header===================================
#=============================================================================
#AUTHOR
# Fabio Rodrigues Pinto <fabioti1607@gmail.com>
#
#PROGRAM
#01-Template-for-scripts.sh
#
#DESCRIPTION
#Cria template para cabeçalho e blocos para novos scripts.
#
#CHANGELOG
#
#=============================================================================

#============================VERIFICACAO
#=======================================

#==============================VARIAVEIS
#=======================================

#============================BIBLIOTECAS
#=======================================

#================================FUNCOES
#=======================================

EOF
}

#=======================================

#===================================MAIN
#=======================================

case $1 in
	-c|--create) _CREATE ;;
	-h|--help) _HELP ;;
esac
