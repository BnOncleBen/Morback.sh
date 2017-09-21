#!/bin/bash

A1=0
A2=0
A3=0

B1=0
B2=0
B3=0

C1=0
C2=0
C3=0
Coordonnees=""
continu=1
player=1


function Afficher() 
{
	i=0
	j=0
	
	for ((i=0; i<taille; i++))
	do
		echo generation de la grille	
	done
	if [ $A1 -eq 1 ] 
	then
		hg="X"
	elif [ $A1 -eq 2 ] 
	then
		hg="O"
	else
		hg=" "
	fi
	if [ $A2 -eq 1 ] 
	then
		hm="X"
	elif [ $A2 -eq 2 ] 
	then
		hm="O"
	else
		hm=" "
	fi
	if [ $A3 -eq 1 ] 
	then
		hd="X"
	elif [ $A3 -eq 2 ] 
	then
		hd="O"
	else
		hd=" "
	fi
	if [ $B1 -eq 1 ] 
	then
		mg="X"
	elif [ $B1 -eq 2 ] 
	then
		mg="O"
	else
		mg=" "
	fi

	if [ $B2 -eq 1 ] 
	then
		mm="X"
	elif [ $B2 -eq 2 ] 
	then
		mm="O"
	else
		mm=" "
	fi

	if [ $B3 -eq 1 ] 
	then
		md="X"
	elif [ $B3 -eq 2 ] 
	then
		md="O"
	else
		md=" "
	fi
	if [ $C1 -eq 1 ] 
	then
		bg="X"
	elif [ $C1 -eq 2 ] 
	then
		bg="O"
	else
		bg=" "
	fi
	if [ $C2 -eq 1 ] 
	then
		bm="X"
	elif [ $C2 -eq 2 ] 
	then
		bm="O"
	else
		bm=" "
	fi
	if [ $C3 -eq 1 ] 
	then
		bd="X"
	elif [ $C3 -eq 2 ] 
	then
		bd="O"
	else
		bd=" "
	fi
	echo "    1   2   3"	
	echo "  -------------"
	echo "A | $hg | $hm | $hd |"
	echo "  -------------"
	echo "B | $mg | $mm | $md |"
	echo "  -------------"
	echo "C | $bg | $bm | $bd |"
	echo "  -------------"
}

function Random()
{
	stop=0

	while [ $stop -eq 0 ];
	do
		random=$((1+ RANDOM % 10))
		case $random in
		 1)
			if [ $A1 -eq 0 ]
			then
				A1=2
				stop=1
			fi
			;;
		 2)
			if [ $A2 -eq 0 ]
			then
				A2=2
				stop=1
			fi
			;;
		 3)
			if [ $A3 -eq 0 ]
			then
				A3=2
				stop=1
			fi
			;;
		 4)
			if [ $B1 -eq 0 ]
			then
				B1=2
				stop=1
			fi
			;;
		 5)
			if [ $B2 -eq 0 ]
			then
				B2=2
				stop=1
			fi
			;;
		 6) 
			if [ $B3 -eq 0 ]
			then
				B3=2
				stop=1
			fi
			;;
		 7)
			if [ $C1 -eq 0 ]
			then
				C1=2
				stop=1
			fi
			;;
		 8)
			if [ $C2 -eq 0 ]
			then
				C2=2
				stop=1
			fi
			;;
		 9)
			if [ $C3 -eq 0 ]
			then
				C3=2
				stop=1
			fi
			;;
		*)
			if [ $C3 -eq 0 ]
			then
				C3=2
				stop=1
			fi
			;;
		esac
		
	done

	for i in {1..9}
	do
		noeud[i]=i


		for j in {1..9}
		do
			
			
			feuille[j]=j

			tableTestA1=$A1
			tableTestA2=$A2
			tableTestA3=$A3
			tableTestB1=$B1
			tableTestB2=$B2
			tableTestB3=$B3
			tableTestC1=$C1
			tableTestC2=$C2
			tableTestC3=$C3

			
		done
	done
}

function badlevel()
{
	if [ $A1 -eq 0 ]
	then
		A1=2
	elif [ $A2 -eq 0 ]
	then
		A2=2
	elif [ $A3 -eq 0 ]
	then
		A3=2
	elif [ $B1 -eq 0 ]
	then
		B1=2
	elif [ $B2 -eq 0 ]
	then
		B2=2
	elif [ $B3 -eq 0 ]
	then
		B3=2
	elif [ $C1 -eq 0 ]
	then
		C1=2
	elif [ $C2 -eq 0 ]
	then
		C2=2
	elif [ $C3 -eq 0 ]
	then
		C3=2
	fi
	
}
echo "--- Morbak ---"
read -p "Etes vous seul ? (y/n)" IA


if [ $IA == "n" ]
then
##Jeu multijoueur
	read -p "Joueur 1 : " player1
	read -p "Joueur 2 : " player2
	read -p "Quelle taille pour la grille ?" taille
	Afficher

	while [ $continu -eq 1 ];
	do
		if [ $player -eq 1 ]
		then
			read -p "$player1 ,Entrez les coordonnées : " Coordonnees
		else
			read -p "$player2 ,Entrez les coordonnées : " Coordonnees
		fi

		if [ $Coordonnees = A1 ] && [ $A1 -eq 0 ] 
		then
			if [ $player = 1 ]
			then
				A1=1
			else
				A1=2
			fi
		elif [ $Coordonnees = A2 ] && [ $A2 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				A2=1
			else
				A2=2
			fi
		elif [ $Coordonnees = A3 ] && [ $A3 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				A3=1
			else
				A3=2
			fi
		elif [ $Coordonnees = B1 ] && [ $B1 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				B1=1
			else
				B1=2
			fi
		elif [ $Coordonnees = B2 ] && [ $B2 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				B2=1
			else
				B2=2
			fi
		elif [ $Coordonnees = B3 ] && [ $B3 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				B3=1
			else
				B3=2
			fi
		elif [ $Coordonnees = C1 ] && [ $C1 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				C1=1
			else
				C1=2
			fi
		elif [ $Coordonnees = C2 ] && [ $C2 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				C2=1
			else
				C2=2
			fi
		elif [ $Coordonnees = C3 ] && [ $C3 -eq 0 ]
		then
			if [ $player = 1 ]
			then
				C3=1
			else
				C3=2
			fi
		fi

		if [ $A1 -eq $A2 ] && [ $A2 -eq $A3 ] && [ $A3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $B1 -eq $B2 ] && [ $B2 -eq $B3 ] && [ $B3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $C1 -eq $C2 ] && [ $C2 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A1 -eq $B1 ] && [ $B1 -eq $C1 ] && [ $C1 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A2 -eq $B2 ] && [ $B2 -eq $C2 ] && [ $C2 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A3 -eq $B3 ] && [ $B3 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A1 -eq $B2 ] && [ $B2 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $C1 -eq $B2 ] && [ $B2 -eq $A3 ] && [ $A3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		fi
	
		if [ $player -eq 1 ]
		then
			player=2
		
			echo "$player2, c'est à toi de jouer !"
		else
			player=1
			echo "$player1, c'est à toi de jouer !"
		fi
	
		Afficher
	done
else
##Jeu contre IA
	echo "Bonjour je suis Minmax et je vais te défoncer"
	read -p "Quel est ton nom ?" player1
	read -p "Quel est votre niveau ? (1,2,3)" level
	echo "Honneur au perdant, $player1 à toi de jouer !"
	if [ $level -eq 1 ]
	then
		echo "T'es si mauvais que ça ?"
		while [ $continu -eq 1 ];
		do
			Afficher
			read -p "Où veux tu jouer ? " Coordonnees
			if [ $Coordonnees = A1 ] && [ $A1 -eq 0 ] 
			then
				A1=1
			elif [ $Coordonnees = A2 ] && [ $A2 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					A2=1
				else
					A2=2
				fi
			elif [ $Coordonnees = A3 ] && [ $A3 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					A3=1
				else
					A3=2
				fi
			elif [ $Coordonnees = B1 ] && [ $B1 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					B1=1
				else
					B1=2
				fi
			elif [ $Coordonnees = B2 ] && [ $B2 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					B2=1
				else
					B2=2
				fi
			elif [ $Coordonnees = B3 ] && [ $B3 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					B3=1
				else
					B3=2
				fi
			elif [ $Coordonnees = C1 ] && [ $C1 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					C1=1
				else
					C1=2
				fi
			elif [ $Coordonnees = C2 ] && [ $C2 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					C2=1
				else
					C2=2
				fi
			elif [ $Coordonnees = C3 ] && [ $C3 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					C3=1
				else
					C3=2
				fi
			fi
			if [ $A1 -eq $A2 ] && [ $A2 -eq $A3 ] && [ $A3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $B1 -eq $B2 ] && [ $B2 -eq $B3 ] && [ $B3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $C1 -eq $C2 ] && [ $C2 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A1 -eq $B1 ] && [ $B1 -eq $C1 ] && [ $C1 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A2 -eq $B2 ] && [ $B2 -eq $C2 ] && [ $C2 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A3 -eq $B3 ] && [ $B3 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A1 -eq $B2 ] && [ $B2 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $C1 -eq $B2 ] && [ $B2 -eq $A3 ] && [ $A3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		fi
			badlevel
		done		
	elif [ $level -eq 2 ]
	then
		echo "Aller c'est parti"
		while [ $continu -eq 1 ];
		do
			Afficher
			read -p "Où veux tu jouer ? " Coordonnees
			if [ $Coordonnees = A1 ] && [ $A1 -eq 0 ] 
			then
				A1=1
			elif [ $Coordonnees = A2 ] && [ $A2 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					A2=1
				else
					A2=2
				fi
			elif [ $Coordonnees = A3 ] && [ $A3 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					A3=1
				else
					A3=2
				fi
			elif [ $Coordonnees = B1 ] && [ $B1 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					B1=1
				else
					B1=2
				fi
			elif [ $Coordonnees = B2 ] && [ $B2 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					B2=1
				else
					B2=2
				fi
			elif [ $Coordonnees = B3 ] && [ $B3 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					B3=1
				else
					B3=2
				fi
			elif [ $Coordonnees = C1 ] && [ $C1 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					C1=1
				else
					C1=2
				fi
			elif [ $Coordonnees = C2 ] && [ $C2 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					C2=1
				else
					C2=2
				fi
			elif [ $Coordonnees = C3 ] && [ $C3 -eq 0 ]
			then
				if [ $player = 1 ]
				then
					C3=1
				else
					C3=2
				fi
			fi
			if [ $A1 -eq $A2 ] && [ $A2 -eq $A3 ] && [ $A3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $B1 -eq $B2 ] && [ $B2 -eq $B3 ] && [ $B3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $C1 -eq $C2 ] && [ $C2 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A1 -eq $B1 ] && [ $B1 -eq $C1 ] && [ $C1 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A2 -eq $B2 ] && [ $B2 -eq $C2 ] && [ $C2 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A3 -eq $B3 ] && [ $B3 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $A1 -eq $B2 ] && [ $B2 -eq $C3 ] && [ $C3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		elif [ $C1 -eq $B2 ] && [ $B2 -eq $A3 ] && [ $A3 -gt 0 ]
		then
			continu=$(($continu-1))
			Afficher
			echo "Partie finie"
			break
		fi
			Random
		done
	else 
		echo "Attends je suis pas prêt"	
	fi
	
fi
