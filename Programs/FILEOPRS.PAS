program fileoprs;
{Global Declarations}
var k:integer;

procedure fileshow;
var j:string;var i:char;var k:text;
var l:longint;
begin
l:=1;
Write('Enter The File Name : ');
readln(j);assign (k,j);reset(k);
writeln('File Contents of ',j,':-');
while not eof(k) do begin
read(k,i);write(i);
if eoln(k) then l:=l+1;
if l>18 then  begin
l:=1;
writeln;
write ('Press Enter To Continue...');read(i);
end;
end;
writeln;
write('Press Enter To Conclude...');read(i);
end;

procedure copycon;
var j:string;var i:char;var k:text;
begin
Write('Enter The File Name : ');
readln(j);assign (k,j);rewrite(k);
Writeln('Now Enter the Text :- ');
repeat
      repeat
      read(i);
      write(k,i);
      until  eoln;
until  eof;
close (k);
end;
procedure fileCopy;
var j:array[1..2] of string;var i:char;
var k,l :file of char;var m:longint;
begin
m:=1;
Write('Enter Source File Name : ');
readln(j[1]);Write('Enter Target File Name : ');
readln(j[2]);
assign (k,j[1]);reset(k);
assign (l,j[2]);rewrite(l);
write('Copying');
while not eof(k) do
begin
if m mod (filesize(k) div 9+1)=0 then write('.');
read(k,i);
write(l,i);
m:=m+1;
end;
writeln('Done');
close (k);
close(l);
end;

procedure filemerge;
var j:array[1..3] of string;var i:char;
var k,l,n:file of char;var m:longint;
begin
m:=1;
Write('Enter Source File Name 1 : ');readln(j[1]);
Write('Enter Source File Name 2 : ');readln(j[2]);
Write('Enter Target File Name : ');readln(j[3]);
assign (k,j[1]);reset(k);
assign (n,j[2]);reset(n);
assign (l,j[3]);rewrite(l);
write('Merging');
while not eof(n) do begin
if eof(k) then read(n,i) else read(k,i);
if m mod ((filesize(k)+filesize(n)) div 9+1)=0 then write('.');
write(l,i);m:=m+1;
end;
{while not eof(n) do begin
if m mod (filesize(n) div 9+1)=0 then write('.');
read(n,i);write(l,i);m:=m+1;
end;}
writeln('Done');close (k);close(l);close (n);
end;

procedure fileappend;
var j:string;var i:char;var k:text;
begin
Write('Enter The File Name : ');
readln(j);assign (k,j);reset(k);
writeln('File Contents of ',j,':-');
while not eof(k) do begin
read(k,i);write(i);
end;
append(k);
writeln;
Writeln('Now Enter the Text :- ');
repeat
      repeat
      read(i);
      write(k,i);
      until  eoln;
until  eof;
close (k);
writeln;
writeln('Done');
end;

function menu:integer;
var k:integer;
begin
writeln;
writeln;
writeln('Main Menu');
writeln('_______________________');
writeln('1. Create/Overwrite File');writeln('2. View Contents Of A File');
writeln('3. Append To A File');writeln('4. Copy A File');
writeln('5. Merge Files');writeln('0. Quit');
writeln('_______________________');
write('Enter Your Choice: ');readln(k);
if (k<0) or (k>5) then begin
writeln('Invalid Input');
k:=menu;
end;
menu:=k;
end;

begin
writeln;
writeln('             Welcome To File Operations Demo');
writeln;
k:=0;
repeat
case k of
1:copycon;
2:fileshow;
3:fileappend;
4:filecopy;
5:filemerge;
end;
k:=menu;
until k=0;
writeln;
writeln('Bye-Bye');
end.