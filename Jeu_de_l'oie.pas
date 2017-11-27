{Le joueur est caractérisé par un nombre nommé "place" compris entre 0 et 66. Il situe sa position sur le Jeu de l'Oie, sachant qu'après jet des deux dés, on applique les règles suivantes : On avance du nombre de cases indiqués par la somme des dés. Si on arrive juste sur la case 66, le jeu est terminé. Sinon on recule du nombre de points en trop. Une Oie toutes les neufs cases sauf en 63 double le déplacement. Une tête de mort case 58 renvoie en position de départ, case 0. On s'efforcera d'utiliser au maximum des CONSTANTES. Il faut produire un Algo, et un code lisible et clair. Il faut insérer des commentaires. Il faut vérifier si le jet est valide (valeurs entre 2 et 12). Il est conseillée d'utiliser l'opérateur MODULO pour vérifier si une case est un multiple de 9.
Algorithme Jeu_de_l'oie



Algorithme:Jeu-de-l'oie

//But:Simuler le jeu de l'oie pour 1 joueur 
//Principe:On lance le dé aléatoirement et déplace le joueur tout en respectant les règles écrites au dessus
//Entrée:Un joueur souhaitant jouer seul au jeu de l'oie 
//Sortie:Une partie joué/jouable par le joueur *
CONST
fin <--66;
min <--2;
pdbl <--63;
mort <--58;
alea <--13;

VAR:
jet,place:ENTIER


DEBUT
	ECRIRE "Appuyez sur entrer pour commencer la partie."
	LIRE()
	place <-- 0
	jet <-- 0
	TANTQUE (place <> 66) FAIRE //déroulemet de la partie
		ECRIRE ( "Pressez entrer pour lancer les dés.") // déclaration des phrases pour informer le joueur sur le déplacement de la partie
		LIRE()
		REPETER
			jet <-- RANDOM(12) //Jet du dé de manière aléatoire
		JUSQU'A jet >= 2
		ECRIRE ( "Votre jet de dés vaut: ",jet)
		place <-- place + jet 
		SI (place MOD 9 = 0) ET (place <> 63) ALORS //test pour doubler la valeur du jet si la case est un mutiple de 9 
			ECRIRE ("Vous êtes tombé sur une case qui est multiple de 9 votre jet de dés est doublé,votre jet de dés vaut:  ",jet*2)
			place<-- place + jet
		FINSI
		SI (place>66) ALORS// au cas ou le joueur dépasse la case 66 il recule de la différence entre sa position et la case 66 
			place <-- place-(place-66)
			ECRIRE ("Vous avez dépassé la case 66 vous reculez et vosu retrouvez à la case " , place)
		FINSI
		SI place= 58 ALORS
			ECRIRE ("Vous êtes tombé sur la case 58 , retournez à la case départ.")
			place=0
		FINSI
		ECRIRE ("Vous êtes sur la case: ",place)
	FINTANTQUE
	ECRIRE ("Vous avez gagné la partie vous avez atteint la case 66. ")

FIN }
USES crt;
CONST
fin =66;
min =2;
pdbl =63;
mort =58;
alea =13;


VAR
	jet,place:INTEGER;
BEGIN
	Randomize;// très utile car Randomize initialise le générateur de nombres aléatoires de Free Pascal,calculée avec l'horloge système.
	clrscr;
	Writeln('Appuyez sur entrer pour commencer la partie.');
	Readln();
	place := 0;
	jet:=0;
	While (place <> fin) do
		BEGIN
			Writeln('Pressez entrer pour lancer les des.');
			Readln();
			Repeat
			jet := random(alea);//13 car il simule un entier entre 0 et n-1
			UNTIL (jet >= min);
			Writeln('Votre jet de des vaut: ',jet);
			place := place+jet;
			IF(place MOD 9 = 0) AND (place <> pdbl) THEN 
				BEGIN 
					Writeln('Vous etes tombe sur une case qui est multiple de 9 votre jet de das est double,votre jet de des vaut:  ',jet*2);
					place:= place + jet ;
				END;
			if (place > fin) THEN// au cas ou le joueur dépasse la case 66 il recule de la différence entre sa position et la case 66 
				BEGIN
					place:=fin-(place-fin);
					Writeln('Vous avez depasse la case 66 vous reculez et vous retrouvez a la case ',place);
				END;
			if (place = mort ) THEN
				BEGIN
					Writeln('Vous etes tombe sur la case 58 , retournez a la case depart.');
					place:=0;

				END;
			Writeln('Vous etes sur la case: ',place);
		END;
	Writeln('Vous avez gagne la partie,vous avez atteint la case 66. ');
	Readln();
END.