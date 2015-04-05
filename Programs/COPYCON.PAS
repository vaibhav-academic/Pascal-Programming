program copycon;
var j:string;
var i:char;
var k:text;
begin
Write('Enter The File Name : ');
readln(j);
assign (k,j);
rewrite(k);
Writeln('Now Enter the Text :- ');
repeat
      repeat
      read(i);
      write(k,i);
      until  eoln;
until  eof;
close (k);
end.