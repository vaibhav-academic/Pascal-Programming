program linearserch;
var i:array[1..10] of integer;
var j,k,l:integer;
begin
write('Enter Number of elements: ');
readln(j);
write('Now Enter Elements:-');
for k:=1 to j do readln(i[k]);
writeln;
write('Enter Target Element:-');readln(l);
k:=1;
while k<=j do
if i[k]=l then k:=j+k+1 else k:=k+1;
if k>j+1 then writeln('Element Found at ', k-j-1) else
writeln('Element not Found');
readln;
end.


