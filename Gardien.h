#ifndef GARDIEN_H
#define GARDIEN_H

#include <iostream>
#include "math.h"
#include "Mover.h"
#include "Sound.h"
#include "Labyrinthe.h"
#include "Chasseur.h"
//if needed add stdio.h 
#define PI 3.14159265

#define HP_Init 100 // Capital vie par défaut  
#define Time_Reg_Init 110000000 // Temps qu'il faut pour augmenter le capital vie
#define FireBall_Damage_Init 25 //Damage effecuté par la fireball

class Labyrinthe;

class Gardien : public Mover {

private :
	bool move_patrouille (double dx, double dy) ;
	//{returns false if guard isn't Moving 
	//else
	//returns true (cause the guard is moving);};
	
public:
	Sound*	_hunter_fire;	// bruit de l'arme du chasseur.
	Sound*	_hunter_hit;	// cri du chasseur touch�.
	Sound*	_wall_hit;		// on a tap� un mur. 

	//Capital de survie
	int G_HP					= HP_Init;			 		
	//Initialiser le capitale de vie 
	
	int G_Time_Reg				= Time_Reg_Init; 	    	
	//Initialiser le temps de regéneration du capitale de vie 
	
	int G_HP_FireBall_Damage	= FireBall_Damage_Init ;    
	//Initialiser le dégat causé par le Fire Ball

	bool CanFireBall;	//the ability to fire a bullet
	
	int HP_Diminue 				= 0;


	bool attaque (); //attaque le chasseur 

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
	
	bool Rotate(double dx,double dy);


	//void right_click (bool shift, bool control) { };
};

#endif

//Normally verified file ! 