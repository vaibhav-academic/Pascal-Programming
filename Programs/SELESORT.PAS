program selectoionsort;
var a:array[1..5] of integer;
var i,j,k,l,minp,min:integer;
begin
writeln('Enter No of Elements; ');
readln(i);
writeln('Now Enter Elements:-');
for k:=1 to i do readln(a[k]);
for k:=1 to i do
begin
min:=a[k];
minp:=k;
for l:=k+1 to (i-1) do
if a[l]<min then
begin
min:=a[l];
minp:=l;
end;
j:=a[minp];
a[minp]:=a[k];
a[k]:=j;
end;
writeln;
writeln('Sorted List:');
for k:=1 to i do writeln (a[k]);
readln;
end.