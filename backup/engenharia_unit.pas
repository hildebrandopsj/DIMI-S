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
  procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; Fyd, Fywd, Es, Epsilon_yd: real);

implementation
procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; Fyd, Fywd, Es, Epsilon_yd: real);

begin
  Fywd:=Fywk/Gama_s;
  Fyd:=Fyk/Gama_s;
  Es:=210000;
  Epsilon_yd:=-Fyd/Es;
end;




end.

