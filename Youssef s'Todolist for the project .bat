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
<current step> 

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


<Doing>
----------------------------------------------------------

step *** 

make modularity on the labyrinthe.cc 






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
blocking walls s' First test :
x1 = 3; y1 = 40; x2 = 3; y2 = 99
_ConstAxe = 3 ; startIndex = 40 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 40 ; EndIndex = 99
 VarIndex = 40 ; _data[3][40] = 1
 VarIndex = 41 ; _data[3][41] = 1
 VarIndex = 42 ; _data[3][42] = 1
 VarIndex = 43 ; _data[3][43] = 1
 VarIndex = 44 ; _data[3][44] = 1
 VarIndex = 45 ; _data[3][45] = 1
 VarIndex = 46 ; _data[3][46] = 1
 VarIndex = 47 ; _data[3][47] = 1
 VarIndex = 48 ; _data[3][48] = 1
 VarIndex = 49 ; _data[3][49] = 1
 VarIndex = 50 ; _data[3][50] = 1
 VarIndex = 51 ; _data[3][51] = 1
 VarIndex = 52 ; _data[3][52] = 1
 VarIndex = 53 ; _data[3][53] = 1
 VarIndex = 54 ; _data[3][54] = 1
 VarIndex = 55 ; _data[3][55] = 1
 VarIndex = 56 ; _data[3][56] = 1
 VarIndex = 57 ; _data[3][57] = 1
 VarIndex = 58 ; _data[3][58] = 1
 VarIndex = 59 ; _data[3][59] = 1
 VarIndex = 60 ; _data[3][60] = 1
 VarIndex = 61 ; _data[3][61] = 1
 VarIndex = 62 ; _data[3][62] = 1
 VarIndex = 63 ; _data[3][63] = 1
 VarIndex = 64 ; _data[3][64] = 1
 VarIndex = 65 ; _data[3][65] = 1
 VarIndex = 66 ; _data[3][66] = 1
 VarIndex = 67 ; _data[3][67] = 1
 VarIndex = 68 ; _data[3][68] = 1
 VarIndex = 69 ; _data[3][69] = 1
 VarIndex = 70 ; _data[3][70] = 1
 VarIndex = 71 ; _data[3][71] = 1
 VarIndex = 72 ; _data[3][72] = 1
 VarIndex = 73 ; _data[3][73] = 1
 VarIndex = 74 ; _data[3][74] = 1
 VarIndex = 75 ; _data[3][75] = 1
 VarIndex = 76 ; _data[3][76] = 1
 VarIndex = 77 ; _data[3][77] = 1
 VarIndex = 78 ; _data[3][78] = 1
 VarIndex = 79 ; _data[3][79] = 1
 VarIndex = 80 ; _data[3][80] = 1
 VarIndex = 81 ; _data[3][81] = 1
 VarIndex = 82 ; _data[3][82] = 1
 VarIndex = 83 ; _data[3][83] = 1
 VarIndex = 84 ; _data[3][84] = 1
 VarIndex = 85 ; _data[3][85] = 1
 VarIndex = 86 ; _data[3][86] = 1
 VarIndex = 87 ; _data[3][87] = 1
 VarIndex = 88 ; _data[3][88] = 1
 VarIndex = 89 ; _data[3][89] = 1
 VarIndex = 90 ; _data[3][90] = 1
 VarIndex = 91 ; _data[3][91] = 1
 VarIndex = 92 ; _data[3][92] = 1
 VarIndex = 93 ; _data[3][93] = 1
 VarIndex = 94 ; _data[3][94] = 1
 VarIndex = 95 ; _data[3][95] = 1
 VarIndex = 96 ; _data[3][96] = 1
 VarIndex = 97 ; _data[3][97] = 1
 VarIndex = 98 ; _data[3][98] = 1
 VarIndex = 99 ; _data[3][99] = 1
blocking walls s' First test :
x1 = 5; y1 = 20; x2 = 5; y2 = 60
_ConstAxe = 5 ; startIndex = 20 ; EndIndex = 60 ; Conditon = 1
after Revision ^_^
startIndex = 20 ; EndIndex = 60
 VarIndex = 20 ; _data[5][20] = 1
 VarIndex = 21 ; _data[5][21] = 1
 VarIndex = 22 ; _data[5][22] = 1
 VarIndex = 23 ; _data[5][23] = 1
 VarIndex = 24 ; _data[5][24] = 1
 VarIndex = 25 ; _data[5][25] = 1
 VarIndex = 26 ; _data[5][26] = 1
 VarIndex = 27 ; _data[5][27] = 1
 VarIndex = 28 ; _data[5][28] = 1
 VarIndex = 29 ; _data[5][29] = 1
 VarIndex = 30 ; _data[5][30] = 1
 VarIndex = 31 ; _data[5][31] = 1
 VarIndex = 32 ; _data[5][32] = 1
 VarIndex = 33 ; _data[5][33] = 1
 VarIndex = 34 ; _data[5][34] = 1
 VarIndex = 35 ; _data[5][35] = 1
 VarIndex = 36 ; _data[5][36] = 1
 VarIndex = 37 ; _data[5][37] = 1
 VarIndex = 38 ; _data[5][38] = 1
 VarIndex = 39 ; _data[5][39] = 1
 VarIndex = 40 ; _data[5][40] = 1
 VarIndex = 41 ; _data[5][41] = 1
 VarIndex = 42 ; _data[5][42] = 1
 VarIndex = 43 ; _data[5][43] = 1
 VarIndex = 44 ; _data[5][44] = 1
 VarIndex = 45 ; _data[5][45] = 1
 VarIndex = 46 ; _data[5][46] = 1
 VarIndex = 47 ; _data[5][47] = 1
 VarIndex = 48 ; _data[5][48] = 1
 VarIndex = 49 ; _data[5][49] = 1
 VarIndex = 50 ; _data[5][50] = 1
 VarIndex = 51 ; _data[5][51] = 1
 VarIndex = 52 ; _data[5][52] = 1
 VarIndex = 53 ; _data[5][53] = 1
 VarIndex = 54 ; _data[5][54] = 1
 VarIndex = 55 ; _data[5][55] = 1
 VarIndex = 56 ; _data[5][56] = 1
 VarIndex = 57 ; _data[5][57] = 1
 VarIndex = 58 ; _data[5][58] = 1
 VarIndex = 59 ; _data[5][59] = 1
 VarIndex = 60 ; _data[5][60] = 1
blocking walls s' First test :
x1 = 5; y1 = 60; x2 = 5; y2 = 99
_ConstAxe = 5 ; startIndex = 60 ; EndIndex = 99 ; Conditon = 1
after Revision ^_^
startIndex = 60 ; EndIndex = 99
 VarIndex = 60 ; _data[5][60] = 1
 VarIndex = 61 ; _data[5][61] = 1
 VarIndex = 62 ; _data[5][62] = 1
 VarIndex = 63 ; _data[5][63] = 1
 VarIndex = 64 ; _data[5][64] = 1
 VarIndex = 65 ; _data[5][65] = 1
 VarIndex = 66 ; _data[5][66] = 1
 VarIndex = 67 ; _data[5][67] = 1
 VarIndex = 68 ; _data[5][68] = 1
 VarIndex = 69 ; _data[5][69] = 1
 VarIndex = 70 ; _data[5][70] = 1
 VarIndex = 71 ; _data[5][71] = 1
 VarIndex = 72 ; _data[5][72] = 1
 VarIndex = 73 ; _data[5][73] = 1
 VarIndex = 74 ; _data[5][74] = 1
 VarIndex = 75 ; _data[5][75] = 1
 VarIndex = 76 ; _data[5][76] = 1
 VarIndex = 77 ; _data[5][77] = 1
 VarIndex = 78 ; _data[5][78] = 1
 VarIndex = 79 ; _data[5][79] = 1
 VarIndex = 80 ; _data[5][80] = 1
 VarIndex = 81 ; _data[5][81] = 1
 VarIndex = 82 ; _data[5][82] = 1
 VarIndex = 83 ; _data[5][83] = 1
 VarIndex = 84 ; _data[5][84] = 1
 VarIndex = 85 ; _data[5][85] = 1
 VarIndex = 86 ; _data[5][86] = 1
 VarIndex = 87 ; _data[5][87] = 1
 VarIndex = 88 ; _data[5][88] = 1
 VarIndex = 89 ; _data[5][89] = 1
 VarIndex = 90 ; _data[5][90] = 1
 VarIndex = 91 ; _data[5][91] = 1
 VarIndex = 92 ; _data[5][92] = 1
 VarIndex = 93 ; _data[5][93] = 1
 VarIndex = 94 ; _data[5][94] = 1
 VarIndex = 95 ; _data[5][95] = 1
 VarIndex = 96 ; _data[5][96] = 1
 VarIndex = 97 ; _data[5][97] = 1
 VarIndex = 98 ; _data[5][98] = 1
 VarIndex = 99 ; _data[5][99] = 1
blocking walls s' First test :
x1 = 7; y1 = 99; x2 = 7; y2 = 18
_ConstAxe = 7 ; startIndex = 99 ; EndIndex = 18 ; Conditon = 1
after Revision ^_^
startIndex = 18 ; EndIndex = 99
 VarIndex = 18 ; _data[7][18] = 1
 VarIndex = 19 ; _data[7][19] = 1
 VarIndex = 20 ; _data[7][20] = 1
 VarIndex = 21 ; _data[7][21] = 1
 VarIndex = 22 ; _data[7][22] = 1
 VarIndex = 23 ; _data[7][23] = 1
 VarIndex = 24 ; _data[7][24] = 1
 VarIndex = 25 ; _data[7][25] = 1
 VarIndex = 26 ; _data[7][26] = 1
 VarIndex = 27 ; _data[7][27] = 1
 VarIndex = 28 ; _data[7][28] = 1
 VarIndex = 29 ; _data[7][29] = 1
 VarIndex = 30 ; _data[7][30] = 1
 VarIndex = 31 ; _data[7][31] = 1
 VarIndex = 32 ; _data[7][32] = 1
 VarIndex = 33 ; _data[7][33] = 1
 VarIndex = 34 ; _data[7][34] = 1
 VarIndex = 35 ; _data[7][35] = 1
 VarIndex = 36 ; _data[7][36] = 1
 VarIndex = 37 ; _data[7][37] = 1
 VarIndex = 38 ; _data[7][38] = 1
 VarIndex = 39 ; _data[7][39] = 1
 VarIndex = 40 ; _data[7][40] = 1
 VarIndex = 41 ; _data[7][41] = 1
 VarIndex = 42 ; _data[7][42] = 1
 VarIndex = 43 ; _data[7][43] = 1
 VarIndex = 44 ; _data[7][44] = 1
 VarIndex = 45 ; _data[7][45] = 1
 VarIndex = 46 ; _data[7][46] = 1
 VarIndex = 47 ; _data[7][47] = 1
 VarIndex = 48 ; _data[7][48] = 1
 VarIndex = 49 ; _data[7][49] = 1
 VarIndex = 50 ; _data[7][50] = 1
 VarIndex = 51 ; _data[7][51] = 1
 VarIndex = 52 ; _data[7][52] = 1
 VarIndex = 53 ; _data[7][53] = 1
 VarIndex = 54 ; _data[7][54] = 1
 VarIndex = 55 ; _data[7][55] = 1
 VarIndex = 56 ; _data[7][56] = 1
 VarIndex = 57 ; _data[7][57] = 1
 VarIndex = 58 ; _data[7][58] = 1
 VarIndex = 59 ; _data[7][59] = 1
 VarIndex = 60 ; _data[7][60] = 1
 VarIndex = 61 ; _data[7][61] = 1
 VarIndex = 62 ; _data[7][62] = 1
 VarIndex = 63 ; _data[7][63] = 1
 VarIndex = 64 ; _data[7][64] = 1
 VarIndex = 65 ; _data[7][65] = 1
 VarIndex = 66 ; _data[7][66] = 1
 VarIndex = 67 ; _data[7][67] = 1
 VarIndex = 68 ; _data[7][68] = 1
 VarIndex = 69 ; _data[7][69] = 1
 VarIndex = 70 ; _data[7][70] = 1
 VarIndex = 71 ; _data[7][71] = 1
 VarIndex = 72 ; _data[7][72] = 1
 VarIndex = 73 ; _data[7][73] = 1
 VarIndex = 74 ; _data[7][74] = 1
 VarIndex = 75 ; _data[7][75] = 1
 VarIndex = 76 ; _data[7][76] = 1
 VarIndex = 77 ; _data[7][77] = 1
 VarIndex = 78 ; _data[7][78] = 1
 VarIndex = 79 ; _data[7][79] = 1
 VarIndex = 80 ; _data[7][80] = 1
 VarIndex = 81 ; _data[7][81] = 1
 VarIndex = 82 ; _data[7][82] = 1
 VarIndex = 83 ; _data[7][83] = 1
 VarIndex = 84 ; _data[7][84] = 1
 VarIndex = 85 ; _data[7][85] = 1
 VarIndex = 86 ; _data[7][86] = 1
 VarIndex = 87 ; _data[7][87] = 1
 VarIndex = 88 ; _data[7][88] = 1
 VarIndex = 89 ; _data[7][89] = 1
 VarIndex = 90 ; _data[7][90] = 1
 VarIndex = 91 ; _data[7][91] = 1
 VarIndex = 92 ; _data[7][92] = 1
 VarIndex = 93 ; _data[7][93] = 1
 VarIndex = 94 ; _data[7][94] = 1
 VarIndex = 95 ; _data[7][95] = 1
 VarIndex = 96 ; _data[7][96] = 1
 VarIndex = 97 ; _data[7][97] = 1
 VarIndex = 98 ; _data[7][98] = 1
 VarIndex = 99 ; _data[7][99] = 1
le chasseur se trouve a la position : ( 10 , 8 ) ; reellement : ( 100 , 80 )
X = 10 ; Y = 8
le modele du Gardien n(1) = Lezard
pour le 2eme modele blade , tmpModel devient :  Blade
PS C:\Users\Riados\Documents\cstrike game c++ project>  