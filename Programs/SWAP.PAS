program swap;
var a,b:integer;
begin
writeln('Enter A,B:');
readln(a,b);
writeln('Swapping..');
b:=b-a;
a:=a+b;
b:=a-b;
writeln('A=',a);
writeln('B=',b);
readln;
end.