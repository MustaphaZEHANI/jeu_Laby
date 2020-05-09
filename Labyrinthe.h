#ifndef LABYRINTHE_H
#define LABYRINTHE_H

#include "Environnement.h"
#include <iostream>
using namespace std;
#define	LAB_WIDTH	100 //80
#define	LAB_HEIGHT	100//25

class Labyrinthe : public Environnement {
private:
	char	_data [LAB_WIDTH][LAB_HEIGHT];

public:
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
		for (int i = 0; i < y; i++)
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

	string** MatrixInitializer(string* M[],int X_Size,int Y_Size)
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

	return M;
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

	//this is made to initialize the map 
	//making the map Limits untouchable 
		for (int i = 0; i <= LAB_WIDTH; ++i)
			for (int j = 0; j <= LAB_HEIGHT; ++j) 
			{
				if (i == 0 || i == LAB_WIDTH || j == 0 || j == LAB_HEIGHT)
					_data [i][j] = 1; 
				else
					_data [i][j] = EMPTY;
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

};//end of class Labyrinthe

#endif
