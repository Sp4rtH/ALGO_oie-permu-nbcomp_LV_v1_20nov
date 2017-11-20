Vie_algoentre10et20_LV_v1_20/11/17

Algotrithme:Nombre_entre_10_et_20
//But:Demander à un utilisateur un nombre entre 10 et 20 et lui indiquer si jamais le nombre saisie est trop grand ou trop petit 
//Principe:On demande à l'utilisateur de saisir un nombre entre 10 et 20 , on test si le nombre est plus grand ou plus petit et on lui indique s'il n'est pas correct 
//Entrée:1 nombre entre 10 et 20 
//Sortie:L'information sur le nombre plus grand ou plus petit ou dans l'intervalle 

VAR
NbS:ENTIER


DEBUT
	Répeter
		ECRIRE"Saisissez votre nombre"
		LIRE NbS
		SI NbS < 10 ALORS
			ECRIRE "Votre nombre est pas compris entre 10 et 20 , il est trop petit "
		FINSI
		SI NbS > 20 ALORS 
			ECRIRE "Votre nombre est pas compris entre 10 et 20 , il est trop grand "
		FINSI
	Jusqu'à NbS<=20 et NbS >= 10
		ECRIRE "Votre nombre est compris entre 10 et 20"
FIN