program uno;
uses wincrt;
var
   nombre:string[20];
   r,codigo:integer;
   s:string[15];
begin
     nombre:='pepitos';
     for r:=0 to 10 do
         writeln(r,' ',nombre[r]);
     writeln(nombre[0],'hola');
     insert('hola', nombre,1);
     writeln(r,codigo);
     readkey;
     donewincrt;
end.
