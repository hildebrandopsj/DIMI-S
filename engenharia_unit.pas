{*******************************************************}
{                                                       }
{       Hildebrando Pereira dos Santos Junior           }
{                                                       }
{       Copyright (c) 2022 Pereira Santos Engenharia    }
{                                                       }
{*******************************************************}

unit Engenharia_Unit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils,Math;
  procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; var Fyd, Fywd, Es, Epsilon_yd: real);
  procedure PropriedadeDoConcretoCompressao(Fck,Gama_c: real; var Fcd,Alpha_v2,Fcd1,Fcd2,Fcd3:real);
  procedure PropriedadeDoConcretoTracao(Fck,Gama_c: real; var Fctm,Fctk_inf,Fctk_sup,Fctd :real);
  procedure BlocoRetangular(Fck: real; var Lambda,Alpha_c,Epsilon_c2,Epsilon_cu:real);
  procedure ModuloDeElasticidade(Fck, Alpha_e: real; var Eci,Ecs:real);
  function BetaLimite (Fck, Delta: real):real;
  procedure SecaoRetangular(Bw, H:real);

implementation

{$REGION 'MÓDULO DE MATERIAIS'}
{ Calcular as propriedades do aço das armaduras }
 procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; var Fyd, Fywd, Es, Epsilon_yd: real);

 begin
   Fywd:=Fywk/Gama_s;
   Fyd:=Fyk/Gama_s;
   Es:=210000;
   Epsilon_yd:=-Fyd/Es;
 end;

 { Calcular as propriedades do concreto à compressão }
 procedure PropriedadeDoConcretoCompressao(Fck,Gama_c: real; var Fcd,Alpha_v2,Fcd1,Fcd2,Fcd3:real);

 begin
   Fcd:=Fck/Gama_c;
   Alpha_v2:= 1-Fck/250;
   Fcd1:=0.85*Alpha_v2*Fcd;
   Fcd2:=0.60*Alpha_v2*Fcd;
   Fcd3:=0.72*Alpha_v2*Fcd;
 end;

 { Calcular as propriedades do concreto à tração }
 procedure PropriedadeDoConcretoTracao(Fck,Gama_c: real; var Fctm,Fctk_inf,Fctk_sup,Fctd :real);

 begin
   if Fck <= 50 then
     begin
       Fctm:=0.3*Fck**(2/3);
     end
   else
     begin
       Fctm:=2.12*ln(1+0.11*Fck);
     end;
   Fctk_inf:=0.7*Fctm;
   Fctk_sup:=1.3*Fctm;
   Fctd:=Fctk_inf/Gama_c;
 end;

 { Calcular os parâmetros utilizados para o bloco retangular de tensões }
 procedure BlocoRetangular(Fck: real; var Lambda,Alpha_c,Epsilon_c2,Epsilon_cu :real);

 begin
   if Fck <= 50 then
     begin
       Lambda:=0.8;
       Alpha_c:=0.85;
       Epsilon_c2:=2/1000;
       Epsilon_cu:=3.5/1000;
     end
   else
     begin
       Lambda:=0.8-(Fck-50)/400;
       Alpha_c:=0.85*(1-(Fck-50)/200);
       Epsilon_c2:=2.6/1000+0.85/1000*(Fck-50)**0.53;
       Epsilon_cu:=2.6/1000+35/1000*((90-Fck)/100)**4;
     end;
 end;

 { Calcular o módulo de elasticidade }
 procedure ModuloDeElasticidade(Fck, Alpha_e: real; var Eci,Ecs:real);
 var
   Alpha_i: real;
 begin
   Alpha_i:=0.8+0.2*(Fck/80);
   if Fck <= 50 then
     begin
       Eci:=Alpha_e*5600*sqrt(Fck);
     end
   else
     begin
       Eci:=(21.5*10**3)*Alpha_e*(Fck/10+1.25)**(1/3);
     end;
   Ecs:=Alpha_i*Eci;
 end;

 { Função para definir a relação limite da linha neutra x/d }
 function BetaLimite (Fck, Delta: real):real;

 begin
   if Fck <= 50 then
     begin
       result:=0.8*Delta-0.35;
     end
   else
     begin
       result:=0.8*Delta-0.45;
     end;
   BetaLimite:=result;
 end;
{$ENDREGION}


 procedure SecaoRetangular(Bw, H:real);
var
  poligonal: array[1..5,1..2] of real;
begin
  poligonal[1,1]:=0;
  poligonal[2,1]:=0;
  poligonal[3,1]:=H;
  poligonal[4,1]:=H;
  poligonal[5,1]:=0;
  poligonal[1,2]:=0;
  poligonal[2,2]:=Bw;
  poligonal[3,2]:=Bw;
  poligonal[4,2]:=0;
  poligonal[5,2]:=0;
end;


end.

