program matrix_opretions;
type matrix=record
matrix:array[1..3,1..3] of integer;
rows:integer;
columns:integer;
end;
var res:integer;var m1,m2,m3:matrix;
function add(a,b:matrix;var result:matrix):boolean;
var temp:array[1..3] of integer;
begin
add:=false;
if not (a.rows=b.rows) then exit;
for temp[1]:=1 to a.rows do
for temp[2]:=1 to a.columns do
result.matrix[temp[1],temp[2]]:=a.matrix[temp[1],temp[2]]+b.matrix[temp[1],temp[2]];
add:=true;
result.rows:=a.rows;
result.columns:=a.columns;
end;
function subtract(a,b:matrix;var result:matrix):boolean;
var temp:array[1..3] of integer;
begin
for temp[1]:=1 to b.rows do
for temp[2]:=1 to b.columns do b.matrix[temp[1],temp[2]]:=-1* b.matrix[temp[1],temp[2]];
subtract:=add(a,b,result)
end;
procedure get(var a:matrix;message:string);
var temp:array[1..4] of integer;
begin
if message='' then message:='Enter The Matrix';
Writeln(message);
Writeln('Enter Rows And Cols');
readln(temp[1],temp[2]);
Writeln('Now Enter Elements ');
for temp[3]:=1 to temp[1] do
for temp[4]:=1 to temp[2] do
readln( a.matrix[temp[3],temp[4]]);
a.rows:=temp[1];a.columns:=temp[2];
end;
procedure show(a:matrix;message:string);
var temp:array[1..2] of integer;
begin
if message='' then message:='The Matrix is';
Writeln(message);
for temp[1]:=1 to a.rows do
begin
for temp[2]:=1 to a.columns do
write( a.matrix[temp[1],temp[2]],'|');
writeln;
end;
end;

function product(a,b:matrix;var result:matrix):boolean;
var i,j,k:integer;
begin
product:=false;
if a.columns<>b.rows then exit;
for i:= 1 to a.rows do
for j:= 1 to a.columns do
for k:= 1 to b.columns do
result.matrix[i,k]:=result.matrix[i,k]+(a.matrix[i,j]*b.matrix[i,k]);
product:=true;
result.rows:=a.rows;
result.columns:=b.columns;
end;

function showmenu:integer;
var temp:integer;
begin
writeln('Enter Your Choice');
writeln('-----------------');
writeln('1.Add');
writeln('2.Subtract');
writeln('3.Multiply');
writeln('4.Quit');
writeln('-----------------');
Readln (temp);
if (temp<1) or (temp>4) then
begin
writeln('Invalid Choice');
temp:=showmenu;
end;
showmenu:=temp;
end;
begin
writeln('                   Welcome To Matix Calculator               ');
writeln;
writeln;
res:=showmenu;
while res<>4 do
begin
case(res) of
1:        begin
               get(m1,'Enter Matrix A');
               get(m2,'Enter Matrix B');
               if add(m1,m2,m3) then
               show(m3,'Result A+B=') else writeln('Error Processing A+B');
          end;
2:        begin
               get(m1,'Enter Matrix A');
               get(m2,'Enter Matrix B');
               if subtract(m1,m2,m3) then
               show(m3,'Result A-B=') else writeln('Error Processing A-B');
          end;
3:        begin
               get(m1,'Enter Matrix A');
               get(m2,'Enter Matrix B');
               if product(m1,m2,m3) then
               show(m3,'Product AxB=') else writeln('Error Processing AxB');;
          end;
end;
res:=showmenu;
end;
writeln('Bye-Bye');
end.