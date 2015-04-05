Program Circle;
var x,y,r,temp:real;
begin
write('Enter the radius of Circle : ');readln(r);
y:=0;writeln;
while y>=(-1*2*r) do begin
   x:=0;
    while x<= 2*r do
    begin
    temp:=  sqrt((r*r) - ((y+r)*(y+r)));
    if (x>temp+r) or (x<r-temp) then
    write(' ')
    else
     write ('+');
    x:=x+0.4;
    end;
 writeln;
 y:=y-1;
end;
readln;
end.

