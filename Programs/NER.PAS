program ner;
var i,a,pri:integer;
function isprime( num:integer): boolean;
var c:integer;
begin
     c:=1;
     while c<(num div 2) do
     begin
          c:=c+1;
          if num mod c =0 then
           c:=num;
     end;
     if c=num then
     isprime:=false
     else
     isprime:=true;
end;
begin
readln(i);
a:=0;
pri:=0;
   while pri=0 do
   begin
        a:=a+1;
               if isprime(i+a) then
               pri:=i+a
               else
                if isprime(i-a) then
                pri:=i-a;
   end;
writeln('nearest prime is ',pri);
readln;
end.