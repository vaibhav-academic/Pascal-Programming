program Tables;
var temp:array[1..7] of integer;
var te,tp:string;
function concate(x,y:integer):string;
var te:string;begin
str(x,te);
tp:='';
for temp[7]:=3 downto length(te)+1 do
tp:=tp+' ';
concate:=tp+te;
end;
begin
temp[3]:=6;
writeln;
Write('Write Tables Upto:');
readln(temp[1]);
str(temp[1],te);
temp[5]:=length(te)+1;
repeat
      for temp[2]:=1 to 20 do
          begin
                for temp[4]:=5 downto 1 do
                      begin
                      temp[6]:=temp[3]-temp[4];
                      if temp[6]<=temp[1] then begin
                      write( concate(temp[6],temp[5])
                      ,' x',concate(temp[2],temp[5]),'=',
                        concate(temp[6]*temp[2],temp[5]));
                      write('|');
                      end;

                      end;
                 writeln;
           end;
      temp[3]:=temp[3]+5;
      if not(temp[3]>(temp[1]+5)) then begin
      write('Press Any Key To Continue');
      readln;
      end;
until temp[3]>(temp[1]+5);
write('Press Any Key To End');
readln;
end.