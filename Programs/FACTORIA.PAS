program factorial_;
var i,j,k:integer;
function factorial(x:integer):integer;
begin
if x=1 then factorial:=1 else factorial:=x*factorial(x-1);
end;
begin
write('Enter the Number: ');readln(i);
writeln('Factorial of ',i,' is= ',factorial(i));
readln;
end.

