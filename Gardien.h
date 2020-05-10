#ifndef GARDIEN_H
#define GARDIEN_H

#include <iostream>
#include <chrono>
#include "Mover.h"
#include "Sound.h"
#include "Labyrinthe.h"
#include "Chasseur.h"

#define PI 3.14159265


class Labyrinthe;

class Gardien : public Mover {

//private :
	//bool move_au (double dx, double dy) ;//{return false;};
	// accepte ou non un deplacement.
	
public:
	Sound*	_hunter_fire;	// bruit de l'arme du chasseur.
	Sound*	_hunter_hit;	// cri du chasseur touch�.
	Sound*	_wall_hit;		// on a tap� un mur. 

	Gardien (Labyrinthe* l, const char* modele);
	
	//~Gardien();

	//bool move_au (double dx, double dy) ;
	// mon gardien pense tr�s mal!
	void update (void);// {}; 
	// et ne bouge pas!
	bool move (double dx, double dy); 
	// ne sait pas tirer sur un ennemi.
	void fire (int angle_vertical) ;//{}11
	// quand a faire bouger la boule de feu...
	bool process_fireball (float dx, float dy); //{ return false; }
	
	//void right_click (bool shift, bool control) { };
};

#endif
