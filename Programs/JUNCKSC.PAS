program junkscreen;
var i,j,k:integer;
begin
for j:=1 to 2000 do
begin
k:=random(255);
write (chr(k));
end;
end.