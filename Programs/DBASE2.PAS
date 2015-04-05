program decil2Abase;
var ii,j,k:integer;
var n:string;
function d2Abase(x,y:integer):string;
var n,o:string;
var k,m:integer;
begin
n:='';m:=0;
while x>0 do begin
k:=x mod y; str(k,n);
o:=n+o;
x:=x div y;
m:=m+1;
end;
delete(o,m+1,length(o)-m);
d2abase:=o;
end;
function A2Dbase(x:string;y:integer):integer;
var n,o:string;
var i,j,k,l:integer;
begin
k:=1;l:=0;
while length(x)>0 do
      begin
      o:=copy(x,length(x) ,1);
      val(o,i,j);
      l:=l+i*k;
      delete(x,length(x),1);
      k:=y*k;
      end;
A2dbase:=l;
end;
function menu:integer;
var k:integer;
begin
writeln;
writeln('----------');writeln('Main Menu');writeln('----------');
writeln('1.Decimal to any base');writeln('2.Any base to decimal');
writeln('0.Quit');
writeln('----------');
write('Enter Your Choice ');
readln(k);
if (k>2) or (k<0) then
begin
writeln('Invalid Choice..');
k:=menu;
end;
menu:=k;
end;

{Main Module}
begin
k:=0;
Writeln('           Welcome To Base Calculator');
repeat
case k of
1:begin
write('Enter the Number: ');readln(ii);
Write('Enter target Base: ');readln(j);
writeln(ii,' in base ',j,' is= ',d2abase(ii,j));
end;
2:begin
write('Enter the Number: ');readln(n);
Write('Enter its Base: ');readln(j);
writeln(n,' in base 10 is= ',a2dbase(n,j));
end;
end;
k:=menu;
until k=0;
writeln('Bye-Bye');
end.
