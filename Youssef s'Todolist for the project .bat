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





-

if successful
commit labyrinthe.cc labyrinthe.h 
youssef s'Todolist for the project.bat
"preparing labyrinthe+MapMatrix+dynamic walls"


( before you commit check all the parent tasks ! )
> parent tasks & child tasks checked ... 
"
waiting for commmit ...
Verifying related steps ... 
Data from external steps transferred in here ... 

| User Can Commit |

"
< Done > 

--------------------------------------------------------

step *

*make the mapPreparing(_data[limits]=1)
make it as a function 

void MapInitializer()
<Done>

*make a function , 
that from a wall 
coordinates , 
would block the wall 
& make it "untouchable" ! 
<Done>
-
Experimenting how a banner is displayed 
< Result : x1=x;x2=x1+2; > 
-
Finished making a function that 
make the walls untouchable 
blockWall(); 

-
gonna test with different walls 
the blockwall() function ! 
tested different walls , it works 
marvellously ! 

-

commit labyrinthe.cc labyrinthe.h 
"MapInitilizer+Wall_Blocker implemented"

| waiting for commit ... |

Overall State : < Done > 


----------------------------------------------------------

step **

*make a function that blocks boxes 
"Done" ;

*make a function that reads from file , 
test it on the c++ compiler on another 
project using the same text file ! 
( getting the value into MapMatrix )
using the fromCharArrayToStringArray function ! 
"Done"
-
Added file name display ! 
-
before reading the file !
fixed  the testing c++file , 
 
next step would be to 
include the txt file 
in the testing c++ file 
& then to read it 
-
included the txt file , 
& read it , 
& the matrix got the txt map 
next step would be to , 
copy the testing code , 
into the game ! 
-
fixed a bug that breaks the program memory ! 
-
saving the last compilation Log ! 
before the commit into the todolist file ! 
-

commit labyrinthe.cc labyrinthe.h 
thistodolistfile
"Box Blocker()+File_into_MapMatrix()"

|waiting for commit| 


<done>
----------------------------------------------------------


step *** 

make modularity on the labyrinthe.cc 
"Doing"

*ebni map à partir de juste carcasse mta3 map kémla , 
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

-

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
<to do> 

step2.1 : 
fel map -> 
C : chasseur    
G : guerrier 
X : mark 
a : affiche1 
b : affiche 2
<to do> 

step3: 
il y a 2 types de marques : 
marques de tp et marques de changement de map  
les marques de tp (ont 2 skins blancs )
les marques de changement de map (ont 2 skins colorés)
<to do>
-
I might not use the scale , for now ! 
cause i'm short on time 
- 
started testing on testing File , 
next objective
would be to make the basic functionality 
function in the testing File , 
-
gotta implement 
the testing File code , 
into the game ! 
-
started writing code in test file , 
the code I wrote worked fine , 
gonna have to implement the portion in the game 
& make it work 
next step would be to loop this , 
until I get an interesting result 

Looping Actions :  "Test|Implement&Complete|Validate_Portion"

-
after a while of bug testing 
I Successfully made the labyrinthe work 
including only the treasure & the walls 
& also limiting the maps 
& making the objects untouchable ! 



-
Adding T &  making markBox as x 
<ignored> 

-

commit Labyrinthe.cc Labyrinthe.h todloist.bat 

"labyrinthe from file is functional+uncomplete"

|waiting for commit|

(done) 
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
"Done"

*go to step0.6 
"Done"

*get back to step1 ! 
"Done"


<Done> 

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








<done>



--------------------------------------------------------


<current step> 



made the game go faster 
through removing cout on the labyrinthe.h ; 

- 
manually implemented characters in labyrinthe.cc 
- 
improved bot movment with rotation ! 
-
made a rotation function , 
that takes as variables dx,dy,Rx,Ry ; 
Rxy is basically RoatedXY
dxy isn't the dxy used on move 
its a parameter passed , 

first roatation : Rxy + dxy 

inside function 

if(1st rotation == Empty )
{
  _xy=Rxy ;  
}

function gets local dxy as dxy ; 

"-----------"

for 2nd rotation : Rxy +dxy/10 
function gets local dxy as dxy/10 ; 
"-----------"
for 3rd rotation : Rxy+distXY 
function gets local dxy as distXY ; 






-

-




commit
guardian.cc labyrinthe.cc labyrinthe.hh 
youssef_todolist ! guardian.h
"uncomplete_Merge;Fixing_Bot_Movement;Faster_Game"

|waiting for commit| 
<doing>
--------------------------------------------------------

step 

include chasseur.cc 
& probably chasseur.h


--------------------------------------------------------

step 

Treasure ::: win 











--------------------------------------------------------

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
le gardien n(1)[Lezard] se trouve a la position (12 , 8 )
le chasseur se trouve a la position : ( 79 , 87 ) ; reellement : ( 790.458 , 873.747 )
le gardien n(1)[Lezard] se trouve a la position (12 , 8 )
le chasseur se trouve a la position : ( 79 , 86 ) ; reellement : ( 797.167 , 869.39 )
le gardien n(1)[Lezard] se trouve a la position (12 , 8 )
le chasseur se trouve a la position : ( 80 , 86 ) ; reellement : ( 800.522 , 867.212 )
le gardien n(1)[Lezard] se trouve a la position (12 , 8 )
le chasseur se trouve a la position : ( 81 , 86 ) ; reellement : ( 810.586 , 860.676 )
le gardien n(1)[Lezard] se trouve a la position (12 , 8 )
le chasseur se trouve a la position : ( 81 , 85 ) ; reellement : ( 813.94 , 858.498 )
le gardien n(1)[Lezard] se trouve a la position (12 , 8 )
PS C:\Users\Riados\Documents\cstrike game c++ project> ./"labh.exe" -l "labyrinthe.txt"   -f -a
file name : labyrinthe.txt
**********Game Log**********
____________Voici la matrice du Map____________
01   ]
02   ]
03   ]
04   ]
05   ]                                                                                                   
06   ]
07   ]
08   ]
09   ]
10   ]
11   ]
12   ]
13   ]
14   ]
15   ]
16   ]
17   ]
18   ]
19   ]
20   ]
21   ]
22   ]
23   ]
24   ]
25   ]
26   ]
27   ]
28   ]
29   ]
30   ]
31   ]
32   ]
33   ]
34   ]
35   ]
36   ]
37   ]
38   ]
39   ]
40   ]
41   ]
42   ]
43   ]
44   ]
45   ]
46   ]
47   ]
48   ]
49   ]
50   ]
51   ]
52   ]
53   ]
54   ]
55   ]
56   ]
57   ]
58   ]
59   ]
60   ]
61   ]
62   ]
63   ]
64   ]                                                                                                   
65   ]
66   ]
67   ]
68   ]
69   ]
70   ]
71   ]
72   ]
73   ]
74   ]
75   ]
76   ]
77   ]
78   ]
79   ]
80   ]
81   ]
82   ]
83   ]                                                                                                   
84   ]
85   ]
86   ]
87   ]
88   ]
89   ]
90   ]
91   ]
92   ]
93   ]
94   ]                                                                                                   
95   ]
96   ]
97   ]                                                                                                   
98   ]
99   ]
____________Fin de la matrice____________
M[1] [6] = ' '
Reading the file : labyrinthe.txt
____________________Inside File____________________
00   ]# un commentaire commence par #
01   ]
02   ]a affiche1.jpg    # texture de l'affiche 1
03   ]b affiche2.jpg    # texture de l'affiche 2
04   ]
05   ]
06   ]+-----------b------------------------------------------------------------+
07   ]|  x                                                                  G  +-----------------+
08   ]| C                                                                                        |
09   ]|    +----------------------------+----------+   +------------+-------------------------+  |
10   ]|x   |                            +----------+   +------------+                         |  |
11   ]|    |      +------------------+  |                           |                         |  |
12   ]|    |      |                  |  |                           |                         |  |
13   ]|    |      |         x        |  |    G                      |                         |  |
14   ]|    |      |                  |  |                           |                         |  |
15   ]|    | G    |                  |  |                           |                         |  |
16   ]|    |      |                  |  |                           a                         |  |
17   ]|    |      |                  |  +---------------------------+                         |  |
18   ]|    |      |                  |                              |                         |  |
19   ]|    +------+                  |           +--+               |                         |  |
20   ]|  x                           |           |  +------------+  |                         |  |
21   ]|                    x         |           |  +------------+  |                         |  |
22   ]|                              |           |                  |                         |  |
23   ]|  +--------a------------------+           |                  |                         |  |
24   ]|  |                                       |                  |                         |  |
25   ]|  |           ++                          +---------------+  |                         |  |
26   ]|  |           ||                                          |  |                         |  |
27   ]|  |           ||          G                               |  |                         |  |
28   ]|  |           ++                    +--------------+      |  |                         |  |
29   ]|  |                                 |              |      |  |                         |  |
30   ]|  |    G      ++                    |              |   G  |  |                         |  |
31   ]|  |           ||                    |              +---a--+  |                         |  |
32   ]|  |           a|                    |                        |                         |  |
33   ]|  |           ||                    |                        |                         |  |
34   ]|  +--------+  ||  +-----------------+---------------------+  +----------------+        |  |
35   ]|  +--------+  ++  +---------------------------------------+                   |        |  |
36   ]|                                                                              |        |  |
37   ]|                                                                              |        |  |
38   ]+-------------------------++   +-----a------+                 +----+           |        |  |
39   ]|                         ||   |            |        x        |    |      G    |        |  |
40   ]|                         ||   |            +--a---a-------+  |    |           |        |  |
41   ]a      G                  ++   |    G       +------a-------+  |    +--------+  |        |  |
42   ]|                              |                              |             |  |        |  |
43   ]|                              |                              |             |  |        |  |
44   ]|                         ++   +---------------------------+  |             |  |        |  |
45   ]|                         ||   +----a----------------------+  +------a--a---+  |        |  |
46   ]|                         ||                                                   +--------+  |
47   ]|        G                ||                                                               |
48   ]+--------------a----------++--------a-a-------------------------------------------------+  |
49   ]                                                                                        |  |
50   ]                                                                                        |  |
51   ]                                                                                        |  |
52   ]                                                                                        |  |
53   ]                                                                                        |  |
54   ]                                                                                        |  |
55   ]                                                                                        |  |
56   ]                                                                                        |  |
57   ]                                                                                        |  |
58   ]                                                                                        |  |
59   ]                                                                                        |  |
60   ]                                                                                        |  |
61   ]                                                                              +---------+  |
62   ]                                                                              |            |
63   ]                                                                              +            |
64   ]                                                                                  T        |
65   ]                                                                              +            |
66   ]                                                                              |         G  |
67   ]                                                                              +------------+
____________________End of File____________________
____________Voici la matrice du Map____________
01   ]+-----------b------------------------------------------------------------+
02   ]|  x                                                                  G  +-----------------+
03   ]| C                                                                                        |
04   ]|    +----------------------------+----------+   +------------+-------------------------+  |
05   ]|x   |                            +----------+   +------------+                         |  |
06   ]|    |      +------------------+  |                           |                         |  |
07   ]|    |      |                  |  |                           |                         |  |
08   ]|    |      |         x        |  |    G                      |                         |  |
09   ]|    |      |                  |  |                           |                         |  |
10   ]|    | G    |                  |  |                           |                         |  |
11   ]|    |      |                  |  |                           a                         |  |
12   ]|    |      |                  |  +---------------------------+                         |  |
13   ]|    |      |                  |                              |                         |  |
14   ]|    +------+                  |           +--+               |                         |  |
15   ]|  x                           |           |  +------------+  |                         |  |
16   ]|                    x         |           |  +------------+  |                         |  |
17   ]|                              |           |                  |                         |  |
18   ]|  +--------a------------------+           |                  |                         |  |
19   ]|  |                                       |                  |                         |  |
20   ]|  |           ++                          +---------------+  |                         |  |
21   ]|  |           ||                                          |  |                         |  |
22   ]|  |           ||          G                               |  |                         |  |
23   ]|  |           ++                    +--------------+      |  |                         |  |
24   ]|  |                                 |              |      |  |                         |  |
25   ]|  |    G      ++                    |              |   G  |  |                         |  |
26   ]|  |           ||                    |              +---a--+  |                         |  |
27   ]|  |           a|                    |                        |                         |  |
28   ]|  |           ||                    |                        |                         |  |
29   ]|  +--------+  ||  +-----------------+---------------------+  +----------------+        |  |
30   ]|  +--------+  ++  +---------------------------------------+                   |        |  |
31   ]|                                                                              |        |  |
32   ]|                                                                              |        |  |
33   ]+-------------------------++   +-----a------+                 +----+           |        |  |
34   ]|                         ||   |            |        x        |    |      G    |        |  |
35   ]|                         ||   |            +--a---a-------+  |    |           |        |  |
36   ]a      G                  ++   |    G       +------a-------+  |    +--------+  |        |  |
37   ]|                              |                              |             |  |        |  |
38   ]|                              |                              |             |  |        |  |
39   ]|                         ++   +---------------------------+  |             |  |        |  |
40   ]|                         ||   +----a----------------------+  +------a--a---+  |        |  |
41   ]|                         ||                                                   +--------+  |
42   ]|        G                ||                                                               |
43   ]+--------------a----------++--------a-a-------------------------------------------------+  |
44   ]                                                                                        |  |
45   ]                                                                                        |  |
46   ]                                                                                        |  |
47   ]                                                                                        |  |
48   ]                                                                                        |  |
49   ]                                                                                        |  |
50   ]                                                                                        |  |
51   ]                                                                                        |  |
52   ]                                                                                        |  |
53   ]                                                                                        |  |
54   ]                                                                                        |  |
55   ]                                                                                        |  |
56   ]                                                                              +---------+  |
57   ]                                                                              |            |
58   ]                                                                              +            |
59   ]                                                                                  T        |
60   ]                                                                              +            |
61   ]                                                                              |         G  |
62   ]                                                                              +------------+
63   ]
64   ]
65   ]
66   ]
67   ]
68   ]
69   ]                                                                                                   
70   ]                                                                                                   
71   ]
72   ]
73   ]
74   ]
75   ]
76   ]
77   ]
78   ]
79   ]
80   ]
81   ]
82   ]
83   ]
84   ]
85   ]
86   ]
87   ]
88   ]
89   ]
90   ]
91   ]
92   ]
93   ]
94   ]
95   ]
96   ]
97   ]
98   ]
99   ]
____________Fin de la matrice____________
_________________Inside Final Function_________________
wall number (0) having x = 1 ; y = 1
wall number (1) having x = 1 ; y = 2
wall number (2) having x = 1 ; y = 3
wall number (3) having x = 1 ; y = 4
wall number (4) having x = 1 ; y = 5
wall number (5) having x = 1 ; y = 6
wall number (6) having x = 1 ; y = 7
wall number (7) having x = 1 ; y = 8
wall number (8) having x = 1 ; y = 9
wall number (9) having x = 1 ; y = 10
wall number (10) having x = 1 ; y = 11
wall number (11) having x = 1 ; y = 12
wall number (14) having x = 1 ; y = 14
wall number (15) having x = 1 ; y = 15
wall number (16) having x = 1 ; y = 16
wall number (17) having x = 1 ; y = 17
wall number (18) having x = 1 ; y = 18
wall number (19) having x = 1 ; y = 19
wall number (20) having x = 1 ; y = 20
wall number (21) having x = 1 ; y = 21
wall number (22) having x = 1 ; y = 22
wall number (23) having x = 1 ; y = 23
wall number (24) having x = 1 ; y = 24
wall number (25) having x = 1 ; y = 25
wall number (26) having x = 1 ; y = 26
wall number (27) having x = 1 ; y = 27
wall number (28) having x = 1 ; y = 28
wall number (29) having x = 1 ; y = 29
wall number (30) having x = 1 ; y = 30
wall number (31) having x = 1 ; y = 31
wall number (32) having x = 1 ; y = 32
wall number (33) having x = 1 ; y = 33
wall number (34) having x = 1 ; y = 34
wall number (35) having x = 1 ; y = 35
wall number (36) having x = 1 ; y = 36
wall number (37) having x = 1 ; y = 37
wall number (38) having x = 1 ; y = 38
wall number (39) having x = 1 ; y = 39
wall number (40) having x = 1 ; y = 40
wall number (41) having x = 1 ; y = 41
wall number (42) having x = 1 ; y = 42
wall number (43) having x = 1 ; y = 43
wall number (44) having x = 1 ; y = 44
wall number (45) having x = 1 ; y = 45
wall number (46) having x = 1 ; y = 46
wall number (47) having x = 1 ; y = 47
wall number (48) having x = 1 ; y = 48
wall number (49) having x = 1 ; y = 49
wall number (50) having x = 1 ; y = 50
wall number (51) having x = 1 ; y = 51
wall number (52) having x = 1 ; y = 52
wall number (53) having x = 1 ; y = 53
wall number (54) having x = 1 ; y = 54
wall number (55) having x = 1 ; y = 55
wall number (56) having x = 1 ; y = 56
wall number (57) having x = 1 ; y = 57
wall number (58) having x = 1 ; y = 58
wall number (59) having x = 1 ; y = 59
wall number (60) having x = 1 ; y = 60
wall number (61) having x = 1 ; y = 61
wall number (62) having x = 1 ; y = 62
wall number (63) having x = 1 ; y = 63
wall number (64) having x = 1 ; y = 64
wall number (65) having x = 1 ; y = 65
wall number (66) having x = 1 ; y = 66
wall number (67) having x = 1 ; y = 67
wall number (68) having x = 1 ; y = 68
wall number (69) having x = 1 ; y = 69
wall number (70) having x = 1 ; y = 70
wall number (71) having x = 1 ; y = 71
wall number (72) having x = 1 ; y = 72
wall number (73) having x = 1 ; y = 73
wall number (74) having x = 1 ; y = 74
wall number (125) having x = 2 ; y = 1
wall number (126) having x = 2 ; y = 74
wall number (127) having x = 2 ; y = 75
wall number (128) having x = 2 ; y = 76
wall number (129) having x = 2 ; y = 77
wall number (130) having x = 2 ; y = 78
wall number (131) having x = 2 ; y = 79
wall number (132) having x = 2 ; y = 80
wall number (133) having x = 2 ; y = 81
wall number (134) having x = 2 ; y = 82
wall number (135) having x = 2 ; y = 83
wall number (136) having x = 2 ; y = 84
wall number (137) having x = 2 ; y = 85
wall number (138) having x = 2 ; y = 86
wall number (139) having x = 2 ; y = 87
wall number (140) having x = 2 ; y = 88
wall number (141) having x = 2 ; y = 89
wall number (142) having x = 2 ; y = 90
wall number (143) having x = 2 ; y = 91
wall number (144) having x = 2 ; y = 92
wall number (159) having x = 3 ; y = 1
wall number (160) having x = 3 ; y = 92
wall number (175) having x = 4 ; y = 1
wall number (176) having x = 4 ; y = 6
wall number (177) having x = 4 ; y = 7
wall number (178) having x = 4 ; y = 8
wall number (179) having x = 4 ; y = 9
wall number (180) having x = 4 ; y = 10
wall number (181) having x = 4 ; y = 11
wall number (182) having x = 4 ; y = 12
wall number (183) having x = 4 ; y = 13
wall number (184) having x = 4 ; y = 14
wall number (185) having x = 4 ; y = 15
wall number (186) having x = 4 ; y = 16
wall number (187) having x = 4 ; y = 17
wall number (188) having x = 4 ; y = 18
wall number (189) having x = 4 ; y = 19
wall number (190) having x = 4 ; y = 20
wall number (191) having x = 4 ; y = 21
wall number (192) having x = 4 ; y = 22
wall number (193) having x = 4 ; y = 23
wall number (194) having x = 4 ; y = 24
wall number (195) having x = 4 ; y = 25
wall number (196) having x = 4 ; y = 26
wall number (197) having x = 4 ; y = 27
wall number (198) having x = 4 ; y = 28
wall number (199) having x = 4 ; y = 29
wall number (200) having x = 4 ; y = 30
wall number (201) having x = 4 ; y = 31
wall number (202) having x = 4 ; y = 32
wall number (203) having x = 4 ; y = 33
wall number (204) having x = 4 ; y = 34
wall number (205) having x = 4 ; y = 35
wall number (206) having x = 4 ; y = 36
wall number (207) having x = 4 ; y = 37
wall number (208) having x = 4 ; y = 38
wall number (209) having x = 4 ; y = 39
wall number (210) having x = 4 ; y = 40
wall number (211) having x = 4 ; y = 41
wall number (212) having x = 4 ; y = 42
wall number (213) having x = 4 ; y = 43
wall number (214) having x = 4 ; y = 44
wall number (215) having x = 4 ; y = 45
wall number (216) having x = 4 ; y = 46
wall number (217) having x = 4 ; y = 50
wall number (218) having x = 4 ; y = 51
wall number (219) having x = 4 ; y = 52
wall number (220) having x = 4 ; y = 53
wall number (221) having x = 4 ; y = 54
wall number (222) having x = 4 ; y = 55
wall number (223) having x = 4 ; y = 56
wall number (224) having x = 4 ; y = 57
wall number (225) having x = 4 ; y = 58
wall number (226) having x = 4 ; y = 59
wall number (227) having x = 4 ; y = 60
wall number (228) having x = 4 ; y = 61
wall number (229) having x = 4 ; y = 62
wall number (230) having x = 4 ; y = 63
wall number (231) having x = 4 ; y = 64
wall number (232) having x = 4 ; y = 65
wall number (233) having x = 4 ; y = 66
wall number (234) having x = 4 ; y = 67
wall number (235) having x = 4 ; y = 68
wall number (236) having x = 4 ; y = 69
wall number (237) having x = 4 ; y = 70
wall number (238) having x = 4 ; y = 71
wall number (239) having x = 4 ; y = 72
wall number (240) having x = 4 ; y = 73
wall number (241) having x = 4 ; y = 74
wall number (242) having x = 4 ; y = 75
wall number (243) having x = 4 ; y = 76
wall number (244) having x = 4 ; y = 77
wall number (245) having x = 4 ; y = 78
wall number (246) having x = 4 ; y = 79
wall number (247) having x = 4 ; y = 80
wall number (248) having x = 4 ; y = 81
wall number (249) having x = 4 ; y = 82
wall number (250) having x = 4 ; y = 83
wall number (251) having x = 4 ; y = 84
wall number (252) having x = 4 ; y = 85
wall number (253) having x = 4 ; y = 86
wall number (254) having x = 4 ; y = 87
wall number (255) having x = 4 ; y = 88
wall number (256) having x = 4 ; y = 89
wall number (257) having x = 4 ; y = 92
wall number (272) having x = 5 ; y = 1
wall number (273) having x = 5 ; y = 6
wall number (274) having x = 5 ; y = 35
wall number (275) having x = 5 ; y = 36
wall number (276) having x = 5 ; y = 37
wall number (277) having x = 5 ; y = 38
wall number (278) having x = 5 ; y = 39
wall number (279) having x = 5 ; y = 40
wall number (280) having x = 5 ; y = 41
wall number (281) having x = 5 ; y = 42
wall number (282) having x = 5 ; y = 43
wall number (283) having x = 5 ; y = 44
wall number (284) having x = 5 ; y = 45
wall number (285) having x = 5 ; y = 46
wall number (286) having x = 5 ; y = 50
wall number (287) having x = 5 ; y = 51
wall number (288) having x = 5 ; y = 52
wall number (289) having x = 5 ; y = 53
wall number (290) having x = 5 ; y = 54
wall number (291) having x = 5 ; y = 55
wall number (292) having x = 5 ; y = 56
wall number (293) having x = 5 ; y = 57
wall number (294) having x = 5 ; y = 58
wall number (295) having x = 5 ; y = 59
wall number (296) having x = 5 ; y = 60
wall number (297) having x = 5 ; y = 61
wall number (298) having x = 5 ; y = 62
wall number (299) having x = 5 ; y = 63
wall number (300) having x = 5 ; y = 89
wall number (301) having x = 5 ; y = 92
wall number (316) having x = 6 ; y = 1
wall number (317) having x = 6 ; y = 6
wall number (318) having x = 6 ; y = 13
wall number (319) having x = 6 ; y = 14
wall number (320) having x = 6 ; y = 15
wall number (321) having x = 6 ; y = 16
wall number (322) having x = 6 ; y = 17
wall number (323) having x = 6 ; y = 18
wall number (324) having x = 6 ; y = 19
wall number (325) having x = 6 ; y = 20
wall number (326) having x = 6 ; y = 21
wall number (327) having x = 6 ; y = 22
wall number (328) having x = 6 ; y = 23
wall number (329) having x = 6 ; y = 24
wall number (330) having x = 6 ; y = 25
wall number (331) having x = 6 ; y = 26
wall number (332) having x = 6 ; y = 27
wall number (333) having x = 6 ; y = 28
wall number (334) having x = 6 ; y = 29
wall number (335) having x = 6 ; y = 30
wall number (336) having x = 6 ; y = 31
wall number (337) having x = 6 ; y = 32
wall number (338) having x = 6 ; y = 35
wall number (339) having x = 6 ; y = 63
wall number (340) having x = 6 ; y = 89
wall number (341) having x = 6 ; y = 92
wall number (356) having x = 7 ; y = 1
wall number (357) having x = 7 ; y = 6
wall number (358) having x = 7 ; y = 13
wall number (359) having x = 7 ; y = 32
wall number (360) having x = 7 ; y = 35
wall number (361) having x = 7 ; y = 63
wall number (362) having x = 7 ; y = 89
wall number (363) having x = 7 ; y = 92
wall number (378) having x = 8 ; y = 1
wall number (379) having x = 8 ; y = 6
wall number (380) having x = 8 ; y = 13
wall number (381) having x = 8 ; y = 32
wall number (382) having x = 8 ; y = 35
wall number (383) having x = 8 ; y = 63
wall number (384) having x = 8 ; y = 89
wall number (385) having x = 8 ; y = 92
wall number (400) having x = 9 ; y = 1
wall number (401) having x = 9 ; y = 6
wall number (402) having x = 9 ; y = 13
wall number (403) having x = 9 ; y = 32
wall number (404) having x = 9 ; y = 35
wall number (405) having x = 9 ; y = 63
wall number (406) having x = 9 ; y = 89
wall number (407) having x = 9 ; y = 92
wall number (422) having x = 10 ; y = 1
wall number (423) having x = 10 ; y = 6
wall number (424) having x = 10 ; y = 13
wall number (425) having x = 10 ; y = 32
wall number (426) having x = 10 ; y = 35
wall number (427) having x = 10 ; y = 63
wall number (428) having x = 10 ; y = 89
wall number (429) having x = 10 ; y = 92
wall number (444) having x = 11 ; y = 1
wall number (445) having x = 11 ; y = 6
wall number (446) having x = 11 ; y = 13
wall number (447) having x = 11 ; y = 32
wall number (448) having x = 11 ; y = 35
wall number (451) having x = 11 ; y = 89
wall number (452) having x = 11 ; y = 92
wall number (467) having x = 12 ; y = 1
wall number (468) having x = 12 ; y = 6
wall number (469) having x = 12 ; y = 13
wall number (470) having x = 12 ; y = 32
wall number (471) having x = 12 ; y = 35
wall number (472) having x = 12 ; y = 36
wall number (473) having x = 12 ; y = 37
wall number (474) having x = 12 ; y = 38
wall number (475) having x = 12 ; y = 39
wall number (476) having x = 12 ; y = 40
wall number (477) having x = 12 ; y = 41
wall number (478) having x = 12 ; y = 42
wall number (479) having x = 12 ; y = 43
wall number (480) having x = 12 ; y = 44
wall number (481) having x = 12 ; y = 45
wall number (482) having x = 12 ; y = 46
wall number (483) having x = 12 ; y = 47
wall number (484) having x = 12 ; y = 48
wall number (485) having x = 12 ; y = 49
wall number (486) having x = 12 ; y = 50
wall number (487) having x = 12 ; y = 51
wall number (488) having x = 12 ; y = 52
wall number (489) having x = 12 ; y = 53
wall number (490) having x = 12 ; y = 54
wall number (491) having x = 12 ; y = 55
wall number (492) having x = 12 ; y = 56
wall number (493) having x = 12 ; y = 57
wall number (494) having x = 12 ; y = 58
wall number (495) having x = 12 ; y = 59
wall number (496) having x = 12 ; y = 60
wall number (497) having x = 12 ; y = 61
wall number (498) having x = 12 ; y = 62
wall number (499) having x = 12 ; y = 63
wall number (500) having x = 12 ; y = 89
wall number (501) having x = 12 ; y = 92
wall number (516) having x = 13 ; y = 1
wall number (517) having x = 13 ; y = 6
wall number (518) having x = 13 ; y = 13
wall number (519) having x = 13 ; y = 32
wall number (520) having x = 13 ; y = 63
wall number (521) having x = 13 ; y = 89
wall number (522) having x = 13 ; y = 92
wall number (537) having x = 14 ; y = 1
wall number (538) having x = 14 ; y = 6
wall number (539) having x = 14 ; y = 7
wall number (540) having x = 14 ; y = 8
wall number (541) having x = 14 ; y = 9
wall number (542) having x = 14 ; y = 10
wall number (543) having x = 14 ; y = 11
wall number (544) having x = 14 ; y = 12
wall number (545) having x = 14 ; y = 13
wall number (546) having x = 14 ; y = 32
wall number (547) having x = 14 ; y = 44
wall number (548) having x = 14 ; y = 45
wall number (549) having x = 14 ; y = 46
wall number (550) having x = 14 ; y = 47
wall number (551) having x = 14 ; y = 63
wall number (552) having x = 14 ; y = 89
wall number (553) having x = 14 ; y = 92
wall number (568) having x = 15 ; y = 1
wall number (569) having x = 15 ; y = 32
wall number (570) having x = 15 ; y = 44
wall number (571) having x = 15 ; y = 47
wall number (572) having x = 15 ; y = 48
wall number (573) having x = 15 ; y = 49
wall number (574) having x = 15 ; y = 50
wall number (575) having x = 15 ; y = 51
wall number (576) having x = 15 ; y = 52
wall number (577) having x = 15 ; y = 53
wall number (578) having x = 15 ; y = 54
wall number (579) having x = 15 ; y = 55
wall number (580) having x = 15 ; y = 56
wall number (581) having x = 15 ; y = 57
wall number (582) having x = 15 ; y = 58
wall number (583) having x = 15 ; y = 59
wall number (584) having x = 15 ; y = 60
wall number (585) having x = 15 ; y = 63
wall number (586) having x = 15 ; y = 89
wall number (587) having x = 15 ; y = 92
wall number (602) having x = 16 ; y = 1
wall number (603) having x = 16 ; y = 32
wall number (604) having x = 16 ; y = 44
wall number (605) having x = 16 ; y = 47
wall number (606) having x = 16 ; y = 48
wall number (607) having x = 16 ; y = 49
wall number (608) having x = 16 ; y = 50
wall number (609) having x = 16 ; y = 51
wall number (610) having x = 16 ; y = 52
wall number (611) having x = 16 ; y = 53
wall number (612) having x = 16 ; y = 54
wall number (613) having x = 16 ; y = 55
wall number (614) having x = 16 ; y = 56
wall number (615) having x = 16 ; y = 57
wall number (616) having x = 16 ; y = 58
wall number (617) having x = 16 ; y = 59
wall number (618) having x = 16 ; y = 60
wall number (619) having x = 16 ; y = 63
wall number (620) having x = 16 ; y = 89
wall number (621) having x = 16 ; y = 92
wall number (636) having x = 17 ; y = 1
wall number (637) having x = 17 ; y = 32
wall number (638) having x = 17 ; y = 44
wall number (639) having x = 17 ; y = 63
wall number (640) having x = 17 ; y = 89
wall number (641) having x = 17 ; y = 92
wall number (656) having x = 18 ; y = 1
wall number (657) having x = 18 ; y = 4
wall number (658) having x = 18 ; y = 5
wall number (659) having x = 18 ; y = 6
wall number (660) having x = 18 ; y = 7
wall number (661) having x = 18 ; y = 8
wall number (662) having x = 18 ; y = 9
wall number (663) having x = 18 ; y = 10
wall number (664) having x = 18 ; y = 11
wall number (665) having x = 18 ; y = 12
wall number (668) having x = 18 ; y = 14
wall number (669) having x = 18 ; y = 15
wall number (670) having x = 18 ; y = 16
wall number (671) having x = 18 ; y = 17
wall number (672) having x = 18 ; y = 18
wall number (673) having x = 18 ; y = 19
wall number (674) having x = 18 ; y = 20
wall number (675) having x = 18 ; y = 21
wall number (676) having x = 18 ; y = 22
wall number (677) having x = 18 ; y = 23
wall number (678) having x = 18 ; y = 24
wall number (679) having x = 18 ; y = 25
wall number (680) having x = 18 ; y = 26
wall number (681) having x = 18 ; y = 27
wall number (682) having x = 18 ; y = 28
wall number (683) having x = 18 ; y = 29
wall number (684) having x = 18 ; y = 30
wall number (685) having x = 18 ; y = 31
wall number (686) having x = 18 ; y = 32
wall number (687) having x = 18 ; y = 44
wall number (688) having x = 18 ; y = 63
wall number (689) having x = 18 ; y = 89
wall number (690) having x = 18 ; y = 92
wall number (705) having x = 19 ; y = 1
wall number (706) having x = 19 ; y = 4
wall number (707) having x = 19 ; y = 44
wall number (708) having x = 19 ; y = 63
wall number (709) having x = 19 ; y = 89
wall number (710) having x = 19 ; y = 92
wall number (725) having x = 20 ; y = 1
wall number (726) having x = 20 ; y = 4
wall number (727) having x = 20 ; y = 16
wall number (728) having x = 20 ; y = 17
wall number (729) having x = 20 ; y = 44
wall number (730) having x = 20 ; y = 45
wall number (731) having x = 20 ; y = 46
wall number (732) having x = 20 ; y = 47
wall number (733) having x = 20 ; y = 48
wall number (734) having x = 20 ; y = 49
wall number (735) having x = 20 ; y = 50
wall number (736) having x = 20 ; y = 51
wall number (737) having x = 20 ; y = 52
wall number (738) having x = 20 ; y = 53
wall number (739) having x = 20 ; y = 54
wall number (740) having x = 20 ; y = 55
wall number (741) having x = 20 ; y = 56
wall number (742) having x = 20 ; y = 57
wall number (743) having x = 20 ; y = 58
wall number (744) having x = 20 ; y = 59
wall number (745) having x = 20 ; y = 60
wall number (746) having x = 20 ; y = 63
wall number (747) having x = 20 ; y = 89
wall number (748) having x = 20 ; y = 92
wall number (763) having x = 21 ; y = 1
wall number (764) having x = 21 ; y = 4
wall number (765) having x = 21 ; y = 16
wall number (766) having x = 21 ; y = 17
wall number (767) having x = 21 ; y = 60
wall number (768) having x = 21 ; y = 63
wall number (769) having x = 21 ; y = 89
wall number (770) having x = 21 ; y = 92
wall number (785) having x = 22 ; y = 1
wall number (786) having x = 22 ; y = 4
wall number (787) having x = 22 ; y = 16
wall number (788) having x = 22 ; y = 17
wall number (789) having x = 22 ; y = 60
wall number (790) having x = 22 ; y = 63
wall number (791) having x = 22 ; y = 89
wall number (792) having x = 22 ; y = 92
wall number (807) having x = 23 ; y = 1
wall number (808) having x = 23 ; y = 4
wall number (809) having x = 23 ; y = 16
wall number (810) having x = 23 ; y = 17
wall number (811) having x = 23 ; y = 38
wall number (812) having x = 23 ; y = 39
wall number (813) having x = 23 ; y = 40
wall number (814) having x = 23 ; y = 41
wall number (815) having x = 23 ; y = 42
wall number (816) having x = 23 ; y = 43
wall number (817) having x = 23 ; y = 44
wall number (818) having x = 23 ; y = 45
wall number (819) having x = 23 ; y = 46
wall number (820) having x = 23 ; y = 47
wall number (821) having x = 23 ; y = 48
wall number (822) having x = 23 ; y = 49
wall number (823) having x = 23 ; y = 50
wall number (824) having x = 23 ; y = 51
wall number (825) having x = 23 ; y = 52
wall number (826) having x = 23 ; y = 53
wall number (827) having x = 23 ; y = 60
wall number (828) having x = 23 ; y = 63
wall number (829) having x = 23 ; y = 89
wall number (830) having x = 23 ; y = 92
wall number (845) having x = 24 ; y = 1
wall number (846) having x = 24 ; y = 4
wall number (847) having x = 24 ; y = 38
wall number (848) having x = 24 ; y = 53
wall number (849) having x = 24 ; y = 60
wall number (850) having x = 24 ; y = 63
wall number (851) having x = 24 ; y = 89
wall number (852) having x = 24 ; y = 92
wall number (867) having x = 25 ; y = 1
wall number (868) having x = 25 ; y = 4
wall number (869) having x = 25 ; y = 16
wall number (870) having x = 25 ; y = 17
wall number (871) having x = 25 ; y = 38
wall number (872) having x = 25 ; y = 53
wall number (873) having x = 25 ; y = 60
wall number (874) having x = 25 ; y = 63
wall number (875) having x = 25 ; y = 89
wall number (876) having x = 25 ; y = 92
wall number (891) having x = 26 ; y = 1
wall number (892) having x = 26 ; y = 4
wall number (893) having x = 26 ; y = 16
wall number (894) having x = 26 ; y = 17
wall number (895) having x = 26 ; y = 38
wall number (896) having x = 26 ; y = 53
wall number (897) having x = 26 ; y = 54
wall number (898) having x = 26 ; y = 55
wall number (899) having x = 26 ; y = 56
wall number (902) having x = 26 ; y = 58
wall number (903) having x = 26 ; y = 59
wall number (904) having x = 26 ; y = 60
wall number (905) having x = 26 ; y = 63
wall number (906) having x = 26 ; y = 89
wall number (907) having x = 26 ; y = 92
wall number (922) having x = 27 ; y = 1
wall number (923) having x = 27 ; y = 4
wall number (926) having x = 27 ; y = 17
wall number (927) having x = 27 ; y = 38
wall number (928) having x = 27 ; y = 63
wall number (929) having x = 27 ; y = 89
wall number (930) having x = 27 ; y = 92
wall number (945) having x = 28 ; y = 1
wall number (946) having x = 28 ; y = 4
wall number (947) having x = 28 ; y = 16
wall number (948) having x = 28 ; y = 17
wall number (949) having x = 28 ; y = 38
wall number (950) having x = 28 ; y = 63
wall number (951) having x = 28 ; y = 89
wall number (952) having x = 28 ; y = 92
wall number (967) having x = 29 ; y = 1
wall number (968) having x = 29 ; y = 4
wall number (969) having x = 29 ; y = 5
wall number (970) having x = 29 ; y = 6
wall number (971) having x = 29 ; y = 7
wall number (972) having x = 29 ; y = 8
wall number (973) having x = 29 ; y = 9
wall number (974) having x = 29 ; y = 10
wall number (975) having x = 29 ; y = 11
wall number (976) having x = 29 ; y = 12
wall number (977) having x = 29 ; y = 13
wall number (978) having x = 29 ; y = 16
wall number (979) having x = 29 ; y = 17
wall number (980) having x = 29 ; y = 20
wall number (981) having x = 29 ; y = 21
wall number (982) having x = 29 ; y = 22
wall number (983) having x = 29 ; y = 23
wall number (984) having x = 29 ; y = 24
wall number (985) having x = 29 ; y = 25
wall number (986) having x = 29 ; y = 26
wall number (987) having x = 29 ; y = 27
wall number (988) having x = 29 ; y = 28
wall number (989) having x = 29 ; y = 29
wall number (990) having x = 29 ; y = 30
wall number (991) having x = 29 ; y = 31
wall number (992) having x = 29 ; y = 32
wall number (993) having x = 29 ; y = 33
wall number (994) having x = 29 ; y = 34
wall number (995) having x = 29 ; y = 35
wall number (996) having x = 29 ; y = 36
wall number (997) having x = 29 ; y = 37
wall number (998) having x = 29 ; y = 38
wall number (999) having x = 29 ; y = 39
wall number (1000) having x = 29 ; y = 40
wall number (1001) having x = 29 ; y = 41
wall number (1002) having x = 29 ; y = 42
wall number (1003) having x = 29 ; y = 43
wall number (1004) having x = 29 ; y = 44
wall number (1005) having x = 29 ; y = 45
wall number (1006) having x = 29 ; y = 46
wall number (1007) having x = 29 ; y = 47
wall number (1008) having x = 29 ; y = 48
wall number (1009) having x = 29 ; y = 49
wall number (1010) having x = 29 ; y = 50
wall number (1011) having x = 29 ; y = 51
wall number (1012) having x = 29 ; y = 52
wall number (1013) having x = 29 ; y = 53
wall number (1014) having x = 29 ; y = 54
wall number (1015) having x = 29 ; y = 55
wall number (1016) having x = 29 ; y = 56
wall number (1017) having x = 29 ; y = 57
wall number (1018) having x = 29 ; y = 58
wall number (1019) having x = 29 ; y = 59
wall number (1020) having x = 29 ; y = 60
wall number (1021) having x = 29 ; y = 63
wall number (1022) having x = 29 ; y = 64
wall number (1023) having x = 29 ; y = 65
wall number (1024) having x = 29 ; y = 66
wall number (1025) having x = 29 ; y = 67
wall number (1026) having x = 29 ; y = 68
wall number (1027) having x = 29 ; y = 69
wall number (1028) having x = 29 ; y = 70
wall number (1029) having x = 29 ; y = 71
wall number (1030) having x = 29 ; y = 72
wall number (1031) having x = 29 ; y = 73
wall number (1032) having x = 29 ; y = 74
wall number (1033) having x = 29 ; y = 75
wall number (1034) having x = 29 ; y = 76
wall number (1035) having x = 29 ; y = 77
wall number (1036) having x = 29 ; y = 78
wall number (1037) having x = 29 ; y = 79
wall number (1038) having x = 29 ; y = 80
wall number (1039) having x = 29 ; y = 89
wall number (1040) having x = 29 ; y = 92
wall number (1055) having x = 30 ; y = 1
wall number (1056) having x = 30 ; y = 4
wall number (1057) having x = 30 ; y = 5
wall number (1058) having x = 30 ; y = 6
wall number (1059) having x = 30 ; y = 7
wall number (1060) having x = 30 ; y = 8
wall number (1061) having x = 30 ; y = 9
wall number (1062) having x = 30 ; y = 10
wall number (1063) having x = 30 ; y = 11
wall number (1064) having x = 30 ; y = 12
wall number (1065) having x = 30 ; y = 13
wall number (1066) having x = 30 ; y = 16
wall number (1067) having x = 30 ; y = 17
wall number (1068) having x = 30 ; y = 20
wall number (1069) having x = 30 ; y = 21
wall number (1070) having x = 30 ; y = 22
wall number (1071) having x = 30 ; y = 23
wall number (1072) having x = 30 ; y = 24
wall number (1073) having x = 30 ; y = 25
wall number (1074) having x = 30 ; y = 26
wall number (1075) having x = 30 ; y = 27
wall number (1076) having x = 30 ; y = 28
wall number (1077) having x = 30 ; y = 29
wall number (1078) having x = 30 ; y = 30
wall number (1079) having x = 30 ; y = 31
wall number (1080) having x = 30 ; y = 32
wall number (1081) having x = 30 ; y = 33
wall number (1082) having x = 30 ; y = 34
wall number (1083) having x = 30 ; y = 35
wall number (1084) having x = 30 ; y = 36
wall number (1085) having x = 30 ; y = 37
wall number (1086) having x = 30 ; y = 38
wall number (1087) having x = 30 ; y = 39
wall number (1088) having x = 30 ; y = 40
wall number (1089) having x = 30 ; y = 41
wall number (1090) having x = 30 ; y = 42
wall number (1091) having x = 30 ; y = 43
wall number (1092) having x = 30 ; y = 44
wall number (1093) having x = 30 ; y = 45
wall number (1094) having x = 30 ; y = 46
wall number (1095) having x = 30 ; y = 47
wall number (1096) having x = 30 ; y = 48
wall number (1097) having x = 30 ; y = 49
wall number (1098) having x = 30 ; y = 50
wall number (1099) having x = 30 ; y = 51
wall number (1100) having x = 30 ; y = 52
wall number (1101) having x = 30 ; y = 53
wall number (1102) having x = 30 ; y = 54
wall number (1103) having x = 30 ; y = 55
wall number (1104) having x = 30 ; y = 56
wall number (1105) having x = 30 ; y = 57
wall number (1106) having x = 30 ; y = 58
wall number (1107) having x = 30 ; y = 59
wall number (1108) having x = 30 ; y = 60
wall number (1109) having x = 30 ; y = 80
wall number (1110) having x = 30 ; y = 89
wall number (1111) having x = 30 ; y = 92
wall number (1126) having x = 31 ; y = 1
wall number (1127) having x = 31 ; y = 80
wall number (1128) having x = 31 ; y = 89
wall number (1129) having x = 31 ; y = 92
wall number (1144) having x = 32 ; y = 1
wall number (1145) having x = 32 ; y = 80
wall number (1146) having x = 32 ; y = 89
wall number (1147) having x = 32 ; y = 92
wall number (1162) having x = 33 ; y = 1
wall number (1163) having x = 33 ; y = 2
wall number (1164) having x = 33 ; y = 3
wall number (1165) having x = 33 ; y = 4
wall number (1166) having x = 33 ; y = 5
wall number (1167) having x = 33 ; y = 6
wall number (1168) having x = 33 ; y = 7
wall number (1169) having x = 33 ; y = 8
wall number (1170) having x = 33 ; y = 9
wall number (1171) having x = 33 ; y = 10
wall number (1172) having x = 33 ; y = 11
wall number (1173) having x = 33 ; y = 12
wall number (1174) having x = 33 ; y = 13
wall number (1175) having x = 33 ; y = 14
wall number (1176) having x = 33 ; y = 15
wall number (1177) having x = 33 ; y = 16
wall number (1178) having x = 33 ; y = 17
wall number (1179) having x = 33 ; y = 18
wall number (1180) having x = 33 ; y = 19
wall number (1181) having x = 33 ; y = 20
wall number (1182) having x = 33 ; y = 21
wall number (1183) having x = 33 ; y = 22
wall number (1184) having x = 33 ; y = 23
wall number (1185) having x = 33 ; y = 24
wall number (1186) having x = 33 ; y = 25
wall number (1187) having x = 33 ; y = 26
wall number (1188) having x = 33 ; y = 27
wall number (1189) having x = 33 ; y = 28
wall number (1190) having x = 33 ; y = 32
wall number (1191) having x = 33 ; y = 33
wall number (1192) having x = 33 ; y = 34
wall number (1193) having x = 33 ; y = 35
wall number (1194) having x = 33 ; y = 36
wall number (1195) having x = 33 ; y = 37
wall number (1198) having x = 33 ; y = 39
wall number (1199) having x = 33 ; y = 40
wall number (1200) having x = 33 ; y = 41
wall number (1201) having x = 33 ; y = 42
wall number (1202) having x = 33 ; y = 43
wall number (1203) having x = 33 ; y = 44
wall number (1204) having x = 33 ; y = 45
wall number (1205) having x = 33 ; y = 63
wall number (1206) having x = 33 ; y = 64
wall number (1207) having x = 33 ; y = 65
wall number (1208) having x = 33 ; y = 66
wall number (1209) having x = 33 ; y = 67
wall number (1210) having x = 33 ; y = 68
wall number (1211) having x = 33 ; y = 80
wall number (1212) having x = 33 ; y = 89
wall number (1213) having x = 33 ; y = 92
wall number (1228) having x = 34 ; y = 1
wall number (1229) having x = 34 ; y = 27
wall number (1230) having x = 34 ; y = 28
wall number (1231) having x = 34 ; y = 32
wall number (1232) having x = 34 ; y = 45
wall number (1233) having x = 34 ; y = 63
wall number (1234) having x = 34 ; y = 68
wall number (1235) having x = 34 ; y = 80
wall number (1236) having x = 34 ; y = 89
wall number (1237) having x = 34 ; y = 92
wall number (1252) having x = 35 ; y = 1
wall number (1253) having x = 35 ; y = 27
wall number (1254) having x = 35 ; y = 28
wall number (1255) having x = 35 ; y = 32
wall number (1256) having x = 35 ; y = 45
wall number (1257) having x = 35 ; y = 46
wall number (1258) having x = 35 ; y = 47
wall number (1261) having x = 35 ; y = 49
wall number (1262) having x = 35 ; y = 50
wall number (1263) having x = 35 ; y = 51
wall number (1266) having x = 35 ; y = 53
wall number (1267) having x = 35 ; y = 54
wall number (1268) having x = 35 ; y = 55
wall number (1269) having x = 35 ; y = 56
wall number (1270) having x = 35 ; y = 57
wall number (1271) having x = 35 ; y = 58
wall number (1272) having x = 35 ; y = 59
wall number (1273) having x = 35 ; y = 60
wall number (1274) having x = 35 ; y = 63
wall number (1275) having x = 35 ; y = 68
wall number (1276) having x = 35 ; y = 80
wall number (1277) having x = 35 ; y = 89
wall number (1278) having x = 35 ; y = 92
wall number (1295) having x = 36 ; y = 27
wall number (1296) having x = 36 ; y = 28
wall number (1297) having x = 36 ; y = 32
wall number (1298) having x = 36 ; y = 45
wall number (1299) having x = 36 ; y = 46
wall number (1300) having x = 36 ; y = 47
wall number (1301) having x = 36 ; y = 48
wall number (1302) having x = 36 ; y = 49
wall number (1303) having x = 36 ; y = 50
wall number (1304) having x = 36 ; y = 51
wall number (1307) having x = 36 ; y = 53
wall number (1308) having x = 36 ; y = 54
wall number (1309) having x = 36 ; y = 55
wall number (1310) having x = 36 ; y = 56
wall number (1311) having x = 36 ; y = 57
wall number (1312) having x = 36 ; y = 58
wall number (1313) having x = 36 ; y = 59
wall number (1314) having x = 36 ; y = 60
wall number (1315) having x = 36 ; y = 63
wall number (1316) having x = 36 ; y = 68
wall number (1317) having x = 36 ; y = 69
wall number (1318) having x = 36 ; y = 70
wall number (1319) having x = 36 ; y = 71
wall number (1320) having x = 36 ; y = 72
wall number (1321) having x = 36 ; y = 73
wall number (1322) having x = 36 ; y = 74
wall number (1323) having x = 36 ; y = 75
wall number (1324) having x = 36 ; y = 76
wall number (1325) having x = 36 ; y = 77
wall number (1326) having x = 36 ; y = 80
wall number (1327) having x = 36 ; y = 89
wall number (1328) having x = 36 ; y = 92
wall number (1343) having x = 37 ; y = 1
wall number (1344) having x = 37 ; y = 32
wall number (1345) having x = 37 ; y = 63
wall number (1346) having x = 37 ; y = 77
wall number (1347) having x = 37 ; y = 80
wall number (1348) having x = 37 ; y = 89
wall number (1349) having x = 37 ; y = 92
wall number (1364) having x = 38 ; y = 1
wall number (1365) having x = 38 ; y = 32
wall number (1366) having x = 38 ; y = 63
wall number (1367) having x = 38 ; y = 77
wall number (1368) having x = 38 ; y = 80
wall number (1369) having x = 38 ; y = 89
wall number (1370) having x = 38 ; y = 92
wall number (1385) having x = 39 ; y = 1
wall number (1386) having x = 39 ; y = 27
wall number (1387) having x = 39 ; y = 28
wall number (1388) having x = 39 ; y = 32
wall number (1389) having x = 39 ; y = 33
wall number (1390) having x = 39 ; y = 34
wall number (1391) having x = 39 ; y = 35
wall number (1392) having x = 39 ; y = 36
wall number (1393) having x = 39 ; y = 37
wall number (1394) having x = 39 ; y = 38
wall number (1395) having x = 39 ; y = 39
wall number (1396) having x = 39 ; y = 40
wall number (1397) having x = 39 ; y = 41
wall number (1398) having x = 39 ; y = 42
wall number (1399) having x = 39 ; y = 43
wall number (1400) having x = 39 ; y = 44
wall number (1401) having x = 39 ; y = 45
wall number (1402) having x = 39 ; y = 46
wall number (1403) having x = 39 ; y = 47
wall number (1404) having x = 39 ; y = 48
wall number (1405) having x = 39 ; y = 49
wall number (1406) having x = 39 ; y = 50
wall number (1407) having x = 39 ; y = 51
wall number (1408) having x = 39 ; y = 52
wall number (1409) having x = 39 ; y = 53
wall number (1410) having x = 39 ; y = 54
wall number (1411) having x = 39 ; y = 55
wall number (1412) having x = 39 ; y = 56
wall number (1413) having x = 39 ; y = 57
wall number (1414) having x = 39 ; y = 58
wall number (1415) having x = 39 ; y = 59
wall number (1416) having x = 39 ; y = 60
wall number (1417) having x = 39 ; y = 63
wall number (1418) having x = 39 ; y = 77
wall number (1419) having x = 39 ; y = 80
wall number (1420) having x = 39 ; y = 89
wall number (1421) having x = 39 ; y = 92
wall number (1436) having x = 40 ; y = 1
wall number (1437) having x = 40 ; y = 27
wall number (1438) having x = 40 ; y = 28
wall number (1439) having x = 40 ; y = 32
wall number (1440) having x = 40 ; y = 33
wall number (1441) having x = 40 ; y = 34
wall number (1442) having x = 40 ; y = 35
wall number (1443) having x = 40 ; y = 36
wall number (1446) having x = 40 ; y = 38
wall number (1447) having x = 40 ; y = 39
wall number (1448) having x = 40 ; y = 40
wall number (1449) having x = 40 ; y = 41
wall number (1450) having x = 40 ; y = 42
wall number (1451) having x = 40 ; y = 43
wall number (1452) having x = 40 ; y = 44
wall number (1453) having x = 40 ; y = 45
wall number (1454) having x = 40 ; y = 46
wall number (1455) having x = 40 ; y = 47
wall number (1456) having x = 40 ; y = 48
wall number (1457) having x = 40 ; y = 49
wall number (1458) having x = 40 ; y = 50
wall number (1459) having x = 40 ; y = 51
wall number (1460) having x = 40 ; y = 52
wall number (1461) having x = 40 ; y = 53
wall number (1462) having x = 40 ; y = 54
wall number (1463) having x = 40 ; y = 55
wall number (1464) having x = 40 ; y = 56
wall number (1465) having x = 40 ; y = 57
wall number (1466) having x = 40 ; y = 58
wall number (1467) having x = 40 ; y = 59
wall number (1468) having x = 40 ; y = 60
wall number (1469) having x = 40 ; y = 63
wall number (1470) having x = 40 ; y = 64
wall number (1471) having x = 40 ; y = 65
wall number (1472) having x = 40 ; y = 66
wall number (1473) having x = 40 ; y = 67
wall number (1474) having x = 40 ; y = 68
wall number (1475) having x = 40 ; y = 69
wall number (1478) having x = 40 ; y = 71
wall number (1479) having x = 40 ; y = 72
wall number (1482) having x = 40 ; y = 74
wall number (1483) having x = 40 ; y = 75
wall number (1484) having x = 40 ; y = 76
wall number (1485) having x = 40 ; y = 77
wall number (1486) having x = 40 ; y = 80
wall number (1487) having x = 40 ; y = 89
wall number (1488) having x = 40 ; y = 92
wall number (1503) having x = 41 ; y = 1
wall number (1504) having x = 41 ; y = 27
wall number (1505) having x = 41 ; y = 28
wall number (1506) having x = 41 ; y = 80
wall number (1507) having x = 41 ; y = 81
wall number (1508) having x = 41 ; y = 82
wall number (1509) having x = 41 ; y = 83
wall number (1510) having x = 41 ; y = 84
wall number (1511) having x = 41 ; y = 85
wall number (1512) having x = 41 ; y = 86
wall number (1513) having x = 41 ; y = 87
wall number (1514) having x = 41 ; y = 88
wall number (1515) having x = 41 ; y = 89
wall number (1516) having x = 41 ; y = 92
wall number (1531) having x = 42 ; y = 1
wall number (1532) having x = 42 ; y = 27
wall number (1533) having x = 42 ; y = 28
wall number (1534) having x = 42 ; y = 92
wall number (1549) having x = 43 ; y = 1
wall number (1550) having x = 43 ; y = 2
wall number (1551) having x = 43 ; y = 3
wall number (1552) having x = 43 ; y = 4
wall number (1553) having x = 43 ; y = 5
wall number (1554) having x = 43 ; y = 6
wall number (1555) having x = 43 ; y = 7
wall number (1556) having x = 43 ; y = 8
wall number (1557) having x = 43 ; y = 9
wall number (1558) having x = 43 ; y = 10
wall number (1559) having x = 43 ; y = 11
wall number (1560) having x = 43 ; y = 12
wall number (1561) having x = 43 ; y = 13
wall number (1562) having x = 43 ; y = 14
wall number (1563) having x = 43 ; y = 15
wall number (1566) having x = 43 ; y = 17
wall number (1567) having x = 43 ; y = 18
wall number (1568) having x = 43 ; y = 19
wall number (1569) having x = 43 ; y = 20
wall number (1570) having x = 43 ; y = 21
wall number (1571) having x = 43 ; y = 22
wall number (1572) having x = 43 ; y = 23
wall number (1573) having x = 43 ; y = 24
wall number (1574) having x = 43 ; y = 25
wall number (1575) having x = 43 ; y = 26
wall number (1576) having x = 43 ; y = 27
wall number (1577) having x = 43 ; y = 28
wall number (1578) having x = 43 ; y = 29
wall number (1579) having x = 43 ; y = 30
wall number (1580) having x = 43 ; y = 31
wall number (1581) having x = 43 ; y = 32
wall number (1582) having x = 43 ; y = 33
wall number (1583) having x = 43 ; y = 34
wall number (1584) having x = 43 ; y = 35
wall number (1585) having x = 43 ; y = 36
wall number (1588) having x = 43 ; y = 38
wall number (1591) having x = 43 ; y = 40
wall number (1592) having x = 43 ; y = 41
wall number (1593) having x = 43 ; y = 42
wall number (1594) having x = 43 ; y = 43
wall number (1595) having x = 43 ; y = 44
wall number (1596) having x = 43 ; y = 45
wall number (1597) having x = 43 ; y = 46
wall number (1598) having x = 43 ; y = 47
wall number (1599) having x = 43 ; y = 48
wall number (1600) having x = 43 ; y = 49
wall number (1601) having x = 43 ; y = 50
wall number (1602) having x = 43 ; y = 51
wall number (1603) having x = 43 ; y = 52
wall number (1604) having x = 43 ; y = 53
wall number (1605) having x = 43 ; y = 54
wall number (1606) having x = 43 ; y = 55
wall number (1607) having x = 43 ; y = 56
wall number (1608) having x = 43 ; y = 57
wall number (1609) having x = 43 ; y = 58
wall number (1610) having x = 43 ; y = 59
wall number (1611) having x = 43 ; y = 60
wall number (1612) having x = 43 ; y = 61
wall number (1613) having x = 43 ; y = 62
wall number (1614) having x = 43 ; y = 63
wall number (1615) having x = 43 ; y = 64
wall number (1616) having x = 43 ; y = 65
wall number (1617) having x = 43 ; y = 66
wall number (1618) having x = 43 ; y = 67
wall number (1619) having x = 43 ; y = 68
wall number (1620) having x = 43 ; y = 69
wall number (1621) having x = 43 ; y = 70
wall number (1622) having x = 43 ; y = 71
wall number (1623) having x = 43 ; y = 72
wall number (1624) having x = 43 ; y = 73
wall number (1625) having x = 43 ; y = 74
wall number (1626) having x = 43 ; y = 75
wall number (1627) having x = 43 ; y = 76
wall number (1628) having x = 43 ; y = 77
wall number (1629) having x = 43 ; y = 78
wall number (1630) having x = 43 ; y = 79
wall number (1631) having x = 43 ; y = 80
wall number (1632) having x = 43 ; y = 81
wall number (1633) having x = 43 ; y = 82
wall number (1634) having x = 43 ; y = 83
wall number (1635) having x = 43 ; y = 84
wall number (1636) having x = 43 ; y = 85
wall number (1637) having x = 43 ; y = 86
wall number (1638) having x = 43 ; y = 87
wall number (1639) having x = 43 ; y = 88
wall number (1640) having x = 43 ; y = 89
wall number (1641) having x = 43 ; y = 92
wall number (1656) having x = 44 ; y = 89
wall number (1657) having x = 44 ; y = 92
wall number (1672) having x = 45 ; y = 89
wall number (1673) having x = 45 ; y = 92
wall number (1688) having x = 46 ; y = 89
wall number (1689) having x = 46 ; y = 92
wall number (1704) having x = 47 ; y = 89
wall number (1705) having x = 47 ; y = 92
wall number (1720) having x = 48 ; y = 89
wall number (1721) having x = 48 ; y = 92
wall number (1736) having x = 49 ; y = 89
wall number (1737) having x = 49 ; y = 92
wall number (1752) having x = 50 ; y = 89
wall number (1753) having x = 50 ; y = 92
wall number (1768) having x = 51 ; y = 89
wall number (1769) having x = 51 ; y = 92
wall number (1784) having x = 52 ; y = 89
wall number (1785) having x = 52 ; y = 92
wall number (1800) having x = 53 ; y = 89
wall number (1801) having x = 53 ; y = 92
wall number (1816) having x = 54 ; y = 89
wall number (1817) having x = 54 ; y = 92
wall number (1832) having x = 55 ; y = 89
wall number (1833) having x = 55 ; y = 92
wall number (1848) having x = 56 ; y = 79
wall number (1849) having x = 56 ; y = 80
wall number (1850) having x = 56 ; y = 81
wall number (1851) having x = 56 ; y = 82
wall number (1852) having x = 56 ; y = 83
wall number (1853) having x = 56 ; y = 84
wall number (1854) having x = 56 ; y = 85
wall number (1855) having x = 56 ; y = 86
wall number (1856) having x = 56 ; y = 87
wall number (1857) having x = 56 ; y = 88
wall number (1858) having x = 56 ; y = 89
wall number (1859) having x = 56 ; y = 92
wall number (1874) having x = 57 ; y = 79
wall number (1875) having x = 57 ; y = 92
wall number (1890) having x = 58 ; y = 79
wall number (1891) having x = 58 ; y = 92
le tresor se trouve a : ( 59 , 83 ) wall number (1906) having x = 59 ; y = 92
wall number (1921) having x = 60 ; y = 79
wall number (1922) having x = 60 ; y = 92
wall number (1937) having x = 61 ; y = 79
wall number (1938) having x = 61 ; y = 92
wall number (1953) having x = 62 ; y = 79
wall number (1954) having x = 62 ; y = 80
wall number (1955) having x = 62 ; y = 81
wall number (1956) having x = 62 ; y = 82
wall number (1957) having x = 62 ; y = 83
wall number (1958) having x = 62 ; y = 84
wall number (1959) having x = 62 ; y = 85
wall number (1960) having x = 62 ; y = 86
wall number (1961) having x = 62 ; y = 87
wall number (1962) having x = 62 ; y = 88
wall number (1963) having x = 62 ; y = 89
wall number (1964) having x = 62 ; y = 90
wall number (1965) having x = 62 ; y = 91
wall number (1966) having x = 62 ; y = 92
congrats you just turned a 2d text into 3D !
_________________End of Final Function_________________
blocking walls s' First test :
x1 = 1; y1 = 1; x2 = 1; y2 = 2
_ConstAxe = 1 ; startIndex = 1 ; EndIndex = 2 ; Conditon = 1
after Revision ^_^
startIndex = 1 ; EndIndex = 2
 VarIndex = 1 ; _data[1][1] = 1
 VarIndex = 2 ; _data[1][2] = 1
blocking walls s' First test :
x1 = 1; y1 = 2; x2 = 1; y2 = 3
_ConstAxe = 1 ; startIndex = 2 ; EndIndex = 3 ; Conditon = 1
after Revision ^_^
startIndex = 2 ; EndIndex = 3
 VarIndex = 2 ; _data[1][2] = 1
 VarIndex = 3 ; _data[1][3] = 1
blocking walls s' First test :
x1 = 1; y1 = 3; x2 = 1; y2 = 4
_ConstAxe = 1 ; startIndex = 3 ; EndIndex = 4 ; Conditon = 1
after Revision ^_^
startIndex = 3 ; EndIndex = 4
 VarIndex = 3 ; _data[1][3] = 1
 VarIndex = 4 ; _data[1][4] = 1
blocking walls s' First test :
x1 = 1; y1 = 4; x2 = 1; y2 = 5
_ConstAxe = 1 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 1
after Revision ^_^
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[1][4] = 1
 VarIndex = 5 ; _data[1][5] = 1
blocking walls s' First test :
x1 = 1; y1 = 5; x2 = 1; y2 = 6
_ConstAxe = 1 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 1
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[1][5] = 1
 VarIndex = 6 ; _data[1][6] = 1
blocking walls s' First test :
x1 = 1; y1 = 6; x2 = 1; y2 = 7
_ConstAxe = 1 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[1][6] = 1
 VarIndex = 7 ; _data[1][7] = 1
blocking walls s' First test :
x1 = 1; y1 = 7; x2 = 1; y2 = 8
_ConstAxe = 1 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[1][7] = 1
 VarIndex = 8 ; _data[1][8] = 1
blocking walls s' First test :
x1 = 1; y1 = 8; x2 = 1; y2 = 9
_ConstAxe = 1 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[1][8] = 1
 VarIndex = 9 ; _data[1][9] = 1
blocking walls s' First test :
x1 = 1; y1 = 9; x2 = 1; y2 = 10
_ConstAxe = 1 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[1][9] = 1
 VarIndex = 10 ; _data[1][10] = 1
blocking walls s' First test :
x1 = 1; y1 = 10; x2 = 1; y2 = 11
_ConstAxe = 1 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[1][10] = 1
 VarIndex = 11 ; _data[1][11] = 1
blocking walls s' First test :
x1 = 1; y1 = 11; x2 = 1; y2 = 12
_ConstAxe = 1 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[1][11] = 1
 VarIndex = 12 ; _data[1][12] = 1
blocking walls s' First test :
x1 = 1; y1 = 12; x2 = 1; y2 = 13
_ConstAxe = 1 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^ 
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[1][12] = 1
 VarIndex = 13 ; _data[1][13] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 13; x2 = 1; y2 = 14
_ConstAxe = 1 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[1][13] = 1
 VarIndex = 14 ; _data[1][14] = 1
blocking walls s' First test :
x1 = 1; y1 = 14; x2 = 1; y2 = 15
_ConstAxe = 1 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 1
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[1][14] = 1
 VarIndex = 15 ; _data[1][15] = 1
blocking walls s' First test :
x1 = 1; y1 = 15; x2 = 1; y2 = 16
_ConstAxe = 1 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 1
after Revision ^_^ 
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[1][15] = 1
 VarIndex = 16 ; _data[1][16] = 1
blocking walls s' First test :
x1 = 1; y1 = 16; x2 = 1; y2 = 17
_ConstAxe = 1 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[1][16] = 1
 VarIndex = 17 ; _data[1][17] = 1
blocking walls s' First test :
x1 = 1; y1 = 17; x2 = 1; y2 = 18
_ConstAxe = 1 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[1][17] = 1
 VarIndex = 18 ; _data[1][18] = 1
blocking walls s' First test :
x1 = 1; y1 = 18; x2 = 1; y2 = 19
_ConstAxe = 1 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 1
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[1][18] = 1
 VarIndex = 19 ; _data[1][19] = 1
blocking walls s' First test :
x1 = 1; y1 = 19; x2 = 1; y2 = 20
_ConstAxe = 1 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 1
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[1][19] = 1
 VarIndex = 20 ; _data[1][20] = 1
blocking walls s' First test :
x1 = 1; y1 = 20; x2 = 1; y2 = 21
_ConstAxe = 1 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[1][20] = 1
 VarIndex = 21 ; _data[1][21] = 1
blocking walls s' First test :
x1 = 1; y1 = 21; x2 = 1; y2 = 22
_ConstAxe = 1 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[1][21] = 1
 VarIndex = 22 ; _data[1][22] = 1
blocking walls s' First test :
x1 = 1; y1 = 22; x2 = 1; y2 = 23
_ConstAxe = 1 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[1][22] = 1
 VarIndex = 23 ; _data[1][23] = 1
blocking walls s' First test :
x1 = 1; y1 = 23; x2 = 1; y2 = 24
_ConstAxe = 1 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[1][23] = 1
 VarIndex = 24 ; _data[1][24] = 1
blocking walls s' First test :
x1 = 1; y1 = 24; x2 = 1; y2 = 25
_ConstAxe = 1 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[1][24] = 1
 VarIndex = 25 ; _data[1][25] = 1
blocking walls s' First test :
x1 = 1; y1 = 25; x2 = 1; y2 = 26
_ConstAxe = 1 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[1][25] = 1
 VarIndex = 26 ; _data[1][26] = 1
blocking walls s' First test :
x1 = 1; y1 = 26; x2 = 1; y2 = 27
_ConstAxe = 1 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[1][26] = 1
 VarIndex = 27 ; _data[1][27] = 1
blocking walls s' First test :
x1 = 1; y1 = 27; x2 = 1; y2 = 28
_ConstAxe = 1 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[1][27] = 1
 VarIndex = 28 ; _data[1][28] = 1
blocking walls s' First test :
x1 = 1; y1 = 28; x2 = 1; y2 = 29
_ConstAxe = 1 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[1][28] = 1
 VarIndex = 29 ; _data[1][29] = 1
blocking walls s' First test :
x1 = 1; y1 = 29; x2 = 1; y2 = 30
_ConstAxe = 1 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 1
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[1][29] = 1
 VarIndex = 30 ; _data[1][30] = 1
blocking walls s' First test :
x1 = 1; y1 = 30; x2 = 1; y2 = 31
_ConstAxe = 1 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 1
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[1][30] = 1
 VarIndex = 31 ; _data[1][31] = 1
blocking walls s' First test :
x1 = 1; y1 = 31; x2 = 1; y2 = 32
_ConstAxe = 1 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 1
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[1][31] = 1
 VarIndex = 32 ; _data[1][32] = 1
blocking walls s' First test :
x1 = 1; y1 = 32; x2 = 1; y2 = 33
_ConstAxe = 1 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[1][32] = 1
 VarIndex = 33 ; _data[1][33] = 1
blocking walls s' First test :
x1 = 1; y1 = 33; x2 = 1; y2 = 34
_ConstAxe = 1 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[1][33] = 1
 VarIndex = 34 ; _data[1][34] = 1
blocking walls s' First test :
x1 = 1; y1 = 34; x2 = 1; y2 = 35
_ConstAxe = 1 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[1][34] = 1
 VarIndex = 35 ; _data[1][35] = 1
blocking walls s' First test :
x1 = 1; y1 = 35; x2 = 1; y2 = 36
_ConstAxe = 1 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[1][35] = 1
 VarIndex = 36 ; _data[1][36] = 1
blocking walls s' First test :
x1 = 1; y1 = 36; x2 = 1; y2 = 37
_ConstAxe = 1 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[1][36] = 1
 VarIndex = 37 ; _data[1][37] = 1
blocking walls s' First test :
x1 = 1; y1 = 37; x2 = 1; y2 = 38
_ConstAxe = 1 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[1][37] = 1
 VarIndex = 38 ; _data[1][38] = 1
blocking walls s' First test :
x1 = 1; y1 = 38; x2 = 1; y2 = 39
_ConstAxe = 1 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^ 
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[1][38] = 1
 VarIndex = 39 ; _data[1][39] = 1
blocking walls s' First test :
x1 = 1; y1 = 39; x2 = 1; y2 = 40
_ConstAxe = 1 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[1][39] = 1
 VarIndex = 40 ; _data[1][40] = 1
blocking walls s' First test :
x1 = 1; y1 = 40; x2 = 1; y2 = 41
_ConstAxe = 1 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[1][40] = 1
 VarIndex = 41 ; _data[1][41] = 1
blocking walls s' First test :
x1 = 1; y1 = 41; x2 = 1; y2 = 42
_ConstAxe = 1 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[1][41] = 1
 VarIndex = 42 ; _data[1][42] = 1
blocking walls s' First test :
x1 = 1; y1 = 42; x2 = 1; y2 = 43
_ConstAxe = 1 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[1][42] = 1
 VarIndex = 43 ; _data[1][43] = 1
blocking walls s' First test :
x1 = 1; y1 = 43; x2 = 1; y2 = 44
_ConstAxe = 1 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[1][43] = 1
 VarIndex = 44 ; _data[1][44] = 1
blocking walls s' First test :
x1 = 1; y1 = 44; x2 = 1; y2 = 45
_ConstAxe = 1 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^ 
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[1][44] = 1
 VarIndex = 45 ; _data[1][45] = 1
blocking walls s' First test :
x1 = 1; y1 = 45; x2 = 1; y2 = 46
_ConstAxe = 1 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[1][45] = 1
 VarIndex = 46 ; _data[1][46] = 1
blocking walls s' First test :
x1 = 1; y1 = 46; x2 = 1; y2 = 47
_ConstAxe = 1 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[1][46] = 1
 VarIndex = 47 ; _data[1][47] = 1
blocking walls s' First test :
x1 = 1; y1 = 47; x2 = 1; y2 = 48
_ConstAxe = 1 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[1][47] = 1
 VarIndex = 48 ; _data[1][48] = 1
blocking walls s' First test :
x1 = 1; y1 = 48; x2 = 1; y2 = 49
_ConstAxe = 1 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[1][48] = 1
 VarIndex = 49 ; _data[1][49] = 1
blocking walls s' First test :
x1 = 1; y1 = 49; x2 = 1; y2 = 50
_ConstAxe = 1 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[1][49] = 1
 VarIndex = 50 ; _data[1][50] = 1
blocking walls s' First test :
x1 = 1; y1 = 50; x2 = 1; y2 = 51
_ConstAxe = 1 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[1][50] = 1
 VarIndex = 51 ; _data[1][51] = 1
blocking walls s' First test :
x1 = 1; y1 = 51; x2 = 1; y2 = 52
_ConstAxe = 1 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[1][51] = 1
 VarIndex = 52 ; _data[1][52] = 1
blocking walls s' First test :
x1 = 1; y1 = 52; x2 = 1; y2 = 53
_ConstAxe = 1 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[1][52] = 1
 VarIndex = 53 ; _data[1][53] = 1
blocking walls s' First test :
x1 = 1; y1 = 53; x2 = 1; y2 = 54
_ConstAxe = 1 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^ 
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[1][53] = 1
 VarIndex = 54 ; _data[1][54] = 1
blocking walls s' First test :
x1 = 1; y1 = 54; x2 = 1; y2 = 55
_ConstAxe = 1 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[1][54] = 1
 VarIndex = 55 ; _data[1][55] = 1
blocking walls s' First test :
x1 = 1; y1 = 55; x2 = 1; y2 = 56
_ConstAxe = 1 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[1][55] = 1
 VarIndex = 56 ; _data[1][56] = 1
blocking walls s' First test :
x1 = 1; y1 = 56; x2 = 1; y2 = 57
_ConstAxe = 1 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[1][56] = 1
 VarIndex = 57 ; _data[1][57] = 1
blocking walls s' First test :
x1 = 1; y1 = 57; x2 = 1; y2 = 58
_ConstAxe = 1 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[1][57] = 1
 VarIndex = 58 ; _data[1][58] = 1
blocking walls s' First test :
x1 = 1; y1 = 58; x2 = 1; y2 = 59
_ConstAxe = 1 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[1][58] = 1
 VarIndex = 59 ; _data[1][59] = 1
blocking walls s' First test :
x1 = 1; y1 = 59; x2 = 1; y2 = 60
_ConstAxe = 1 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[1][59] = 1
 VarIndex = 60 ; _data[1][60] = 1
blocking walls s' First test :
x1 = 1; y1 = 60; x2 = 1; y2 = 61
_ConstAxe = 1 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^ 
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[1][60] = 1
 VarIndex = 61 ; _data[1][61] = 1
blocking walls s' First test :
x1 = 1; y1 = 61; x2 = 1; y2 = 62
_ConstAxe = 1 ; startIndex = 61 ; EndIndex = 62 ; Conditon = 1
after Revision ^_^
startIndex = 61 ; EndIndex = 62
 VarIndex = 61 ; _data[1][61] = 1
 VarIndex = 62 ; _data[1][62] = 1
blocking walls s' First test :
x1 = 1; y1 = 62; x2 = 1; y2 = 63
_ConstAxe = 1 ; startIndex = 62 ; EndIndex = 63 ; Conditon = 1
after Revision ^_^
startIndex = 62 ; EndIndex = 63
 VarIndex = 62 ; _data[1][62] = 1
 VarIndex = 63 ; _data[1][63] = 1
blocking walls s' First test :
x1 = 1; y1 = 63; x2 = 1; y2 = 64
_ConstAxe = 1 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[1][63] = 1
 VarIndex = 64 ; _data[1][64] = 1
blocking walls s' First test :
x1 = 1; y1 = 64; x2 = 1; y2 = 65
_ConstAxe = 1 ; startIndex = 64 ; EndIndex = 65 ; Conditon = 1
after Revision ^_^
startIndex = 64 ; EndIndex = 65
 VarIndex = 64 ; _data[1][64] = 1
 VarIndex = 65 ; _data[1][65] = 1
blocking walls s' First test :
x1 = 1; y1 = 65; x2 = 1; y2 = 66
_ConstAxe = 1 ; startIndex = 65 ; EndIndex = 66 ; Conditon = 1
after Revision ^_^
startIndex = 65 ; EndIndex = 66
 VarIndex = 65 ; _data[1][65] = 1
 VarIndex = 66 ; _data[1][66] = 1
blocking walls s' First test :
x1 = 1; y1 = 66; x2 = 1; y2 = 67
_ConstAxe = 1 ; startIndex = 66 ; EndIndex = 67 ; Conditon = 1
after Revision ^_^
startIndex = 66 ; EndIndex = 67
 VarIndex = 66 ; _data[1][66] = 1
 VarIndex = 67 ; _data[1][67] = 1
blocking walls s' First test :
x1 = 1; y1 = 67; x2 = 1; y2 = 68
_ConstAxe = 1 ; startIndex = 67 ; EndIndex = 68 ; Conditon = 1
after Revision ^_^
startIndex = 67 ; EndIndex = 68
 VarIndex = 67 ; _data[1][67] = 1
 VarIndex = 68 ; _data[1][68] = 1
blocking walls s' First test :
x1 = 1; y1 = 68; x2 = 1; y2 = 69
_ConstAxe = 1 ; startIndex = 68 ; EndIndex = 69 ; Conditon = 1
after Revision ^_^
startIndex = 68 ; EndIndex = 69
 VarIndex = 68 ; _data[1][68] = 1
 VarIndex = 69 ; _data[1][69] = 1
blocking walls s' First test :
x1 = 1; y1 = 69; x2 = 1; y2 = 70
_ConstAxe = 1 ; startIndex = 69 ; EndIndex = 70 ; Conditon = 1
after Revision ^_^
startIndex = 69 ; EndIndex = 70
 VarIndex = 69 ; _data[1][69] = 1
 VarIndex = 70 ; _data[1][70] = 1
blocking walls s' First test :
x1 = 1; y1 = 70; x2 = 1; y2 = 71
_ConstAxe = 1 ; startIndex = 70 ; EndIndex = 71 ; Conditon = 1
after Revision ^_^
startIndex = 70 ; EndIndex = 71
 VarIndex = 70 ; _data[1][70] = 1
 VarIndex = 71 ; _data[1][71] = 1
blocking walls s' First test :
x1 = 1; y1 = 71; x2 = 1; y2 = 72
_ConstAxe = 1 ; startIndex = 71 ; EndIndex = 72 ; Conditon = 1
after Revision ^_^ 
startIndex = 71 ; EndIndex = 72
 VarIndex = 71 ; _data[1][71] = 1
 VarIndex = 72 ; _data[1][72] = 1
blocking walls s' First test :
x1 = 1; y1 = 72; x2 = 1; y2 = 73
_ConstAxe = 1 ; startIndex = 72 ; EndIndex = 73 ; Conditon = 1
after Revision ^_^
startIndex = 72 ; EndIndex = 73
 VarIndex = 72 ; _data[1][72] = 1
 VarIndex = 73 ; _data[1][73] = 1
blocking walls s' First test :
x1 = 1; y1 = 73; x2 = 1; y2 = 74
_ConstAxe = 1 ; startIndex = 73 ; EndIndex = 74 ; Conditon = 1
after Revision ^_^
startIndex = 73 ; EndIndex = 74
 VarIndex = 73 ; _data[1][73] = 1
 VarIndex = 74 ; _data[1][74] = 1
blocking walls s' First test :
x1 = 1; y1 = 74; x2 = 1; y2 = 75
_ConstAxe = 1 ; startIndex = 74 ; EndIndex = 75 ; Conditon = 1
after Revision ^_^
startIndex = 74 ; EndIndex = 75
 VarIndex = 74 ; _data[1][74] = 1
 VarIndex = 75 ; _data[1][75] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 75; x2 = 1; y2 = 76
_ConstAxe = 1 ; startIndex = 75 ; EndIndex = 76 ; Conditon = 1
after Revision ^_^
startIndex = 75 ; EndIndex = 76
 VarIndex = 75 ; _data[1][75] = 1
 VarIndex = 76 ; _data[1][76] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 76; x2 = 1; y2 = 77
_ConstAxe = 1 ; startIndex = 76 ; EndIndex = 77 ; Conditon = 1
after Revision ^_^
startIndex = 76 ; EndIndex = 77
 VarIndex = 76 ; _data[1][76] = 1
 VarIndex = 77 ; _data[1][77] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 77; x2 = 1; y2 = 78
_ConstAxe = 1 ; startIndex = 77 ; EndIndex = 78 ; Conditon = 1
after Revision ^_^
startIndex = 77 ; EndIndex = 78
 VarIndex = 77 ; _data[1][77] = 1
 VarIndex = 78 ; _data[1][78] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 78; x2 = 1; y2 = 79
_ConstAxe = 1 ; startIndex = 78 ; EndIndex = 79 ; Conditon = 1
after Revision ^_^ 
startIndex = 78 ; EndIndex = 79
 VarIndex = 78 ; _data[1][78] = 1
 VarIndex = 79 ; _data[1][79] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 79; x2 = 1; y2 = 80
_ConstAxe = 1 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[1][79] = 1
 VarIndex = 80 ; _data[1][80] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 80; x2 = 1; y2 = 81
_ConstAxe = 1 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[1][80] = 1
 VarIndex = 81 ; _data[1][81] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 81; x2 = 1; y2 = 82
_ConstAxe = 1 ; startIndex = 81 ; EndIndex = 82 ; Conditon = 1
after Revision ^_^
startIndex = 81 ; EndIndex = 82
 VarIndex = 81 ; _data[1][81] = 1
 VarIndex = 82 ; _data[1][82] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 82; x2 = 1; y2 = 83
_ConstAxe = 1 ; startIndex = 82 ; EndIndex = 83 ; Conditon = 1
after Revision ^_^
startIndex = 82 ; EndIndex = 83
 VarIndex = 82 ; _data[1][82] = 1
 VarIndex = 83 ; _data[1][83] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 83; x2 = 1; y2 = 84
_ConstAxe = 1 ; startIndex = 83 ; EndIndex = 84 ; Conditon = 1
after Revision ^_^
startIndex = 83 ; EndIndex = 84
 VarIndex = 83 ; _data[1][83] = 1
 VarIndex = 84 ; _data[1][84] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 84; x2 = 1; y2 = 85
_ConstAxe = 1 ; startIndex = 84 ; EndIndex = 85 ; Conditon = 1
after Revision ^_^
startIndex = 84 ; EndIndex = 85
 VarIndex = 84 ; _data[1][84] = 1
 VarIndex = 85 ; _data[1][85] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 85; x2 = 1; y2 = 86
_ConstAxe = 1 ; startIndex = 85 ; EndIndex = 86 ; Conditon = 1
after Revision ^_^
startIndex = 85 ; EndIndex = 86
 VarIndex = 85 ; _data[1][85] = 1
 VarIndex = 86 ; _data[1][86] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 86; x2 = 1; y2 = 87
_ConstAxe = 1 ; startIndex = 86 ; EndIndex = 87 ; Conditon = 1
after Revision ^_^
startIndex = 86 ; EndIndex = 87
 VarIndex = 86 ; _data[1][86] = 1
 VarIndex = 87 ; _data[1][87] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 87; x2 = 1; y2 = 88
_ConstAxe = 1 ; startIndex = 87 ; EndIndex = 88 ; Conditon = 1
after Revision ^_^
startIndex = 87 ; EndIndex = 88
 VarIndex = 87 ; _data[1][87] = 1
 VarIndex = 88 ; _data[1][88] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 88; x2 = 1; y2 = 89
_ConstAxe = 1 ; startIndex = 88 ; EndIndex = 89 ; Conditon = 1
after Revision ^_^
startIndex = 88 ; EndIndex = 89
 VarIndex = 88 ; _data[1][88] = 1
 VarIndex = 89 ; _data[1][89] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 89; x2 = 1; y2 = 90
_ConstAxe = 1 ; startIndex = 89 ; EndIndex = 90 ; Conditon = 1
after Revision ^_^
startIndex = 89 ; EndIndex = 90
 VarIndex = 89 ; _data[1][89] = 1
 VarIndex = 90 ; _data[1][90] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 90; x2 = 1; y2 = 91
_ConstAxe = 1 ; startIndex = 90 ; EndIndex = 91 ; Conditon = 1
after Revision ^_^
startIndex = 90 ; EndIndex = 91
 VarIndex = 90 ; _data[1][90] = 1
 VarIndex = 91 ; _data[1][91] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 91; x2 = 1; y2 = 92
_ConstAxe = 1 ; startIndex = 91 ; EndIndex = 92 ; Conditon = 1
after Revision ^_^
startIndex = 91 ; EndIndex = 92
 VarIndex = 91 ; _data[1][91] = 1
 VarIndex = 92 ; _data[1][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 92; x2 = 1; y2 = 93
_ConstAxe = 1 ; startIndex = 92 ; EndIndex = 93 ; Conditon = 1
after Revision ^_^
startIndex = 92 ; EndIndex = 93
 VarIndex = 92 ; _data[1][92] = 1
 VarIndex = 93 ; _data[1][93] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 93; x2 = 1; y2 = 94
_ConstAxe = 1 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[1][93] = 1
 VarIndex = 94 ; _data[1][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 94; x2 = 1; y2 = 95
_ConstAxe = 1 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[1][94] = 1
 VarIndex = 95 ; _data[1][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 95; x2 = 1; y2 = 96
_ConstAxe = 1 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[1][95] = 1
 VarIndex = 96 ; _data[1][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 96; x2 = 1; y2 = 97
_ConstAxe = 1 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[1][96] = 1
 VarIndex = 97 ; _data[1][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 97; x2 = 1; y2 = 98
_ConstAxe = 1 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[1][97] = 1
 VarIndex = 98 ; _data[1][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 98; x2 = 1; y2 = 99
_ConstAxe = 1 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[1][98] = 1
 VarIndex = 99 ; _data[1][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 1; y1 = 99; x2 = 1; y2 = 100
_ConstAxe = 1 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[1][99] = 1
 VarIndex = 100 ; _data[1][100] = 1
blocking walls s' First test :
x1 = 2; y1 = 1; x2 = 3; y2 = 1
_ConstAxe = 1 ; startIndex = 2 ; EndIndex = 3 ; Conditon = 0
after Revision ^_^
startIndex = 2 ; EndIndex = 3
 VarIndex = 2 ; _data[2][1] = 1
 VarIndex = 3 ; _data[3][1] = 1
blocking walls s' First test :
x1 = 2; y1 = 74; x2 = 2; y2 = 75
_ConstAxe = 2 ; startIndex = 74 ; EndIndex = 75 ; Conditon = 1
after Revision ^_^
startIndex = 74 ; EndIndex = 75
 VarIndex = 74 ; _data[2][74] = 1
 VarIndex = 75 ; _data[2][75] = 1
blocking walls s' First test :
x1 = 2; y1 = 75; x2 = 2; y2 = 76
_ConstAxe = 2 ; startIndex = 75 ; EndIndex = 76 ; Conditon = 1
after Revision ^_^
startIndex = 75 ; EndIndex = 76
 VarIndex = 75 ; _data[2][75] = 1
 VarIndex = 76 ; _data[2][76] = 1
blocking walls s' First test :
x1 = 2; y1 = 76; x2 = 2; y2 = 77
_ConstAxe = 2 ; startIndex = 76 ; EndIndex = 77 ; Conditon = 1
after Revision ^_^
startIndex = 76 ; EndIndex = 77
 VarIndex = 76 ; _data[2][76] = 1
 VarIndex = 77 ; _data[2][77] = 1
blocking walls s' First test :
x1 = 2; y1 = 77; x2 = 2; y2 = 78
_ConstAxe = 2 ; startIndex = 77 ; EndIndex = 78 ; Conditon = 1
after Revision ^_^
startIndex = 77 ; EndIndex = 78
 VarIndex = 77 ; _data[2][77] = 1
 VarIndex = 78 ; _data[2][78] = 1
blocking walls s' First test :
x1 = 2; y1 = 78; x2 = 2; y2 = 79
_ConstAxe = 2 ; startIndex = 78 ; EndIndex = 79 ; Conditon = 1
after Revision ^_^
startIndex = 78 ; EndIndex = 79
 VarIndex = 78 ; _data[2][78] = 1
 VarIndex = 79 ; _data[2][79] = 1
blocking walls s' First test :
x1 = 2; y1 = 79; x2 = 2; y2 = 80
_ConstAxe = 2 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[2][79] = 1
 VarIndex = 80 ; _data[2][80] = 1
blocking walls s' First test :
x1 = 2; y1 = 80; x2 = 2; y2 = 81
_ConstAxe = 2 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[2][80] = 1
 VarIndex = 81 ; _data[2][81] = 1
blocking walls s' First test :
x1 = 2; y1 = 81; x2 = 2; y2 = 82
_ConstAxe = 2 ; startIndex = 81 ; EndIndex = 82 ; Conditon = 1
after Revision ^_^
startIndex = 81 ; EndIndex = 82
 VarIndex = 81 ; _data[2][81] = 1
 VarIndex = 82 ; _data[2][82] = 1
blocking walls s' First test :
x1 = 2; y1 = 82; x2 = 2; y2 = 83
_ConstAxe = 2 ; startIndex = 82 ; EndIndex = 83 ; Conditon = 1
after Revision ^_^
startIndex = 82 ; EndIndex = 83
 VarIndex = 82 ; _data[2][82] = 1
 VarIndex = 83 ; _data[2][83] = 1
blocking walls s' First test :
x1 = 2; y1 = 83; x2 = 2; y2 = 84
_ConstAxe = 2 ; startIndex = 83 ; EndIndex = 84 ; Conditon = 1
after Revision ^_^
startIndex = 83 ; EndIndex = 84
 VarIndex = 83 ; _data[2][83] = 1
 VarIndex = 84 ; _data[2][84] = 1
blocking walls s' First test :
x1 = 2; y1 = 84; x2 = 2; y2 = 85
_ConstAxe = 2 ; startIndex = 84 ; EndIndex = 85 ; Conditon = 1
after Revision ^_^
startIndex = 84 ; EndIndex = 85
 VarIndex = 84 ; _data[2][84] = 1
 VarIndex = 85 ; _data[2][85] = 1
blocking walls s' First test :
x1 = 2; y1 = 85; x2 = 2; y2 = 86
_ConstAxe = 2 ; startIndex = 85 ; EndIndex = 86 ; Conditon = 1
after Revision ^_^
startIndex = 85 ; EndIndex = 86
 VarIndex = 85 ; _data[2][85] = 1
 VarIndex = 86 ; _data[2][86] = 1
blocking walls s' First test :
x1 = 2; y1 = 86; x2 = 2; y2 = 87
_ConstAxe = 2 ; startIndex = 86 ; EndIndex = 87 ; Conditon = 1
after Revision ^_^
startIndex = 86 ; EndIndex = 87
 VarIndex = 86 ; _data[2][86] = 1
 VarIndex = 87 ; _data[2][87] = 1
blocking walls s' First test :
x1 = 2; y1 = 87; x2 = 2; y2 = 88
_ConstAxe = 2 ; startIndex = 87 ; EndIndex = 88 ; Conditon = 1
after Revision ^_^
startIndex = 87 ; EndIndex = 88
 VarIndex = 87 ; _data[2][87] = 1
 VarIndex = 88 ; _data[2][88] = 1
blocking walls s' First test :
x1 = 2; y1 = 88; x2 = 2; y2 = 89
_ConstAxe = 2 ; startIndex = 88 ; EndIndex = 89 ; Conditon = 1
after Revision ^_^
startIndex = 88 ; EndIndex = 89
 VarIndex = 88 ; _data[2][88] = 1
 VarIndex = 89 ; _data[2][89] = 1
blocking walls s' First test :
x1 = 2; y1 = 89; x2 = 2; y2 = 90
_ConstAxe = 2 ; startIndex = 89 ; EndIndex = 90 ; Conditon = 1
after Revision ^_^
startIndex = 89 ; EndIndex = 90
 VarIndex = 89 ; _data[2][89] = 1
 VarIndex = 90 ; _data[2][90] = 1
blocking walls s' First test :
x1 = 2; y1 = 90; x2 = 2; y2 = 91
_ConstAxe = 2 ; startIndex = 90 ; EndIndex = 91 ; Conditon = 1
after Revision ^_^
startIndex = 90 ; EndIndex = 91
 VarIndex = 90 ; _data[2][90] = 1
 VarIndex = 91 ; _data[2][91] = 1
blocking walls s' First test :
x1 = 2; y1 = 91; x2 = 2; y2 = 92
_ConstAxe = 2 ; startIndex = 91 ; EndIndex = 92 ; Conditon = 1
after Revision ^_^
startIndex = 91 ; EndIndex = 92
 VarIndex = 91 ; _data[2][91] = 1
 VarIndex = 92 ; _data[2][92] = 1
blocking walls s' First test :
x1 = 2; y1 = 92; x2 = 2; y2 = 93
_ConstAxe = 2 ; startIndex = 92 ; EndIndex = 93 ; Conditon = 1
after Revision ^_^
startIndex = 92 ; EndIndex = 93
 VarIndex = 92 ; _data[2][92] = 1
 VarIndex = 93 ; _data[2][93] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 2; y1 = 93; x2 = 2; y2 = 94
_ConstAxe = 2 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^ 
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[2][93] = 1
 VarIndex = 94 ; _data[2][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 2; y1 = 94; x2 = 2; y2 = 95
_ConstAxe = 2 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[2][94] = 1
 VarIndex = 95 ; _data[2][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 2; y1 = 95; x2 = 2; y2 = 96
_ConstAxe = 2 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[2][95] = 1
 VarIndex = 96 ; _data[2][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 2; y1 = 96; x2 = 2; y2 = 97
_ConstAxe = 2 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[2][96] = 1
 VarIndex = 97 ; _data[2][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 2; y1 = 97; x2 = 2; y2 = 98
_ConstAxe = 2 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[2][97] = 1
 VarIndex = 98 ; _data[2][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 2; y1 = 98; x2 = 2; y2 = 99
_ConstAxe = 2 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[2][98] = 1
 VarIndex = 99 ; _data[2][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 2; y1 = 99; x2 = 2; y2 = 100
_ConstAxe = 2 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[2][99] = 1
 VarIndex = 100 ; _data[2][100] = 1
blocking walls s' First test :
x1 = 3; y1 = 1; x2 = 4; y2 = 1
_ConstAxe = 1 ; startIndex = 3 ; EndIndex = 4 ; Conditon = 0
after Revision ^_^
startIndex = 3 ; EndIndex = 4
 VarIndex = 3 ; _data[3][1] = 1
 VarIndex = 4 ; _data[4][1] = 1
blocking walls s' First test :
x1 = 3; y1 = 92; x2 = 4; y2 = 92
_ConstAxe = 92 ; startIndex = 3 ; EndIndex = 4 ; Conditon = 0
after Revision ^_^
startIndex = 3 ; EndIndex = 4
 VarIndex = 3 ; _data[3][92] = 1
 VarIndex = 4 ; _data[4][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 3; y1 = 93; x2 = 3; y2 = 94
_ConstAxe = 3 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[3][93] = 1
 VarIndex = 94 ; _data[3][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 3; y1 = 94; x2 = 3; y2 = 95
_ConstAxe = 3 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^ 
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[3][94] = 1
 VarIndex = 95 ; _data[3][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 3; y1 = 95; x2 = 3; y2 = 96
_ConstAxe = 3 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[3][95] = 1
 VarIndex = 96 ; _data[3][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 3; y1 = 96; x2 = 3; y2 = 97
_ConstAxe = 3 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[3][96] = 1
 VarIndex = 97 ; _data[3][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 3; y1 = 97; x2 = 3; y2 = 98
_ConstAxe = 3 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[3][97] = 1
 VarIndex = 98 ; _data[3][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 3; y1 = 98; x2 = 3; y2 = 99
_ConstAxe = 3 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^ 
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[3][98] = 1
 VarIndex = 99 ; _data[3][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 3; y1 = 99; x2 = 3; y2 = 100
_ConstAxe = 3 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[3][99] = 1
 VarIndex = 100 ; _data[3][100] = 1
blocking walls s' First test :
x1 = 4; y1 = 1; x2 = 5; y2 = 1
_ConstAxe = 1 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 0
after Revision ^_^
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[4][1] = 1
 VarIndex = 5 ; _data[5][1] = 1
blocking walls s' First test :
x1 = 4; y1 = 6; x2 = 4; y2 = 7
_ConstAxe = 4 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[4][6] = 1
 VarIndex = 7 ; _data[4][7] = 1
blocking walls s' First test :
x1 = 4; y1 = 7; x2 = 4; y2 = 8
_ConstAxe = 4 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[4][7] = 1
 VarIndex = 8 ; _data[4][8] = 1
blocking walls s' First test :
x1 = 4; y1 = 8; x2 = 4; y2 = 9
_ConstAxe = 4 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[4][8] = 1
 VarIndex = 9 ; _data[4][9] = 1
blocking walls s' First test :
x1 = 4; y1 = 9; x2 = 4; y2 = 10
_ConstAxe = 4 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[4][9] = 1
 VarIndex = 10 ; _data[4][10] = 1
blocking walls s' First test :
x1 = 4; y1 = 10; x2 = 4; y2 = 11
_ConstAxe = 4 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[4][10] = 1
 VarIndex = 11 ; _data[4][11] = 1
blocking walls s' First test :
x1 = 4; y1 = 11; x2 = 4; y2 = 12
_ConstAxe = 4 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[4][11] = 1
 VarIndex = 12 ; _data[4][12] = 1
blocking walls s' First test :
x1 = 4; y1 = 12; x2 = 4; y2 = 13
_ConstAxe = 4 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[4][12] = 1
 VarIndex = 13 ; _data[4][13] = 1
blocking walls s' First test :
x1 = 4; y1 = 13; x2 = 4; y2 = 14
_ConstAxe = 4 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[4][13] = 1
 VarIndex = 14 ; _data[4][14] = 1
blocking walls s' First test :
x1 = 4; y1 = 14; x2 = 4; y2 = 15
_ConstAxe = 4 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 1
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[4][14] = 1
 VarIndex = 15 ; _data[4][15] = 1
blocking walls s' First test :
x1 = 4; y1 = 15; x2 = 4; y2 = 16
_ConstAxe = 4 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 1
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[4][15] = 1
 VarIndex = 16 ; _data[4][16] = 1
blocking walls s' First test :
x1 = 4; y1 = 16; x2 = 4; y2 = 17
_ConstAxe = 4 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[4][16] = 1
 VarIndex = 17 ; _data[4][17] = 1
blocking walls s' First test :
x1 = 4; y1 = 17; x2 = 4; y2 = 18
_ConstAxe = 4 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[4][17] = 1
 VarIndex = 18 ; _data[4][18] = 1
blocking walls s' First test :
x1 = 4; y1 = 18; x2 = 4; y2 = 19
_ConstAxe = 4 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 1
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[4][18] = 1
 VarIndex = 19 ; _data[4][19] = 1
blocking walls s' First test :
x1 = 4; y1 = 19; x2 = 4; y2 = 20
_ConstAxe = 4 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 1
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[4][19] = 1
 VarIndex = 20 ; _data[4][20] = 1
blocking walls s' First test :
x1 = 4; y1 = 20; x2 = 4; y2 = 21
_ConstAxe = 4 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[4][20] = 1
 VarIndex = 21 ; _data[4][21] = 1
blocking walls s' First test :
x1 = 4; y1 = 21; x2 = 4; y2 = 22
_ConstAxe = 4 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[4][21] = 1
 VarIndex = 22 ; _data[4][22] = 1
blocking walls s' First test :
x1 = 4; y1 = 22; x2 = 4; y2 = 23
_ConstAxe = 4 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[4][22] = 1
 VarIndex = 23 ; _data[4][23] = 1
blocking walls s' First test :
x1 = 4; y1 = 23; x2 = 4; y2 = 24
_ConstAxe = 4 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[4][23] = 1
 VarIndex = 24 ; _data[4][24] = 1
blocking walls s' First test :
x1 = 4; y1 = 24; x2 = 4; y2 = 25
_ConstAxe = 4 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[4][24] = 1
 VarIndex = 25 ; _data[4][25] = 1
blocking walls s' First test :
x1 = 4; y1 = 25; x2 = 4; y2 = 26
_ConstAxe = 4 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[4][25] = 1
 VarIndex = 26 ; _data[4][26] = 1
blocking walls s' First test :
x1 = 4; y1 = 26; x2 = 4; y2 = 27
_ConstAxe = 4 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^ 
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[4][26] = 1
 VarIndex = 27 ; _data[4][27] = 1
blocking walls s' First test :
x1 = 4; y1 = 27; x2 = 4; y2 = 28
_ConstAxe = 4 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^ 
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[4][27] = 1
 VarIndex = 28 ; _data[4][28] = 1
blocking walls s' First test :
x1 = 4; y1 = 28; x2 = 4; y2 = 29
_ConstAxe = 4 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[4][28] = 1
 VarIndex = 29 ; _data[4][29] = 1
blocking walls s' First test :
x1 = 4; y1 = 29; x2 = 4; y2 = 30
_ConstAxe = 4 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 1
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[4][29] = 1
 VarIndex = 30 ; _data[4][30] = 1
blocking walls s' First test :
x1 = 4; y1 = 30; x2 = 4; y2 = 31
_ConstAxe = 4 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 1
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[4][30] = 1
 VarIndex = 31 ; _data[4][31] = 1
blocking walls s' First test :
x1 = 4; y1 = 31; x2 = 4; y2 = 32
_ConstAxe = 4 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 1
after Revision ^_^ 
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[4][31] = 1
 VarIndex = 32 ; _data[4][32] = 1
blocking walls s' First test :
x1 = 4; y1 = 32; x2 = 4; y2 = 33
_ConstAxe = 4 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[4][32] = 1
 VarIndex = 33 ; _data[4][33] = 1
blocking walls s' First test :
x1 = 4; y1 = 33; x2 = 4; y2 = 34
_ConstAxe = 4 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[4][33] = 1
 VarIndex = 34 ; _data[4][34] = 1
blocking walls s' First test :
x1 = 4; y1 = 34; x2 = 4; y2 = 35
_ConstAxe = 4 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[4][34] = 1
 VarIndex = 35 ; _data[4][35] = 1
blocking walls s' First test :
x1 = 4; y1 = 35; x2 = 4; y2 = 36
_ConstAxe = 4 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[4][35] = 1
 VarIndex = 36 ; _data[4][36] = 1
blocking walls s' First test :
x1 = 4; y1 = 36; x2 = 4; y2 = 37
_ConstAxe = 4 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[4][36] = 1
 VarIndex = 37 ; _data[4][37] = 1
blocking walls s' First test :
x1 = 4; y1 = 37; x2 = 4; y2 = 38
_ConstAxe = 4 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[4][37] = 1
 VarIndex = 38 ; _data[4][38] = 1
blocking walls s' First test :
x1 = 4; y1 = 38; x2 = 4; y2 = 39
_ConstAxe = 4 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[4][38] = 1
 VarIndex = 39 ; _data[4][39] = 1
blocking walls s' First test :
x1 = 4; y1 = 39; x2 = 4; y2 = 40
_ConstAxe = 4 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[4][39] = 1
 VarIndex = 40 ; _data[4][40] = 1
blocking walls s' First test :
x1 = 4; y1 = 40; x2 = 4; y2 = 41
_ConstAxe = 4 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[4][40] = 1
 VarIndex = 41 ; _data[4][41] = 1
blocking walls s' First test :
x1 = 4; y1 = 41; x2 = 4; y2 = 42
_ConstAxe = 4 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[4][41] = 1
 VarIndex = 42 ; _data[4][42] = 1
blocking walls s' First test :
x1 = 4; y1 = 42; x2 = 4; y2 = 43
_ConstAxe = 4 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[4][42] = 1
 VarIndex = 43 ; _data[4][43] = 1
blocking walls s' First test :
x1 = 4; y1 = 43; x2 = 4; y2 = 44
_ConstAxe = 4 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[4][43] = 1
 VarIndex = 44 ; _data[4][44] = 1
blocking walls s' First test :
x1 = 4; y1 = 44; x2 = 4; y2 = 45
_ConstAxe = 4 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[4][44] = 1
 VarIndex = 45 ; _data[4][45] = 1
blocking walls s' First test :
x1 = 4; y1 = 45; x2 = 4; y2 = 46
_ConstAxe = 4 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[4][45] = 1
 VarIndex = 46 ; _data[4][46] = 1
blocking walls s' First test :
x1 = 4; y1 = 46; x2 = 4; y2 = 47
_ConstAxe = 4 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[4][46] = 1
 VarIndex = 47 ; _data[4][47] = 1
blocking walls s' First test :
x1 = 4; y1 = 50; x2 = 4; y2 = 51
_ConstAxe = 4 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[4][50] = 1
 VarIndex = 51 ; _data[4][51] = 1
blocking walls s' First test :
x1 = 4; y1 = 51; x2 = 4; y2 = 52
_ConstAxe = 4 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[4][51] = 1
 VarIndex = 52 ; _data[4][52] = 1
blocking walls s' First test :
x1 = 4; y1 = 52; x2 = 4; y2 = 53
_ConstAxe = 4 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[4][52] = 1
 VarIndex = 53 ; _data[4][53] = 1
blocking walls s' First test :
x1 = 4; y1 = 53; x2 = 4; y2 = 54
_ConstAxe = 4 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[4][53] = 1
 VarIndex = 54 ; _data[4][54] = 1
blocking walls s' First test :
x1 = 4; y1 = 54; x2 = 4; y2 = 55
_ConstAxe = 4 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[4][54] = 1
 VarIndex = 55 ; _data[4][55] = 1
blocking walls s' First test :
x1 = 4; y1 = 55; x2 = 4; y2 = 56
_ConstAxe = 4 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[4][55] = 1
 VarIndex = 56 ; _data[4][56] = 1
blocking walls s' First test :
x1 = 4; y1 = 56; x2 = 4; y2 = 57
_ConstAxe = 4 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[4][56] = 1
 VarIndex = 57 ; _data[4][57] = 1
blocking walls s' First test :
x1 = 4; y1 = 57; x2 = 4; y2 = 58
_ConstAxe = 4 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[4][57] = 1
 VarIndex = 58 ; _data[4][58] = 1
blocking walls s' First test :
x1 = 4; y1 = 58; x2 = 4; y2 = 59
_ConstAxe = 4 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[4][58] = 1
 VarIndex = 59 ; _data[4][59] = 1
blocking walls s' First test :
x1 = 4; y1 = 59; x2 = 4; y2 = 60
_ConstAxe = 4 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[4][59] = 1
 VarIndex = 60 ; _data[4][60] = 1
blocking walls s' First test :
x1 = 4; y1 = 60; x2 = 4; y2 = 61
_ConstAxe = 4 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^ 
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[4][60] = 1
 VarIndex = 61 ; _data[4][61] = 1
blocking walls s' First test :
x1 = 4; y1 = 61; x2 = 4; y2 = 62
_ConstAxe = 4 ; startIndex = 61 ; EndIndex = 62 ; Conditon = 1
after Revision ^_^
startIndex = 61 ; EndIndex = 62
 VarIndex = 61 ; _data[4][61] = 1
 VarIndex = 62 ; _data[4][62] = 1
blocking walls s' First test :
x1 = 4; y1 = 62; x2 = 4; y2 = 63
_ConstAxe = 4 ; startIndex = 62 ; EndIndex = 63 ; Conditon = 1
after Revision ^_^
startIndex = 62 ; EndIndex = 63
 VarIndex = 62 ; _data[4][62] = 1
 VarIndex = 63 ; _data[4][63] = 1
blocking walls s' First test :
x1 = 4; y1 = 63; x2 = 4; y2 = 64
_ConstAxe = 4 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[4][63] = 1
 VarIndex = 64 ; _data[4][64] = 1
blocking walls s' First test :
x1 = 4; y1 = 64; x2 = 4; y2 = 65
_ConstAxe = 4 ; startIndex = 64 ; EndIndex = 65 ; Conditon = 1
after Revision ^_^
startIndex = 64 ; EndIndex = 65
 VarIndex = 64 ; _data[4][64] = 1
 VarIndex = 65 ; _data[4][65] = 1
blocking walls s' First test :
x1 = 4; y1 = 65; x2 = 4; y2 = 66
_ConstAxe = 4 ; startIndex = 65 ; EndIndex = 66 ; Conditon = 1
after Revision ^_^
startIndex = 65 ; EndIndex = 66
 VarIndex = 65 ; _data[4][65] = 1
 VarIndex = 66 ; _data[4][66] = 1
blocking walls s' First test :
x1 = 4; y1 = 66; x2 = 4; y2 = 67
_ConstAxe = 4 ; startIndex = 66 ; EndIndex = 67 ; Conditon = 1
after Revision ^_^
startIndex = 66 ; EndIndex = 67
 VarIndex = 66 ; _data[4][66] = 1
 VarIndex = 67 ; _data[4][67] = 1
blocking walls s' First test :
x1 = 4; y1 = 67; x2 = 4; y2 = 68
_ConstAxe = 4 ; startIndex = 67 ; EndIndex = 68 ; Conditon = 1
after Revision ^_^
startIndex = 67 ; EndIndex = 68
 VarIndex = 67 ; _data[4][67] = 1
 VarIndex = 68 ; _data[4][68] = 1
blocking walls s' First test :
x1 = 4; y1 = 68; x2 = 4; y2 = 69
_ConstAxe = 4 ; startIndex = 68 ; EndIndex = 69 ; Conditon = 1
after Revision ^_^
startIndex = 68 ; EndIndex = 69
 VarIndex = 68 ; _data[4][68] = 1
 VarIndex = 69 ; _data[4][69] = 1
blocking walls s' First test :
x1 = 4; y1 = 69; x2 = 4; y2 = 70
_ConstAxe = 4 ; startIndex = 69 ; EndIndex = 70 ; Conditon = 1
after Revision ^_^
startIndex = 69 ; EndIndex = 70
 VarIndex = 69 ; _data[4][69] = 1
 VarIndex = 70 ; _data[4][70] = 1
blocking walls s' First test :
x1 = 4; y1 = 70; x2 = 4; y2 = 71
_ConstAxe = 4 ; startIndex = 70 ; EndIndex = 71 ; Conditon = 1
after Revision ^_^
startIndex = 70 ; EndIndex = 71
 VarIndex = 70 ; _data[4][70] = 1
 VarIndex = 71 ; _data[4][71] = 1
blocking walls s' First test :
x1 = 4; y1 = 71; x2 = 4; y2 = 72
_ConstAxe = 4 ; startIndex = 71 ; EndIndex = 72 ; Conditon = 1
after Revision ^_^
startIndex = 71 ; EndIndex = 72
 VarIndex = 71 ; _data[4][71] = 1
 VarIndex = 72 ; _data[4][72] = 1
blocking walls s' First test :
x1 = 4; y1 = 72; x2 = 4; y2 = 73
_ConstAxe = 4 ; startIndex = 72 ; EndIndex = 73 ; Conditon = 1
after Revision ^_^
startIndex = 72 ; EndIndex = 73
 VarIndex = 72 ; _data[4][72] = 1
 VarIndex = 73 ; _data[4][73] = 1
blocking walls s' First test :
x1 = 4; y1 = 73; x2 = 4; y2 = 74
_ConstAxe = 4 ; startIndex = 73 ; EndIndex = 74 ; Conditon = 1
after Revision ^_^
startIndex = 73 ; EndIndex = 74
 VarIndex = 73 ; _data[4][73] = 1
 VarIndex = 74 ; _data[4][74] = 1
blocking walls s' First test :
x1 = 4; y1 = 74; x2 = 4; y2 = 75
_ConstAxe = 4 ; startIndex = 74 ; EndIndex = 75 ; Conditon = 1
after Revision ^_^
startIndex = 74 ; EndIndex = 75
 VarIndex = 74 ; _data[4][74] = 1
 VarIndex = 75 ; _data[4][75] = 1
blocking walls s' First test :
x1 = 4; y1 = 75; x2 = 4; y2 = 76
_ConstAxe = 4 ; startIndex = 75 ; EndIndex = 76 ; Conditon = 1
after Revision ^_^
startIndex = 75 ; EndIndex = 76
 VarIndex = 75 ; _data[4][75] = 1
 VarIndex = 76 ; _data[4][76] = 1
blocking walls s' First test :
x1 = 4; y1 = 76; x2 = 4; y2 = 77
_ConstAxe = 4 ; startIndex = 76 ; EndIndex = 77 ; Conditon = 1
after Revision ^_^
startIndex = 76 ; EndIndex = 77
 VarIndex = 76 ; _data[4][76] = 1
 VarIndex = 77 ; _data[4][77] = 1
blocking walls s' First test :
x1 = 4; y1 = 77; x2 = 4; y2 = 78
_ConstAxe = 4 ; startIndex = 77 ; EndIndex = 78 ; Conditon = 1
after Revision ^_^
startIndex = 77 ; EndIndex = 78
 VarIndex = 77 ; _data[4][77] = 1
 VarIndex = 78 ; _data[4][78] = 1
blocking walls s' First test :
x1 = 4; y1 = 78; x2 = 4; y2 = 79
_ConstAxe = 4 ; startIndex = 78 ; EndIndex = 79 ; Conditon = 1
after Revision ^_^
startIndex = 78 ; EndIndex = 79
 VarIndex = 78 ; _data[4][78] = 1
 VarIndex = 79 ; _data[4][79] = 1
blocking walls s' First test :
x1 = 4; y1 = 79; x2 = 4; y2 = 80
_ConstAxe = 4 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[4][79] = 1
 VarIndex = 80 ; _data[4][80] = 1
blocking walls s' First test :
x1 = 4; y1 = 80; x2 = 4; y2 = 81
_ConstAxe = 4 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[4][80] = 1
 VarIndex = 81 ; _data[4][81] = 1
blocking walls s' First test :
x1 = 4; y1 = 81; x2 = 4; y2 = 82
_ConstAxe = 4 ; startIndex = 81 ; EndIndex = 82 ; Conditon = 1
after Revision ^_^
startIndex = 81 ; EndIndex = 82
 VarIndex = 81 ; _data[4][81] = 1
 VarIndex = 82 ; _data[4][82] = 1
blocking walls s' First test :
x1 = 4; y1 = 82; x2 = 4; y2 = 83
_ConstAxe = 4 ; startIndex = 82 ; EndIndex = 83 ; Conditon = 1
after Revision ^_^ 
startIndex = 82 ; EndIndex = 83
 VarIndex = 82 ; _data[4][82] = 1
 VarIndex = 83 ; _data[4][83] = 1
blocking walls s' First test :
x1 = 4; y1 = 83; x2 = 4; y2 = 84
_ConstAxe = 4 ; startIndex = 83 ; EndIndex = 84 ; Conditon = 1
after Revision ^_^
startIndex = 83 ; EndIndex = 84
 VarIndex = 83 ; _data[4][83] = 1
 VarIndex = 84 ; _data[4][84] = 1
blocking walls s' First test :
x1 = 4; y1 = 84; x2 = 4; y2 = 85
_ConstAxe = 4 ; startIndex = 84 ; EndIndex = 85 ; Conditon = 1
after Revision ^_^
startIndex = 84 ; EndIndex = 85
 VarIndex = 84 ; _data[4][84] = 1
 VarIndex = 85 ; _data[4][85] = 1
blocking walls s' First test :
x1 = 4; y1 = 85; x2 = 4; y2 = 86
_ConstAxe = 4 ; startIndex = 85 ; EndIndex = 86 ; Conditon = 1
after Revision ^_^
startIndex = 85 ; EndIndex = 86
 VarIndex = 85 ; _data[4][85] = 1
 VarIndex = 86 ; _data[4][86] = 1
blocking walls s' First test :
x1 = 4; y1 = 86; x2 = 4; y2 = 87
_ConstAxe = 4 ; startIndex = 86 ; EndIndex = 87 ; Conditon = 1
after Revision ^_^
startIndex = 86 ; EndIndex = 87
 VarIndex = 86 ; _data[4][86] = 1
 VarIndex = 87 ; _data[4][87] = 1
blocking walls s' First test :
x1 = 4; y1 = 87; x2 = 4; y2 = 88
_ConstAxe = 4 ; startIndex = 87 ; EndIndex = 88 ; Conditon = 1
after Revision ^_^
startIndex = 87 ; EndIndex = 88
 VarIndex = 87 ; _data[4][87] = 1
 VarIndex = 88 ; _data[4][88] = 1
blocking walls s' First test :
x1 = 4; y1 = 88; x2 = 4; y2 = 89
_ConstAxe = 4 ; startIndex = 88 ; EndIndex = 89 ; Conditon = 1
after Revision ^_^
startIndex = 88 ; EndIndex = 89
 VarIndex = 88 ; _data[4][88] = 1
 VarIndex = 89 ; _data[4][89] = 1
blocking walls s' First test :
x1 = 4; y1 = 89; x2 = 4; y2 = 90
_ConstAxe = 4 ; startIndex = 89 ; EndIndex = 90 ; Conditon = 1
after Revision ^_^
startIndex = 89 ; EndIndex = 90
 VarIndex = 89 ; _data[4][89] = 1
 VarIndex = 90 ; _data[4][90] = 1
blocking walls s' First test :
x1 = 4; y1 = 92; x2 = 5; y2 = 92
_ConstAxe = 92 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 0
after Revision ^_^
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[4][92] = 1
 VarIndex = 5 ; _data[5][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 4; y1 = 93; x2 = 4; y2 = 94
_ConstAxe = 4 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[4][93] = 1
 VarIndex = 94 ; _data[4][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 4; y1 = 94; x2 = 4; y2 = 95
_ConstAxe = 4 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[4][94] = 1
 VarIndex = 95 ; _data[4][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 4; y1 = 95; x2 = 4; y2 = 96
_ConstAxe = 4 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[4][95] = 1
 VarIndex = 96 ; _data[4][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 4; y1 = 96; x2 = 4; y2 = 97
_ConstAxe = 4 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[4][96] = 1
 VarIndex = 97 ; _data[4][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 4; y1 = 97; x2 = 4; y2 = 98
_ConstAxe = 4 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[4][97] = 1
 VarIndex = 98 ; _data[4][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 4; y1 = 98; x2 = 4; y2 = 99
_ConstAxe = 4 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[4][98] = 1
 VarIndex = 99 ; _data[4][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 4; y1 = 99; x2 = 4; y2 = 100
_ConstAxe = 4 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[4][99] = 1
 VarIndex = 100 ; _data[4][100] = 1
blocking walls s' First test :
x1 = 5; y1 = 1; x2 = 6; y2 = 1
_ConstAxe = 1 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 0
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[5][1] = 1
 VarIndex = 6 ; _data[6][1] = 1
blocking walls s' First test :
x1 = 5; y1 = 6; x2 = 6; y2 = 6
_ConstAxe = 6 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 0
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[5][6] = 1
 VarIndex = 6 ; _data[6][6] = 1
blocking walls s' First test :
x1 = 5; y1 = 35; x2 = 5; y2 = 36
_ConstAxe = 5 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[5][35] = 1
 VarIndex = 36 ; _data[5][36] = 1
blocking walls s' First test :
x1 = 5; y1 = 36; x2 = 5; y2 = 37
_ConstAxe = 5 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[5][36] = 1
 VarIndex = 37 ; _data[5][37] = 1
blocking walls s' First test :
x1 = 5; y1 = 37; x2 = 5; y2 = 38
_ConstAxe = 5 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[5][37] = 1
 VarIndex = 38 ; _data[5][38] = 1
blocking walls s' First test :
x1 = 5; y1 = 38; x2 = 5; y2 = 39
_ConstAxe = 5 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[5][38] = 1
 VarIndex = 39 ; _data[5][39] = 1
blocking walls s' First test :
x1 = 5; y1 = 39; x2 = 5; y2 = 40
_ConstAxe = 5 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[5][39] = 1
 VarIndex = 40 ; _data[5][40] = 1
blocking walls s' First test :
x1 = 5; y1 = 40; x2 = 5; y2 = 41
_ConstAxe = 5 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[5][40] = 1
 VarIndex = 41 ; _data[5][41] = 1
blocking walls s' First test :
x1 = 5; y1 = 41; x2 = 5; y2 = 42
_ConstAxe = 5 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[5][41] = 1
 VarIndex = 42 ; _data[5][42] = 1
blocking walls s' First test :
x1 = 5; y1 = 42; x2 = 5; y2 = 43
_ConstAxe = 5 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[5][42] = 1
 VarIndex = 43 ; _data[5][43] = 1
blocking walls s' First test :
x1 = 5; y1 = 43; x2 = 5; y2 = 44
_ConstAxe = 5 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[5][43] = 1
 VarIndex = 44 ; _data[5][44] = 1
blocking walls s' First test :
x1 = 5; y1 = 44; x2 = 5; y2 = 45
_ConstAxe = 5 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[5][44] = 1
 VarIndex = 45 ; _data[5][45] = 1
blocking walls s' First test :
x1 = 5; y1 = 45; x2 = 5; y2 = 46
_ConstAxe = 5 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[5][45] = 1
 VarIndex = 46 ; _data[5][46] = 1
blocking walls s' First test :
x1 = 5; y1 = 46; x2 = 5; y2 = 47
_ConstAxe = 5 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^ 
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[5][46] = 1
 VarIndex = 47 ; _data[5][47] = 1
blocking walls s' First test :
x1 = 5; y1 = 50; x2 = 5; y2 = 51
_ConstAxe = 5 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[5][50] = 1
 VarIndex = 51 ; _data[5][51] = 1
blocking walls s' First test :
x1 = 5; y1 = 51; x2 = 5; y2 = 52
_ConstAxe = 5 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[5][51] = 1
 VarIndex = 52 ; _data[5][52] = 1
blocking walls s' First test :
x1 = 5; y1 = 52; x2 = 5; y2 = 53
_ConstAxe = 5 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[5][52] = 1
 VarIndex = 53 ; _data[5][53] = 1
blocking walls s' First test :
x1 = 5; y1 = 53; x2 = 5; y2 = 54
_ConstAxe = 5 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[5][53] = 1
 VarIndex = 54 ; _data[5][54] = 1
blocking walls s' First test :
x1 = 5; y1 = 54; x2 = 5; y2 = 55
_ConstAxe = 5 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[5][54] = 1
 VarIndex = 55 ; _data[5][55] = 1
blocking walls s' First test :
x1 = 5; y1 = 55; x2 = 5; y2 = 56
_ConstAxe = 5 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[5][55] = 1
 VarIndex = 56 ; _data[5][56] = 1
blocking walls s' First test :
x1 = 5; y1 = 56; x2 = 5; y2 = 57
_ConstAxe = 5 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[5][56] = 1
 VarIndex = 57 ; _data[5][57] = 1
blocking walls s' First test :
x1 = 5; y1 = 57; x2 = 5; y2 = 58
_ConstAxe = 5 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[5][57] = 1
 VarIndex = 58 ; _data[5][58] = 1
blocking walls s' First test :
x1 = 5; y1 = 58; x2 = 5; y2 = 59
_ConstAxe = 5 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[5][58] = 1
 VarIndex = 59 ; _data[5][59] = 1
blocking walls s' First test :
x1 = 5; y1 = 59; x2 = 5; y2 = 60
_ConstAxe = 5 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[5][59] = 1
 VarIndex = 60 ; _data[5][60] = 1
blocking walls s' First test :
x1 = 5; y1 = 60; x2 = 5; y2 = 61
_ConstAxe = 5 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[5][60] = 1
 VarIndex = 61 ; _data[5][61] = 1
blocking walls s' First test :
x1 = 5; y1 = 61; x2 = 5; y2 = 62
_ConstAxe = 5 ; startIndex = 61 ; EndIndex = 62 ; Conditon = 1
after Revision ^_^
startIndex = 61 ; EndIndex = 62
 VarIndex = 61 ; _data[5][61] = 1
 VarIndex = 62 ; _data[5][62] = 1
blocking walls s' First test :
x1 = 5; y1 = 62; x2 = 5; y2 = 63
_ConstAxe = 5 ; startIndex = 62 ; EndIndex = 63 ; Conditon = 1
after Revision ^_^
startIndex = 62 ; EndIndex = 63
 VarIndex = 62 ; _data[5][62] = 1
 VarIndex = 63 ; _data[5][63] = 1
blocking walls s' First test :
x1 = 5; y1 = 63; x2 = 5; y2 = 64
_ConstAxe = 5 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[5][63] = 1
 VarIndex = 64 ; _data[5][64] = 1
blocking walls s' First test :
x1 = 5; y1 = 89; x2 = 6; y2 = 89
_ConstAxe = 89 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 0
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[5][89] = 1
 VarIndex = 6 ; _data[6][89] = 1
blocking walls s' First test :
x1 = 5; y1 = 92; x2 = 6; y2 = 92
_ConstAxe = 92 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 0
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[5][92] = 1
 VarIndex = 6 ; _data[6][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 5; y1 = 93; x2 = 5; y2 = 94
_ConstAxe = 5 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[5][93] = 1
 VarIndex = 94 ; _data[5][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 5; y1 = 94; x2 = 5; y2 = 95
_ConstAxe = 5 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[5][94] = 1
 VarIndex = 95 ; _data[5][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 5; y1 = 95; x2 = 5; y2 = 96
_ConstAxe = 5 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[5][95] = 1
 VarIndex = 96 ; _data[5][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 5; y1 = 96; x2 = 5; y2 = 97
_ConstAxe = 5 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[5][96] = 1
 VarIndex = 97 ; _data[5][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 5; y1 = 97; x2 = 5; y2 = 98
_ConstAxe = 5 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[5][97] = 1
 VarIndex = 98 ; _data[5][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 5; y1 = 98; x2 = 5; y2 = 99
_ConstAxe = 5 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[5][98] = 1
 VarIndex = 99 ; _data[5][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 5; y1 = 99; x2 = 5; y2 = 100
_ConstAxe = 5 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[5][99] = 1
 VarIndex = 100 ; _data[5][100] = 1
blocking walls s' First test :
x1 = 6; y1 = 1; x2 = 7; y2 = 1
_ConstAxe = 1 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 0
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[6][1] = 1
 VarIndex = 7 ; _data[7][1] = 1
blocking walls s' First test :
x1 = 6; y1 = 6; x2 = 7; y2 = 6
_ConstAxe = 6 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 0
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[6][6] = 1
 VarIndex = 7 ; _data[7][6] = 1
blocking walls s' First test :
x1 = 6; y1 = 13; x2 = 6; y2 = 14
_ConstAxe = 6 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[6][13] = 1
 VarIndex = 14 ; _data[6][14] = 1
blocking walls s' First test :
x1 = 6; y1 = 14; x2 = 6; y2 = 15
_ConstAxe = 6 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 1
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[6][14] = 1
 VarIndex = 15 ; _data[6][15] = 1
blocking walls s' First test :
x1 = 6; y1 = 15; x2 = 6; y2 = 16
_ConstAxe = 6 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 1
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[6][15] = 1
 VarIndex = 16 ; _data[6][16] = 1
blocking walls s' First test :
x1 = 6; y1 = 16; x2 = 6; y2 = 17
_ConstAxe = 6 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[6][16] = 1
 VarIndex = 17 ; _data[6][17] = 1
blocking walls s' First test :
x1 = 6; y1 = 17; x2 = 6; y2 = 18
_ConstAxe = 6 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[6][17] = 1
 VarIndex = 18 ; _data[6][18] = 1
blocking walls s' First test :
x1 = 6; y1 = 18; x2 = 6; y2 = 19
_ConstAxe = 6 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 1
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[6][18] = 1
 VarIndex = 19 ; _data[6][19] = 1
blocking walls s' First test :
x1 = 6; y1 = 19; x2 = 6; y2 = 20
_ConstAxe = 6 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 1
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[6][19] = 1
 VarIndex = 20 ; _data[6][20] = 1
blocking walls s' First test :
x1 = 6; y1 = 20; x2 = 6; y2 = 21
_ConstAxe = 6 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[6][20] = 1
 VarIndex = 21 ; _data[6][21] = 1
blocking walls s' First test :
x1 = 6; y1 = 21; x2 = 6; y2 = 22
_ConstAxe = 6 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[6][21] = 1
 VarIndex = 22 ; _data[6][22] = 1
blocking walls s' First test :
x1 = 6; y1 = 22; x2 = 6; y2 = 23
_ConstAxe = 6 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[6][22] = 1
 VarIndex = 23 ; _data[6][23] = 1
blocking walls s' First test :
x1 = 6; y1 = 23; x2 = 6; y2 = 24
_ConstAxe = 6 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^ 
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[6][23] = 1
 VarIndex = 24 ; _data[6][24] = 1
blocking walls s' First test :
x1 = 6; y1 = 24; x2 = 6; y2 = 25
_ConstAxe = 6 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[6][24] = 1
 VarIndex = 25 ; _data[6][25] = 1
blocking walls s' First test :
x1 = 6; y1 = 25; x2 = 6; y2 = 26
_ConstAxe = 6 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[6][25] = 1
 VarIndex = 26 ; _data[6][26] = 1
blocking walls s' First test :
x1 = 6; y1 = 26; x2 = 6; y2 = 27
_ConstAxe = 6 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[6][26] = 1
 VarIndex = 27 ; _data[6][27] = 1
blocking walls s' First test :
x1 = 6; y1 = 27; x2 = 6; y2 = 28
_ConstAxe = 6 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[6][27] = 1
 VarIndex = 28 ; _data[6][28] = 1
blocking walls s' First test :
x1 = 6; y1 = 28; x2 = 6; y2 = 29
_ConstAxe = 6 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[6][28] = 1
 VarIndex = 29 ; _data[6][29] = 1
blocking walls s' First test :
x1 = 6; y1 = 29; x2 = 6; y2 = 30
_ConstAxe = 6 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 1
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[6][29] = 1
 VarIndex = 30 ; _data[6][30] = 1
blocking walls s' First test :
x1 = 6; y1 = 30; x2 = 6; y2 = 31
_ConstAxe = 6 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 1
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[6][30] = 1
 VarIndex = 31 ; _data[6][31] = 1
blocking walls s' First test :
x1 = 6; y1 = 31; x2 = 6; y2 = 32
_ConstAxe = 6 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 1
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[6][31] = 1
 VarIndex = 32 ; _data[6][32] = 1
blocking walls s' First test :
x1 = 6; y1 = 32; x2 = 6; y2 = 33
_ConstAxe = 6 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[6][32] = 1
 VarIndex = 33 ; _data[6][33] = 1
blocking walls s' First test :
x1 = 6; y1 = 35; x2 = 7; y2 = 35
_ConstAxe = 35 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 0
after Revision ^_^ 
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[6][35] = 1
 VarIndex = 7 ; _data[7][35] = 1
blocking walls s' First test :
x1 = 6; y1 = 63; x2 = 7; y2 = 63
_ConstAxe = 63 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 0
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[6][63] = 1
 VarIndex = 7 ; _data[7][63] = 1
blocking walls s' First test :
x1 = 6; y1 = 89; x2 = 7; y2 = 89
_ConstAxe = 89 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 0
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[6][89] = 1
 VarIndex = 7 ; _data[7][89] = 1
blocking walls s' First test :
x1 = 6; y1 = 92; x2 = 7; y2 = 92
_ConstAxe = 92 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 0
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[6][92] = 1
 VarIndex = 7 ; _data[7][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 6; y1 = 93; x2 = 6; y2 = 94
_ConstAxe = 6 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[6][93] = 1
 VarIndex = 94 ; _data[6][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 6; y1 = 94; x2 = 6; y2 = 95
_ConstAxe = 6 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[6][94] = 1
 VarIndex = 95 ; _data[6][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 6; y1 = 95; x2 = 6; y2 = 96
_ConstAxe = 6 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[6][95] = 1
 VarIndex = 96 ; _data[6][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 6; y1 = 96; x2 = 6; y2 = 97
_ConstAxe = 6 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[6][96] = 1
 VarIndex = 97 ; _data[6][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 6; y1 = 97; x2 = 6; y2 = 98
_ConstAxe = 6 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[6][97] = 1
 VarIndex = 98 ; _data[6][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 6; y1 = 98; x2 = 6; y2 = 99
_ConstAxe = 6 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[6][98] = 1
 VarIndex = 99 ; _data[6][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 6; y1 = 99; x2 = 6; y2 = 100
_ConstAxe = 6 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[6][99] = 1
 VarIndex = 100 ; _data[6][100] = 1
blocking walls s' First test :
x1 = 7; y1 = 1; x2 = 8; y2 = 1
_ConstAxe = 1 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][1] = 1
 VarIndex = 8 ; _data[8][1] = 1
blocking walls s' First test :
x1 = 7; y1 = 6; x2 = 8; y2 = 6
_ConstAxe = 6 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][6] = 1
 VarIndex = 8 ; _data[8][6] = 1
blocking walls s' First test :
x1 = 7; y1 = 13; x2 = 8; y2 = 13
_ConstAxe = 13 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][13] = 1
 VarIndex = 8 ; _data[8][13] = 1
blocking walls s' First test :
x1 = 7; y1 = 32; x2 = 8; y2 = 32
_ConstAxe = 32 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][32] = 1
 VarIndex = 8 ; _data[8][32] = 1
blocking walls s' First test :
x1 = 7; y1 = 35; x2 = 8; y2 = 35
_ConstAxe = 35 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][35] = 1
 VarIndex = 8 ; _data[8][35] = 1
blocking walls s' First test :
x1 = 7; y1 = 63; x2 = 8; y2 = 63
_ConstAxe = 63 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][63] = 1
 VarIndex = 8 ; _data[8][63] = 1
blocking walls s' First test :
x1 = 7; y1 = 89; x2 = 8; y2 = 89
_ConstAxe = 89 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][89] = 1
 VarIndex = 8 ; _data[8][89] = 1
blocking walls s' First test :
x1 = 7; y1 = 92; x2 = 8; y2 = 92
_ConstAxe = 92 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 0
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[7][92] = 1
 VarIndex = 8 ; _data[8][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 7; y1 = 93; x2 = 7; y2 = 94
_ConstAxe = 7 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[7][93] = 1
 VarIndex = 94 ; _data[7][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 7; y1 = 94; x2 = 7; y2 = 95
_ConstAxe = 7 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[7][94] = 1
 VarIndex = 95 ; _data[7][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 7; y1 = 95; x2 = 7; y2 = 96
_ConstAxe = 7 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[7][95] = 1
 VarIndex = 96 ; _data[7][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 7; y1 = 96; x2 = 7; y2 = 97
_ConstAxe = 7 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[7][96] = 1
 VarIndex = 97 ; _data[7][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 7; y1 = 97; x2 = 7; y2 = 98
_ConstAxe = 7 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[7][97] = 1
 VarIndex = 98 ; _data[7][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 7; y1 = 98; x2 = 7; y2 = 99
_ConstAxe = 7 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[7][98] = 1
 VarIndex = 99 ; _data[7][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 7; y1 = 99; x2 = 7; y2 = 100
_ConstAxe = 7 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[7][99] = 1
 VarIndex = 100 ; _data[7][100] = 1
blocking walls s' First test :
x1 = 8; y1 = 1; x2 = 9; y2 = 1
_ConstAxe = 1 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][1] = 1
 VarIndex = 9 ; _data[9][1] = 1
blocking walls s' First test :
x1 = 8; y1 = 6; x2 = 9; y2 = 6
_ConstAxe = 6 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][6] = 1
 VarIndex = 9 ; _data[9][6] = 1
blocking walls s' First test :
x1 = 8; y1 = 13; x2 = 9; y2 = 13
_ConstAxe = 13 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][13] = 1
 VarIndex = 9 ; _data[9][13] = 1
blocking walls s' First test :
x1 = 8; y1 = 32; x2 = 9; y2 = 32
_ConstAxe = 32 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][32] = 1
 VarIndex = 9 ; _data[9][32] = 1
blocking walls s' First test :
x1 = 8; y1 = 35; x2 = 9; y2 = 35
_ConstAxe = 35 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][35] = 1
 VarIndex = 9 ; _data[9][35] = 1
blocking walls s' First test :
x1 = 8; y1 = 63; x2 = 9; y2 = 63
_ConstAxe = 63 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][63] = 1
 VarIndex = 9 ; _data[9][63] = 1
blocking walls s' First test :
x1 = 8; y1 = 89; x2 = 9; y2 = 89
_ConstAxe = 89 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][89] = 1
 VarIndex = 9 ; _data[9][89] = 1
blocking walls s' First test :
x1 = 8; y1 = 92; x2 = 9; y2 = 92
_ConstAxe = 92 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 0
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[8][92] = 1
 VarIndex = 9 ; _data[9][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 8; y1 = 93; x2 = 8; y2 = 94
_ConstAxe = 8 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[8][93] = 1
 VarIndex = 94 ; _data[8][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 8; y1 = 94; x2 = 8; y2 = 95
_ConstAxe = 8 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[8][94] = 1
 VarIndex = 95 ; _data[8][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 8; y1 = 95; x2 = 8; y2 = 96
_ConstAxe = 8 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[8][95] = 1
 VarIndex = 96 ; _data[8][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 8; y1 = 96; x2 = 8; y2 = 97
_ConstAxe = 8 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[8][96] = 1
 VarIndex = 97 ; _data[8][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 8; y1 = 97; x2 = 8; y2 = 98
_ConstAxe = 8 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[8][97] = 1
 VarIndex = 98 ; _data[8][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 8; y1 = 98; x2 = 8; y2 = 99
_ConstAxe = 8 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[8][98] = 1
 VarIndex = 99 ; _data[8][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 8; y1 = 99; x2 = 8; y2 = 100
_ConstAxe = 8 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[8][99] = 1
 VarIndex = 100 ; _data[8][100] = 1
blocking walls s' First test :
x1 = 9; y1 = 1; x2 = 10; y2 = 1
_ConstAxe = 1 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][1] = 1
 VarIndex = 10 ; _data[10][1] = 1
blocking walls s' First test :
x1 = 9; y1 = 6; x2 = 10; y2 = 6
_ConstAxe = 6 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^ 
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][6] = 1
 VarIndex = 10 ; _data[10][6] = 1
blocking walls s' First test :
x1 = 9; y1 = 13; x2 = 10; y2 = 13
_ConstAxe = 13 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][13] = 1
 VarIndex = 10 ; _data[10][13] = 1
blocking walls s' First test :
x1 = 9; y1 = 32; x2 = 10; y2 = 32
_ConstAxe = 32 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][32] = 1
 VarIndex = 10 ; _data[10][32] = 1
blocking walls s' First test :
x1 = 9; y1 = 35; x2 = 10; y2 = 35
_ConstAxe = 35 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][35] = 1
 VarIndex = 10 ; _data[10][35] = 1
blocking walls s' First test :
x1 = 9; y1 = 63; x2 = 10; y2 = 63
_ConstAxe = 63 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][63] = 1
 VarIndex = 10 ; _data[10][63] = 1
blocking walls s' First test :
x1 = 9; y1 = 89; x2 = 10; y2 = 89
_ConstAxe = 89 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][89] = 1
 VarIndex = 10 ; _data[10][89] = 1
blocking walls s' First test :
x1 = 9; y1 = 92; x2 = 10; y2 = 92
_ConstAxe = 92 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 0
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[9][92] = 1
 VarIndex = 10 ; _data[10][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 9; y1 = 93; x2 = 9; y2 = 94
_ConstAxe = 9 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[9][93] = 1
 VarIndex = 94 ; _data[9][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 9; y1 = 94; x2 = 9; y2 = 95
_ConstAxe = 9 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[9][94] = 1
 VarIndex = 95 ; _data[9][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 9; y1 = 95; x2 = 9; y2 = 96
_ConstAxe = 9 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[9][95] = 1
 VarIndex = 96 ; _data[9][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 9; y1 = 96; x2 = 9; y2 = 97
_ConstAxe = 9 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[9][96] = 1
 VarIndex = 97 ; _data[9][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 9; y1 = 97; x2 = 9; y2 = 98
_ConstAxe = 9 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[9][97] = 1
 VarIndex = 98 ; _data[9][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 9; y1 = 98; x2 = 9; y2 = 99
_ConstAxe = 9 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[9][98] = 1
 VarIndex = 99 ; _data[9][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 9; y1 = 99; x2 = 9; y2 = 100
_ConstAxe = 9 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[9][99] = 1
 VarIndex = 100 ; _data[9][100] = 1
blocking walls s' First test :
x1 = 10; y1 = 1; x2 = 11; y2 = 1
_ConstAxe = 1 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][1] = 1
 VarIndex = 11 ; _data[11][1] = 1
blocking walls s' First test :
x1 = 10; y1 = 6; x2 = 11; y2 = 6
_ConstAxe = 6 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][6] = 1
 VarIndex = 11 ; _data[11][6] = 1
blocking walls s' First test :
x1 = 10; y1 = 13; x2 = 11; y2 = 13
_ConstAxe = 13 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][13] = 1
 VarIndex = 11 ; _data[11][13] = 1
blocking walls s' First test :
x1 = 10; y1 = 32; x2 = 11; y2 = 32
_ConstAxe = 32 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][32] = 1
 VarIndex = 11 ; _data[11][32] = 1
blocking walls s' First test :
x1 = 10; y1 = 35; x2 = 11; y2 = 35
_ConstAxe = 35 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][35] = 1
 VarIndex = 11 ; _data[11][35] = 1
blocking walls s' First test :
x1 = 10; y1 = 63; x2 = 11; y2 = 63
_ConstAxe = 63 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][63] = 1
 VarIndex = 11 ; _data[11][63] = 1
blocking walls s' First test :
x1 = 10; y1 = 89; x2 = 11; y2 = 89
_ConstAxe = 89 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][89] = 1
 VarIndex = 11 ; _data[11][89] = 1
blocking walls s' First test :
x1 = 10; y1 = 92; x2 = 11; y2 = 92
_ConstAxe = 92 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 0
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[10][92] = 1
 VarIndex = 11 ; _data[11][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 10; y1 = 93; x2 = 10; y2 = 94
_ConstAxe = 10 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[10][93] = 1
 VarIndex = 94 ; _data[10][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 10; y1 = 94; x2 = 10; y2 = 95
_ConstAxe = 10 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[10][94] = 1
 VarIndex = 95 ; _data[10][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 10; y1 = 95; x2 = 10; y2 = 96
_ConstAxe = 10 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[10][95] = 1
 VarIndex = 96 ; _data[10][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 10; y1 = 96; x2 = 10; y2 = 97
_ConstAxe = 10 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[10][96] = 1
 VarIndex = 97 ; _data[10][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 10; y1 = 97; x2 = 10; y2 = 98
_ConstAxe = 10 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[10][97] = 1
 VarIndex = 98 ; _data[10][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 10; y1 = 98; x2 = 10; y2 = 99
_ConstAxe = 10 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[10][98] = 1
 VarIndex = 99 ; _data[10][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 10; y1 = 99; x2 = 10; y2 = 100
_ConstAxe = 10 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[10][99] = 1
 VarIndex = 100 ; _data[10][100] = 1
blocking walls s' First test :
x1 = 11; y1 = 1; x2 = 12; y2 = 1
_ConstAxe = 1 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 0
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[11][1] = 1
 VarIndex = 12 ; _data[12][1] = 1
blocking walls s' First test :
x1 = 11; y1 = 6; x2 = 12; y2 = 6
_ConstAxe = 6 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 0
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[11][6] = 1
 VarIndex = 12 ; _data[12][6] = 1
blocking walls s' First test :
x1 = 11; y1 = 13; x2 = 12; y2 = 13
_ConstAxe = 13 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 0
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[11][13] = 1
 VarIndex = 12 ; _data[12][13] = 1
blocking walls s' First test :
x1 = 11; y1 = 32; x2 = 12; y2 = 32
_ConstAxe = 32 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 0
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[11][32] = 1
 VarIndex = 12 ; _data[12][32] = 1
blocking walls s' First test :
x1 = 11; y1 = 35; x2 = 12; y2 = 35
_ConstAxe = 35 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 0
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[11][35] = 1
 VarIndex = 12 ; _data[12][35] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 63; x2 = 11; y2 = 64
_ConstAxe = 11 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[11][63] = 1
 VarIndex = 64 ; _data[11][64] = 1
blocking walls s' First test :
x1 = 11; y1 = 89; x2 = 12; y2 = 89
_ConstAxe = 89 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 0
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[11][89] = 1
 VarIndex = 12 ; _data[12][89] = 1
blocking walls s' First test :
x1 = 11; y1 = 92; x2 = 12; y2 = 92
_ConstAxe = 92 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 0
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[11][92] = 1
 VarIndex = 12 ; _data[12][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 93; x2 = 11; y2 = 94
_ConstAxe = 11 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^ 
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[11][93] = 1
 VarIndex = 94 ; _data[11][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 94; x2 = 11; y2 = 95
_ConstAxe = 11 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^ 
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[11][94] = 1
 VarIndex = 95 ; _data[11][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 95; x2 = 11; y2 = 96
_ConstAxe = 11 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[11][95] = 1
 VarIndex = 96 ; _data[11][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 96; x2 = 11; y2 = 97
_ConstAxe = 11 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[11][96] = 1
 VarIndex = 97 ; _data[11][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 97; x2 = 11; y2 = 98
_ConstAxe = 11 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^ 
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[11][97] = 1
 VarIndex = 98 ; _data[11][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 98; x2 = 11; y2 = 99
_ConstAxe = 11 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[11][98] = 1
 VarIndex = 99 ; _data[11][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 11; y1 = 99; x2 = 11; y2 = 100
_ConstAxe = 11 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[11][99] = 1
 VarIndex = 100 ; _data[11][100] = 1
blocking walls s' First test :
x1 = 12; y1 = 1; x2 = 13; y2 = 1
_ConstAxe = 1 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 0
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[12][1] = 1
 VarIndex = 13 ; _data[13][1] = 1
blocking walls s' First test :
x1 = 12; y1 = 6; x2 = 13; y2 = 6
_ConstAxe = 6 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 0
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[12][6] = 1
 VarIndex = 13 ; _data[13][6] = 1
blocking walls s' First test :
x1 = 12; y1 = 13; x2 = 13; y2 = 13
_ConstAxe = 13 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 0
after Revision ^_^ 
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[12][13] = 1
 VarIndex = 13 ; _data[13][13] = 1
blocking walls s' First test :
x1 = 12; y1 = 32; x2 = 13; y2 = 32
_ConstAxe = 32 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 0
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[12][32] = 1
 VarIndex = 13 ; _data[13][32] = 1
blocking walls s' First test :
x1 = 12; y1 = 35; x2 = 12; y2 = 36
_ConstAxe = 12 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[12][35] = 1
 VarIndex = 36 ; _data[12][36] = 1
blocking walls s' First test :
x1 = 12; y1 = 36; x2 = 12; y2 = 37
_ConstAxe = 12 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^ 
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[12][36] = 1
 VarIndex = 37 ; _data[12][37] = 1
blocking walls s' First test :
x1 = 12; y1 = 37; x2 = 12; y2 = 38
_ConstAxe = 12 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[12][37] = 1
 VarIndex = 38 ; _data[12][38] = 1
blocking walls s' First test :
x1 = 12; y1 = 38; x2 = 12; y2 = 39
_ConstAxe = 12 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[12][38] = 1
 VarIndex = 39 ; _data[12][39] = 1
blocking walls s' First test :
x1 = 12; y1 = 39; x2 = 12; y2 = 40
_ConstAxe = 12 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^ 
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[12][39] = 1
 VarIndex = 40 ; _data[12][40] = 1
blocking walls s' First test :
x1 = 12; y1 = 40; x2 = 12; y2 = 41
_ConstAxe = 12 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[12][40] = 1
 VarIndex = 41 ; _data[12][41] = 1
blocking walls s' First test :
x1 = 12; y1 = 41; x2 = 12; y2 = 42
_ConstAxe = 12 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[12][41] = 1
 VarIndex = 42 ; _data[12][42] = 1
blocking walls s' First test :
x1 = 12; y1 = 42; x2 = 12; y2 = 43
_ConstAxe = 12 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[12][42] = 1
 VarIndex = 43 ; _data[12][43] = 1
blocking walls s' First test :
x1 = 12; y1 = 43; x2 = 12; y2 = 44
_ConstAxe = 12 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[12][43] = 1
 VarIndex = 44 ; _data[12][44] = 1
blocking walls s' First test :
x1 = 12; y1 = 44; x2 = 12; y2 = 45
_ConstAxe = 12 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[12][44] = 1
 VarIndex = 45 ; _data[12][45] = 1
blocking walls s' First test :
x1 = 12; y1 = 45; x2 = 12; y2 = 46
_ConstAxe = 12 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[12][45] = 1
 VarIndex = 46 ; _data[12][46] = 1
blocking walls s' First test :
x1 = 12; y1 = 46; x2 = 12; y2 = 47
_ConstAxe = 12 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[12][46] = 1
 VarIndex = 47 ; _data[12][47] = 1
blocking walls s' First test :
x1 = 12; y1 = 47; x2 = 12; y2 = 48
_ConstAxe = 12 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[12][47] = 1
 VarIndex = 48 ; _data[12][48] = 1
blocking walls s' First test :
x1 = 12; y1 = 48; x2 = 12; y2 = 49
_ConstAxe = 12 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[12][48] = 1
 VarIndex = 49 ; _data[12][49] = 1
blocking walls s' First test :
x1 = 12; y1 = 49; x2 = 12; y2 = 50
_ConstAxe = 12 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[12][49] = 1
 VarIndex = 50 ; _data[12][50] = 1
blocking walls s' First test :
x1 = 12; y1 = 50; x2 = 12; y2 = 51
_ConstAxe = 12 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[12][50] = 1
 VarIndex = 51 ; _data[12][51] = 1
blocking walls s' First test :
x1 = 12; y1 = 51; x2 = 12; y2 = 52
_ConstAxe = 12 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[12][51] = 1
 VarIndex = 52 ; _data[12][52] = 1
blocking walls s' First test :
x1 = 12; y1 = 52; x2 = 12; y2 = 53
_ConstAxe = 12 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[12][52] = 1
 VarIndex = 53 ; _data[12][53] = 1
blocking walls s' First test :
x1 = 12; y1 = 53; x2 = 12; y2 = 54
_ConstAxe = 12 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[12][53] = 1
 VarIndex = 54 ; _data[12][54] = 1
blocking walls s' First test :
x1 = 12; y1 = 54; x2 = 12; y2 = 55
_ConstAxe = 12 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[12][54] = 1
 VarIndex = 55 ; _data[12][55] = 1
blocking walls s' First test :
x1 = 12; y1 = 55; x2 = 12; y2 = 56
_ConstAxe = 12 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[12][55] = 1
 VarIndex = 56 ; _data[12][56] = 1
blocking walls s' First test :
x1 = 12; y1 = 56; x2 = 12; y2 = 57
_ConstAxe = 12 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[12][56] = 1
 VarIndex = 57 ; _data[12][57] = 1
blocking walls s' First test :
x1 = 12; y1 = 57; x2 = 12; y2 = 58
_ConstAxe = 12 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[12][57] = 1
 VarIndex = 58 ; _data[12][58] = 1
blocking walls s' First test :
x1 = 12; y1 = 58; x2 = 12; y2 = 59
_ConstAxe = 12 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[12][58] = 1
 VarIndex = 59 ; _data[12][59] = 1
blocking walls s' First test :
x1 = 12; y1 = 59; x2 = 12; y2 = 60
_ConstAxe = 12 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[12][59] = 1
 VarIndex = 60 ; _data[12][60] = 1
blocking walls s' First test :
x1 = 12; y1 = 60; x2 = 12; y2 = 61
_ConstAxe = 12 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[12][60] = 1
 VarIndex = 61 ; _data[12][61] = 1
blocking walls s' First test :
x1 = 12; y1 = 61; x2 = 12; y2 = 62
_ConstAxe = 12 ; startIndex = 61 ; EndIndex = 62 ; Conditon = 1
after Revision ^_^
startIndex = 61 ; EndIndex = 62
 VarIndex = 61 ; _data[12][61] = 1
 VarIndex = 62 ; _data[12][62] = 1
blocking walls s' First test :
x1 = 12; y1 = 62; x2 = 12; y2 = 63
_ConstAxe = 12 ; startIndex = 62 ; EndIndex = 63 ; Conditon = 1
after Revision ^_^ 
startIndex = 62 ; EndIndex = 63
 VarIndex = 62 ; _data[12][62] = 1
 VarIndex = 63 ; _data[12][63] = 1
blocking walls s' First test :
x1 = 12; y1 = 63; x2 = 12; y2 = 64
_ConstAxe = 12 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[12][63] = 1
 VarIndex = 64 ; _data[12][64] = 1
blocking walls s' First test :
x1 = 12; y1 = 89; x2 = 13; y2 = 89
_ConstAxe = 89 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 0
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[12][89] = 1
 VarIndex = 13 ; _data[13][89] = 1
blocking walls s' First test :
x1 = 12; y1 = 92; x2 = 13; y2 = 92
_ConstAxe = 92 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 0
after Revision ^_^ 
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[12][92] = 1
 VarIndex = 13 ; _data[13][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 12; y1 = 93; x2 = 12; y2 = 94
_ConstAxe = 12 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[12][93] = 1
 VarIndex = 94 ; _data[12][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 12; y1 = 94; x2 = 12; y2 = 95
_ConstAxe = 12 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[12][94] = 1
 VarIndex = 95 ; _data[12][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 12; y1 = 95; x2 = 12; y2 = 96
_ConstAxe = 12 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^ 
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[12][95] = 1
 VarIndex = 96 ; _data[12][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 12; y1 = 96; x2 = 12; y2 = 97
_ConstAxe = 12 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[12][96] = 1
 VarIndex = 97 ; _data[12][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 12; y1 = 97; x2 = 12; y2 = 98
_ConstAxe = 12 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[12][97] = 1
 VarIndex = 98 ; _data[12][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 12; y1 = 98; x2 = 12; y2 = 99
_ConstAxe = 12 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[12][98] = 1
 VarIndex = 99 ; _data[12][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 12; y1 = 99; x2 = 12; y2 = 100
_ConstAxe = 12 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[12][99] = 1
 VarIndex = 100 ; _data[12][100] = 1
blocking walls s' First test :
x1 = 13; y1 = 1; x2 = 14; y2 = 1
_ConstAxe = 1 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 0
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[13][1] = 1
 VarIndex = 14 ; _data[14][1] = 1
blocking walls s' First test :
x1 = 13; y1 = 6; x2 = 14; y2 = 6
_ConstAxe = 6 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 0
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[13][6] = 1
 VarIndex = 14 ; _data[14][6] = 1
blocking walls s' First test :
x1 = 13; y1 = 13; x2 = 14; y2 = 13
_ConstAxe = 13 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 0
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[13][13] = 1
 VarIndex = 14 ; _data[14][13] = 1
blocking walls s' First test :
x1 = 13; y1 = 32; x2 = 14; y2 = 32
_ConstAxe = 32 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 0
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[13][32] = 1
 VarIndex = 14 ; _data[14][32] = 1
blocking walls s' First test :
x1 = 13; y1 = 63; x2 = 14; y2 = 63
_ConstAxe = 63 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 0
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[13][63] = 1
 VarIndex = 14 ; _data[14][63] = 1
blocking walls s' First test :
x1 = 13; y1 = 89; x2 = 14; y2 = 89
_ConstAxe = 89 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 0
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[13][89] = 1
 VarIndex = 14 ; _data[14][89] = 1
blocking walls s' First test :
x1 = 13; y1 = 92; x2 = 14; y2 = 92
_ConstAxe = 92 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 0
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[13][92] = 1
 VarIndex = 14 ; _data[14][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 13; y1 = 93; x2 = 13; y2 = 94
_ConstAxe = 13 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[13][93] = 1
 VarIndex = 94 ; _data[13][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 13; y1 = 94; x2 = 13; y2 = 95
_ConstAxe = 13 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[13][94] = 1
 VarIndex = 95 ; _data[13][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 13; y1 = 95; x2 = 13; y2 = 96
_ConstAxe = 13 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[13][95] = 1
 VarIndex = 96 ; _data[13][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 13; y1 = 96; x2 = 13; y2 = 97
_ConstAxe = 13 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[13][96] = 1
 VarIndex = 97 ; _data[13][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 13; y1 = 97; x2 = 13; y2 = 98
_ConstAxe = 13 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[13][97] = 1
 VarIndex = 98 ; _data[13][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 13; y1 = 98; x2 = 13; y2 = 99
_ConstAxe = 13 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[13][98] = 1
 VarIndex = 99 ; _data[13][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 13; y1 = 99; x2 = 13; y2 = 100
_ConstAxe = 13 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[13][99] = 1
 VarIndex = 100 ; _data[13][100] = 1
blocking walls s' First test :
x1 = 14; y1 = 1; x2 = 15; y2 = 1
_ConstAxe = 1 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 0
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[14][1] = 1
 VarIndex = 15 ; _data[15][1] = 1
blocking walls s' First test :
x1 = 14; y1 = 6; x2 = 14; y2 = 7
_ConstAxe = 14 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[14][6] = 1
 VarIndex = 7 ; _data[14][7] = 1
blocking walls s' First test :
x1 = 14; y1 = 7; x2 = 14; y2 = 8
_ConstAxe = 14 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^ 
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[14][7] = 1
 VarIndex = 8 ; _data[14][8] = 1
blocking walls s' First test :
x1 = 14; y1 = 8; x2 = 14; y2 = 9
_ConstAxe = 14 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[14][8] = 1
 VarIndex = 9 ; _data[14][9] = 1
blocking walls s' First test :
x1 = 14; y1 = 9; x2 = 14; y2 = 10
_ConstAxe = 14 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^ 
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[14][9] = 1
 VarIndex = 10 ; _data[14][10] = 1
blocking walls s' First test :
x1 = 14; y1 = 10; x2 = 14; y2 = 11
_ConstAxe = 14 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^ 
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[14][10] = 1
 VarIndex = 11 ; _data[14][11] = 1
blocking walls s' First test :
x1 = 14; y1 = 11; x2 = 14; y2 = 12
_ConstAxe = 14 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^ 
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[14][11] = 1
 VarIndex = 12 ; _data[14][12] = 1
blocking walls s' First test :
x1 = 14; y1 = 12; x2 = 14; y2 = 13
_ConstAxe = 14 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^ 
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[14][12] = 1
 VarIndex = 13 ; _data[14][13] = 1
blocking walls s' First test :
x1 = 14; y1 = 13; x2 = 14; y2 = 14
_ConstAxe = 14 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[14][13] = 1
 VarIndex = 14 ; _data[14][14] = 1
blocking walls s' First test :
x1 = 14; y1 = 32; x2 = 15; y2 = 32
_ConstAxe = 32 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 0
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[14][32] = 1
 VarIndex = 15 ; _data[15][32] = 1
blocking walls s' First test :
x1 = 14; y1 = 44; x2 = 14; y2 = 45
_ConstAxe = 14 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[14][44] = 1
 VarIndex = 45 ; _data[14][45] = 1
blocking walls s' First test :
x1 = 14; y1 = 45; x2 = 14; y2 = 46
_ConstAxe = 14 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[14][45] = 1
 VarIndex = 46 ; _data[14][46] = 1
blocking walls s' First test :
x1 = 14; y1 = 46; x2 = 14; y2 = 47
_ConstAxe = 14 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^ 
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[14][46] = 1
 VarIndex = 47 ; _data[14][47] = 1
blocking walls s' First test :
x1 = 14; y1 = 47; x2 = 14; y2 = 48
_ConstAxe = 14 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[14][47] = 1
 VarIndex = 48 ; _data[14][48] = 1
blocking walls s' First test :
x1 = 14; y1 = 63; x2 = 15; y2 = 63
_ConstAxe = 63 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 0
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[14][63] = 1
 VarIndex = 15 ; _data[15][63] = 1
blocking walls s' First test :
x1 = 14; y1 = 89; x2 = 15; y2 = 89
_ConstAxe = 89 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 0
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[14][89] = 1
 VarIndex = 15 ; _data[15][89] = 1
blocking walls s' First test :
x1 = 14; y1 = 92; x2 = 15; y2 = 92
_ConstAxe = 92 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 0
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[14][92] = 1
 VarIndex = 15 ; _data[15][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 14; y1 = 93; x2 = 14; y2 = 94
_ConstAxe = 14 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[14][93] = 1
 VarIndex = 94 ; _data[14][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 14; y1 = 94; x2 = 14; y2 = 95
_ConstAxe = 14 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[14][94] = 1
 VarIndex = 95 ; _data[14][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 14; y1 = 95; x2 = 14; y2 = 96
_ConstAxe = 14 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[14][95] = 1
 VarIndex = 96 ; _data[14][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 14; y1 = 96; x2 = 14; y2 = 97
_ConstAxe = 14 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[14][96] = 1
 VarIndex = 97 ; _data[14][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 14; y1 = 97; x2 = 14; y2 = 98
_ConstAxe = 14 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[14][97] = 1
 VarIndex = 98 ; _data[14][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 14; y1 = 98; x2 = 14; y2 = 99
_ConstAxe = 14 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[14][98] = 1
 VarIndex = 99 ; _data[14][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 14; y1 = 99; x2 = 14; y2 = 100
_ConstAxe = 14 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^ 
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[14][99] = 1
 VarIndex = 100 ; _data[14][100] = 1
blocking walls s' First test :
x1 = 15; y1 = 1; x2 = 16; y2 = 1
_ConstAxe = 1 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 0
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[15][1] = 1
 VarIndex = 16 ; _data[16][1] = 1
blocking walls s' First test :
x1 = 15; y1 = 32; x2 = 16; y2 = 32
_ConstAxe = 32 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 0
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[15][32] = 1
 VarIndex = 16 ; _data[16][32] = 1
blocking walls s' First test :
x1 = 15; y1 = 44; x2 = 16; y2 = 44
_ConstAxe = 44 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 0
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[15][44] = 1
 VarIndex = 16 ; _data[16][44] = 1
blocking walls s' First test :
x1 = 15; y1 = 47; x2 = 15; y2 = 48
_ConstAxe = 15 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[15][47] = 1
 VarIndex = 48 ; _data[15][48] = 1
blocking walls s' First test :
x1 = 15; y1 = 48; x2 = 15; y2 = 49
_ConstAxe = 15 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[15][48] = 1
 VarIndex = 49 ; _data[15][49] = 1
blocking walls s' First test :
x1 = 15; y1 = 49; x2 = 15; y2 = 50
_ConstAxe = 15 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[15][49] = 1
 VarIndex = 50 ; _data[15][50] = 1
blocking walls s' First test :
x1 = 15; y1 = 50; x2 = 15; y2 = 51
_ConstAxe = 15 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[15][50] = 1
 VarIndex = 51 ; _data[15][51] = 1
blocking walls s' First test :
x1 = 15; y1 = 51; x2 = 15; y2 = 52
_ConstAxe = 15 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[15][51] = 1
 VarIndex = 52 ; _data[15][52] = 1
blocking walls s' First test :
x1 = 15; y1 = 52; x2 = 15; y2 = 53
_ConstAxe = 15 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[15][52] = 1
 VarIndex = 53 ; _data[15][53] = 1
blocking walls s' First test :
x1 = 15; y1 = 53; x2 = 15; y2 = 54
_ConstAxe = 15 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[15][53] = 1
 VarIndex = 54 ; _data[15][54] = 1
blocking walls s' First test :
x1 = 15; y1 = 54; x2 = 15; y2 = 55
_ConstAxe = 15 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[15][54] = 1
 VarIndex = 55 ; _data[15][55] = 1
blocking walls s' First test :
x1 = 15; y1 = 55; x2 = 15; y2 = 56
_ConstAxe = 15 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[15][55] = 1
 VarIndex = 56 ; _data[15][56] = 1
blocking walls s' First test :
x1 = 15; y1 = 56; x2 = 15; y2 = 57
_ConstAxe = 15 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^ 
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[15][56] = 1
 VarIndex = 57 ; _data[15][57] = 1
blocking walls s' First test :
x1 = 15; y1 = 57; x2 = 15; y2 = 58
_ConstAxe = 15 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[15][57] = 1
 VarIndex = 58 ; _data[15][58] = 1
blocking walls s' First test :
x1 = 15; y1 = 58; x2 = 15; y2 = 59
_ConstAxe = 15 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[15][58] = 1
 VarIndex = 59 ; _data[15][59] = 1
blocking walls s' First test :
x1 = 15; y1 = 59; x2 = 15; y2 = 60
_ConstAxe = 15 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^ 
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[15][59] = 1
 VarIndex = 60 ; _data[15][60] = 1
blocking walls s' First test :
x1 = 15; y1 = 60; x2 = 15; y2 = 61
_ConstAxe = 15 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[15][60] = 1
 VarIndex = 61 ; _data[15][61] = 1
blocking walls s' First test :
x1 = 15; y1 = 63; x2 = 16; y2 = 63
_ConstAxe = 63 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 0
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[15][63] = 1
 VarIndex = 16 ; _data[16][63] = 1
blocking walls s' First test :
x1 = 15; y1 = 89; x2 = 16; y2 = 89
_ConstAxe = 89 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 0
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[15][89] = 1
 VarIndex = 16 ; _data[16][89] = 1
blocking walls s' First test :
x1 = 15; y1 = 92; x2 = 16; y2 = 92
_ConstAxe = 92 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 0
after Revision ^_^ 
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[15][92] = 1
 VarIndex = 16 ; _data[16][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 15; y1 = 93; x2 = 15; y2 = 94
_ConstAxe = 15 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[15][93] = 1
 VarIndex = 94 ; _data[15][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 15; y1 = 94; x2 = 15; y2 = 95
_ConstAxe = 15 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[15][94] = 1
 VarIndex = 95 ; _data[15][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 15; y1 = 95; x2 = 15; y2 = 96
_ConstAxe = 15 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^ 
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[15][95] = 1
 VarIndex = 96 ; _data[15][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 15; y1 = 96; x2 = 15; y2 = 97
_ConstAxe = 15 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[15][96] = 1
 VarIndex = 97 ; _data[15][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 15; y1 = 97; x2 = 15; y2 = 98
_ConstAxe = 15 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[15][97] = 1
 VarIndex = 98 ; _data[15][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 15; y1 = 98; x2 = 15; y2 = 99
_ConstAxe = 15 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[15][98] = 1
 VarIndex = 99 ; _data[15][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 15; y1 = 99; x2 = 15; y2 = 100
_ConstAxe = 15 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[15][99] = 1
 VarIndex = 100 ; _data[15][100] = 1
blocking walls s' First test :
x1 = 16; y1 = 1; x2 = 17; y2 = 1
_ConstAxe = 1 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 0
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[16][1] = 1
 VarIndex = 17 ; _data[17][1] = 1
blocking walls s' First test :
x1 = 16; y1 = 32; x2 = 17; y2 = 32
_ConstAxe = 32 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 0
after Revision ^_^ 
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[16][32] = 1
 VarIndex = 17 ; _data[17][32] = 1
blocking walls s' First test :
x1 = 16; y1 = 44; x2 = 17; y2 = 44
_ConstAxe = 44 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 0
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[16][44] = 1
 VarIndex = 17 ; _data[17][44] = 1
blocking walls s' First test :
x1 = 16; y1 = 47; x2 = 16; y2 = 48
_ConstAxe = 16 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[16][47] = 1
 VarIndex = 48 ; _data[16][48] = 1
blocking walls s' First test :
x1 = 16; y1 = 48; x2 = 16; y2 = 49
_ConstAxe = 16 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[16][48] = 1
 VarIndex = 49 ; _data[16][49] = 1
blocking walls s' First test :
x1 = 16; y1 = 49; x2 = 16; y2 = 50
_ConstAxe = 16 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[16][49] = 1
 VarIndex = 50 ; _data[16][50] = 1
blocking walls s' First test :
x1 = 16; y1 = 50; x2 = 16; y2 = 51
_ConstAxe = 16 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[16][50] = 1
 VarIndex = 51 ; _data[16][51] = 1
blocking walls s' First test :
x1 = 16; y1 = 51; x2 = 16; y2 = 52
_ConstAxe = 16 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[16][51] = 1
 VarIndex = 52 ; _data[16][52] = 1
blocking walls s' First test :
x1 = 16; y1 = 52; x2 = 16; y2 = 53
_ConstAxe = 16 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[16][52] = 1
 VarIndex = 53 ; _data[16][53] = 1
blocking walls s' First test :
x1 = 16; y1 = 53; x2 = 16; y2 = 54
_ConstAxe = 16 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[16][53] = 1
 VarIndex = 54 ; _data[16][54] = 1
blocking walls s' First test :
x1 = 16; y1 = 54; x2 = 16; y2 = 55
_ConstAxe = 16 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[16][54] = 1
 VarIndex = 55 ; _data[16][55] = 1
blocking walls s' First test :
x1 = 16; y1 = 55; x2 = 16; y2 = 56
_ConstAxe = 16 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[16][55] = 1
 VarIndex = 56 ; _data[16][56] = 1
blocking walls s' First test :
x1 = 16; y1 = 56; x2 = 16; y2 = 57
_ConstAxe = 16 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[16][56] = 1
 VarIndex = 57 ; _data[16][57] = 1
blocking walls s' First test :
x1 = 16; y1 = 57; x2 = 16; y2 = 58
_ConstAxe = 16 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[16][57] = 1
 VarIndex = 58 ; _data[16][58] = 1
blocking walls s' First test :
x1 = 16; y1 = 58; x2 = 16; y2 = 59
_ConstAxe = 16 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[16][58] = 1
 VarIndex = 59 ; _data[16][59] = 1
blocking walls s' First test :
x1 = 16; y1 = 59; x2 = 16; y2 = 60
_ConstAxe = 16 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[16][59] = 1
 VarIndex = 60 ; _data[16][60] = 1
blocking walls s' First test :
x1 = 16; y1 = 60; x2 = 16; y2 = 61
_ConstAxe = 16 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[16][60] = 1
 VarIndex = 61 ; _data[16][61] = 1
blocking walls s' First test :
x1 = 16; y1 = 63; x2 = 17; y2 = 63
_ConstAxe = 63 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 0
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[16][63] = 1
 VarIndex = 17 ; _data[17][63] = 1
blocking walls s' First test :
x1 = 16; y1 = 89; x2 = 17; y2 = 89
_ConstAxe = 89 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 0
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[16][89] = 1
 VarIndex = 17 ; _data[17][89] = 1
blocking walls s' First test :
x1 = 16; y1 = 92; x2 = 17; y2 = 92
_ConstAxe = 92 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 0
after Revision ^_^ 
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[16][92] = 1
 VarIndex = 17 ; _data[17][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 16; y1 = 93; x2 = 16; y2 = 94
_ConstAxe = 16 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[16][93] = 1
 VarIndex = 94 ; _data[16][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 16; y1 = 94; x2 = 16; y2 = 95
_ConstAxe = 16 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[16][94] = 1
 VarIndex = 95 ; _data[16][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 16; y1 = 95; x2 = 16; y2 = 96
_ConstAxe = 16 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[16][95] = 1
 VarIndex = 96 ; _data[16][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 16; y1 = 96; x2 = 16; y2 = 97
_ConstAxe = 16 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[16][96] = 1
 VarIndex = 97 ; _data[16][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 16; y1 = 97; x2 = 16; y2 = 98
_ConstAxe = 16 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[16][97] = 1
 VarIndex = 98 ; _data[16][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 16; y1 = 98; x2 = 16; y2 = 99
_ConstAxe = 16 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[16][98] = 1
 VarIndex = 99 ; _data[16][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 16; y1 = 99; x2 = 16; y2 = 100
_ConstAxe = 16 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[16][99] = 1
 VarIndex = 100 ; _data[16][100] = 1
blocking walls s' First test :
x1 = 17; y1 = 1; x2 = 18; y2 = 1
_ConstAxe = 1 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 0
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[17][1] = 1
 VarIndex = 18 ; _data[18][1] = 1
blocking walls s' First test :
x1 = 17; y1 = 32; x2 = 18; y2 = 32
_ConstAxe = 32 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 0
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[17][32] = 1
 VarIndex = 18 ; _data[18][32] = 1
blocking walls s' First test :
x1 = 17; y1 = 44; x2 = 18; y2 = 44
_ConstAxe = 44 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 0
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[17][44] = 1
 VarIndex = 18 ; _data[18][44] = 1
blocking walls s' First test :
x1 = 17; y1 = 63; x2 = 18; y2 = 63
_ConstAxe = 63 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 0
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[17][63] = 1
 VarIndex = 18 ; _data[18][63] = 1
blocking walls s' First test :
x1 = 17; y1 = 89; x2 = 18; y2 = 89
_ConstAxe = 89 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 0
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[17][89] = 1
 VarIndex = 18 ; _data[18][89] = 1
blocking walls s' First test :
x1 = 17; y1 = 92; x2 = 18; y2 = 92
_ConstAxe = 92 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 0
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[17][92] = 1
 VarIndex = 18 ; _data[18][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 17; y1 = 93; x2 = 17; y2 = 94
_ConstAxe = 17 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[17][93] = 1
 VarIndex = 94 ; _data[17][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 17; y1 = 94; x2 = 17; y2 = 95
_ConstAxe = 17 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[17][94] = 1
 VarIndex = 95 ; _data[17][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 17; y1 = 95; x2 = 17; y2 = 96
_ConstAxe = 17 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[17][95] = 1
 VarIndex = 96 ; _data[17][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 17; y1 = 96; x2 = 17; y2 = 97
_ConstAxe = 17 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[17][96] = 1
 VarIndex = 97 ; _data[17][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 17; y1 = 97; x2 = 17; y2 = 98
_ConstAxe = 17 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[17][97] = 1
 VarIndex = 98 ; _data[17][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 17; y1 = 98; x2 = 17; y2 = 99
_ConstAxe = 17 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[17][98] = 1
 VarIndex = 99 ; _data[17][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 17; y1 = 99; x2 = 17; y2 = 100
_ConstAxe = 17 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[17][99] = 1
 VarIndex = 100 ; _data[17][100] = 1
blocking walls s' First test :
x1 = 18; y1 = 1; x2 = 19; y2 = 1
_ConstAxe = 1 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 0
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[18][1] = 1
 VarIndex = 19 ; _data[19][1] = 1
blocking walls s' First test :
x1 = 18; y1 = 4; x2 = 18; y2 = 5
_ConstAxe = 18 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 1
after Revision ^_^
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[18][4] = 1
 VarIndex = 5 ; _data[18][5] = 1
blocking walls s' First test :
x1 = 18; y1 = 5; x2 = 18; y2 = 6
_ConstAxe = 18 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 1
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[18][5] = 1
 VarIndex = 6 ; _data[18][6] = 1
blocking walls s' First test :
x1 = 18; y1 = 6; x2 = 18; y2 = 7
_ConstAxe = 18 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[18][6] = 1
 VarIndex = 7 ; _data[18][7] = 1
blocking walls s' First test :
x1 = 18; y1 = 7; x2 = 18; y2 = 8
_ConstAxe = 18 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[18][7] = 1
 VarIndex = 8 ; _data[18][8] = 1
blocking walls s' First test :
x1 = 18; y1 = 8; x2 = 18; y2 = 9
_ConstAxe = 18 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[18][8] = 1
 VarIndex = 9 ; _data[18][9] = 1
blocking walls s' First test :
x1 = 18; y1 = 9; x2 = 18; y2 = 10
_ConstAxe = 18 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[18][9] = 1
 VarIndex = 10 ; _data[18][10] = 1
blocking walls s' First test :
x1 = 18; y1 = 10; x2 = 18; y2 = 11
_ConstAxe = 18 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^ 
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[18][10] = 1
 VarIndex = 11 ; _data[18][11] = 1
blocking walls s' First test :
x1 = 18; y1 = 11; x2 = 18; y2 = 12
_ConstAxe = 18 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[18][11] = 1
 VarIndex = 12 ; _data[18][12] = 1
blocking walls s' First test :
x1 = 18; y1 = 12; x2 = 18; y2 = 13
_ConstAxe = 18 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[18][12] = 1
 VarIndex = 13 ; _data[18][13] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 13; x2 = 18; y2 = 14
_ConstAxe = 18 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[18][13] = 1
 VarIndex = 14 ; _data[18][14] = 1
blocking walls s' First test :
x1 = 18; y1 = 14; x2 = 18; y2 = 15
_ConstAxe = 18 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 1
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[18][14] = 1
 VarIndex = 15 ; _data[18][15] = 1
blocking walls s' First test :
x1 = 18; y1 = 15; x2 = 18; y2 = 16
_ConstAxe = 18 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 1
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[18][15] = 1
 VarIndex = 16 ; _data[18][16] = 1
blocking walls s' First test :
x1 = 18; y1 = 16; x2 = 18; y2 = 17
_ConstAxe = 18 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^ 
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[18][16] = 1
 VarIndex = 17 ; _data[18][17] = 1
blocking walls s' First test :
x1 = 18; y1 = 17; x2 = 18; y2 = 18
_ConstAxe = 18 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[18][17] = 1
 VarIndex = 18 ; _data[18][18] = 1
blocking walls s' First test :
x1 = 18; y1 = 18; x2 = 18; y2 = 19
_ConstAxe = 18 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 1
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[18][18] = 1
 VarIndex = 19 ; _data[18][19] = 1
blocking walls s' First test :
x1 = 18; y1 = 19; x2 = 18; y2 = 20
_ConstAxe = 18 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 1
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[18][19] = 1
 VarIndex = 20 ; _data[18][20] = 1
blocking walls s' First test :
x1 = 18; y1 = 20; x2 = 18; y2 = 21
_ConstAxe = 18 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[18][20] = 1
 VarIndex = 21 ; _data[18][21] = 1
blocking walls s' First test :
x1 = 18; y1 = 21; x2 = 18; y2 = 22
_ConstAxe = 18 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[18][21] = 1
 VarIndex = 22 ; _data[18][22] = 1
blocking walls s' First test :
x1 = 18; y1 = 22; x2 = 18; y2 = 23
_ConstAxe = 18 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[18][22] = 1
 VarIndex = 23 ; _data[18][23] = 1
blocking walls s' First test :
x1 = 18; y1 = 23; x2 = 18; y2 = 24
_ConstAxe = 18 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[18][23] = 1
 VarIndex = 24 ; _data[18][24] = 1
blocking walls s' First test :
x1 = 18; y1 = 24; x2 = 18; y2 = 25
_ConstAxe = 18 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[18][24] = 1
 VarIndex = 25 ; _data[18][25] = 1
blocking walls s' First test :
x1 = 18; y1 = 25; x2 = 18; y2 = 26
_ConstAxe = 18 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[18][25] = 1
 VarIndex = 26 ; _data[18][26] = 1
blocking walls s' First test :
x1 = 18; y1 = 26; x2 = 18; y2 = 27
_ConstAxe = 18 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[18][26] = 1
 VarIndex = 27 ; _data[18][27] = 1
blocking walls s' First test :
x1 = 18; y1 = 27; x2 = 18; y2 = 28
_ConstAxe = 18 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^ 
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[18][27] = 1
 VarIndex = 28 ; _data[18][28] = 1
blocking walls s' First test :
x1 = 18; y1 = 28; x2 = 18; y2 = 29
_ConstAxe = 18 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[18][28] = 1
 VarIndex = 29 ; _data[18][29] = 1
blocking walls s' First test :
x1 = 18; y1 = 29; x2 = 18; y2 = 30
_ConstAxe = 18 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 1
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[18][29] = 1
 VarIndex = 30 ; _data[18][30] = 1
blocking walls s' First test :
x1 = 18; y1 = 30; x2 = 18; y2 = 31
_ConstAxe = 18 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 1
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[18][30] = 1
 VarIndex = 31 ; _data[18][31] = 1
blocking walls s' First test :
x1 = 18; y1 = 31; x2 = 18; y2 = 32
_ConstAxe = 18 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 1
after Revision ^_^ 
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[18][31] = 1
 VarIndex = 32 ; _data[18][32] = 1
blocking walls s' First test :
x1 = 18; y1 = 32; x2 = 18; y2 = 33
_ConstAxe = 18 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[18][32] = 1
 VarIndex = 33 ; _data[18][33] = 1
blocking walls s' First test :
x1 = 18; y1 = 44; x2 = 19; y2 = 44
_ConstAxe = 44 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 0
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[18][44] = 1
 VarIndex = 19 ; _data[19][44] = 1
blocking walls s' First test :
x1 = 18; y1 = 63; x2 = 19; y2 = 63
_ConstAxe = 63 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 0
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[18][63] = 1
 VarIndex = 19 ; _data[19][63] = 1
blocking walls s' First test :
x1 = 18; y1 = 89; x2 = 19; y2 = 89
_ConstAxe = 89 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 0
after Revision ^_^ 
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[18][89] = 1
 VarIndex = 19 ; _data[19][89] = 1
blocking walls s' First test :
x1 = 18; y1 = 92; x2 = 19; y2 = 92
_ConstAxe = 92 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 0
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[18][92] = 1
 VarIndex = 19 ; _data[19][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 93; x2 = 18; y2 = 94
_ConstAxe = 18 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[18][93] = 1
 VarIndex = 94 ; _data[18][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 94; x2 = 18; y2 = 95
_ConstAxe = 18 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[18][94] = 1
 VarIndex = 95 ; _data[18][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 95; x2 = 18; y2 = 96
_ConstAxe = 18 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[18][95] = 1
 VarIndex = 96 ; _data[18][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 96; x2 = 18; y2 = 97
_ConstAxe = 18 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[18][96] = 1
 VarIndex = 97 ; _data[18][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 97; x2 = 18; y2 = 98
_ConstAxe = 18 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[18][97] = 1
 VarIndex = 98 ; _data[18][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 98; x2 = 18; y2 = 99
_ConstAxe = 18 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[18][98] = 1
 VarIndex = 99 ; _data[18][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 18; y1 = 99; x2 = 18; y2 = 100
_ConstAxe = 18 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[18][99] = 1
 VarIndex = 100 ; _data[18][100] = 1
blocking walls s' First test :
x1 = 19; y1 = 1; x2 = 20; y2 = 1
_ConstAxe = 1 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 0
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[19][1] = 1
 VarIndex = 20 ; _data[20][1] = 1
blocking walls s' First test :
x1 = 19; y1 = 4; x2 = 20; y2 = 4
_ConstAxe = 4 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 0
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[19][4] = 1
 VarIndex = 20 ; _data[20][4] = 1
blocking walls s' First test :
x1 = 19; y1 = 44; x2 = 20; y2 = 44
_ConstAxe = 44 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 0
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[19][44] = 1
 VarIndex = 20 ; _data[20][44] = 1
blocking walls s' First test :
x1 = 19; y1 = 63; x2 = 20; y2 = 63
_ConstAxe = 63 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 0
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[19][63] = 1
 VarIndex = 20 ; _data[20][63] = 1
blocking walls s' First test :
x1 = 19; y1 = 89; x2 = 20; y2 = 89
_ConstAxe = 89 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 0
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[19][89] = 1
 VarIndex = 20 ; _data[20][89] = 1
blocking walls s' First test :
x1 = 19; y1 = 92; x2 = 20; y2 = 92
_ConstAxe = 92 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 0
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[19][92] = 1
 VarIndex = 20 ; _data[20][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 19; y1 = 93; x2 = 19; y2 = 94
_ConstAxe = 19 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[19][93] = 1
 VarIndex = 94 ; _data[19][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 19; y1 = 94; x2 = 19; y2 = 95
_ConstAxe = 19 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[19][94] = 1
 VarIndex = 95 ; _data[19][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 19; y1 = 95; x2 = 19; y2 = 96
_ConstAxe = 19 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[19][95] = 1
 VarIndex = 96 ; _data[19][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 19; y1 = 96; x2 = 19; y2 = 97
_ConstAxe = 19 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[19][96] = 1
 VarIndex = 97 ; _data[19][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 19; y1 = 97; x2 = 19; y2 = 98
_ConstAxe = 19 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^ 
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[19][97] = 1
 VarIndex = 98 ; _data[19][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 19; y1 = 98; x2 = 19; y2 = 99
_ConstAxe = 19 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[19][98] = 1
 VarIndex = 99 ; _data[19][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 19; y1 = 99; x2 = 19; y2 = 100
_ConstAxe = 19 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[19][99] = 1
 VarIndex = 100 ; _data[19][100] = 1
blocking walls s' First test :
x1 = 20; y1 = 1; x2 = 21; y2 = 1
_ConstAxe = 1 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 0
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[20][1] = 1
 VarIndex = 21 ; _data[21][1] = 1
blocking walls s' First test :
x1 = 20; y1 = 4; x2 = 21; y2 = 4
_ConstAxe = 4 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 0
after Revision ^_^ 
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[20][4] = 1
 VarIndex = 21 ; _data[21][4] = 1
blocking walls s' First test :
x1 = 20; y1 = 16; x2 = 20; y2 = 17
_ConstAxe = 20 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[20][16] = 1
 VarIndex = 17 ; _data[20][17] = 1
blocking walls s' First test :
x1 = 20; y1 = 17; x2 = 20; y2 = 18
_ConstAxe = 20 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[20][17] = 1
 VarIndex = 18 ; _data[20][18] = 1
blocking walls s' First test :
x1 = 20; y1 = 44; x2 = 20; y2 = 45
_ConstAxe = 20 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[20][44] = 1
 VarIndex = 45 ; _data[20][45] = 1
blocking walls s' First test :
x1 = 20; y1 = 45; x2 = 20; y2 = 46
_ConstAxe = 20 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[20][45] = 1
 VarIndex = 46 ; _data[20][46] = 1
blocking walls s' First test :
x1 = 20; y1 = 46; x2 = 20; y2 = 47
_ConstAxe = 20 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[20][46] = 1
 VarIndex = 47 ; _data[20][47] = 1
blocking walls s' First test :
x1 = 20; y1 = 47; x2 = 20; y2 = 48
_ConstAxe = 20 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[20][47] = 1
 VarIndex = 48 ; _data[20][48] = 1
blocking walls s' First test :
x1 = 20; y1 = 48; x2 = 20; y2 = 49
_ConstAxe = 20 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[20][48] = 1
 VarIndex = 49 ; _data[20][49] = 1
blocking walls s' First test :
x1 = 20; y1 = 49; x2 = 20; y2 = 50
_ConstAxe = 20 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[20][49] = 1
 VarIndex = 50 ; _data[20][50] = 1
blocking walls s' First test :
x1 = 20; y1 = 50; x2 = 20; y2 = 51
_ConstAxe = 20 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^ 
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[20][50] = 1
 VarIndex = 51 ; _data[20][51] = 1
blocking walls s' First test :
x1 = 20; y1 = 51; x2 = 20; y2 = 52
_ConstAxe = 20 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[20][51] = 1
 VarIndex = 52 ; _data[20][52] = 1
blocking walls s' First test :
x1 = 20; y1 = 52; x2 = 20; y2 = 53
_ConstAxe = 20 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[20][52] = 1
 VarIndex = 53 ; _data[20][53] = 1
blocking walls s' First test :
x1 = 20; y1 = 53; x2 = 20; y2 = 54
_ConstAxe = 20 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[20][53] = 1
 VarIndex = 54 ; _data[20][54] = 1
blocking walls s' First test :
x1 = 20; y1 = 54; x2 = 20; y2 = 55
_ConstAxe = 20 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[20][54] = 1
 VarIndex = 55 ; _data[20][55] = 1
blocking walls s' First test :
x1 = 20; y1 = 55; x2 = 20; y2 = 56
_ConstAxe = 20 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[20][55] = 1
 VarIndex = 56 ; _data[20][56] = 1
blocking walls s' First test :
x1 = 20; y1 = 56; x2 = 20; y2 = 57
_ConstAxe = 20 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[20][56] = 1
 VarIndex = 57 ; _data[20][57] = 1
blocking walls s' First test :
x1 = 20; y1 = 57; x2 = 20; y2 = 58
_ConstAxe = 20 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[20][57] = 1
 VarIndex = 58 ; _data[20][58] = 1
blocking walls s' First test :
x1 = 20; y1 = 58; x2 = 20; y2 = 59
_ConstAxe = 20 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[20][58] = 1
 VarIndex = 59 ; _data[20][59] = 1
blocking walls s' First test :
x1 = 20; y1 = 59; x2 = 20; y2 = 60
_ConstAxe = 20 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[20][59] = 1
 VarIndex = 60 ; _data[20][60] = 1
blocking walls s' First test :
x1 = 20; y1 = 60; x2 = 20; y2 = 61
_ConstAxe = 20 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[20][60] = 1
 VarIndex = 61 ; _data[20][61] = 1
blocking walls s' First test :
x1 = 20; y1 = 63; x2 = 21; y2 = 63
_ConstAxe = 63 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 0
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[20][63] = 1
 VarIndex = 21 ; _data[21][63] = 1
blocking walls s' First test :
x1 = 20; y1 = 89; x2 = 21; y2 = 89
_ConstAxe = 89 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 0
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[20][89] = 1
 VarIndex = 21 ; _data[21][89] = 1
blocking walls s' First test :
x1 = 20; y1 = 92; x2 = 21; y2 = 92
_ConstAxe = 92 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 0
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[20][92] = 1
 VarIndex = 21 ; _data[21][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 20; y1 = 93; x2 = 20; y2 = 94
_ConstAxe = 20 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[20][93] = 1
 VarIndex = 94 ; _data[20][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 20; y1 = 94; x2 = 20; y2 = 95
_ConstAxe = 20 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[20][94] = 1
 VarIndex = 95 ; _data[20][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 20; y1 = 95; x2 = 20; y2 = 96
_ConstAxe = 20 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[20][95] = 1
 VarIndex = 96 ; _data[20][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 20; y1 = 96; x2 = 20; y2 = 97
_ConstAxe = 20 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[20][96] = 1
 VarIndex = 97 ; _data[20][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 20; y1 = 97; x2 = 20; y2 = 98
_ConstAxe = 20 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[20][97] = 1
 VarIndex = 98 ; _data[20][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 20; y1 = 98; x2 = 20; y2 = 99
_ConstAxe = 20 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[20][98] = 1
 VarIndex = 99 ; _data[20][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 20; y1 = 99; x2 = 20; y2 = 100
_ConstAxe = 20 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[20][99] = 1
 VarIndex = 100 ; _data[20][100] = 1
blocking walls s' First test :
x1 = 21; y1 = 1; x2 = 22; y2 = 1
_ConstAxe = 1 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][1] = 1
 VarIndex = 22 ; _data[22][1] = 1
blocking walls s' First test :
x1 = 21; y1 = 4; x2 = 22; y2 = 4
_ConstAxe = 4 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][4] = 1
 VarIndex = 22 ; _data[22][4] = 1
blocking walls s' First test :
x1 = 21; y1 = 16; x2 = 22; y2 = 16
_ConstAxe = 16 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][16] = 1
 VarIndex = 22 ; _data[22][16] = 1
blocking walls s' First test :
x1 = 21; y1 = 17; x2 = 22; y2 = 17
_ConstAxe = 17 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][17] = 1
 VarIndex = 22 ; _data[22][17] = 1
blocking walls s' First test :
x1 = 21; y1 = 60; x2 = 22; y2 = 60
_ConstAxe = 60 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][60] = 1
 VarIndex = 22 ; _data[22][60] = 1
blocking walls s' First test :
x1 = 21; y1 = 63; x2 = 22; y2 = 63
_ConstAxe = 63 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][63] = 1
 VarIndex = 22 ; _data[22][63] = 1
blocking walls s' First test :
x1 = 21; y1 = 89; x2 = 22; y2 = 89
_ConstAxe = 89 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][89] = 1
 VarIndex = 22 ; _data[22][89] = 1
blocking walls s' First test :
x1 = 21; y1 = 92; x2 = 22; y2 = 92
_ConstAxe = 92 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 0
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[21][92] = 1
 VarIndex = 22 ; _data[22][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 21; y1 = 93; x2 = 21; y2 = 94
_ConstAxe = 21 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[21][93] = 1
 VarIndex = 94 ; _data[21][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 21; y1 = 94; x2 = 21; y2 = 95
_ConstAxe = 21 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[21][94] = 1
 VarIndex = 95 ; _data[21][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 21; y1 = 95; x2 = 21; y2 = 96
_ConstAxe = 21 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[21][95] = 1
 VarIndex = 96 ; _data[21][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 21; y1 = 96; x2 = 21; y2 = 97
_ConstAxe = 21 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[21][96] = 1
 VarIndex = 97 ; _data[21][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 21; y1 = 97; x2 = 21; y2 = 98
_ConstAxe = 21 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[21][97] = 1
 VarIndex = 98 ; _data[21][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 21; y1 = 98; x2 = 21; y2 = 99
_ConstAxe = 21 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^ 
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[21][98] = 1
 VarIndex = 99 ; _data[21][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 21; y1 = 99; x2 = 21; y2 = 100
_ConstAxe = 21 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[21][99] = 1
 VarIndex = 100 ; _data[21][100] = 1
blocking walls s' First test :
x1 = 22; y1 = 1; x2 = 23; y2 = 1
_ConstAxe = 1 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][1] = 1
 VarIndex = 23 ; _data[23][1] = 1
blocking walls s' First test :
x1 = 22; y1 = 4; x2 = 23; y2 = 4
_ConstAxe = 4 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][4] = 1
 VarIndex = 23 ; _data[23][4] = 1
blocking walls s' First test :
x1 = 22; y1 = 16; x2 = 23; y2 = 16
_ConstAxe = 16 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][16] = 1
 VarIndex = 23 ; _data[23][16] = 1
blocking walls s' First test :
x1 = 22; y1 = 17; x2 = 23; y2 = 17
_ConstAxe = 17 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^ 
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][17] = 1
 VarIndex = 23 ; _data[23][17] = 1
blocking walls s' First test :
x1 = 22; y1 = 60; x2 = 23; y2 = 60
_ConstAxe = 60 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][60] = 1
 VarIndex = 23 ; _data[23][60] = 1
blocking walls s' First test :
x1 = 22; y1 = 63; x2 = 23; y2 = 63
_ConstAxe = 63 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][63] = 1
 VarIndex = 23 ; _data[23][63] = 1
blocking walls s' First test :
x1 = 22; y1 = 89; x2 = 23; y2 = 89
_ConstAxe = 89 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][89] = 1
 VarIndex = 23 ; _data[23][89] = 1
blocking walls s' First test :
x1 = 22; y1 = 92; x2 = 23; y2 = 92
_ConstAxe = 92 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 0
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[22][92] = 1
 VarIndex = 23 ; _data[23][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 22; y1 = 93; x2 = 22; y2 = 94
_ConstAxe = 22 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[22][93] = 1
 VarIndex = 94 ; _data[22][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 22; y1 = 94; x2 = 22; y2 = 95
_ConstAxe = 22 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[22][94] = 1
 VarIndex = 95 ; _data[22][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 22; y1 = 95; x2 = 22; y2 = 96
_ConstAxe = 22 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[22][95] = 1
 VarIndex = 96 ; _data[22][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 22; y1 = 96; x2 = 22; y2 = 97
_ConstAxe = 22 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[22][96] = 1
 VarIndex = 97 ; _data[22][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 22; y1 = 97; x2 = 22; y2 = 98
_ConstAxe = 22 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[22][97] = 1
 VarIndex = 98 ; _data[22][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 22; y1 = 98; x2 = 22; y2 = 99
_ConstAxe = 22 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[22][98] = 1
 VarIndex = 99 ; _data[22][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 22; y1 = 99; x2 = 22; y2 = 100
_ConstAxe = 22 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^ 
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[22][99] = 1
 VarIndex = 100 ; _data[22][100] = 1
blocking walls s' First test :
x1 = 23; y1 = 1; x2 = 24; y2 = 1
_ConstAxe = 1 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 0
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[23][1] = 1
 VarIndex = 24 ; _data[24][1] = 1
blocking walls s' First test :
x1 = 23; y1 = 4; x2 = 24; y2 = 4
_ConstAxe = 4 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 0
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[23][4] = 1
 VarIndex = 24 ; _data[24][4] = 1
blocking walls s' First test :
x1 = 23; y1 = 16; x2 = 23; y2 = 17
_ConstAxe = 23 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[23][16] = 1
 VarIndex = 17 ; _data[23][17] = 1
blocking walls s' First test :
x1 = 23; y1 = 17; x2 = 23; y2 = 18
_ConstAxe = 23 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[23][17] = 1
 VarIndex = 18 ; _data[23][18] = 1
blocking walls s' First test :
x1 = 23; y1 = 38; x2 = 23; y2 = 39
_ConstAxe = 23 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[23][38] = 1
 VarIndex = 39 ; _data[23][39] = 1
blocking walls s' First test :
x1 = 23; y1 = 39; x2 = 23; y2 = 40
_ConstAxe = 23 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[23][39] = 1
 VarIndex = 40 ; _data[23][40] = 1
blocking walls s' First test :
x1 = 23; y1 = 40; x2 = 23; y2 = 41
_ConstAxe = 23 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[23][40] = 1
 VarIndex = 41 ; _data[23][41] = 1
blocking walls s' First test :
x1 = 23; y1 = 41; x2 = 23; y2 = 42
_ConstAxe = 23 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[23][41] = 1
 VarIndex = 42 ; _data[23][42] = 1
blocking walls s' First test :
x1 = 23; y1 = 42; x2 = 23; y2 = 43
_ConstAxe = 23 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[23][42] = 1
 VarIndex = 43 ; _data[23][43] = 1
blocking walls s' First test :
x1 = 23; y1 = 43; x2 = 23; y2 = 44
_ConstAxe = 23 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[23][43] = 1
 VarIndex = 44 ; _data[23][44] = 1
blocking walls s' First test :
x1 = 23; y1 = 44; x2 = 23; y2 = 45
_ConstAxe = 23 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[23][44] = 1
 VarIndex = 45 ; _data[23][45] = 1
blocking walls s' First test :
x1 = 23; y1 = 45; x2 = 23; y2 = 46
_ConstAxe = 23 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[23][45] = 1
 VarIndex = 46 ; _data[23][46] = 1
blocking walls s' First test :
x1 = 23; y1 = 46; x2 = 23; y2 = 47
_ConstAxe = 23 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[23][46] = 1
 VarIndex = 47 ; _data[23][47] = 1
blocking walls s' First test :
x1 = 23; y1 = 47; x2 = 23; y2 = 48
_ConstAxe = 23 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[23][47] = 1
 VarIndex = 48 ; _data[23][48] = 1
blocking walls s' First test :
x1 = 23; y1 = 48; x2 = 23; y2 = 49
_ConstAxe = 23 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[23][48] = 1
 VarIndex = 49 ; _data[23][49] = 1
blocking walls s' First test :
x1 = 23; y1 = 49; x2 = 23; y2 = 50
_ConstAxe = 23 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[23][49] = 1
 VarIndex = 50 ; _data[23][50] = 1
blocking walls s' First test :
x1 = 23; y1 = 50; x2 = 23; y2 = 51
_ConstAxe = 23 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[23][50] = 1
 VarIndex = 51 ; _data[23][51] = 1
blocking walls s' First test :
x1 = 23; y1 = 51; x2 = 23; y2 = 52
_ConstAxe = 23 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[23][51] = 1
 VarIndex = 52 ; _data[23][52] = 1
blocking walls s' First test :
x1 = 23; y1 = 52; x2 = 23; y2 = 53
_ConstAxe = 23 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[23][52] = 1
 VarIndex = 53 ; _data[23][53] = 1
blocking walls s' First test :
x1 = 23; y1 = 53; x2 = 23; y2 = 54
_ConstAxe = 23 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[23][53] = 1
 VarIndex = 54 ; _data[23][54] = 1
blocking walls s' First test :
x1 = 23; y1 = 60; x2 = 24; y2 = 60
_ConstAxe = 60 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 0
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[23][60] = 1
 VarIndex = 24 ; _data[24][60] = 1
blocking walls s' First test :
x1 = 23; y1 = 63; x2 = 24; y2 = 63
_ConstAxe = 63 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 0
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[23][63] = 1
 VarIndex = 24 ; _data[24][63] = 1
blocking walls s' First test :
x1 = 23; y1 = 89; x2 = 24; y2 = 89
_ConstAxe = 89 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 0
after Revision ^_^ 
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[23][89] = 1
 VarIndex = 24 ; _data[24][89] = 1
blocking walls s' First test :
x1 = 23; y1 = 92; x2 = 24; y2 = 92
_ConstAxe = 92 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 0
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[23][92] = 1
 VarIndex = 24 ; _data[24][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 23; y1 = 93; x2 = 23; y2 = 94
_ConstAxe = 23 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^ 
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[23][93] = 1
 VarIndex = 94 ; _data[23][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 23; y1 = 94; x2 = 23; y2 = 95
_ConstAxe = 23 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^ 
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[23][94] = 1
 VarIndex = 95 ; _data[23][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 23; y1 = 95; x2 = 23; y2 = 96
_ConstAxe = 23 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[23][95] = 1
 VarIndex = 96 ; _data[23][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 23; y1 = 96; x2 = 23; y2 = 97
_ConstAxe = 23 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[23][96] = 1
 VarIndex = 97 ; _data[23][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 23; y1 = 97; x2 = 23; y2 = 98
_ConstAxe = 23 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[23][97] = 1
 VarIndex = 98 ; _data[23][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 23; y1 = 98; x2 = 23; y2 = 99
_ConstAxe = 23 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[23][98] = 1
 VarIndex = 99 ; _data[23][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 23; y1 = 99; x2 = 23; y2 = 100
_ConstAxe = 23 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^ 
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[23][99] = 1
 VarIndex = 100 ; _data[23][100] = 1
blocking walls s' First test :
x1 = 24; y1 = 1; x2 = 25; y2 = 1
_ConstAxe = 1 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][1] = 1
 VarIndex = 25 ; _data[25][1] = 1
blocking walls s' First test :
x1 = 24; y1 = 4; x2 = 25; y2 = 4
_ConstAxe = 4 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][4] = 1
 VarIndex = 25 ; _data[25][4] = 1
blocking walls s' First test :
x1 = 24; y1 = 38; x2 = 25; y2 = 38
_ConstAxe = 38 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][38] = 1
 VarIndex = 25 ; _data[25][38] = 1
blocking walls s' First test :
x1 = 24; y1 = 53; x2 = 25; y2 = 53
_ConstAxe = 53 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^ 
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][53] = 1
 VarIndex = 25 ; _data[25][53] = 1
blocking walls s' First test :
x1 = 24; y1 = 60; x2 = 25; y2 = 60
_ConstAxe = 60 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^ 
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][60] = 1
 VarIndex = 25 ; _data[25][60] = 1
blocking walls s' First test :
x1 = 24; y1 = 63; x2 = 25; y2 = 63
_ConstAxe = 63 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][63] = 1
 VarIndex = 25 ; _data[25][63] = 1
blocking walls s' First test :
x1 = 24; y1 = 89; x2 = 25; y2 = 89
_ConstAxe = 89 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][89] = 1
 VarIndex = 25 ; _data[25][89] = 1
blocking walls s' First test :
x1 = 24; y1 = 92; x2 = 25; y2 = 92
_ConstAxe = 92 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 0
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[24][92] = 1
 VarIndex = 25 ; _data[25][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 24; y1 = 93; x2 = 24; y2 = 94
_ConstAxe = 24 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[24][93] = 1
 VarIndex = 94 ; _data[24][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 24; y1 = 94; x2 = 24; y2 = 95
_ConstAxe = 24 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[24][94] = 1
 VarIndex = 95 ; _data[24][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 24; y1 = 95; x2 = 24; y2 = 96
_ConstAxe = 24 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^ 
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[24][95] = 1
 VarIndex = 96 ; _data[24][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 24; y1 = 96; x2 = 24; y2 = 97
_ConstAxe = 24 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[24][96] = 1
 VarIndex = 97 ; _data[24][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 24; y1 = 97; x2 = 24; y2 = 98
_ConstAxe = 24 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[24][97] = 1
 VarIndex = 98 ; _data[24][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 24; y1 = 98; x2 = 24; y2 = 99
_ConstAxe = 24 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[24][98] = 1
 VarIndex = 99 ; _data[24][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 24; y1 = 99; x2 = 24; y2 = 100
_ConstAxe = 24 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[24][99] = 1
 VarIndex = 100 ; _data[24][100] = 1
blocking walls s' First test :
x1 = 25; y1 = 1; x2 = 26; y2 = 1
_ConstAxe = 1 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][1] = 1
 VarIndex = 26 ; _data[26][1] = 1
blocking walls s' First test :
x1 = 25; y1 = 4; x2 = 26; y2 = 4
_ConstAxe = 4 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^ 
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][4] = 1
 VarIndex = 26 ; _data[26][4] = 1
blocking walls s' First test :
x1 = 25; y1 = 16; x2 = 25; y2 = 17
_ConstAxe = 25 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[25][16] = 1
 VarIndex = 17 ; _data[25][17] = 1
blocking walls s' First test :
x1 = 25; y1 = 17; x2 = 25; y2 = 18
_ConstAxe = 25 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[25][17] = 1
 VarIndex = 18 ; _data[25][18] = 1
blocking walls s' First test :
x1 = 25; y1 = 38; x2 = 26; y2 = 38
_ConstAxe = 38 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][38] = 1
 VarIndex = 26 ; _data[26][38] = 1
blocking walls s' First test :
x1 = 25; y1 = 53; x2 = 26; y2 = 53
_ConstAxe = 53 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][53] = 1
 VarIndex = 26 ; _data[26][53] = 1
blocking walls s' First test :
x1 = 25; y1 = 60; x2 = 26; y2 = 60
_ConstAxe = 60 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][60] = 1
 VarIndex = 26 ; _data[26][60] = 1
blocking walls s' First test :
x1 = 25; y1 = 63; x2 = 26; y2 = 63
_ConstAxe = 63 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][63] = 1
 VarIndex = 26 ; _data[26][63] = 1
blocking walls s' First test :
x1 = 25; y1 = 89; x2 = 26; y2 = 89
_ConstAxe = 89 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][89] = 1
 VarIndex = 26 ; _data[26][89] = 1
blocking walls s' First test :
x1 = 25; y1 = 92; x2 = 26; y2 = 92
_ConstAxe = 92 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 0
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[25][92] = 1
 VarIndex = 26 ; _data[26][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 25; y1 = 93; x2 = 25; y2 = 94
_ConstAxe = 25 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[25][93] = 1
 VarIndex = 94 ; _data[25][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 25; y1 = 94; x2 = 25; y2 = 95
_ConstAxe = 25 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[25][94] = 1
 VarIndex = 95 ; _data[25][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 25; y1 = 95; x2 = 25; y2 = 96
_ConstAxe = 25 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[25][95] = 1
 VarIndex = 96 ; _data[25][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 25; y1 = 96; x2 = 25; y2 = 97
_ConstAxe = 25 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[25][96] = 1
 VarIndex = 97 ; _data[25][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 25; y1 = 97; x2 = 25; y2 = 98
_ConstAxe = 25 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[25][97] = 1
 VarIndex = 98 ; _data[25][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 25; y1 = 98; x2 = 25; y2 = 99
_ConstAxe = 25 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[25][98] = 1
 VarIndex = 99 ; _data[25][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 25; y1 = 99; x2 = 25; y2 = 100
_ConstAxe = 25 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[25][99] = 1
 VarIndex = 100 ; _data[25][100] = 1
blocking walls s' First test :
x1 = 26; y1 = 1; x2 = 27; y2 = 1
_ConstAxe = 1 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][1] = 1
 VarIndex = 27 ; _data[27][1] = 1
blocking walls s' First test :
x1 = 26; y1 = 4; x2 = 27; y2 = 4
_ConstAxe = 4 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][4] = 1
 VarIndex = 27 ; _data[27][4] = 1
blocking walls s' First test :
x1 = 26; y1 = 16; x2 = 27; y2 = 16
_ConstAxe = 16 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][16] = 1
 VarIndex = 27 ; _data[27][16] = 1
blocking walls s' First test :
x1 = 26; y1 = 17; x2 = 27; y2 = 17
_ConstAxe = 17 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^ 
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][17] = 1
 VarIndex = 27 ; _data[27][17] = 1
blocking walls s' First test :
x1 = 26; y1 = 38; x2 = 27; y2 = 38
_ConstAxe = 38 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][38] = 1
 VarIndex = 27 ; _data[27][38] = 1
blocking walls s' First test :
x1 = 26; y1 = 53; x2 = 26; y2 = 54
_ConstAxe = 26 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[26][53] = 1
 VarIndex = 54 ; _data[26][54] = 1
blocking walls s' First test :
x1 = 26; y1 = 54; x2 = 26; y2 = 55
_ConstAxe = 26 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[26][54] = 1
 VarIndex = 55 ; _data[26][55] = 1
blocking walls s' First test :
x1 = 26; y1 = 55; x2 = 26; y2 = 56
_ConstAxe = 26 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[26][55] = 1
 VarIndex = 56 ; _data[26][56] = 1
blocking walls s' First test :
x1 = 26; y1 = 56; x2 = 26; y2 = 57
_ConstAxe = 26 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[26][56] = 1
 VarIndex = 57 ; _data[26][57] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 57; x2 = 26; y2 = 58
_ConstAxe = 26 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[26][57] = 1
 VarIndex = 58 ; _data[26][58] = 1
blocking walls s' First test :
x1 = 26; y1 = 58; x2 = 26; y2 = 59
_ConstAxe = 26 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[26][58] = 1
 VarIndex = 59 ; _data[26][59] = 1
blocking walls s' First test :
x1 = 26; y1 = 59; x2 = 26; y2 = 60
_ConstAxe = 26 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[26][59] = 1
 VarIndex = 60 ; _data[26][60] = 1
blocking walls s' First test :
x1 = 26; y1 = 60; x2 = 26; y2 = 61
_ConstAxe = 26 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[26][60] = 1
 VarIndex = 61 ; _data[26][61] = 1
blocking walls s' First test :
x1 = 26; y1 = 63; x2 = 27; y2 = 63
_ConstAxe = 63 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^ 
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][63] = 1
 VarIndex = 27 ; _data[27][63] = 1
blocking walls s' First test :
x1 = 26; y1 = 89; x2 = 27; y2 = 89
_ConstAxe = 89 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][89] = 1
 VarIndex = 27 ; _data[27][89] = 1
blocking walls s' First test :
x1 = 26; y1 = 92; x2 = 27; y2 = 92
_ConstAxe = 92 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 0
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[26][92] = 1
 VarIndex = 27 ; _data[27][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 93; x2 = 26; y2 = 94
_ConstAxe = 26 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^ 
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[26][93] = 1
 VarIndex = 94 ; _data[26][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 94; x2 = 26; y2 = 95
_ConstAxe = 26 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[26][94] = 1
 VarIndex = 95 ; _data[26][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 95; x2 = 26; y2 = 96
_ConstAxe = 26 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[26][95] = 1
 VarIndex = 96 ; _data[26][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 96; x2 = 26; y2 = 97
_ConstAxe = 26 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[26][96] = 1
 VarIndex = 97 ; _data[26][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 97; x2 = 26; y2 = 98
_ConstAxe = 26 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[26][97] = 1
 VarIndex = 98 ; _data[26][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 98; x2 = 26; y2 = 99
_ConstAxe = 26 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[26][98] = 1
 VarIndex = 99 ; _data[26][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 26; y1 = 99; x2 = 26; y2 = 100
_ConstAxe = 26 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[26][99] = 1
 VarIndex = 100 ; _data[26][100] = 1
blocking walls s' First test :
x1 = 27; y1 = 1; x2 = 28; y2 = 1
_ConstAxe = 1 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 0
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[27][1] = 1
 VarIndex = 28 ; _data[28][1] = 1
blocking walls s' First test :
x1 = 27; y1 = 4; x2 = 28; y2 = 4
_ConstAxe = 4 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 0
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[27][4] = 1
 VarIndex = 28 ; _data[28][4] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 16; x2 = 27; y2 = 17
_ConstAxe = 27 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[27][16] = 1
 VarIndex = 17 ; _data[27][17] = 1
blocking walls s' First test :
x1 = 27; y1 = 17; x2 = 28; y2 = 17
_ConstAxe = 17 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 0
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[27][17] = 1
 VarIndex = 28 ; _data[28][17] = 1
blocking walls s' First test :
x1 = 27; y1 = 38; x2 = 28; y2 = 38
_ConstAxe = 38 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 0
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[27][38] = 1
 VarIndex = 28 ; _data[28][38] = 1
blocking walls s' First test :
x1 = 27; y1 = 63; x2 = 28; y2 = 63
_ConstAxe = 63 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 0
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[27][63] = 1
 VarIndex = 28 ; _data[28][63] = 1
blocking walls s' First test :
x1 = 27; y1 = 89; x2 = 28; y2 = 89
_ConstAxe = 89 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 0
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[27][89] = 1
 VarIndex = 28 ; _data[28][89] = 1
blocking walls s' First test :
x1 = 27; y1 = 92; x2 = 28; y2 = 92
_ConstAxe = 92 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 0
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[27][92] = 1
 VarIndex = 28 ; _data[28][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 93; x2 = 27; y2 = 94
_ConstAxe = 27 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[27][93] = 1
 VarIndex = 94 ; _data[27][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 94; x2 = 27; y2 = 95
_ConstAxe = 27 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[27][94] = 1
 VarIndex = 95 ; _data[27][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 95; x2 = 27; y2 = 96
_ConstAxe = 27 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[27][95] = 1
 VarIndex = 96 ; _data[27][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 96; x2 = 27; y2 = 97
_ConstAxe = 27 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[27][96] = 1
 VarIndex = 97 ; _data[27][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 97; x2 = 27; y2 = 98
_ConstAxe = 27 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[27][97] = 1
 VarIndex = 98 ; _data[27][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 98; x2 = 27; y2 = 99
_ConstAxe = 27 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[27][98] = 1
 VarIndex = 99 ; _data[27][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 27; y1 = 99; x2 = 27; y2 = 100
_ConstAxe = 27 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[27][99] = 1
 VarIndex = 100 ; _data[27][100] = 1
blocking walls s' First test :
x1 = 28; y1 = 1; x2 = 29; y2 = 1
_ConstAxe = 1 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][1] = 1
 VarIndex = 29 ; _data[29][1] = 1
blocking walls s' First test :
x1 = 28; y1 = 4; x2 = 29; y2 = 4
_ConstAxe = 4 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][4] = 1
 VarIndex = 29 ; _data[29][4] = 1
blocking walls s' First test :
x1 = 28; y1 = 16; x2 = 29; y2 = 16
_ConstAxe = 16 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][16] = 1
 VarIndex = 29 ; _data[29][16] = 1
blocking walls s' First test :
x1 = 28; y1 = 17; x2 = 29; y2 = 17
_ConstAxe = 17 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][17] = 1
 VarIndex = 29 ; _data[29][17] = 1
blocking walls s' First test :
x1 = 28; y1 = 38; x2 = 29; y2 = 38
_ConstAxe = 38 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][38] = 1
 VarIndex = 29 ; _data[29][38] = 1
blocking walls s' First test :
x1 = 28; y1 = 63; x2 = 29; y2 = 63
_ConstAxe = 63 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][63] = 1
 VarIndex = 29 ; _data[29][63] = 1
blocking walls s' First test :
x1 = 28; y1 = 89; x2 = 29; y2 = 89
_ConstAxe = 89 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][89] = 1
 VarIndex = 29 ; _data[29][89] = 1
blocking walls s' First test :
x1 = 28; y1 = 92; x2 = 29; y2 = 92
_ConstAxe = 92 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 0
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[28][92] = 1
 VarIndex = 29 ; _data[29][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 28; y1 = 93; x2 = 28; y2 = 94
_ConstAxe = 28 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[28][93] = 1
 VarIndex = 94 ; _data[28][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 28; y1 = 94; x2 = 28; y2 = 95
_ConstAxe = 28 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[28][94] = 1
 VarIndex = 95 ; _data[28][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 28; y1 = 95; x2 = 28; y2 = 96
_ConstAxe = 28 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[28][95] = 1
 VarIndex = 96 ; _data[28][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 28; y1 = 96; x2 = 28; y2 = 97
_ConstAxe = 28 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[28][96] = 1
 VarIndex = 97 ; _data[28][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 28; y1 = 97; x2 = 28; y2 = 98
_ConstAxe = 28 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[28][97] = 1
 VarIndex = 98 ; _data[28][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 28; y1 = 98; x2 = 28; y2 = 99
_ConstAxe = 28 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[28][98] = 1
 VarIndex = 99 ; _data[28][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 28; y1 = 99; x2 = 28; y2 = 100
_ConstAxe = 28 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[28][99] = 1
 VarIndex = 100 ; _data[28][100] = 1
blocking walls s' First test :
x1 = 29; y1 = 1; x2 = 30; y2 = 1
_ConstAxe = 1 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 0
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[29][1] = 1
 VarIndex = 30 ; _data[30][1] = 1
blocking walls s' First test :
x1 = 29; y1 = 4; x2 = 29; y2 = 5
_ConstAxe = 29 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 1
after Revision ^_^ 
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[29][4] = 1
 VarIndex = 5 ; _data[29][5] = 1
blocking walls s' First test :
x1 = 29; y1 = 5; x2 = 29; y2 = 6
_ConstAxe = 29 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 1
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[29][5] = 1
 VarIndex = 6 ; _data[29][6] = 1
blocking walls s' First test :
x1 = 29; y1 = 6; x2 = 29; y2 = 7
_ConstAxe = 29 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[29][6] = 1
 VarIndex = 7 ; _data[29][7] = 1
blocking walls s' First test :
x1 = 29; y1 = 7; x2 = 29; y2 = 8
_ConstAxe = 29 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^ 
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[29][7] = 1
 VarIndex = 8 ; _data[29][8] = 1
blocking walls s' First test :
x1 = 29; y1 = 8; x2 = 29; y2 = 9
_ConstAxe = 29 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[29][8] = 1
 VarIndex = 9 ; _data[29][9] = 1
blocking walls s' First test :
x1 = 29; y1 = 9; x2 = 29; y2 = 10
_ConstAxe = 29 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[29][9] = 1
 VarIndex = 10 ; _data[29][10] = 1
blocking walls s' First test :
x1 = 29; y1 = 10; x2 = 29; y2 = 11
_ConstAxe = 29 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[29][10] = 1
 VarIndex = 11 ; _data[29][11] = 1
blocking walls s' First test :
x1 = 29; y1 = 11; x2 = 29; y2 = 12
_ConstAxe = 29 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[29][11] = 1
 VarIndex = 12 ; _data[29][12] = 1
blocking walls s' First test :
x1 = 29; y1 = 12; x2 = 29; y2 = 13
_ConstAxe = 29 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[29][12] = 1
 VarIndex = 13 ; _data[29][13] = 1
blocking walls s' First test :
x1 = 29; y1 = 13; x2 = 29; y2 = 14
_ConstAxe = 29 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[29][13] = 1
 VarIndex = 14 ; _data[29][14] = 1
blocking walls s' First test :
x1 = 29; y1 = 16; x2 = 30; y2 = 16
_ConstAxe = 16 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 0
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[29][16] = 1
 VarIndex = 30 ; _data[30][16] = 1
blocking walls s' First test :
x1 = 29; y1 = 17; x2 = 30; y2 = 17
_ConstAxe = 17 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 0
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[29][17] = 1
 VarIndex = 30 ; _data[30][17] = 1
blocking walls s' First test :
x1 = 29; y1 = 20; x2 = 29; y2 = 21
_ConstAxe = 29 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[29][20] = 1
 VarIndex = 21 ; _data[29][21] = 1
blocking walls s' First test :
x1 = 29; y1 = 21; x2 = 29; y2 = 22
_ConstAxe = 29 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[29][21] = 1
 VarIndex = 22 ; _data[29][22] = 1
blocking walls s' First test :
x1 = 29; y1 = 22; x2 = 29; y2 = 23
_ConstAxe = 29 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[29][22] = 1
 VarIndex = 23 ; _data[29][23] = 1
blocking walls s' First test :
x1 = 29; y1 = 23; x2 = 29; y2 = 24
_ConstAxe = 29 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[29][23] = 1
 VarIndex = 24 ; _data[29][24] = 1
blocking walls s' First test :
x1 = 29; y1 = 24; x2 = 29; y2 = 25
_ConstAxe = 29 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[29][24] = 1
 VarIndex = 25 ; _data[29][25] = 1
blocking walls s' First test :
x1 = 29; y1 = 25; x2 = 29; y2 = 26
_ConstAxe = 29 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[29][25] = 1
 VarIndex = 26 ; _data[29][26] = 1
blocking walls s' First test :
x1 = 29; y1 = 26; x2 = 29; y2 = 27
_ConstAxe = 29 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[29][26] = 1
 VarIndex = 27 ; _data[29][27] = 1
blocking walls s' First test :
x1 = 29; y1 = 27; x2 = 29; y2 = 28
_ConstAxe = 29 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[29][27] = 1
 VarIndex = 28 ; _data[29][28] = 1
blocking walls s' First test :
x1 = 29; y1 = 28; x2 = 29; y2 = 29
_ConstAxe = 29 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[29][28] = 1
 VarIndex = 29 ; _data[29][29] = 1
blocking walls s' First test :
x1 = 29; y1 = 29; x2 = 29; y2 = 30
_ConstAxe = 29 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 1
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[29][29] = 1
 VarIndex = 30 ; _data[29][30] = 1
blocking walls s' First test :
x1 = 29; y1 = 30; x2 = 29; y2 = 31
_ConstAxe = 29 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 1
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[29][30] = 1
 VarIndex = 31 ; _data[29][31] = 1
blocking walls s' First test :
x1 = 29; y1 = 31; x2 = 29; y2 = 32
_ConstAxe = 29 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 1
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[29][31] = 1
 VarIndex = 32 ; _data[29][32] = 1
blocking walls s' First test :
x1 = 29; y1 = 32; x2 = 29; y2 = 33
_ConstAxe = 29 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[29][32] = 1
 VarIndex = 33 ; _data[29][33] = 1
blocking walls s' First test :
x1 = 29; y1 = 33; x2 = 29; y2 = 34
_ConstAxe = 29 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[29][33] = 1
 VarIndex = 34 ; _data[29][34] = 1
blocking walls s' First test :
x1 = 29; y1 = 34; x2 = 29; y2 = 35
_ConstAxe = 29 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^ 
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[29][34] = 1
 VarIndex = 35 ; _data[29][35] = 1
blocking walls s' First test :
x1 = 29; y1 = 35; x2 = 29; y2 = 36
_ConstAxe = 29 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[29][35] = 1
 VarIndex = 36 ; _data[29][36] = 1
blocking walls s' First test :
x1 = 29; y1 = 36; x2 = 29; y2 = 37
_ConstAxe = 29 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[29][36] = 1
 VarIndex = 37 ; _data[29][37] = 1
blocking walls s' First test :
x1 = 29; y1 = 37; x2 = 29; y2 = 38
_ConstAxe = 29 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[29][37] = 1
 VarIndex = 38 ; _data[29][38] = 1
blocking walls s' First test :
x1 = 29; y1 = 38; x2 = 29; y2 = 39
_ConstAxe = 29 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[29][38] = 1
 VarIndex = 39 ; _data[29][39] = 1
blocking walls s' First test :
x1 = 29; y1 = 39; x2 = 29; y2 = 40
_ConstAxe = 29 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[29][39] = 1
 VarIndex = 40 ; _data[29][40] = 1
blocking walls s' First test :
x1 = 29; y1 = 40; x2 = 29; y2 = 41
_ConstAxe = 29 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[29][40] = 1
 VarIndex = 41 ; _data[29][41] = 1
blocking walls s' First test :
x1 = 29; y1 = 41; x2 = 29; y2 = 42
_ConstAxe = 29 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[29][41] = 1
 VarIndex = 42 ; _data[29][42] = 1
blocking walls s' First test :
x1 = 29; y1 = 42; x2 = 29; y2 = 43
_ConstAxe = 29 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[29][42] = 1
 VarIndex = 43 ; _data[29][43] = 1
blocking walls s' First test :
x1 = 29; y1 = 43; x2 = 29; y2 = 44
_ConstAxe = 29 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[29][43] = 1
 VarIndex = 44 ; _data[29][44] = 1
blocking walls s' First test :
x1 = 29; y1 = 44; x2 = 29; y2 = 45
_ConstAxe = 29 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[29][44] = 1
 VarIndex = 45 ; _data[29][45] = 1
blocking walls s' First test :
x1 = 29; y1 = 45; x2 = 29; y2 = 46
_ConstAxe = 29 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[29][45] = 1
 VarIndex = 46 ; _data[29][46] = 1
blocking walls s' First test :
x1 = 29; y1 = 46; x2 = 29; y2 = 47
_ConstAxe = 29 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[29][46] = 1
 VarIndex = 47 ; _data[29][47] = 1
blocking walls s' First test :
x1 = 29; y1 = 47; x2 = 29; y2 = 48
_ConstAxe = 29 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[29][47] = 1
 VarIndex = 48 ; _data[29][48] = 1
blocking walls s' First test :
x1 = 29; y1 = 48; x2 = 29; y2 = 49
_ConstAxe = 29 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[29][48] = 1
 VarIndex = 49 ; _data[29][49] = 1
blocking walls s' First test :
x1 = 29; y1 = 49; x2 = 29; y2 = 50
_ConstAxe = 29 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[29][49] = 1
 VarIndex = 50 ; _data[29][50] = 1
blocking walls s' First test :
x1 = 29; y1 = 50; x2 = 29; y2 = 51
_ConstAxe = 29 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[29][50] = 1
 VarIndex = 51 ; _data[29][51] = 1
blocking walls s' First test :
x1 = 29; y1 = 51; x2 = 29; y2 = 52
_ConstAxe = 29 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[29][51] = 1
 VarIndex = 52 ; _data[29][52] = 1
blocking walls s' First test :
x1 = 29; y1 = 52; x2 = 29; y2 = 53
_ConstAxe = 29 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[29][52] = 1
 VarIndex = 53 ; _data[29][53] = 1
blocking walls s' First test :
x1 = 29; y1 = 53; x2 = 29; y2 = 54
_ConstAxe = 29 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[29][53] = 1
 VarIndex = 54 ; _data[29][54] = 1
blocking walls s' First test :
x1 = 29; y1 = 54; x2 = 29; y2 = 55
_ConstAxe = 29 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[29][54] = 1
 VarIndex = 55 ; _data[29][55] = 1
blocking walls s' First test :
x1 = 29; y1 = 55; x2 = 29; y2 = 56
_ConstAxe = 29 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[29][55] = 1
 VarIndex = 56 ; _data[29][56] = 1
blocking walls s' First test :
x1 = 29; y1 = 56; x2 = 29; y2 = 57
_ConstAxe = 29 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[29][56] = 1
 VarIndex = 57 ; _data[29][57] = 1
blocking walls s' First test :
x1 = 29; y1 = 57; x2 = 29; y2 = 58
_ConstAxe = 29 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[29][57] = 1
 VarIndex = 58 ; _data[29][58] = 1
blocking walls s' First test :
x1 = 29; y1 = 58; x2 = 29; y2 = 59
_ConstAxe = 29 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[29][58] = 1
 VarIndex = 59 ; _data[29][59] = 1
blocking walls s' First test :
x1 = 29; y1 = 59; x2 = 29; y2 = 60
_ConstAxe = 29 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[29][59] = 1
 VarIndex = 60 ; _data[29][60] = 1
blocking walls s' First test :
x1 = 29; y1 = 60; x2 = 29; y2 = 61
_ConstAxe = 29 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[29][60] = 1
 VarIndex = 61 ; _data[29][61] = 1
blocking walls s' First test :
x1 = 29; y1 = 63; x2 = 29; y2 = 64
_ConstAxe = 29 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[29][63] = 1
 VarIndex = 64 ; _data[29][64] = 1
blocking walls s' First test :
x1 = 29; y1 = 64; x2 = 29; y2 = 65
_ConstAxe = 29 ; startIndex = 64 ; EndIndex = 65 ; Conditon = 1
after Revision ^_^
startIndex = 64 ; EndIndex = 65
 VarIndex = 64 ; _data[29][64] = 1
 VarIndex = 65 ; _data[29][65] = 1
blocking walls s' First test :
x1 = 29; y1 = 65; x2 = 29; y2 = 66
_ConstAxe = 29 ; startIndex = 65 ; EndIndex = 66 ; Conditon = 1
after Revision ^_^ 
startIndex = 65 ; EndIndex = 66
 VarIndex = 65 ; _data[29][65] = 1
 VarIndex = 66 ; _data[29][66] = 1
blocking walls s' First test :
x1 = 29; y1 = 66; x2 = 29; y2 = 67
_ConstAxe = 29 ; startIndex = 66 ; EndIndex = 67 ; Conditon = 1
after Revision ^_^
startIndex = 66 ; EndIndex = 67
 VarIndex = 66 ; _data[29][66] = 1
 VarIndex = 67 ; _data[29][67] = 1
blocking walls s' First test :
x1 = 29; y1 = 67; x2 = 29; y2 = 68
_ConstAxe = 29 ; startIndex = 67 ; EndIndex = 68 ; Conditon = 1
after Revision ^_^
startIndex = 67 ; EndIndex = 68
 VarIndex = 67 ; _data[29][67] = 1
 VarIndex = 68 ; _data[29][68] = 1
blocking walls s' First test :
x1 = 29; y1 = 68; x2 = 29; y2 = 69
_ConstAxe = 29 ; startIndex = 68 ; EndIndex = 69 ; Conditon = 1
after Revision ^_^
startIndex = 68 ; EndIndex = 69
 VarIndex = 68 ; _data[29][68] = 1
 VarIndex = 69 ; _data[29][69] = 1
blocking walls s' First test :
x1 = 29; y1 = 69; x2 = 29; y2 = 70
_ConstAxe = 29 ; startIndex = 69 ; EndIndex = 70 ; Conditon = 1
after Revision ^_^
startIndex = 69 ; EndIndex = 70
 VarIndex = 69 ; _data[29][69] = 1
 VarIndex = 70 ; _data[29][70] = 1
blocking walls s' First test :
x1 = 29; y1 = 70; x2 = 29; y2 = 71
_ConstAxe = 29 ; startIndex = 70 ; EndIndex = 71 ; Conditon = 1
after Revision ^_^
startIndex = 70 ; EndIndex = 71
 VarIndex = 70 ; _data[29][70] = 1
 VarIndex = 71 ; _data[29][71] = 1
blocking walls s' First test :
x1 = 29; y1 = 71; x2 = 29; y2 = 72
_ConstAxe = 29 ; startIndex = 71 ; EndIndex = 72 ; Conditon = 1
after Revision ^_^
startIndex = 71 ; EndIndex = 72
 VarIndex = 71 ; _data[29][71] = 1
 VarIndex = 72 ; _data[29][72] = 1
blocking walls s' First test :
x1 = 29; y1 = 72; x2 = 29; y2 = 73
_ConstAxe = 29 ; startIndex = 72 ; EndIndex = 73 ; Conditon = 1
after Revision ^_^
startIndex = 72 ; EndIndex = 73
 VarIndex = 72 ; _data[29][72] = 1
 VarIndex = 73 ; _data[29][73] = 1
blocking walls s' First test :
x1 = 29; y1 = 73; x2 = 29; y2 = 74
_ConstAxe = 29 ; startIndex = 73 ; EndIndex = 74 ; Conditon = 1
after Revision ^_^
startIndex = 73 ; EndIndex = 74
 VarIndex = 73 ; _data[29][73] = 1
 VarIndex = 74 ; _data[29][74] = 1
blocking walls s' First test :
x1 = 29; y1 = 74; x2 = 29; y2 = 75
_ConstAxe = 29 ; startIndex = 74 ; EndIndex = 75 ; Conditon = 1
after Revision ^_^
startIndex = 74 ; EndIndex = 75
 VarIndex = 74 ; _data[29][74] = 1
 VarIndex = 75 ; _data[29][75] = 1
blocking walls s' First test :
x1 = 29; y1 = 75; x2 = 29; y2 = 76
_ConstAxe = 29 ; startIndex = 75 ; EndIndex = 76 ; Conditon = 1
after Revision ^_^
startIndex = 75 ; EndIndex = 76
 VarIndex = 75 ; _data[29][75] = 1
 VarIndex = 76 ; _data[29][76] = 1
blocking walls s' First test :
x1 = 29; y1 = 76; x2 = 29; y2 = 77
_ConstAxe = 29 ; startIndex = 76 ; EndIndex = 77 ; Conditon = 1
after Revision ^_^ 
startIndex = 76 ; EndIndex = 77
 VarIndex = 76 ; _data[29][76] = 1
 VarIndex = 77 ; _data[29][77] = 1
blocking walls s' First test :
x1 = 29; y1 = 77; x2 = 29; y2 = 78
_ConstAxe = 29 ; startIndex = 77 ; EndIndex = 78 ; Conditon = 1
after Revision ^_^
startIndex = 77 ; EndIndex = 78
 VarIndex = 77 ; _data[29][77] = 1
 VarIndex = 78 ; _data[29][78] = 1
blocking walls s' First test :
x1 = 29; y1 = 78; x2 = 29; y2 = 79
_ConstAxe = 29 ; startIndex = 78 ; EndIndex = 79 ; Conditon = 1
after Revision ^_^
startIndex = 78 ; EndIndex = 79
 VarIndex = 78 ; _data[29][78] = 1
 VarIndex = 79 ; _data[29][79] = 1
blocking walls s' First test :
x1 = 29; y1 = 79; x2 = 29; y2 = 80
_ConstAxe = 29 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[29][79] = 1
 VarIndex = 80 ; _data[29][80] = 1
blocking walls s' First test :
x1 = 29; y1 = 80; x2 = 29; y2 = 81
_ConstAxe = 29 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^ 
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[29][80] = 1
 VarIndex = 81 ; _data[29][81] = 1
blocking walls s' First test :
x1 = 29; y1 = 89; x2 = 30; y2 = 89
_ConstAxe = 89 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 0
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[29][89] = 1
 VarIndex = 30 ; _data[30][89] = 1
blocking walls s' First test :
x1 = 29; y1 = 92; x2 = 30; y2 = 92
_ConstAxe = 92 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 0
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[29][92] = 1
 VarIndex = 30 ; _data[30][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 29; y1 = 93; x2 = 29; y2 = 94
_ConstAxe = 29 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[29][93] = 1
 VarIndex = 94 ; _data[29][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 29; y1 = 94; x2 = 29; y2 = 95
_ConstAxe = 29 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[29][94] = 1
 VarIndex = 95 ; _data[29][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 29; y1 = 95; x2 = 29; y2 = 96
_ConstAxe = 29 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[29][95] = 1
 VarIndex = 96 ; _data[29][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 29; y1 = 96; x2 = 29; y2 = 97
_ConstAxe = 29 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[29][96] = 1
 VarIndex = 97 ; _data[29][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 29; y1 = 97; x2 = 29; y2 = 98
_ConstAxe = 29 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[29][97] = 1
 VarIndex = 98 ; _data[29][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 29; y1 = 98; x2 = 29; y2 = 99
_ConstAxe = 29 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[29][98] = 1
 VarIndex = 99 ; _data[29][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 29; y1 = 99; x2 = 29; y2 = 100
_ConstAxe = 29 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[29][99] = 1
 VarIndex = 100 ; _data[29][100] = 1
blocking walls s' First test :
x1 = 30; y1 = 1; x2 = 31; y2 = 1
_ConstAxe = 1 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 0
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[30][1] = 1
 VarIndex = 31 ; _data[31][1] = 1
blocking walls s' First test :
x1 = 30; y1 = 4; x2 = 30; y2 = 5
_ConstAxe = 30 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 1
after Revision ^_^
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[30][4] = 1
 VarIndex = 5 ; _data[30][5] = 1
blocking walls s' First test :
x1 = 30; y1 = 5; x2 = 30; y2 = 6
_ConstAxe = 30 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 1
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[30][5] = 1
 VarIndex = 6 ; _data[30][6] = 1
blocking walls s' First test :
x1 = 30; y1 = 6; x2 = 30; y2 = 7
_ConstAxe = 30 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[30][6] = 1
 VarIndex = 7 ; _data[30][7] = 1
blocking walls s' First test :
x1 = 30; y1 = 7; x2 = 30; y2 = 8
_ConstAxe = 30 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[30][7] = 1
 VarIndex = 8 ; _data[30][8] = 1
blocking walls s' First test :
x1 = 30; y1 = 8; x2 = 30; y2 = 9
_ConstAxe = 30 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[30][8] = 1
 VarIndex = 9 ; _data[30][9] = 1
blocking walls s' First test :
x1 = 30; y1 = 9; x2 = 30; y2 = 10
_ConstAxe = 30 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[30][9] = 1
 VarIndex = 10 ; _data[30][10] = 1
blocking walls s' First test :
x1 = 30; y1 = 10; x2 = 30; y2 = 11
_ConstAxe = 30 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[30][10] = 1
 VarIndex = 11 ; _data[30][11] = 1
blocking walls s' First test :
x1 = 30; y1 = 11; x2 = 30; y2 = 12
_ConstAxe = 30 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^ 
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[30][11] = 1
 VarIndex = 12 ; _data[30][12] = 1
blocking walls s' First test :
x1 = 30; y1 = 12; x2 = 30; y2 = 13
_ConstAxe = 30 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[30][12] = 1
 VarIndex = 13 ; _data[30][13] = 1
blocking walls s' First test :
x1 = 30; y1 = 13; x2 = 30; y2 = 14
_ConstAxe = 30 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[30][13] = 1
 VarIndex = 14 ; _data[30][14] = 1
blocking walls s' First test :
x1 = 30; y1 = 16; x2 = 30; y2 = 17
_ConstAxe = 30 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[30][16] = 1
 VarIndex = 17 ; _data[30][17] = 1
blocking walls s' First test :
x1 = 30; y1 = 17; x2 = 30; y2 = 18
_ConstAxe = 30 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[30][17] = 1
 VarIndex = 18 ; _data[30][18] = 1
blocking walls s' First test :
x1 = 30; y1 = 20; x2 = 30; y2 = 21
_ConstAxe = 30 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[30][20] = 1
 VarIndex = 21 ; _data[30][21] = 1
blocking walls s' First test :
x1 = 30; y1 = 21; x2 = 30; y2 = 22
_ConstAxe = 30 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^ 
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[30][21] = 1
 VarIndex = 22 ; _data[30][22] = 1
blocking walls s' First test :
x1 = 30; y1 = 22; x2 = 30; y2 = 23
_ConstAxe = 30 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[30][22] = 1
 VarIndex = 23 ; _data[30][23] = 1
blocking walls s' First test :
x1 = 30; y1 = 23; x2 = 30; y2 = 24
_ConstAxe = 30 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[30][23] = 1
 VarIndex = 24 ; _data[30][24] = 1
blocking walls s' First test :
x1 = 30; y1 = 24; x2 = 30; y2 = 25
_ConstAxe = 30 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[30][24] = 1
 VarIndex = 25 ; _data[30][25] = 1
blocking walls s' First test :
x1 = 30; y1 = 25; x2 = 30; y2 = 26
_ConstAxe = 30 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^ 
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[30][25] = 1
 VarIndex = 26 ; _data[30][26] = 1
blocking walls s' First test :
x1 = 30; y1 = 26; x2 = 30; y2 = 27
_ConstAxe = 30 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^ 
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[30][26] = 1
 VarIndex = 27 ; _data[30][27] = 1
blocking walls s' First test :
x1 = 30; y1 = 27; x2 = 30; y2 = 28
_ConstAxe = 30 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[30][27] = 1
 VarIndex = 28 ; _data[30][28] = 1
blocking walls s' First test :
x1 = 30; y1 = 28; x2 = 30; y2 = 29
_ConstAxe = 30 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[30][28] = 1
 VarIndex = 29 ; _data[30][29] = 1
blocking walls s' First test :
x1 = 30; y1 = 29; x2 = 30; y2 = 30
_ConstAxe = 30 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 1
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[30][29] = 1
 VarIndex = 30 ; _data[30][30] = 1
blocking walls s' First test :
x1 = 30; y1 = 30; x2 = 30; y2 = 31
_ConstAxe = 30 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 1
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[30][30] = 1
 VarIndex = 31 ; _data[30][31] = 1
blocking walls s' First test :
x1 = 30; y1 = 31; x2 = 30; y2 = 32
_ConstAxe = 30 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 1
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[30][31] = 1
 VarIndex = 32 ; _data[30][32] = 1
blocking walls s' First test :
x1 = 30; y1 = 32; x2 = 30; y2 = 33
_ConstAxe = 30 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[30][32] = 1
 VarIndex = 33 ; _data[30][33] = 1
blocking walls s' First test :
x1 = 30; y1 = 33; x2 = 30; y2 = 34
_ConstAxe = 30 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[30][33] = 1
 VarIndex = 34 ; _data[30][34] = 1
blocking walls s' First test :
x1 = 30; y1 = 34; x2 = 30; y2 = 35
_ConstAxe = 30 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^ 
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[30][34] = 1
 VarIndex = 35 ; _data[30][35] = 1
blocking walls s' First test :
x1 = 30; y1 = 35; x2 = 30; y2 = 36
_ConstAxe = 30 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[30][35] = 1
 VarIndex = 36 ; _data[30][36] = 1
blocking walls s' First test :
x1 = 30; y1 = 36; x2 = 30; y2 = 37
_ConstAxe = 30 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[30][36] = 1
 VarIndex = 37 ; _data[30][37] = 1
blocking walls s' First test :
x1 = 30; y1 = 37; x2 = 30; y2 = 38
_ConstAxe = 30 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[30][37] = 1
 VarIndex = 38 ; _data[30][38] = 1
blocking walls s' First test :
x1 = 30; y1 = 38; x2 = 30; y2 = 39
_ConstAxe = 30 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[30][38] = 1
 VarIndex = 39 ; _data[30][39] = 1
blocking walls s' First test :
x1 = 30; y1 = 39; x2 = 30; y2 = 40
_ConstAxe = 30 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[30][39] = 1
 VarIndex = 40 ; _data[30][40] = 1
blocking walls s' First test :
x1 = 30; y1 = 40; x2 = 30; y2 = 41
_ConstAxe = 30 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[30][40] = 1
 VarIndex = 41 ; _data[30][41] = 1
blocking walls s' First test :
x1 = 30; y1 = 41; x2 = 30; y2 = 42
_ConstAxe = 30 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[30][41] = 1
 VarIndex = 42 ; _data[30][42] = 1
blocking walls s' First test :
x1 = 30; y1 = 42; x2 = 30; y2 = 43
_ConstAxe = 30 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[30][42] = 1
 VarIndex = 43 ; _data[30][43] = 1
blocking walls s' First test :
x1 = 30; y1 = 43; x2 = 30; y2 = 44
_ConstAxe = 30 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[30][43] = 1
 VarIndex = 44 ; _data[30][44] = 1
blocking walls s' First test :
x1 = 30; y1 = 44; x2 = 30; y2 = 45
_ConstAxe = 30 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[30][44] = 1
 VarIndex = 45 ; _data[30][45] = 1
blocking walls s' First test :
x1 = 30; y1 = 45; x2 = 30; y2 = 46
_ConstAxe = 30 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[30][45] = 1
 VarIndex = 46 ; _data[30][46] = 1
blocking walls s' First test :
x1 = 30; y1 = 46; x2 = 30; y2 = 47
_ConstAxe = 30 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[30][46] = 1
 VarIndex = 47 ; _data[30][47] = 1
blocking walls s' First test :
x1 = 30; y1 = 47; x2 = 30; y2 = 48
_ConstAxe = 30 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[30][47] = 1
 VarIndex = 48 ; _data[30][48] = 1
blocking walls s' First test :
x1 = 30; y1 = 48; x2 = 30; y2 = 49
_ConstAxe = 30 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[30][48] = 1
 VarIndex = 49 ; _data[30][49] = 1
blocking walls s' First test :
x1 = 30; y1 = 49; x2 = 30; y2 = 50
_ConstAxe = 30 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[30][49] = 1
 VarIndex = 50 ; _data[30][50] = 1
blocking walls s' First test :
x1 = 30; y1 = 50; x2 = 30; y2 = 51
_ConstAxe = 30 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[30][50] = 1
 VarIndex = 51 ; _data[30][51] = 1
blocking walls s' First test :
x1 = 30; y1 = 51; x2 = 30; y2 = 52
_ConstAxe = 30 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[30][51] = 1
 VarIndex = 52 ; _data[30][52] = 1
blocking walls s' First test :
x1 = 30; y1 = 52; x2 = 30; y2 = 53
_ConstAxe = 30 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[30][52] = 1
 VarIndex = 53 ; _data[30][53] = 1
blocking walls s' First test :
x1 = 30; y1 = 53; x2 = 30; y2 = 54
_ConstAxe = 30 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[30][53] = 1
 VarIndex = 54 ; _data[30][54] = 1
blocking walls s' First test :
x1 = 30; y1 = 54; x2 = 30; y2 = 55
_ConstAxe = 30 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[30][54] = 1
 VarIndex = 55 ; _data[30][55] = 1
blocking walls s' First test :
x1 = 30; y1 = 55; x2 = 30; y2 = 56
_ConstAxe = 30 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[30][55] = 1
 VarIndex = 56 ; _data[30][56] = 1
blocking walls s' First test :
x1 = 30; y1 = 56; x2 = 30; y2 = 57
_ConstAxe = 30 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[30][56] = 1
 VarIndex = 57 ; _data[30][57] = 1
blocking walls s' First test :
x1 = 30; y1 = 57; x2 = 30; y2 = 58
_ConstAxe = 30 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[30][57] = 1
 VarIndex = 58 ; _data[30][58] = 1
blocking walls s' First test :
x1 = 30; y1 = 58; x2 = 30; y2 = 59
_ConstAxe = 30 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[30][58] = 1
 VarIndex = 59 ; _data[30][59] = 1
blocking walls s' First test :
x1 = 30; y1 = 59; x2 = 30; y2 = 60
_ConstAxe = 30 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[30][59] = 1
 VarIndex = 60 ; _data[30][60] = 1
blocking walls s' First test :
x1 = 30; y1 = 60; x2 = 30; y2 = 61
_ConstAxe = 30 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[30][60] = 1
 VarIndex = 61 ; _data[30][61] = 1
blocking walls s' First test :
x1 = 30; y1 = 80; x2 = 31; y2 = 80
_ConstAxe = 80 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 0
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[30][80] = 1
 VarIndex = 31 ; _data[31][80] = 1
blocking walls s' First test :
x1 = 30; y1 = 89; x2 = 31; y2 = 89
_ConstAxe = 89 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 0
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[30][89] = 1
 VarIndex = 31 ; _data[31][89] = 1
blocking walls s' First test :
x1 = 30; y1 = 92; x2 = 31; y2 = 92
_ConstAxe = 92 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 0
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[30][92] = 1
 VarIndex = 31 ; _data[31][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 30; y1 = 93; x2 = 30; y2 = 94
_ConstAxe = 30 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[30][93] = 1
 VarIndex = 94 ; _data[30][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 30; y1 = 94; x2 = 30; y2 = 95
_ConstAxe = 30 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[30][94] = 1
 VarIndex = 95 ; _data[30][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 30; y1 = 95; x2 = 30; y2 = 96
_ConstAxe = 30 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[30][95] = 1
 VarIndex = 96 ; _data[30][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 30; y1 = 96; x2 = 30; y2 = 97
_ConstAxe = 30 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[30][96] = 1
 VarIndex = 97 ; _data[30][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 30; y1 = 97; x2 = 30; y2 = 98
_ConstAxe = 30 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[30][97] = 1
 VarIndex = 98 ; _data[30][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 30; y1 = 98; x2 = 30; y2 = 99
_ConstAxe = 30 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[30][98] = 1
 VarIndex = 99 ; _data[30][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 30; y1 = 99; x2 = 30; y2 = 100
_ConstAxe = 30 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[30][99] = 1
 VarIndex = 100 ; _data[30][100] = 1
blocking walls s' First test :
x1 = 31; y1 = 1; x2 = 32; y2 = 1
_ConstAxe = 1 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 0
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[31][1] = 1
 VarIndex = 32 ; _data[32][1] = 1
blocking walls s' First test :
x1 = 31; y1 = 80; x2 = 32; y2 = 80
_ConstAxe = 80 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 0
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[31][80] = 1
 VarIndex = 32 ; _data[32][80] = 1
blocking walls s' First test :
x1 = 31; y1 = 89; x2 = 32; y2 = 89
_ConstAxe = 89 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 0
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[31][89] = 1
 VarIndex = 32 ; _data[32][89] = 1
blocking walls s' First test :
x1 = 31; y1 = 92; x2 = 32; y2 = 92
_ConstAxe = 92 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 0
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[31][92] = 1
 VarIndex = 32 ; _data[32][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 31; y1 = 93; x2 = 31; y2 = 94
_ConstAxe = 31 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[31][93] = 1
 VarIndex = 94 ; _data[31][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 31; y1 = 94; x2 = 31; y2 = 95
_ConstAxe = 31 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^ 
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[31][94] = 1
 VarIndex = 95 ; _data[31][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 31; y1 = 95; x2 = 31; y2 = 96
_ConstAxe = 31 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^ 
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[31][95] = 1
 VarIndex = 96 ; _data[31][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 31; y1 = 96; x2 = 31; y2 = 97
_ConstAxe = 31 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[31][96] = 1
 VarIndex = 97 ; _data[31][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 31; y1 = 97; x2 = 31; y2 = 98
_ConstAxe = 31 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[31][97] = 1
 VarIndex = 98 ; _data[31][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 31; y1 = 98; x2 = 31; y2 = 99
_ConstAxe = 31 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[31][98] = 1
 VarIndex = 99 ; _data[31][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 31; y1 = 99; x2 = 31; y2 = 100
_ConstAxe = 31 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[31][99] = 1
 VarIndex = 100 ; _data[31][100] = 1
blocking walls s' First test :
x1 = 32; y1 = 1; x2 = 33; y2 = 1
_ConstAxe = 1 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 0
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[32][1] = 1
 VarIndex = 33 ; _data[33][1] = 1
blocking walls s' First test :
x1 = 32; y1 = 80; x2 = 33; y2 = 80
_ConstAxe = 80 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 0
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[32][80] = 1
 VarIndex = 33 ; _data[33][80] = 1
blocking walls s' First test :
x1 = 32; y1 = 89; x2 = 33; y2 = 89
_ConstAxe = 89 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 0
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[32][89] = 1
 VarIndex = 33 ; _data[33][89] = 1
blocking walls s' First test :
x1 = 32; y1 = 92; x2 = 33; y2 = 92
_ConstAxe = 92 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 0
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[32][92] = 1
 VarIndex = 33 ; _data[33][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 32; y1 = 93; x2 = 32; y2 = 94
_ConstAxe = 32 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[32][93] = 1
 VarIndex = 94 ; _data[32][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 32; y1 = 94; x2 = 32; y2 = 95
_ConstAxe = 32 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[32][94] = 1
 VarIndex = 95 ; _data[32][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 32; y1 = 95; x2 = 32; y2 = 96
_ConstAxe = 32 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[32][95] = 1
 VarIndex = 96 ; _data[32][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 32; y1 = 96; x2 = 32; y2 = 97
_ConstAxe = 32 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[32][96] = 1
 VarIndex = 97 ; _data[32][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 32; y1 = 97; x2 = 32; y2 = 98
_ConstAxe = 32 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[32][97] = 1
 VarIndex = 98 ; _data[32][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 32; y1 = 98; x2 = 32; y2 = 99
_ConstAxe = 32 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[32][98] = 1
 VarIndex = 99 ; _data[32][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 32; y1 = 99; x2 = 32; y2 = 100
_ConstAxe = 32 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[32][99] = 1
 VarIndex = 100 ; _data[32][100] = 1
blocking walls s' First test :
x1 = 33; y1 = 1; x2 = 33; y2 = 2
_ConstAxe = 33 ; startIndex = 1 ; EndIndex = 2 ; Conditon = 1
after Revision ^_^
startIndex = 1 ; EndIndex = 2
 VarIndex = 1 ; _data[33][1] = 1
 VarIndex = 2 ; _data[33][2] = 1
blocking walls s' First test :
x1 = 33; y1 = 2; x2 = 33; y2 = 3
_ConstAxe = 33 ; startIndex = 2 ; EndIndex = 3 ; Conditon = 1
after Revision ^_^
startIndex = 2 ; EndIndex = 3
 VarIndex = 2 ; _data[33][2] = 1
 VarIndex = 3 ; _data[33][3] = 1
blocking walls s' First test :
x1 = 33; y1 = 3; x2 = 33; y2 = 4
_ConstAxe = 33 ; startIndex = 3 ; EndIndex = 4 ; Conditon = 1
after Revision ^_^
startIndex = 3 ; EndIndex = 4
 VarIndex = 3 ; _data[33][3] = 1
 VarIndex = 4 ; _data[33][4] = 1
blocking walls s' First test :
x1 = 33; y1 = 4; x2 = 33; y2 = 5
_ConstAxe = 33 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 1
after Revision ^_^
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[33][4] = 1
 VarIndex = 5 ; _data[33][5] = 1
blocking walls s' First test :
x1 = 33; y1 = 5; x2 = 33; y2 = 6
_ConstAxe = 33 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 1
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[33][5] = 1
 VarIndex = 6 ; _data[33][6] = 1
blocking walls s' First test :
x1 = 33; y1 = 6; x2 = 33; y2 = 7
_ConstAxe = 33 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^ 
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[33][6] = 1
 VarIndex = 7 ; _data[33][7] = 1
blocking walls s' First test :
x1 = 33; y1 = 7; x2 = 33; y2 = 8
_ConstAxe = 33 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[33][7] = 1
 VarIndex = 8 ; _data[33][8] = 1
blocking walls s' First test :
x1 = 33; y1 = 8; x2 = 33; y2 = 9
_ConstAxe = 33 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[33][8] = 1
 VarIndex = 9 ; _data[33][9] = 1
blocking walls s' First test :
x1 = 33; y1 = 9; x2 = 33; y2 = 10
_ConstAxe = 33 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[33][9] = 1
 VarIndex = 10 ; _data[33][10] = 1
blocking walls s' First test :
x1 = 33; y1 = 10; x2 = 33; y2 = 11
_ConstAxe = 33 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[33][10] = 1
 VarIndex = 11 ; _data[33][11] = 1
blocking walls s' First test :
x1 = 33; y1 = 11; x2 = 33; y2 = 12
_ConstAxe = 33 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[33][11] = 1
 VarIndex = 12 ; _data[33][12] = 1
blocking walls s' First test :
x1 = 33; y1 = 12; x2 = 33; y2 = 13
_ConstAxe = 33 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[33][12] = 1
 VarIndex = 13 ; _data[33][13] = 1
blocking walls s' First test :
x1 = 33; y1 = 13; x2 = 33; y2 = 14
_ConstAxe = 33 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[33][13] = 1
 VarIndex = 14 ; _data[33][14] = 1
blocking walls s' First test :
x1 = 33; y1 = 14; x2 = 33; y2 = 15
_ConstAxe = 33 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 1
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[33][14] = 1
 VarIndex = 15 ; _data[33][15] = 1
blocking walls s' First test :
x1 = 33; y1 = 15; x2 = 33; y2 = 16
_ConstAxe = 33 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 1
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[33][15] = 1
 VarIndex = 16 ; _data[33][16] = 1
blocking walls s' First test :
x1 = 33; y1 = 16; x2 = 33; y2 = 17
_ConstAxe = 33 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[33][16] = 1
 VarIndex = 17 ; _data[33][17] = 1
blocking walls s' First test :
x1 = 33; y1 = 17; x2 = 33; y2 = 18
_ConstAxe = 33 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[33][17] = 1
 VarIndex = 18 ; _data[33][18] = 1
blocking walls s' First test :
x1 = 33; y1 = 18; x2 = 33; y2 = 19
_ConstAxe = 33 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 1
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[33][18] = 1
 VarIndex = 19 ; _data[33][19] = 1
blocking walls s' First test :
x1 = 33; y1 = 19; x2 = 33; y2 = 20
_ConstAxe = 33 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 1
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[33][19] = 1
 VarIndex = 20 ; _data[33][20] = 1
blocking walls s' First test :
x1 = 33; y1 = 20; x2 = 33; y2 = 21
_ConstAxe = 33 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[33][20] = 1
 VarIndex = 21 ; _data[33][21] = 1
blocking walls s' First test :
x1 = 33; y1 = 21; x2 = 33; y2 = 22
_ConstAxe = 33 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[33][21] = 1
 VarIndex = 22 ; _data[33][22] = 1
blocking walls s' First test :
x1 = 33; y1 = 22; x2 = 33; y2 = 23
_ConstAxe = 33 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^ 
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[33][22] = 1
 VarIndex = 23 ; _data[33][23] = 1
blocking walls s' First test :
x1 = 33; y1 = 23; x2 = 33; y2 = 24
_ConstAxe = 33 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[33][23] = 1
 VarIndex = 24 ; _data[33][24] = 1
blocking walls s' First test :
x1 = 33; y1 = 24; x2 = 33; y2 = 25
_ConstAxe = 33 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[33][24] = 1
 VarIndex = 25 ; _data[33][25] = 1
blocking walls s' First test :
x1 = 33; y1 = 25; x2 = 33; y2 = 26
_ConstAxe = 33 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[33][25] = 1
 VarIndex = 26 ; _data[33][26] = 1
blocking walls s' First test :
x1 = 33; y1 = 26; x2 = 33; y2 = 27
_ConstAxe = 33 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[33][26] = 1
 VarIndex = 27 ; _data[33][27] = 1
blocking walls s' First test :
x1 = 33; y1 = 27; x2 = 33; y2 = 28
_ConstAxe = 33 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[33][27] = 1
 VarIndex = 28 ; _data[33][28] = 1
blocking walls s' First test :
x1 = 33; y1 = 28; x2 = 33; y2 = 29
_ConstAxe = 33 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[33][28] = 1
 VarIndex = 29 ; _data[33][29] = 1
blocking walls s' First test :
x1 = 33; y1 = 32; x2 = 33; y2 = 33
_ConstAxe = 33 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[33][32] = 1
 VarIndex = 33 ; _data[33][33] = 1
blocking walls s' First test :
x1 = 33; y1 = 33; x2 = 33; y2 = 34
_ConstAxe = 33 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[33][33] = 1
 VarIndex = 34 ; _data[33][34] = 1
blocking walls s' First test :
x1 = 33; y1 = 34; x2 = 33; y2 = 35
_ConstAxe = 33 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[33][34] = 1
 VarIndex = 35 ; _data[33][35] = 1
blocking walls s' First test :
x1 = 33; y1 = 35; x2 = 33; y2 = 36
_ConstAxe = 33 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[33][35] = 1
 VarIndex = 36 ; _data[33][36] = 1
blocking walls s' First test :
x1 = 33; y1 = 36; x2 = 33; y2 = 37
_ConstAxe = 33 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[33][36] = 1
 VarIndex = 37 ; _data[33][37] = 1
blocking walls s' First test :
x1 = 33; y1 = 37; x2 = 33; y2 = 38
_ConstAxe = 33 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^ 
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[33][37] = 1
 VarIndex = 38 ; _data[33][38] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 38; x2 = 33; y2 = 39
_ConstAxe = 33 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[33][38] = 1
 VarIndex = 39 ; _data[33][39] = 1
blocking walls s' First test :
x1 = 33; y1 = 39; x2 = 33; y2 = 40
_ConstAxe = 33 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^ 
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[33][39] = 1
 VarIndex = 40 ; _data[33][40] = 1
blocking walls s' First test :
x1 = 33; y1 = 40; x2 = 33; y2 = 41
_ConstAxe = 33 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[33][40] = 1
 VarIndex = 41 ; _data[33][41] = 1
blocking walls s' First test :
x1 = 33; y1 = 41; x2 = 33; y2 = 42
_ConstAxe = 33 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[33][41] = 1
 VarIndex = 42 ; _data[33][42] = 1
blocking walls s' First test :
x1 = 33; y1 = 42; x2 = 33; y2 = 43
_ConstAxe = 33 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[33][42] = 1
 VarIndex = 43 ; _data[33][43] = 1
blocking walls s' First test :
x1 = 33; y1 = 43; x2 = 33; y2 = 44
_ConstAxe = 33 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[33][43] = 1
 VarIndex = 44 ; _data[33][44] = 1
blocking walls s' First test :
x1 = 33; y1 = 44; x2 = 33; y2 = 45
_ConstAxe = 33 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[33][44] = 1
 VarIndex = 45 ; _data[33][45] = 1
blocking walls s' First test :
x1 = 33; y1 = 45; x2 = 33; y2 = 46
_ConstAxe = 33 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[33][45] = 1
 VarIndex = 46 ; _data[33][46] = 1
blocking walls s' First test :
x1 = 33; y1 = 63; x2 = 33; y2 = 64
_ConstAxe = 33 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[33][63] = 1
 VarIndex = 64 ; _data[33][64] = 1
blocking walls s' First test :
x1 = 33; y1 = 64; x2 = 33; y2 = 65
_ConstAxe = 33 ; startIndex = 64 ; EndIndex = 65 ; Conditon = 1
after Revision ^_^ 
startIndex = 64 ; EndIndex = 65
 VarIndex = 64 ; _data[33][64] = 1
 VarIndex = 65 ; _data[33][65] = 1
blocking walls s' First test :
x1 = 33; y1 = 65; x2 = 33; y2 = 66
_ConstAxe = 33 ; startIndex = 65 ; EndIndex = 66 ; Conditon = 1
after Revision ^_^
startIndex = 65 ; EndIndex = 66
 VarIndex = 65 ; _data[33][65] = 1
 VarIndex = 66 ; _data[33][66] = 1
blocking walls s' First test :
x1 = 33; y1 = 66; x2 = 33; y2 = 67
_ConstAxe = 33 ; startIndex = 66 ; EndIndex = 67 ; Conditon = 1
after Revision ^_^
startIndex = 66 ; EndIndex = 67
 VarIndex = 66 ; _data[33][66] = 1
 VarIndex = 67 ; _data[33][67] = 1
blocking walls s' First test :
x1 = 33; y1 = 67; x2 = 33; y2 = 68
_ConstAxe = 33 ; startIndex = 67 ; EndIndex = 68 ; Conditon = 1
after Revision ^_^
startIndex = 67 ; EndIndex = 68
 VarIndex = 67 ; _data[33][67] = 1
 VarIndex = 68 ; _data[33][68] = 1
blocking walls s' First test :
x1 = 33; y1 = 68; x2 = 33; y2 = 69
_ConstAxe = 33 ; startIndex = 68 ; EndIndex = 69 ; Conditon = 1
after Revision ^_^
startIndex = 68 ; EndIndex = 69
 VarIndex = 68 ; _data[33][68] = 1
 VarIndex = 69 ; _data[33][69] = 1
blocking walls s' First test :
x1 = 33; y1 = 80; x2 = 34; y2 = 80
_ConstAxe = 80 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 0
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[33][80] = 1
 VarIndex = 34 ; _data[34][80] = 1
blocking walls s' First test :
x1 = 33; y1 = 89; x2 = 34; y2 = 89
_ConstAxe = 89 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 0
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[33][89] = 1
 VarIndex = 34 ; _data[34][89] = 1
blocking walls s' First test :
x1 = 33; y1 = 92; x2 = 34; y2 = 92
_ConstAxe = 92 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 0
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[33][92] = 1
 VarIndex = 34 ; _data[34][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 93; x2 = 33; y2 = 94
_ConstAxe = 33 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[33][93] = 1
 VarIndex = 94 ; _data[33][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 94; x2 = 33; y2 = 95
_ConstAxe = 33 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[33][94] = 1
 VarIndex = 95 ; _data[33][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 95; x2 = 33; y2 = 96
_ConstAxe = 33 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[33][95] = 1
 VarIndex = 96 ; _data[33][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 96; x2 = 33; y2 = 97
_ConstAxe = 33 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[33][96] = 1
 VarIndex = 97 ; _data[33][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 97; x2 = 33; y2 = 98
_ConstAxe = 33 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^ 
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[33][97] = 1
 VarIndex = 98 ; _data[33][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 98; x2 = 33; y2 = 99
_ConstAxe = 33 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[33][98] = 1
 VarIndex = 99 ; _data[33][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 33; y1 = 99; x2 = 33; y2 = 100
_ConstAxe = 33 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[33][99] = 1
 VarIndex = 100 ; _data[33][100] = 1
blocking walls s' First test :
x1 = 34; y1 = 1; x2 = 35; y2 = 1
_ConstAxe = 1 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][1] = 1
 VarIndex = 35 ; _data[35][1] = 1
blocking walls s' First test :
x1 = 34; y1 = 27; x2 = 35; y2 = 27
_ConstAxe = 27 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][27] = 1
 VarIndex = 35 ; _data[35][27] = 1
blocking walls s' First test :
x1 = 34; y1 = 28; x2 = 35; y2 = 28
_ConstAxe = 28 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][28] = 1
 VarIndex = 35 ; _data[35][28] = 1
blocking walls s' First test :
x1 = 34; y1 = 32; x2 = 35; y2 = 32
_ConstAxe = 32 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^ 
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][32] = 1
 VarIndex = 35 ; _data[35][32] = 1
blocking walls s' First test :
x1 = 34; y1 = 45; x2 = 35; y2 = 45
_ConstAxe = 45 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][45] = 1
 VarIndex = 35 ; _data[35][45] = 1
blocking walls s' First test :
x1 = 34; y1 = 63; x2 = 35; y2 = 63
_ConstAxe = 63 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][63] = 1
 VarIndex = 35 ; _data[35][63] = 1
blocking walls s' First test :
x1 = 34; y1 = 68; x2 = 35; y2 = 68
_ConstAxe = 68 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][68] = 1
 VarIndex = 35 ; _data[35][68] = 1
blocking walls s' First test :
x1 = 34; y1 = 80; x2 = 35; y2 = 80
_ConstAxe = 80 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^ 
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][80] = 1
 VarIndex = 35 ; _data[35][80] = 1
blocking walls s' First test :
x1 = 34; y1 = 89; x2 = 35; y2 = 89
_ConstAxe = 89 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][89] = 1
 VarIndex = 35 ; _data[35][89] = 1
blocking walls s' First test :
x1 = 34; y1 = 92; x2 = 35; y2 = 92
_ConstAxe = 92 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 0
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[34][92] = 1
 VarIndex = 35 ; _data[35][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 34; y1 = 93; x2 = 34; y2 = 94
_ConstAxe = 34 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[34][93] = 1
 VarIndex = 94 ; _data[34][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 34; y1 = 94; x2 = 34; y2 = 95
_ConstAxe = 34 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[34][94] = 1
 VarIndex = 95 ; _data[34][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 34; y1 = 95; x2 = 34; y2 = 96
_ConstAxe = 34 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[34][95] = 1
 VarIndex = 96 ; _data[34][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 34; y1 = 96; x2 = 34; y2 = 97
_ConstAxe = 34 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[34][96] = 1
 VarIndex = 97 ; _data[34][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 34; y1 = 97; x2 = 34; y2 = 98
_ConstAxe = 34 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[34][97] = 1
 VarIndex = 98 ; _data[34][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 34; y1 = 98; x2 = 34; y2 = 99
_ConstAxe = 34 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[34][98] = 1
 VarIndex = 99 ; _data[34][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 34; y1 = 99; x2 = 34; y2 = 100
_ConstAxe = 34 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[34][99] = 1
 VarIndex = 100 ; _data[34][100] = 1
blocking walls s' First test :
x1 = 35; y1 = 1; x2 = 36; y2 = 1
_ConstAxe = 1 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][1] = 1
 VarIndex = 36 ; _data[36][1] = 1
blocking walls s' First test :
x1 = 35; y1 = 27; x2 = 36; y2 = 27
_ConstAxe = 27 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][27] = 1
 VarIndex = 36 ; _data[36][27] = 1
blocking walls s' First test :
x1 = 35; y1 = 28; x2 = 36; y2 = 28
_ConstAxe = 28 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][28] = 1
 VarIndex = 36 ; _data[36][28] = 1
blocking walls s' First test :
x1 = 35; y1 = 32; x2 = 36; y2 = 32
_ConstAxe = 32 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][32] = 1
 VarIndex = 36 ; _data[36][32] = 1
blocking walls s' First test :
x1 = 35; y1 = 45; x2 = 35; y2 = 46
_ConstAxe = 35 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^ 
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[35][45] = 1
 VarIndex = 46 ; _data[35][46] = 1
blocking walls s' First test :
x1 = 35; y1 = 46; x2 = 35; y2 = 47
_ConstAxe = 35 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[35][46] = 1
 VarIndex = 47 ; _data[35][47] = 1
blocking walls s' First test :
x1 = 35; y1 = 47; x2 = 35; y2 = 48
_ConstAxe = 35 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[35][47] = 1
 VarIndex = 48 ; _data[35][48] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 48; x2 = 35; y2 = 49
_ConstAxe = 35 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[35][48] = 1
 VarIndex = 49 ; _data[35][49] = 1
blocking walls s' First test :
x1 = 35; y1 = 49; x2 = 35; y2 = 50
_ConstAxe = 35 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[35][49] = 1
 VarIndex = 50 ; _data[35][50] = 1
blocking walls s' First test :
x1 = 35; y1 = 50; x2 = 35; y2 = 51
_ConstAxe = 35 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[35][50] = 1
 VarIndex = 51 ; _data[35][51] = 1
blocking walls s' First test :
x1 = 35; y1 = 51; x2 = 35; y2 = 52
_ConstAxe = 35 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^ 
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[35][51] = 1
 VarIndex = 52 ; _data[35][52] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 52; x2 = 35; y2 = 53
_ConstAxe = 35 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[35][52] = 1
 VarIndex = 53 ; _data[35][53] = 1
blocking walls s' First test :
x1 = 35; y1 = 53; x2 = 35; y2 = 54
_ConstAxe = 35 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^ 
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[35][53] = 1
 VarIndex = 54 ; _data[35][54] = 1
blocking walls s' First test :
x1 = 35; y1 = 54; x2 = 35; y2 = 55
_ConstAxe = 35 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[35][54] = 1
 VarIndex = 55 ; _data[35][55] = 1
blocking walls s' First test :
x1 = 35; y1 = 55; x2 = 35; y2 = 56
_ConstAxe = 35 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[35][55] = 1
 VarIndex = 56 ; _data[35][56] = 1
blocking walls s' First test :
x1 = 35; y1 = 56; x2 = 35; y2 = 57
_ConstAxe = 35 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^ 
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[35][56] = 1
 VarIndex = 57 ; _data[35][57] = 1
blocking walls s' First test :
x1 = 35; y1 = 57; x2 = 35; y2 = 58
_ConstAxe = 35 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[35][57] = 1
 VarIndex = 58 ; _data[35][58] = 1
blocking walls s' First test :
x1 = 35; y1 = 58; x2 = 35; y2 = 59
_ConstAxe = 35 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[35][58] = 1
 VarIndex = 59 ; _data[35][59] = 1
blocking walls s' First test :
x1 = 35; y1 = 59; x2 = 35; y2 = 60
_ConstAxe = 35 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[35][59] = 1
 VarIndex = 60 ; _data[35][60] = 1
blocking walls s' First test :
x1 = 35; y1 = 60; x2 = 35; y2 = 61
_ConstAxe = 35 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[35][60] = 1
 VarIndex = 61 ; _data[35][61] = 1
blocking walls s' First test :
x1 = 35; y1 = 63; x2 = 36; y2 = 63
_ConstAxe = 63 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][63] = 1
 VarIndex = 36 ; _data[36][63] = 1
blocking walls s' First test :
x1 = 35; y1 = 68; x2 = 36; y2 = 68
_ConstAxe = 68 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][68] = 1
 VarIndex = 36 ; _data[36][68] = 1
blocking walls s' First test :
x1 = 35; y1 = 80; x2 = 36; y2 = 80
_ConstAxe = 80 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][80] = 1
 VarIndex = 36 ; _data[36][80] = 1
blocking walls s' First test :
x1 = 35; y1 = 89; x2 = 36; y2 = 89
_ConstAxe = 89 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^ 
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][89] = 1
 VarIndex = 36 ; _data[36][89] = 1
blocking walls s' First test :
x1 = 35; y1 = 92; x2 = 36; y2 = 92
_ConstAxe = 92 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 0
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[35][92] = 1
 VarIndex = 36 ; _data[36][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 93; x2 = 35; y2 = 94
_ConstAxe = 35 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^ 
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[35][93] = 1
 VarIndex = 94 ; _data[35][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 94; x2 = 35; y2 = 95
_ConstAxe = 35 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[35][94] = 1
 VarIndex = 95 ; _data[35][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 95; x2 = 35; y2 = 96
_ConstAxe = 35 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[35][95] = 1
 VarIndex = 96 ; _data[35][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 96; x2 = 35; y2 = 97
_ConstAxe = 35 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[35][96] = 1
 VarIndex = 97 ; _data[35][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 97; x2 = 35; y2 = 98
_ConstAxe = 35 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[35][97] = 1
 VarIndex = 98 ; _data[35][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 98; x2 = 35; y2 = 99
_ConstAxe = 35 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[35][98] = 1
 VarIndex = 99 ; _data[35][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 35; y1 = 99; x2 = 35; y2 = 100
_ConstAxe = 35 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[35][99] = 1
 VarIndex = 100 ; _data[35][100] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 1; x2 = 36; y2 = 2
_ConstAxe = 36 ; startIndex = 1 ; EndIndex = 2 ; Conditon = 1
after Revision ^_^
startIndex = 1 ; EndIndex = 2
 VarIndex = 1 ; _data[36][1] = 1
 VarIndex = 2 ; _data[36][2] = 1
blocking walls s' First test :
x1 = 36; y1 = 27; x2 = 36; y2 = 28
_ConstAxe = 36 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[36][27] = 1
 VarIndex = 28 ; _data[36][28] = 1
blocking walls s' First test :
x1 = 36; y1 = 28; x2 = 36; y2 = 29
_ConstAxe = 36 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[36][28] = 1
 VarIndex = 29 ; _data[36][29] = 1
blocking walls s' First test :
x1 = 36; y1 = 32; x2 = 37; y2 = 32
_ConstAxe = 32 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 0
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[36][32] = 1
 VarIndex = 37 ; _data[37][32] = 1
blocking walls s' First test :
x1 = 36; y1 = 45; x2 = 36; y2 = 46
_ConstAxe = 36 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[36][45] = 1
 VarIndex = 46 ; _data[36][46] = 1
blocking walls s' First test :
x1 = 36; y1 = 46; x2 = 36; y2 = 47
_ConstAxe = 36 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[36][46] = 1
 VarIndex = 47 ; _data[36][47] = 1
blocking walls s' First test :
x1 = 36; y1 = 47; x2 = 36; y2 = 48
_ConstAxe = 36 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[36][47] = 1
 VarIndex = 48 ; _data[36][48] = 1
blocking walls s' First test :
x1 = 36; y1 = 48; x2 = 36; y2 = 49
_ConstAxe = 36 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[36][48] = 1
 VarIndex = 49 ; _data[36][49] = 1
blocking walls s' First test :
x1 = 36; y1 = 49; x2 = 36; y2 = 50
_ConstAxe = 36 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[36][49] = 1
 VarIndex = 50 ; _data[36][50] = 1
blocking walls s' First test :
x1 = 36; y1 = 50; x2 = 36; y2 = 51
_ConstAxe = 36 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[36][50] = 1
 VarIndex = 51 ; _data[36][51] = 1
blocking walls s' First test :
x1 = 36; y1 = 51; x2 = 36; y2 = 52
_ConstAxe = 36 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[36][51] = 1
 VarIndex = 52 ; _data[36][52] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 52; x2 = 36; y2 = 53
_ConstAxe = 36 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[36][52] = 1
 VarIndex = 53 ; _data[36][53] = 1
blocking walls s' First test :
x1 = 36; y1 = 53; x2 = 36; y2 = 54
_ConstAxe = 36 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[36][53] = 1
 VarIndex = 54 ; _data[36][54] = 1
blocking walls s' First test :
x1 = 36; y1 = 54; x2 = 36; y2 = 55
_ConstAxe = 36 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[36][54] = 1
 VarIndex = 55 ; _data[36][55] = 1
blocking walls s' First test :
x1 = 36; y1 = 55; x2 = 36; y2 = 56
_ConstAxe = 36 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[36][55] = 1
 VarIndex = 56 ; _data[36][56] = 1
blocking walls s' First test :
x1 = 36; y1 = 56; x2 = 36; y2 = 57
_ConstAxe = 36 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^ 
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[36][56] = 1
 VarIndex = 57 ; _data[36][57] = 1
blocking walls s' First test :
x1 = 36; y1 = 57; x2 = 36; y2 = 58
_ConstAxe = 36 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[36][57] = 1
 VarIndex = 58 ; _data[36][58] = 1
blocking walls s' First test :
x1 = 36; y1 = 58; x2 = 36; y2 = 59
_ConstAxe = 36 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[36][58] = 1
 VarIndex = 59 ; _data[36][59] = 1
blocking walls s' First test :
x1 = 36; y1 = 59; x2 = 36; y2 = 60
_ConstAxe = 36 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[36][59] = 1
 VarIndex = 60 ; _data[36][60] = 1
blocking walls s' First test :
x1 = 36; y1 = 60; x2 = 36; y2 = 61
_ConstAxe = 36 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[36][60] = 1
 VarIndex = 61 ; _data[36][61] = 1
blocking walls s' First test :
x1 = 36; y1 = 63; x2 = 37; y2 = 63
_ConstAxe = 63 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 0
after Revision ^_^ 
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[36][63] = 1
 VarIndex = 37 ; _data[37][63] = 1
blocking walls s' First test :
x1 = 36; y1 = 68; x2 = 36; y2 = 69
_ConstAxe = 36 ; startIndex = 68 ; EndIndex = 69 ; Conditon = 1
after Revision ^_^
startIndex = 68 ; EndIndex = 69
 VarIndex = 68 ; _data[36][68] = 1
 VarIndex = 69 ; _data[36][69] = 1
blocking walls s' First test :
x1 = 36; y1 = 69; x2 = 36; y2 = 70
_ConstAxe = 36 ; startIndex = 69 ; EndIndex = 70 ; Conditon = 1
after Revision ^_^
startIndex = 69 ; EndIndex = 70
 VarIndex = 69 ; _data[36][69] = 1
 VarIndex = 70 ; _data[36][70] = 1
blocking walls s' First test :
x1 = 36; y1 = 70; x2 = 36; y2 = 71
_ConstAxe = 36 ; startIndex = 70 ; EndIndex = 71 ; Conditon = 1
after Revision ^_^
startIndex = 70 ; EndIndex = 71
 VarIndex = 70 ; _data[36][70] = 1
 VarIndex = 71 ; _data[36][71] = 1
blocking walls s' First test :
x1 = 36; y1 = 71; x2 = 36; y2 = 72
_ConstAxe = 36 ; startIndex = 71 ; EndIndex = 72 ; Conditon = 1
after Revision ^_^ 
startIndex = 71 ; EndIndex = 72
 VarIndex = 71 ; _data[36][71] = 1
 VarIndex = 72 ; _data[36][72] = 1
blocking walls s' First test :
x1 = 36; y1 = 72; x2 = 36; y2 = 73
_ConstAxe = 36 ; startIndex = 72 ; EndIndex = 73 ; Conditon = 1
after Revision ^_^
startIndex = 72 ; EndIndex = 73
 VarIndex = 72 ; _data[36][72] = 1
 VarIndex = 73 ; _data[36][73] = 1
blocking walls s' First test :
x1 = 36; y1 = 73; x2 = 36; y2 = 74
_ConstAxe = 36 ; startIndex = 73 ; EndIndex = 74 ; Conditon = 1
after Revision ^_^
startIndex = 73 ; EndIndex = 74
 VarIndex = 73 ; _data[36][73] = 1
 VarIndex = 74 ; _data[36][74] = 1
blocking walls s' First test :
x1 = 36; y1 = 74; x2 = 36; y2 = 75
_ConstAxe = 36 ; startIndex = 74 ; EndIndex = 75 ; Conditon = 1
after Revision ^_^
startIndex = 74 ; EndIndex = 75
 VarIndex = 74 ; _data[36][74] = 1
 VarIndex = 75 ; _data[36][75] = 1
blocking walls s' First test :
x1 = 36; y1 = 75; x2 = 36; y2 = 76
_ConstAxe = 36 ; startIndex = 75 ; EndIndex = 76 ; Conditon = 1
after Revision ^_^
startIndex = 75 ; EndIndex = 76
 VarIndex = 75 ; _data[36][75] = 1
 VarIndex = 76 ; _data[36][76] = 1
blocking walls s' First test :
x1 = 36; y1 = 76; x2 = 36; y2 = 77
_ConstAxe = 36 ; startIndex = 76 ; EndIndex = 77 ; Conditon = 1
after Revision ^_^
startIndex = 76 ; EndIndex = 77
 VarIndex = 76 ; _data[36][76] = 1
 VarIndex = 77 ; _data[36][77] = 1
blocking walls s' First test :
x1 = 36; y1 = 77; x2 = 36; y2 = 78
_ConstAxe = 36 ; startIndex = 77 ; EndIndex = 78 ; Conditon = 1
after Revision ^_^
startIndex = 77 ; EndIndex = 78
 VarIndex = 77 ; _data[36][77] = 1
 VarIndex = 78 ; _data[36][78] = 1
blocking walls s' First test :
x1 = 36; y1 = 80; x2 = 37; y2 = 80
_ConstAxe = 80 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 0
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[36][80] = 1
 VarIndex = 37 ; _data[37][80] = 1
blocking walls s' First test :
x1 = 36; y1 = 89; x2 = 37; y2 = 89
_ConstAxe = 89 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 0
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[36][89] = 1
 VarIndex = 37 ; _data[37][89] = 1
blocking walls s' First test :
x1 = 36; y1 = 92; x2 = 37; y2 = 92
_ConstAxe = 92 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 0
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[36][92] = 1
 VarIndex = 37 ; _data[37][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 93; x2 = 36; y2 = 94
_ConstAxe = 36 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[36][93] = 1
 VarIndex = 94 ; _data[36][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 94; x2 = 36; y2 = 95
_ConstAxe = 36 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[36][94] = 1
 VarIndex = 95 ; _data[36][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 95; x2 = 36; y2 = 96
_ConstAxe = 36 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[36][95] = 1
 VarIndex = 96 ; _data[36][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 96; x2 = 36; y2 = 97
_ConstAxe = 36 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[36][96] = 1
 VarIndex = 97 ; _data[36][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 97; x2 = 36; y2 = 98
_ConstAxe = 36 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[36][97] = 1
 VarIndex = 98 ; _data[36][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 98; x2 = 36; y2 = 99
_ConstAxe = 36 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[36][98] = 1
 VarIndex = 99 ; _data[36][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 36; y1 = 99; x2 = 36; y2 = 100
_ConstAxe = 36 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[36][99] = 1
 VarIndex = 100 ; _data[36][100] = 1
blocking walls s' First test :
x1 = 37; y1 = 1; x2 = 38; y2 = 1
_ConstAxe = 1 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 0
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[37][1] = 1
 VarIndex = 38 ; _data[38][1] = 1
blocking walls s' First test :
x1 = 37; y1 = 32; x2 = 38; y2 = 32
_ConstAxe = 32 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 0
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[37][32] = 1
 VarIndex = 38 ; _data[38][32] = 1
blocking walls s' First test :
x1 = 37; y1 = 63; x2 = 38; y2 = 63
_ConstAxe = 63 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 0
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[37][63] = 1
 VarIndex = 38 ; _data[38][63] = 1
blocking walls s' First test :
x1 = 37; y1 = 77; x2 = 38; y2 = 77
_ConstAxe = 77 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 0
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[37][77] = 1
 VarIndex = 38 ; _data[38][77] = 1
blocking walls s' First test :
x1 = 37; y1 = 80; x2 = 38; y2 = 80
_ConstAxe = 80 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 0
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[37][80] = 1
 VarIndex = 38 ; _data[38][80] = 1
blocking walls s' First test :
x1 = 37; y1 = 89; x2 = 38; y2 = 89
_ConstAxe = 89 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 0
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[37][89] = 1
 VarIndex = 38 ; _data[38][89] = 1
blocking walls s' First test :
x1 = 37; y1 = 92; x2 = 38; y2 = 92
_ConstAxe = 92 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 0
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[37][92] = 1
 VarIndex = 38 ; _data[38][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 37; y1 = 93; x2 = 37; y2 = 94
_ConstAxe = 37 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[37][93] = 1
 VarIndex = 94 ; _data[37][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 37; y1 = 94; x2 = 37; y2 = 95
_ConstAxe = 37 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[37][94] = 1
 VarIndex = 95 ; _data[37][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 37; y1 = 95; x2 = 37; y2 = 96
_ConstAxe = 37 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[37][95] = 1
 VarIndex = 96 ; _data[37][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 37; y1 = 96; x2 = 37; y2 = 97
_ConstAxe = 37 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[37][96] = 1
 VarIndex = 97 ; _data[37][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 37; y1 = 97; x2 = 37; y2 = 98
_ConstAxe = 37 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[37][97] = 1
 VarIndex = 98 ; _data[37][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 37; y1 = 98; x2 = 37; y2 = 99
_ConstAxe = 37 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[37][98] = 1
 VarIndex = 99 ; _data[37][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 37; y1 = 99; x2 = 37; y2 = 100
_ConstAxe = 37 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[37][99] = 1
 VarIndex = 100 ; _data[37][100] = 1
blocking walls s' First test :
x1 = 38; y1 = 1; x2 = 39; y2 = 1
_ConstAxe = 1 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 0
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[38][1] = 1
 VarIndex = 39 ; _data[39][1] = 1
blocking walls s' First test :
x1 = 38; y1 = 32; x2 = 39; y2 = 32
_ConstAxe = 32 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 0
after Revision ^_^ 
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[38][32] = 1
 VarIndex = 39 ; _data[39][32] = 1
blocking walls s' First test :
x1 = 38; y1 = 63; x2 = 39; y2 = 63
_ConstAxe = 63 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 0
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[38][63] = 1
 VarIndex = 39 ; _data[39][63] = 1
blocking walls s' First test :
x1 = 38; y1 = 77; x2 = 39; y2 = 77
_ConstAxe = 77 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 0
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[38][77] = 1
 VarIndex = 39 ; _data[39][77] = 1
blocking walls s' First test :
x1 = 38; y1 = 80; x2 = 39; y2 = 80
_ConstAxe = 80 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 0
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[38][80] = 1
 VarIndex = 39 ; _data[39][80] = 1
blocking walls s' First test :
x1 = 38; y1 = 89; x2 = 39; y2 = 89
_ConstAxe = 89 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 0
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[38][89] = 1
 VarIndex = 39 ; _data[39][89] = 1
blocking walls s' First test :
x1 = 38; y1 = 92; x2 = 39; y2 = 92
_ConstAxe = 92 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 0
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[38][92] = 1
 VarIndex = 39 ; _data[39][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 38; y1 = 93; x2 = 38; y2 = 94
_ConstAxe = 38 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[38][93] = 1
 VarIndex = 94 ; _data[38][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 38; y1 = 94; x2 = 38; y2 = 95
_ConstAxe = 38 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[38][94] = 1
 VarIndex = 95 ; _data[38][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 38; y1 = 95; x2 = 38; y2 = 96
_ConstAxe = 38 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[38][95] = 1
 VarIndex = 96 ; _data[38][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 38; y1 = 96; x2 = 38; y2 = 97
_ConstAxe = 38 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[38][96] = 1
 VarIndex = 97 ; _data[38][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 38; y1 = 97; x2 = 38; y2 = 98
_ConstAxe = 38 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[38][97] = 1
 VarIndex = 98 ; _data[38][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 38; y1 = 98; x2 = 38; y2 = 99
_ConstAxe = 38 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[38][98] = 1
 VarIndex = 99 ; _data[38][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 38; y1 = 99; x2 = 38; y2 = 100
_ConstAxe = 38 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[38][99] = 1
 VarIndex = 100 ; _data[38][100] = 1
blocking walls s' First test :
x1 = 39; y1 = 1; x2 = 40; y2 = 1
_ConstAxe = 1 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 0
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[39][1] = 1
 VarIndex = 40 ; _data[40][1] = 1
blocking walls s' First test :
x1 = 39; y1 = 27; x2 = 39; y2 = 28
_ConstAxe = 39 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^ 
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[39][27] = 1
 VarIndex = 28 ; _data[39][28] = 1
blocking walls s' First test :
x1 = 39; y1 = 28; x2 = 39; y2 = 29
_ConstAxe = 39 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^ 
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[39][28] = 1
 VarIndex = 29 ; _data[39][29] = 1
blocking walls s' First test :
x1 = 39; y1 = 32; x2 = 39; y2 = 33
_ConstAxe = 39 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[39][32] = 1
 VarIndex = 33 ; _data[39][33] = 1
blocking walls s' First test :
x1 = 39; y1 = 33; x2 = 39; y2 = 34
_ConstAxe = 39 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[39][33] = 1
 VarIndex = 34 ; _data[39][34] = 1
blocking walls s' First test :
x1 = 39; y1 = 34; x2 = 39; y2 = 35
_ConstAxe = 39 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[39][34] = 1
 VarIndex = 35 ; _data[39][35] = 1
blocking walls s' First test :
x1 = 39; y1 = 35; x2 = 39; y2 = 36
_ConstAxe = 39 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[39][35] = 1
 VarIndex = 36 ; _data[39][36] = 1
blocking walls s' First test :
x1 = 39; y1 = 36; x2 = 39; y2 = 37
_ConstAxe = 39 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^ 
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[39][36] = 1
 VarIndex = 37 ; _data[39][37] = 1
blocking walls s' First test :
x1 = 39; y1 = 37; x2 = 39; y2 = 38
_ConstAxe = 39 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[39][37] = 1
 VarIndex = 38 ; _data[39][38] = 1
blocking walls s' First test :
x1 = 39; y1 = 38; x2 = 39; y2 = 39
_ConstAxe = 39 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[39][38] = 1
 VarIndex = 39 ; _data[39][39] = 1
blocking walls s' First test :
x1 = 39; y1 = 39; x2 = 39; y2 = 40
_ConstAxe = 39 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[39][39] = 1
 VarIndex = 40 ; _data[39][40] = 1
blocking walls s' First test :
x1 = 39; y1 = 40; x2 = 39; y2 = 41
_ConstAxe = 39 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[39][40] = 1
 VarIndex = 41 ; _data[39][41] = 1
blocking walls s' First test :
x1 = 39; y1 = 41; x2 = 39; y2 = 42
_ConstAxe = 39 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[39][41] = 1
 VarIndex = 42 ; _data[39][42] = 1
blocking walls s' First test :
x1 = 39; y1 = 42; x2 = 39; y2 = 43
_ConstAxe = 39 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[39][42] = 1
 VarIndex = 43 ; _data[39][43] = 1
blocking walls s' First test :
x1 = 39; y1 = 43; x2 = 39; y2 = 44
_ConstAxe = 39 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[39][43] = 1
 VarIndex = 44 ; _data[39][44] = 1
blocking walls s' First test :
x1 = 39; y1 = 44; x2 = 39; y2 = 45
_ConstAxe = 39 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[39][44] = 1
 VarIndex = 45 ; _data[39][45] = 1
blocking walls s' First test :
x1 = 39; y1 = 45; x2 = 39; y2 = 46
_ConstAxe = 39 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[39][45] = 1
 VarIndex = 46 ; _data[39][46] = 1
blocking walls s' First test :
x1 = 39; y1 = 46; x2 = 39; y2 = 47
_ConstAxe = 39 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[39][46] = 1
 VarIndex = 47 ; _data[39][47] = 1
blocking walls s' First test :
x1 = 39; y1 = 47; x2 = 39; y2 = 48
_ConstAxe = 39 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[39][47] = 1
 VarIndex = 48 ; _data[39][48] = 1
blocking walls s' First test :
x1 = 39; y1 = 48; x2 = 39; y2 = 49
_ConstAxe = 39 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[39][48] = 1
 VarIndex = 49 ; _data[39][49] = 1
blocking walls s' First test :
x1 = 39; y1 = 49; x2 = 39; y2 = 50
_ConstAxe = 39 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[39][49] = 1
 VarIndex = 50 ; _data[39][50] = 1
blocking walls s' First test :
x1 = 39; y1 = 50; x2 = 39; y2 = 51
_ConstAxe = 39 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[39][50] = 1
 VarIndex = 51 ; _data[39][51] = 1
blocking walls s' First test :
x1 = 39; y1 = 51; x2 = 39; y2 = 52
_ConstAxe = 39 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[39][51] = 1
 VarIndex = 52 ; _data[39][52] = 1
blocking walls s' First test :
x1 = 39; y1 = 52; x2 = 39; y2 = 53
_ConstAxe = 39 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^ 
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[39][52] = 1
 VarIndex = 53 ; _data[39][53] = 1
blocking walls s' First test :
x1 = 39; y1 = 53; x2 = 39; y2 = 54
_ConstAxe = 39 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[39][53] = 1
 VarIndex = 54 ; _data[39][54] = 1
blocking walls s' First test :
x1 = 39; y1 = 54; x2 = 39; y2 = 55
_ConstAxe = 39 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[39][54] = 1
 VarIndex = 55 ; _data[39][55] = 1
blocking walls s' First test :
x1 = 39; y1 = 55; x2 = 39; y2 = 56
_ConstAxe = 39 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[39][55] = 1
 VarIndex = 56 ; _data[39][56] = 1
blocking walls s' First test :
x1 = 39; y1 = 56; x2 = 39; y2 = 57
_ConstAxe = 39 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[39][56] = 1
 VarIndex = 57 ; _data[39][57] = 1
blocking walls s' First test :
x1 = 39; y1 = 57; x2 = 39; y2 = 58
_ConstAxe = 39 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^ 
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[39][57] = 1
 VarIndex = 58 ; _data[39][58] = 1
blocking walls s' First test :
x1 = 39; y1 = 58; x2 = 39; y2 = 59
_ConstAxe = 39 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[39][58] = 1
 VarIndex = 59 ; _data[39][59] = 1
blocking walls s' First test :
x1 = 39; y1 = 59; x2 = 39; y2 = 60
_ConstAxe = 39 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[39][59] = 1
 VarIndex = 60 ; _data[39][60] = 1
blocking walls s' First test :
x1 = 39; y1 = 60; x2 = 39; y2 = 61
_ConstAxe = 39 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[39][60] = 1
 VarIndex = 61 ; _data[39][61] = 1
blocking walls s' First test :
x1 = 39; y1 = 63; x2 = 40; y2 = 63
_ConstAxe = 63 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 0
after Revision ^_^ 
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[39][63] = 1
 VarIndex = 40 ; _data[40][63] = 1
blocking walls s' First test :
x1 = 39; y1 = 77; x2 = 40; y2 = 77
_ConstAxe = 77 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 0
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[39][77] = 1
 VarIndex = 40 ; _data[40][77] = 1
blocking walls s' First test :
x1 = 39; y1 = 80; x2 = 40; y2 = 80
_ConstAxe = 80 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 0
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[39][80] = 1
 VarIndex = 40 ; _data[40][80] = 1
blocking walls s' First test :
x1 = 39; y1 = 89; x2 = 40; y2 = 89
_ConstAxe = 89 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 0
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[39][89] = 1
 VarIndex = 40 ; _data[40][89] = 1
blocking walls s' First test :
x1 = 39; y1 = 92; x2 = 40; y2 = 92
_ConstAxe = 92 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 0
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[39][92] = 1
 VarIndex = 40 ; _data[40][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 39; y1 = 93; x2 = 39; y2 = 94
_ConstAxe = 39 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[39][93] = 1
 VarIndex = 94 ; _data[39][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 39; y1 = 94; x2 = 39; y2 = 95
_ConstAxe = 39 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[39][94] = 1
 VarIndex = 95 ; _data[39][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 39; y1 = 95; x2 = 39; y2 = 96
_ConstAxe = 39 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[39][95] = 1
 VarIndex = 96 ; _data[39][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 39; y1 = 96; x2 = 39; y2 = 97
_ConstAxe = 39 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[39][96] = 1
 VarIndex = 97 ; _data[39][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 39; y1 = 97; x2 = 39; y2 = 98
_ConstAxe = 39 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[39][97] = 1
 VarIndex = 98 ; _data[39][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 39; y1 = 98; x2 = 39; y2 = 99
_ConstAxe = 39 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^ 
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[39][98] = 1
 VarIndex = 99 ; _data[39][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 39; y1 = 99; x2 = 39; y2 = 100
_ConstAxe = 39 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[39][99] = 1
 VarIndex = 100 ; _data[39][100] = 1
blocking walls s' First test :
x1 = 40; y1 = 1; x2 = 41; y2 = 1
_ConstAxe = 1 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 0
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[40][1] = 1
 VarIndex = 41 ; _data[41][1] = 1
blocking walls s' First test :
x1 = 40; y1 = 27; x2 = 41; y2 = 27
_ConstAxe = 27 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 0
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[40][27] = 1
 VarIndex = 41 ; _data[41][27] = 1
blocking walls s' First test :
x1 = 40; y1 = 28; x2 = 41; y2 = 28
_ConstAxe = 28 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 0
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[40][28] = 1
 VarIndex = 41 ; _data[41][28] = 1
blocking walls s' First test :
x1 = 40; y1 = 32; x2 = 40; y2 = 33
_ConstAxe = 40 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[40][32] = 1
 VarIndex = 33 ; _data[40][33] = 1
blocking walls s' First test :
x1 = 40; y1 = 33; x2 = 40; y2 = 34
_ConstAxe = 40 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[40][33] = 1
 VarIndex = 34 ; _data[40][34] = 1
blocking walls s' First test :
x1 = 40; y1 = 34; x2 = 40; y2 = 35
_ConstAxe = 40 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[40][34] = 1
 VarIndex = 35 ; _data[40][35] = 1
blocking walls s' First test :
x1 = 40; y1 = 35; x2 = 40; y2 = 36
_ConstAxe = 40 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[40][35] = 1
 VarIndex = 36 ; _data[40][36] = 1
blocking walls s' First test :
x1 = 40; y1 = 36; x2 = 40; y2 = 37
_ConstAxe = 40 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[40][36] = 1
 VarIndex = 37 ; _data[40][37] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 37; x2 = 40; y2 = 38
_ConstAxe = 40 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[40][37] = 1
 VarIndex = 38 ; _data[40][38] = 1
blocking walls s' First test :
x1 = 40; y1 = 38; x2 = 40; y2 = 39
_ConstAxe = 40 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^ 
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[40][38] = 1
 VarIndex = 39 ; _data[40][39] = 1
blocking walls s' First test :
x1 = 40; y1 = 39; x2 = 40; y2 = 40
_ConstAxe = 40 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^ 
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[40][39] = 1
 VarIndex = 40 ; _data[40][40] = 1
blocking walls s' First test :
x1 = 40; y1 = 40; x2 = 40; y2 = 41
_ConstAxe = 40 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[40][40] = 1
 VarIndex = 41 ; _data[40][41] = 1
blocking walls s' First test :
x1 = 40; y1 = 41; x2 = 40; y2 = 42
_ConstAxe = 40 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[40][41] = 1
 VarIndex = 42 ; _data[40][42] = 1
blocking walls s' First test :
x1 = 40; y1 = 42; x2 = 40; y2 = 43
_ConstAxe = 40 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^ 
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[40][42] = 1
 VarIndex = 43 ; _data[40][43] = 1
blocking walls s' First test :
x1 = 40; y1 = 43; x2 = 40; y2 = 44
_ConstAxe = 40 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[40][43] = 1
 VarIndex = 44 ; _data[40][44] = 1
blocking walls s' First test :
x1 = 40; y1 = 44; x2 = 40; y2 = 45
_ConstAxe = 40 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[40][44] = 1
 VarIndex = 45 ; _data[40][45] = 1
blocking walls s' First test :
x1 = 40; y1 = 45; x2 = 40; y2 = 46
_ConstAxe = 40 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[40][45] = 1
 VarIndex = 46 ; _data[40][46] = 1
blocking walls s' First test :
x1 = 40; y1 = 46; x2 = 40; y2 = 47
_ConstAxe = 40 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[40][46] = 1
 VarIndex = 47 ; _data[40][47] = 1
blocking walls s' First test :
x1 = 40; y1 = 47; x2 = 40; y2 = 48
_ConstAxe = 40 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[40][47] = 1
 VarIndex = 48 ; _data[40][48] = 1
blocking walls s' First test :
x1 = 40; y1 = 48; x2 = 40; y2 = 49
_ConstAxe = 40 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[40][48] = 1
 VarIndex = 49 ; _data[40][49] = 1
blocking walls s' First test :
x1 = 40; y1 = 49; x2 = 40; y2 = 50
_ConstAxe = 40 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[40][49] = 1
 VarIndex = 50 ; _data[40][50] = 1
blocking walls s' First test :
x1 = 40; y1 = 50; x2 = 40; y2 = 51
_ConstAxe = 40 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[40][50] = 1
 VarIndex = 51 ; _data[40][51] = 1
blocking walls s' First test :
x1 = 40; y1 = 51; x2 = 40; y2 = 52
_ConstAxe = 40 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[40][51] = 1
 VarIndex = 52 ; _data[40][52] = 1
blocking walls s' First test :
x1 = 40; y1 = 52; x2 = 40; y2 = 53
_ConstAxe = 40 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[40][52] = 1
 VarIndex = 53 ; _data[40][53] = 1
blocking walls s' First test :
x1 = 40; y1 = 53; x2 = 40; y2 = 54
_ConstAxe = 40 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[40][53] = 1
 VarIndex = 54 ; _data[40][54] = 1
blocking walls s' First test :
x1 = 40; y1 = 54; x2 = 40; y2 = 55
_ConstAxe = 40 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[40][54] = 1
 VarIndex = 55 ; _data[40][55] = 1
blocking walls s' First test :
x1 = 40; y1 = 55; x2 = 40; y2 = 56
_ConstAxe = 40 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[40][55] = 1
 VarIndex = 56 ; _data[40][56] = 1
blocking walls s' First test :
x1 = 40; y1 = 56; x2 = 40; y2 = 57
_ConstAxe = 40 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[40][56] = 1
 VarIndex = 57 ; _data[40][57] = 1
blocking walls s' First test :
x1 = 40; y1 = 57; x2 = 40; y2 = 58
_ConstAxe = 40 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[40][57] = 1
 VarIndex = 58 ; _data[40][58] = 1
blocking walls s' First test :
x1 = 40; y1 = 58; x2 = 40; y2 = 59
_ConstAxe = 40 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[40][58] = 1
 VarIndex = 59 ; _data[40][59] = 1
blocking walls s' First test :
x1 = 40; y1 = 59; x2 = 40; y2 = 60
_ConstAxe = 40 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[40][59] = 1
 VarIndex = 60 ; _data[40][60] = 1
blocking walls s' First test :
x1 = 40; y1 = 60; x2 = 40; y2 = 61
_ConstAxe = 40 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[40][60] = 1
 VarIndex = 61 ; _data[40][61] = 1
blocking walls s' First test :
x1 = 40; y1 = 63; x2 = 40; y2 = 64
_ConstAxe = 40 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[40][63] = 1
 VarIndex = 64 ; _data[40][64] = 1
blocking walls s' First test :
x1 = 40; y1 = 64; x2 = 40; y2 = 65
_ConstAxe = 40 ; startIndex = 64 ; EndIndex = 65 ; Conditon = 1
after Revision ^_^
startIndex = 64 ; EndIndex = 65
 VarIndex = 64 ; _data[40][64] = 1
 VarIndex = 65 ; _data[40][65] = 1
blocking walls s' First test :
x1 = 40; y1 = 65; x2 = 40; y2 = 66
_ConstAxe = 40 ; startIndex = 65 ; EndIndex = 66 ; Conditon = 1
after Revision ^_^
startIndex = 65 ; EndIndex = 66
 VarIndex = 65 ; _data[40][65] = 1
 VarIndex = 66 ; _data[40][66] = 1
blocking walls s' First test :
x1 = 40; y1 = 66; x2 = 40; y2 = 67
_ConstAxe = 40 ; startIndex = 66 ; EndIndex = 67 ; Conditon = 1
after Revision ^_^
startIndex = 66 ; EndIndex = 67
 VarIndex = 66 ; _data[40][66] = 1
 VarIndex = 67 ; _data[40][67] = 1
blocking walls s' First test :
x1 = 40; y1 = 67; x2 = 40; y2 = 68
_ConstAxe = 40 ; startIndex = 67 ; EndIndex = 68 ; Conditon = 1
after Revision ^_^ 
startIndex = 67 ; EndIndex = 68
 VarIndex = 67 ; _data[40][67] = 1
 VarIndex = 68 ; _data[40][68] = 1
blocking walls s' First test :
x1 = 40; y1 = 68; x2 = 40; y2 = 69
_ConstAxe = 40 ; startIndex = 68 ; EndIndex = 69 ; Conditon = 1
after Revision ^_^
startIndex = 68 ; EndIndex = 69
 VarIndex = 68 ; _data[40][68] = 1
 VarIndex = 69 ; _data[40][69] = 1
blocking walls s' First test :
x1 = 40; y1 = 69; x2 = 40; y2 = 70
_ConstAxe = 40 ; startIndex = 69 ; EndIndex = 70 ; Conditon = 1
after Revision ^_^
startIndex = 69 ; EndIndex = 70
 VarIndex = 69 ; _data[40][69] = 1
 VarIndex = 70 ; _data[40][70] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 70; x2 = 40; y2 = 71
_ConstAxe = 40 ; startIndex = 70 ; EndIndex = 71 ; Conditon = 1
after Revision ^_^
startIndex = 70 ; EndIndex = 71
 VarIndex = 70 ; _data[40][70] = 1
 VarIndex = 71 ; _data[40][71] = 1
blocking walls s' First test :
x1 = 40; y1 = 71; x2 = 40; y2 = 72
_ConstAxe = 40 ; startIndex = 71 ; EndIndex = 72 ; Conditon = 1
after Revision ^_^
startIndex = 71 ; EndIndex = 72
 VarIndex = 71 ; _data[40][71] = 1
 VarIndex = 72 ; _data[40][72] = 1
blocking walls s' First test :
x1 = 40; y1 = 72; x2 = 40; y2 = 73
_ConstAxe = 40 ; startIndex = 72 ; EndIndex = 73 ; Conditon = 1
after Revision ^_^
startIndex = 72 ; EndIndex = 73
 VarIndex = 72 ; _data[40][72] = 1
 VarIndex = 73 ; _data[40][73] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 73; x2 = 40; y2 = 74
_ConstAxe = 40 ; startIndex = 73 ; EndIndex = 74 ; Conditon = 1
after Revision ^_^
startIndex = 73 ; EndIndex = 74
 VarIndex = 73 ; _data[40][73] = 1
 VarIndex = 74 ; _data[40][74] = 1
blocking walls s' First test :
x1 = 40; y1 = 74; x2 = 40; y2 = 75
_ConstAxe = 40 ; startIndex = 74 ; EndIndex = 75 ; Conditon = 1
after Revision ^_^
startIndex = 74 ; EndIndex = 75
 VarIndex = 74 ; _data[40][74] = 1
 VarIndex = 75 ; _data[40][75] = 1
blocking walls s' First test :
x1 = 40; y1 = 75; x2 = 40; y2 = 76
_ConstAxe = 40 ; startIndex = 75 ; EndIndex = 76 ; Conditon = 1
after Revision ^_^
startIndex = 75 ; EndIndex = 76
 VarIndex = 75 ; _data[40][75] = 1
 VarIndex = 76 ; _data[40][76] = 1
blocking walls s' First test :
x1 = 40; y1 = 76; x2 = 40; y2 = 77
_ConstAxe = 40 ; startIndex = 76 ; EndIndex = 77 ; Conditon = 1
after Revision ^_^
startIndex = 76 ; EndIndex = 77
 VarIndex = 76 ; _data[40][76] = 1
 VarIndex = 77 ; _data[40][77] = 1
blocking walls s' First test :
x1 = 40; y1 = 77; x2 = 40; y2 = 78
_ConstAxe = 40 ; startIndex = 77 ; EndIndex = 78 ; Conditon = 1
after Revision ^_^ 
startIndex = 77 ; EndIndex = 78
 VarIndex = 77 ; _data[40][77] = 1
 VarIndex = 78 ; _data[40][78] = 1
blocking walls s' First test :
x1 = 40; y1 = 80; x2 = 41; y2 = 80
_ConstAxe = 80 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 0
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[40][80] = 1
 VarIndex = 41 ; _data[41][80] = 1
blocking walls s' First test :
x1 = 40; y1 = 89; x2 = 41; y2 = 89
_ConstAxe = 89 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 0
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[40][89] = 1
 VarIndex = 41 ; _data[41][89] = 1
blocking walls s' First test :
x1 = 40; y1 = 92; x2 = 41; y2 = 92
_ConstAxe = 92 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 0
after Revision ^_^ 
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[40][92] = 1
 VarIndex = 41 ; _data[41][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 93; x2 = 40; y2 = 94
_ConstAxe = 40 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[40][93] = 1
 VarIndex = 94 ; _data[40][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 94; x2 = 40; y2 = 95
_ConstAxe = 40 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[40][94] = 1
 VarIndex = 95 ; _data[40][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 95; x2 = 40; y2 = 96
_ConstAxe = 40 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[40][95] = 1
 VarIndex = 96 ; _data[40][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 96; x2 = 40; y2 = 97
_ConstAxe = 40 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[40][96] = 1
 VarIndex = 97 ; _data[40][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 97; x2 = 40; y2 = 98
_ConstAxe = 40 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^ 
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[40][97] = 1
 VarIndex = 98 ; _data[40][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 98; x2 = 40; y2 = 99
_ConstAxe = 40 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[40][98] = 1
 VarIndex = 99 ; _data[40][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 40; y1 = 99; x2 = 40; y2 = 100
_ConstAxe = 40 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[40][99] = 1
 VarIndex = 100 ; _data[40][100] = 1
blocking walls s' First test :
x1 = 41; y1 = 1; x2 = 42; y2 = 1
_ConstAxe = 1 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 0
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[41][1] = 1
 VarIndex = 42 ; _data[42][1] = 1
blocking walls s' First test :
x1 = 41; y1 = 27; x2 = 42; y2 = 27
_ConstAxe = 27 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 0
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[41][27] = 1
 VarIndex = 42 ; _data[42][27] = 1
blocking walls s' First test :
x1 = 41; y1 = 28; x2 = 42; y2 = 28
_ConstAxe = 28 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 0
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[41][28] = 1
 VarIndex = 42 ; _data[42][28] = 1
blocking walls s' First test :
x1 = 41; y1 = 80; x2 = 41; y2 = 81
_ConstAxe = 41 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[41][80] = 1
 VarIndex = 81 ; _data[41][81] = 1
blocking walls s' First test :
x1 = 41; y1 = 81; x2 = 41; y2 = 82
_ConstAxe = 41 ; startIndex = 81 ; EndIndex = 82 ; Conditon = 1
after Revision ^_^
startIndex = 81 ; EndIndex = 82
 VarIndex = 81 ; _data[41][81] = 1
 VarIndex = 82 ; _data[41][82] = 1
blocking walls s' First test :
x1 = 41; y1 = 82; x2 = 41; y2 = 83
_ConstAxe = 41 ; startIndex = 82 ; EndIndex = 83 ; Conditon = 1
after Revision ^_^ 
startIndex = 82 ; EndIndex = 83
 VarIndex = 82 ; _data[41][82] = 1
 VarIndex = 83 ; _data[41][83] = 1
blocking walls s' First test :
x1 = 41; y1 = 83; x2 = 41; y2 = 84
_ConstAxe = 41 ; startIndex = 83 ; EndIndex = 84 ; Conditon = 1
after Revision ^_^
startIndex = 83 ; EndIndex = 84
 VarIndex = 83 ; _data[41][83] = 1
 VarIndex = 84 ; _data[41][84] = 1
blocking walls s' First test :
x1 = 41; y1 = 84; x2 = 41; y2 = 85
_ConstAxe = 41 ; startIndex = 84 ; EndIndex = 85 ; Conditon = 1
after Revision ^_^
startIndex = 84 ; EndIndex = 85
 VarIndex = 84 ; _data[41][84] = 1
 VarIndex = 85 ; _data[41][85] = 1
blocking walls s' First test :
x1 = 41; y1 = 85; x2 = 41; y2 = 86
_ConstAxe = 41 ; startIndex = 85 ; EndIndex = 86 ; Conditon = 1
after Revision ^_^
startIndex = 85 ; EndIndex = 86
 VarIndex = 85 ; _data[41][85] = 1
 VarIndex = 86 ; _data[41][86] = 1
blocking walls s' First test :
x1 = 41; y1 = 86; x2 = 41; y2 = 87
_ConstAxe = 41 ; startIndex = 86 ; EndIndex = 87 ; Conditon = 1
after Revision ^_^
startIndex = 86 ; EndIndex = 87
 VarIndex = 86 ; _data[41][86] = 1
 VarIndex = 87 ; _data[41][87] = 1
blocking walls s' First test :
x1 = 41; y1 = 87; x2 = 41; y2 = 88
_ConstAxe = 41 ; startIndex = 87 ; EndIndex = 88 ; Conditon = 1
after Revision ^_^
startIndex = 87 ; EndIndex = 88
 VarIndex = 87 ; _data[41][87] = 1
 VarIndex = 88 ; _data[41][88] = 1
blocking walls s' First test :
x1 = 41; y1 = 88; x2 = 41; y2 = 89
_ConstAxe = 41 ; startIndex = 88 ; EndIndex = 89 ; Conditon = 1
after Revision ^_^
startIndex = 88 ; EndIndex = 89
 VarIndex = 88 ; _data[41][88] = 1
 VarIndex = 89 ; _data[41][89] = 1
blocking walls s' First test :
x1 = 41; y1 = 89; x2 = 41; y2 = 90
_ConstAxe = 41 ; startIndex = 89 ; EndIndex = 90 ; Conditon = 1
after Revision ^_^
startIndex = 89 ; EndIndex = 90
 VarIndex = 89 ; _data[41][89] = 1
 VarIndex = 90 ; _data[41][90] = 1
blocking walls s' First test :
x1 = 41; y1 = 92; x2 = 42; y2 = 92
_ConstAxe = 92 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 0
after Revision ^_^ 
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[41][92] = 1
 VarIndex = 42 ; _data[42][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 41; y1 = 93; x2 = 41; y2 = 94
_ConstAxe = 41 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[41][93] = 1
 VarIndex = 94 ; _data[41][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 41; y1 = 94; x2 = 41; y2 = 95
_ConstAxe = 41 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[41][94] = 1
 VarIndex = 95 ; _data[41][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 41; y1 = 95; x2 = 41; y2 = 96
_ConstAxe = 41 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[41][95] = 1
 VarIndex = 96 ; _data[41][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 41; y1 = 96; x2 = 41; y2 = 97
_ConstAxe = 41 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[41][96] = 1
 VarIndex = 97 ; _data[41][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 41; y1 = 97; x2 = 41; y2 = 98
_ConstAxe = 41 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[41][97] = 1
 VarIndex = 98 ; _data[41][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 41; y1 = 98; x2 = 41; y2 = 99
_ConstAxe = 41 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[41][98] = 1
 VarIndex = 99 ; _data[41][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 41; y1 = 99; x2 = 41; y2 = 100
_ConstAxe = 41 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[41][99] = 1
 VarIndex = 100 ; _data[41][100] = 1
blocking walls s' First test :
x1 = 42; y1 = 1; x2 = 43; y2 = 1
_ConstAxe = 1 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 0
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[42][1] = 1
 VarIndex = 43 ; _data[43][1] = 1
blocking walls s' First test :
x1 = 42; y1 = 27; x2 = 43; y2 = 27
_ConstAxe = 27 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 0
after Revision ^_^ 
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[42][27] = 1
 VarIndex = 43 ; _data[43][27] = 1
blocking walls s' First test :
x1 = 42; y1 = 28; x2 = 43; y2 = 28
_ConstAxe = 28 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 0
after Revision ^_^ 
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[42][28] = 1
 VarIndex = 43 ; _data[43][28] = 1
blocking walls s' First test :
x1 = 42; y1 = 92; x2 = 43; y2 = 92
_ConstAxe = 92 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 0
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[42][92] = 1
 VarIndex = 43 ; _data[43][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 42; y1 = 93; x2 = 42; y2 = 94
_ConstAxe = 42 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[42][93] = 1
 VarIndex = 94 ; _data[42][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 42; y1 = 94; x2 = 42; y2 = 95
_ConstAxe = 42 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[42][94] = 1
 VarIndex = 95 ; _data[42][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 42; y1 = 95; x2 = 42; y2 = 96
_ConstAxe = 42 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[42][95] = 1
 VarIndex = 96 ; _data[42][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 42; y1 = 96; x2 = 42; y2 = 97
_ConstAxe = 42 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[42][96] = 1
 VarIndex = 97 ; _data[42][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 42; y1 = 97; x2 = 42; y2 = 98
_ConstAxe = 42 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[42][97] = 1
 VarIndex = 98 ; _data[42][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 42; y1 = 98; x2 = 42; y2 = 99
_ConstAxe = 42 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[42][98] = 1
 VarIndex = 99 ; _data[42][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 42; y1 = 99; x2 = 42; y2 = 100
_ConstAxe = 42 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[42][99] = 1
 VarIndex = 100 ; _data[42][100] = 1
blocking walls s' First test :
x1 = 43; y1 = 1; x2 = 43; y2 = 2
_ConstAxe = 43 ; startIndex = 1 ; EndIndex = 2 ; Conditon = 1
after Revision ^_^
startIndex = 1 ; EndIndex = 2
 VarIndex = 1 ; _data[43][1] = 1
 VarIndex = 2 ; _data[43][2] = 1
blocking walls s' First test :
x1 = 43; y1 = 2; x2 = 43; y2 = 3
_ConstAxe = 43 ; startIndex = 2 ; EndIndex = 3 ; Conditon = 1
after Revision ^_^
startIndex = 2 ; EndIndex = 3
 VarIndex = 2 ; _data[43][2] = 1
 VarIndex = 3 ; _data[43][3] = 1
blocking walls s' First test :
x1 = 43; y1 = 3; x2 = 43; y2 = 4
_ConstAxe = 43 ; startIndex = 3 ; EndIndex = 4 ; Conditon = 1
after Revision ^_^
startIndex = 3 ; EndIndex = 4
 VarIndex = 3 ; _data[43][3] = 1
 VarIndex = 4 ; _data[43][4] = 1
blocking walls s' First test :
x1 = 43; y1 = 4; x2 = 43; y2 = 5
_ConstAxe = 43 ; startIndex = 4 ; EndIndex = 5 ; Conditon = 1
after Revision ^_^
startIndex = 4 ; EndIndex = 5
 VarIndex = 4 ; _data[43][4] = 1
 VarIndex = 5 ; _data[43][5] = 1
blocking walls s' First test :
x1 = 43; y1 = 5; x2 = 43; y2 = 6
_ConstAxe = 43 ; startIndex = 5 ; EndIndex = 6 ; Conditon = 1
after Revision ^_^
startIndex = 5 ; EndIndex = 6
 VarIndex = 5 ; _data[43][5] = 1
 VarIndex = 6 ; _data[43][6] = 1
blocking walls s' First test :
x1 = 43; y1 = 6; x2 = 43; y2 = 7
_ConstAxe = 43 ; startIndex = 6 ; EndIndex = 7 ; Conditon = 1
after Revision ^_^ 
startIndex = 6 ; EndIndex = 7
 VarIndex = 6 ; _data[43][6] = 1
 VarIndex = 7 ; _data[43][7] = 1
blocking walls s' First test :
x1 = 43; y1 = 7; x2 = 43; y2 = 8
_ConstAxe = 43 ; startIndex = 7 ; EndIndex = 8 ; Conditon = 1
after Revision ^_^
startIndex = 7 ; EndIndex = 8
 VarIndex = 7 ; _data[43][7] = 1
 VarIndex = 8 ; _data[43][8] = 1
blocking walls s' First test :
x1 = 43; y1 = 8; x2 = 43; y2 = 9
_ConstAxe = 43 ; startIndex = 8 ; EndIndex = 9 ; Conditon = 1
after Revision ^_^
startIndex = 8 ; EndIndex = 9
 VarIndex = 8 ; _data[43][8] = 1
 VarIndex = 9 ; _data[43][9] = 1
blocking walls s' First test :
x1 = 43; y1 = 9; x2 = 43; y2 = 10
_ConstAxe = 43 ; startIndex = 9 ; EndIndex = 10 ; Conditon = 1
after Revision ^_^
startIndex = 9 ; EndIndex = 10
 VarIndex = 9 ; _data[43][9] = 1
 VarIndex = 10 ; _data[43][10] = 1
blocking walls s' First test :
x1 = 43; y1 = 10; x2 = 43; y2 = 11
_ConstAxe = 43 ; startIndex = 10 ; EndIndex = 11 ; Conditon = 1
after Revision ^_^ 
startIndex = 10 ; EndIndex = 11
 VarIndex = 10 ; _data[43][10] = 1
 VarIndex = 11 ; _data[43][11] = 1
blocking walls s' First test :
x1 = 43; y1 = 11; x2 = 43; y2 = 12
_ConstAxe = 43 ; startIndex = 11 ; EndIndex = 12 ; Conditon = 1
after Revision ^_^
startIndex = 11 ; EndIndex = 12
 VarIndex = 11 ; _data[43][11] = 1
 VarIndex = 12 ; _data[43][12] = 1
blocking walls s' First test :
x1 = 43; y1 = 12; x2 = 43; y2 = 13
_ConstAxe = 43 ; startIndex = 12 ; EndIndex = 13 ; Conditon = 1
after Revision ^_^
startIndex = 12 ; EndIndex = 13
 VarIndex = 12 ; _data[43][12] = 1
 VarIndex = 13 ; _data[43][13] = 1
blocking walls s' First test :
x1 = 43; y1 = 13; x2 = 43; y2 = 14
_ConstAxe = 43 ; startIndex = 13 ; EndIndex = 14 ; Conditon = 1
after Revision ^_^
startIndex = 13 ; EndIndex = 14
 VarIndex = 13 ; _data[43][13] = 1
 VarIndex = 14 ; _data[43][14] = 1
blocking walls s' First test :
x1 = 43; y1 = 14; x2 = 43; y2 = 15
_ConstAxe = 43 ; startIndex = 14 ; EndIndex = 15 ; Conditon = 1
after Revision ^_^
startIndex = 14 ; EndIndex = 15
 VarIndex = 14 ; _data[43][14] = 1
 VarIndex = 15 ; _data[43][15] = 1
blocking walls s' First test :
x1 = 43; y1 = 15; x2 = 43; y2 = 16
_ConstAxe = 43 ; startIndex = 15 ; EndIndex = 16 ; Conditon = 1
after Revision ^_^
startIndex = 15 ; EndIndex = 16
 VarIndex = 15 ; _data[43][15] = 1
 VarIndex = 16 ; _data[43][16] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 16; x2 = 43; y2 = 17
_ConstAxe = 43 ; startIndex = 16 ; EndIndex = 17 ; Conditon = 1
after Revision ^_^ 
startIndex = 16 ; EndIndex = 17
 VarIndex = 16 ; _data[43][16] = 1
 VarIndex = 17 ; _data[43][17] = 1
blocking walls s' First test :
x1 = 43; y1 = 17; x2 = 43; y2 = 18
_ConstAxe = 43 ; startIndex = 17 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 17 ; EndIndex = 18
 VarIndex = 17 ; _data[43][17] = 1
 VarIndex = 18 ; _data[43][18] = 1
blocking walls s' First test :
x1 = 43; y1 = 18; x2 = 43; y2 = 19
_ConstAxe = 43 ; startIndex = 18 ; EndIndex = 19 ; Conditon = 1
after Revision ^_^
startIndex = 18 ; EndIndex = 19
 VarIndex = 18 ; _data[43][18] = 1
 VarIndex = 19 ; _data[43][19] = 1
blocking walls s' First test :
x1 = 43; y1 = 19; x2 = 43; y2 = 20
_ConstAxe = 43 ; startIndex = 19 ; EndIndex = 20 ; Conditon = 1
after Revision ^_^
startIndex = 19 ; EndIndex = 20
 VarIndex = 19 ; _data[43][19] = 1
 VarIndex = 20 ; _data[43][20] = 1
blocking walls s' First test :
x1 = 43; y1 = 20; x2 = 43; y2 = 21
_ConstAxe = 43 ; startIndex = 20 ; EndIndex = 21 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 21
 VarIndex = 20 ; _data[43][20] = 1
 VarIndex = 21 ; _data[43][21] = 1
blocking walls s' First test :
x1 = 43; y1 = 21; x2 = 43; y2 = 22
_ConstAxe = 43 ; startIndex = 21 ; EndIndex = 22 ; Conditon = 1
after Revision ^_^
startIndex = 21 ; EndIndex = 22
 VarIndex = 21 ; _data[43][21] = 1
 VarIndex = 22 ; _data[43][22] = 1
blocking walls s' First test :
x1 = 43; y1 = 22; x2 = 43; y2 = 23
_ConstAxe = 43 ; startIndex = 22 ; EndIndex = 23 ; Conditon = 1
after Revision ^_^
startIndex = 22 ; EndIndex = 23
 VarIndex = 22 ; _data[43][22] = 1
 VarIndex = 23 ; _data[43][23] = 1
blocking walls s' First test :
x1 = 43; y1 = 23; x2 = 43; y2 = 24
_ConstAxe = 43 ; startIndex = 23 ; EndIndex = 24 ; Conditon = 1
after Revision ^_^
startIndex = 23 ; EndIndex = 24
 VarIndex = 23 ; _data[43][23] = 1
 VarIndex = 24 ; _data[43][24] = 1
blocking walls s' First test :
x1 = 43; y1 = 24; x2 = 43; y2 = 25
_ConstAxe = 43 ; startIndex = 24 ; EndIndex = 25 ; Conditon = 1
after Revision ^_^
startIndex = 24 ; EndIndex = 25
 VarIndex = 24 ; _data[43][24] = 1
 VarIndex = 25 ; _data[43][25] = 1
blocking walls s' First test :
x1 = 43; y1 = 25; x2 = 43; y2 = 26
_ConstAxe = 43 ; startIndex = 25 ; EndIndex = 26 ; Conditon = 1
after Revision ^_^
startIndex = 25 ; EndIndex = 26
 VarIndex = 25 ; _data[43][25] = 1
 VarIndex = 26 ; _data[43][26] = 1
blocking walls s' First test :
x1 = 43; y1 = 26; x2 = 43; y2 = 27
_ConstAxe = 43 ; startIndex = 26 ; EndIndex = 27 ; Conditon = 1
after Revision ^_^
startIndex = 26 ; EndIndex = 27
 VarIndex = 26 ; _data[43][26] = 1
 VarIndex = 27 ; _data[43][27] = 1
blocking walls s' First test :
x1 = 43; y1 = 27; x2 = 43; y2 = 28
_ConstAxe = 43 ; startIndex = 27 ; EndIndex = 28 ; Conditon = 1
after Revision ^_^
startIndex = 27 ; EndIndex = 28
 VarIndex = 27 ; _data[43][27] = 1
 VarIndex = 28 ; _data[43][28] = 1
blocking walls s' First test :
x1 = 43; y1 = 28; x2 = 43; y2 = 29
_ConstAxe = 43 ; startIndex = 28 ; EndIndex = 29 ; Conditon = 1
after Revision ^_^
startIndex = 28 ; EndIndex = 29
 VarIndex = 28 ; _data[43][28] = 1
 VarIndex = 29 ; _data[43][29] = 1
blocking walls s' First test :
x1 = 43; y1 = 29; x2 = 43; y2 = 30
_ConstAxe = 43 ; startIndex = 29 ; EndIndex = 30 ; Conditon = 1
after Revision ^_^
startIndex = 29 ; EndIndex = 30
 VarIndex = 29 ; _data[43][29] = 1
 VarIndex = 30 ; _data[43][30] = 1
blocking walls s' First test :
x1 = 43; y1 = 30; x2 = 43; y2 = 31
_ConstAxe = 43 ; startIndex = 30 ; EndIndex = 31 ; Conditon = 1
after Revision ^_^
startIndex = 30 ; EndIndex = 31
 VarIndex = 30 ; _data[43][30] = 1
 VarIndex = 31 ; _data[43][31] = 1
blocking walls s' First test :
x1 = 43; y1 = 31; x2 = 43; y2 = 32
_ConstAxe = 43 ; startIndex = 31 ; EndIndex = 32 ; Conditon = 1
after Revision ^_^
startIndex = 31 ; EndIndex = 32
 VarIndex = 31 ; _data[43][31] = 1
 VarIndex = 32 ; _data[43][32] = 1
blocking walls s' First test :
x1 = 43; y1 = 32; x2 = 43; y2 = 33
_ConstAxe = 43 ; startIndex = 32 ; EndIndex = 33 ; Conditon = 1
after Revision ^_^
startIndex = 32 ; EndIndex = 33
 VarIndex = 32 ; _data[43][32] = 1
 VarIndex = 33 ; _data[43][33] = 1
blocking walls s' First test :
x1 = 43; y1 = 33; x2 = 43; y2 = 34
_ConstAxe = 43 ; startIndex = 33 ; EndIndex = 34 ; Conditon = 1
after Revision ^_^
startIndex = 33 ; EndIndex = 34
 VarIndex = 33 ; _data[43][33] = 1
 VarIndex = 34 ; _data[43][34] = 1
blocking walls s' First test :
x1 = 43; y1 = 34; x2 = 43; y2 = 35
_ConstAxe = 43 ; startIndex = 34 ; EndIndex = 35 ; Conditon = 1
after Revision ^_^
startIndex = 34 ; EndIndex = 35
 VarIndex = 34 ; _data[43][34] = 1
 VarIndex = 35 ; _data[43][35] = 1
blocking walls s' First test :
x1 = 43; y1 = 35; x2 = 43; y2 = 36
_ConstAxe = 43 ; startIndex = 35 ; EndIndex = 36 ; Conditon = 1
after Revision ^_^
startIndex = 35 ; EndIndex = 36
 VarIndex = 35 ; _data[43][35] = 1
 VarIndex = 36 ; _data[43][36] = 1
blocking walls s' First test :
x1 = 43; y1 = 36; x2 = 43; y2 = 37
_ConstAxe = 43 ; startIndex = 36 ; EndIndex = 37 ; Conditon = 1
after Revision ^_^
startIndex = 36 ; EndIndex = 37
 VarIndex = 36 ; _data[43][36] = 1
 VarIndex = 37 ; _data[43][37] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 37; x2 = 43; y2 = 38
_ConstAxe = 43 ; startIndex = 37 ; EndIndex = 38 ; Conditon = 1
after Revision ^_^
startIndex = 37 ; EndIndex = 38
 VarIndex = 37 ; _data[43][37] = 1
 VarIndex = 38 ; _data[43][38] = 1
blocking walls s' First test :
x1 = 43; y1 = 38; x2 = 43; y2 = 39
_ConstAxe = 43 ; startIndex = 38 ; EndIndex = 39 ; Conditon = 1
after Revision ^_^
startIndex = 38 ; EndIndex = 39
 VarIndex = 38 ; _data[43][38] = 1
 VarIndex = 39 ; _data[43][39] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 39; x2 = 43; y2 = 40
_ConstAxe = 43 ; startIndex = 39 ; EndIndex = 40 ; Conditon = 1
after Revision ^_^
startIndex = 39 ; EndIndex = 40
 VarIndex = 39 ; _data[43][39] = 1
 VarIndex = 40 ; _data[43][40] = 1
blocking walls s' First test :
x1 = 43; y1 = 40; x2 = 43; y2 = 41
_ConstAxe = 43 ; startIndex = 40 ; EndIndex = 41 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 41
 VarIndex = 40 ; _data[43][40] = 1
 VarIndex = 41 ; _data[43][41] = 1
blocking walls s' First test :
x1 = 43; y1 = 41; x2 = 43; y2 = 42
_ConstAxe = 43 ; startIndex = 41 ; EndIndex = 42 ; Conditon = 1
after Revision ^_^
startIndex = 41 ; EndIndex = 42
 VarIndex = 41 ; _data[43][41] = 1
 VarIndex = 42 ; _data[43][42] = 1
blocking walls s' First test :
x1 = 43; y1 = 42; x2 = 43; y2 = 43
_ConstAxe = 43 ; startIndex = 42 ; EndIndex = 43 ; Conditon = 1
after Revision ^_^
startIndex = 42 ; EndIndex = 43
 VarIndex = 42 ; _data[43][42] = 1
 VarIndex = 43 ; _data[43][43] = 1
blocking walls s' First test :
x1 = 43; y1 = 43; x2 = 43; y2 = 44
_ConstAxe = 43 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 1
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[43][43] = 1
 VarIndex = 44 ; _data[43][44] = 1
blocking walls s' First test :
x1 = 43; y1 = 44; x2 = 43; y2 = 45
_ConstAxe = 43 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 1
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[43][44] = 1
 VarIndex = 45 ; _data[43][45] = 1
blocking walls s' First test :
x1 = 43; y1 = 45; x2 = 43; y2 = 46
_ConstAxe = 43 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 1
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[43][45] = 1
 VarIndex = 46 ; _data[43][46] = 1
blocking walls s' First test :
x1 = 43; y1 = 46; x2 = 43; y2 = 47
_ConstAxe = 43 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 1
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[43][46] = 1
 VarIndex = 47 ; _data[43][47] = 1
blocking walls s' First test :
x1 = 43; y1 = 47; x2 = 43; y2 = 48
_ConstAxe = 43 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 1
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[43][47] = 1
 VarIndex = 48 ; _data[43][48] = 1
blocking walls s' First test :
x1 = 43; y1 = 48; x2 = 43; y2 = 49
_ConstAxe = 43 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 1
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[43][48] = 1
 VarIndex = 49 ; _data[43][49] = 1
blocking walls s' First test :
x1 = 43; y1 = 49; x2 = 43; y2 = 50
_ConstAxe = 43 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 1
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[43][49] = 1
 VarIndex = 50 ; _data[43][50] = 1
blocking walls s' First test :
x1 = 43; y1 = 50; x2 = 43; y2 = 51
_ConstAxe = 43 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 1
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[43][50] = 1
 VarIndex = 51 ; _data[43][51] = 1
blocking walls s' First test :
x1 = 43; y1 = 51; x2 = 43; y2 = 52
_ConstAxe = 43 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 1
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[43][51] = 1
 VarIndex = 52 ; _data[43][52] = 1
blocking walls s' First test :
x1 = 43; y1 = 52; x2 = 43; y2 = 53
_ConstAxe = 43 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 1
after Revision ^_^ 
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[43][52] = 1
 VarIndex = 53 ; _data[43][53] = 1
blocking walls s' First test :
x1 = 43; y1 = 53; x2 = 43; y2 = 54
_ConstAxe = 43 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 1
after Revision ^_^ 
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[43][53] = 1
 VarIndex = 54 ; _data[43][54] = 1
blocking walls s' First test :
x1 = 43; y1 = 54; x2 = 43; y2 = 55
_ConstAxe = 43 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 1
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[43][54] = 1
 VarIndex = 55 ; _data[43][55] = 1
blocking walls s' First test :
x1 = 43; y1 = 55; x2 = 43; y2 = 56
_ConstAxe = 43 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 1
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[43][55] = 1
 VarIndex = 56 ; _data[43][56] = 1
blocking walls s' First test :
x1 = 43; y1 = 56; x2 = 43; y2 = 57
_ConstAxe = 43 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 1
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[43][56] = 1
 VarIndex = 57 ; _data[43][57] = 1
blocking walls s' First test :
x1 = 43; y1 = 57; x2 = 43; y2 = 58
_ConstAxe = 43 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 1
after Revision ^_^ 
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[43][57] = 1
 VarIndex = 58 ; _data[43][58] = 1
blocking walls s' First test :
x1 = 43; y1 = 58; x2 = 43; y2 = 59
_ConstAxe = 43 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 1
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[43][58] = 1
 VarIndex = 59 ; _data[43][59] = 1
blocking walls s' First test :
x1 = 43; y1 = 59; x2 = 43; y2 = 60
_ConstAxe = 43 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[43][59] = 1
 VarIndex = 60 ; _data[43][60] = 1
blocking walls s' First test :
x1 = 43; y1 = 60; x2 = 43; y2 = 61
_ConstAxe = 43 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[43][60] = 1
 VarIndex = 61 ; _data[43][61] = 1
blocking walls s' First test :
x1 = 43; y1 = 61; x2 = 43; y2 = 62
_ConstAxe = 43 ; startIndex = 61 ; EndIndex = 62 ; Conditon = 1
after Revision ^_^
startIndex = 61 ; EndIndex = 62
 VarIndex = 61 ; _data[43][61] = 1
 VarIndex = 62 ; _data[43][62] = 1
blocking walls s' First test :
x1 = 43; y1 = 62; x2 = 43; y2 = 63
_ConstAxe = 43 ; startIndex = 62 ; EndIndex = 63 ; Conditon = 1
after Revision ^_^
startIndex = 62 ; EndIndex = 63
 VarIndex = 62 ; _data[43][62] = 1
 VarIndex = 63 ; _data[43][63] = 1
blocking walls s' First test :
x1 = 43; y1 = 63; x2 = 43; y2 = 64
_ConstAxe = 43 ; startIndex = 63 ; EndIndex = 64 ; Conditon = 1
after Revision ^_^
startIndex = 63 ; EndIndex = 64
 VarIndex = 63 ; _data[43][63] = 1
 VarIndex = 64 ; _data[43][64] = 1
blocking walls s' First test :
x1 = 43; y1 = 64; x2 = 43; y2 = 65
_ConstAxe = 43 ; startIndex = 64 ; EndIndex = 65 ; Conditon = 1
after Revision ^_^
startIndex = 64 ; EndIndex = 65
 VarIndex = 64 ; _data[43][64] = 1
 VarIndex = 65 ; _data[43][65] = 1
blocking walls s' First test :
x1 = 43; y1 = 65; x2 = 43; y2 = 66
_ConstAxe = 43 ; startIndex = 65 ; EndIndex = 66 ; Conditon = 1
after Revision ^_^
startIndex = 65 ; EndIndex = 66
 VarIndex = 65 ; _data[43][65] = 1
 VarIndex = 66 ; _data[43][66] = 1
blocking walls s' First test :
x1 = 43; y1 = 66; x2 = 43; y2 = 67
_ConstAxe = 43 ; startIndex = 66 ; EndIndex = 67 ; Conditon = 1
after Revision ^_^
startIndex = 66 ; EndIndex = 67
 VarIndex = 66 ; _data[43][66] = 1
 VarIndex = 67 ; _data[43][67] = 1
blocking walls s' First test :
x1 = 43; y1 = 67; x2 = 43; y2 = 68
_ConstAxe = 43 ; startIndex = 67 ; EndIndex = 68 ; Conditon = 1
after Revision ^_^
startIndex = 67 ; EndIndex = 68
 VarIndex = 67 ; _data[43][67] = 1
 VarIndex = 68 ; _data[43][68] = 1
blocking walls s' First test :
x1 = 43; y1 = 68; x2 = 43; y2 = 69
_ConstAxe = 43 ; startIndex = 68 ; EndIndex = 69 ; Conditon = 1
after Revision ^_^
startIndex = 68 ; EndIndex = 69
 VarIndex = 68 ; _data[43][68] = 1
 VarIndex = 69 ; _data[43][69] = 1
blocking walls s' First test :
x1 = 43; y1 = 69; x2 = 43; y2 = 70
_ConstAxe = 43 ; startIndex = 69 ; EndIndex = 70 ; Conditon = 1
after Revision ^_^
startIndex = 69 ; EndIndex = 70
 VarIndex = 69 ; _data[43][69] = 1
 VarIndex = 70 ; _data[43][70] = 1
blocking walls s' First test :
x1 = 43; y1 = 70; x2 = 43; y2 = 71
_ConstAxe = 43 ; startIndex = 70 ; EndIndex = 71 ; Conditon = 1
after Revision ^_^
startIndex = 70 ; EndIndex = 71
 VarIndex = 70 ; _data[43][70] = 1
 VarIndex = 71 ; _data[43][71] = 1
blocking walls s' First test :
x1 = 43; y1 = 71; x2 = 43; y2 = 72
_ConstAxe = 43 ; startIndex = 71 ; EndIndex = 72 ; Conditon = 1
after Revision ^_^
startIndex = 71 ; EndIndex = 72
 VarIndex = 71 ; _data[43][71] = 1
 VarIndex = 72 ; _data[43][72] = 1
blocking walls s' First test :
x1 = 43; y1 = 72; x2 = 43; y2 = 73
_ConstAxe = 43 ; startIndex = 72 ; EndIndex = 73 ; Conditon = 1
after Revision ^_^
startIndex = 72 ; EndIndex = 73
 VarIndex = 72 ; _data[43][72] = 1
 VarIndex = 73 ; _data[43][73] = 1
blocking walls s' First test :
x1 = 43; y1 = 73; x2 = 43; y2 = 74
_ConstAxe = 43 ; startIndex = 73 ; EndIndex = 74 ; Conditon = 1
after Revision ^_^
startIndex = 73 ; EndIndex = 74
 VarIndex = 73 ; _data[43][73] = 1
 VarIndex = 74 ; _data[43][74] = 1
blocking walls s' First test :
x1 = 43; y1 = 74; x2 = 43; y2 = 75
_ConstAxe = 43 ; startIndex = 74 ; EndIndex = 75 ; Conditon = 1
after Revision ^_^
startIndex = 74 ; EndIndex = 75
 VarIndex = 74 ; _data[43][74] = 1
 VarIndex = 75 ; _data[43][75] = 1
blocking walls s' First test :
x1 = 43; y1 = 75; x2 = 43; y2 = 76
_ConstAxe = 43 ; startIndex = 75 ; EndIndex = 76 ; Conditon = 1
after Revision ^_^
startIndex = 75 ; EndIndex = 76
 VarIndex = 75 ; _data[43][75] = 1
 VarIndex = 76 ; _data[43][76] = 1
blocking walls s' First test :
x1 = 43; y1 = 76; x2 = 43; y2 = 77
_ConstAxe = 43 ; startIndex = 76 ; EndIndex = 77 ; Conditon = 1
after Revision ^_^
startIndex = 76 ; EndIndex = 77
 VarIndex = 76 ; _data[43][76] = 1
 VarIndex = 77 ; _data[43][77] = 1
blocking walls s' First test :
x1 = 43; y1 = 77; x2 = 43; y2 = 78
_ConstAxe = 43 ; startIndex = 77 ; EndIndex = 78 ; Conditon = 1
after Revision ^_^
startIndex = 77 ; EndIndex = 78
 VarIndex = 77 ; _data[43][77] = 1
 VarIndex = 78 ; _data[43][78] = 1
blocking walls s' First test :
x1 = 43; y1 = 78; x2 = 43; y2 = 79
_ConstAxe = 43 ; startIndex = 78 ; EndIndex = 79 ; Conditon = 1
after Revision ^_^
startIndex = 78 ; EndIndex = 79
 VarIndex = 78 ; _data[43][78] = 1
 VarIndex = 79 ; _data[43][79] = 1
blocking walls s' First test :
x1 = 43; y1 = 79; x2 = 43; y2 = 80
_ConstAxe = 43 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[43][79] = 1
 VarIndex = 80 ; _data[43][80] = 1
blocking walls s' First test :
x1 = 43; y1 = 80; x2 = 43; y2 = 81
_ConstAxe = 43 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[43][80] = 1
 VarIndex = 81 ; _data[43][81] = 1
blocking walls s' First test :
x1 = 43; y1 = 81; x2 = 43; y2 = 82
_ConstAxe = 43 ; startIndex = 81 ; EndIndex = 82 ; Conditon = 1
after Revision ^_^
startIndex = 81 ; EndIndex = 82
 VarIndex = 81 ; _data[43][81] = 1
 VarIndex = 82 ; _data[43][82] = 1
blocking walls s' First test :
x1 = 43; y1 = 82; x2 = 43; y2 = 83
_ConstAxe = 43 ; startIndex = 82 ; EndIndex = 83 ; Conditon = 1
after Revision ^_^
startIndex = 82 ; EndIndex = 83
 VarIndex = 82 ; _data[43][82] = 1
 VarIndex = 83 ; _data[43][83] = 1
blocking walls s' First test :
x1 = 43; y1 = 83; x2 = 43; y2 = 84
_ConstAxe = 43 ; startIndex = 83 ; EndIndex = 84 ; Conditon = 1
after Revision ^_^
startIndex = 83 ; EndIndex = 84
 VarIndex = 83 ; _data[43][83] = 1
 VarIndex = 84 ; _data[43][84] = 1
blocking walls s' First test :
x1 = 43; y1 = 84; x2 = 43; y2 = 85
_ConstAxe = 43 ; startIndex = 84 ; EndIndex = 85 ; Conditon = 1
after Revision ^_^
startIndex = 84 ; EndIndex = 85
 VarIndex = 84 ; _data[43][84] = 1
 VarIndex = 85 ; _data[43][85] = 1
blocking walls s' First test :
x1 = 43; y1 = 85; x2 = 43; y2 = 86
_ConstAxe = 43 ; startIndex = 85 ; EndIndex = 86 ; Conditon = 1
after Revision ^_^
startIndex = 85 ; EndIndex = 86
 VarIndex = 85 ; _data[43][85] = 1
 VarIndex = 86 ; _data[43][86] = 1
blocking walls s' First test :
x1 = 43; y1 = 86; x2 = 43; y2 = 87
_ConstAxe = 43 ; startIndex = 86 ; EndIndex = 87 ; Conditon = 1
after Revision ^_^
startIndex = 86 ; EndIndex = 87
 VarIndex = 86 ; _data[43][86] = 1
 VarIndex = 87 ; _data[43][87] = 1
blocking walls s' First test :
x1 = 43; y1 = 87; x2 = 43; y2 = 88
_ConstAxe = 43 ; startIndex = 87 ; EndIndex = 88 ; Conditon = 1
after Revision ^_^
startIndex = 87 ; EndIndex = 88
 VarIndex = 87 ; _data[43][87] = 1
 VarIndex = 88 ; _data[43][88] = 1
blocking walls s' First test :
x1 = 43; y1 = 88; x2 = 43; y2 = 89
_ConstAxe = 43 ; startIndex = 88 ; EndIndex = 89 ; Conditon = 1
after Revision ^_^
startIndex = 88 ; EndIndex = 89
 VarIndex = 88 ; _data[43][88] = 1
 VarIndex = 89 ; _data[43][89] = 1
blocking walls s' First test :
x1 = 43; y1 = 89; x2 = 43; y2 = 90
_ConstAxe = 43 ; startIndex = 89 ; EndIndex = 90 ; Conditon = 1
after Revision ^_^
startIndex = 89 ; EndIndex = 90
 VarIndex = 89 ; _data[43][89] = 1
 VarIndex = 90 ; _data[43][90] = 1
blocking walls s' First test :
x1 = 43; y1 = 92; x2 = 44; y2 = 92
_ConstAxe = 92 ; startIndex = 43 ; EndIndex = 44 ; Conditon = 0
after Revision ^_^
startIndex = 43 ; EndIndex = 44
 VarIndex = 43 ; _data[43][92] = 1
 VarIndex = 44 ; _data[44][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 93; x2 = 43; y2 = 94
_ConstAxe = 43 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[43][93] = 1
 VarIndex = 94 ; _data[43][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 94; x2 = 43; y2 = 95
_ConstAxe = 43 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[43][94] = 1
 VarIndex = 95 ; _data[43][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 95; x2 = 43; y2 = 96
_ConstAxe = 43 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[43][95] = 1
 VarIndex = 96 ; _data[43][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 96; x2 = 43; y2 = 97
_ConstAxe = 43 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[43][96] = 1
 VarIndex = 97 ; _data[43][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 97; x2 = 43; y2 = 98
_ConstAxe = 43 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[43][97] = 1
 VarIndex = 98 ; _data[43][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 98; x2 = 43; y2 = 99
_ConstAxe = 43 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[43][98] = 1
 VarIndex = 99 ; _data[43][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 43; y1 = 99; x2 = 43; y2 = 100
_ConstAxe = 43 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[43][99] = 1
 VarIndex = 100 ; _data[43][100] = 1
blocking walls s' First test :
x1 = 44; y1 = 89; x2 = 45; y2 = 89
_ConstAxe = 89 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 0
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[44][89] = 1
 VarIndex = 45 ; _data[45][89] = 1
blocking walls s' First test :
x1 = 44; y1 = 92; x2 = 45; y2 = 92
_ConstAxe = 92 ; startIndex = 44 ; EndIndex = 45 ; Conditon = 0
after Revision ^_^
startIndex = 44 ; EndIndex = 45
 VarIndex = 44 ; _data[44][92] = 1
 VarIndex = 45 ; _data[45][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 44; y1 = 93; x2 = 44; y2 = 94
_ConstAxe = 44 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^ 
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[44][93] = 1
 VarIndex = 94 ; _data[44][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 44; y1 = 94; x2 = 44; y2 = 95
_ConstAxe = 44 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[44][94] = 1
 VarIndex = 95 ; _data[44][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 44; y1 = 95; x2 = 44; y2 = 96
_ConstAxe = 44 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[44][95] = 1
 VarIndex = 96 ; _data[44][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 44; y1 = 96; x2 = 44; y2 = 97
_ConstAxe = 44 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[44][96] = 1
 VarIndex = 97 ; _data[44][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 44; y1 = 97; x2 = 44; y2 = 98
_ConstAxe = 44 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^ 
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[44][97] = 1
 VarIndex = 98 ; _data[44][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 44; y1 = 98; x2 = 44; y2 = 99
_ConstAxe = 44 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[44][98] = 1
 VarIndex = 99 ; _data[44][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 44; y1 = 99; x2 = 44; y2 = 100
_ConstAxe = 44 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[44][99] = 1
 VarIndex = 100 ; _data[44][100] = 1
blocking walls s' First test :
x1 = 45; y1 = 89; x2 = 46; y2 = 89
_ConstAxe = 89 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 0
after Revision ^_^
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[45][89] = 1
 VarIndex = 46 ; _data[46][89] = 1
blocking walls s' First test :
x1 = 45; y1 = 92; x2 = 46; y2 = 92
_ConstAxe = 92 ; startIndex = 45 ; EndIndex = 46 ; Conditon = 0
after Revision ^_^ 
startIndex = 45 ; EndIndex = 46
 VarIndex = 45 ; _data[45][92] = 1
 VarIndex = 46 ; _data[46][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 45; y1 = 93; x2 = 45; y2 = 94
_ConstAxe = 45 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[45][93] = 1
 VarIndex = 94 ; _data[45][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 45; y1 = 94; x2 = 45; y2 = 95
_ConstAxe = 45 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[45][94] = 1
 VarIndex = 95 ; _data[45][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 45; y1 = 95; x2 = 45; y2 = 96
_ConstAxe = 45 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[45][95] = 1
 VarIndex = 96 ; _data[45][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 45; y1 = 96; x2 = 45; y2 = 97
_ConstAxe = 45 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[45][96] = 1
 VarIndex = 97 ; _data[45][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 45; y1 = 97; x2 = 45; y2 = 98
_ConstAxe = 45 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[45][97] = 1
 VarIndex = 98 ; _data[45][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 45; y1 = 98; x2 = 45; y2 = 99
_ConstAxe = 45 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[45][98] = 1
 VarIndex = 99 ; _data[45][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 45; y1 = 99; x2 = 45; y2 = 100
_ConstAxe = 45 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[45][99] = 1
 VarIndex = 100 ; _data[45][100] = 1
blocking walls s' First test :
x1 = 46; y1 = 89; x2 = 47; y2 = 89
_ConstAxe = 89 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 0
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[46][89] = 1
 VarIndex = 47 ; _data[47][89] = 1
blocking walls s' First test :
x1 = 46; y1 = 92; x2 = 47; y2 = 92
_ConstAxe = 92 ; startIndex = 46 ; EndIndex = 47 ; Conditon = 0
after Revision ^_^
startIndex = 46 ; EndIndex = 47
 VarIndex = 46 ; _data[46][92] = 1
 VarIndex = 47 ; _data[47][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 46; y1 = 93; x2 = 46; y2 = 94
_ConstAxe = 46 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[46][93] = 1
 VarIndex = 94 ; _data[46][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 46; y1 = 94; x2 = 46; y2 = 95
_ConstAxe = 46 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^ 
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[46][94] = 1
 VarIndex = 95 ; _data[46][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 46; y1 = 95; x2 = 46; y2 = 96
_ConstAxe = 46 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[46][95] = 1
 VarIndex = 96 ; _data[46][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 46; y1 = 96; x2 = 46; y2 = 97
_ConstAxe = 46 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[46][96] = 1
 VarIndex = 97 ; _data[46][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 46; y1 = 97; x2 = 46; y2 = 98
_ConstAxe = 46 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[46][97] = 1
 VarIndex = 98 ; _data[46][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 46; y1 = 98; x2 = 46; y2 = 99
_ConstAxe = 46 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[46][98] = 1
 VarIndex = 99 ; _data[46][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 46; y1 = 99; x2 = 46; y2 = 100
_ConstAxe = 46 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[46][99] = 1
 VarIndex = 100 ; _data[46][100] = 1
blocking walls s' First test :
x1 = 47; y1 = 89; x2 = 48; y2 = 89
_ConstAxe = 89 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 0
after Revision ^_^ 
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[47][89] = 1
 VarIndex = 48 ; _data[48][89] = 1
blocking walls s' First test :
x1 = 47; y1 = 92; x2 = 48; y2 = 92
_ConstAxe = 92 ; startIndex = 47 ; EndIndex = 48 ; Conditon = 0
after Revision ^_^
startIndex = 47 ; EndIndex = 48
 VarIndex = 47 ; _data[47][92] = 1
 VarIndex = 48 ; _data[48][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 47; y1 = 93; x2 = 47; y2 = 94
_ConstAxe = 47 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[47][93] = 1
 VarIndex = 94 ; _data[47][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 47; y1 = 94; x2 = 47; y2 = 95
_ConstAxe = 47 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[47][94] = 1
 VarIndex = 95 ; _data[47][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 47; y1 = 95; x2 = 47; y2 = 96
_ConstAxe = 47 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[47][95] = 1
 VarIndex = 96 ; _data[47][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 47; y1 = 96; x2 = 47; y2 = 97
_ConstAxe = 47 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[47][96] = 1
 VarIndex = 97 ; _data[47][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 47; y1 = 97; x2 = 47; y2 = 98
_ConstAxe = 47 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[47][97] = 1
 VarIndex = 98 ; _data[47][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 47; y1 = 98; x2 = 47; y2 = 99
_ConstAxe = 47 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[47][98] = 1
 VarIndex = 99 ; _data[47][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 47; y1 = 99; x2 = 47; y2 = 100
_ConstAxe = 47 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[47][99] = 1
 VarIndex = 100 ; _data[47][100] = 1
blocking walls s' First test :
x1 = 48; y1 = 89; x2 = 49; y2 = 89
_ConstAxe = 89 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 0
after Revision ^_^ 
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[48][89] = 1
 VarIndex = 49 ; _data[49][89] = 1
blocking walls s' First test :
x1 = 48; y1 = 92; x2 = 49; y2 = 92
_ConstAxe = 92 ; startIndex = 48 ; EndIndex = 49 ; Conditon = 0
after Revision ^_^
startIndex = 48 ; EndIndex = 49
 VarIndex = 48 ; _data[48][92] = 1
 VarIndex = 49 ; _data[49][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 48; y1 = 93; x2 = 48; y2 = 94
_ConstAxe = 48 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^ 
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[48][93] = 1
 VarIndex = 94 ; _data[48][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 48; y1 = 94; x2 = 48; y2 = 95
_ConstAxe = 48 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[48][94] = 1
 VarIndex = 95 ; _data[48][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 48; y1 = 95; x2 = 48; y2 = 96
_ConstAxe = 48 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[48][95] = 1
 VarIndex = 96 ; _data[48][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 48; y1 = 96; x2 = 48; y2 = 97
_ConstAxe = 48 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[48][96] = 1
 VarIndex = 97 ; _data[48][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 48; y1 = 97; x2 = 48; y2 = 98
_ConstAxe = 48 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[48][97] = 1
 VarIndex = 98 ; _data[48][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 48; y1 = 98; x2 = 48; y2 = 99
_ConstAxe = 48 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[48][98] = 1
 VarIndex = 99 ; _data[48][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 48; y1 = 99; x2 = 48; y2 = 100
_ConstAxe = 48 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[48][99] = 1
 VarIndex = 100 ; _data[48][100] = 1
blocking walls s' First test :
x1 = 49; y1 = 89; x2 = 50; y2 = 89
_ConstAxe = 89 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 0
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[49][89] = 1
 VarIndex = 50 ; _data[50][89] = 1
blocking walls s' First test :
x1 = 49; y1 = 92; x2 = 50; y2 = 92
_ConstAxe = 92 ; startIndex = 49 ; EndIndex = 50 ; Conditon = 0
after Revision ^_^
startIndex = 49 ; EndIndex = 50
 VarIndex = 49 ; _data[49][92] = 1
 VarIndex = 50 ; _data[50][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 49; y1 = 93; x2 = 49; y2 = 94
_ConstAxe = 49 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[49][93] = 1
 VarIndex = 94 ; _data[49][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 49; y1 = 94; x2 = 49; y2 = 95
_ConstAxe = 49 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[49][94] = 1
 VarIndex = 95 ; _data[49][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 49; y1 = 95; x2 = 49; y2 = 96
_ConstAxe = 49 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[49][95] = 1
 VarIndex = 96 ; _data[49][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 49; y1 = 96; x2 = 49; y2 = 97
_ConstAxe = 49 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[49][96] = 1
 VarIndex = 97 ; _data[49][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 49; y1 = 97; x2 = 49; y2 = 98
_ConstAxe = 49 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[49][97] = 1
 VarIndex = 98 ; _data[49][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 49; y1 = 98; x2 = 49; y2 = 99
_ConstAxe = 49 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^ 
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[49][98] = 1
 VarIndex = 99 ; _data[49][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 49; y1 = 99; x2 = 49; y2 = 100
_ConstAxe = 49 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[49][99] = 1
 VarIndex = 100 ; _data[49][100] = 1
blocking walls s' First test :
x1 = 50; y1 = 89; x2 = 51; y2 = 89
_ConstAxe = 89 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 0
after Revision ^_^ 
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[50][89] = 1
 VarIndex = 51 ; _data[51][89] = 1
blocking walls s' First test :
x1 = 50; y1 = 92; x2 = 51; y2 = 92
_ConstAxe = 92 ; startIndex = 50 ; EndIndex = 51 ; Conditon = 0
after Revision ^_^
startIndex = 50 ; EndIndex = 51
 VarIndex = 50 ; _data[50][92] = 1
 VarIndex = 51 ; _data[51][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 50; y1 = 93; x2 = 50; y2 = 94
_ConstAxe = 50 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[50][93] = 1
 VarIndex = 94 ; _data[50][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 50; y1 = 94; x2 = 50; y2 = 95
_ConstAxe = 50 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[50][94] = 1
 VarIndex = 95 ; _data[50][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 50; y1 = 95; x2 = 50; y2 = 96
_ConstAxe = 50 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[50][95] = 1
 VarIndex = 96 ; _data[50][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 50; y1 = 96; x2 = 50; y2 = 97
_ConstAxe = 50 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[50][96] = 1
 VarIndex = 97 ; _data[50][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 50; y1 = 97; x2 = 50; y2 = 98
_ConstAxe = 50 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[50][97] = 1
 VarIndex = 98 ; _data[50][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 50; y1 = 98; x2 = 50; y2 = 99
_ConstAxe = 50 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[50][98] = 1
 VarIndex = 99 ; _data[50][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 50; y1 = 99; x2 = 50; y2 = 100
_ConstAxe = 50 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[50][99] = 1
 VarIndex = 100 ; _data[50][100] = 1
blocking walls s' First test :
x1 = 51; y1 = 89; x2 = 52; y2 = 89
_ConstAxe = 89 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 0
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[51][89] = 1
 VarIndex = 52 ; _data[52][89] = 1
blocking walls s' First test :
x1 = 51; y1 = 92; x2 = 52; y2 = 92
_ConstAxe = 92 ; startIndex = 51 ; EndIndex = 52 ; Conditon = 0
after Revision ^_^
startIndex = 51 ; EndIndex = 52
 VarIndex = 51 ; _data[51][92] = 1
 VarIndex = 52 ; _data[52][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 51; y1 = 93; x2 = 51; y2 = 94
_ConstAxe = 51 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[51][93] = 1
 VarIndex = 94 ; _data[51][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 51; y1 = 94; x2 = 51; y2 = 95
_ConstAxe = 51 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[51][94] = 1
 VarIndex = 95 ; _data[51][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 51; y1 = 95; x2 = 51; y2 = 96
_ConstAxe = 51 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[51][95] = 1
 VarIndex = 96 ; _data[51][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 51; y1 = 96; x2 = 51; y2 = 97
_ConstAxe = 51 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^ 
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[51][96] = 1
 VarIndex = 97 ; _data[51][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 51; y1 = 97; x2 = 51; y2 = 98
_ConstAxe = 51 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[51][97] = 1
 VarIndex = 98 ; _data[51][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 51; y1 = 98; x2 = 51; y2 = 99
_ConstAxe = 51 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[51][98] = 1
 VarIndex = 99 ; _data[51][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 51; y1 = 99; x2 = 51; y2 = 100
_ConstAxe = 51 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^ 
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[51][99] = 1
 VarIndex = 100 ; _data[51][100] = 1
blocking walls s' First test :
x1 = 52; y1 = 89; x2 = 53; y2 = 89
_ConstAxe = 89 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 0
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[52][89] = 1
 VarIndex = 53 ; _data[53][89] = 1
blocking walls s' First test :
x1 = 52; y1 = 92; x2 = 53; y2 = 92
_ConstAxe = 92 ; startIndex = 52 ; EndIndex = 53 ; Conditon = 0
after Revision ^_^
startIndex = 52 ; EndIndex = 53
 VarIndex = 52 ; _data[52][92] = 1
 VarIndex = 53 ; _data[53][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 52; y1 = 93; x2 = 52; y2 = 94
_ConstAxe = 52 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[52][93] = 1
 VarIndex = 94 ; _data[52][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 52; y1 = 94; x2 = 52; y2 = 95
_ConstAxe = 52 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[52][94] = 1
 VarIndex = 95 ; _data[52][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 52; y1 = 95; x2 = 52; y2 = 96
_ConstAxe = 52 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^ 
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[52][95] = 1
 VarIndex = 96 ; _data[52][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 52; y1 = 96; x2 = 52; y2 = 97
_ConstAxe = 52 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[52][96] = 1
 VarIndex = 97 ; _data[52][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 52; y1 = 97; x2 = 52; y2 = 98
_ConstAxe = 52 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[52][97] = 1
 VarIndex = 98 ; _data[52][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 52; y1 = 98; x2 = 52; y2 = 99
_ConstAxe = 52 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[52][98] = 1
 VarIndex = 99 ; _data[52][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 52; y1 = 99; x2 = 52; y2 = 100
_ConstAxe = 52 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[52][99] = 1
 VarIndex = 100 ; _data[52][100] = 1
blocking walls s' First test :
x1 = 53; y1 = 89; x2 = 54; y2 = 89
_ConstAxe = 89 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 0
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[53][89] = 1
 VarIndex = 54 ; _data[54][89] = 1
blocking walls s' First test :
x1 = 53; y1 = 92; x2 = 54; y2 = 92
_ConstAxe = 92 ; startIndex = 53 ; EndIndex = 54 ; Conditon = 0
after Revision ^_^
startIndex = 53 ; EndIndex = 54
 VarIndex = 53 ; _data[53][92] = 1
 VarIndex = 54 ; _data[54][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 53; y1 = 93; x2 = 53; y2 = 94
_ConstAxe = 53 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[53][93] = 1
 VarIndex = 94 ; _data[53][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 53; y1 = 94; x2 = 53; y2 = 95
_ConstAxe = 53 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[53][94] = 1
 VarIndex = 95 ; _data[53][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 53; y1 = 95; x2 = 53; y2 = 96
_ConstAxe = 53 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[53][95] = 1
 VarIndex = 96 ; _data[53][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 53; y1 = 96; x2 = 53; y2 = 97
_ConstAxe = 53 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[53][96] = 1
 VarIndex = 97 ; _data[53][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 53; y1 = 97; x2 = 53; y2 = 98
_ConstAxe = 53 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^ 
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[53][97] = 1
 VarIndex = 98 ; _data[53][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 53; y1 = 98; x2 = 53; y2 = 99
_ConstAxe = 53 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[53][98] = 1
 VarIndex = 99 ; _data[53][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 53; y1 = 99; x2 = 53; y2 = 100
_ConstAxe = 53 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[53][99] = 1
 VarIndex = 100 ; _data[53][100] = 1
blocking walls s' First test :
x1 = 54; y1 = 89; x2 = 55; y2 = 89
_ConstAxe = 89 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 0
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[54][89] = 1
 VarIndex = 55 ; _data[55][89] = 1
blocking walls s' First test :
x1 = 54; y1 = 92; x2 = 55; y2 = 92
_ConstAxe = 92 ; startIndex = 54 ; EndIndex = 55 ; Conditon = 0
after Revision ^_^
startIndex = 54 ; EndIndex = 55
 VarIndex = 54 ; _data[54][92] = 1
 VarIndex = 55 ; _data[55][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 54; y1 = 93; x2 = 54; y2 = 94
_ConstAxe = 54 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[54][93] = 1
 VarIndex = 94 ; _data[54][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 54; y1 = 94; x2 = 54; y2 = 95
_ConstAxe = 54 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[54][94] = 1
 VarIndex = 95 ; _data[54][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 54; y1 = 95; x2 = 54; y2 = 96
_ConstAxe = 54 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[54][95] = 1
 VarIndex = 96 ; _data[54][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 54; y1 = 96; x2 = 54; y2 = 97
_ConstAxe = 54 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[54][96] = 1
 VarIndex = 97 ; _data[54][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 54; y1 = 97; x2 = 54; y2 = 98
_ConstAxe = 54 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[54][97] = 1
 VarIndex = 98 ; _data[54][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 54; y1 = 98; x2 = 54; y2 = 99
_ConstAxe = 54 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[54][98] = 1
 VarIndex = 99 ; _data[54][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 54; y1 = 99; x2 = 54; y2 = 100
_ConstAxe = 54 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[54][99] = 1
 VarIndex = 100 ; _data[54][100] = 1
blocking walls s' First test :
x1 = 55; y1 = 89; x2 = 56; y2 = 89
_ConstAxe = 89 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 0
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[55][89] = 1
 VarIndex = 56 ; _data[56][89] = 1
blocking walls s' First test :
x1 = 55; y1 = 92; x2 = 56; y2 = 92
_ConstAxe = 92 ; startIndex = 55 ; EndIndex = 56 ; Conditon = 0
after Revision ^_^
startIndex = 55 ; EndIndex = 56
 VarIndex = 55 ; _data[55][92] = 1
 VarIndex = 56 ; _data[56][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 55; y1 = 93; x2 = 55; y2 = 94
_ConstAxe = 55 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[55][93] = 1
 VarIndex = 94 ; _data[55][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 55; y1 = 94; x2 = 55; y2 = 95
_ConstAxe = 55 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[55][94] = 1
 VarIndex = 95 ; _data[55][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 55; y1 = 95; x2 = 55; y2 = 96
_ConstAxe = 55 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[55][95] = 1
 VarIndex = 96 ; _data[55][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 55; y1 = 96; x2 = 55; y2 = 97
_ConstAxe = 55 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[55][96] = 1
 VarIndex = 97 ; _data[55][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 55; y1 = 97; x2 = 55; y2 = 98
_ConstAxe = 55 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[55][97] = 1
 VarIndex = 98 ; _data[55][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 55; y1 = 98; x2 = 55; y2 = 99
_ConstAxe = 55 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[55][98] = 1
 VarIndex = 99 ; _data[55][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 55; y1 = 99; x2 = 55; y2 = 100
_ConstAxe = 55 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[55][99] = 1
 VarIndex = 100 ; _data[55][100] = 1
blocking walls s' First test :
x1 = 56; y1 = 79; x2 = 56; y2 = 80
_ConstAxe = 56 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[56][79] = 1
 VarIndex = 80 ; _data[56][80] = 1
blocking walls s' First test :
x1 = 56; y1 = 80; x2 = 56; y2 = 81
_ConstAxe = 56 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[56][80] = 1
 VarIndex = 81 ; _data[56][81] = 1
blocking walls s' First test :
x1 = 56; y1 = 81; x2 = 56; y2 = 82
_ConstAxe = 56 ; startIndex = 81 ; EndIndex = 82 ; Conditon = 1
after Revision ^_^ 
startIndex = 81 ; EndIndex = 82
 VarIndex = 81 ; _data[56][81] = 1
 VarIndex = 82 ; _data[56][82] = 1
blocking walls s' First test :
x1 = 56; y1 = 82; x2 = 56; y2 = 83
_ConstAxe = 56 ; startIndex = 82 ; EndIndex = 83 ; Conditon = 1
after Revision ^_^
startIndex = 82 ; EndIndex = 83
 VarIndex = 82 ; _data[56][82] = 1
 VarIndex = 83 ; _data[56][83] = 1
blocking walls s' First test :
x1 = 56; y1 = 83; x2 = 56; y2 = 84
_ConstAxe = 56 ; startIndex = 83 ; EndIndex = 84 ; Conditon = 1
after Revision ^_^
startIndex = 83 ; EndIndex = 84
 VarIndex = 83 ; _data[56][83] = 1
 VarIndex = 84 ; _data[56][84] = 1
blocking walls s' First test :
x1 = 56; y1 = 84; x2 = 56; y2 = 85
_ConstAxe = 56 ; startIndex = 84 ; EndIndex = 85 ; Conditon = 1
after Revision ^_^
startIndex = 84 ; EndIndex = 85
 VarIndex = 84 ; _data[56][84] = 1
 VarIndex = 85 ; _data[56][85] = 1
blocking walls s' First test :
x1 = 56; y1 = 85; x2 = 56; y2 = 86
_ConstAxe = 56 ; startIndex = 85 ; EndIndex = 86 ; Conditon = 1
after Revision ^_^
startIndex = 85 ; EndIndex = 86
 VarIndex = 85 ; _data[56][85] = 1
 VarIndex = 86 ; _data[56][86] = 1
blocking walls s' First test :
x1 = 56; y1 = 86; x2 = 56; y2 = 87
_ConstAxe = 56 ; startIndex = 86 ; EndIndex = 87 ; Conditon = 1
after Revision ^_^
startIndex = 86 ; EndIndex = 87
 VarIndex = 86 ; _data[56][86] = 1
 VarIndex = 87 ; _data[56][87] = 1
blocking walls s' First test :
x1 = 56; y1 = 87; x2 = 56; y2 = 88
_ConstAxe = 56 ; startIndex = 87 ; EndIndex = 88 ; Conditon = 1
after Revision ^_^
startIndex = 87 ; EndIndex = 88
 VarIndex = 87 ; _data[56][87] = 1
 VarIndex = 88 ; _data[56][88] = 1
blocking walls s' First test :
x1 = 56; y1 = 88; x2 = 56; y2 = 89
_ConstAxe = 56 ; startIndex = 88 ; EndIndex = 89 ; Conditon = 1
after Revision ^_^ 
startIndex = 88 ; EndIndex = 89
 VarIndex = 88 ; _data[56][88] = 1
 VarIndex = 89 ; _data[56][89] = 1
blocking walls s' First test :
x1 = 56; y1 = 89; x2 = 56; y2 = 90
_ConstAxe = 56 ; startIndex = 89 ; EndIndex = 90 ; Conditon = 1
after Revision ^_^
startIndex = 89 ; EndIndex = 90
 VarIndex = 89 ; _data[56][89] = 1
 VarIndex = 90 ; _data[56][90] = 1
blocking walls s' First test :
x1 = 56; y1 = 92; x2 = 57; y2 = 92
_ConstAxe = 92 ; startIndex = 56 ; EndIndex = 57 ; Conditon = 0
after Revision ^_^
startIndex = 56 ; EndIndex = 57
 VarIndex = 56 ; _data[56][92] = 1
 VarIndex = 57 ; _data[57][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 56; y1 = 93; x2 = 56; y2 = 94
_ConstAxe = 56 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[56][93] = 1
 VarIndex = 94 ; _data[56][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 56; y1 = 94; x2 = 56; y2 = 95
_ConstAxe = 56 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^ 
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[56][94] = 1
 VarIndex = 95 ; _data[56][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 56; y1 = 95; x2 = 56; y2 = 96
_ConstAxe = 56 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[56][95] = 1
 VarIndex = 96 ; _data[56][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 56; y1 = 96; x2 = 56; y2 = 97
_ConstAxe = 56 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[56][96] = 1
 VarIndex = 97 ; _data[56][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 56; y1 = 97; x2 = 56; y2 = 98
_ConstAxe = 56 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[56][97] = 1
 VarIndex = 98 ; _data[56][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 56; y1 = 98; x2 = 56; y2 = 99
_ConstAxe = 56 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[56][98] = 1
 VarIndex = 99 ; _data[56][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 56; y1 = 99; x2 = 56; y2 = 100
_ConstAxe = 56 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[56][99] = 1
 VarIndex = 100 ; _data[56][100] = 1
blocking walls s' First test :
x1 = 57; y1 = 79; x2 = 58; y2 = 79
_ConstAxe = 79 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 0
after Revision ^_^
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[57][79] = 1
 VarIndex = 58 ; _data[58][79] = 1
blocking walls s' First test :
x1 = 57; y1 = 92; x2 = 58; y2 = 92
_ConstAxe = 92 ; startIndex = 57 ; EndIndex = 58 ; Conditon = 0
after Revision ^_^ 
startIndex = 57 ; EndIndex = 58
 VarIndex = 57 ; _data[57][92] = 1
 VarIndex = 58 ; _data[58][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 57; y1 = 93; x2 = 57; y2 = 94
_ConstAxe = 57 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[57][93] = 1
 VarIndex = 94 ; _data[57][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 57; y1 = 94; x2 = 57; y2 = 95
_ConstAxe = 57 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[57][94] = 1
 VarIndex = 95 ; _data[57][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 57; y1 = 95; x2 = 57; y2 = 96
_ConstAxe = 57 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[57][95] = 1
 VarIndex = 96 ; _data[57][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 57; y1 = 96; x2 = 57; y2 = 97
_ConstAxe = 57 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^ 
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[57][96] = 1
 VarIndex = 97 ; _data[57][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 57; y1 = 97; x2 = 57; y2 = 98
_ConstAxe = 57 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[57][97] = 1
 VarIndex = 98 ; _data[57][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 57; y1 = 98; x2 = 57; y2 = 99
_ConstAxe = 57 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[57][98] = 1
 VarIndex = 99 ; _data[57][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 57; y1 = 99; x2 = 57; y2 = 100
_ConstAxe = 57 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[57][99] = 1
 VarIndex = 100 ; _data[57][100] = 1
blocking walls s' First test :
x1 = 58; y1 = 79; x2 = 58; y2 = 80
_ConstAxe = 58 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[58][79] = 1
 VarIndex = 80 ; _data[58][80] = 1
blocking walls s' First test :
x1 = 58; y1 = 92; x2 = 59; y2 = 92
_ConstAxe = 92 ; startIndex = 58 ; EndIndex = 59 ; Conditon = 0
after Revision ^_^
startIndex = 58 ; EndIndex = 59
 VarIndex = 58 ; _data[58][92] = 1
 VarIndex = 59 ; _data[59][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 58; y1 = 93; x2 = 58; y2 = 94
_ConstAxe = 58 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[58][93] = 1
 VarIndex = 94 ; _data[58][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 58; y1 = 94; x2 = 58; y2 = 95
_ConstAxe = 58 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[58][94] = 1
 VarIndex = 95 ; _data[58][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 58; y1 = 95; x2 = 58; y2 = 96
_ConstAxe = 58 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^ 
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[58][95] = 1
 VarIndex = 96 ; _data[58][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 58; y1 = 96; x2 = 58; y2 = 97
_ConstAxe = 58 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[58][96] = 1
 VarIndex = 97 ; _data[58][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 58; y1 = 97; x2 = 58; y2 = 98
_ConstAxe = 58 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[58][97] = 1
 VarIndex = 98 ; _data[58][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 58; y1 = 98; x2 = 58; y2 = 99
_ConstAxe = 58 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[58][98] = 1
 VarIndex = 99 ; _data[58][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 58; y1 = 99; x2 = 58; y2 = 100
_ConstAxe = 58 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[58][99] = 1
 VarIndex = 100 ; _data[58][100] = 1
blocking walls s' First test :
x1 = 59; y1 = 92; x2 = 60; y2 = 92
_ConstAxe = 92 ; startIndex = 59 ; EndIndex = 60 ; Conditon = 0
after Revision ^_^
startIndex = 59 ; EndIndex = 60
 VarIndex = 59 ; _data[59][92] = 1
 VarIndex = 60 ; _data[60][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 59; y1 = 93; x2 = 59; y2 = 94
_ConstAxe = 59 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[59][93] = 1
 VarIndex = 94 ; _data[59][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 59; y1 = 94; x2 = 59; y2 = 95
_ConstAxe = 59 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[59][94] = 1
 VarIndex = 95 ; _data[59][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 59; y1 = 95; x2 = 59; y2 = 96
_ConstAxe = 59 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[59][95] = 1
 VarIndex = 96 ; _data[59][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 59; y1 = 96; x2 = 59; y2 = 97
_ConstAxe = 59 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[59][96] = 1
 VarIndex = 97 ; _data[59][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 59; y1 = 97; x2 = 59; y2 = 98
_ConstAxe = 59 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[59][97] = 1
 VarIndex = 98 ; _data[59][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 59; y1 = 98; x2 = 59; y2 = 99
_ConstAxe = 59 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[59][98] = 1
 VarIndex = 99 ; _data[59][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 59; y1 = 99; x2 = 59; y2 = 100
_ConstAxe = 59 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[59][99] = 1
 VarIndex = 100 ; _data[59][100] = 1
blocking walls s' First test :
x1 = 60; y1 = 79; x2 = 60; y2 = 80
_ConstAxe = 60 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[60][79] = 1
 VarIndex = 80 ; _data[60][80] = 1
blocking walls s' First test :
x1 = 60; y1 = 92; x2 = 61; y2 = 92
_ConstAxe = 92 ; startIndex = 60 ; EndIndex = 61 ; Conditon = 0
after Revision ^_^
startIndex = 60 ; EndIndex = 61
 VarIndex = 60 ; _data[60][92] = 1
 VarIndex = 61 ; _data[61][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 60; y1 = 93; x2 = 60; y2 = 94
_ConstAxe = 60 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[60][93] = 1
 VarIndex = 94 ; _data[60][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 60; y1 = 94; x2 = 60; y2 = 95
_ConstAxe = 60 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^ 
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[60][94] = 1
 VarIndex = 95 ; _data[60][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 60; y1 = 95; x2 = 60; y2 = 96
_ConstAxe = 60 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[60][95] = 1
 VarIndex = 96 ; _data[60][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 60; y1 = 96; x2 = 60; y2 = 97
_ConstAxe = 60 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[60][96] = 1
 VarIndex = 97 ; _data[60][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 60; y1 = 97; x2 = 60; y2 = 98
_ConstAxe = 60 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[60][97] = 1
 VarIndex = 98 ; _data[60][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 60; y1 = 98; x2 = 60; y2 = 99
_ConstAxe = 60 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[60][98] = 1
 VarIndex = 99 ; _data[60][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 60; y1 = 99; x2 = 60; y2 = 100
_ConstAxe = 60 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[60][99] = 1
 VarIndex = 100 ; _data[60][100] = 1
blocking walls s' First test :
x1 = 61; y1 = 79; x2 = 62; y2 = 79
_ConstAxe = 79 ; startIndex = 61 ; EndIndex = 62 ; Conditon = 0
after Revision ^_^
startIndex = 61 ; EndIndex = 62
 VarIndex = 61 ; _data[61][79] = 1
 VarIndex = 62 ; _data[62][79] = 1
blocking walls s' First test :
x1 = 61; y1 = 92; x2 = 62; y2 = 92
_ConstAxe = 92 ; startIndex = 61 ; EndIndex = 62 ; Conditon = 0
after Revision ^_^
startIndex = 61 ; EndIndex = 62
 VarIndex = 61 ; _data[61][92] = 1
 VarIndex = 62 ; _data[62][92] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 61; y1 = 93; x2 = 61; y2 = 94
_ConstAxe = 61 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[61][93] = 1
 VarIndex = 94 ; _data[61][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 61; y1 = 94; x2 = 61; y2 = 95
_ConstAxe = 61 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[61][94] = 1
 VarIndex = 95 ; _data[61][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 61; y1 = 95; x2 = 61; y2 = 96
_ConstAxe = 61 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[61][95] = 1
 VarIndex = 96 ; _data[61][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 61; y1 = 96; x2 = 61; y2 = 97
_ConstAxe = 61 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[61][96] = 1
 VarIndex = 97 ; _data[61][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 61; y1 = 97; x2 = 61; y2 = 98
_ConstAxe = 61 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[61][97] = 1
 VarIndex = 98 ; _data[61][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 61; y1 = 98; x2 = 61; y2 = 99
_ConstAxe = 61 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[61][98] = 1
 VarIndex = 99 ; _data[61][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 61; y1 = 99; x2 = 61; y2 = 100
_ConstAxe = 61 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[61][99] = 1
 VarIndex = 100 ; _data[61][100] = 1
blocking walls s' First test :
x1 = 62; y1 = 79; x2 = 62; y2 = 80
_ConstAxe = 62 ; startIndex = 79 ; EndIndex = 80 ; Conditon = 1
after Revision ^_^
startIndex = 79 ; EndIndex = 80
 VarIndex = 79 ; _data[62][79] = 1
 VarIndex = 80 ; _data[62][80] = 1
blocking walls s' First test :
x1 = 62; y1 = 80; x2 = 62; y2 = 81
_ConstAxe = 62 ; startIndex = 80 ; EndIndex = 81 ; Conditon = 1
after Revision ^_^
startIndex = 80 ; EndIndex = 81
 VarIndex = 80 ; _data[62][80] = 1
 VarIndex = 81 ; _data[62][81] = 1
blocking walls s' First test :
x1 = 62; y1 = 81; x2 = 62; y2 = 82
_ConstAxe = 62 ; startIndex = 81 ; EndIndex = 82 ; Conditon = 1
after Revision ^_^ 
startIndex = 81 ; EndIndex = 82
 VarIndex = 81 ; _data[62][81] = 1
 VarIndex = 82 ; _data[62][82] = 1
blocking walls s' First test :
x1 = 62; y1 = 82; x2 = 62; y2 = 83
_ConstAxe = 62 ; startIndex = 82 ; EndIndex = 83 ; Conditon = 1
after Revision ^_^
startIndex = 82 ; EndIndex = 83
 VarIndex = 82 ; _data[62][82] = 1
 VarIndex = 83 ; _data[62][83] = 1
blocking walls s' First test :
x1 = 62; y1 = 83; x2 = 62; y2 = 84
_ConstAxe = 62 ; startIndex = 83 ; EndIndex = 84 ; Conditon = 1
after Revision ^_^
startIndex = 83 ; EndIndex = 84
 VarIndex = 83 ; _data[62][83] = 1
 VarIndex = 84 ; _data[62][84] = 1
blocking walls s' First test :
x1 = 62; y1 = 84; x2 = 62; y2 = 85
_ConstAxe = 62 ; startIndex = 84 ; EndIndex = 85 ; Conditon = 1
after Revision ^_^
startIndex = 84 ; EndIndex = 85
 VarIndex = 84 ; _data[62][84] = 1
 VarIndex = 85 ; _data[62][85] = 1
blocking walls s' First test :
x1 = 62; y1 = 85; x2 = 62; y2 = 86
_ConstAxe = 62 ; startIndex = 85 ; EndIndex = 86 ; Conditon = 1
after Revision ^_^ 
startIndex = 85 ; EndIndex = 86
 VarIndex = 85 ; _data[62][85] = 1
 VarIndex = 86 ; _data[62][86] = 1
blocking walls s' First test :
x1 = 62; y1 = 86; x2 = 62; y2 = 87
_ConstAxe = 62 ; startIndex = 86 ; EndIndex = 87 ; Conditon = 1
after Revision ^_^
startIndex = 86 ; EndIndex = 87
 VarIndex = 86 ; _data[62][86] = 1
 VarIndex = 87 ; _data[62][87] = 1
blocking walls s' First test :
x1 = 62; y1 = 87; x2 = 62; y2 = 88
_ConstAxe = 62 ; startIndex = 87 ; EndIndex = 88 ; Conditon = 1
after Revision ^_^
startIndex = 87 ; EndIndex = 88
 VarIndex = 87 ; _data[62][87] = 1
 VarIndex = 88 ; _data[62][88] = 1
blocking walls s' First test :
x1 = 62; y1 = 88; x2 = 62; y2 = 89
_ConstAxe = 62 ; startIndex = 88 ; EndIndex = 89 ; Conditon = 1
after Revision ^_^
startIndex = 88 ; EndIndex = 89
 VarIndex = 88 ; _data[62][88] = 1
 VarIndex = 89 ; _data[62][89] = 1
blocking walls s' First test :
x1 = 62; y1 = 89; x2 = 62; y2 = 90
_ConstAxe = 62 ; startIndex = 89 ; EndIndex = 90 ; Conditon = 1
after Revision ^_^
startIndex = 89 ; EndIndex = 90
 VarIndex = 89 ; _data[62][89] = 1
 VarIndex = 90 ; _data[62][90] = 1
blocking walls s' First test :
x1 = 62; y1 = 90; x2 = 62; y2 = 91
_ConstAxe = 62 ; startIndex = 90 ; EndIndex = 91 ; Conditon = 1
after Revision ^_^
startIndex = 90 ; EndIndex = 91
 VarIndex = 90 ; _data[62][90] = 1
 VarIndex = 91 ; _data[62][91] = 1
blocking walls s' First test :
x1 = 62; y1 = 91; x2 = 62; y2 = 92
_ConstAxe = 62 ; startIndex = 91 ; EndIndex = 92 ; Conditon = 1
after Revision ^_^
startIndex = 91 ; EndIndex = 92
 VarIndex = 91 ; _data[62][91] = 1
 VarIndex = 92 ; _data[62][92] = 1
blocking walls s' First test :
x1 = 62; y1 = 92; x2 = 62; y2 = 93
_ConstAxe = 62 ; startIndex = 92 ; EndIndex = 93 ; Conditon = 1
after Revision ^_^
startIndex = 92 ; EndIndex = 93
 VarIndex = 92 ; _data[62][92] = 1
 VarIndex = 93 ; _data[62][93] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 62; y1 = 93; x2 = 62; y2 = 94
_ConstAxe = 62 ; startIndex = 93 ; EndIndex = 94 ; Conditon = 1
after Revision ^_^
startIndex = 93 ; EndIndex = 94
 VarIndex = 93 ; _data[62][93] = 1
 VarIndex = 94 ; _data[62][94] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 62; y1 = 94; x2 = 62; y2 = 95
_ConstAxe = 62 ; startIndex = 94 ; EndIndex = 95 ; Conditon = 1
after Revision ^_^
startIndex = 94 ; EndIndex = 95
 VarIndex = 94 ; _data[62][94] = 1
 VarIndex = 95 ; _data[62][95] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 62; y1 = 95; x2 = 62; y2 = 96
_ConstAxe = 62 ; startIndex = 95 ; EndIndex = 96 ; Conditon = 1
after Revision ^_^
startIndex = 95 ; EndIndex = 96
 VarIndex = 95 ; _data[62][95] = 1
 VarIndex = 96 ; _data[62][96] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 62; y1 = 96; x2 = 62; y2 = 97
_ConstAxe = 62 ; startIndex = 96 ; EndIndex = 97 ; Conditon = 1
after Revision ^_^
startIndex = 96 ; EndIndex = 97
 VarIndex = 96 ; _data[62][96] = 1
 VarIndex = 97 ; _data[62][97] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^ 
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 62; y1 = 97; x2 = 62; y2 = 98
_ConstAxe = 62 ; startIndex = 97 ; EndIndex = 98 ; Conditon = 1
after Revision ^_^
startIndex = 97 ; EndIndex = 98
 VarIndex = 97 ; _data[62][97] = 1
 VarIndex = 98 ; _data[62][98] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 62; y1 = 98; x2 = 62; y2 = 99
_ConstAxe = 62 ; startIndex = 98 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 98 ; EndIndex = 99
 VarIndex = 98 ; _data[62][98] = 1
 VarIndex = 99 ; _data[62][99] = 1
blocking walls s' First test :
x1 = 0; y1 = 0; x2 = 0; y2 = 0
_ConstAxe = 0 ; startIndex = 0 ; EndIndex = 0 ; Conditon = 1
after Revision ^_^
startIndex = 0 ; EndIndex = 0
 VarIndex = 0 ; _data[0][0] = 1
blocking walls s' First test :
x1 = 62; y1 = 99; x2 = 62; y2 = 100
_ConstAxe = 62 ; startIndex = 99 ; EndIndex = 100 ; Conditon = 1
after Revision ^_^
startIndex = 99 ; EndIndex = 100
 VarIndex = 99 ; _data[62][99] = 1
 VarIndex = 100 ; _data[62][100] = 1
le chasseur se trouve a la position : ( 10 , 8 ) ; reellement : ( 100 , 80 )
X = 10 ; Y = 8
le modele du Gardien n(1) = Lezard
pour le 2eme modele blade , tmpModel devient :  Blade
PS C:\Users\Riados\Documents\cstrike game c++ project> 