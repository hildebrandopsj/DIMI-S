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
  Classes, SysUtils;
  procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; var Fyd, Fywd, Es, Epsilon_yd: real);

implementation
procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; var Fyd, Fywd, Es, Epsilon_yd: real);

begin
  Fywd:=Fywk/Gama_s;
  Fyd:=Fyk/Gama_s;
  Es:=210000;
  Epsilon_yd:=-Fyd/Es;
end;

procedure PropriedadeDoConcreto(Fck,Gama_c: real; var Fcd,Lambda,Alpha_c,Epsilon_c2,Epsilon_cu, :real);

begin
  Fcd:=Fck/Gama_c;
  Alpha_v2:= 1-Fck/250;
  Fcd1:=0.85*Alpha_v2*Fcd;
  Fcd2:=0.60*Alpha_v2*Fcd;
  Fcd3:=0.72*Alpha_v2*Fcd;
  Fctm:=0.3*Fck**(2/3);
  Fctk_inf:=0.7*Fctm;
  Fctk_sup:=1.3*Fctm;
  Fctd:=Fctk_inf/Gama_c;
  Alpha_i:=0.8+0.2*(Fck/80);
  if Fck <= 50 then
    begin
      Lambda:=0.8;
      Alpha_c:=0.85;
      Epsilon_c2:=2/1000;
      Epsilon_cu:=3.5/1000;
      Beta_limite:=0.8*Delta-0.35;
      Eci:=Alpha_e*5600*sqrt(Fck);
    end
  else
    begin
      Lambda:=0.8-(Fck-50)/400;
      Alpha_c:=0.85*(1-(Fck-50)/200);
      Epsilon_c2:=2.6/1000+0.85/1000*(Fck-50)**0.53;
      Epsilon_cu:=2.6/1000+35/1000*((90-Fck)/100)**4;
      Beta_limite:=0.8*Delta-0.45;
      Eci:=(21.5*10**3)*Alpha_e*(Fck/10+1.25)**(1/3);
    end;
  Ecs:=Alpha_i*Eci;


end.

