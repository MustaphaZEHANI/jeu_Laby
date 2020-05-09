step0 : Try to compile the project ! 
0. install make GNU (gnuWin32)
2.verify installation with cmd ! 
3. make -f Makefile-proto // we would get an executable file / .exe 
4. execute / open the generated executable file / .exe 

3.error : 
c:/mingw/bin/../lib/gcc/mingw32/9.2.0/../../../../mingw32/bin/ld.exe: cannot find -lwinpthread        
collect2.exe: error: ld returned 1 exit status
make: *** [labh.exe] Error 1

3.resolution : 
sabina el compilateur el s7i7 , 
badlna les variables d'environements , 
déactivina el mingw par défaut 
skarna wu mb3d 3wdna 7alina el vscode
besh fele5er 3malna build lel projet 


4. how to execute : ./"labh.exe" -l "labyrinthe.txt"   -f -a 
in other words : 
./"labh.exe" -l labyrinthe-file-name   -f -a 

step0.1 : 
check fmod mta3 chnowa ? 
fmod is used for sound , useless for windows ! 


step0.2 : 
I added all the models on labyrinthe.cc 
**testing the models **
Successfully added all the models 
commit labyrinthe.cc 
"Added new models while clarifying the code"
Done

step0.3 : 
**testing if the code works** 
if code works commit labyrinthe.cc 
"Improved comments to better clarify the code "
Done

step0.4 : 
tried message() ; 
it worked fine on labyrinthe.cc 
Done 

step0.5 : 
we gonna display strings ; 
in the message system ! 
we need to display : 
**labyrinthe before algorithm application** 
+++++++++++++++
**labyrinthe after application of the algorithm**
+      +
commit labyrinthe.cc
"Began testing"
Done 
*************

step0.51: 

add createMatrix(M,N) to labyrinthe.h 
Thus Creating a Matrix Dynamically , 
while the matrix remains saved on the whole program ! 
I'm also tested the dynamic creation 
ensuring that the matrix is created Dynamically 
& then saved ! 
*****testing Dynamic Creation*********
"Done"

********testing the process of matrix saving********
"Done"


if successful 
commit labyrinthe.cc , labyrinthe.h
"Dynamically Created MapMatrix & got it saved"

********************_____ Done _____********************


step0.52: 

test createMatrix as a void function ; 
without assignin a value to M , 
on labyrinthe.cc ; 
& check if the save works or not 

if the functions returns void ; 
The game program won't work !
"Create matrix function cannot return void"

**********************     Done     **********************

                        
                        


                        *********************************

------------------------__________step0.52 Ends__________------------------------


                        *********************************


step0.6 : 
test modularity & if it works with a matrix  ; 
example : 
createMatrix(M,N);
fillMatrix(M,length,1);
showMatrix(M,length);
//if the matrix shown is the filled matrix then you're doing fine !  

*createMatrix(M,N);
*****"Done"*****

*fillMatrix(M,length,1);
*****"Done"*****

*showMatrix(M,length);
*****"Done"*****

----------
Tested all the possible operations 
that a MapMatrix is supposed to make  
in order to generate a labyrinthe !

if successful
commit Labyrinthe.h & Labyrinthe.cc
"map matrix is ready for the labyrinthe"

commit on child/parent task (including blocking walls)

___________over-all state : "Done"____________






step1 : 
**you should always be testing code , before final launch**

consulti -> 
*message function , & make sure it works for testing the labyrinthe
works inside labyrinthe.cc
*****"Done"*****

*test modularity & if it works with a matrix  ; 
example : 
fillMatrix(M,length,1);
showMatrix(M,length);
//if the matrix shown is the filled matrix then you're doing fine ! 
*****"Done"*****


*labyrinthe.h
*****"Done"*****


*labyrinthe.o 
//can't open pre-compiled files !
*****"Ignored"*****

* struct wall ;
struct Wall {
	int	_x1, _y1;	// point de depart.
	int	_x2, _y2;	// point d'arrivée.
	int	_ntex;		// numéro de texture.
};
*****"Done"*****

* est ce que l' "x" wu l "y" mta3 les objets , réel walla lé ! ?  

réel ynajmou ykounou , 

ama fi west labyrinthe dima (int) ! 

"x" wu "y" besh n5dmou béhom en tant que int ! 
*****"Done"*****

*checki fazét el "x" wu l "y" à partir men struct box 
struct Box {
	int	_x, _y;		// emplacement.
	int	_ntex;		// numéro de texture.
};
*****"Done"*****


commit on parent/child task , containing 
the thing on how to block a wall !

___________over-all state : "Done"____________


-------------------------------------------------------

step1.1 

lzmna n5dmou el message fi west chasseur.cc 
de sorte que , 
ba3d matdhréb el bullet , 
na3mlou display mta3 message , 
y3tina les cordonnées "x" et "y" mta3 el chasseur 

"Done"

-------------------------------------------------------

step 1.11 

n3ti position mta3 chasseur à temps réel , 
utile bennessba lel testing , 

"Done"

-------------------------------------------------------

step 1.111

manposti position ken , mtetbadel el position 

"Real time hunter s' position testing with cout 
+ a game message after a bullet collision"

"improved Real time hunter position display"

< Done >
-------------------------------------------------------

step 1.1111

lzmna n5dmou el message fi west chasseur.cc 
de sorte que , 
ba3d matdhréb el bullet , 
na3mlou display mta3 message , 
y3tina les cordonnées "x" et "y" mta3 el chasseur
-
n3ti position mta3 chasseur à temps réel , 
utile bennessba lel testing , 
-
manposti position ken , mtetbadel el position 
-
n3ml fonction fel chasseur.h 
taffichi el postion mta3 el chasseur bel cout 
nsta3mel el fonction martin ! 
marra inside el MoveAux , 
wu marra fel inititialisation , 
besh na3ti el position à t=0 ! 
-
"Real time hunter s' position testing with cout 
+ a game message after a bullet collision"

"improved Real time hunter position display"
-

commit chasseur.cc & chasseur.h
"Made a function that displays at Real time the hunter s'position"

< Done >
---------------------------------------------------------------------

step 1.1112

I can get the guard model 
+ its number (déja possible)
maintenant c'est possible d'identifier 
les gardes avec leurs modéles 
-
getting the model name wasn't possible in the past , 
now it's possible to get the model name  , 
it has always been possible to identify guards 
through their id ,
but the id isn't sufficient to 
get grasp on the looks of the guard !  
however if you mix the id with the model , 
the identification becomes much easier 
in the testing process , 
To get this to work , 
I spent a lot of time , learning about 
the possibilites on how to access the attributes , 
plus , most of the times , I had to fix a lot of bugs , 
achieving this is a sort of breakthrough ! 
-
Not only that , but I also added some logging with 
a cout ! 
- 
apart from that , I added a piece of Labyrinthe , 
but the piece wasn't a final work it was 
the sort of object that required
its data to be sealed , 
in order for the user to not cross it , 
so I need to make it untouchable next time ! 


if successful 
commit chasseur.cc,Labyrinthe.cc,Labyrinthe.h,Environement.h
" guards can be identified by  id +model names + their Map-Position"

  < Done > 

-------------------------------------------------------

step 1.12

lzm ndourou el map el kolha bel chasseur , 
nta3ou bih el intervalle mta3 el mover 
ma3nétha el mover est supposé yt7arék dans 
l'intervalle suivant : 
([Minimum x,Maximum x],[Minimum y,Maximum y])


"Done"

-------------------------------------------------------


step 1.121

badél valeur "_x" mta3 el chasseur
wu nexplori el map ^_^

"Done"

--------------------------------------------------------

step 1.1211

This map Re-sizing is crucial 
to build the labyrinthe from the file  
-
changed map size to make the labyrinthe build 
from the file ! 
changed map size for better testing  ; 
map size changed to match the Labyrinthe 
construction , 
the labyrinthe is supposed to match the file ! 
- 
we might get the map size to change again 
if the map doesn't suit the labyrinthe
 in the text file ;
 However this seems to be okay , 
 so we might not change the Labyrinthe size 
 again  
-
added hunter logging of their real float position 




commit labyrinthe.h chasseur.h
"changed map size to build labyrinthe from file"

<Done>
--------------------------------------------------------

step 1.12111

<current step> 


-
*achieved step0.6 

*fillMatrix(M,length,1);
*****"Done"*****

*showMatrix(M,length);
*****"Done"*****
-

*test modularity & if it works with a matrix  ; 
example : 
fillMatrix(M,length,1);
showMatrix(M,length);
//if the matrix shown is the filled matrix then you're doing fine ! 
*****"Done"*****
-




------
showMatrix(M,length) ; 
works as shown with different 
Matrix variables ; 
show matrix is made to be reviewed as a log ! 

-----
Just Renamed the function 
fillMatrix into MatrixInitializer , 
which is the correct term involving , 
the  work with the matrix ! 

> M=MatrixInitializer(M, X_Size, Y_Size); <

--------------
Just finished the fillMatrix function 
it serves as an initializing function 
to make the matrix take values 
of space , 
which is a neutral element 
corresponding to the labyrinth file , 
next milestone would be to 
rename the function as an Initializer ! 
--------------
Made the *fromCharArrayToStringArray 
make it that the file content 
only goes to MapMatrix[1..MapSize-1]
Even though , the file content Char 
goes from [0..FileRowLength-1] 
---------------
Added string *fromCharArrayToStringArray ; 
this function will permit , 
to easily transfer data from file 
to Map Matrix ! 
---
Create matrix , now involves :  
the MapSize ! 
---
Edited some code , to make it possible 
to work with the map 
from an interval of [1,MapSize-1]
from the _data[x][y] perspective 
-----
Removed the 4 public walls , 
preparing for a labyrinthe , 
that can involve file elements 
or random values ! 
----------------
Made it possible to block walls , 
dynamically 
----
Made sure to make a good use of modularity , 
in order to acheive map matrix operations ! 

----
Tested all the possible operations 
that a MapMatrix is supposed to make  
in order to generate a labyrinthe !
--
make a custom wall  "untouchable"
- 
//let's block the summoned wall in here !  

//in testing , via labyrinthe.cc version 0 
/*

Initialising 4 Walls

struct* wall walls={insert 4 walls here }

_nwall=4 ; 

*/


walls[_nwall]={3,20,3,10,0};
< check point 1 > 



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
< checkpoint 2 > 
*/


  
  if(startIndex>EndIndex)
  {
   x1=startIndex ; //x1 is temp here ! 
   startIndex=EndIndex ; 
   EndIndex=x1;  
  }//end if 
  

  /*
  fix things  so that the loop would make sense ! 
  

  //make it that it works that way 

  for(int VarIndex=startIndex;VarIndex<=EndIndex;VarIndex++) 
  //for besh tmshi dima 3ala axe constant eli howa représenté par _ConstAxe ;
   
  {
    
    if(condition)// move on Y 
    _data[_ConstAxe][VarIndex]=1 ; 
    else //move on X 
    _data[VarIndex][_ConstAxe]=1 ; 
    //end if 

  }
  //make it that it works that way 

  */
_nwall++;

// let's test this out ! 

//remove _nwall = 5 ;  <- Done 







if successful
commit labyrinthe.cc labyrinthe.h 
youssef s'Todolist for the project.bat
"preparing labyrinthe+MapMatrix+dynamic walls"


( before you commit check all the parent tasks ! )
"
waiting for commmit ...
Verifying related steps ... 
Data from external steps transferred in here ... 

| User Can Commit |

"
< Doing > 

--------------------------------------------------------
<not yet>
step 

*make the mapPreparing(_data[limits]=1)
make it as a function 

*make a function , 
that from a wall 
coordinates , 
would block the wall 
& make it "untouchable" ! 




< To Do > 


----------------------------------------------------------
step 1.12112

solving the labyrinthe transformation 
through mathematics 

1) scale  : 

scale is useless
File(xF,yF)
for File(1000,1000) 
scale will return 100
if MapSize < 100
then FileSize/10<=>100 can't fit 

scale is useless cause it won't solve the problem ! 
-
**Creating Custom Scale**
custom scale might be useless too , 
because you can't compress the file , 
since every FileElement contains a value  ; 
compressing the file would supress elements from the file ; 
thus , the file wouldn't be converted ! 

proof : 
file(100,1)="a";file(100,2)="b" ; 
MapSize=30; 
FileSize=1000;
MapSize=30=1000 x RealScale ; 
RealScale=30/1000=3/100=<3%>;

file(100,1)="a";file(100,2)="b" ; 
xF=100;=> x=(int)<3%*100>=3 
yF=1;=> x=(int)<3%>=0; 
yF=2;=> x=(int)<6%>=0; 

Map(3,0)="a" == Map(3,0)="b"
which is not correct ! 

2)MapSize Vs FileSize 
Map(x,y) => MapSize ;
File(xF,yF) => FileSize ; 

a. FileSize > MapSize 
<=> xF > x || yF > y  

according to realScale ; 
FileSize cannot be supperior to MapSize ; 

proof : 
FileSize=31;MapSize=30; 
file(31,0) wouldn't be displayed ; 
and the compression wouldn't be fidel to the file ; 
thus FileSize cannot be supperior to MapSize 

b.  Else (MapSize>=FileSize) 
<=> x >= xF || yF >= y 

I. we need to make MapSize>=FileSize ; 
Thus setting map size into [93,100] ! 
gonna opt for 100 !

II.
FunctionalScale*FileSize=MapSize ; 

FunctionalScale=MapSize/FileSize; 

Map(x,y); 
File(xF,yF); 

x=(int)xF*FunctionalScale;
y=(int)yF*FunctionalScale;







<Done> 



--------------------------------------------------------

step 1.3

*
Labyrinthe Counters : [1,MapSize-1]
"Done"

*step 1.12111


*go to step0.6 
"Done"

*get back to step1 ! 
"Done"


<Doing> 

--------------------------------------------------------














--------------------------------------------------------

step2.0 : 
bennessba lel boxes(caisses & marques),(wall & affiche) 
they share the same coordinates system , 
thus acting & moving according to LAB_Height&LAB_Width 

Cependant , bennessba lel Movers(chasseurs & guardians)
Besh yetreassélna ntestiw les moves mté3hom , 
wu el intervalle mta3 el répere mté3hom , 
selon les 2 axes x & y ! 
([Minimum x,Maximum x],[Minimum y,Maximum y])
besh najmou ntal3ou les cordonnées possbile mté3hom , 
lzmna , ntstiw using el Hunter (chasseur)

**wrong**

=> el ness el kol 3ndhom nfss el size 






ebni map à partir de juste carcasse mta3 map kémla , 
exemple : 
+----a-------b-----+
|                  |
+---b----------a---+ 
à partir de : 

FunctionalScale*FileSize=MapSize ; 

FunctionalScale=MapSize/FileSize; 

Map(x,y); 
File(xF,yF); 

x=(int)xF*FunctionalScale;
y=(int)yF*FunctionalScale;

var xCounter,yCounter ; 
xCounter=yCounter=0;
max_H=LAB_Height-1;
max_W=LAB_Width-1;
xCounter=max_W/max_column(T_map);
yCounter=max_H/length(T_map)-1;
if(element=="a" || element=="b")
{
    SpawnAffiche(element.coordinates);
    if(element==b)
    {
    ApplySkin("affiche 2_b.jpg",element);    
    }    //end if 
}//end if 
if(element=="+")
{
NumberOfDirections=possibleDirectionsForExtraction(element.coordinates);
    if(NumberOfDirections==0)
    {
    element=" ";//element has space over-riding the "+" value
    }
    else
    {
    ExtractFromElement(element.coordinates);
    //within each extraction , transform element[i][j] into space ! 
    //"+-ab-+" shall become "+    +"
    element=" ";//element has space over-riding the "+" value
    //then "+    +" shall become "    +"
    }//end if 




}//end if ; 


step2.1 : 
fel map -> 
C : chasseur    
G : guerrier 
X : mark 
a : affiche1 
b : affiche 2


step3: 
il y a 2 types de marques : 
marques de tp et marques de changement de map  
les marques de tp (ont 2 skins blancs )
les marques de changement de map (ont 2 skins colorés)



/*
_______________________________ Absurdities _______________________________  
*/



step 99.60* 

implement the bullet hits 
while improving the script 
& making the whole code working ! 
--------------------------------------------------------
step99.61 : 

find how to access a function s' char* 
/*within a function*/

**** "Didn't Need to access a function s' char" ****
----____________________________________________----





step 100 : 
fix the sound ! 
**testing if successful** 

if successful : 
commit sound.h 
"Fixing the sound by lowering the main volume"
**** couldn't fix sound volume :'( ****



/*
____________________________ End of Absurdities ____________________________  
*/

            +++++++++++++++++++++++++++++++++++++++++++++++++++++      
_____________                     Game Log                      _____________
            +++++++++++++++++++++++++++++++++++++++++++++++++++++      
PS C:\Users\Riados\Documents\cstrike game c++ project> make -f Makefile-proto
g++ -Wall -O3 -c Labyrinthe.cc -o Labyrinthe.o
g++ -no-pie -o labh.exe Labyrinthe.o Chasseur.o OpenGL-windows.o -Wl,--subsystem,console -mwindows -Lfltk-1.4-windows -lfltk_images -lfltk_png -lfltk_z -lfltk_jpeg -lfltk_gl -lfltk -lwinmm -lglu32 -lopengl32 -lole32 -luuid -lcomctl32 -lws2_32 -lwinpthread -static
PS C:\Users\Riados\Documents\cstrike game c++ project> ./"labh.exe" -l "labyrinthe.txt"   -f -a 
**********Game Log**********
**labyrinthe before algorithm application**
+++++++++++++++
**labyrinthe after application of the algorithm**
+      +

____________Voici la matrice du Map____________
01   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
02   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
03   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
04   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
05   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
06   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
07   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
08   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
09   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
10   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
11   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
12   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
13   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
14   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
15   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
16   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
17   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
18   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
19   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
20   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
21   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
22   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
23   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
24   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
25   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
26   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
27   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
28   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
29   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
30   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
31   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
32   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
33   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
34   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
35   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
36   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
37   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
38   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
39   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
40   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
41   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
42   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
43   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
44   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
45   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
46   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
47   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
48   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
49   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
50   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
51   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
52   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
53   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
54   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
55   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
56   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
57   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
58   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
59   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
60   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
61   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
62   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
63   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
64   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
65   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
66   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
67   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
68   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
69   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
70   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
71   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
72   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
73   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
74   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
75   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
76   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
77   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
78   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
79   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
80   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
81   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
82   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
83   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
84   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
85   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
86   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
87   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
88   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
89   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
90   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
91   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
92   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
93   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
94   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
95   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
96   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
97   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
98   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
99   ]aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
____________Fin de la matrice____________
blocking walls s' First test :
x1 = 3; y1 = 20; x2 = 3; y2 = 10
_ConstAxe = 3 ; startIndex = 20 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 10 ; EndIndex = 20
 VarIndex = 10 ; _data[3][10] = 1
 VarIndex = 11 ; _data[3][11] = 1
 VarIndex = 12 ; _data[3][12] = 1
 VarIndex = 13 ; _data[3][13] = 1
 VarIndex = 14 ; _data[3][14] = 1
 VarIndex = 15 ; _data[3][15] = 1
 VarIndex = 16 ; _data[3][16] = 1
 VarIndex = 17 ; _data[3][17] = 1
 VarIndex = 18 ; _data[3][18] = 1
 VarIndex = 19 ; _data[3][19] = 1
 VarIndex = 20 ; _data[3][20] = 1
le chasseur se trouve a la position : ( 10 , 8 ) ; reellement : ( 100 , 80 )
X = 10 ; Y = 8
le modele du Gardien n(1) = Lezard
pour le 2eme modele blade , tmpModel devient :  Blade
