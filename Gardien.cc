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
bool Gardien::move_patrouille (double dx, double dy)
{

int angle=_angle; 

/*rotatedX = ((x - x_origin)*cos(angle))-((y_origin - y)*sin(angle))+x_origin
  rotatedY = ((y_origin - y)*cos(angle))-((x - x_origin)*sin(angle))+y_origin
*/
bool condition=true;
float rotatedX,rotatedY;
    


float distX=dx/50; 
float distY=dy/50;

    rotatedX = _x + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY;
    rotatedY = _y + cos(angle* PI/180)*distX + sin(angle* PI/180)*distY;

    //message("angle = %d ; X = %f, rotatedX =%f  , rotatedY = %f",_angle ,_x ,rotatedX,rotatedY); 	
    int rotationX=(int)(rotatedX+dx )/ Environnement::scale;
    int rotationY=(int)(rotatedY+dy  )/ Environnement::scale;
     
    condition=EMPTY == _l -> data (rotationX,rotationY);
   
     
    //--------------------------------

/*      
int rotationX2=(int)(rotatedX+dx/10)/ Environnement::scale;
int rotationY2=(int)(rotatedY+dy/10)/ Environnement::scale;
bool condition2=EMPTY == _l -> data (rotationX2,rotationY2);
*/
    float ValueX,ValueY;
    
    ValueX=(rotatedX-_x);
    if (ValueX==0)
    ValueX+=distX;



    ValueY=(rotatedY-_y);
    if (ValueY==0)
    ValueY+=distY; 




     
    if ( Rotate(dx,dy,rotatedX,rotatedY) )
							 
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


        message("Inside Rotate1");



		//_L->_data [(int)(_x / Environnement::scale)][(int)(_y / Environnement::scale)] = 1;
		return true;
    }
    else if (Rotate(dx/10,dy/10,rotatedX,rotatedY)   )
    {
 /*    _x = rotatedX; // Mise à jour de la valeur de x
    _y = rotatedY; */
    
    message("Inside Rotate2");

    return true;

    }
    
    else if (Rotate(distX,distY,rotatedX,rotatedY))
    {
    message("Inside Rotate3");

    return true;
    }

		else  /// Le gardien se trouve devant un Objet ou un Mur.. Il doit changer de direction !!
	{		
         
        _angle =rand()%360+1 ;//44 backward ! ; 
     
        
/*       dx*=20;
      dy*=20; */
   
/*  
    rotatedX = _x + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY;
    rotatedY = _y + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY;

    _x=rotatedX;
    _y=rotatedY;  
*/



      //  message("angle = %d,valueX = %f , valueY = %f , dx =%f , dy=%f ",_angle,ValueX,ValueY,dx,dy);

		return true;
    } 


	
	
}

bool Gardien::move_defence (double dx, double dy)
{}
bool Gardien::move (double dx, double dy)
{
	
	return move_patrouille(dx,dy);
	
	//return move_defence(dx,dy);
	//return true;
}



	/* Le gardien Pense */
void Gardien::update (void)
{
	double x=10, y=10; // x et y sont le pas de dépassement du gardien 
	//message ("Wall.. x= %d , y=%d",x,y);
	move(x,y); //Le gardien Marche
	//fire(1);

}


bool Gardien::	Rotate(double dx,double dy,double RX,double RY)
{

/*
int angle=_angle ; 

float rotatedX = _x + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY;
float rotatedY = _y + cos(angle* PI/180)*distX - sin(angle* PI/180)*distY; 
*/

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
    }


}
