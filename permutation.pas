Vie_algopermutation_LV_v1_20/11/17

Algorithme:Permutation_3_entiers
//But:Permuter trois entiers saisie par l'utilisateur 
//Principe:On demande à l'utilisateur de saisir trois entiers et on va les permuters les uns avec les autres 
//Entrée:3 entiers saisie 
//Sortie:3 entiers dans un ordre inversé 

VAR
	Nb1,Nb2,Nb3,perm1,perm2:ENTIER


DEBUT
	ECRIRE "Saisissez trois entiers"
	LIRE Nb1,Nb2,Nb3
	Perm1<--Nb1
	Nb1<--Nb2
	Nb2<--Nb3
	Nb3<--Perm1
	ECRIRE "Le nombre 1 vaut maintenant: ",Nb1," le nombre 2 vaut: ",Nb2," et le nombre 3 vaut: ",Nb3
FIN