#include "Gardien.h"
using namespace std;



/*
 *	Constructeur.
 */


Gardien::Gardien (Labyrinthe* l, const char* modele) : Mover (120, 80, l, modele)
{
	// initialise les sons.
	CanFireBall=true;
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
		
		//message ( "  Position Guardien = %d,  Position Fireball = %d, dx =%d  ",(int)(_l -> _guards [2] ->_x )/ Environnement::scale ,(int)(_fb -> get_x () +dx) / Environnement::scale/*,_fb -> get_x ()+dx*/, dx/ Environnement::scale);
		CanFireBall=false;
		//message ("Blade_y  ...x =%d  Fireball_y = %d",(int)_l -> _guards [2] -> _y,(int)_fb -> get_x () + dx ) ;
		// il y a la place.
		return true;
	}
		/// collision...
	//_l->data() = 1 cad  on vient de pércuter un obstacle

	if ( (  ( (int)(_l -> _guards [0] -> _x / Environnement::scale) == (int)(_fb -> get_x () )/ Environnement::scale ) ) 
	&& ( ((int)(_l -> _guards [0] -> _y/ Environnement::scale )) == ( (int) ( (_fb -> get_y () )/ Environnement::scale ) ) ) )
	{
		message ( "  Je suis touché Position Guardien = %d,  Position Fireball = %d, dx =%d  "
		,(int)(_l -> _guards [0] ->_x )/ Environnement::scale ,(int)(_fb -> get_x () +dx) / Environnement::scale);
		HP_Diminue = 30;
	}//end if 

	// calculer la distance maximum en ligne droite.
	float	dmax2 = (_l -> width ())*(_l -> width ()) + (_l -> height ())*(_l -> height ());
	// faire exploser la boule de feu avec un bruit fonction de la distance.
	_wall_hit -> play (1. - dist2/dmax2);
	//message ("Blade  ...x =%f",_l -> _guards [2] -> _x);
	//message ("Booom...");

	CanFireBall=true;

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
bool Gardien::move_patrouille (double dx, double dy)
{

//int angle=_angle; 

/*rotatedX = ((x - x_origin)*cos(angle))-((y_origin - y)*sin(angle))+x_origin
  rotatedY = ((y_origin - y)*cos(angle))-((x - x_origin)*sin(angle))+y_origin
*/
//bool condition=true;
//float rotatedX,rotatedY;
    


/* float distX=dx/50; 
float distY=dy/50;

    rotatedX = _x + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY;
    rotatedY = _y + cos(angle* PI/180)*distX + sin(angle* PI/180)*distY;

    int MovementX=(int)(rotatedX+dx )/ Environnement::scale;
    int MovementY=(int)(rotatedY+dy  )/ Environnement::scale; */
     
    //condition=EMPTY == _l -> data (MovementX,MovementY);
   
     
    //--------------------------------

/*      
int rotationX2=(int)(rotatedX+dx/10)/ Environnement::scale;
int rotationY2=(int)(rotatedY+dy/10)/ Environnement::scale;
bool condition2=EMPTY == _l -> data (rotationX2,rotationY2);
*/





     
    if ( Rotate(dx,dy) )
							 
	{
		
		
		//message("Guards walk... withou blocking.. no WALL .......");
		//if ()

        //if empty==data(Rotation[d(x,y)/100])
        /*
        -- x -
        | oio|1
        f  o  2
        find the common axe !
        move on variable axe !
        */
        
/*         _x = rotatedX; // Mise à jour de la valeur de x
        _y = rotatedY;// Mise à jour de la valeur de y */


        //-----------------
        /* dx/=2;
        dy/=2; */

    //-------------------


      //  message("Moving");



		//_L->_data [(int)(_x / Environnement::scale)][(int)(_y / Environnement::scale)] = 1;
		return true;
    }
    /* else if (Rotate(distX,distY,rotatedX,rotatedY)  )
    {

    

    return true;

    } 
     */
   /*  else if (Rotate(distX,distY,rotatedX,rotatedY))
    {
    message("Inside Rotate3");

    return true;
    }  */

		else  /// Le gardien se trouve devant un Objet ou un Mur.. Il doit changer de direction !!
	{		
		 

	_angle +=rand()%360+1 ;//44 backward ! ; 
	
		if (_angle>360)
			_angle=rand()%360+1;
	//   message("Rotating !");




      //  message("angle = %d,valueX = %f , valueY = %f , dx =%f , dy=%f ",_angle,ValueX,ValueY,dx,dy);

//	condition= move_patrouille(dx,0)||move_patrouille(0,dy);	
		
		return 	false;

    } //end if condition 


	
	
}//end of function move_patrouille ! 

 bool Gardien::attaque ()
{
	fire(_angle);
	return true;
	//message
} 
bool Gardien::move (double dx, double dy)
{
	//return move_aux (dx, dy) || move_aux (dx, 0.0) || move_aux (0.0, dy);
return move_patrouille(dx,dy);
	
	//return move_defence(dx,dy);
	//return true;
}



	/* Le gardien Pense */
void Gardien::update (void)
{
	//message ("Wall.. x= %d , y=%d",x,y);
	//move(x,y); //Le gardien Marche
	//fire(1);
/*	
	float	x = (_x - _l->_guards[0] ->_x) /Environnement::scale ;
	float	y = (_y - _l->_guards[0] ->_y) /Environnement::scale ;
	float	dist = sqrt(x*x + y*y);



 	if (( dist < 3) && (CanFireBall))
	{
		CanFireBall=false;
		attaque();
	}; 
	
	fireball works but can crash the game 
	cause the bots launch infinite fireballs 
*/
	
	
	
	double PasX=10, PasY=10; // x et y sont le pas de dépassement du gardien 
	
	/*Le gardien ne tire que s'il trouve quelqu'un devant lui : 
	cad il faut faire le calcule de la distance entre le gardien et le chasseur*/ 


	move(PasX,PasY); 	

	//for debug only : 
	//bool condition=move(x,y); 

/* 	if (!condition)
	cout << "Not moving\n"; 
	else 
	cout <<"Moving\n";  */
	//end if 




//	condition= move_patrouille(dx,0)||move_patrouille(0,dy);	

;}//end of update ! 

bool Gardien::	Rotate(double dx,double dy)
{

/*
int angle=_angle ; 

float rotatedX = _x + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY;
float rotatedY = _y + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY; 
*/

int angle=_angle; 
float RX,RY;//rotatedXY
float distX=dx/50; 
float distY=dy/50;

RX = _x + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY;
RY = _y + cos(angle* PI/180)*distX + sin(angle* PI/180)*distY;

int rotationX=(int)(RX+dx )/ Environnement::scale;
int rotationY=(int)(RY+dy  )/ Environnement::scale;
    

bool condition=EMPTY == _l -> data (rotationX,rotationY);

    if(condition)
    {
    
    _x=RX;
    _y=RY;

    return true;    
    }
    else
    {

    return false;
    }//end of condition 


}//end of Rotate ! 


//file Normally verified ! 
