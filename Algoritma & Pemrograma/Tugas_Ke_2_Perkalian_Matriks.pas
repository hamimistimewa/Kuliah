Program Perkalian_Matriks;
uses crt;
var i,j,k,m,n,p,q : integer;
A,B,C : array[1..3,1..3] of integer;

Begin
	repeat 
		clrscr; 
		writeln('========================= ');
		writeln('Nama: Nur Hamim ');
		writeln('NPM: 202043500201 ');
		writeln('Kelas: X2D ');
		writeln('Matkul: Algoritma 2');
		writeln('========================= ');
		writeln;
		writeln('========================= ');
		writeln('PROGRAM PERKALIAN MATRIKS ');
		writeln('========================= ');
		writeln;
		write('Input Jumlah Baris Matriks A = ');readln(m); 
		write('Input Jumlah Kolom Matriks A = ');readln(n); 
		write('Input Jumlah Baris Matriks B = ');readln(p); 
		write('Input Jumlah Kolom Matriks B = ');readln(q); 
	until (p=n);
	
	{Input Data matriks A} 
	for i:= 1 to m do
	 for j:= 1 to n do 
	  Begin 
	   write('Input A',i,j,'= ');
	   readln(A[i,j]); 
	  End;
	  
	{Input Data matriks B} 
	for i:= 1 to n do
	 for j:= 1 to q do 
	  Begin 
	   write('Input B',i,j,'= ');
	   readln(B[i,j]); 
	  End;
	  clrscr;
	  
	{Perkalian Matriks}
	for i:= 1 to m do 
	 Begin
	  for j:= 1 to q do
	   Begin
	    C[i,j]:=0;
	     for k:=1 to n do
	      C[i,j]:=C[i,j] + A[i,k]*B[k,j];
	     End;
	   End;
	   
	{Cetak Matriks}
	writeln('Matriks A');
	 for i:= 1 to m do
	 Begin
	 for j:= 1 to n do
	  write(A[i,j],' ');
	  writeln;
	 End;

	writeln('Matriks B');
	 for i:= 1 to n do
	 Begin
	 for j:= 1 to q do
	  write(B[i,j],' ');
	  writeln;
	 End;
	
	writeln('Matriks C');
	 for i:= 1 to m do
	 Begin 
	 for j:= 1 to q do 
	  write(C[i,j],' '); 
	  writeln; 
	 End;
	  readln;
End.
