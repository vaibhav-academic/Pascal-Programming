program sroot;
var a,b,c,d,e:real;
begin
readln(a);
b:=0;
repeat b:=b+1; until (b*b>a);
c:=(b*b-(b-1)*(b-1));
d:= a-(b-1)*(b-1);
e:= b-1+d/c;
writeln(e:5:5);
readln;
end.