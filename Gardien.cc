#include "Gardien.h"



/*
 *	Constructeur.
 */

using namespace std;

Gardien::Gardien (Labyrinthe* l, const char* modele) : Mover (120, 80, l, modele)
{

	// initialise les sons.
	_hunter_fire = new Sound ("sons/hunter_fire.wav");
	_hunter_hit = new Sound ("sons/hunter_hit.wav");
	if (_wall_hit == 0)
		_wall_hit = new Sound ("sons/hit_wall.wav");

	//this->update();
	

}

/*
 *	Fait bouger la boule de feu (ceci est une exemple, � vous de traiter les collisions sp�cifiques...)
 */

bool Gardien::process_fireball (float dx, float dy)
{
	// calculer la distance entre le Gardien et le lieu de l'explosion.
	float	x = (_x - _fb -> get_x ()) / Environnement::scale;
	float	y = (_y - _fb -> get_y ()) / Environnement::scale;
	float	dist2 = x*x + y*y;
	// on bouge que dans le vide!
	if (EMPTY == _l -> data ((int)((_fb -> get_x () + dx) / Environnement::scale),
							 (int)((_fb -> get_y () + dy) / Environnement::scale)))
	{
		//message ("Woooshh ..... %d", (int) dist2);
		
		message ( "  Position Guardien = %d,  Position Fireball = %d, dx =%d  ",(int)(_l -> _guards [2] ->_x )/ Environnement::scale ,(int)(_fb -> get_x () +dx) / Environnement::scale/*,_fb -> get_x ()+dx*/, dx/ Environnement::scale);
		//message ("Blade_y  ...x =%d  Fireball_y = %d",(int)_l -> _guards [2] -> _y,(int)_fb -> get_x () + dx ) ;
		// il y a la place.
		return true;
	}
		/// collision...
	//_l->data() = 1 cad  on vient de pércuter un obstacle

	if ( (  ( (int)(_l -> _guards [0] -> _x / Environnement::scale) == (int)(_fb -> get_x () + dx)/ Environnement::scale ) ) && ( ((int)(_l -> _guards [1] -> _y/ Environnement::scale )) == ( (int) ( (_fb -> get_y () + dy)/ Environnement::scale ) ) ) )
	{
		message ( "  Chasseur touché Position Guardien = %d,  Position Fireball = %d, dx =%d  ",(int)(_l -> _guards [2] ->_x )/ Environnement::scale ,(int)(_fb -> get_x () +dx) / Environnement::scale);
			//--HP for Hunter
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

void Gardien::fire (int angle_vertical)
{
	//message ("Fire...");
	_hunter_fire -> play ();
	_fb -> init (/* position initiale de la boule */ _x, _y, 10.,
				 /* angles de vis�e */ angle_vertical, _angle);
	
		//message ( "  angle_vertical =%d, _angle=%d", angle_vertical, _angle);	
}


/*
 *	Clic droit: par d�faut fait tomber le premier gardien.
 *
 *	Inutile dans le vrai jeu, mais c'est juste pour montrer
 *	une utilisation des fonctions � tomber � et � rester_au_sol �
 */

/*oid Gardien::right_click (bool shift, bool control)
{
	if (shift)
		_l -> _guards [0] -> rester_au_sol ();
	else
		_l -> _guards [0] -> tomber ();

}*/
//int i = 1;
bool Gardien::move (double dx, double dy)
{

int angle=this->_angle; 

	//cout<<"misec.count () ="<< misec.count ()<<endl;
	//cout <<"_x ="<<_x<<"_y ="<<_y<<"   _y  /  scale ="<<(int)((_y + dy ) / Environnement::scale) <<endl;
	if (EMPTY == _l -> data ((int)((_x + dx) / Environnement::scale),
							 (int)((_y + dy ) / Environnement::scale)))
	{
		//angle = (angle ) * (PI/180); // Convert to radians
		//float centerX= (LAB_WIDTH-1)*10/2;  
		//float centerY=(LAB_HEIGHT-1)*10/2;
		//float rotatedX = cos(angle) * (_x - centerX) - sin(angle) * (_y-centerY) + centerX;
		//float rotatedY = sin(angle) * (_x - centerX) + cos(angle) * (_y-centerY) + centerY;

			_x += dx/100;  // Reglage de la vitesse dx par rapport à l'echelle
			_y += dy/100;  // Reglage de la vitesse dy par rapport à l'echelle
		//message ("Move OK ....._x= %d _y=%d  , _x + dx = %d", (int)_x, (int)_y,(int)(_y + dy));
		return true;
	}
		else
	{		// Le gardien se trouve devant un Objet ou un Mur.. Il doit changer de direction !!

		float value= (dx+dy)/2;
		
		angle+=value;
		if(angle>360)
		angle=0; 

		message("angle = %d",angle);
		this->_angle =angle; 
		//this->_angle +=  value;
		return false;
	}

	return false;
	
}


/*
 *	Tente un deplacement.
 */

/*bool Gardien::move_aux (double dx, double dy)
{
	if (EMPTY == _l -> data ((int)((_x + dx) / Environnement::scale),
							 (int)((_y + dy) / Environnement::scale)))
	{
		return true;
	}

	return false;
	
}*/

	/* Le gardien Pense */
void Gardien::update (void)
{
	double x=10, y=10; // Constante  réglage vitesse 
	//message ("Wall.. x= %d , y=%d",x,y);

	move(x,y); //Le gardien Marche

}
	
