:- dynamic(uang/1).
:- dynamic(exp/1).
:- dynamic(farmexp/1).
:- dynamic(fishexp/1).
:- dynamic(fishlvl/1).
:- dynamic(fishrod/1).
:- dynamic(ranchexp/1).
:- dynamic(ranchinglvl/1).
:- dynamic(time/1).
:- dynamic(day/1).
:- dynamic(playerpos/2).
:- dynamic(job/1).
:- dynamic(fatigue/1).
:- dynamic(quest/3).
:- dynamic(li/1).
:- dynamic(isPlant/1).
:- dynamic(shovel/1).
:- dynamic(liPlant/1).
:- dynamic(chickenlist/1).
:- dynamic(cowlist/1).
:- dynamic(sheeplist/1).
:- dynamic(piglist/1).

chickenlist([]).
piglist([]).
cowlist([]).
sheeplist([]).

/* li -> List of item */
li([]).
liPlant([]).

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
	asserta(ranchinglvl(0)),
	asserta(time(0)),
	asserta(day(1)),
	asserta(playerpos(8,7)),
	asserta(fatigue(0)),
	asserta(isPlant(0)),
	asserta(shovel(1)),
	promptStart.

promptStart :-
	write('Selamat datang di game Cupang Farmer'),nl,
	write('Anda terbangun dan di sebelah meja Anda terdapat KTP bertuliskan nama CUPANG'),nl,
	promptMenu.

promptMenu :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'),nl,
	write('%                                                %'),nl,
	write('%                   Cupang Farmer                %'),nl,
	write('%                                                %'),nl,
	write('%                       Menu                     %'),nl,
	write('%                                                %'),nl,
	write('%  1. start   : Mulai pertualanganmu             %'),nl,
	write('%  2. menu    : Menampilkan Menu                 %'),nl,
	write('%  3. map     : Menampilkan map                  %'),nl,
	write('%  4. status  : Menampilkan kondisimu terkini    %'),nl,
	write('%  5. w       : Gerak ke utara 1 langkah         %'),nl,
	write('%  6. a       : Gerak ke barat 1 langkah         %'),nl,
	write('%  7. s       : Gerak ke selatan 1 langkah       %'),nl,
	write('%  8. d       : Gerak ke timur 1 langkah         %'),nl,
	write('%  9. help    : Menampilkan peraturan game       %'),nl,
	write('%                                                %'),nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%').

help :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'),nl,
	write('%                                                %'),nl,
	write('%                     HELP                       %'),nl,
	write('%                                                %'),nl,
	write('%  1. start   : Mulai pertualanganmu             %'),nl,
	write('%  2. menu    : Menampilkan Menu                 %'),nl,
	write('%  3. map     : Menampilkan map                  %'),nl,
	write('%  4. status  : Menampilkan kondisimu terkini    %'),nl,
	write('%  5. w       : Gerak ke utara 1 langkah         %'),nl,
	write('%  6. a       : Gerak ke barat 1 langkah         %'),nl,
	write('%  7. s       : Gerak ke selatan 1 langkah       %'),nl,
	write('%  8. d       : Gerak ke timur 1 langkah         %'),nl,
	write('%  9. ranch   : Menampilkan pilihan ranch        %'),nl,
	write('%  10. chicken: Mengambil telur dari ayam        %'),nl,
	write('%  11. cow    : Memerah susu dari sapi           %'),nl,
	write('%  12. sheep  : Mencukur bulu domba              %'),nl,
	write('%  13. plant  : Menanam tanaman                  %'),nl,
	write('%  14. fish   : Memancing                        %'),nl,
	write('%  15. market : Berbelanja di pasar              %'),nl,
	write('%  16. quest  : Menampilkan quest                %'),nl,
	write('%                                                %'),nl,
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
update:- fatigue(X), X>=48, nl,write('Cupang kelelahan karena belum tidur sehingga ia tertidur selama 12 jam'),nl,showfatigue,tidur(12),!.
update:- !.

showfatigue:- 	write('    zz'),nl,
				write('  zz'),nl,
				write('o_ '),nl,
				write('|/\\'),nl.

failgame:- write('fail'), retractall(_),!.
successgame:- write('berhasil'),!.

/*=========================================================QUEST==================================================================================*/
quest:- loc(Y,X,L), L==q, playerpos(A,B), (Y\=A;X\=B), write('Quest hanya bisa diambil dan dilihat di Q'),!.
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
printmap(Y,X):- findPlant(Y,X), isPlant(B), B=1, write('='), NextX is X+1, printmap(Y, NextX), !.
printmap(Y,X):- findPlant(Y,X), isPlant(B), B=2, write('*'), NextX is X+1, printmap(Y, NextX), !.
printmap(Y,X):- findPlant(Y,X), isPlant(B), B=3, write('x'), NextX is X+1, printmap(Y, NextX), !.
printmap(Y,X):- findPlant(Y,X), isPlant(B), B=0, loc(Y,X,A), write(A), NextX is X+1, printmap(Y, NextX), !.

w:-playerpos(Y,X),NextY is Y-1, NextY>0, \+ (loc(NextY,X,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(NextY,X)),addTime(1),!.
a:-playerpos(Y,X),NextX is X-1, NextX>0, \+ (loc(Y,NextX,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(Y,NextX)),addTime(1),!.
s:-playerpos(Y,X),NextY is Y+1, NextY<11, \+ (loc(NextY,X,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(NextY,X)),addTime(1),!.
d:-playerpos(Y,X),NextX is X+1, NextX<11, \+ (loc(Y,NextX,A),A=='o'), retractall(playerpos(_,_)), asserta(playerpos(Y,NextX)),addTime(1),!.

/*==================================================FISHERMAN========================================================================================*/
fish:- fishrod(X), X=:=0, write('Anda harus memiliki fishing rod untuk memancing!'),!.
fish:- playerpos(Y,X), NextY is Y+1, loc(NextY,X,A), A=='o',showfishing,randomfish,addtimefishing,!.
fish:- playerpos(Y,X), NextY is Y-1, loc(NextY,X,A), A=='o',showfishing,randomfish,addtimefishing,!.
fish:- playerpos(Y,X), NextX is X+1, loc(Y,NextX,A), A=='o',showfishing,randomfish,addtimefishing,!.
fish:- playerpos(Y,X), NextX is X-1, loc(Y,NextX,A), A=='o',showfishing,randomfish,addtimefishing,!.
fish:- write('Tidak ada danau di sekitar Anda'),!.

showfishing:-	write(''),nl,
				write('   |\\'),nl,
				write(' o_|  \\'),nl,
				write(' |/|    \\'),nl,
				write(' /\\   ~~~\\~~~~~'),nl,!.

addtimefishing:- fishlvl(FL), NextT is 6-FL, addTime(NextT),!.

randomfish:- fishrod(X),X=:=1,randomize,random(1,100,Num), getfish(Num),!.
randomfish:- fishrod(X),X=:=2,randomize,random(1,50,Num), getfish(Num),!.

getfish(X):- job(2),X=:=1, write('Selamat, Anda mendapatkan Cupang!!!'), addexpfish(10),addItemQnt(cupang,1),!.
getfish(X):- job(2),X=<10, write('Selamat, Anda mendapatkan Salmon'), addexpfish(6),addItemQnt(salmon,1),!.
getfish(_):- job(2),write('Selamat, Anda mendapatkan Tuna'),addexpfish(2),addItemQnt(tuna,1),!.
getfish(X):- X=:=1, write('Selamat, Anda mendapatkan Cupang!!!'), addexpfish(5),addItemQnt(cupang,1),!.
getfish(X):- X=<10, write('Selamat, Anda mendapatkan Salmon'), addexpfish(3),addItemQnt(salmon,1),!.
getfish(_):- write('Selamat, Anda mendapatkan Tuna'),addexpfish(1),addItemQnt(tuna,1),!.

addexpfish(_):- fishlvl(LVL), LVL=:=3, write('Level fishing sudah maximal, Anda tidak lagi mendapat Exp memancing'),!.
addexpfish(X):- fishexp(EXP), NEXTEXP is EXP+X, fishlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(fishexp(_)), asserta(fishexp(NEXTEXP)),nl,write('Anda mendapat '),write(X),write(' Exp fishing'),!.
addexpfish(X):- fishexp(EXP), fishlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+X-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(fishexp(_)), retractall(fishlvl(_)), asserta(fishexp(NEXTEXP)), asserta(fishlvl(NEXTLVL)),nl,write('Anda mendapat '),write(X),write(' Exp fishing'),!.

/*==================================================MARKETPLACE========================================================================================*/
market:- loc(Y,X,L),L==m, playerpos(A,B), (Y\=A;X\=B), write('Cupang tidak berada di pasar!'),!.
market:-	write('          ______'),nl,
			write('         /______\\ '),nl,
			write('  o /  / |      | \\ '),nl,
			write(' /|      |      |'),nl,
			write(' / \\     |______|'),nl,
			/*emang rada zig-zag ga usah dibikin lurus*/
			write('i want to (buy/sell/exit): '),read(X),nl, marketchoice(X),!.

marketchoice(buy):- write('buy something'),nl,market,!.
marketchoice(sell):- write('Sell something'),nl,market,!.
marketchoice(exit):- map,!.
marketchoice(_):- write('invalid input'),market,!.

/*================================================HOUSE=============================================================================================*/
house:- loc(Y,X,L),L==h, playerpos(A,B), (Y\=A;X\=B), write('Cupang tidak berada di rumah!'),!.
house:-	write('              '),nl,
		write('  o '),nl,
		write(' /|\\    ________|'),nl,
		write(' / \\   |        |'),nl,
		write('i want to (sleep/go_out): '),read(X),nl,housechoice(X),!.

housechoice(sleep):- tidur(6),write('Cupang slept for 6 hours'),nl,house,!.
housechoice(go_out):- map,!.
housechoice(_):- write('invalid input'),house,!.

/*=====================================================================Item Inventory======================================================================*/
/* menambahkan list dengan element Y, Y berupa [Item,Qnt] */
addlist(Y) :-
	li(X),
	append(X,[Y],Res),
	retractall(li(_)),
	assertz(li(Res)).

/* Add Item dengan nama Item, dengan Quantity Qnt ke li : Jika Item pada li maka jumlah diubah, mengappend jika tidak ada */
addItemQnt(Item,Qnty):-
	li(X),
	addItemQnt(X,Item,Qnty,Added),
	retractall(li(_)),
	assertz(li(Added)).
addItemQnt([],Item,Qnty,[NewItem]) :-
	eleitem(NewItem,Item,[Qnty])
	,!.
addItemQnt([H|T],Item,Qnty,[Added|T]) :-
	eleitem(H,Targ,[Val]),
	Item == Targ,
	NewQnt is Val+Qnty,write('test'),
	eleitem(Added,Targ,[NewQnt]),!.
addItemQnt([H|T],Item,Qnty,[H|Res]) :-
	eleitem(H,Targ,_),
	Item \== Targ,
	addItemQnt(T,Item,Qnty,Res),!.

/* Mencari Quantity dari Item */
findQnt(Item) :-
	li(X),
	findQnt(X, Item).
findQnt([H|_], Item) :-
	eleitem(H,M,[N]),
	M == Item,
	write(N),!.
findQnt([H|T], Item) :-
	eleitem(H,M,_),
	M \== Item,
	findQnt(T,Item).
findQnt([], _) :-
	write('fail'),!.

/* Mengurangi item dengan nama Item dan quantity Qnty */
/* Jika Item pada li dan Qnty < jumlah item, kurangi jumlah item dengan Qnty */
/* Jika Item pada li dan Qnty = jumlah item, menghilangkan item dari li */
/* Jika tidak ditemui atau Qnty > jumlah item, menampilkan pesan kesalahan */
deleteitem(Item,Qnty) :-
	li(X),
	deleteitem(X,Item,Qnty,Deleted),
	retractall(li(_)),
	assertz(li(Deleted)).
deleteitem([],_,_,[]) :- write('no such item'),!.
deleteitem([H|T],Item,Qnty,[Subtracted|T]) :-
	eleitem(H,Targ,[Val]),
	Targ == Item,
	Qnty < Val,
	NewN is Val-Qnty,
	eleitem(Subtracted,Targ,[NewN]),
	!.
deleteitem([H|T],Item,Qnty,T) :-
	eleitem(H,Targ,[Val]),
	Targ == Item,
	Qnty == Val,
	!.
deleteitem([H|T],Item,Qnty,[H|T]) :-
	eleitem(H,Targ,[Val]),
	Targ == Item,
	Qnty > Val, write('item quantity not met'),
	!.
deleteitem([H|T],Item,Qnty,[H|Res]) :-
	eleitem(H,Targ,_),
	Targ \== Item,
	deleteitem(T,Item,Qnty,Res),
	!.

displayInv :-
  li([]),
  write('Empty Inventory').

displayInv :-
  li(X),
  write('Your Inventory (Item - Quantity) :'),nl,
  displayInvNext(X,1),!.

displayInvNext([H|T],Num) :-
  write(Num), write('. '),
  eleitem(H,Item,[Qnt]),
  write(Item), write(' : '),
  NextNum is Num+1,
  write(Qnt),nl,displayInvNext(T,NextNum),!.

eleitem([Item|Qnty],Item,Qnty).

/*======================FARMER============================*/
plant :- shovel(X), X=:=0, write('Anda harus memiliki shovel untuk menggali tanah!'), !.
plant :- playerpos(Y,X), loc(Y,X,A), A==m, write('Anda tidak dapat menanam pada area M'), nl, !.
plant :- playerpos(Y,X), loc(Y,X,A), A==h, write('Anda tidak dapat menanam pada area H'), nl, !.
plant :- playerpos(Y,X), loc(Y,X,A), A==r, write('Anda tidak dapat menanam pada area R'), nl, !.
plant :- showplanting, write('Masukkan pilihan seed yang ditanam (1:Carrot, 2:Corn, 3:Turnip, 4:Cabbage) : '), read(X), planting(X), !.
/* Time Planting 6 (shovel 1) */
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
				Seed =:= 1, addPlant(Y,X,72), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
				Seed =:= 2, addPlant(Y,X,96), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
				Seed =:= 3, addPlant(Y,X,120), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
				Seed =:= 4, addPlant(Y,X,144), !.
/* Time Planting 4 (shovel 2) */
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
				Seed =:= 1, addPlant(Y,X,72), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
				Seed =:= 2, addPlant(Y,X,96), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
				Seed =:= 3, addPlant(Y,X,120), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
				Seed =:= 4, addPlant(Y,X,144), !.

showplanting:-	write('       '),nl,
				write('|____  '),nl,
				write('  o//  '),nl,
				write('  |   v v v v v'),nl,
				write(' / \\  ~~~~~~~~~'),nl,!.

addTimePlanting(Time) :- farmexp(A), A=:=0, TimeNow is Time, addTime(TimeNow), !.
addTimePlanting(Time) :- farmexp(A), A=:=1, TimeNow is Time-1, addTime(TimeNow), !.
addTimePlanting(Time) :- farmexp(A), A=:=2, TimeNow is Time-2, addTime(TimeNow), !.
addTimePlanting(Time) :- farmexp(A), A=:=3, TimeNow is Time-3, addTime(TimeNow), !.

/* ADD PLANT TO LIST */
addPlant(Ypos,Xpos,N) :-	liPlant(X),
							append(X,[[Ypos,Xpos,N]],Res),
							retractall(liPlant(_)),
							assertz(liPlant(Res)).

/* CARI DI LIST. KALAU KETEMU DI LIST DAN TIMENYA masih >= 1, B=1, KALAU TIME = 0, B=2. KALAU TIMENYA -1, jadi B=3, KALAU -2, delete from list, balikin jadi 0  */
findPlant(A,B) :-	liPlant(X),
					findPlant(X,A,B), !.
findPlant([],_,_):- retractall(isPlant(_)),
					asserta(isPlant(0)),!.
findPlant([H|_],A,B) :-	elePlant(H,M,[N,O]),
						M==A, N==B, O>=1,
						retractall(isPlant(_)),
						asserta(isPlant(1)),!.
findPlant([H|_],A,B) :-	elePlant(H,M,[N,O]),
						M==A, N==B, O=:=0,
						retractall(isPlant(_)),
						asserta(isPlant(2)),!.
findPlant([H|_],A,B) :-	elePlant(H,M,[N,O]),
						M==A, N==B, O=:=(-1),
						retractall(isPlant(_)),
						asserta(isPlant(3)),!.
findPlant([H|_],A,B) :-	elePlant(H,M,[N,_]),
						M==A, N==B,
						retractall(isPlant(_)),
						asserta(isPlant(0)),!.
findPlant([H|T],A,B) :-	elePlant(H,M,[N,_]),
						(M\==A; N\==B),
						findPlant(T,A,B),!.

/* KURANGI WAKTUNYA SEMUA -1 */
updatePlant :-	liPlant(X),
				updatePlant(X,[]),!.
updatePlant([],Up) :- 	retractall(liPlant(_)),
						assertz(liPlant(Up)), !.
updatePlant([H|T],Up) :-	elePlant(H,_,[_,O]),
							O=:=(-2), updatePlant(T,Up),!.
updatePlant([H|T],Up) :-	elePlant(H,M,[N,O]),
							Onew is O-1,
							O=\=(-2), updatePlant(T,[[M,N,Onew]|Up]),!.

elePlant([H|T],H,T).


/*===================RANCHER============================*/
/*chickenlist([-1,0,1]).
piglist([3,2]).
cowlist([-2, 0,-1, 1]).
sheeplist([-6, 1, 0]).*/


numchicken([],0) :- !.
numchicken([_Head|Tail], Count) :- numchicken(Tail, Ncount), Count is Ncount + 1.
numpig([],0) :- !.
numpig([_Head|Tail], Count) :- numpig(Tail, Ncount), Count is Ncount + 1.
numcow([],0) :- !.
numcow([_Head|Tail], Count) :- numcow(Tail, Ncount), Count is Ncount + 1.
numsheep([],0) :- !.
numsheep([_Head|Tail], Count) :- numsheep(Tail, Ncount), Count is Ncount + 1.


printchicken:- chickenlist(Y), numchicken(Y,X), X = 0,!.
printchicken:- chickenlist(Y), numchicken(Y,X), X > 0, write(X), write(' ayam'),nl.
printpig:- piglist(X), numpig(X,Y), Y = 0, !.
printpig:- piglist(X), numpig(X,Y), Y > 0, write(Y), write(' babi'),nl.
printcow:- cowlist(Y), numcow(Y,X), X = 0, !.
printcow:- cowlist(Y), numcow(Y,X), X > 0, write(X), write(' sapi'),nl.
printsheep:- sheeplist(Y), numsheep(Y,X), X = 0, !.
printsheep:- sheeplist(Y), numsheep(Y,X), X > 0, write(X), write(' domba'),nl.

ranch :- playerpos(Y,X), loc(Y,X,A), A \= r, write('Anda sedang tidak berada di ranch!'), !.
ranch :- 
	playerpos(Y,X), loc(Y,X,A), A == r,
	printchicken,
	printpig,
	printcow,
	printsheep,
	write('Apa yang mau kamu lakukan?').

numegg([],0) :- !.
numegg([Head|Tail], Count) :- day(X), N is X-Head, numegg(Tail, Ncount), Count is Ncount + N.
nummilk([],0) :- !.
nummilk([Head|Tail], Count) :- day(X), N is X - Head, N >= 2, nummilk(Tail, Ncount), Count is Ncount + 1.
nummilk([Head|Tail], Count) :- day(X), N is X - Head, N < 2, nummilk(Tail, Count).
numwool([],0) :- !.
numwool([Head|Tail], Count) :- day(X), N is X - Head, N >= 7, numwool(Tail, Ncount), Count is Ncount + 1.
numwool([Head|Tail], Count) :- day(X), N is X - Head, N < 7, numwool(Tail, Count).

chickenchange([], _X, []) :- !.
chickenchange([Head|Tail], X, [Thead|Ttail]) :- A is X - Head, A >= 1, chickenchange(Tail, X, Ttail), Thead is X.
chickenchange([Head|Tail], X, [Thead|Ttail]) :- A is X - Head, A < 1, chickenchange(Tail, X, Ttail), Thead is Head.
cowchange([], _X, []) :- !.
cowchange([Head|Tail], X, [Thead|Ttail]) :- A is X - Head, A >= 2, cowchange(Tail, X, Ttail), Thead is X.
cowchange([Head|Tail], X, [Thead|Ttail]) :- A is X - Head, A < 2, cowchange(Tail, X, Ttail), Thead is Head.
sheepchange([], _X, []) :- !.
sheepchange([Head|Tail], X, [Thead|Ttail]) :- A is X - Head, A >= 7, sheepchange(Tail, X, Ttail), Thead is X.
sheepchange([Head|Tail], X, [Thead|Ttail]) :- A is X - Head, A < 7, sheepchange(Tail, X, Ttail), Thead is Head.

addtimeambilegg :- ranchinglvl(X), X =:= 0, addTime(1), !.
addtimeambilmilk :- ranchinglvl(X), Tnext is 4 - X, addTime(Tnext), !.
addtimeambilwool :- ranchinglvl(X), Tnext is 6 - X, addTime(Tnext), !.

addexpranch(_):- ranchinglvl(LVL), LVL=:=3, write('Level ranching sudah maximal, Anda tidak lagi mendapat Exp ranching'),!.
addexpranch(X):- ranchexp(EXP), NEXTEXP is EXP+X, ranchinglvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(ranchexp(_)), asserta(ranchexp(NEXTEXP)),nl,write('Anda mendapat '),write(X),write(' Exp ranching'),!.
addexpranch(X):- ranchexp(EXP), ranchinglvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+X-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(ranchexp(_)), retractall(ranchinglvl(_)), asserta(ranchexp(NEXTEXP)), asserta(ranchinglvl(NEXTLVL)),nl,write('Anda mendapat '),write(X),write(' Exp ranching'),!.

chicken :- chickenlist(X), numegg(X,Y), Y =:= 0, write('Your chicken has not laid eggs yet.'), nl, write('Please check again later.'), !.
chicken :- chickenlist(X), numegg(X,Y), write('Your chicken lays '), write(Y), write(' eggs.'), nl, write('You got '), write(Y), write(' eggs!'), day(D), chickenlist(C), chickenchange(C, D, Z), retractall(chickenlist(X)), asserta(chickenlist(Z)), addtimeambilegg, addexpranch(Y).
cow :- cowlist(X), nummilk(X,Y), Y =:= 0, write('Your cows has not produced milk yet.'), nl, write('Please check again later.'), !.
cow :- cowlist(X), nummilk(X,Y), write('Your cows produce '), write(Y), write(' bottles of milk.'), nl, write('You got '), write(Y), write(' bottles of milk!'), day(D), cowlist(C), cowchange(C,D,Z), retractall(cowlist(X)), asserta(cowlist(Z)), addtimeambilmilk, Nexp is Y * 5, addexpranch(Nexp).
sheep :- sheeplist(X), numwool(X,Y), Y =:= 0, write('Your sheeps has not produced wool yet.'), nl, write('Please check again later.'), !.
sheep :- sheeplist(X), numwool(X,Y), write('Your sheeps produce '), write(Y), write(' wools.'), nl, write('You got '), write(Y), write(' wools!'), day(D), sheeplist(C), sheepchange(C,D,Z), retractall(sheeplist(X)), asserta(sheeplist(Z)), addtimeambilwool, Nexp is Y * 15, addexpranch(Nexp).
