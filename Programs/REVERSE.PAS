program reverse;
var i,j,k:integer;
begin
k:=0;
write('Enter the Number');readln(i);
while i>0 do begin
j:= i mod 10;
i:=i div 10;
k:= k*10 +j;
end;
writeln(k);
readln;
end.