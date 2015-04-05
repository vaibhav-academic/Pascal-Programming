Program APP;
{Global Declarations}
var a,b:integer;
function isarmstrong(i:integer):boolean;
var temp:array[1..3] of integer;
begin
temp[1]:=i;
temp[3]:=0;
while i>0 do
begin
temp[2]:=i mod 10;
i:=(i-temp[2]) div 10;
temp[3]:=temp[3]*10+temp[2];
end;
if temp[3]=temp[1] then isarmstrong:=true else isarmstrong:=false;
end;

function ispalidrom(i:integer):boolean;
var temp:array[1..3] of integer;
begin
temp[1]:=i;
temp[3]:=0;
while i>0 do
begin
temp[2]:=i mod 10;
i:=(i-temp[2]) div 10;
temp[3]:=temp[3]+temp[2]*temp[2]*temp[2];
end;
if temp[3]=temp[1] then ispalidrom:=true else ispalidrom:=false;
end;

function isprime(i:integer):boolean;
var temp:array[1..3] of integer;
begin
isprime:=true;
if i<=0 then isprime :=false;
if i>=4 then
      for temp[1]:= 2 to i div 2 do
          if i mod temp[1]=0 then isprime:=false;
end;

function showmenu:integer;
var temp:integer;
begin
writeln;
writeln;
writeln('Enter Your Choice');
writeln('1.Check for Prime');
writeln('2.Check for Armstrong');
writeln('3.Check for Palidrome');
writeln('4.Quit');
read(temp);
if (temp>4) or (temp<1) then
begin
write('Invalid Input');temp:=showmenu;
end;
showmenu:=temp;
end;

{Main Module}
begin
Writeln('                  Welcome To Pali               ');
repeat
      b:=showmenu;
      case b of
           3:
             begin
             write('Enter Number To Check For Palidrome:');
             readln(a);
             if ispalidrom(a) then writeln(a,' is a Palidrome')
             else writeln(a,' is not a Palidrome') ;
             end;
           2:
             begin
             write('Enter Number To Check For Armstrong:');
             readln(a);
             if isarmstrong(a) then writeln(a,' is an Armstrong')
             else writeln(a,' is not an Armstrong') ;
             end;
           1:
             begin
             write('Enter Number To Check For Prime:');
             readln(a);
             if isprime(a) then writeln(a,' is a Prime')
             else writeln(a,' is not a Prime') ;
             end;
      end;
until b=4;

writeln ('Bye-Bye');
end.
