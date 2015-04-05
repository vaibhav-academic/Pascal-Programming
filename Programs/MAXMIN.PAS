Program Max_Min_from_list;
var a:array[1..10] of integer;
var i,j,k,l:integer;
begin
write('Enter number of elements: ');readln(i);
writeln('Now enter elements: ');
for k:=1 to i do readln(a[k]);
j:=a[1];k:=a[1];
for k:=1 to i do
if a[k]<j then j:=a[k];
if a[k]>l then l:=a[k];
writeln('Max in List= ' ,l);
writeln('Min in List= ' ,J);
readln;
end.

