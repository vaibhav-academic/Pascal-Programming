program lcm_;
var a,b,c,hcf,lcm:integer;
begin
writeln('enter a,b');
readln (a,b);
c:=a;
hcf:=1;

while (c>=1) do
begin
      if a mod c=0 then
         if b mod c=0 then
            begin
                  hcf:=c;
                  c:=1;
            end;
c:=c-1;
end;
writeln (hcf);

while (c>=0) do
begin
      c:=c+1;
      if (a*c) mod b=0 then
            begin
            lcm:=a*c;
            c:=-1;
            end;

end;
writeln( lcm);
readln;
end.
