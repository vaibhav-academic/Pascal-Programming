program decil2Abase;
var i,j,k,l,m,n:integer;
begin
k:=0;l:=0;m:=1;j:=1;
write('Enter the decimal Number ');readln(i);
while j<=1 do
begin
Write('Enter Target Base ');
readln(j);
if j<=1 then writeln('Invalid Base Retry..');
end;
while i>0 do
begin
k:=i mod j;
l:=l+k*m;
i:=i div j;
m:=m*10;
end;
writeln(l);
readln;
end.