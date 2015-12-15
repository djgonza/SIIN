program l;
uses wincrt;
type fra=string[30];
     tabla=array[1..30]of integer;
var f,f2:fra;
    t:tabla;
    procedure leer(var fa:fra);
    var i:integer;
    begin
         writeln ('introduce frase');
         readln(fa);
    end;
    procedure inici(var ta:tabla);
    var i:integer;
    begin
         for i:=1 to 30 do
             ta[i]:=0;
    end;
    procedure cifrar( fa:fra;var ta:tabla);
    var i:integer;
    begin
         for i:=1 to length(fa) do
             ta[i]:=(3*ord(fa[i]))-150;

    end;
    procedure descifrar(ta:tabla;var fa2:fra);
    var i:integer;
        c:char;
    begin
             i:=1;
             while (i<=30) and (ta[i]<>0) do
               begin
                    write(ta[i],'**');
                    fa2[i]:=chr((ta[i]+150) div 3);
                    write(fa2[i],'**');
                    (*fa2:=fa2+c;*)
                    (*WRITELN (FA2[I]);*)
                    i:=i+1;
               end;
               writeln(fa2[1]);

               writeln ('longitud de fra2 es:',length(fa2));
               write(fa2,'es nula, por queeeeeeé???');
    end;
    procedure escribirta(ta:tabla);
    var i:integer;
    begin
                i:=1;
                while (i<=30) and (ta[i]<>0) do
                      begin
                        write(ta[i]);
                        i:=i+1;
                      end;
         writeln;
    end;
    procedure escribirfa(fa2:fra);
    var i:integer;
    begin
          (*writeln (fa2);*)
         for i:=1 to length(fa2) do
             write(fa2[i]);
         writeln;
    end;
begin
     clrscr;
     leer(f);
     inici(t);
     cifrar(f,t);
     escribirta(t);
     descifrar(t,f2);
     escribirfa(f2);
     readkey;
     donewincrt;
end.
