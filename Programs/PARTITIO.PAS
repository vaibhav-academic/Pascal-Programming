Program Parition;
var a,b,c:array[1..10] of integer;
var i,j,k,l:integer;
begin
writeln('1.Merge Arrays');writeln('2.Partition Arrays');
writeln('Select Option');readln(l);
if l=2 then begin
write('Enter No. of Elements in A: ');readln(i);
writeln('Enter Elements:');
for k:=1 to i do readln(a[k]);
writeln('Partion From Element: '); readln(j);
for k:=1 to i do
if k<j then b[k]:=a[k] else c[k-j+1]:=a[k];
writeln('Partitioned Array');
Writeln('B    C');
Writeln('------');
for k:=1 to i do
begin
if k<j then write(b[k]) else write(' ');
Write('   ');
if k<=i-j+1 then write(c[k]) else write(' ');
writeln;
end;
readln;
end
else
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

end

end.

