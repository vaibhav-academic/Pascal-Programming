program bargraph;
var a:array[1..10] of integer;
var i,j,k,l:integer;
function concate(x,y:integer):string;
var te,tp:string;var temp:integer;
begin
str(x,te);tp:='';
for temp:=3 downto length(te)+1 do tp:=tp+' ';
concate:=tp+te;
end;
begin
readln(i);
for k:=1 to i do readln(a[k]);
for k:=23 downto 1 do begin
     write(concate(k,2),'|');
     for l:=1 to i do   begin
     if a[l]>=k then   begin
     write(' ',chr(2));
     a[l]:=a[l]-1;
     end
     else
     write('  ');
     end;
writeln;
end;
write('  ');
for k:=1 to 77 do write('-');
writeln; write(concate(0,2));
for k:=1 to 25 do write(concate(k,2));
readln;
end.