#include "Labyrinthe.h"
#include "Chasseur.h"
#include "Gardien.h"

Sound*	Chasseur::_hunter_fire;	// bruit de l'arme du chasseur.
Sound*	Chasseur::_hunter_hit;	// cri du chasseur touché.
Sound*	Chasseur::_wall_hit;	// on a tapé un mur.

Environnement* Environnement::init (char* filename)
{
	return new Labyrinthe (filename);
}//end Environnement init


Labyrinthe::Labyrinthe (char* filename)
{
	// les 4 murs.
	static Wall walls [] = {
		{ 0, 0, LAB_WIDTH-1, 0, 0 },//wall horizentale el fou9
		{ LAB_WIDTH-1, 0, LAB_WIDTH-1, LAB_HEIGHT-1, 0 },//wall vertical 3al limin
		{ LAB_WIDTH-1, LAB_HEIGHT-1, 0, LAB_HEIGHT-1, 0 },//wall horizentale el louta
		{ 0, LAB_HEIGHT-1, 0, 0, 0 },//wall vertical 3al lisar 
	};//end of assignement 
	//walls is an Array of Wall , 
	//and Wall is a struct

	// une affiche.
	//  (attention: pour des raisons de rapport d'aspect,
	// les affiches doivent faire 2 de long)
	static Wall affiche [] = {
		{ 4, 0, 6, 0, 0 },		// premiére affiche.
		{ 8, 0, 10, 0, 0 },		// autre affiche.
	};//end of assignement 
	//affiche est de type Wall également

	// 3 caisses.
	static Box	caisses [] = {
		{ 70, 12, 0 },
		{ 10, 5, 0 },
		{ 65, 22, 0 },
	};
	//end of assignement 
	//caisses est un tableau de Box 
	//Box est un struct  
	//Box est seulement composé de cordonnées x & y et de _ntex ! 
	//_ntex est à ignorer ! 
/* DEB - NOUVEAU */
	// 2 marques au sol.
	static Box	marques [] = {
		{ 50, 14, 0 },
		{ 20, 15, 0 },
	};//end of assignement 
	//marques est un tableau de Box ; 
	//une caisse bloque les déplacements ; 
	// par contre , une marque ne bloque pas les déplacements ; 
	//les marques disposent d'effets spéciaux 
/* FIN - NOUVEAU */

	// juste un mur autour et les 3 caisses et le trésor dedans.
	for (int i = 0; i < LAB_WIDTH; ++i)
		for (int j = 0; j < LAB_HEIGHT; ++j) {
			if (i == 0 || i == LAB_WIDTH-1 || j == 0 || j == LAB_HEIGHT-1)
				_data [i][j] = 1;
			else
				_data [i][j] = EMPTY;
		}
	// indiquer qu'on ne marche pas sur une caisse.
	_data [caisses [0]._x][caisses [0]._y] = 1;
	_data [caisses [1]._x][caisses [1]._y] = 1;
	_data [caisses [2]._x][caisses [2]._y] = 1;
	// les 4 murs.
	_nwall = 4;
	_walls = walls;
	// deux affiches.
	_npicts = 2;
	_picts = affiche;
	// la deuxiéme a une texture différente.
	char	tmp [128];
	sprintf (tmp, "%s/%s", texture_dir, "affiche 2_b.jpg");
	_picts [1]._ntex = wall_texture (tmp);
	// 3 caisses.
	_nboxes = 3;
	_boxes = caisses;

/* DEB - NOUVEAU */
	// mettre une autre texture à la deuxiéme caisse.
	sprintf (tmp, "%s/%s", texture_dir, "boite.jpg");
	caisses [1]._ntex = wall_texture (tmp);

	// mettre les marques au sol.
	sprintf (tmp, "%s/%s", texture_dir, "p1.gif");
	marques [0]._ntex = wall_texture (tmp);
	sprintf (tmp, "%s/%s", texture_dir, "p3.gif");
	marques [1]._ntex = wall_texture (tmp);
	_nmarks = 2;
	_marks = marques;
/* FIN - NOUVEAU */

	// le trésor.
	_treasor._x = 10;
	_treasor._y = 10;
	_data [_treasor._x][_treasor._y] = 1;	
	// indiquer qu'on ne marche pas sur le trésor.
	// le chasseur et les 7 gardiens.
	_nguards = 8;
	_guards = new Mover* [_nguards];
	_guards [0] = new Chasseur (this);
	_guards [1] = new Gardien (this, "Lezard");
	_guards [2] = new Gardien (this, "Blade"); _guards [2] -> _x = 90.; _guards [2] -> _y = 70.;
	_guards [3] = new Gardien (this, "Serpent"); _guards [3] -> _x = 60.; _guards [3] -> _y = 10.;
	_guards [4] = new Gardien (this, "Samourai"); _guards [4] -> _x = 130.; _guards [4] -> _y = 100.;
	_guards [5] = new Gardien (this, "Marvin"); _guards [5] -> _x = 170.; _guards [5] -> _y = 140.;
	_guards [6] = new Gardien (this, "Potator"); _guards [6] -> _x = 190.; _guards [6] -> _y = 160.;
	_guards [7] = new Gardien (this, "garde"); _guards [7] -> _x = 210.; _guards [7] -> _y = 180.;
	// indiquer qu'on ne marche pas sur les gardiens.
	_data [(int)(_guards [1] -> _x / scale)][(int)(_guards [1] -> _y / scale)] = 1;
	_data [(int)(_guards [2] -> _x / scale)][(int)(_guards [2] -> _y / scale)] = 1;
	_data [(int)(_guards [3] -> _x / scale)][(int)(_guards [3] -> _y / scale)] = 1;
	_data [(int)(_guards [4] -> _x / scale)][(int)(_guards [4] -> _y / scale)] = 1;
	_data [(int)(_guards [5] -> _x / scale)][(int)(_guards [5] -> _y / scale)] = 1;
	_data [(int)(_guards [6] -> _x / scale)][(int)(_guards [6] -> _y / scale)] = 1;
	_data [(int)(_guards [7] -> _x / scale)][(int)(_guards [7] -> _y / scale)] = 1;
}//end of Labyrinthe !
