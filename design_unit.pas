unit Design_unit;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Math;

implementation
    procedure TForm_Principal.Materiais;
 begin
   try
 //Leitura dos coeficientes de ponderação
   Gama_c := StrToFloat(tb_Gama_c.Text);
   Gama_s := StrToFloat(tb_Gama_s.Text);
   Delta := StrToFloat(tb_Delta.Text);
 //Leitura do Fck
   case cb_Fck.ItemIndex of
     0: Fck:=15;
     1: Fck:=18;
     2: Fck:=20;
     3: Fck:=25;
     4: Fck:=30;
     5: Fck:=35;
     6: Fck:=40;
     7: Fck:=45;
     8: Fck:=50;
     9: Fck:=55;
     10: Fck:=60;
     11: Fck:=65;
     12: Fck:=70;
     13: Fck:=75;
     14: Fck:=80;
     15: Fck:=85;
     16: Fck:=90;
   end;
 //Leitura da opção de Alfa e
   case cb_Alpha_e.ItemIndex of
     0: Alpha_e:=1.2;
     1: Alpha_e:=1;
     2: Alpha_e:=0.9;
     3: Alpha_e:=0.7;
   end;
 //Leitura da opção de Fyk
   case cb_Fyk.ItemIndex of
     0: Fyk:=250;
     1: Fyk:=500;
     2: Fyk:=600;
   end;
 //Leitura da opção de Fyk
   case cb_Fywk.ItemIndex of
     0: Fywk:=500;
     1: Fywk:=600;
   end;
 //Cálculo dos parâmetros
    Fcd:=Fck/Gama_c  ;
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
     Fywd:=Fywk/Gama_s;
     Fyd:=Fyk/Gama_s;
     Es:=210000;
     Epsilon_yd:=-Fyd/Es;
 //Apresentação dos resultados no TEdit
    tb_Fcd.Text:=FloatToStrF(Fcd,ffFixed,3,2);
    tb_Alpha_v2.Text:=FloatToStrF(Alpha_v2,ffFixed,3,2);
    tb_Fcd1.Text:=FloatToStrF(Fcd1,ffFixed,3,2);
    tb_Fcd2.Text:=FloatToStrF(Fcd2,ffFixed,3,2);
    tb_Fcd3.Text:=FloatToStrF(Fcd3,ffFixed,3,2);
    tb_Fctm.Text:=FloatToStrF(Fctm,ffFixed,3,2);
    tb_Fctk_inf.Text:=FloatToStrF(Fctk_inf,ffFixed,3,2);
    tb_Fctk_sup.Text:=FloatToStrF(Fctk_sup,ffFixed,3,2);
    tb_Fctd.Text:=FloatToStrF(Fctd,ffFixed,3,2);
    tb_Alpha_i.Text:=FloatToStrF(Alpha_i,ffFixed,3,2);
    tb_Eci.Text:=FloatToStrF(Eci,ffFixed,3,2);
    tb_Ecs.Text:=FloatToStrF(Ecs,ffFixed,3,2);
    tb_Epsilon_c2.Text:=FloatToStrF(Epsilon_c2*1000,ffFixed,3,2);
    tb_Epsilon_cu.Text:=FloatToStrF(Epsilon_cu*1000,ffFixed,3,2);
    tb_Alpha_c.Text:=FloatToStrF(Alpha_c,ffFixed,3,2);
    tb_Lambda.Text:=FloatToStrF(Lambda,ffFixed,3,2);
    tb_Fyd.Text:=FloatToStrF(Fyd,ffFixed,3,2);
    tb_Es.Text:=FloatToStrF(Es,ffFixed,3,2);
    tb_Epsilon_yd.Text:=FloatToStrF(Epsilon_yd*1000,ffFixed,3,2);
    tb_Fywd.Text:=FloatToStrF(Fywd,ffFixed,3,2);
  //Atualização da Status Bar
    Barra_Status.Panels[0].text := ' fck =' + FloatToStr(Fck) + ' MPa';
    Barra_Status.Panels[1].text := 'fyd =' + FloatToStrF(Fyd,ffFixed,3,2) + ' MPa';
    Barra_Status.Panels[2].text := 'fywd =' + FloatToStrF(Fywd,ffFixed,3,2) + ' MPa';
    except
    on E : EZeroDivide do
      ShowMessage('Ocorreu uma divisão por zero. Verifique os dados inseridos');
    on E: EConvertError do
      ShowMessage('Existe uma variável em branco. Verifique os dados inseridos');
    end;
 end;
end.

