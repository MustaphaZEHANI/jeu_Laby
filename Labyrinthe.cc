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
	//on Labyrinthe.h we shall find them functions ! 	
	//char** createMatrix(char* M[],int length);
	cout <<"**********Game Log**********" <<endl ;
	
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


	
	
    
	
	message("hello my friend , what's up with your head , foo !");
	char msg[9999]="**labyrinthe before algorithm application**\n";
	strcat(msg,"+++++++++++++++\n");
	strcat(msg,"**labyrinthe after application of the algorithm**\n");
	strcat(msg,"+      +\n"); 
	cout << msg << endl;
	/*
	**labyrinthe before algorithm application** 
	+++++++++++++++
	**labyrinthe after application of the algorithm**
	+      +
	*/
	
	//Now , I'm gonna initialize the matrix ! 
	int X_Size=width();
	int Y_Size=height(); 	
 
	M=MatrixInitializer(M, X_Size, Y_Size); 

/* 
	cout << "M[1][1] ='"<<M[1][1]<<"' M[1][1]==' ' ? answer = ";
	cout << (M[1][1]==" ")<<endl;  
*/	

/*
<MAIN CHECKPOINT 1 : "reached">
*/
	
	showMatrix(M);
/*
<MAIN CHECKPOINT 2 : "reached">
*/




	for (int i = 0; i <= LAB_WIDTH; ++i)
	for (int j = 0; j <= LAB_HEIGHT; ++j) {
		if (i == 0 || i == LAB_WIDTH || j == 0 || j == LAB_HEIGHT)
			_data [i][j] = 1; 
		else
			_data [i][j] = EMPTY;
	}

	// les 4 murs.

	//if the mapSize=100 ; 
	//max number of walls == 100² == 10000
	static Wall walls [10000] = {
/* 		
{ 0, 0, LAB_WIDTH-1, 0, 0 },//wall horizentale el fou9
{ LAB_WIDTH-1, 0, LAB_WIDTH-1, LAB_HEIGHT-1, 0 },//wall vertical 3al limin
{ LAB_WIDTH-1, LAB_HEIGHT-1, 0, LAB_HEIGHT-1, 0 },//wall horizentale el louta
{ 0, LAB_HEIGHT-1, 0, 0, 0 }//wall vertical 3al lisar  
*/
		
	};//end of assignement 
	//walls is an Array of Wall , 
	//and Wall is a struct

	//this type of wall : {6,20,4,10,0} 
	//wouldn't be displayed ! 
	
	//let's block the summoned wall in here !  

	//in testing , via labyrinthe.cc version 0 
	/*

	Initialising 4 Walls

	struct* wall walls={insert 4 walls here }


	*/

	_nwall=0 ; //reference to the 4 created walls 
	//	(length-1) , is for the counter ! 

	walls[_nwall]={3,20,3,10,0};
//testing the code 
//if code works : then check this as a checkpoint 
//& move to the next milestone ! 
//added _nwall++ to make it work !  
//checking code validity ... 
/*
< checkpoint 1 : works fine ! >
*/


//let's access the new wall  
//in order to do that , 
//we need to keep in mind that  , 
//the walll definition goes as : 
/* 
struct Wall 
{
  int	_x1, _y1;	// point de depart.
  int	_x2, _y2;	// point d'arrivée.
  int	_ntex;		// numéro de texture.
}; 
*/
int x1,y1,x2,y2; 
Wall CurrentWall=walls[_nwall];
x1=CurrentWall._x1; 
y1=CurrentWall._y1; 
x2=CurrentWall._x2; 
y2=CurrentWall._y2; 
//first test (x1,y1,x2,y2) ; 
cout <<"blocking walls s' First test :\n";
cout << "x1 = "<<x1;
cout << "; y1 = "<<y1;
cout << "; x2 = "<<x2;
cout << "; y2 = "<<y2<<endl;



//checking test 1 ...
//test 1 : "works"

int _ConstAxe; //ConstAxe is supposed to be the x or y that remains the same 
int startIndex,EndIndex ; 
bool condition=false; 
  if(x1==x2)
  {
  _ConstAxe=x1 ;// X is the constant Axe 
  startIndex=y1;
  EndIndex=y2;
  condition = true ; // move on Y 


  }
  else
  {
  //move on X 
  _ConstAxe=y1 ; //Y is the constant Axe ; 
  startIndex=x1;
  EndIndex=x2;
  }//end if 

//test 2(_ConstAxe,startIndex,EndIndex,condition) 
cout << "_ConstAxe = "<<_ConstAxe; 
cout << " ; startIndex = "<<startIndex; 
cout << " ; EndIndex = "<<EndIndex; 
cout << " ; Conditon = "<<condition<< "\n"; 


//checking test2 
//test 2 : "works fine !"  



  //if(x1==x2)
  //=>_ConstAxe=x1 ;// X is the constant Axe 
  //startIndex=y1;
  //EndIndex=y2;
  //condition = true ; // move on Y 
  //else 
  //move on X 
  //_ConstAxe=y1 ; //Y is the constant Axe ; 
  //startIndex=x1;
  //EndIndex=x2;
  //end if 

/*
if successful ; 
make checkpoint ; 
& move to next milestone ; 
*/

/*
< checkpoint 2 : "reached" > 
*/

  
if(startIndex>EndIndex)
{
 x1=startIndex ; //x1 is temp here ! 
 startIndex=EndIndex ; 
 EndIndex=x1;  
}//end if 

//test3(startIndex,EndIndex)

cout << "after Revision ^_^ \n";
cout << "startIndex = "<<startIndex; 
cout << " ; EndIndex = "<<EndIndex<<endl; 


//test3 : "works fine !"

/*
fix things  so that the loop would make sense ! 


//make it that it works that way 
*/
for(int VarIndex=startIndex;VarIndex<=EndIndex;VarIndex++) 
//for besh tmshi dima 3ala axe constant eli howa représenté par _ConstAxe ;
 
{

//test4 : testing the loop	

cout <<" VarIndex = " << VarIndex ; 

	if(condition)// move on Y 
	{  
	_data[_ConstAxe][VarIndex]=1 ; 
	
	cout <<" ; _data["<<_ConstAxe<<"]["<<VarIndex<<"] = ";
	cout << (_data[_ConstAxe][VarIndex]!=EMPTY)<<endl ; 
	
	}
	else //move on X 
	{  
	_data[VarIndex][_ConstAxe]=1 ; 

	cout <<" ; _data["<<VarIndex<<"]["<<_ConstAxe<<"] = ";
	cout << (_data[VarIndex][_ConstAxe]!=EMPTY)<<endl ;

	}//end if 
	

 

//test 4 : "reached"
}
//make it that it works that way 

/*

if successful 

make checkpoint ! 

checking current wall value ! 

*/


/*
<checkpoint 3 - "reached" >
*/






















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

	// indiquer qu'on ne marche pas sur une caisse.
	_data [caisses [0]._x][caisses [0]._y] = 1;
	_data [caisses [1]._x][caisses [1]._y] = 1;
	_data [caisses [2]._x][caisses [2]._y] = 1;
	// le nombre des murs.
	//remove _nwall = 5 ; 
/*
 	_nwall = 5;//now I'm a comment
*/	//_nwall s' assignement by constant value , got removed !  
	_nwall++; //so that _nwall matches the final length of the walls 
	//it was replaced by _nwall ++ 

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
	_models=new string[_nguards] ;
	_guards [0] = new Chasseur (this);
	_models[0]="";
	//hunter got no model / Hunter.model = 0 ;
	//char tmpModel[9];
	_models[1]="Lezard";
	//strcpy(tmpModel,_models[1].c_str());
	_guards [1] = new Gardien (this, _models[1].c_str());
	//cout << "le modele du Gardien n(1) = " << _guards[1]->_model  <<endl;
	//that returns the value of the model on the memory example x0298bf
	cout << "le modele du Gardien n(1) = " << _models[1] <<endl;
	

	_models[2]="Blade";
	//strcpy(tmpModel,_models[2].c_str());
	cout<<"pour le 2eme modele blade , tmpModel devient :  "<<_models[2]<<endl;
	_guards [2] = new Gardien (this, _models[2].c_str());
	
	_guards [2] -> _x = 90.; 
	_guards [2] -> _y = 70.;
	
	_models[3]="Serpent";
	//strcpy(tmpModel,_models[3].c_str());

	_guards [3] = new Gardien (this, _models[3].c_str());
	_guards [3] -> _x = 60.; 
	_guards [3] -> _y = 10.;
	


	_models[4]="Samourai";
	//strcpy(tmpModel,_models[4].c_str());

	_guards [4] = new Gardien (this, _models[4].c_str()); 
	_guards [4] -> _x = 130.;
	_guards [4] -> _y = 100.;
	
	
	
	_models[5]="Marvin";
	//strcpy(tmpModel,_models[5].c_str());

	_guards [5] = new Gardien (this,_models[5].c_str() );
	_guards [5] -> _x = 170.;
	_guards [5] -> _y = 140.;
	





	_models[6]="Potator";
	//strcpy(tmpModel,_models[6].c_str());

	_guards [6] = new Gardien (this,_models[6].c_str() ); 
	_guards [6] -> _x = 190.; 
	_guards [6] -> _y = 160.;
	
	_models[7]="garde";
	//strcpy(tmpModel,_models[7].c_str());

	_guards [7] = new Gardien (this, _models[7].c_str());
	_guards [7] -> _x = 210.;
	_guards [7] -> _y = 180.;
	// indiquer qu'on ne marche pas sur les gardiens.
	_data [(int)(_guards [1] -> _x / scale)][(int)(_guards [1] -> _y / scale)] = 1;
	_data [(int)(_guards [2] -> _x / scale)][(int)(_guards [2] -> _y / scale)] = 1;
	_data [(int)(_guards [3] -> _x / scale)][(int)(_guards [3] -> _y / scale)] = 1;
	_data [(int)(_guards [4] -> _x / scale)][(int)(_guards [4] -> _y / scale)] = 1;
	_data [(int)(_guards [5] -> _x / scale)][(int)(_guards [5] -> _y / scale)] = 1;
	_data [(int)(_guards [6] -> _x / scale)][(int)(_guards [6] -> _y / scale)] = 1;
	_data [(int)(_guards [7] -> _x / scale)][(int)(_guards [7] -> _y / scale)] = 1;


}//end of Labyrinthe !
