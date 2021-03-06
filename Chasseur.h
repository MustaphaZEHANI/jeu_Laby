#ifndef CHASSEUR_H
#define CHASSEUR_H

#include <stdio.h>
#include "Mover.h"
#include "Sound.h"

#define HP_Init 100 // Capital vie par défaut  
#define Time_Reg_Init 110000000 // Temps qu'il faut pour augmenter le capital vie
#define FireBall_Damage_Init 25 //Damage effecuté par la fireball

class Labyrinthe;

class Chasseur : public Mover {
private:
	// accepte ou non un deplacement.
	bool move_aux (double dx, double dy);
public:
	// les sons.
	static Sound*	_hunter_fire;	// bruit de l'arme du chasseur.
	static Sound*	_hunter_hit;	// cri du chasseur touch�.
	static Sound*	_wall_hit;		// on a tap� un mur.


	//Capital de survie
	int HP 					= HP_Init;			 		//Initialiser le capitale de vie 
	int Time_Reg			= Time_Reg_Init; 	    	//Initialiser le temps de regéneration du capitale de vie 
	int HP_FireBall_Damage	= FireBall_Damage_Init ;    //Initialiser le dégat causé par le Fire Ball

	// constructeur.
	Chasseur (Labyrinthe* l);
	// ne bouger que dans une case vide (on 'glisse' le long des obstacles)
	bool move (double dx, double dy) 
	{
	return move_aux (dx, dy) || move_aux (dx, 0.0) || move_aux (0.0, dy);
	}//end of move
	// le chasseur ne pense pas!
	void update (void) {};
	// fait bouger la boule de feu (ceci est une exemple, � vous de traiter les collisions sp�cifiques...)
	bool process_fireball (float dx, float dy);
	// tire sur un ennemi.
	void fire (int angle_vertical);
	// clic droit.
	void right_click (bool shift, bool control);
	

	void HP_Reg  ();

	//initiating my defined functions in here : 
	
	void positionLog()
	{
	int x=(int)_x/Environnement::scale;
	int y=(int)_y/Environnement::scale;
	X=x;
	Y=y;
	cout <<"le chasseur se trouve a la position : ";
	cout <<"( "<<x<<" , "<<y<<" ) ; reellement : ";	
	cout <<"( "<<_x<<" , "<<_y<<" )"<<endl;	
	}//end of function

	//initiating my defined variables in here : 
	bool condition=true;	

	int X,Y=0;	//X&Y are for testing ! 
	//Now it should work out fine ! 
};//end of class

#endif
