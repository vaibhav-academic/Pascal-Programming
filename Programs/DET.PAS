Program Determiment_;
type matrix=record
matrix:array[1..10,1..10] of integer;
rows,cols:integer;
end;
{Gobal Declarations}
var i,j:matrix;var k,l:integer;
{Procedure Declarations}
procedure eleminator(matra:matrix;row,col:integer;var answer:matrix);
var eletemp:matrix;var i,j,ii,jj,k:integer;
begin
ii:=0;
for i:=1 to matra.rows do
if i<>row then begin
ii:=ii+1;
jj:=0;
         for j:=1 to matra.cols do
         if j<>col then begin
         jj:=jj+1;eletemp.matrix[ii,jj]:=matra.matrix[i,j];
         end;
end;
eletemp.rows:=matra.rows-1;eletemp.cols:=matra.cols-1;
answer:=eletemp;
end;
{Function Declarations}

function pow(base,power:integer):integer;
begin
if power=0 then pow:=1 else pow:=base*pow(base,power-1);
end;

function determinent(x:matrix;wrow:integer):integer;
var j,k:integer;var l:matrix;
begin
j:=0;
if x.rows<>x.cols then begin
writeln('Invalid Matrix');halt;
end;
if x.rows=1 then begin
determinent:=x.matrix[1,1];exit;end;
for k:= 1 to x.cols do begin
eleminator(x,wrow,k,l);
j:=j+pow(-1,((k+wrow) mod 2))* x.matrix[wrow,k]* determinent(l,1)
end;
determinent:=j;
end;
{Main Module}
begin
Write('Enter Number of Rows : ');readln(i.rows);
Write('Enter Number of Coloums : ');readln(i.cols);
Writeln('Now Enter The Matrix:-');
for k:=1 to i.rows do
for l:=1 to i.cols do readln(i.matrix[k,l]);
writeln;
for k:=1 to i.rows do begin
for l:=1 to i.cols do write(i.matrix[k,l],'|');
writeln;
end;
writeln('=',determinent(i,1));
readln;
end.