unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  ExtCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    cb_Tipo_elemento: TComboBox;
    cb_Geometria: TComboBox;
    cb_Fyk: TComboBox;
    cb_Fywk: TComboBox;
    cb_Fck: TComboBox;
    cb_Alpha_e: TComboBox;
    Barra_Status: TStatusBar;
    lb_Msd: TLabel;
    lb_Msd_min: TLabel;
    lb_X: TLabel;
    lb_Secao: TLabel;
    lb_Beta: TLabel;
    lb_Beta_23: TLabel;
    lb_Beta_limite: TLabel;
    lb_Beta_34: TLabel;
    lb_Dominio: TLabel;
    lb_Verificacao_Flexao: TLabel;
    lb_X_u: TLabel;
    lb_Msd_u: TLabel;
    lb_Msd_min_u: TLabel;
    PaintBox1: TPaintBox;
    tb_Msd: TEdit;
    lb_Ac: TLabel;
    lb_Ycg: TLabel;
    lb_I0: TLabel;
    lb_W0_inf: TLabel;
    lb_W0_sup: TLabel;
    lb_Ac_u: TLabel;
    lb_Ycg_u: TLabel;
    lb_I0_u: TLabel;
    lb_W0_inf_u: TLabel;
    lb_W0_sup_u: TLabel;
    lb_Fcd_u: TLabel;
    lb_Eci_u: TLabel;
    lb_Ecs_u: TLabel;
    lb_Epsilon_c2_u: TLabel;
    lb_Epsilon_cu_u: TLabel;
    lb_Epsilon_yd_u: TLabel;
    lb_Es_u: TLabel;
    lb_Bw_u: TLabel;
    lb_H_u: TLabel;
    lb_Bf_u: TLabel;
    lb_Hf_u: TLabel;
    lb_D_u: TLabel;
    lb_D_linha_u: TLabel;
    lb_C_u: TLabel;
    lb_Fywd_u: TLabel;
    lb_Fyd_u: TLabel;
    lb_Fcd1_u: TLabel;
    lb_Fcd2_u: TLabel;
    lb_Fcd3_u: TLabel;
    lb_Fctm_u: TLabel;
    lb_Fctk_inf_u: TLabel;
    lb_Fctk_sup_u: TLabel;
    lb_Fctd_u: TLabel;
    lb_Tipo_elemento: TLabel;
    lb_Geometria: TLabel;
    lb_H: TLabel;
    lb_Bf: TLabel;
    lb_Hf: TLabel;
    lb_D: TLabel;
    lb_D_linha: TLabel;
    lb_C: TLabel;
    lb_Bw: TLabel;
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
    tb_Msd_min: TEdit;
    tb_Beta: TEdit;
    tb_Beta_23: TEdit;
    tb_Beta_limite: TEdit;
    tb_Beta_34: TEdit;
    tb_Dominio: TEdit;
    tb_Verificacao_Flexao: TEdit;
    tb_X: TEdit;
    tb_Secao: TEdit;
    tb_Ycg: TEdit;
    tb_I0: TEdit;
    tb_W0_inf: TEdit;
    tb_W0_sup: TEdit;
    tb_Epsilon_c2: TEdit;
    tb_C: TEdit;
    tb_Bw: TEdit;
    tb_Ac: TEdit;
    tb_H: TEdit;
    tb_Bf: TEdit;
    tb_Hf: TEdit;
    tb_D: TEdit;
    tb_D_linha: TEdit;
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
    gb_Aco: TGroupBox;
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
    gb_Geometria: TGroupBox;
    GroupBox50: TGroupBox;
    GroupBox51: TGroupBox;
    GroupBox52: TGroupBox;
    GroupBox53: TGroupBox;
    GroupBox54: TGroupBox;
    GroupBox55: TGroupBox;
    GroupBox56: TGroupBox;
    GroupBox57: TGroupBox;
    gb_Propriedades: TGroupBox;
    GroupBox7: TGroupBox;
    gb_Es_Flexao_Simples: TGroupBox;
    gb_Linha_neutra: TGroupBox;
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
    procedure cb_GeometriaChange(Sender: TObject);
    procedure cb_Tipo_elementoChange(Sender: TObject);
    procedure tb_MsdChange(Sender: TObject);
    procedure tb_MsdKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure tb_BfChange(Sender: TObject);
    procedure tb_BfKeyPress(Sender: TObject; var Key: char);
    procedure tb_BwChange(Sender: TObject);
    procedure tb_BwKeyPress(Sender: TObject; var Key: char);
    procedure tb_CKeyPress(Sender: TObject; var Key: char);
    procedure tb_DChange(Sender: TObject);
    procedure tb_DeltaKeyPress(Sender: TObject; var Key: char);
    procedure tb_DKeyPress(Sender: TObject; var Key: char);
    procedure tb_D_linhaChange(Sender: TObject);
    procedure tb_D_linhaKeyPress(Sender: TObject; var Key: char);
    procedure tb_Gama_cKeyPress(Sender: TObject; var Key: char);
    procedure tb_Gama_sKeyPress(Sender: TObject; var Key: char);
    procedure tb_HChange(Sender: TObject);
    procedure tb_HfChange(Sender: TObject);
    procedure tb_HfKeyPress(Sender: TObject; var Key: char);
    procedure tb_HKeyPress(Sender: TObject; var Key: char);
  private

  public
    procedure Materiais;
    procedure Propriedades_Geometricas;
    procedure Flexao_Simples;
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
  Fyk, Fyd, Fywk, Fywd, Es, Epsilon_yd, Epsilon_s2, Epsilon_s1: real;
  Rsd2, Rsd1, Sigma_sd2, Sigma_sd1:real;
  //Variáveis referentes a geometria
  Bw, H, Bf, Hf, D, D_linha, C, Ac, Ycg, I0, W0_inf, W0_sup, Aw, Af,Sx :real;
  Tipo_elemento, Geometria:String;
  //Variáveis referentes a flexão simples
  Msd, Msd_min, X, Y, Mcfd, Rcfd, Mcwd, Rcwd, Beta, Beta_23, Beta_34:real;
  X_min, X_23, X_34, X_limite, Y_min:real;
  Mcfd_min, Rcfd_min, Mcwd_min, Rcwd_min, Delta_Msd:real;
  Secao, Dominio, Verificacao_Flexao:String;
implementation
{$R *.lfm}

{ TForm1 }
//Cálculos preliminares apenas para preenchimento inicial
procedure TForm1.FormCreate(Sender: TObject);
begin
  Materiais;
  Propriedades_Geometricas;
  Flexao_Simples;
end;

{$REGION 'MÓDULO DE MATERIAIS '}
 //******************************************************************************
 //                            MÓDULO DE MATERIAIS
 //******************************************************************************
 procedure TForm1.Materiais;
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
   Materiais;
 end;

 procedure TForm1.cb_Alpha_eChange(Sender: TObject);
 begin
   Materiais;
 end;

 procedure TForm1.cb_FykChange(Sender: TObject);
 begin
   Materiais;
 end;

 procedure TForm1.cb_FywkChange(Sender: TObject);
 begin
   Materiais;
 end;
{$ENDREGION}

{$REGION 'MÓDULO DE GEOMETRIA'}
 //******************************************************************************
 //                            MÓDULO DE GEOMETRIA
 //******************************************************************************
 Procedure TForm1.Propriedades_Geometricas;
 begin
 try
   //Leitura dos dados de geometria
   Bw:=StrToFloat(tb_Bw.Text);
   H:=StrToFloat(tb_H.Text);
   Bf:=StrToFloat(tb_Bf.Text);
   Hf:=StrToFloat(tb_Hf.Text);
   D:=StrToFloat(tb_D.Text);
   D_linha:=StrToFloat(tb_D_linha.Text);
   //Cálculo das propriedades geométricas
   case cb_Tipo_Elemento.ItemIndex of
     0: Tipo_elemento:='Viga';
     1: Tipo_elemento:='Laje';
     end;
   case cb_Geometria.ItemIndex of  //what entry (which item) has currently been chosen
     0: //Seção Retangular
     begin
       Ac:=Bw*H;
       Ycg:=H/2;
       I0:=(Bw*H**3)/12;
       W0_inf:=I0/Ycg;
       W0_sup:=I0/Ycg;
       Geometria:='Seção Retangular';
     end;
     1: //Seção Tê
     begin
       Aw:=H*Bw;
       Af:=Hf*(Bf-Bw);
       Ac:=Aw+Af;
       Sx:=(Aw*H)/2+Af*(H-Hf/2);
       Ycg:=Sx/Ac;
       I0:=Aw*((H**2)/12+(Ycg-H/2)**2)+Af*((Hf**2)/12+(H-Ycg-Hf/2)**2);
       W0_inf:=I0/Ycg;
       W0_sup:=I0/(H-Ycg);
       Geometria:='Seção Tê';
     end;
     2: //Seção Tê Invertido
     begin
       Aw:=H*Bw;
       Af:=Hf*(Bf-Bw);
       Ac:=Aw+Af;
       Sx:=(Aw*H)/2+Af*(Hf/2);
       Ycg:=Sx/Ac;
       I0:=Aw*((H**2)/12+(Ycg-H/2)**2)+Af*((Hf**2)/12+(Ycg-Hf/2)**2);
       W0_inf:=I0/Ycg;
       W0_sup:=I0/(H-Ycg);
       Geometria:='Seção Tê Invertido';
     end;
     3: //Seção I
     begin
       Aw:=H*Bw;
       Af:=Hf*(Bf-Bw)*2;
       Ac:=Aw+Af;
       Sx:=(Aw*H)/2+0.5*Af*(Hf/2)+0.5*Af*(H-Hf/2);
       Ycg:=Sx/Ac;
       I0:=Aw*((H**2)/12+(Ycg-H/2)**2)+0.5*Af*((Hf**2)/12+(Ycg-Hf/2)**2)+0.5*Af*((Hf**2)/12+(H-Ycg-Hf/2)**2);
       W0_inf:=I0/Ycg;
       W0_sup:=I0/(H-Ycg);
       Geometria:='Seção I';
     end;
   end;
   //Apresentação dos dados nos TEdit
   tb_Ac.Text:=FloatToStrF(Ac,ffFixed,3,2);
   tb_Ycg.Text:=FloatToStrF(Ycg,ffFixed,3,2);
   tb_I0.Text:=FloatToStrF(I0,ffFixed,3,2);
   tb_W0_inf.Text:=FloatToStrF(W0_inf,ffFixed,3,2);
   tb_W0_sup.Text:=FloatToStrF(W0_sup,ffFixed,3,2);
   //Preenchimento da Status Bar
   Barra_Status.Panels[3].text:=Tipo_elemento;
   Barra_Status.Panels[4].text:=Geometria;

   except
    on E : EZeroDivide do
      ShowMessage('Ocorreu uma divisão por zero!');
    on E: EConvertError do
      ShowMessage('Existe uma variável em branco. Verifique os dados inseridos');
    end;
 end;

  procedure TForm1.tb_BwKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.tb_HKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.tb_BfKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.tb_HfKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.tb_DKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.tb_D_linhaKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.tb_CKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.cb_Tipo_elementoChange(Sender: TObject);
 begin
     case cb_Tipo_Elemento.ItemIndex of
     0: Tipo_elemento:='Viga';
     1: Tipo_elemento:='Laje';
     end;
      if Tipo_elemento = 'Viga' then
      begin
          cb_Geometria.Items.Clear;                      //Apagar as escolhas existentes
          cb_Geometria.Items.Add('Seção Retangular');    //Incluir um item
          cb_Geometria.Items.Add('Seção Tê');
          cb_Geometria.Items.Add('Seção Tê Invertido');
          cb_Geometria.Items.Add('Seção I');
          cb_Geometria.Text:='Seção Retangular';
          Propriedades_Geometricas;                       //Atualizar as propriedades
      end
   else
   begin
          cb_Geometria.Items.Clear;                      //Apagar as escolhas existentes
          cb_Geometria.Items.Add('Seção Retangular');    //Incluir um item
          cb_Geometria.Text:='Seção Retangular';
          Propriedades_Geometricas;                      //Atualizar as propriedades
   end;
 end;

 procedure TForm1.cb_GeometriaChange(Sender: TObject);
 begin
 Propriedades_Geometricas;
 end;

 procedure TForm1.tb_BwChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm1.tb_HChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm1.tb_BfChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm1.tb_HfChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm1.tb_DChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm1.tb_D_linhaChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;
{$ENDREGION}

{$REGION 'MÓDULO DE FLEXÃO SIMPLES'}
 //******************************************************************************
 //                    MÓDULO DE FLEXÃO SIMPLES
 //******************************************************************************
 procedure TForm1.tb_MsdKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm1.Flexao_Simples;
 begin
 try
   //Leitura dos dados de flexão
   Msd:=StrToFloat(tb_Msd.Text);
   //Conversões
   Msd:=100*Msd;
   Msd_min:=(0.8*(Fctk_sup/10)*W0_inf)/100;
   //Determinação da linha neutra
   X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
   Y:=Lambda*X;
   case  Geometria of
   'Seção Tê':
         if Y > Hf then
         begin
             Rcfd:=Alpha_c*(Fcd/10)*(Bf-Bw)*Hf;
             Mcwd:=Msd-Rcfd*(D-Hf/2);
             X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Mcwd/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
             secao:='Seção Tê Verdadeira';
         end
         else
             begin
             X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
             Rcwd:=0;
             Rcfd:=Alpha_c*(Fcd/10)*Bf*Lambda*X;
             secao:='Seção Tê Falsa';
         end;
   'Seção Tê Invertido':
         if Y > H-Hf then
         begin
             Rcwd:=Alpha_c*(Fcd/10)*Bw*(H-Hf);
             Mcfd:=Msd-Rcwd*(D-(H-Hf)/2);
             X:=(D-(H-Hf))*(1/Lambda-sqrt(1/(Lambda**2)-Mcfd/(0.50*Alpha_c*(Fcd/10)*Bf*((D-(H-Hf))**2)*(Lambda**2))))+(H-Hf);
             Rcwd:=Alpha_c*(Fcd/10)*Bf*Lambda*(X-(H-Hf));
             Secao:='Seção Tê Verdadeira';
         end
         else
             begin
             X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
             Rcfd:=0;
             Secao:='Seção Tê Falsa';
         end;
   'Seção I':
         if Y > Hf then
         begin
             Rcfd:=Alpha_c*(Fcd/10)*(Bf-Bw)*Hf;
             Mcwd:=Msd-Rcfd*(D-Hf/2);
             X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Mcwd/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
             Secao:='Seção Tê Verdadeira';
         end
         else
             begin
             X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
             Rcwd:=0;
             Rcfd:=Alpha_c*(Fcd/10)*Bf*Lambda*X;
             Secao:='Seção Tê Falsa';
         end;
      'Seção Retangular':
         begin
             Rcfd:=0;
             X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
             Secao:='Seção Retangular';
         end
   end;
   //Relações da linha neutra
   Beta:=X/D;
   Beta_23:=Epsilon_cu/(Epsilon_cu+0.01);
   Beta_34:=Epsilon_cu/(Epsilon_cu+abs(Epsilon_yd));
   X_23:=Beta_23*D;
   X_34:=Beta_34*D;
   X_limite:=Beta_limite*D;
   //Dominios de Deformação
   if X<0 then
      Dominio:='1'
   else if (0<X) and (X<X_23) then
      Dominio:='2'
   else if (X_23<X) and (X<X_34) then
      Dominio:='3'
   else if (X_34<X) and (X<D) then
      Dominio:='4'
   else if (D<X) and (X<H) then
      Dominio:='4a'
   else
      Dominio:='5';
   //Verificação da Ductilidade
   if X<X_limite then
     Verificacao_Flexao:='Ductilidade atendida'
   else
     Verificacao_Flexao:='Limite ultrapassado';
   //Determinação da linha neutra para o momento mínimo
   X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
   Y_min:=Lambda*X_min;
   case  Geometria of
   'Seção Tê':
         if Y_min > Hf then
         begin
             Rcfd_min:=Alpha_c*(Fcd/10)*(Bf-Bw)*Hf;
             Mcwd_min:=(Msd_min*100)-Rcfd_min*(D-Hf/2);
             X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-Mcwd_min/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd_min:=Alpha_c*(Fcd/10)*Bw*Lambda*X_min;
         end
         else
             begin
             X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
             Rcwd_min:=0;
             Rcfd_min:=Alpha_c*(Fcd/10)*Bf*Lambda*X_min;
         end;
   'Seção Tê Invertido':
         if Y_min > H-Hf then
         begin
             Rcwd_min:=Alpha_c*(Fcd/10)*Bw*(H-Hf);
             Mcfd_min:=(Msd_min*100)-Rcwd_min*(D-(H-Hf)/2);
             X_min:=(D-(H-Hf))*(1/Lambda-sqrt(1/(Lambda**2)-Mcfd_min/(0.50*Alpha_c*(Fcd/10)*Bf*((D-(H-Hf))**2)*(Lambda**2))))+(H-Hf);
             Rcwd:=Alpha_c*(Fcd/10)*Bf*Lambda*(X_min-(H-Hf));
         end
         else
             begin
             X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd_min:=Alpha_c*(Fcd/10)*Bw*Lambda*X_min;
             Rcfd_min:=0;
         end;
   'Seção I':
         if Y_min > Hf then
         begin
             Rcfd_min:=Alpha_c*(Fcd/10)*(Bf-Bw)*Hf;
             Mcwd_min:=(Msd_min*100)-Rcfd_min*(D-Hf/2);
             X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-Mcwd_min/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd_min:=Alpha_c*(Fcd/10)*Bw*Lambda*X_min;
         end
         else
             begin
             X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
             Rcwd_min:=0;
             Rcfd_min:=Alpha_c*(Fcd/10)*Bf*Lambda*X_min;
         end;
      'Seção Retangular':
         begin
             Rcfd_min:=0;
             X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd_min:=Alpha_c*(Fcd/10)*Bw*Lambda*X_min;
         end
   end;
   //Determinação das áreas de armadura no caso de armadura dupla
   if (Geometria='Seção Tê') and ((Dominio='4') or (X>X_limite)) then
   begin
       X:=X_limite;
       Y:=Lambda*X;
       if Y > Hf then
       begin
          Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
          Rcfd:=Alpha_c*(Fcd/10)*(Bf-Bw)*Hf;
          Mcwd:=Rcwd*(D-0.5*Lambda*X);
          Mcfd:=Rcfd*(D-0.5*Hf);
          Delta_Msd:=Msd-Mcfd-Mcwd;
          Rsd2:=Delta_Msd/(D-D_linha);
          Epsilon_s2:=(Epsilon_cu*(X-D_linha))/X ;
          if Epsilon_s2 >= Epsilon_yd then
             Sigma_sd2:=Fyd
          else
          Sigma_sd2:=Epsilon_s2*Es/10;
       end
       else
          Rcwd:=0;
          Rcfd:=Alpha_c*(Fcd/10)*Bf*Lambda*X;
          Mcwd:=0;
          Mcfd:=Rcfd*(D-0.5*Lambda*X);
          Delta_Msd:=Msd-Mcfd-Mcwd;
          Rsd2:=Delta_Msd/(D-D_linha);
          Epsilon_s2:=(Epsilon_cu*(X-D_linha))/X ;
          if Epsilon_s2 >= Epsilon_yd then
             Sigma_sd2:=Fyd
          else
             Sigma_sd2:=Epsilon_s2*Es/10;
   end;
   if (Geometria='Seção Tê Invertido') and ((Dominio='4') or (X>X_limite)) then
   begin
   X:=X_limite;
   Y:=Lambda*X;
   if Y >H-Hf then
   begin
      Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
      Rcfd:=Alpha_c*(Fcd/10)*(Bf-Bw)*Hf;
      Mcwd:=Rcwd*(D-0.5*Lambda*X);
      Mcfd:=Rcfd*(D-0.5*Hf);
      Delta_Msd:=Msd-Mcfd-Mcwd;
      Rsd2:=Delta_Msd/(D-D_linha);
      Epsilon_s2:=(Epsilon_cu*(X-D_linha))/X ;
      if Epsilon_s2 >= Epsilon_yd then
         Sigma_sd2:=Fyd
      else
      Sigma_sd2:=Epsilon_s2*Es/10;
   end
   else
      Rcwd:=0;
      Rcfd:=Alpha_c*(Fcd/10)*Bf*Lambda*X;
      Mcwd:=0;
      Mcfd:=Rcfd*(D-0.5*Lambda*X);
      Delta_Msd:=Msd-Mcfd-Mcwd;
      Rsd2:=Delta_Msd/(D-D_linha);
      Epsilon_s2:=(Epsilon_cu*(X-D_linha))/X ;
      if Epsilon_s2 >= Epsilon_yd then
         Sigma_sd2:=Fyd
      else
         Sigma_sd2:=Epsilon_s2*Es/10;
   end;
   //Apresentação dos dados nos TEdit
   tb_Msd_min.Text:=FloatToStrF(Msd_min,ffFixed,3,2);
   tb_X.Text:=FloatToStrF(X,ffFixed,3,2);
   tb_Beta.Text:=FloatToStrF(Beta,ffFixed,3,3);
   tb_Beta_23.Text:=FloatToStrF(Beta_23,ffFixed,3,3);
   tb_Beta_limite.Text:=FloatToStrF(Beta_limite,ffFixed,3,3);
   tb_Beta_34.Text:=FloatToStrF(Beta_34,ffFixed,3,3);
   tb_Secao.Text:=Secao;
   tb_Dominio.Text:=Dominio;
   tb_Verificacao_Flexao.Text:=Verificacao_Flexao;
 except
     on E: EConvertError do
     ShowMessage('Existe uma variável em branco. Verifique os dados inseridos');
     on E: EInvalidOp do
     ShowMessage('Não há solução para o momento aplicado');
 end;
end;

procedure TForm1.tb_MsdChange(Sender: TObject);
begin
   Flexao_Simples;
end;

{$ENDREGION}
end.
