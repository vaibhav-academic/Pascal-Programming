program power;
var i,j:integer;
function pow(base,power:integer):integer;
begin
if power=0 then pow:=1 else pow:=base*pow(base,power-1);
end;
begin
write('Enter Base:  ');readln(i);
write('Enter Power: ');readln(j);
writeln(i,' to the power ',j,' = ',pow(i,j));
readln;
end.


