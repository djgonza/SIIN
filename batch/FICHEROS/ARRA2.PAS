program arra;
uses wincrt;
type
    mes=array[1..5]of integer;
var
   i:integer;
   tabla:mes;
begin

     for i:=1 to 5 do
      read(tabla[i]);

     for i:=1 to 7 do
         begin

         write(i);
         writeln(tabla[i]:4);
         readkey
         end;
     readkey;
     donewincrt
end.
