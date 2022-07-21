unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    cb_Fyk: TComboBox;
    cb_Fywk: TComboBox;
    cb_Fck: TComboBox;
    cb_Alpha_e: TComboBox;
    lb_Fcd_u: TLabel;
    lb_Eci_u: TLabel;
    lb_Ecs_u: TLabel;
    lb_Epsilon_c2_u: TLabel;
    lb_Epsilon_cu_u: TLabel;
    lb_Epsilon_yd_u: TLabel;
    lb_Es_u: TLabel;
    lb_Fywd_u: TLabel;
    lb_Fyd_u: TLabel;
    lb_Fcd1_u: TLabel;
    lb_Fcd2_u: TLabel;
    lb_Fcd3_u: TLabel;
    lb_Fctm_u: TLabel;
    lb_Fctk_inf_u: TLabel;
    lb_Fctk_sup_u: TLabel;
    lb_Fctd_u: TLabel;
    lb_Lambda: TLabel;
    lb_Epsilon_c2: TLabel;
    lb_Epsilon_cu: TLabel;
    lb_Alpha_c: TLabel;
    lb_Fyk: TLabel;
    lb_Fywk: TLabel;
    lb_Fyd: TLabel;
    lb_Fywd: TLabel;
    lb_Es: TLabel;
    lb_Epsilon_yd: TLabel;
    tb_Epsilon_c2: TEdit;
    tb_Fyd: TEdit;
    tb_Fywd: TEdit;
    tb_Es: TEdit;
    tb_Epsilon_yd: TEdit;
    tb_Epsilon_cu: TEdit;
    tb_Alpha_c: TEdit;
    tb_Lambda: TEdit;
    tb_Gama_s: TEdit;
    tb_Fctk_inf: TEdit;
    tb_Fctk_sup: TEdit;
    tb_Fctd: TEdit;
    tb_Alpha_i: TEdit;
    tb_Eci: TEdit;
    tb_Ecs: TEdit;
    tb_Gama_c: TEdit;
    tb_Delta: TEdit;
    tb_Fcd: TEdit;
    tb_Alpha_v2: TEdit;
    tb_Fcd1: TEdit;
    tb_Fcd2: TEdit;
    tb_Fcd3: TEdit;
    tb_Fctm: TEdit;
    gb_Coeficientes: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    gb_Concreto: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    GroupBox24: TGroupBox;
    GroupBox25: TGroupBox;
    GroupBox26: TGroupBox;
    GroupBox27: TGroupBox;
    GroupBox28: TGroupBox;
    GroupBox29: TGroupBox;
    gb_Bloco: TGroupBox;
    GroupBox30: TGroupBox;
    GroupBox31: TGroupBox;
    GroupBox32: TGroupBox;
    GroupBox33: TGroupBox;
    GroupBox34: TGroupBox;
    GroupBox35: TGroupBox;
    GroupBox36: TGroupBox;
    GroupBox37: TGroupBox;
    GroupBox38: TGroupBox;
    GroupBox39: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox40: TGroupBox;
    GroupBox41: TGroupBox;
    GroupBox42: TGroupBox;
    GroupBox43: TGroupBox;
    GroupBox44: TGroupBox;
    GroupBox45: TGroupBox;
    GroupBox46: TGroupBox;
    GroupBox47: TGroupBox;
    GroupBox48: TGroupBox;
    GroupBox49: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox50: TGroupBox;
    GroupBox51: TGroupBox;
    GroupBox52: TGroupBox;
    GroupBox53: TGroupBox;
    GroupBox54: TGroupBox;
    GroupBox55: TGroupBox;
    GroupBox56: TGroupBox;
    GroupBox57: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    lb_Delta: TLabel;
    lb_Fck: TLabel;
    lb_Fctd: TLabel;
    lb_Alpha_e: TLabel;
    lb_Alpha_i: TLabel;
    lb_Eci: TLabel;
    lb_Fck_u: TLabel;
    lb_Ecs: TLabel;
    lb_Fcd: TLabel;
    lb_Alpha_v2: TLabel;
    lb_Fcd1: TLabel;
    lb_Fcd2: TLabel;
    lb_Fcd3: TLabel;
    lb_Fctm: TLabel;
    lb_Fckt_inf: TLabel;
    lb_Fctk_sup: TLabel;
    lb_Gama_s: TLabel;
    lb_Gama_c: TLabel;
    PageControl1: TPageControl;
    TabMateriais: TTabSheet;
    TabDeformacao: TTabSheet;
    TabFadiga: TTabSheet;
    TabDetalhamento: TTabSheet;
    TabSobre: TTabSheet;
    TabSecao: TTabSheet;
    TabFlexao: TTabSheet;
    TabFCN: TTabSheet;
    TabCortante: TTabSheet;
    TabTorcao: TTabSheet;
    TabArmadura: TTabSheet;
    TabFissuracao: TTabSheet;
    procedure cb_Alpha_eChange(Sender: TObject);
    procedure cb_FckChange(Sender: TObject);
    procedure cb_FykChange(Sender: TObject);
    procedure cb_FywkChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tb_DeltaKeyPress(Sender: TObject; var Key: char);
    procedure tb_Gama_cKeyPress(Sender: TObject; var Key: char);
    procedure tb_Gama_sKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;
  //Coeficientes de ponderação
  Gama_c, Gama_s, Delta : real;
  //Variáveis referentes ao concreto
  Beta_limite, Epsilon_cu, Epsilon_c2, Alpha_c, Lambda :real;
  Fck, Fcd, Fcd1, Fcd2, Fcd3, Alpha_v2, Fctm, Fctk_inf, Fctk_sup:real;
  Fctd, Alpha_e, Alpha_i, Eci, Ecs :real;
  //Variáveis referentes ao aço
  Fyk, Fyd, Fywk, Fywd, Es, Epsilon_yd: real;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.tb_Gama_sKeyPress(Sender: TObject; var Key: char);
begin
// Coletar apenas números positivos e converter o ponto decimal
  if not(key in ['0'..'9','.',',',#8,#13]) then
   key := #0;
if key in [',','.'] then
   key := DefaultFormatSettings.DecimalSeparator;
if key = DefaultFormatSettings.DecimalSeparator then
   if pos(key,TEdit(Sender).Text) <> 0 then
         key := #0;
end;

procedure TForm1.tb_Gama_cKeyPress(Sender: TObject; var Key: char);
begin
// Coletar apenas números positivos e converter o ponto decimal
    if not(key in ['0'..'9','.',',',#8,#13]) then
   key := #0;
if key in [',','.'] then
   key := DefaultFormatSettings.DecimalSeparator;
if key = DefaultFormatSettings.DecimalSeparator then
   if pos(key,TEdit(Sender).Text) <> 0 then
         key := #0;
end;

procedure TForm1.tb_DeltaKeyPress(Sender: TObject; var Key: char);
begin
// Coletar apenas números positivos e converter o ponto decimal
    if not(key in ['0'..'9','.',',',#8,#13]) then
   key := #0;
if key in [',','.'] then
   key := DefaultFormatSettings.DecimalSeparator;
if key = DefaultFormatSettings.DecimalSeparator then
   if pos(key,TEdit(Sender).Text) <> 0 then
         key := #0;
end;

procedure TForm1.cb_FckChange(Sender: TObject);
begin
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
end;

procedure TForm1.cb_FykChange(Sender: TObject);
begin
  case cb_Fyk.ItemIndex of
    0: Fyk:=250;
    1: Fyk:=500;
    2: Fyk:=600;
  end;
    Fyd:=Fyk/Gama_s;
    Es:=210000;
    Epsilon_yd:=-Fyd/Es;
    tb_Fyd.Text:=FloatToStrF(Fyd,ffFixed,3,2);
    tb_Es.Text:=FloatToStrF(Es,ffFixed,3,2);
    tb_Epsilon_yd.Text:=FloatToStrF(Epsilon_yd*1000,ffFixed,3,2);
end;

procedure TForm1.cb_FywkChange(Sender: TObject);
begin
  case cb_Fywk.ItemIndex of
    0: Fywk:=500;
    1: Fywk:=600;
  end;
    Fywd:=Fywk/Gama_s;
    tb_Fywd.Text:=FloatToStrF(Fywd,ffFixed,3,2);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
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
end;

procedure TForm1.cb_Alpha_eChange(Sender: TObject);
begin
  //Escolha do Item no Combobox
  case cb_Alpha_e.ItemIndex of
    0: Alpha_e:=1.2;
    1: Alpha_e:=1;
    2: Alpha_e:=0.9;
    3: Alpha_e:=0.7;
  end;
  //Caso o Alfa e seja alterado, os módulos serão recalculados
   if Fck <= 50 then
      begin
        Eci:=Alpha_e*5600*sqrt(Fck);
      end
   else
      begin
        Eci:=(21.5*10**3)*Alpha_e*(Fck/10+1.25)**(1/3);
      end;
      Ecs:=Alpha_i*Eci;
   tb_Eci.Text:=FloatToStrF(Eci,ffFixed,3,2);
   tb_Ecs.Text:=FloatToStrF(Ecs,ffFixed,3,2);
end;

end.

