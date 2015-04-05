program fibonacci;
var i,j,k,m,l:integer;
begin
write('Enter Number Of terms: ');
readln(i);
j:=0;
k:=1;
write('0..');
for m:=2 to i do
begin
l:=j+k;
write(j+k,'..');
j:=k;
k:=l;
end;
readln;
end.