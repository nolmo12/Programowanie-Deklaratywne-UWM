% PROGRAM: klocki_1
% Definiowane predykaty:
%   na/2
%	pod/2
%	miedzy/3
%===========================


%na(X,Y)
% Opis: spełniony, gdy klocek X leży bezpośrednio na klocku Y
%----------------------------na/2
	na(c,a).
	na(c,b).
	na(d,c).
%----------------------------na/2
%pod(X,Y)
% Opis: spełniony, gdy klocek X bezpośrednio pod klockiem Y
%----------------------------pod/2
	pod(X,Y):-na(Y, X).
%----------------------------pod/2
%miedzy(X,Y,Z)
% Opis: spełniony, gdy klocek X znajduje się między klockiem Y i Z
%----------------------------miedzy/3
	miedzy(X,Y,Z):-na(X,Y),pod(X,Z).
	miedzy(X,Y,Z):-na(X,Z),pod(X,Y).
%----------------------------miedzy/3
/*
Informacje o budowie programu:
Program składa się z 6 klauzul.
Program zawiera 3 definicje relacji.
Jest to relacja na/2, pod/2, miedzy/3.
Program składa się z 3 faktów i 3 reguł.
Fakty to na(c,a), na(c,b), na(d,c).
Reguły to pod(X,Y):-na(Y, X),
miedzy(X,Y,Z):-na(X,Y),pod(X,Z),
miedzy(X,Y,Z):-na(X,Z),pod(X,Y).
*/

