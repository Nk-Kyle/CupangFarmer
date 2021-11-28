:- dynamic(uang/1).
:- dynamic(exp/1).
:- dynamic(lvlplayer/1).
:- dynamic(farmexp/1).
:- dynamic(fishexp/1).
:- dynamic(fishlvl/1).
:- dynamic(fishrod/1).
:- dynamic(ranchexp/1).
:- dynamic(ranchinglvl/1).
:- dynamic(ranchlvl/1).
:- dynamic(time/1).
:- dynamic(day/1).
:- dynamic(playerpos/2).
:- dynamic(job/1).
:- dynamic(fatigue/1).
:- dynamic(quest/3).
:- dynamic(questlvl/1).
:- dynamic(li/1).
:- dynamic(isPlant/1).
:- dynamic(shovel/1).
:- dynamic(liPlant/1).
:- dynamic(chickenlist/1).
:- dynamic(cowlist/1).
:- dynamic(sheeplist/1).
:- dynamic(piglist/1).
:- dynamic(invcurrcap/1).
:- dynamic(plantType/1).
:- dynamic(farmlvl/1).
:- dynamic(diary/1).
:- dynamic(alchemist/2).
:- dynamic(season/1).
:- dynamic(cuaca/1).

diary([]).
chickenlist([-1,-1]).
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
	asserta(uang(1000)),
	asserta(exp(0)),
	asserta(lvlplayer(0)),
	asserta(farmexp(0)),
	asserta(fishlvl(0)),
	asserta(fishexp(0)),
	asserta(fishrod(1)),
	asserta(ranchexp(0)),
	asserta(ranchinglvl(0)),
	asserta(ranchlvl(0)),
	asserta(time(0)),
	asserta(day(1)),
	asserta(playerpos(8,7)),
	asserta(fatigue(0)),
	asserta(questlvl(1)),
	asserta(isPlant(0)),
	asserta(shovel(1)),
	asserta(invcurrcap(0)),
	asserta(plantType(none)),
	asserta(farmlvl(0)),
	asserta(alchemist(0,0)),
	asserta(season(spring)),
	promptStart,start.

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
	write('%  1. menu    : Menampilkan Menu                 %'),nl,
	write('%  2. map     : Menampilkan map                  %'),nl,
	write('%  3. status  : Menampilkan kondisimu terkini    %'),nl,
	write('%  4. w       : Gerak ke utara 1 langkah         %'),nl,
	write('%  5. a       : Gerak ke barat 1 langkah         %'),nl,
	write('%  6. s       : Gerak ke selatan 1 langkah       %'),nl,
	write('%  7. d       : Gerak ke timur 1 langkah         %'),nl,
	write('%  8. help    : Menampilkan peraturan game       %'),nl,
	write('%                                                %'),nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'),nl.

menu :- promptMenu.
help :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'),nl,
	write('%                                                           %'),nl,
	write('%                          HELP                             %'),nl,
	write('%                                                           %'),nl,
	write('%  1. start       : Mulai pertualanganmu                    %'),nl,
	write('%  2. menu        : Menampilkan Menu                        %'),nl,
	write('%  3. map         : Menampilkan map                         %'),nl,
	write('%  4. status      : Menampilkan kondisimu terkini           %'),nl,
	write('%  5. w           : Gerak ke utara 1 langkah                %'),nl,
	write('%  6. a           : Gerak ke barat 1 langkah                %'),nl,
	write('%  7. s           : Gerak ke selatan 1 langkah              %'),nl,
	write('%  8. d           : Gerak ke timur 1 langkah                %'),nl,
	write('%  9. house       : Masuk ke House (H)                      %'),nl,
	write('%  10. writeDiary : Menulis diary (H)                       %'),nl,
	write('%  11. readDiary  : Membaca isi diary (H)                   %'),nl,
	write('%  12. sleep      : Tidur selama 6 jam                      %'),nl,
	write('%  13. go_out     : Keluar dari House                       %'),nl,
	write('%  14. time       : Menampilkan hari dan jam                %'),nl,
	write('%  15. quest      : Menampilkan daftar quest                %'),nl,
	write('%  16. market     : Masuk ke Marketplace (M)                %'),nl,
	write('%  17. buy        : Berbelanja di Marketplace (M)           %'),nl,
	write('%  18. sell       : Menjual barang di Marketplace (M)       %'),nl,
	write('%  19. exit       : Keluar dari Marketplace (M)             %'),nl,
	write('%  20. displayInv : Menampilkan daftar barang di Inventory  %'),nl,
	write('%  21. ranch      : Menampilkan daftar ternak (R)           %'),nl,
	write('%  10. chicken    : Mengambil telur dari ayam (R)           %'),nl,
	write('%  11. cow        : Memerah susu dari sapi (R)              %'),nl,
	write('%  12. sheep      : Mencukur bulu domba (R(                 %'),nl,
	write('%  13. fish       : Memancing (Tepi danau [o])              %'),nl,
	write('%  14. plant      : Menanam tanaman (Tile kosong [-])       %'),nl,
	write('%  15. harvest    : Memanen tanaman (Fully grown plant [*]) %'),nl,
	write('%                                                           %'),nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%').

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

tidur(X):- time(T), NextT is T+X, NextT<24, retractall(time(_)), asserta(time(NextT)),retractall(fatigue(_)),asserta(fatigue(0)),update(X), updatePlant(6), !.
tidur(X):- time(T), NextT is mod(T+X,24), day(CurrDay), NextDay is CurrDay+1, retractall(day(_)), asserta(day(NextDay)),retractall(time(_)), asserta(time(NextT)),addfatigue(X),retractall(fatigue(_)),asserta(fatigue(0)),update(X), updatePlant(6),!.

addTime(X):- time(T), NextT is T+X, NextT<24, retractall(time(_)), asserta(time(NextT)),addfatigue(X),update(X), updatePlant(X), !.
addTime(X):- time(T), NextT is mod(T+X,24), day(CurrDay), NextDay is CurrDay+1, retractall(day(_)), asserta(day(NextDay)),retractall(time(_)), asserta(time(NextT)),addfatigue(X),update(X), updatePlant(X),!.

addGold(X) :- uang(Gold), Nextgold is Gold + X, retractall(uang(Gold)), asserta(uang(Nextgold)), !.
minGold(X) :- uang(Gold), X=<Gold, Nextgold is Gold - X, retractall(uang(Gold)), asserta(uang(Nextgold)), !.

addExp(_) :- lvlplayer(L), L =:= 3, write('Level player sudah maksimal.'), !.
addExp(X) :- exp(E), Nexp is E + X, lvlplayer(L), Nextl is 100+(100*L), Nexp < Nextl, retractall(exp(_E)), asserta(exp(Nexp)), nl, write('Anda mendapat '), write(X), write(' Exp player!'),!.
addExp(X) :- exp(E), lvlplayer(L), Nextl is 100+(100*L), Nexp is E + X - Nextl, Nextlvl is L + 1, retractall(exp(_E)), asserta(exp(Nexp)), retractall(lvlplayer(_L)), asserta(lvlplayer(Nextlvl)), write('Anda mendapat '), write(X), write(' Exp player dan mendapat kenaikan level player!'), C is 25*Nextlvl, addexpfish(C), addexpranch(C),!.

time:- day(D), time(T), write('Day '),write(D),write(' '),write(T),write(':00'),!.

status:- 	fatigue(F),
			fishexp(FISHEXP),fishlvl(FISHLVL),
			farmexp(FARMEXP), farmlvl(FARMLVL),
			ranchexp(RANCHEXP), ranchinglvl(RANCHLVL),
			lvlplayer(LEVEL), exp(E), uang(GOLD),
			writejob,nl,
			write('Fatigue       : '),write(F),nl,
			write('Level         : '),write(LEVEL),nl,
			write('Fishing level : '),write(FISHLVL),nl,
			write('Fishing exp   : '),write(FISHEXP),nl,
			write('Farming level : '),write(FARMLVL),nl,
			write('Farming exp   : '),write(FARMEXP),nl,
			write('Ranch level   : '),write(RANCHLVL),nl,
			write('Ranch exp     : '),write(RANCHEXP),nl,
			write('Exp           : '),write(E),nl,
			write('Gold          : '),write(GOLD), !.

addfatigue(X):- fatigue(F), NextF is F+X, retractall(fatigue(_)), asserta(fatigue(NextF)),!.

update(_):- day(D), D =:= 366, failgame,!.
update(_):- uang(G), G>=20000, sucessgame,!.
update(_):- fatigue(X), X>=48, nl,write('Cupang kelelahan karena belum tidur sehingga ia tertidur selama 12 jam'),nl,showfatigue,tidur(12),!.
update(_):- day(D), D =:= 92, retractall(season(_)), asserta(season(summer)).
update(_):- day(D), D =:= 183, retractall(season(_)), asserta(season(autumn)).
update(_):- day(D), D =:= 274, retractall(season(_)), asserta(season(winter)).
update(_):- alchemist(X,_),X=:=0, summonAlchemist.
update(X):- alchemist(1,B), NEXTB is B - X, retractall(alchemist(_,_)), asserta(alchemist(1,NEXTB)), NEXTB =< 0 , write('Alchemist sudah pergi meninggalkan market'), retractall(alchemist(_,_)),asserta(alchemist(0,0)).
update(_):-  \+ (season(winter)) ,gachahewan.
update(_):- !.

showfatigue:- 	write('    zz'),nl,
				write('  zz'),nl,
				write('o_ '),nl,
				write('|/\\'),nl.

failgame:- write('fail'), retractall(_),!.
successgame:- write('berhasil'),!.

/*=========================================================QUEST==================================================================================*/
quest:- loc(Y,X,L), L==q, playerpos(A,B), (Y\=A;X\=B), write('Quest hanya bisa diambil dan dilihat di Q'),!.
quest:- questlvl(1),write('Quest lvl 1:'),nl,write('Kumpulkan 5 carrot, 5 tuna, dan 5 telur'),fail.
quest:- questlvl(1),findQnt(carrot,X),findQnt(tuna,Y),findQnt(telur,Z),(X<5;Y<5;Z<5),!.
quest:- questlvl(1),write('Selamat, Anda berhasil menyelesaikan Quest lvl 1!!!'),nl,addExp(100), addGold(100),retractall(questlvl(_)),asserta(questlvl(2)),fail.
quest:- questlvl(2),write('Quest lvl 2:'),nl,write('Kumpulkan 10 corn, 10 tuna, dan 10 telur'),fail.
quest:- questlvl(2),findQnt(corn,X),findQnt(tuna,Y),findQnt(susu,Z), (X<10;Y<10;Z<10),!.
quest:- questlvl(2),nl,write('Selamat, Anda berhasil menyelesaikan Quest lvl 2!!!'),nl,addExp(100), addGold(200),retractall(questlvl(_)),asserta(questlvl(3)),fail.
quest:- questlvl(3),write('Quest lvl 3:'),nl,write('Kumpulkan 15 turnip, 15 salmon, dan 15 wol'),fail.
quest:- questlvl(3),findQnt(turnip,X),findQnt(salmon,Y),findQnt(wol,Z), (X<15;Y<15;Z<15),!.
quest:- questlvl(3),nl,write('Selamat, Anda berhasil menyelesaikan Quest lvl 3!!!'),nl,addExp(100), addGold(300),retractall(questlvl(_)),asserta(questlvl(4)),fail.
quest:- questlvl(4),write('Quest lvl 4:'),nl,write('Kumpulkan 20 cabbage, 20 salmon, dan 20 babi'),fail.
quest:- questlvl(4),findQnt(cabbage,X),findQnt(salmon,Y),findQnt(babi,Z), (X<20;Y<20;Z<20),!.
quest:- questlvl(4),nl,write('Selamat, Anda berhasil menyelesaikan Quest lvl 4!!!'),nl,addExp(100), addGold(400),retractall(questlvl(_)),asserta(questlvl(5)),fail.
quest:- questlvl(5),write('Quest lvl 5:'),nl,write('Kumpulkan 25 cabbage, 5 cupang, dan 25 wol'),fail.
quest:- questlvl(5),findQnt(cabbage,X),findQnt(cupang,Y),findQnt(wol,Z), (X<25;Y<5;Z<25),!.
quest:- questlvl(5),nl,write('Selamat, Anda berhasil menyelesaikan Seluruh Quest yang ada!!!'),nl,addExp(200), addGold(500),retractall(questlvl(_)),asserta(questlvl(6)),fail.
quest:- questlvl(5),write('Tidak ada Quest yang tersedia'),!.

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

getfish(X):- X=:=1, write('Selamat, Anda mendapatkan Cupang!!!'), addexpfish(5),addItemQnt(cupang,1),!.
getfish(X):- X=<10, write('Selamat, Anda mendapatkan Salmon'), addexpfish(3),addItemQnt(salmon,1),!.
getfish(_):- write('Selamat, Anda mendapatkan Tuna'),addexpfish(1),addItemQnt(tuna,1),!.

addexpfish(_):- fishlvl(LVL), LVL=:=3, write('Level fishing sudah maximal, Anda tidak lagi mendapat Exp memancing'),!.
addexpfish(X):- job(2),fishexp(EXP), NEXTEXP is EXP+(2*X), fishlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(fishexp(_)), asserta(fishexp(NEXTEXP)),nl,write('Anda mendapat '),XX is X*2,write(XX),write(' Exp fishing'),!.
addexpfish(X):- job(2),fishexp(EXP), fishlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+(2*X)-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(fishexp(_)), retractall(fishlvl(_)), asserta(fishexp(NEXTEXP)), asserta(fishlvl(NEXTLVL)),nl,write('Anda mendapat '),XX is X*2,write(XX),write(' Exp fishing'),!.
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

marketchoice(buy):-  !, write('Buy something'), nl, season(S), buymenu(S), market.
marketchoice(sell):- !,write('Sell something'),nl, sellmenu, market.
marketchoice(exit):- map,!.
marketchoice(potion):- alchemist(0,_), write('Alchemist sedang tidak berada di market'),nl,market,!.
marketchoice(potion):- alchemist(1,_), buypotion,market,!.
marketchoice(_):- write('invalid input'),nl,market,!.

buymenu(spring) :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('%                                           %'), nl,
	write('%           Mau beli apa hari ini?          %'), nl,
	write('%               Spring Edition              %'), nl,
	write('%                                           %'), nl,
	write('% 1. Shovel lvl 1       : 25                %'), nl,
	write('% 2. Shovel lvl 2       : 500               %'), nl,
	write('% 3. Fishing rod lvl 1  : 25                %'), nl,
	write('% 4. Fishing rod lvl 2  : 750               %'), nl,
	write('% 5. Rancher lvl 1      : 50                %'), nl,
	write('% 6. Rancher lvl 2      : 500               %'), nl,
	write('% 7. Seed Carrot        : 5 gold            %'), nl,
	write('% 8. Seed Corn          : 10 gold           %'), nl,
	write('% 9. Seed Turnip        : 15 gold           %'), nl,
	write('% 10. Seed Cabbage      : 20 gold           %'), nl,
	write('% 11. Chicken Old       : 50 gold           %'), nl,
	write('% 12. Babi Old          : 200 gold          %'), nl,
	write('% 13. Sapi Old          : 150 gold          %'), nl,
	write('% 14. Domba Old         : 100 gold          %'), nl,
	write('%                                           %'), nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('Masukkan nomor item yang ingin dibeli : '), read(X),
	(((X>=1, X=<6), Y=1); ((X>=7), write('Masukkan jumlah item yang ingin dibeli : '), read(Y))),
	buy(X,Y,spring), !.

buymenu(summer) :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('%                                           %'), nl,
	write('%           Mau beli apa hari ini?          %'), nl,
	write('%               Summer Edition              %'), nl,
	write('%                                           %'), nl,
	write('% 1. Shovel lvl 1       : 25                %'), nl,
	write('% 2. Shovel lvl 2       : 500               %'), nl,
	write('% 3. Fishing rod lvl 1  : 25                %'), nl,
	write('% 4. Fishing rod lvl 2  : 750               %'), nl,
	write('% 5. Rancher lvl 1      : 50                %'), nl,
	write('% 6. Rancher lvl 2      : 500               %'), nl,
	write('% 7. Seed Corn      : 10 gold               %'), nl,
	write('% 8. Seed Turnip    : 15 gold               %'), nl,
	write('% 9. Chicken Old    : 50 gold              %'), nl,
	write('% 10. Babi Old       : 200 gold             %'), nl,
	write('% 11. Sapi Old       : 150 gold             %'), nl,
	write('% 12. Domba Old      : 100 gold             %'), nl,
	write('%                                           %'), nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('Masukkan nomor item yang ingin dibeli : '), read(X),
	(((X>=1, X=<6), Y=1); ((X>=7), write('Masukkan jumlah item yang ingin dibeli : '), read(Y))),
	buy(X,Y,summer), !.

buymenu(autumn) :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('%                                           %'), nl,
	write('%           Mau beli apa hari ini?          %'), nl,
	write('%               Autumn Edition              %'), nl,
	write('%                                           %'), nl,
	write('% 1. Shovel lvl 1       : 25                %'), nl,
	write('% 2. Shovel lvl 2       : 500               %'), nl,
	write('% 3. Fishing rod lvl 1  : 25                %'), nl,
	write('% 4. Fishing rod lvl 2  : 750               %'), nl,
	write('% 5. Rancher lvl 1      : 50                %'), nl,
	write('% 6. Rancher lvl 2      : 500               %'), nl,
	write('% 7. Seed Corn          : 10 gold           %'), nl,
	write('% 8. Seed Turnip        : 15 gold           %'), nl,
	write('% 9. Seed Cabbage       : 20 gold           %'), nl,
	write('% 10. Chicken Old       : 50 gold           %'), nl,
	write('% 11. Babi Old          : 200 gold          %'), nl,
	write('% 12. Sapi Old          : 150 gold          %'), nl,
	write('% 13. Domba Old         : 100 gold          %'), nl,
	write('%                                           %'), nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('Masukkan nomor item yang ingin dibeli : '), read(X),
	(((X>=1, X=<6), Y=1); ((X>=7), write('Masukkan jumlah item yang ingin dibeli : '), read(Y))),
	buy(X,Y,autumn), !.

buymenu(winter) :-
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('%                                           %'), nl,
	write('%           Mau beli apa hari ini?          %'), nl,
	write('%               Winter Edition              %'), nl,
	write('%                                           %'), nl,
	write('% 1. Shovel lvl 1       : 25                %'), nl,
	write('% 2. Shovel lvl 2       : 500               %'), nl,
	write('% 3. Fishing rod lvl 1  : 25                %'), nl,
	write('% 4. Fishing rod lvl 2  : 750               %'), nl,
	write('% 5. Rancher lvl 1      : 50                %'), nl,
	write('% 6. Rancher lvl 2      : 500               %'), nl,
	write('% 7. Seed Turnip        : 15 gold           %'), nl,
	write('% 8. Seed Cabbage       : 20 gold           %'), nl,
	write('% 9. Chicken Old        : 50 gold           %'), nl,
	write('% 10. Babi Old          : 200 gold          %'), nl,
	write('% 11. Sapi Old          : 150 gold          %'), nl,
	write('% 12. Domba Old         : 100 gold          %'), nl,
	write('%                                           %'), nl,
	write('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'), nl,
	write('Masukkan nomor item yang ingin dibeli : '), read(X),
	(((X>=1, X=<6), Y=1); ((X>=7), write('Masukkan jumlah item yang ingin dibeli : '), read(Y))),
	buy(X,Y,winter), !.

buy(Code, _Num, _) :- uang(X), Code=:=1, X>=25, Money=25, minGold(Money), retractall(shovel(_)), asserta(shovel(1)), write('Membeli Shovel Level 1'), nl, !.
buy(Code, _Num, _) :- uang(X), Code=:=2, X>=500, Money=500, minGold(Money), retractall(shovel(_)), asserta(shovel(2)), write('Membeli Shovel Level 2'), nl, !.
buy(Code, _Num, _) :- uang(X), Code=:=3, X>=25, Money=25, minGold(Money), retractall(fishrod(_)), asserta(fishrod(1)), write('Membeli Fishing Rod Level 1'), nl, !.
buy(Code, _Num, _) :- uang(X), Code=:=4, X>=750, Money=750, minGold(Money), retractall(fishrod(_)), asserta(fishrod(2)), write('Membeli Fishing Rod Level 2'), nl, !.
buy(Code, _Num, _) :- uang(X), Code=:=5, X>=50, Money=50, minGold(Money), retractall(ranchlvl(_)), asserta(ranchlvl(1)), write('Membeli Rancher Level 1'), nl, !.
buy(Code, _Num, _) :- uang(X), Code=:=6, X>=500, Money=500, minGold(Money), retractall(ranchlvl(_)), asserta(ranchlvl(2)), write('Membeli Rancher Level 2'), nl, !.

buy(Code, Num, spring) :- uang(X), Code=:=7, Money is 5*Num, X >= Money,  addItemQnt(carrot, Num) ,minGold(Money), write('Membeli '), write(Num), write(' carrot!'), nl, !.
buy(Code, Num, spring) :- uang(X), Code=:=8, Money is 10*Num, X >= Money, addItemQnt(corn, Num),minGold(Money), write('Membeli '), write(Num), write(' corn!'), nl, !.
buy(Code, Num, spring) :- uang(X), Code=:=9, Money is 15*Num, X >= Money, addItemQnt(turnip, Num),minGold(Money), write('Membeli '), write(Num), write(' turnip!'), nl, !.
buy(Code, Num, spring) :- uang(X), Code=:=10, Money is 20*Num, X >= Money, addItemQnt(cabbage, Num), minGold(Money),write('Membeli '), write(Num), write(' cabbage!'), nl, !.

buy(Code, _Num, spring) :- uang(_X), Code=:=11, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=11, ranchlvl(P), P > 0, W is Num*50, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=11, ranchlvl(P), P > 0, W is Num*50, X >= W, minGold(W), addchicken(Num, _Z), write('Membeli '), write(Num), write(' ayam!'), nl, !.
buy(Code, _Num, spring) :- uang(_X), Code=:=12, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=12, ranchlvl(P), P > 0, W is Num*200, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=12, ranchlvl(P), P > 0, W is Num*200, X >= W, minGold(W), addpig(Num, _Z), write('Membeli '), write(Num), write(' babi!'), nl, !.
buy(Code, _Num, spring) :- uang(_X), Code=:=13, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=13, ranchlvl(P), P > 1, W is Num*150, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=13, ranchlvl(P), P > 1, W is Num*150, X >= W, minGold(W), addcow(Num, _Z), write('Membeli '), write(Num), write(' sapi!'), nl, !.
buy(Code, _Num, spring) :- uang(_X), Code=:=14, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=14, ranchlvl(P), P > 1, W is Num*100, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=14, ranchlvl(P), P > 1, W is Num*100, X >= W, minGold(W), addsheep(Num, _Z), write('Membeli '), write(Num), write(' domba!'), nl, !.

buy(Code, Num, summer) :- uang(X), Code=:=7, Money is 10*Num, X >= Money, addItemQnt(corn, Num), minGold(Money), write('Membeli '), write(Num), write(' corn!'), nl, !.
buy(Code, Num, summer) :- uang(X), Code=:=8, Money is 15*Num, X >= Money, addItemQnt(turnip, Num), minGold(Money), write('Membeli '), write(Num), write(' turnip!'), nl, !.

buy(Code, _Num, summer) :- uang(_X), Code=:=9, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=9, ranchlvl(P), P > 0, W is Num*50, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=9, ranchlvl(P), P > 0, W is Num*50, X >= W, minGold(W), addchicken(Num, _Z), write('Membeli '), write(Num), write(' ayam!'), nl, !.
buy(Code, _Num, summer) :- uang(_X), Code=:=10, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=10, ranchlvl(P), P > 0, W is Num*200, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=10, ranchlvl(P), P > 0, W is Num*200, X >= W, minGold(W), addpig(Num, _Z), write('Membeli '), write(Num), write(' babi!'), nl, !.
buy(Code, _Num, summer) :- uang(_X), Code=:=12, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=12, ranchlvl(P), P > 1, W is Num*150, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=12, ranchlvl(P), P > 1, W is Num*150, X >= W, minGold(W), addcow(Num, _Z), write('Membeli '), write(Num), write(' sapi!'), nl, !.
buy(Code, _Num, summer) :- uang(_X), Code=:=13, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=13, ranchlvl(P), P > 1, W is Num*100, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, summer) :- uang(X), Code=:=13, ranchlvl(P), P > 1, W is Num*100, X >= W, minGold(W), addsheep(Num, _Z), write('Membeli '), write(Num), write(' domba!'), nl, !.

buy(Code, Num, autumn) :- uang(X), Code=:=7, Money is 10*Num, X >= Money, addItemQnt(corn, Num), minGold(Money), write('Membeli '), write(Num), write(' corn!'), nl, !.
buy(Code, Num, autumn) :- uang(X), Code=:=8, Money is 15*Num, X >= Money, addItemQnt(turnip, Num), minGold(Money), write('Membeli '), write(Num), write(' turnip!'), nl, !.
buy(Code, Num, autumn) :- uang(X), Code=:=9, Money is 20*Num, X >= Money, addItemQnt(cabbage, Num), minGold(Money), write('Membeli '), write(Num), write(' cabbage!'), nl, !.

buy(Code, _Num, autumn) :- uang(_X), Code=:=10, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=10, ranchlvl(P), P > 0, W is Num*50, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=10, ranchlvl(P), P > 0, W is Num*50, X >= W, minGold(W), addchicken(Num, _Z), write('Membeli '), write(Num), write(' ayam!'), nl, !.
buy(Code, _Num, autumn) :- uang(_X), Code=:=11, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=11, ranchlvl(P), P > 0, W is Num*200, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=11, ranchlvl(P), P > 0, W is Num*200, X >= W, minGold(W), addpig(Num, _Z), write('Membeli '), write(Num), write(' babi!'), nl, !.
buy(Code, _Num, autumn) :- uang(_X), Code=:=12, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=12, ranchlvl(P), P > 1, W is Num*150, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=12, ranchlvl(P), P > 1, W is Num*150, X >= W, minGold(W), addcow(Num, _Z), write('Membeli '), write(Num), write(' sapi!'), nl, !.
buy(Code, _Num, autumn) :- uang(_X), Code=:=13, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=13, ranchlvl(P), P > 1, W is Num*100, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, autumn) :- uang(X), Code=:=13, ranchlvl(P), P > 1, W is Num*100, X >= W, minGold(W), addsheep(Num, _Z), write('Membeli '), write(Num), write(' domba!'), nl, !.

buy(Code, Num, spring) :- uang(X), Code=:=7, Money is 15*Num, X >= Money, addItemQnt(turnip, Num), minGold(Money), write('Membeli '), write(Num), write(' turnip!'), nl, !.
buy(Code, Num, spring) :- uang(X), Code=:=8, Money is 20*Num, X >= Money, addItemQnt(cabbage, Num), minGold(Money), write('Membeli '), write(Num), write(' cabbage!'), nl, !.

buy(Code, _Num, spring) :- uang(_X), Code=:=9, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=9, ranchlvl(P), P > 0, W is Num*50, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=9, ranchlvl(P), P > 0, W is Num*50, X >= W, minGold(W), addchicken(Num, _Z), write('Membeli '), write(Num), write(' ayam!'), nl, !.
buy(Code, _Num, spring) :- uang(_X), Code=:=10, ranchlvl(P), P < 1, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=10, ranchlvl(P), P > 0, W is Num*200, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=10, ranchlvl(P), P > 0, W is Num*200, X >= W, minGold(W), addpig(Num, _Z), write('Membeli '), write(Num), write(' babi!'), nl, !.
buy(Code, _Num, spring) :- uang(_X), Code=:=11, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=11, ranchlvl(P), P > 1, W is Num*150, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=11, ranchlvl(P), P > 1, W is Num*150, X >= W, minGold(W), addcow(Num, _Z), write('Membeli '), write(Num), write(' sapi!'), nl, !.
buy(Code, _Num, spring) :- uang(_X), Code=:=12, ranchlvl(P), P < 2, write('Silakan naikkan level ranch anda untuk membeli ternak ini!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=12, ranchlvl(P), P > 1, W is Num*100, X < W, write('Uang anda tidak cukup!'), !.
buy(Code, Num, spring) :- uang(X), Code=:=12, ranchlvl(P), P > 1, W is Num*100, X >= W, minGold(W), addsheep(Num, _Z), write('Membeli '), write(Num), write(' domba!'), nl, !.

addchicken(0, X) :- retractall(chickenlist(_)), asserta(chickenlist(X)), !.
addchicken(Num, X) :- day(Y), append(X,[Y],Z), Nextnum is Num - 1, addchicken(Nextnum, Z), !.
addpig(0, X) :- retractall(piglist(_)), asserta(piglist(X)), !.
addpig(Num, X) :- day(Y), append(X,[Y],Z), Nextnum is Num - 1, addpig(Nextnum, Z), !.
addcow(0, X) :- retractall(cowlist(_)), asserta(cowlist(X)), !.
addcow(Num, X) :- day(Y), append(X,[Y],Z), Nextnum is Num - 1, addcow(Nextnum, Z), !.
addsheep(0, X) :- retractall(sheeplist(_)), asserta(sheeplist(X)), !.
addsheep(Num, X) :- day(Y), append(X,[Y],Z), Nextnum is Num - 1, addsheep(Nextnum, Z), !.


sellmenu :- write('Mau menjual hewan ternak ? (ya/tidak) : '), read(Ans), sellpilihan(Ans).

/* Jual hewan */
sellpilihan(Ans) :- Ans==ya, write('Masukkan nama hewan yang hendak dijual : '), read(X),
					write('Masukkan jumlah item yang hendak dijual : '), read(Y), sellternak(X,Y,_Num), !.
/* Jual yang di Inventory */
sellpilihan(Ans) :- Ans==tidak, displayInv, write('Masukkan nama item yang hendak dijual : '), read(X),
					write('Masukkan jumlah item yang hendak dijual : '), read(Y), findQnt(X,Num), sellitem(X,Y,Num), !.

sellitem(X,Y,Num) :- Y =< Num, sell(X,Y), !.
sellitem(X,Y,Num) :- Y > Num, sell(X,Num), !.

sellternak(X,Y,Num) :- X==chicken, chickenlist(W), numchicken(W,Num), Y > Num, sell(X,Num), !.
sellternak(X,Y,Num) :- X==chicken, chickenlist(W), numchicken(W,Num), Y =< Num, sell(X,Y), !.
sellternak(X,Y,Num) :- X==pig, piglist(W), numpig(W,Num), Y > Num, sell(X,Num), !.
sellternak(X,Y,Num) :- X==pig, piglist(W), numpig(W,Num), Y =< Num, sell(X,Y), !.
sellternak(X,Y,Num) :- X==cow, cowlist(W), numcow(W,Num), Y > Num, sell(X,Num), !.
sellternak(X,Y,Num) :- X==cow, cowlist(W), numcow(W,Num), Y =< Num, sell(X,Y), !.
sellternak(X,Y,Num) :- X==sheep, sheeplist(W), numsheep(W,Num), Y > Num, sell(X,Num), !.
sellternak(X,Y,Num) :- X==sheep, sheeplist(W), numsheep(W,Num), Y =< Num, sell(X,Y), !.

sell(X,Y) :- deleteitem(X,Y), X==carrot, Money=5*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==corn, Money=10*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==turnip, Money=15*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==cabbage, Money=25*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==telur, Money=10*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==susu, Money=15*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==wool, Money=20*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==tuna, Money=20*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==salmon, Money=30*Y, addGold(Money), !.
sell(X,Y) :- deleteitem(X,Y), X==cupang, Money=50*Y, addGold(Money), !.
sell(X,Y) :- X==chicken, deletechicken(Y), Money=30*Y, addGold(Money), !.
sell(X,Y) :- X==pig, deletepig(Y), Money=150*Y, addGold(Money), !.
sell(X,Y) :- X==cow, deletecow(Y), Money=100*Y, addGold(Money), !.
sell(X,Y) :- X==sheep, deletesheep(Y), Money=75*Y, addGold(Money), !.

deletechicken(0, X) :- retractall(chickenlist(_)), asserta(chickenlist(X)) ,!.
deletechicken(Num, [_H|T]) :- Nextnum is Num - 1, deletechicken(Nextnum, T), ! .
deletechicken(Num) :- chickenlist(X), deletechicken(Num, X), !.
deletepig(0, X) :- retractall(piglist(_)), asserta(piglist(X)) ,!.
deletepig(Num, [_H|T]) :- Nextnum is Num - 1, deletepig(Nextnum, T), ! .
deletepig(Num) :- piglist(X), deletepig(Num, X), !.
deletecow(0, X) :- retractall(cowlist(_)), asserta(cowlist(X)) ,!.
deletecow(Num, [_H|T]) :- Nextnum is Num - 1, deletecow(Nextnum, T), ! .
deletecow(Num) :- cowlist(X), deletecow(Num, X), !.
deletesheep(0, X) :- retractall(sheeplist(_)), asserta(sheeplist(X)) ,!.
deletesheep(Num, [_H|T]) :- Nextnum is Num - 1, deletesheep(Nextnum, T), ! .
deletesheep(Num) :- sheeplist(X), deletesheep(Num, X), !.

/*================================================HOUSE=============================================================================================*/
house:- loc(Y,X,L),L==h, playerpos(A,B), (Y\=A;X\=B), write('Cupang tidak berada di rumah!'),!.
house:-	write('              '),nl,
		write('  o '),nl,
		write(' /|\\    ________|'),nl,
		write(' / \\   |        |'),nl,
		write('i want to :'),nl,write('- sleep'),nl,write('- go_out'),nl, write('- writeDiary'),nl,write('- readDiary'),nl,read(X),nl,housechoice(X),!.

housechoice(go_out):- map,!.
housechoice(writeDiary) :- wdiary,!,house.
housechoice(readDiary) :- !,rdiary,house.
housechoice(sleep):-!,
		tidur(6),
		write('Cupang slept for 6 hours'),nl,
		randomize,random(0,11,Chance),
		putritidur(Chance),!.
housechoice(_):- write('invalid input'),house,!.



putritidur(Chance) :-
	Chance =:= 1,
	write('Putri Tidur timbul pada bayangan Anda dan menawarkan membonceng ke mana pun dalam peta'),nl,
	write('Apakah Anda mau dibonceng putri tidur? (y/n)'),nl,
	read(Opt),
	prompttransport(Opt),
	!.

	putritidur(Chance) :-
		Chance =\= 1,
		house,
		!.

prompttransport(Opt) :-
	Opt == y,
	write('Masukkan koordinat yang anda ingin capai'),nl,
	write('Koordinat X : '),
	read(X),
	write('Koordinat Y : '),
	read(Y),
	transport(X,Y),!.

prompttransport(Opt) :-
	Opt == n,
	write('Putri Tidur sedih diusir Anda'),nl,house,!.

transport(X,Y) :-
	!,X < 11, X > 0, Y < 11, X > 0, \+ (loc(_,X,A),A=='o'),
	retractall(playerpos(_,_)),assertz(playerpos(Y,X)), write('Putri Tidur langsung membonceng Anda ke lokasi tersebut'),nl.

transport(X,Y) :-
	!,X < 11, X > 0, Y < 11, X > 0, loc(_,X,A), A=='o', write('Putri Tidur tidak mau menceburkan Anda ke air'),nl,house.

transport(X,Y) :-
	!,(X > 10 ; X < 1 ; Y > 10; Y < 1),
	write('Putri Tidur kesal Anda meminta yang mustahil lalu pergi meninggalkan Anda'),house,nl.



/* membuka opsi  diary */
wdiary :-
		day(Day),
		write('Write your diary for Day '),
		write(Day),nl,
		read(Isi),
		diary(Diary),
		writediary(Diary,Isi,Day,Hasil),
		retractall(diary(_)),
		assertz(diary(Hasil)).

writediary([],Isi,Day,[[Day, Isi]]).
writediary([H|T],Isi,Day,[H|Hasil]) :-
		writediary(T,Isi,Day,Hasil),!.

rdiary :-
		diary(Diary),
		printdiary(Diary),
		write('Which log do you want to read?'),nl,
		read(Search),
		readdiary(Diary,Search),!.

printdiary([]) :-
		write('You have no writings in your diary'),!,fail.
printdiary(Diary) :-
		printdiarynext(Diary,1),!.
printdiarynext([],_) :- write('End of Diary List'),nl.
printdiarynext([H|T],N) :-
		isiDiary(H,Day,_),
		write(N),
		write('. Day '),
		write(Day),nl,
		Next is N+1,
		printdiarynext(T,Next),!.

readdiary([],Search) :-
		Search < 1,
		write('You have no record of this day'),!,fail.
readdiary([H|_],CSearch) :-
		isiDiary(H,Day,Isi),
		CSearch =:= 1,
		write('Here is the entry for Day '),
		write(Day),nl,
		write(Isi),!.

readdiary([H|T],CSearch) :-
		isiDiary(H,_,_),
		CSearch =\= 1,
		NSearch is CSearch -1,
		readdiary(T,NSearch),!.
isiDiary([Day,Isi],Day,Isi).


/*=====================================================================Item Inventory======================================================================*/
/* menambahkan list dengan element Y, Y berupa [Item,Qnt] */
addlist(Y) :-
	li(X),
	append(X,[Y],Res),
	retractall(li(_)),
	assertz(li(Res)).

/* Add Item dengan nama Item, dengan Quantity Qnt ke li : Jika Item pada li maka jumlah diubah, mengappend jika tidak ada */
addItemQnt(_,Qnty):-
  invcurrcap(Cap),
  Tot is Qnty + Cap,
  Tot > 100, !,
  write('Inventory Anda Penuh'),fail.
addItemQnt(Item,Qnty):-
	li(X),
  invcurrcap(Cap),
  Tot is Qnty + Cap,
	addItemQnt(X,Item,Qnty,Added),
	retractall(li(_)),
	assertz(li(Added)),
  retractall(invcurrcap(_)),
  assertz(invcurrcap(Tot)).
addItemQnt([],Item,Qnty,[NewItem]) :-
	eleitem(NewItem,Item,[Qnty])
	,!.
addItemQnt([H|T],Item,Qnty,[Added|T]) :-
	eleitem(H,Targ,[Val]),
	Item == Targ,
	NewQnt is Val+Qnty,
	eleitem(Added,Targ,[NewQnt]),!.
addItemQnt([H|T],Item,Qnty,[H|Res]) :-
	eleitem(H,Targ,_),
	Item \== Targ,
	addItemQnt(T,Item,Qnty,Res),!.

/* Mencari Quantity dari Item */
findQnt(Item,Qnt) :-
	li(X),
	findQnt(X, Item,Qnt).
findQnt([H|_], Item,N) :-
	eleitem(H,M,[N]),
	M == Item,!.
findQnt([H|T], Item,Qnt) :-
	eleitem(H,M,_),
	M \== Item,
	findQnt(T,Item,Qnt).
findQnt([], _, 0).

/* Mengurangi item dengan nama Item dan quantity Qnty */
/* Jika Item pada li dan Qnty < jumlah item, kurangi jumlah item dengan Qnty */
/* Jika Item pada li dan Qnty = jumlah item, menghilangkan item dari li */
/* Jika tidak ditemui atau Qnty > jumlah item, menampilkan pesan kesalahan */
deleteitem(_,Qnty) :-
	!,
	invcurrcap(Cap),
  Tot is Cap - Qnty,
  Tot < 0, write('Quantity not met'),fail.
deleteitem(Item,Qnty) :-
	li(X),
	deleteitem(X,Item,Qnty,Deleted, Cap),
  retractall(invcurrcap(_)),
	assertz(invcurrcap(Cap)),
	retractall(li(_)),
	assertz(li(Deleted)).
deleteitem([],_,_,[],Cap) :- !,fail,write('Anda Tidak Memiliki Item Tersebut'),invcurrcap(Cap).
deleteitem([H|T],Item,Qnty,[Subtracted|T],NewCap) :-
	eleitem(H,Targ,[Val]),
	Targ == Item,
	Qnty < Val,
	NewN is Val-Qnty,
  invcurrcap(Cap),
  NewCap is Cap - Qnty,
	eleitem(Subtracted,Targ,[NewN]),
	!.
deleteitem([H|T],Item,Qnty,T,NewCap) :-
	eleitem(H,Targ,[Val]),
	Targ == Item,
	Qnty == Val,
  invcurrcap(Cap),
  NewCap is Cap - Qnty,
	!.
deleteitem([H|T],Item,Qnty,[H|T],Cap) :-
	!,
	eleitem(H,Targ,[Val]),
	Targ == Item,
	Qnty > Val,
  write('Anda Tidak Memiliki Cukup Barang'),fail,
  invcurrcap(Cap).
deleteitem([H|T],Item,Qnty,[H|Res],Cap) :-
	eleitem(H,Targ,_),
	Targ \== Item,
	deleteitem(T,Item,Qnty,Res,Cap),
	!.

/* Display Inventory*/
displayInv :-
  li([]),!,
  write('Empty Inventory'),fail.

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
displayInvNext([],_) :- !.

eleitem([Item|Qnty],Item,Qnty).

/*======================FARMER============================*/
plant :- shovel(X), X=:=0, write('Anda harus memiliki shovel untuk menggali tanah!'), !.
plant :- playerpos(Y,X), loc(Y,X,A), A==m, write('Anda tidak dapat menanam pada area M'), nl, !.
plant :- playerpos(Y,X), loc(Y,X,A), A==h, write('Anda tidak dapat menanam pada area H'), nl, !.
plant :- playerpos(Y,X), loc(Y,X,A), A==r, write('Anda tidak dapat menanam pada area R'), nl, !.
plant :- showplanting, write('Mari kita bercocok tanam!'), nl, write('Masukkan pilihan seed yang ditanam (1:Carrot, 2:Corn, 3:Turnip, 4:Cabbage) : '), read(X), planting(X), !.

/* Time Planting 6 (shovel 1) */
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
					Seed =:= 1, findQnt(carrot, Num), Num>=1, deleteitem(carrot, 1), addPlant(Y,X,72,carrot), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
					Seed =:= 2, findQnt(corn, Num), Num>=1, deleteitem(corn, 1), addPlant(Y,X,96,corn), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
					Seed =:= 3, findQnt(turnip, Num), Num>=1, deleteitem(turnip, 1), addPlant(Y,X,120,turnip), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=1, addTimePlanting(6),
					Seed =:= 4, findQnt(cabbage, Num), Num>=1, deleteitem(cabbage, 1), addPlant(Y,X,144,cabbage), !.

/* Time Planting 4 (shovel 2) */
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
					Seed =:= 1, findQnt(carrot, Num), Num>=1, deleteitem(carrot, 1), addPlant(Y,X,72,carrot), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
					Seed =:= 2, findQnt(corn, Num), Num>=1, deleteitem(corn, 1), addPlant(Y,X,96,corn), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
					Seed =:= 3, findQnt(turnip, Num), Num>=1, deleteitem(turnip, 1), addPlant(Y,X,120,turnip), !.
planting(Seed) :- 	playerpos(Y, X), shovel(C), C=:=2, addTimePlanting(4),
					Seed =:= 4, findQnt(cabbage, Num), Num>=1, deleteitem(cabbage, 1), addPlant(Y,X,144,cabbage), !.

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
addPlant(Ypos,Xpos,N,Type) :-	liPlant(X),
								append(X,[[Ypos,Xpos,N,Type]],Res),
								retractall(liPlant(_)),
								assertz(liPlant(Res)).

/* CARI DI LIST. KALAU KETEMU DI LIST DAN TIMENYA masih >= 1, B=1, KALAU TIME = 0, B=2. KALAU TIMENYA -1, jadi B=3, KALAU -2, delete from list, balikin jadi 0  */
findPlant(A,B) :-	liPlant(X),
					findPlant(X,A,B).
findPlant([],_,_) :- 	retractall(isPlant(_)),
						asserta(isPlant(0)),
						retractall(plantType(_)),
						asserta(plantType(none)),!.
findPlant([H|_],A,B) :-	elePlant(H,M,[N,O,_]),
						M==A, N==B, O>=1,
						retractall(isPlant(_)),
						asserta(isPlant(1)),
						retractall(plantType(_)),
						asserta(plantType(growing)),!.
findPlant([H|_],A,B) :-	elePlant(H,M,[N,O,Type]),
						M==A, N==B, O<(1), O>(-24),
						retractall(isPlant(_)),
						asserta(isPlant(2)),
						retractall(plantType(_)),
						asserta(plantType(Type)),!.
findPlant([H|_],A,B) :-	elePlant(H,M,[N,O,_]),
						M==A, N==B, O=<(-25),
						retractall(isPlant(_)),
						asserta(isPlant(0)),
						retractall(plantType(_)),
						asserta(plantType(wither)),
						delPlant(A,B),!.
findPlant([H|T],A,B) :-	elePlant(H,M,[N,_,_]),
						(M\==A; N\==B),
						findPlant(T,A,B).

/* KURANGI WAKTUNYA SEMUA -W */
updatePlant(W) :-	liPlant(X),
					updatePlant(X,[],W).
updatePlant([],Up,_) :- retractall(liPlant(_)),
						assertz(liPlant(Up)), !.
updatePlant([H|T],Up,W) :-	elePlant(H,_,[_,O,_]),
							O=<(-25), updatePlant(T,Up,W).
updatePlant([H|T],Up,W) :-	elePlant(H,M,[N,O,Type]),
							Onew is O-W,
							O>(-25), updatePlant(T,[[M,N,Onew,Type]|Up],W).

elePlant([H|T],H,T).

/* HARVEST PLANT */
delPlant(A,B) :-	liPlant(X),
					delPlant(X,A,B,[[]]).
delPlant([],_,_,Del) :- retractall(liPlant(_)),
						assertz(liPlant(Del)),
						retractall(plantType(_)),
						asserta(plantType(none)), !.
delPlant([H|T],A,B,Del) :-	elePlant(H,M,[N,_,_]),
							M==A, N==B,
							delPlant(T,A,B,Del).
delPlant([H|T],A,B,Del) :-	elePlant(H,M,[N,_,_]),
							(M\==A; N\==B),
							delPlant(T,A,B,[H|Del]).

harvest :- playerpos(Y,X), findPlant(Y,X), plantType(B), B==none, write('Tidak ada yang dapat dipanen'), nl, !.
harvest :- playerpos(Y,X), findPlant(Y,X), plantType(B), B==growing, write('Tidak bisa memanen tanaman yang belum siap dipanen!'), nl, !.
harvest :- playerpos(Y,X), findPlant(Y,X), plantType(B), B==carrot, random(1,5,Nplant), addItemQnt(B,Nplant), delPlant(Y,X), addexpfarm(2), write('Selamat! Anda memanen '), write(' wortel'), nl, !.
harvest :- playerpos(Y,X), findPlant(Y,X), plantType(B), B==corn, random(1,5,Nplant), addItemQnt(B,Nplant), delPlant(Y,X), addexpfarm(4), write('Selamat! Anda memanen '), write(' corn'), nl, !.
harvest :- playerpos(Y,X), findPlant(Y,X), plantType(B), B==turnip, random(1,5,Nplant), addItemQnt(B,Nplant), delPlant(Y,X), addexpfarm(8), write('Selamat! Anda memanen '), write(' turnip'), nl, !.
harvest :- playerpos(Y,X), findPlant(Y,X), plantType(B), B==cabbage, random(1,5,Nplant), addItemQnt(B,Nplant), delPlant(Y,X), addexpfarm(16), write('Selamat! Anda memanen '), write(' cabbage'), nl, !.

addexpfarm(_):- farmlvl(LVL), LVL=:=3, write('Level farming sudah maximal, Anda tidak lagi mendapat Exp farming'), nl, !.
addexpfarm(X):- job(1),farmexp(EXP), NEXTEXP is EXP+(2*X), farmlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(farmexp(_)), asserta(farmexp(NEXTEXP)),nl,write('Anda mendapat '),XX is X*2,write(XX),write(' Exp farming'), nl, !.
addexpfarm(X):- job(1),farmexp(EXP), farmlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+(2*X)-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(farmexp(_)), retractall(farmlvl(_)), asserta(farmexp(NEXTEXP)), asserta(farmlvl(NEXTLVL)),nl,write('Anda mendapat '),XX is X*2,write(XX),write(' Exp farming'),nl,!.
addexpfarm(X):- farmexp(EXP), NEXTEXP is EXP+X, farmlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(farmexp(_)), asserta(farmexp(NEXTEXP)),nl,write('Anda mendapat '),write(X),write(' Exp farming'),nl,!.
addexpfarm(X):- farmexp(EXP), farmlvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+X-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(farmexp(_)), retractall(farmlvl(_)), asserta(farmexp(NEXTEXP)), asserta(farmlvl(NEXTLVL)),nl,write('Anda mendapat '),write(X),write(' Exp farming'),nl,!.

/*===================RANCHER============================*/

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
	write(' o      '),nl,
	write('/|\\ #   ,,__') ,nl,
	write('/ \\ # c''''   )? '),nl,
	write('    #   '''''''' '),nl,
	write('Selamat datang di peternakan! Kamu punya:'),nl,
	printchicken,
	printpig,
	printcow,
	printsheep,
	nl,nl, write('Apa yang mau kamu lakukan?'), nl,
	write('1. chicken'), nl,
	write('2. cow'), nl,
	write('3. sheep'), nl,
	read(Choice), ranch(Choice), !.

ranch(Choice) :- Choice == chicken, chicken, !.
ranch(Choice) :- Choice == cow, cow, !.
ranch(Choice) :- Choice == sheep, sheep, !.


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
addexpranch(X):- job(3),ranchexp(EXP), NEXTEXP is EXP+(2*X), ranchinglvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(ranchexp(_)), asserta(ranchexp(NEXTEXP)),nl,write('Anda mendapat '),XX is X*2,write(XX),write(' Exp ranching'),!.
addexpranch(X):- job(3),ranchexp(EXP), ranchinglvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+(2*X)-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(ranchexp(_)), retractall(ranchinglvl(_)), asserta(ranchexp(NEXTEXP)), asserta(ranchinglvl(NEXTLVL)),nl,write('Anda mendapat '),XX is X*2,write(XX),write(' Exp ranching'),!.
addexpranch(X):- ranchexp(EXP), NEXTEXP is EXP+X, ranchinglvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP<NEXTLVLEXP, retractall(ranchexp(_)), asserta(ranchexp(NEXTEXP)),nl,write('Anda mendapat '),write(X),write(' Exp ranching'),!.
addexpranch(X):- ranchexp(EXP), ranchinglvl(LVL), NEXTLVLEXP is 100+(100*LVL), NEXTEXP is EXP+X-NEXTLVLEXP, NEXTLVL is LVL+1, retractall(ranchexp(_)), retractall(ranchinglvl(_)), asserta(ranchexp(NEXTEXP)), asserta(ranchinglvl(NEXTLVL)),nl,write('Anda mendapat '),write(X),write(' Exp ranching'),!.

chicken :- chickenlist(X), numegg(X,Y), Y =:= 0, write('Ayam anda belum menghasilkan telur.'), nl, write('Silakan cek lagi di lain waktu.'), !.
chicken :- chickenlist(X), numegg(X,Y), write('Ayam anda menghasilkan '), write(Y), write(' telur.'), addItemQnt(telur, Y), nl, write('Anda mendapat '), write(Y), write(' telur!'), day(D), chickenlist(C), chickenchange(C, D, Z), retractall(chickenlist(X)), asserta(chickenlist(Z)), addtimeambilegg, addexpranch(Y),!.
cow :- cowlist(X), nummilk(X,Y), Y =:= 0, write('Sapi anda belum menghasilkan susu.'), nl, write('Silakan cek lagi di lain waktu.'), !.
cow :- cowlist(X), nummilk(X,Y), write('Sapi anda menghasilkan '), write(Y), write(' botol susu.'), addItemQnt(susu, Y), nl, write('Anda mendapat '), write(Y), write(' botol susu'), day(D), cowlist(C), cowchange(C,D,Z), retractall(cowlist(X)), asserta(cowlist(Z)), addtimeambilmilk, Nexp is Y * 5, addexpranch(Nexp),!.
sheep :- sheeplist(X), numwool(X,Y), Y =:= 0, write('Domba anda belum menghasilkan wol.'), nl, write('Silakan cek lagi di lain waktu.'), !.
sheep :- sheeplist(X), numwool(X,Y), write('Domba anda menghasilkan '), write(Y), write(' wol.'), addItemQnt(wool, Y), nl, write('Anda mendapat '), write(Y), write(' wol!'), day(D), sheeplist(C), sheepchange(C,D,Z), retractall(sheeplist(X)), asserta(sheeplist(Z)), addtimeambilwool, Nexp is Y * 15, addexpranch(Nexp),!.

gachahewan :- randomize, random(1,300,X), gachahewannext(X),!.
gachahewannext(X) :- ranchlvl(lvl), lvl > 0 ,X < 3, write('Anda bertemu dengan ayam liar.'), nl, write('Ingin menjadikannya sebagai ternak Anda?(ya/tidak): '), read(Y), gachahewanayam(Y), ! .
gachahewannext(X) :- ranchlvl(lvl), lvl > 0 ,X >= 3 ,X < 5, write('Anda bertemu dengan babi liar.'), nl, write('Ingin menjadikannya sebagai ternak Anda?(ya/tidak): '), read(Y), gachahewanbabi(Y), ! .
gachahewannext(X) :- ranchlvl(lvl), lvl > 1 ,X >= 5 ,X < 8, write('Anda bertemu dengan sapi liar.'), nl, write('Ingin menjadikannya sebagai ternak Anda?(ya/tidak): '), read(Y), gachahewansapi(Y),  ! .
gachahewannext(X) :- ranchlvl(lvl), lvl > 1 ,X >= 8 ,X < 10, write('Anda bertemu dengan domba liar.'), nl, write('Ingin menjadikannya sebagai ternak Anda?(ya/tidak): '), read(Y), gachahewandomba(Y),  ! .
gachahewannext(X) :-  X >= 10, !.

gachahewanayam(Y) :- Y == ya, chickenlist(Z), addchicken(1,Z), nl, write('Ayam berhasil ditambahkan ke peternakan.'), !.
gachahewanayam(Y) :- Y == tidak, !.
gachahewanayam(_Y) :- write('Masukan anda salah dan ayam tersebut telah pergi.'), !.
gachahewanbabi(Y) :- Y == ya, piglist(Z), addpig(1,Z), nl, write('Babi berhasil ditambahkan ke peternakan.'),!.
gachahewanbabi(Y) :- Y == tidak, !.
gachahewanbabi(_Y) :- write('Masukan anda salah dan babi tersebut telah pergi.'), !.
gachahewansapi(Y) :- Y == ya, cowlist(Z), addcow(1,Z), nl, write('Sapi berhasil ditambahkan ke peternakan.'),!.
gachahewansapi(Y) :- Y == tidak, !.
gachahewansapi(_Y) :- write('Masukan anda salah dan sapi tersebut telah pergi.'), !.
gachahewandomba(Y) :- Y == ya, sheeplist(Z), addsheep(1,Z), nl, write('Domba berhasil ditambahkan ke peternakan.'),!.
gachahewandomba(Y) :- Y == tidak, !.
gachahewandomba(_Y) :- write('Masukan anda salah dan domba tersebut telah pergi.'), !.



/*===========================================================ALCHEMIST=================================================================*/
summonAlchemist:- randomize,random(1,100, X), X =:= 1, retractall(alchemist(_,_)), asserta(alchemist(1,72)),write('Alchemist sedang berada di market selama 72 jam kedepan. ketik potion pada menu di market untuk membeli barangnya!'),!.

buypotion :-	alchemist(0,_), write('Alchemist sedang tidak berada di market, Anda tidak dapat membeli potion'),nl,!.
buypotion :- 	write('1. Farming Potion  (500) --> memaksimalkan lvl farming'),nl,
				write('2. Fishing Potion  (500) --> memaksimalkan lvl fishing'),nl,
				write('3. Ranching Potion (500) --> memaksimalkan lvl ranching'),nl,
				write('4. Tidak jadi beli'),nl,
				write('Pilihan : '), read(X), pilihanpotion(X),!.

pilihanpotion(1):- minGold(5), retractall(farmlvl(_)),asserta(farmlvl(3)),status,nl,write('Karena sudah laku, Alchemist pergi meninggalkan market'), nl,retractall(alchemist(_,_)),asserta(alchemist(0,0)),!.
pilihanpotion(2):- minGold(5),  retractall(fishlvl(_)),asserta(fishlvl(3)),status,nl,write('Karena sudah laku, Alchemist pergi meninggalkan market'), nl,retractall(alchemist(_,_)),asserta(alchemist(0,0)),!.
pilihanpotion(3):- minGold(5),  retractall(ranchlvl(_)),asserta(farmlvl(3)),status,nl,write('Karena sudah laku, Alchemist pergi meninggalkan market'), nl,retractall(alchemist(_,_)),asserta(alchemist(0,0)),!.
pilihanpotion(4):- !.
