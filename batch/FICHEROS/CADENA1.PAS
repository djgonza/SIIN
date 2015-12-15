program prueba;
uses wincrt;
type frase=string[10];
var f,f2:frase;
    procedure leer(var fa:frase);
    begin
         writeln('dame frase');
         readln(fa);

    end;
    procedure alreves(fa:frase;var fa2:frase);
    var i,j:integer;
    begin
         j:=0;
         writeln ('longitud frase original=',length(fa));
         for i:=length(fa) downto 1 do
             begin
                  j:=j+1;
                  fa2[j]:=fa[i];
                  writeln(fa[i],'*');
             end;
         writeln ('frase al reves',fa2)
    end;
    procedure escribir(fa2:frase);
    var i:integer;
    begin
         for i:=1 to length(fa2) do
           write (fa2[i]);
    end;
begin
     leer(f);
     alreves(f,f2);
     escribir(f2);
     readkey;
     donewincrt;
end.


