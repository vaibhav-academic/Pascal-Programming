program students_avarage;
type student=record
name:string[10];
mphy:integer;
mmat:integer;
mche:integer;
mave:real;
end;
{Global Declarations}
var a:array[1..10] of student;
var i,j,k,l,prea,prek:integer;
function concate2(x:string;y:integer):string;
var i:integer;begin
while length(x)<y do x:=x+' ';
concate2:=x;
end;
function concate(x,y:integer):string;
var te:string;var temp:integer; begin
str(x,te);
while length(te)<y do te:=te+' '; concate:=te;
end;
procedure sort;
var minp,j,k:integer;
var min,temp:real;
var l:student;
begin
l.name:='';l.mmat:=0;l.mave:=0;l.mche:=0;l.mphy:=0;
for K:=1 to (i-1) do begin
minp:=k;min:=a[k].mave;
             for j:= (k+1) to i do
             if a[j].mave>min then begin
             minp:=j;min:=a[j].mave;
             end;

l:=a[k];
a[k]:=a[minp];
a[minp]:=l;
end;
end;

{Main Module}
begin
Write('Enter Number of Students');readln(i);
writeln;
for k:=1 to i do with a[k] do
begin
write(k,'.Enter Student name: ');read(name);
write(' ','Enter ',name,'`s marks in Physics  : ');readln(mphy);
write(' ','Enter ',name,'`s marks in Maths    : ');readln(mmat);
write(' ','Enter ',name,'`s marks in Chemistry: ');readln(mche);
mave:=(mphy+mmat+mche) / 3;
writeln;
end;
writeln;
writeln('Report:');
 sort;
write(concate2('Rank',10));
write(concate2('Name',10));
write(concate2('Physics',10));
write(concate2('Maths',10));
write(concate2('Chemistry',10));
writeln(concate2('Average',10));
for k:=1 to 78 do write('-');
writeln;
prea:=1;
prek:=1;
for k:=1 to i do with a[k] do
with a[k] do
begin
if a[k].mave<>a[prea].mave then begin
prek:=prek+1;prea:=k end;
write(concate(preK,10));
write(concate2(a[k].name,10));
write(concate(a[k].mphy,10));
write(concate(a[k].mmat,10));
write(concate(a[k].mche,10));
writeln(mave:3:2);
end;
readln;
end.