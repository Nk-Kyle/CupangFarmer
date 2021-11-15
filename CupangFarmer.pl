:- dynamic(uang/1).
:- dynamic(exp/1).
:- dynamic(farmexp/1).
:- dynamic(fishexp/1).
:- dynamic(fishlvl/1).
:- dynamic(fishrod/1).
:- dynamic(ranchexp/1).
:- dynamic(time/1).
:- dynamic(day/1).
:- dynamic(playerpos/2).
:- dynamic(job/1).
:- dynamic(fatigue/1).
:- dynamic(quest/3).

loc(0,0,#).
loc(0,1,#).
loc(0,2,#).
loc(0,3,#).
loc(0,4,#).
loc(0,5,#).
loc(0,6,#).
loc(0,7,#).
loc(0,8,#).
loc(0,9,#).
loc(0,10,#).
loc(0,11,#).

loc(1,0,#).
loc(1,1,o).
loc(1,2,o).
loc(1,3,o).
loc(1,4,o).
loc(1,5,-).
loc(1,6,-).
loc(1,7,-).
loc(1,8,-).
loc(1,9,-).
loc(1,10,-).
loc(1,11,#).

loc(2,0,#).
loc(2,1,o).
loc(2,2,o).
loc(2,3,o).
loc(2,4,-).
loc(2,5,-).
loc(2,6,-).
loc(2,7,-).
loc(2,8,-).
loc(2,9,-).
loc(2,10,-).
loc(2,11,#).

loc(3,0,#).
loc(3,1,o).
loc(3,2,o).
loc(3,3,-).
loc(3,4,-).
loc(3,5,-).
loc(3,6,-).
loc(3,7,-).
loc(3,8,-).
loc(3,9,-).
loc(3,10,-).
loc(3,11,#).

loc(4,0,#).
loc(4,1,o).
loc(4,2,o).
loc(4,3,-).
loc(4,4,-).
loc(4,5,-).
loc(4,6,-).
loc(4,7,-).
loc(4,8,-).
loc(4,9,-).
loc(4,10,-).
loc(4,11,#).

loc(5,0,#).
loc(5,1,-).
loc(5,2,-).
loc(5,3,-).
loc(5,4,-).
loc(5,5,-).
loc(5,6,-).
loc(5,7,-).
loc(5,8,-).
loc(5,9,-).
loc(5,10,-).
loc(5,11,#).

loc(6,0,#).
loc(6,1,-).
loc(6,2,-).
loc(6,3,-).
loc(6,4,-).
loc(6,5,-).
loc(6,6,-).
loc(6,7,-).
loc(6,8,r).
loc(6,9,-).
loc(6,10,-).
loc(6,11,#).

loc(7,0,#).
loc(7,1,-).
loc(7,2,-).
loc(7,3,-).
loc(7,4,-).
loc(7,5,-).
loc(7,6,-).
loc(7,7,-).
loc(7,8,-).
loc(7,9,-).
loc(7,10,-).
loc(7,11,#).

loc(8,0,#).
loc(8,1,-).
loc(8,2,-).
loc(8,3,-).
loc(8,4,-).
loc(8,5,-).
loc(8,6,-).
loc(8,7,h).
loc(8,8,-).
loc(8,9,-).
loc(8,10,-).
loc(8,11,#).

loc(9,0,#).
loc(9,1,-).
loc(9,2,-).
loc(9,3,m).
loc(9,4,-).
loc(9,5,-).
loc(9,6,-).
loc(9,7,-).
loc(9,8,-).
loc(9,9,-).
loc(9,10,-).
loc(9,11,#).

loc(10,0,#).
loc(10,1,-).
loc(10,2,-).
loc(10,3,-).
loc(10,4,-).
loc(10,5,-).
loc(10,6,-).
loc(10,7,-).
loc(10,8,-).
loc(10,9,-).
loc(10,10,q).
loc(10,11,#).

loc(11,0,#).
loc(11,1,#).
loc(11,2,#).
loc(11,3,#).
loc(11,4,#).
loc(11,5,#).
loc(11,6,#).
loc(11,7,#).
loc(11,8,#).
loc(11,9,#).
loc(11,10,#).
loc(11,11,#).

startGame :-
	asserta(uang(100)),
	asserta(exp(0)),
	asserta(farmexp(0)),
	asserta(fishlvl(0)),
	asserta(fishexp(0)),
	asserta(fishrod(1)),
	asserta(ranchexp(0)),
	asserta(time(0)),
	asserta(day(1)),
	asserta(playerpos(8,7)),
	asserta(fatigue(0)),
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
	write('%  3. map     : Menampilkan map                  %'),nl,
	write('%  4. status  : Menampilkan kondisimu terkini    %'),nl,
	write('%  5. w       : Gerak ke utara 1 langkah         %'),nl,
	write('%  6. a       : Gerak ke barat 1 langkah         %'),nl,
	write('%  7. s       : Gerak ke selatan 1 langkah       %'),nl,
	write('%  8. d       : Gerak ke timur 1 langkah         %'),nl,
	write('%  9. help    : Menampilkan peraturan game       %'),nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%').

/*=====================================================================GENERAL======================================================================*/
start:- write('Silahkan Pilih Pekerjaan Anda (Tidak dapat diubah) '),nl,
		write('1. Farmer    (2x exp jika berkebun)'),nl,
		write('2. Fisherman (2x exp jika memancing)'),nl,
		write('3. Rancher   (2x exp jika berternak)'),nl,
		write('Pilihan Anda (1/2/3): '), read(X),asserta(job(X)),
		status,!.

writejob:-	job(X), X=:=1, write('Job        : Farmer'),!.
writejob:-	job(X), X=:=2, write('Job        : Fishermen'),!.
writejob:-	job(X), X=:=3, write('Job        : Rancher'),!.

tidur(X):- time(T), NextT is T+X, NextT<24, retractall(time(_)), asserta(time(NextT)),retractall(fatigue(_)),asserta(fatigue(0)),update,!.
tidur(X):- time(T), NextT is mod(T+X,24), day(CurrDay), NextDay is CurrDay+1, retractall(day(_)), asserta(day(NextDay)),retractall(time(_)), asserta(time(NextT)),addfatigue(X),retractall(fatigue(_)),asserta(fatigue(0)),update,!.

addTime(X):- time(T), NextT is T+X, NextT<24, retractall(time(_)), asserta(time(NextT)),addfatigue(X),update,!.
addTime(X):- time(T), NextT is mod(T+X,24), day(CurrDay), NextDay is CurrDay+1, retractall(day(_)), asserta(day(NextDay)),retractall(time(_)), asserta(time(NextT)),addfatigue(X),update,!.

time:- day(D), time(T), write('Day '),write(D),write(' '),write(T),write(':00'),!.

status:- 	fatigue(F), fishexp(FISHEXP),fishlvl(FISHLVL),
			writejob,nl,
			write('Fatigue    : '),write(F),nl,
			write('Fishing lvl: '),write(FISHLVL),nl,
			write('Fishing exp: '),write(FISHEXP),!.

addfatigue(X):- fatigue(F), NextF is F+X, retractall(fatigue(_)), asserta(fatigue(NextF)),!.

update:- day(D), D =:= 366, failgame,!.
update:- uang(G), G>=20000, sucessgame,!.
update:- fatigue(X), X>=48, nl,write('Cupang kelelahan karena belum tidur sehingga ia pingsan selama 12 jam'), tidur(12),!.
update:- !.

failgame:- write('fail'), retractall(_),!.
successgame:- write('berhasil'),!. 

/*=========================================================QUEST==================================================================================*/
quest:- loc(Y,X,L), L==q, playerpos(A,B), (Y\=A;X\=B), write('Quest hanya bisa diambil di Q'),!.
quest:- write('true'),!.

/*=======================================================MOVE DAN PETA============================================================================*/
map:- printmap(0,0),!.
printmap(12,0):- !.
printmap(Y,12):- nl, NextY is Y+1, printmap(NextY,0),!.
printmap(Y,X):- playerpos(Yp,Xp),Yp=:=Y,Xp=:=X,write('P'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- loc(Y,X,A), A==r, write('R'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- loc(Y,X,A), A==h, write('H'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- loc(Y,X,A), A==m, write('M'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- loc(Y,X,A), A==q, write('Q'), NextX is X+1, printmap(Y,NextX),!.
printmap(Y,X):- loc(Y,X,A), write(A), NextX is X+1, printmap(Y,NextX),!.

w:-playerpos(Y,X),NextY is Y-1, NextY>0, \+ (loc(NextY,X,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(NextY,X)),addTime(1),!.
a:-playerpos(Y,X),NextX is X-1, NextX>0, \+ (loc(Y,NextX,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(Y,NextX)),addTime(1),!.
s:-playerpos(Y,X),NextY is Y+1, NextY<11, \+ (loc(NextY,X,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(NextY,X)),addTime(1),!.
d:-playerpos(Y,X),NextX is X+1, NextX<11, \+ (loc(Y,NextX,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(Y,NextX)),addTime(1),!.

/*==================================================FISHERMAN========================================================================================*/
fish:- fishrod(X), X=:=0, write('Anda harus memiliki fishing rod untuk memancing!'),!.
fish:- playerpos(Y,X), NextY is Y+1, loc(NextY,X,A), A=='o',randomfish,addtimefishing,!.
fish:- playerpos(Y,X), NextY is Y-1, loc(NextY,X,A), A=='o',randomfish,addtimefishing,!.
fish:- playerpos(Y,X), NextX is X+1, loc(Y,NextX,A), A=='o',randomfish,addtimefishing,!.
fish:- playerpos(Y,X), NextX is X-1, loc(Y,NextX,A), A=='o',randomfish,addtimefishing,!.
fish:- write('Tidak ada danau di sekitar Anda'),!.

addtimefishing:- fishlvl(FL), NextT is 6-FL, addTime(NextT),!.

randomfish:- fishrod(X),X=:=1,randomize,random(1,100,Num), getfish(Num),!.
randomfish:- fishrod(X),X=:=2,randomize,random(1,50,Num), getfish(Num),!.

getfish(X):- job(2),X=:=1, write('Selamat, Anda mendapatkan Cupang!!!'), addexpfish(10),!.
getfish(X):- job(2),X=<10, write('Selamat, Anda mendapatkan Salmon'), addexpfish(6),!.
getfish(_):- job(2),write('Selamat, Anda mendapatkan Tuna'),addexpfish(2),!.
getfish(X):- X=:=1, write('Selamat, Anda mendapatkan Cupang!!!'), addexpfish(5),!.
getfish(X):- X=<10, write('Selamat, Anda mendapatkan Salmon'), addexpfish(3),!.
getfish(_):- write('Selamat, Anda mendapatkan Tuna'),addexpfish(1),!.

addexpfish(_):- fishlvl(LVL), LVL=:=3, write('Level fishing sudah maximal, Anda tidak lagi mendapat Exp memancing'),!.
addexpfish(X):- fishexp(EXP), NEXTEXP is EXP+X, fishlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(fishexp(_)), asserta(fishexp(NEXTEXP)),nl,write('Anda mendapat '),write(X),write(' Exp fishing'),!.
addexpfish(X):- fishexp(EXP), fishlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+X-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(fishexp(_)), retractall(fishlvl(_)), asserta(fishexp(NEXTEXP)), asserta(fishlvl(NEXTLVL)),nl,write('Anda mendapat '),write(X),write(' Exp fishing'),!. 