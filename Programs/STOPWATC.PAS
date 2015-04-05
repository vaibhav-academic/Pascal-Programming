program stopwatch;
var h,m,s,ms,k:integer;
begin
h:=0;m:=0;s:=0;ms:=0;
while true do begin
ms:=ms+1;
if ms>999 then begin
ms:=0; s:=s+1;
if s>59 then begin
s:=0;m:=m+1;
if m>59 then begin
m:=0;h:=h+1;
end;
end;
end;
writeln (h,':',m,':',s,':',ms);
for k:=1 to 25000 do;
end;
end.