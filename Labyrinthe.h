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


};//end of class Labyrinthe

#endif
