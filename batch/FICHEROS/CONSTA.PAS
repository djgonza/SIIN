program consta;
(*array de registro con constantes *)
uses wincrt;
Type
    tabla=record
            prov:string[20];
            km:integer;
           end;
    tt=array[1..4] of tabla;

const
    t:tt=((prov:'getafe';km:10),(prov:'madrid';km:20),
         (prov:'parla';km:5),(prov:'arrecife';km:25));
var

   dato:string[10];
   codigo,i:integer;
   numero:real;
begin
     for i:=1 to 4 do
         begin
              write(t[i].prov,'  ');
              writeln(t[i].km);
         end;
     readkey;
     donewincrt;
     end.
