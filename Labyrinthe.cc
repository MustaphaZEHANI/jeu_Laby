#include "Labyrinthe.h"
#include "Chasseur.h"
#include "Gardien.h"

Sound*	Chasseur::_hunter_fire;	// bruit de l'arme du chasseur.
Sound*	Chasseur::_hunter_hit;	// cri du chasseur touché.
Sound*	Chasseur::_wall_hit;	// on a tapé un mur.

Environnement* Environnement::init (char* filename)
{
	cout << "file name : "<<filename<<endl ;
	return new Labyrinthe (filename);
}//end Environnement init


Labyrinthe::Labyrinthe (char* filename)
{
	//on Labyrinthe.h we shall find them functions ! 	
	//char** createMatrix(char* M[],int length);
	cout <<"**********Game Log**********" <<endl ;
	

	srand (time(NULL));


	//int N=5;
	
	//I have defined a mapMatrix variable "M" , on Labyrinthe.h
	//"M" is defined as char **M;
	M=createMatrix(M,LAB_WIDTH,LAB_HEIGHT);
	//only works this way , so that : 
	//the matrix is dynamically created  & then saved this way 
    //it ain't work as a void function ! 
       
	
	


	/*  	
	string value=M[1][3];
	cout << "inside main M[1][3] = " << value <<endl;
	*/


	
	
    
	

	/*
	**labyrinthe before algorithm application** 
	+++++++++++++++
	**labyrinthe after application of the algorithm**
	+      +
	*/
	
	//Now , I'm gonna initialize the matrix ! 
	int X_Size=width();
	int Y_Size=height(); 	
 
	MatrixInitializer(M, X_Size, Y_Size); 
	

/* 
	cout << "M[1][1] ='"<<M[1][1]<<"' M[1][1]==' ' ? answer = ";
	cout << (M[1][1]==" ")<<endl;  
*/	

/*
<MAIN CHECKPOINT 1 : "reached">
*/
	 
	showMatrix(M);

	 
/*
 	cout << "M[1][1] ='"<<M[1][1]<<"' M[1][1]==' ' ? answer = ";
	cout << (M[1][1]==" ")<<endl;  
*/ 



/*
<MAIN CHECKPOINT 2 : "reached">
*/


 
/*
<MAIN CHECKPOINT 3 : "reached">
*/

	//char TstChar[6];
	//strcpy(TstChar,"abcde");
	//from here you can launch the function ! 
	//fromCharArrayToStringArray
	//int CharLength = strlen(TstChar); 
	//string* StringArray=fromCharArrayToStringArray(TstChar,Y_Size);

	//cout << "String Array : "<<StringArray<<endl; 



	//FillMatrixLine(M[1],StringArray,CharLength);
	
 
/*
	string value=M[1][6];
	cout <<"M[1] ["<<6 <<"] = '" << value<<"'" <<endl; 
	cout << "M[1][6] eqauls Space ? Response : "; 
	cout << (M[1][6]==" ")<<endl;
*/



/* 
	string value=M[1][1];//supposed to be "a" in here ! 
	cout << "inside function M[1][1] = " << value ; 
	cout << " ; String_M[1][y] = "<<StringArray<<endl;
*/

	string value=M[1][6]; 
	cout <<"M[1] ["<<6 <<"] = '" << value<<"'" <<endl;
	fromFileToMapMatrix(M,filename);
	
	//define that function & test it up ! 
	
	showMatrix(M);
	
	//if this is right ; define main checkpoint  6 ! 
/* 	
	<MAIN CHECKPOINT 6 : "reached">
*/
//turn map into 3D , if it works , make checkpoint 7 ! 

//	message("data[0][0] = %s",_Data[0][0]);
	
	from2D_MapMatrixto3D_Map(M);

	MapInitializer();

	Fill_Map_data();


	
	
	//let's block the summoned wall in here !  

	//in testing , via labyrinthe.cc version 0 
	/*

	Initialising 4 Walls

	struct* wall walls={insert 4 walls here }


	*/
//if the mapSize=100 ; 
	//max number of walls == 100² == 10000
/* 
static Wall walls [10000] = 
{
			
	{ 0, 0, LAB_WIDTH-1, 0, 0 },//wall horizentale el fou9
	{ LAB_WIDTH-1, 0, LAB_WIDTH-1, LAB_HEIGHT-1, 0 },//wall vertical 3al limin
	{ LAB_WIDTH-1, LAB_HEIGHT-1, 0, LAB_HEIGHT-1, 0 },//wall horizentale el louta
	{ 0, LAB_HEIGHT-1, 0, 0, 0 }//wall vertical 3al lisar  
	
			
};


//end of assignement 
//walls is an Array of Wall , 
//and Wall is a struct

//this type of wall : {6,20,4,10,0} 
//wouldn't be displayed ! 
_nwall=0 ; //reference to the 4 created walls 
//	(length-1) , is for the counter ! 

walls[_nwall]={3,20,3,10,0};

//until we auto generate walls 
//we can use _nwall through constant assignement 
++_nwall;
//for now we're using ++_nwall after each wall defintion ! 
walls[_nwall]={3,40,3,99,0};
++_nwall;

walls[_nwall]={5,20,5,60,0};
++_nwall;


walls[_nwall]={5,60,5,99,0};
++_nwall;




walls[_nwall]={7,99,7,18,0};
++_nwall;

walls[_nwall]={10,4,10,5,0};
++_nwall; 

_walls = walls; 
*/
//testing the code 
//if code works : then check this as a checkpoint 
//& move to the next milestone ! 
//added _nwall++ to make it work !  
//checking code validity ... 
/*
< checkpoint 1 : works fine ! >
*/



//_nwall s' assignement by constant value , got removed !  
//_nwall++; //so that _nwall matches the final length of the walls 
//it was replaced by _nwall ++ 





/*
insert wall Blocking function in here !
just below this
*/

WallBlocker();

/*
<MAIN CHECKPOINT 4 : "reached">
*/








// une affiche.
//  (attention: pour des raisons de rapport d'aspect,
// les affiches doivent faire 2 de long)
/* 
static Wall affiche [] = 
{
	{ 4, 0, 6, 0, 0 },		// premiére affiche.
	{ 6, 0, 8, 0, 0 },		// autre affiche.
};//end of assignement 
//affiche est de type Wall également
*/


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

// indiquer qu'on ne marche pas sur une caisse.

// _nboxes = nombre de caisses.
_nboxes = 3;
_boxes = caisses;	
	// le nombre des murs== _nwall.
	//remove _nwall = 5 ; 
/*
 	_nwall = 5;//now I'm a comment
*/	

BoxBlocker() ; 

/*
<MAIN CHECKPOINT 5 : "reached">
*/
	
/* DEB - NOUVEAU */
	// 2 marques au sol.
	static Box	marques [] = 
	{
		{ 50, 14, 0 },
		{ 20, 15, 0 },
	};//end of assignement 
	//marques est un tableau de Box ; 
	//une caisse bloque les déplacements ; 
	// par contre , une marque ne bloque pas les déplacements ; 
	//les marques disposent d'effets spéciaux 
/* FIN - NOUVEAU */



/* 
	// deux affiches.
	_npicts = 2;
	_picts = affiche;
	// la deuxiéme a une texture différente.
	char	tmp [128];
	sprintf (tmp, "%s/%s", texture_dir, "affiche 2_b.jpg");
	_picts [1]._ntex = wall_texture (tmp);
*/	

/* DEB - NOUVEAU */
	// mettre une autre texture à la deuxiéme caisse.
	char	tmp [128];
	
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
/* 
	_treasor._x = 10;
	_treasor._y = 10;
	_data [_treasor._x][_treasor._y] = 1;	
*/
	// indiquer qu'on ne marche pas sur le trésor.
	// le chasseur et les 7 gardiens.
	_nguards = 8;
	_guards = new Mover* [_nguards];
	_models=new string[_nguards] ;
	_guards [0] = new Chasseur (this);
	_models[0]="";
	//hunter got no model / Hunter.model = 0 ;
	//char tmpModel[9];
	_models[1]="Lezard";
	//strcpy(tmpModel,_models[1].c_str());
	_guards [1] = new Gardien (this, _models[1].c_str());
	_guards[1]->_x=100;
	_guards[1]->_y=140;

	//cout << "le modele du Gardien n(1) = " << _guards[1]->_model  <<endl;
	//that returns the value of the model on the memory example x0298bf
	cout << "le modele du Gardien n(1) = " << _models[1] <<endl;
	

	_models[2]="Blade";
	//strcpy(tmpModel,_models[2].c_str());
	cout<<"pour le 2eme modele blade , tmpModel devient :  "<<_models[2]<<endl;
	_guards [2] = new Gardien (this, _models[2].c_str());
	
	_guards [2] -> _x = 20.; 
	_guards [2] -> _y = 700.;
	
	_models[3]="Serpent";
	//strcpy(tmpModel,_models[3].c_str());

	_guards [3] = new Gardien (this, _models[3].c_str());
	_guards [3] -> _x = 80.; 
	_guards [3] -> _y = 460.;
	


	_models[4]="Samourai";
	//strcpy(tmpModel,_models[4].c_str());

	_guards [4] = new Gardien (this, _models[4].c_str()); 
	_guards [4] -> _x = 580.;
	_guards [4] -> _y = 850.;
	
	
	
	_models[5]="Marvin";
	//strcpy(tmpModel,_models[5].c_str());

	_guards [5] = new Gardien (this,_models[5].c_str() );
	_guards [5] -> _x = 470.;
	_guards [5] -> _y = 900.;
	





	_models[6]="Potator";
	//strcpy(tmpModel,_models[6].c_str());

	_guards [6] = new Gardien (this,_models[6].c_str() ); 
	_guards [6] -> _x = 340.; 
	_guards [6] -> _y = 800.;
	
	_models[7]="garde";
	//strcpy(tmpModel,_models[7].c_str());

	_guards [7] = new Gardien (this, _models[7].c_str());
	_guards [7] -> _x = 170.;
	_guards [7] -> _y = 910.;
	// indiquer qu'on ne marche pas sur les gardiens.
	_data [(int)(_guards [1] -> _x / scale)][(int)(_guards [1] -> _y / scale)] = 1;
	_data [(int)(_guards [2] -> _x / scale)][(int)(_guards [2] -> _y / scale)] = 1;
	_data [(int)(_guards [3] -> _x / scale)][(int)(_guards [3] -> _y / scale)] = 1;
	_data [(int)(_guards [4] -> _x / scale)][(int)(_guards [4] -> _y / scale)] = 1;
	_data [(int)(_guards [5] -> _x / scale)][(int)(_guards [5] -> _y / scale)] = 1;
	_data [(int)(_guards [6] -> _x / scale)][(int)(_guards [6] -> _y / scale)] = 1;
	_data [(int)(_guards [7] -> _x / scale)][(int)(_guards [7] -> _y / scale)] = 1;


}//end of Labyrinthe !
