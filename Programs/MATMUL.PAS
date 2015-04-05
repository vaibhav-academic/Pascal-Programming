var a,b,c:array[1..3,1..3] of integer;
var m,n:array[1..2] of integer;
var i,j,k:integer;
begin
writeln('enter order of a');
read(m[1],m[2]);
writeln('enter order of b');
read(n[1],n[2]);
writeln('enter A');
for i:=1 to m[1] do
for j:=1 to m[2] do
read(a[i,j]);
writeln('enter B');
for i:=1 to n[1] do
for j:=1 to n[2] do
read(b[i,j]);

for i:= 1 to m[1] do
for j:= 1 to m[2] do
for k:= 1 to n[2] do
c[i,k]:=c[i,k]+(a[i,j]*b[i,k]);

for i:= 1 to m[1] do
begin
for j:= 1 to n[2] do
write( c[i,j],'|');
writeln;
end;
end.

