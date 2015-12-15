program evaluar;
uses wincrt;
type expre=array[1..9] of char;
     p=array[1..9] of integer;

var expresion:expre;
    pila:p;
    i,operando,operando1,operando2,resul,cod,cumbre:integer;

procedure inicializar(var e:expre);
begin
     e[1]:='2'; e[2]:='3'; e[3]:='4'; e[4]:='+';
     e[5]:='*'; e[6]:='1'; e[7]:='5'; e[8]:='*'; e[9]:='-';
end;

procedure empilar(var pila:p;var cumbre:integer; op:integer);
begin
     if cumbre=9 then
        writeln('Pila llena')
     else
         begin
              cumbre:=cumbre+1;
              pila[cumbre]:=op
         end;
end;

procedure desempilar(var pila:p;var cumbre,oper:integer);
begin
     if cumbre=0 then
        writeln('Pila vacía')
       else
           begin
                oper:=pila[cumbre];
                cumbre:=cumbre-1
           end;
end;

function vercumbre(pila:p;cumbre:integer):integer;
begin
     if cumbre=0 then
         begin
          writeln('Pila vacía');
          vercumbre:=0
          end
       else
           vercumbre:=pila[cumbre]
end;

begin  (* Programa principal *)


     inicializar(expresion);
     (* analizar expresion y evaluar *)
     cumbre:=0;
     for i:=1 to 9 do
         if (expresion[i]>='1') and (expresion[i] <='9') then
            begin
                 val(expresion[i],operando,cod);
                 empilar(pila,cumbre,operando);
            end
          else
             begin
                desempilar(pila,cumbre,operando1);
                desempilar(pila,cumbre,operando2);
                case expresion[i] of
                   '+': resul:=operando1+operando2;
                   '-': resul:=operando2-operando1;
                   '*': resul:=operando1*operando2;
                end;
                empilar(pila,cumbre,resul)
             end;
     writeln(' La expresion evaluada es  ',vercumbre(pila,cumbre));
     readkey;
     donewincrt
end.



