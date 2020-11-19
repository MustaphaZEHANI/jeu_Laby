/******************************************************************************
cd "C:\Users\Riados\Documents\p-dispersion in a 2d-PF with p GT 3 - project\code samples\";
g++ "main.cpp" -std=c++11 -o exe ; ./"main.exe"
Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>
#include <iostream>
#include <vector> // for 2D vector 
/*
stdlib & time are for rand & srand ! 
*/
#include <time.h>       /* time */
#include<bits/stdc++.h> 
#include <iterator>
#include <fstream>
#include <string.h>
using namespace std;


#define LAB_WIDTH 6;
#define LAB_HEIGHT 6;

string filename="labyrinthe.txt";
struct point
    {
    int index        ; 
    float value; 
        
    }; 


/*
createMatrix(M,length);
fillMatrix(M,length,1);
showMatrix(M,length);

*/



//void from2D_MapMatrixto3D_Map(string* M[]);
//void fromFileToMapMatrix(string *M[],string filename)  ;
void PreparingVictoryArea(string* M[],int TreasureX,int TreasureY,string Texture[]); 

void showMatrix(string* M[]);
string** MatrixInitializer(string* M[],int X_Size,int Y_Size);
string** createMatrix(string* M[],int X_Size,int Y_Size);
//void fillMatrix( char M[],int length,char value);
//void showMatrix(char M[],int length);
void showI(vector <int> T);
void showPointArray(point T[],int N);

int main()
{   
   
    //int N=5;
     /* initialize random seed: */
    srand (time(NULL));
    /*
    N++;
    cout << "N++ = "<<N++;
    //N++ is a valid expression as it works ! 
    */

    //Defining the matrix of char : M
    //char M[N];
    cout << "program starts"<<endl;
    string **VictoryArea_Matrix;

    int X_Size=LAB_WIDTH; 
    //int X_Size=5;
    int Y_Size=LAB_HEIGHT;
    //int Y_Size=5;
    VictoryArea_Matrix=createMatrix(VictoryArea_Matrix,X_Size, Y_Size);
    //you should define this function correctly ! 
    //the matrix is created dynamically & saved this way 
    //this is working so 
    /*
    <checkpoint 1 : "reached">

    */

    
    
    /*
    VictoryArea_Matrix goes from 1 to 5 

    From
        VictoryArea_Matrix[1][1] 
    
    to 
        VictoryArea_Matrix[5][5]




    */
    
   string Texture[10]={"1","2","3","4","5","6","7","8","9"};   
    int TreasureX = 3 ; 
    int TreasureY=3 ; 
   VictoryArea_Matrix=MatrixInitializer(VictoryArea_Matrix, X_Size, Y_Size);  
    //make this work !
    
    //you should define this as a function ! 

    showMatrix(VictoryArea_Matrix);

    /*
    <checkpoint 2 : "reached">
    */

   //fromFileToMapMatrix(M,filename);
   PreparingVictoryArea(VictoryArea_Matrix,TreasureX,TreasureY,Texture); 
   
   
    showMatrix(VictoryArea_Matrix);
    /*
    <checkpoint 3 : "reached">
    */ 

    //from2D_MapMatrixto3D_Map(M);

   
   
   /*   
    char value=M[0][0];
    cout << "inside main M[0][0] = " << value <<endl; 
    */
    
    //point p;
     
     //Creating vector V
    vector <point> V;
    
    /*
    V.resize(N);
    int i;
    for( i=0;i<N;i++)
    {
     
    p.value=(rand()%100)+N;
    p.index=i;
    V[i]=p;
    cout << "V["<<i<<"].value = "<<V[i].value<<endl ;
    };//end of for  
    */
    
    /*
    #include <stdlib.h>  
    #include <time.h>       /* time 
    */

   //int x=rand()%(N-3)+4;//
  
    
    //***Vector is here***//
    
    /* 
    vector <int>  I={0,x,N-1}; 
    */
    //cout << "vector size : " <<I.size() << "\n";
    
    
    
    
    
    
    
    
    
   //rand % N-3 => [0-N-4] 
   // +4 => [4,N]
    //3<p<=N <=> p : [4,N] ; N : [4,X ] avec X > 4 
    //* Initialisation de la matrice *//
    
    //cout << "x = " << x << endl; 
    
    /*  
    //create dynamically 
    float** C = new float*[N];
    for (int i = 0; i < N; ++i)
    C[i] = new float[N];
    
    //C[N][N]={};
    for (int i=0;i<N;i++)
    {
        for(int j=0;j<N;j++)
        {
        C[i][j]=-1;
        cout << C[i][j] << " ; ";    
        }
    cout<< endl;
        
    }//end for i
    */
    
    /*  
    //***Destroying Matrix***
    for (int i = 0; i < N; ++i)
    delete [] C[i];
    delete [] C;
    */


    /*cout << endl;
    int i,j;
    for (i=0;i<N;i++)
    {
        for( j=0;j<N;j++)
        {
        
        cout << C[i][j] << " ; ";    
        }
    cout<< endl;
        
    }
    */
   
    // showI(I);
    
    /*
     bool condition=!(find(I.begin(), I.end(), x) != I.end());
    cout << "condition : " << condition << "\n"; 
    */
    
    //**transforming Vector of points into Array of points 
    
    /*
    point T[N];
    //T[0].value=T[0].index=0;
    copy(V.begin(), V.end(), T);
    cout << "T[0].value = " << T[0].value<<endl ;
    
    showPointArray(T,N); 
    */

   
    printf("Hello World");

    return 0;
}

//**defining Functions**


void PreparingVictoryArea(string* M[],int TreasureX,int TreasureY,string T[])
{

cout << "Inside The Diagonal Mark Function ( w ^_^)"<<endl;
int TextureIndex;
int x=TreasureX;
int y=TreasureY;
int AreaCounter=0;

for(int i=-2;i<3;i++)
{
     for(int j=-2;j<3;j++)
    {
    TextureIndex =rand()%9;//[0..8]
    
    //M[i+x][y+j] ="0" ; 
    //M[i+x][y+j] =T[TextureIndex] ; 
    //Victory Area is Triggered here ! 
    //later it's possible to optimize & do everything in the diagonal loop ! 
    }//end of for j 

}//end of for i 




int startX=x-2;
int endX=x+2; 
int startY=y-2;
int endY=y+2; 
int counter=0;
cout << "diagonal n( " << counter+1<<" ) : has 1 element" <<endl;
M[startX][startY]=T[counter];
AreaCounter++;
    do
    {
    counter++;
    cout << "\ndiagonal "<<counter+1<<endl; 
    int count=0;
    int temp;
    int stepX,stepY;
        if(counter<=4)//does the 5 diagonals
        {
        stepX=startX+counter;
        stepY=startY;
        temp=counter;
        } 
        else
        {//does the last 4 diagonals
        stepX=endX,stepY=counter+1-4;
        temp=5-(counter-5)-2 ; 

        }//end of if counter!=4
    int step=0;
        for(step;step<=temp;step++)
        {
        count++;
        //stepY==startY;
        M[stepX][stepY]=T[counter];
        
        AreaCounter++;
        stepY+=1; 
        stepX-=1;
        
        /*
        12345
        23456
        34567
        4567
        567
        */
        }//end of for
    string elementString="element" ;
    
    
    
        if(count!=1)
        {
        
        elementString+="s";
        }
    
    cout << "diagonal n( " << counter+1<<" ) : has " ;        
    cout << count <<" "<< elementString << "\n" <<endl;
    
        
    
    } 
    while (counter!=8); //does the 9 diagonals

    cout << "\n The matrix has "<<AreaCounter<< " elements in Total"<<endl;
/*
     do 
    {
    counter++;
    cout << "\ndiagonal "<<counter+1<<endl; 
    int count=0;
    int stepX=endX,stepY=counter+1-4;
    
    int step=0;
    int temp=5-(counter-5)-2 ; 

    cout <<"stepX : "<<stepX<<" ; stepY : "<<stepY; 
    cout <<" ; step : "<<step<<" ; temp : "<<temp<<endl; 
    /*
        5
       56
      567
     5678
    56789
    *//*
        for(step;step<=temp;step++)
        {
        count++;
        //stepY==startY;
        M[stepX][stepY]=T[counter];
        stepY+=1; 
        stepX-=1;
        
      
        }//end of for
    
    cout << "diagonal n( " << counter+1<<" ) : has " ;        
    cout << count <<" elements\n" <<endl;

    }
    while(counter!=8); // does the Remaing 4 diagonals 
    
*/




;}//end of function : PreparingVictoryArea





string** createMatrix(string* M[],int X_Size,int Y_Size)
{
//create dynamically 

 M = new string*[X_Size];
    for (int x = 0; x < X_Size; ++x)
    M[x] = new string[Y_Size];


/*
M[1][1]="q";
string value=M[1][1];
cout << "inside function M[1][1] = " << value <<endl;  
*/ 


return M    ;
}//end of function createMatrix ; 

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

}//end of function fromchar*tostring* ! 

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


}//end of function MatrixInitializer  !


void showMatrix(string *M[]) 
{
int X=LAB_WIDTH;
int Y=LAB_HEIGHT;
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



}//end of function showMatrix ! 


void fromFileToMapMatrix(string *M[],string filename) 
{
ifstream inFile;
int X_Size=LAB_WIDTH;
int Y_Size=LAB_HEIGHT;

inFile.open(filename); 

    if (!inFile) 
    {
        cerr << "Unable to open file : "<<filename;
        exit(1);   // call system to stop
    }//end of if 
cout << "Reading the file : "<<filename<<endl;
string     tmp="0";
string fileContent;
string* TxtLine;
int Line=-1; 
int x;
char* charArray; 
cout << "____________________Inside File____________________"<<endl; 
    
    
    while ( getline(inFile, fileContent) ) 
    { 
    ++Line;
    if(Line < 10)
    cout << tmp;
    //end if 
 
    strcpy(charArray,fileContent.c_str());
        if(Line>5)
        {//in here we can browse the values ; 
        x=Line-5; 
        TxtLine=fromCharArrayToStringArray(charArray,Y_Size);
        M[x]=TxtLine;
        /*on a réalisé un décallage nécessaire dans la fonction 
        fromchar*toString*
        */
        }//end if 

    cout<<Line<<"   ]" << fileContent <<endl;
    }//end of while ! 

inFile.close(); 

cout << "____________________End of File____________________"<<endl; 


}//end of function ReadFileIntoMatrix




//--------------------------------------------
void showI(vector <int> T)
{

int length=T.size();


cout << "& here is the list of Indexes : [ ";
    for(int i=0;i<length;i++)
    {
    cout << T[i];
    if(i!=length-1)
    {
    cout<<" , ";
    }//end of if
    
    }//end of for
cout << " ]";


}//end of function

void showPointArray(point T[],int N )
{

cout << "Voici le tableau des points : "<<endl << "[ ";
    for(int i=0;i<N;i++)
    {
     cout << T[i].value  ;
        if(i!=N-1)
        {
        cout<<" , ";
        }//end of if   
    }
    
    cout << " ]"<<endl;
    
}//end of function 

void from2D_MapMatrixto3D_Map(string* M[])
{
/* 
    parent function -> 
    *ArrayOfModels
    *ArrayOfBoxSkins
    *ArrayOfMarkSkins

    C : chasseur    
    G : guerrier 
    X : mark / Boxes
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

int Random_Model_Index=rand()%N_Models;
cout << "Random_Model_Index == "<<Random_Model_Index<<endl;
//generates a value [0,N_Models-1]

    for(int x=1;x<X_Size;x++)
    {
        for(int y=1;y<Y_Size;y++)
        {
        string element=M[x][y] ; 
        
            while(element==" ")
            {
                if(x==X_Size-1)
                break;
                else
                ++x;
                
            element=M[x][y];    
            }//end of while 
            
/* 
            if(element=="+")
            {
            //extract(M,x,y)    
            }
            
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
cout << "congrats you just turned a 2d text into 3D ! \n";
;}//end of from2D_MapMatrixto3D_Map
