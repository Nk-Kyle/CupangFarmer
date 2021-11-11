:- dynamic(uang/1).
:- dynamic(exp/1).
:- dynamic(farmexp/1).
:- dynamic(fishexp/1).
:- dynamic(ranchexp/1).
:- dynamic(time/1).
:- dynamic(day/1).
:- dynamic(playerpos/2).
:- dynamic(job/1).

map(0,0,#).
map(0,1,#).
map(0,2,#).
map(0,3,#).
map(0,4,#).
map(0,5,#).
map(0,6,#).
map(0,7,#).
map(0,8,#).
map(0,9,#).
map(0,10,#).
map(0,11,#).

map(1,0,#).
map(1,1,o).
map(1,2,o).
map(1,3,o).
map(1,4,o).
map(1,5,-).
map(1,6,-).
map(1,7,-).
map(1,8,-).
map(1,9,-).
map(1,10,-).
map(1,11,#).

map(2,0,#).
map(2,1,o).
map(2,2,o).
map(2,3,o).
map(2,4,-).
map(2,5,-).
map(2,6,-).
map(2,7,-).
map(2,8,-).
map(2,9,-).
map(2,10,-).
map(2,11,#).

map(3,0,#).
map(3,1,o).
map(3,2,o).
map(3,3,-).
map(3,4,-).
map(3,5,-).
map(3,6,-).
map(3,7,-).
map(3,8,-).
map(3,9,-).
map(3,10,-).
map(3,11,#).

map(4,0,#).
map(4,1,o).
map(4,2,o).
map(4,3,-).
map(4,4,-).
map(4,5,-).
map(4,6,-).
map(4,7,-).
map(4,8,-).
map(4,9,-).
map(4,10,-).
map(4,11,#).

map(5,0,#).
map(5,1,-).
map(5,2,-).
map(5,3,-).
map(5,4,-).
map(5,5,-).
map(5,6,-).
map(5,7,-).
map(5,8,-).
map(5,9,-).
map(5,10,-).
map(5,11,#).

map(6,0,#).
map(6,1,-).
map(6,2,-).
map(6,3,-).
map(6,4,-).
map(6,5,-).
map(6,6,-).
map(6,7,-).
map(6,8,r).
map(6,9,-).
map(6,10,-).
map(6,11,#).

map(7,0,#).
map(7,1,-).
map(7,2,-).
map(7,3,-).
map(7,4,-).
map(7,5,-).
map(7,6,-).
map(7,7,-).
map(7,8,-).
map(7,9,-).
map(7,10,-).
map(7,11,#).

map(8,0,#).
map(8,1,-).
map(8,2,-).
map(8,3,-).
map(8,4,-).
map(8,5,-).
map(8,6,-).
map(8,7,h).
map(8,8,-).
map(8,9,-).
map(8,10,-).
map(8,11,#).

map(9,0,#).
map(9,1,-).
map(9,2,-).
map(9,3,m).
map(9,4,-).
map(9,5,-).
map(9,6,-).
map(9,7,-).
map(9,8,-).
map(9,9,-).
map(9,10,-).
map(9,11,#).

map(10,0,#).
map(10,1,-).
map(10,2,-).
map(10,3,-).
map(10,4,-).
map(10,5,-).
map(10,6,-).
map(10,7,-).
map(10,8,-).
map(10,9,-).
map(10,10,-).
map(10,11,#).

map(11,0,#).
map(11,1,#).
map(11,2,#).
map(11,3,#).
map(11,4,#).
map(11,5,#).
map(11,6,#).
map(11,7,#).
map(11,8,#).
map(11,9,#).
map(11,10,#).
map(11,11,#).

startGame :-
	asserta(uang(100)),
	asserta(exp(0)),
	asserta(farmexp(0)),
	asserta(fishexp(0)),
	asserta(ranchexp(0)),
	asserta(time(0)),
	asserta(day(1)),
	asserta(playerpos(8,7)),
	promptStart.

promptStart :-
	write('Selamat datang di game Cupang Farmer'),nl,
	write('Anda terbangun dan di sebelah meja Anda terdapat KTP bertuliskan nama CUPANG'),nl,
	promptMenu.

promptMenu :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'),nl,
	write('%                   Cupang Farmer                %'),nl,
	write('%                       Menu                     %'),nl,
	write('%  1. start   : Mulai pertualanganmu             %'),nl,
	write('%  2. menu    : Menampilkan Menu                 %'),nl,
	write('%  3. showmap : Menampilkan Map                  %'),nl,
	write('%  4. status  : Menampilkan kondisimu terkini    %'),nl,
	write('%  5. w       : Gerak ke utara 1 langkah         %'),nl,
	write('%  6. a       : Gerak ke barat 1 langkah         %'),nl,
	write('%  7. s       : Gerak ke selatan 1 langkah       %'),nl,
	write('%  8. d       : Gerak ke timur 1 langkah         %'),nl,
	write('%  9. help    : Menampilkan peraturan game       %'),nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%').

showmap:- printmap(0,0),!.
printmap(12,0):- !.
printmap(Y,12):- nl, NextY is Y+1, printmap(NextY,0),!.
printmap(Y,X):- playerpos(Yp,Xp),Yp=:=Y,Xp=:=X,write('P'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- map(Y,X,A), A==r, write('R'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- map(Y,X,A), A==h, write('H'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- map(Y,X,A), A==m, write('M'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- map(Y,X,A), write(A), NextX is X+1, printmap(Y,NextX),!.

w:-playerpos(Y,X),NextY is Y-1, NextY>0, \+ (map(NextY,X,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(NextY,X)),!.
a:-playerpos(Y,X),NextX is X-1, NextX>0, \+ (map(Y,NextX,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(Y,NextX)),!.
s:-playerpos(Y,X),NextY is Y+1, NextY<11, \+ (map(NextY,X,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(NextY,X)),!.
d:-playerpos(Y,X),NextX is X+1, NextX<11, \+ (map(Y,NextX,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(Y,NextX)),!.