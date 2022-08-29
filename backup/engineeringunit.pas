{*******************************************************}
{                                                       }
{       Hildebrando Pereira dos Santos Junior           }
{                                                       }
{       Copyright (c) 2022 Pereira Santos Engenharia    }
{                                                       }
{*******************************************************}

unit EngineeringUnit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;
  procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; var Fyd, Fywd: real);

implementation
procedure PropriedadeDoAco(Fyk, Fywk, Gama_s: real; var Fyd, Fywd: real);
  var
    Es, Epsilon_yd: real;
  begin
    Fywd:=Fywk/Gama_s;
    Fyd:=Fyk/Gama_s;
    Es:=210000;
    Epsilon_yd:=-Fyd/Es;
  end;
end.

