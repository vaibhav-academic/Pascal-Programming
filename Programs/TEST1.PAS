type Coordinate = record
xcoor, ycoor: Double;
end;
Shape = (Circle,Line);
Figure = record
case tag : Shape of
Circle: (Centre: Coordinate; Radius : Double);
Line:(Xcoeff, Ycoeff, Constant : Double);
end;

var i:coordinate;
begin
with i do begin
xcoor:=10;
ycoor:=10;
shape:=0;
centre.xcoor:=20;
centre.ycoor:=20;
line.xcoeff:=20;
end;

end.

