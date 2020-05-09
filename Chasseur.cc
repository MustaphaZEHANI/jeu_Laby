#include "Chasseur.h"
#include <string.h>
/*
 *	Tente un deplacement.
 */

bool Chasseur::move_aux (double dx, double dy)
{
dx=dx*4;
dy=dy*4;
	if (EMPTY == _l -> data ((int)((_x + dx) / Environnement::scale),
							 (int)((_y + dy) / Environnement::scale)))
	{
		_x += dx;
		_y += dy;
		int x=(int) _x / Environnement::scale ; 
		int y=(int) _y / Environnement::scale ; 
		/* 
		(X==Y&&X==0) ||
		*/
		if(  x!=X || y!=Y )
		{
		X=x;
		Y=y;
		condition=true;		
		
		
		}//end if 
	


		if(condition)
		{
		positionLog();
		condition=false;		

		//float XX=_l -> _guards[1] -> _x ; 
		//cout << "XX = "<<XX<<endl;
		Mover* guard=_l-> _guards[1]; 
		int guardX= (int) guard->_x /Environnement::scale; 
		int guardY=	(int)guard->_y  /Environnement::scale; 
		
		
		//we need to implement models as part of Environnement !
		//which I cannot do ! 

		
		string tmpModel = _l -> _models[1] ; 
		
		cout << "le gardien n(1)[" << tmpModel << "] ";
		
		//cout << "le gardien n(1)[insert model] ";
		cout << "se trouve a la position ("<<guardX<<" , ";
		cout << guardY<<" ) "<<endl;
		}//end if 
		return true;
	}
	return false;
}

/*
 *	Constructeur.
 */

Chasseur::Chasseur (Labyrinthe* l) : Mover (100, 80, l, 0)
{
	positionLog();
	
	cout << "X = "<<X<<" ; Y = "<<Y<<endl;
	
	//_x=1000;

	
	// initialise les sons.
	_hunter_fire = new Sound ("sons/hunter_fire.wav");
	_hunter_hit = new Sound ("sons/hunter_hit.wav");
	if (_wall_hit == 0)
		_wall_hit = new Sound ("sons/hit_wall.wav");
}

/*
 *	Fait bouger la boule de feu (ceci est une exemple, � vous de traiter les collisions sp�cifiques...)
 */

bool Chasseur::process_fireball (float dx, float dy)
{
	//Coordonnées de la balle 
	float fireBall_X = _fb-> get_x()  ;
	float fireBall_Y = _fb-> get_y()  ;

	// calculer la distance entre le chasseur et le lieu de l'explosion.
	float	x = (_x - fireBall_X) / Environnement::scale;
	float	y = (_y - fireBall_Y) / Environnement::scale;
	float	dist2 = x*x + y*y;
	// on bouge que dans le vide!
	if (EMPTY == _l -> data ((int)((_fb -> get_x () + dx) / Environnement::scale),
							 (int)((_fb -> get_y () + dy) / Environnement::scale)))
	{
		message ("Woooshh ..... %d", (int) dist2);
		// il y a la place.
		return true;
	}
	// collision...
	//we need to make the fireball coordinates realistic via the Scale
	//Environment::Scale 
		 
	/*
 	fireBall_X = fireBall_X / Environnement::scale ;
	fireBall_Y = fireBall_Y / Environnement::scale ; 
	*/

	int X=(int)_x/Environnement::scale;
	int Y=(int)_y/Environnement::scale;
	
	//Labyrinthe* L ; 
	/* 	
	char Coordinates=Labyrinthe:: data((int)(fireBall_X),(int)(fireBall_Y));
	*/	

	// calculer la distance maximum en ligne droite.
	float	dmax2 = (_l -> width ())*(_l -> width ()) + (_l -> height ())*(_l -> height ());
	// faire exploser la boule de feu avec un bruit fonction de la distance.
	_wall_hit -> play (1. - dist2/dmax2);
	message ("Booom...The hunter is at : ( %d , %d )",X,Y);
	return false;
}

/*
 *	Tire sur un ennemi.
 */

void Chasseur::fire (int angle_vertical)
{
	message ("Woooshh...");
	_hunter_fire -> play ();
	_fb -> init (/* position initiale de la boule */ _x, _y, 10.,
				 /* angles de vis�e */ angle_vertical, _angle);
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
		_l -> _guards [1] -> rester_au_sol ();
	else
		_l -> _guards [1] -> tomber ();
}
