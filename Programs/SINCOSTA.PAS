program sin_cos_tan;
var power,sign:integer;
var i,j,k,l:real;
function pow(base,power:real):real;
begin
if power=0 then pow:=1 else pow:=base*pow(base,power-1);
end;

function factorial(x:integer):real;
begin
if x=0 then factorial:=1 else factorial:=x*factorial(x-1);
end;

function sine(x:real):real;
var l:real;
begin
power:=power+2;
sign:=-1*sign;
l:= pow(x,power)/factorial(power)*sign;
if power>=29 then sine:=l else
sine:=sine(x)+l;
end;

begin
write('Enter The Degrees To Evaluate : ');readln(i);
j:= pi/180*i;
power:= -1;sign:=-1;
k:=sine(j);
writeln('Sin of ',i:4:5,'= ',k:1:10);
power:= -2;sign:=-1;
l:=sine(j);
writeln('Cos of ',i:4:5,'= ',l:1:10);
writeln('Tan of ',i:4:5,'= ',(k/l):5:10);
readln;
end.