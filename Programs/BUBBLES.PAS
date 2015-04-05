program bubblesort;
procedure swap(var a,b:integer);
var temp:integer;
begin
temp:=a;
a:=b;
b:=temp;
end;
var a:array[1..10] of integer;
var i,j,k:integer;
begin
Write('Enter Number Of Elements:- ');
readln(i);
writeln('Now enter elements:-')
for k:=1 to i do readln(a[k]);
for k:=i downto 2 do
for j:= 1 to (k-1) do
if a[j]>a[j+1] then swap(a[j],a[j+1]);
writeln;
Writeln('Sorted List:-');
for k:=1 to i do writeln(a[k]);
readln;
end.
