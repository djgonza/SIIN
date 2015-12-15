program uno;
uses wincrt;
var fra,c:string[30];
     i,j,cont:integer;
begin
   writeln ('introduce fraase');
   readln(fra);
   writeln ('la frase es: ', fra);
   writeln ('el primer caracter es:',fra[1]);
   for i:=1 to length(fra) do
       begin
         c:=copy(fra,i,1);
         if c<>' ' then
           begin
            cont:=0;
            for j:=i to length(fra) do
                 if c=fra[j] then
                   begin
                     cont:=cont+1;
                     fra[j]:=' '; (*la cadena nula no se puede poner*)
                                   (*no es un tipo char como fra[j]*)
                   end;
            writeln('el caracter ', c,' aparece ',cont:2,'veces');
          end;
       end;
   readkey;
   donewincrt;
   end.