#ifndef LABYRINTHE_H
#define LABYRINTHE_H

#include "Environnement.h"
#include <iostream>
#include <fstream>
#include <stdlib.h>  
#include <time.h>  
using namespace std;
#define	LAB_WIDTH	100 //80
#define	LAB_HEIGHT	100//25

class Labyrinthe : public Environnement {
private:
	char	_data [LAB_WIDTH][LAB_HEIGHT];

public:
	char _Data[LAB_WIDTH][LAB_HEIGHT]={};
	Labyrinthe (char*);
	int width () { return LAB_WIDTH;}	// retourne la largeur du labyrinthe.
	int height () { return LAB_HEIGHT;}	// retourne la longueur du labyrinthe.
	char data (int i, int j)
	{
		return _data [i][j];
	}	// retourne la case (i, j).
	//-----------------------------
	
	//**defining New Variables**
	//my own variables : 
	string **M;
	
	//**defining New Functions**

	string** createMatrix(string* M[],int X_Size,int Y_Size)
	{
	//create dynamically 
	int x=X_Size;
	int y=Y_Size; 
	M = new string*[x];
		for (int i = 0; i < x; i++)
		M[i] = new string[y];
	

	


	
	
	
	/* 
	char TstChar[6];
	strcpy(TstChar,"abcde");
	//from here you can launch the function ! 
	//fromCharArrayToStringArray
	M[1]=fromCharArrayToStringArray(TstChar,y);
	//M[1]=[Function returns]-> (string*) TstChar ; <- incorrect expression 
	//TstChar has the file value from[1,Y_Size];
	//so that TstChar matches the mapMatrix ! 
	//the expression above can only rendered
	//via the above function
	//the whole string*


	string value=M[1][1];//supposed to be "a" in here ! 
	cout << "inside function M[1][1] = " << value <<endl; 
	
	
	value=M[1][3];//c
	cout << "inside function M[1][3] = " << value <<endl; 
	*/
	 

	return M    ; 
	}//end of function

	string* fromCharArrayToStringArray(char* CharArray,int Y_Size)
	{
	
	
	int y=Y_Size;
	string* _StringArray=new string[y];  
	int n=strlen(CharArray); 
		for(int i=0;i<n;i++)
		{
		_StringArray[i+1]=CharArray[i];	
		}
	//matrix starts from 1 to MapSize-1 ! 
	//the file musn't over-write the [0] Column/Row
	//so the file content goes in Map[1..Map_size] 
	return _StringArray;
	}//end of function ! 

	void MatrixInitializer(string* M[],int X_Size,int Y_Size)
	{
	//gonna fill 'them matrix with "a"
	int x=X_Size; 
	int y=Y_Size; 
	
		for(int i=1;i<x;i++)
		{
			for(int j=1;j<y;j++)
			{
			M[i][j]=" ";//space !
			//the correct thing is : M[i][j]=" ";
			}//end for j
		}//end for i
/* 	
	string value=M[1][6];
	cout <<"M[1] ["<<6 <<"] = '" << value<<"'" <<endl; 
*/
	//return M;
	//this function is made to initialize the map matrix , 
	//through spaces that are neutral elements , 
	//in the matrix ! 


	}//end of function 
	

	void showMatrix(string *M[]) 
	{
	int X=width();
	int Y=height();
	string tmp="0"; 
	cout << "____________Voici la matrice du Map____________"<<endl;
		for(int x=1;x<X;x++)
		{
			if(x<10)
			cout << tmp ; 
			
		cout <<x<<"   ]";
			
			for(int y=1;y<Y;y++)
			{
			cout <<M[x][y];
			}//end for Y
		cout<<endl;
		}//end for X

	

	cout << "____________Fin de la matrice____________"<<endl;
	

	
	}//end of function

	void MapInitializer()
	{
	
	int X=width(); 
	int Y=height();
	//this is made to initialize the map 
	//making the map Limits untouchable 
		for (int i = 0; i <= X-1; ++i)
			for (int j = 0; j <= Y-1; ++j) 
			{
				if (i == 0 || i == X-1 || j == 0 || j == Y-1 )
					_Data [i][j] = 1; 
				/* 
				else
					_Data [i][j] = EMPTY;
				 */
				//end if 
			}//end for j 
		//end for i 
			

	



		
	}//end of function ! 

	void WallBlocker()
	{
		for(int Wall_Id=0;Wall_Id<_nwall;Wall_Id++)
	
		{	
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
		Wall CurrentWall=_walls[Wall_Id];
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
		}//end of for VarIndex ;
		//make it that it works that way 

		/*

		if successful 

		make checkpoint ! 

		checking current wall value ! 

		*/


		/*
		<checkpoint 3 - "reached" >
		*/

		}//end of for WallId
	;}//end of function
	
	void BoxBlocker()
	{
	int x,y;		
		for( int i=0;i<_nboxes;i++)
		{
		Box BoxObject = _boxes[i] ; 
		x=	BoxObject._x; 
		y=BoxObject._y; 
		_data[x][y]=1;
		}//end of for
	
	//_data [caisses [counter]._x][caisses [counter]._y] = 1;
	











	}//end of function 


	void fromFileToMapMatrix(string *M[],char* filename) 
	{
	ifstream inFile;
	//int X_Size=LAB_WIDTH;
	int Y_Size=LAB_HEIGHT;
	



	inFile.open(filename); 

		if (!inFile) 
		{
			cerr << "Unable to open file : "<<filename;
			exit(1);   // call system to stop
		}//end if 
	cout << "Reading the file : "<<filename<<endl;
	string     tmp="0";
	string fileContent;
	string *TxtLine;
	int Line=-1; 
	int x;
	


	cout << "____________________Inside File____________________"<<endl; 
		

		
		while ( getline(inFile, fileContent) ) 
		{ 
		++Line;
		if(Line < 10)
		cout << tmp;
		//end if 


			if(Line>5)
			{//in here we can browse the values ; 
			char charArray[Y_Size-1]; 
			
			strcpy(charArray,fileContent.c_str());
			x=Line-5; 
			TxtLine=fromCharArrayToStringArray(charArray,Y_Size);
			M[x]=TxtLine;
			//fix this ! 

			/*on a réalisé un décallage nécessaire dans la fonction 
			fromchar*toString*
			*/
			}//end if 

		cout<<Line<<"   ]" << fileContent <<endl;
		}//end of while ! 

	inFile.close(); 

	cout << "____________________End of File____________________"<<endl; 


	}//end of function ReadFileIntoMatrix
	
	void from2D_MapMatrixto3D_Map(string* M[])
	{
	/* 
		parent function -> 
		*ArrayOfModels
		*ArrayOfBoxSkins
		*ArrayOfMarkSkins
		
		T : Treasure 
		C : chasseur    
		G : guerrier 
		x : mark / Boxes
		+ : wall_pointer !
		
		extraction function ->
		a : affiche1 
		b : affiche 2 <- bSkin
	*/
	int X_Size=LAB_WIDTH ;
	int Y_Size=LAB_HEIGHT;
	
	string Models[]=
		{
		"Lezard","Blade","Serpent",
		"Samourai","Marvin","Potator",
		"garde"
		};
	int N_Models=7 ; 
	srand (time(NULL));
	
	int Random_Model_Index=rand()%N_Models;
	string wallSymbol="+-|ab";
	string H_wallSymbol="+-ab"; 
	//string V_wallSymbol="+|ab";

	//cout << "Random_Model_Index == "<<Random_Model_Index<<endl;
	//generates a value [0,N_Models-1]
	cout << "_________________Inside Final Function_________________\n"; 
	_walls ={} ; 
	_nwall=-1;
	// deux affiches.
	_npicts = -1;
	
	static Wall affiche [10000];

	bool condition ; 
	

	static Wall walls [10000];

		for(int x=1;x<X_Size;x++)
		{
			for(int y=1;y<Y_Size;y++)
			{
			string element=M[x][y] ; 
/* 
			=false ; 
			
				while(element==" "&&!condition)
				{
					if(x==X_Size-1)
					condition=true;
					else
					++x;
					
				element=M[x][y];    
				}//end of while  
*/
				
				

				//
				//element=="+"||element=="-"|| element=="|"||element=="a"||element=="b"
				if(wallSymbol.find(element)!=string::npos)
				{
					
				++_nwall;
				

					if(element=="|")
					{//vertical Wall : if "|" = matrixElement

					
					walls[_nwall]={x,y,x+1,y,0};
					cout << "wall number ("<< _nwall<<") having x = "<<x<<" ; y = "<<y<<endl;
					}
					else 
					{//element belongs to HorizentalSymbols 
					//equals : if (H_wallSymbol.find(element)!=string::npos)
					//element belongs to "ab-+"
					string BannerSymbols="ab"; 
						if(BannerSymbols.find(element)!=string::npos)
						{		
						++_npicts;
						
						affiche[_npicts]={x,y,x,y+1,0};
						++_nwall; 
						walls[_nwall]=affiche[_npicts];
							if(element=="b")
							{
							char	tmp [128];
							sprintf (tmp, "%s/%s", texture_dir, "affiche 2_b.jpg");
							affiche [_npicts]._ntex = wall_texture (tmp);
							}//end if element is b ; 

						}//end if element is a banner 			

						else //element isn't a banner -> element is a wall ! 
						{
						walls[_nwall]={x,y,x,y+1,0};
						cout << "wall number ("<< _nwall<<") having x = "<<x<<" ; y = "<<y<<endl;
						}
						


/* 	
					char	tmp [128];
					sprintf (tmp, "%s/%s", texture_dir, "affiche 2_b.jpg");
					affiche [_npicts]._ntex = wall_texture (tmp);
*/
					





/* 						
						bool condition1,condition2;	
	
						string nextX=M[x+1][y];
						string previousX=M[x-1][y];
	
						condition1=(H_wallSymbol.find(previousX)!=string::npos);
						condition2=(H_wallSymbol.find(nextX)!=string::npos);
						
						condition=condition1&&condition2; 
							
						if(condition)
						//if element is horizental ! 
						{
						cout <<"this wall element is 'horizental' element = with a position of (";
						cout << x <<","<< y <<" ) \n";
						cout << "Proof to this : check The map at that position\n";
						cout <<"______________________________________________________\n";
						}
						else
						{//element is vertical 
						cout <<"this wall element is 'vertical' element = with a position of (";
						cout << x <<","<< y <<" ) \n";
						cout << "Proof to this : check The map at that position\n";
						cout <<"______________________________________________________\n";
						} 
*/

					
						
					}//end if element symbol equals a horizental symbol ! 
					

				}//end if element is part of wallsymbol ! 
				else if (element=="T")
				{
				_treasor._x = x;
				_treasor._y = y;
				_Data [x][y] = 1;
				cout << "le tresor se trouve a : ( "<< x <<" , "<< y <<" ) ";
				//partie gagné	
				}
				
				
				
				
				
				
				else
				{//if the element isn't a required symbol 

/*  					
				cout << "this element can't be a wall , cause MatrixElement='";
				cout <<element <<"'\n"; 
*/
				}
		/* 		
				else if (element=="C")
				{
	
				}
				
				else if (element=="G")
				{
	
				}
				
				

				else if (element=="x")
				{
	
				}//end of if 
				
	 */
	
			}//end of for y ! 
	
	
	
	
	
	
		}//end of for X
	++_nwall;
	++_npicts;
	_walls=walls;
	_picts = affiche;
	cout << "congrats you just turned a 2d text into 3D !\n";
	cout << "_________________End of Final Function_________________\n"; 

	;}//end of from2D_MapMatrixto3D_Map
	
	void Fill_Map_data()
	{
	int X=width();
	int Y=height(); 
		for(int x=0;x<X;x++)
		{
			for(int y=0;y<Y;y++)
			{
				_data[x][y]=_Data[x][y];
			}//end for y

		}//end for x 

	}//end of function


};//end of class Labyrinthe

#endif
