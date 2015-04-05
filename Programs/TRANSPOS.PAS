var a,b:array[1..10,1..10] of integer;
var m,n:array[1..2] of integer;
var i,j:integer;
begin
writeln('enter order of a');
read(m[1],m[2]);
writeln('enter A');
for i:=1 to m[1] do
for j:=1 to m[2] do
read(a[i,j]);
for i:= 1 to m[2] do
for j:= 1 to m[1] do
b[i,j]:=a[j,i];
Writeln('Transposed Matrix');
for i:= 1 to m[2] do
begin
for j:= 1 to m[1] do
write( b[i,j],'|');
writeln;
end;
end.