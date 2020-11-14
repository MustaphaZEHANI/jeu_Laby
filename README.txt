Ce projet a été compilé en windows 

1) Il faut décompresser le fichier zip ; 

ouvrir l'emplacement du projet via le cmd/powershell  : 


cd "project_Folder_location"

par exemple : 

cd C:\Users\User_name\Documents\cstrike game c++ project  

ou
cd  C:\projectFolder  

2)   il faut taper la commande suivante : 

*sur cmd : 

make -f Makefile-proto && ./"labh.exe" -l "labyrinthe.txt"   -f -a  

*sur powershell : 

make -f Makefile-proto ; ./"labh.exe" -l "labyrinthe.txt"   -f -a  
