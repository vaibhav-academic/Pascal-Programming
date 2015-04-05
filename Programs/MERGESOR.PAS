program merge;
var a,b,c:array[1..10] of integer;
var i,j,k:integer;
begin
write('Enter No. of Elements in A:-');readln(i);
writeln('Enter Elements:');
for k:=1 to i do readln(a[k]);
write('Enter No. of Elements in B:-');readln(j);
writeln('Enter Elements:');
for k:=1 to j do readln(b[k]);
for k:=1 to (i+j) do
if k>i then c[k]:=b[k-i] else c[k]:=a[k];

writeln('Merged List');
for k:=1 to i+j do writeln(c[k]);
readln;
end.
