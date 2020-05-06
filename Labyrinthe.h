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

	string** createMatrix(string* M[],int length)
	{
	//create dynamically 
	int N=length;
	M = new string*[N];
		for (int i = 0; i < N; ++i)
		M[i] = new string[2];


	/* 
 	M[0][0]="a";
	string value=M[0][0];
	cout << "inside function M[0][0] = " << value <<endl; 
	*/
	

	return M    ;
	}//end of function
};//end of class Labyrinthe

#endif
