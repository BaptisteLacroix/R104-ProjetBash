# !/bin/bash
# script : script_X.sh
# date : 01/02/2022
# auteurs : Baptiste Lacroix / Jiner Léa


# Projet Bash

verbose=0

while [[ $# -gt 0 ]]
do

        case $1 in				# Cas 1 on teste si l'argument vaut -h ou --help
                "-h" | "--help")
                if [[ -n $1 ]]			# Si argument 1 vaut -h ou --help alors			
                then echo "$(cat ./help.txt)"; 	# On affiche le fichier aide
                fi ;;				# break
                
						# Cas 2 on teste si l'argument vaut -d <chemin>
                "-d")
                if [[ -n $2 ]]			# Si -d a un argument a côté alors
                then chemin=$2 
                echo "$chemin"
                shift				# On met dans une variable le chemin donné
                else
                        chemin=$(pwd); 		# Sinon on prend le répertoire courant | $ ou pas $
                fi ;;
                
						# Cas 3 On teste si l'argument vaut -v ou --verbose
                "-v" | "--verbose")	
                if [[ -n $1 ]]			# Si -v ou --verbose alors mode verbose activé
                then verbose=1;			# Donc variable verbose prend 1
                fi ;;
                

                '-n' | '--pid')			# Cas 4 on teste si l'argument vaut -n ou --pid <entier>					# cli : check pid 
                if [[ -n $2 ]]			# Si -n ou --pid a un argument a cote alors
                then varPID=$2;
                shift				# pid vaut l'argument
                else
                        echo "$0: erreur: $1 doit être suivi d'un argument"; exit 11
                fi ;;
                
        	*)
                echo "$0: erreur: $1 argument inconnu"; exit 10
        esac
                shift
done
        
if [[-n $verbose]]
	then 
	echo "Recherche du dossier en cours ..."
	if [-d chemin] 
		then 
			echo "Fichier existant."
		else 
			echo "création du répertoir $chemin"
			mkdir $chemin fi echo "recherche des PID ."
	fi
	echo "recherche des PID .."
	echo "recherche des PID ..."
	liste = $(ls - lR $varPID) 
	for i in $(ls) 
		do 
			then 
				echo "$(cut -f 2 $i)"
    				echo "$(cut -f 3 $i)"
		fi 
	done 
fi