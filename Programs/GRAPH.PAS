var x,y,xx,yy:real;
var temp:array[1..4] of integer;
begin
for temp[2]:=0 to 24 do
begin
yy:=-temp[2];
y:=yy+12;
x:=cos(y)*6;
xx:=x+40;
if temp[2]<>12 then
for temp[1]:=0 to 75 do
begin
if temp[1]=39 then write('|') else
if temp[1]=trunc(xx) then write('*') else write(' ');
end
else
for temp[1]:=0 to 75 do write('-');
writeln;
end;
readln;
end.