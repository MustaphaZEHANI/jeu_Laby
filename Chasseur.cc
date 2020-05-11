#include "Chasseur.h"


/*
 *	Constructeur.
 */

Chasseur::Chasseur (Labyrinthe* l) : Mover (100, 80, l, 0)
{

	// initialise les sons.
	_hunter_fire = new Sound ("sons/hunter_fire.wav");
	_hunter_hit = new Sound ("sons/hunter_hit.wav");
	if (_wall_hit == 0)
		_wall_hit = new Sound ("sons/hit_wall.wav");
	

}


/*
 *	Tente un deplacement.
 */

bool Chasseur::move_aux (double dx, double dy)
{
	if (EMPTY == _l -> data ((int)((_x + dx) / Environnement::scale),
							 (int)((_y + dy) / Environnement::scale)))
	{
		_x += dx;
		_y += dy;

		return true;
	}

	return false;
	
}


/*
 *	Fait bouger la boule de feu (ceci est une exemple, � vous de traiter les collisions sp�cifiques...)
 */

	bool Chasseur::process_fireball (float dx, float dy)
{
	// calculer la distance entre le chasseur et le lieu de l'explosion.
	float	x = (_x - _fb -> get_x ()) / Environnement::scale;
	float	y = (_y - _fb -> get_y ()) / Environnement::scale;
	float	dist2 = x*x + y*y;
	// on bouge que dans le vide!
	if (EMPTY == _l -> data ((int)((_fb -> get_x () + dx) / Environnement::scale),
							 (int)((_fb -> get_y () + dy) / Environnement::scale)))
	{
		//message ("Woooshh ..... %d", (int) dist2);
		
		//La balle se déplasse et ne touche personne 
		message ( "  Position Gardien = %d,  Position Fireball = %d, dx =%d  ",(int)(_l -> _guards [2] ->_x )/ Environnement::scale ,(int)(_fb -> get_x () +dx) / Environnement::scale/*,_fb -> get_x ()+dx*/, dx/ Environnement::scale);
		// il y a la place.
		return true;
	}
		
		
		/// Guardien Touché par ball ...c'est à dire il y'a  croissement des coordonnées(x,y) du Fireball & coordonnées du gardien (x,y) 
	//_l->data() = 1 cad  on vient de pércuter un obstacle
	for (int i = 1; i <_l->_nguards; i++)
	{
		if ( (  ( (int)(_l -> _guards [i] -> _x / Environnement::scale) == (int)(_fb -> get_x () + dx)/ Environnement::scale ) ) && ( ((int)(_l -> _guards [i] -> _y/ Environnement::scale )) == ( (int) ( (_fb -> get_y () + dy)/ Environnement::scale ) ) ) )
		{
			message ( "    Gardien %d touché Position Gardien = %d,  Position Fireball = %d, dx =%d  ",i,(int)(_l -> _guards [2] ->_x )/ Environnement::scale ,(int)(_fb -> get_x () +dx) / Environnement::scale);
			//int G_HP -= 30;
			//-HP for gards
		}
	}
	// calculer la distance maximum en ligne droite.
	float	dmax2 = (_l -> width ())*(_l -> width ()) + (_l -> height ())*(_l -> height ());
	// faire exploser la boule de feu avec un bruit fonction de la distance.
	_wall_hit -> play (1. - dist2/dmax2);
	//message ("Blade  ...x =%f",_l -> _guards [2] -> _x);
	//message ("Booom...");
	return false;
}

/*
 *	Tire sur un ennemi.
 */

void Chasseur::fire (int angle_vertical)
{
	//message ("Fire...");
	_hunter_fire -> play ();
	_fb -> init (/* position initiale de la boule */ _x, _y, 10.,
				 /* angles de vis�e */ angle_vertical, _angle);
	
		//message ( "  angle_vertical =%d, _angle=%d", angle_vertical, _angle);

	//HP_Reg();
}


/*
 *	Clic droit: par d�faut fait tomber le premier gardien.
 *
 *	Inutile dans le vrai jeu, mais c'est juste pour montrer
 *	une utilisation des fonctions � tomber � et � rester_au_sol �
 */

void Chasseur::right_click (bool shift, bool control)
{
	if (shift)
		_l -> _guards [2] -> rester_au_sol ();
	else
		_l -> _guards [2] -> tomber ();

}



void Chasseur::HP_Reg ()
{

	message ("Live = %d",HP);
	int counter = Time_Reg;
		do {/*TIMER pour regener le Capital de Vie*/ } while(counter < Time_Reg );
		HP+=10;
	message ("HP +20  , HP = %d",HP);
}
	
/*void Chasseur::update(void)
{
	if ( ( (int)(_x / Environnement::scale) ) == ( (int)(_l->_treasor->_x/ Environnement::scale) ) ) 
	{

	}

}*/
	
