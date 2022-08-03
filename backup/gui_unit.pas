unit GUI_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  ExtCtrls, Spin, Math;

type

  { TForm_Principal }

  TForm_Principal = class(TForm)
    Barra_Status: TStatusBar;
    cb_Alpha_e: TComboBox;
    cb_Fck: TComboBox;
    cb_Fyk: TComboBox;
    cb_Fywk: TComboBox;
    cb_Geometria: TComboBox;
    cb_Tipo_elemento: TComboBox;
    FloatSpinEdit1: TFloatSpinEdit;
    FloatSpinEdit2: TFloatSpinEdit;
    gb_Aco: TGroupBox;
    gb_Auxiliar: TGroupBox;
    gb_Bloco: TGroupBox;
    gb_Coeficientes: TGroupBox;
    gb_Concreto: TGroupBox;
    gb_Es_Flexao_Simples: TGroupBox;
    gb_Geometria: TGroupBox;
    gb_Linha_neutra: TGroupBox;
    gb_Propriedades: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox100: TGroupBox;
    GroupBox101: TGroupBox;
    GroupBox102: TGroupBox;
    GroupBox103: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
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
    GroupBox30: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox77: TGroupBox;
    GroupBox78: TGroupBox;
    GroupBox79: TGroupBox;
    GroupBox80: TGroupBox;
    GroupBox81: TGroupBox;
    GroupBox82: TGroupBox;
    GroupBox83: TGroupBox;
    GroupBox84: TGroupBox;
    GroupBox85: TGroupBox;
    GroupBox86: TGroupBox;
    GroupBox92: TGroupBox;
    GroupBox93: TGroupBox;
    GroupBox94: TGroupBox;
    lb_Ac: TLabel;
    lb_Ac_u: TLabel;
    lb_Alpha_c: TLabel;
    lb_Alpha_e: TLabel;
    lb_Alpha_i: TLabel;
    lb_Alpha_v2: TLabel;
    lb_As1: TLabel;
    lb_As1_u: TLabel;
    lb_As2: TLabel;
    lb_As2_u: TLabel;
    lb_As_max: TLabel;
    lb_As_max_u: TLabel;
    lb_As_min: TLabel;
    lb_As_min_u: TLabel;
    lb_As_pele: TLabel;
    lb_As_pele_u: TLabel;
    lb_Aviso: TLabel;
    lb_Beta: TLabel;
    lb_Beta_23: TLabel;
    lb_Beta_34: TLabel;
    lb_Beta_limite: TLabel;
    lb_Bf: TLabel;
    lb_Bf_u: TLabel;
    lb_Bw: TLabel;
    lb_Bw_u: TLabel;
    lb_C: TLabel;
    lb_C_u: TLabel;
    lb_D: TLabel;
    lb_Delta: TLabel;
    lb_Dominio: TLabel;
    lb_D_linha: TLabel;
    lb_D_linha_u: TLabel;
    lb_D_u: TLabel;
    lb_Eci: TLabel;
    lb_Eci_u: TLabel;
    lb_Ecs: TLabel;
    lb_Ecs_u: TLabel;
    lb_Epsilon_c2: TLabel;
    lb_Epsilon_c2_u: TLabel;
    lb_Epsilon_cu: TLabel;
    lb_Epsilon_cu_u: TLabel;
    lb_Epsilon_yd: TLabel;
    lb_Epsilon_yd_u: TLabel;
    lb_Es: TLabel;
    lb_Es_u: TLabel;
    lb_Fcd: TLabel;
    lb_Fcd1: TLabel;
    lb_Fcd1_u: TLabel;
    lb_Fcd2: TLabel;
    lb_Fcd2_u: TLabel;
    lb_Fcd3: TLabel;
    lb_Fcd3_u: TLabel;
    lb_Fcd_u: TLabel;
    lb_Fck: TLabel;
    lb_Fckt_inf: TLabel;
    lb_Fck_u: TLabel;
    lb_Fctd: TLabel;
    lb_Fctd_u: TLabel;
    lb_Fctk_inf_u: TLabel;
    lb_Fctk_sup: TLabel;
    lb_Fctk_sup_u: TLabel;
    lb_Fctm: TLabel;
    lb_Fctm_u: TLabel;
    lb_Fyd: TLabel;
    lb_Fyd_u: TLabel;
    lb_Fyk: TLabel;
    lb_Fywd: TLabel;
    lb_Fywd_u: TLabel;
    lb_Fywk: TLabel;
    lb_Gama_c: TLabel;
    lb_Gama_s: TLabel;
    lb_Geometria: TLabel;
    lb_H: TLabel;
    lb_Hf: TLabel;
    lb_Hf_u: TLabel;
    lb_H_u: TLabel;
    lb_I0: TLabel;
    lb_I0_u: TLabel;
    lb_Lambda: TLabel;
    lb_Msd: TLabel;
    lb_Msd_min: TLabel;
    lb_Msd_min1: TLabel;
    lb_Msd_min10: TLabel;
    lb_Msd_min11: TLabel;
    lb_Msd_min12: TLabel;
    lb_Msd_min13: TLabel;
    lb_Msd_min14: TLabel;
    lb_Msd_min15: TLabel;
    lb_Msd_min16: TLabel;
    lb_Msd_min17: TLabel;
    lb_Msd_min18: TLabel;
    lb_Msd_min19: TLabel;
    lb_Msd_min199: TLabel;
    lb_Msd_min2: TLabel;
    lb_Msd_min20: TLabel;
    lb_Msd_min200: TLabel;
    lb_Msd_min201: TLabel;
    lb_Msd_min202: TLabel;
    lb_Msd_min203: TLabel;
    lb_Msd_min204: TLabel;
    lb_Msd_min205: TLabel;
    lb_Msd_min206: TLabel;
    lb_Msd_min207: TLabel;
    lb_Msd_min208: TLabel;
    lb_Msd_min209: TLabel;
    lb_Msd_min21: TLabel;
    lb_Msd_min210: TLabel;
    lb_Msd_min211: TLabel;
    lb_Msd_min212: TLabel;
    lb_Msd_min213: TLabel;
    lb_Msd_min214: TLabel;
    lb_Msd_min215: TLabel;
    lb_Msd_min216: TLabel;
    lb_Msd_min217: TLabel;
    lb_Msd_min218: TLabel;
    lb_Msd_min219: TLabel;
    lb_Msd_min22: TLabel;
    lb_Msd_min220: TLabel;
    lb_Msd_min221: TLabel;
    lb_Msd_min222: TLabel;
    lb_Msd_min223: TLabel;
    lb_Msd_min224: TLabel;
    lb_Msd_min225: TLabel;
    lb_Msd_min226: TLabel;
    lb_Msd_min227: TLabel;
    lb_Msd_min228: TLabel;
    lb_Msd_min229: TLabel;
    lb_Msd_min23: TLabel;
    lb_Msd_min230: TLabel;
    lb_Msd_min231: TLabel;
    lb_Msd_min232: TLabel;
    lb_Msd_min233: TLabel;
    lb_Msd_min234: TLabel;
    lb_Msd_min235: TLabel;
    lb_Msd_min236: TLabel;
    lb_Msd_min237: TLabel;
    lb_Msd_min238: TLabel;
    lb_Msd_min239: TLabel;
    lb_Msd_min24: TLabel;
    lb_Msd_min240: TLabel;
    lb_Msd_min241: TLabel;
    lb_Msd_min242: TLabel;
    lb_Msd_min25: TLabel;
    lb_Msd_min26: TLabel;
    lb_Msd_min266: TLabel;
    lb_Msd_min267: TLabel;
    lb_Msd_min268: TLabel;
    lb_Msd_min269: TLabel;
    lb_Msd_min27: TLabel;
    lb_Msd_min270: TLabel;
    lb_Msd_min271: TLabel;
    lb_Msd_min272: TLabel;
    lb_Msd_min273: TLabel;
    lb_Msd_min274: TLabel;
    lb_Msd_min275: TLabel;
    lb_Msd_min276: TLabel;
    lb_Msd_min277: TLabel;
    lb_Msd_min278: TLabel;
    lb_Msd_min279: TLabel;
    lb_Msd_min28: TLabel;
    lb_Msd_min280: TLabel;
    lb_Msd_min281: TLabel;
    lb_Msd_min282: TLabel;
    lb_Msd_min283: TLabel;
    lb_Msd_min284: TLabel;
    lb_Msd_min285: TLabel;
    lb_Msd_min286: TLabel;
    lb_Msd_min287: TLabel;
    lb_Msd_min288: TLabel;
    lb_Msd_min289: TLabel;
    lb_Msd_min29: TLabel;
    lb_Msd_min290: TLabel;
    lb_Msd_min291: TLabel;
    lb_Msd_min292: TLabel;
    lb_Msd_min293: TLabel;
    lb_Msd_min294: TLabel;
    lb_Msd_min295: TLabel;
    lb_Msd_min296: TLabel;
    lb_Msd_min297: TLabel;
    lb_Msd_min298: TLabel;
    lb_Msd_min299: TLabel;
    lb_Msd_min3: TLabel;
    lb_Msd_min30: TLabel;
    lb_Msd_min31: TLabel;
    lb_Msd_min32: TLabel;
    lb_Msd_min33: TLabel;
    lb_Msd_min34: TLabel;
    lb_Msd_min35: TLabel;
    lb_Msd_min36: TLabel;
    lb_Msd_min37: TLabel;
    lb_Msd_min38: TLabel;
    lb_Msd_min39: TLabel;
    lb_Msd_min4: TLabel;
    lb_Msd_min40: TLabel;
    lb_Msd_min41: TLabel;
    lb_Msd_min42: TLabel;
    lb_Msd_min43: TLabel;
    lb_Msd_min44: TLabel;
    lb_Msd_min45: TLabel;
    lb_Msd_min46: TLabel;
    lb_Msd_min47: TLabel;
    lb_Msd_min48: TLabel;
    lb_Msd_min5: TLabel;
    lb_Msd_min6: TLabel;
    lb_Msd_min7: TLabel;
    lb_Msd_min8: TLabel;
    lb_Msd_min9: TLabel;
    lb_Msd_min_u: TLabel;
    lb_Msd_min_u1: TLabel;
    lb_Msd_min_u2: TLabel;
    lb_Msd_min_u3: TLabel;
    lb_Msd_min_u4: TLabel;
    lb_Msd_min_u5: TLabel;
    lb_Msd_min_u6: TLabel;
    lb_Msd_u: TLabel;
    lb_Ncp: TLabel;
    lb_Ncp_u: TLabel;
    lb_Secao: TLabel;
    lb_Theta: TLabel;
    lb_Theta1: TLabel;
    lb_Tipo_armacao: TLabel;
    lb_Tipo_elemento: TLabel;
    lb_Verificacao_Flexao: TLabel;
    lb_Vsd: TLabel;
    lb_Vsd1: TLabel;
    lb_Vsd_u: TLabel;
    lb_Vsd_u1: TLabel;
    lb_W0_inf: TLabel;
    lb_W0_inf_u: TLabel;
    lb_W0_sup: TLabel;
    lb_W0_sup_u: TLabel;
    lb_X: TLabel;
    lb_X1: TLabel;
    lb_X10: TLabel;
    lb_X11: TLabel;
    lb_X12: TLabel;
    lb_X13: TLabel;
    lb_X14: TLabel;
    lb_X15: TLabel;
    lb_X16: TLabel;
    lb_X17: TLabel;
    lb_X2: TLabel;
    lb_X3: TLabel;
    lb_X4: TLabel;
    lb_X5: TLabel;
    lb_X6: TLabel;
    lb_X7: TLabel;
    lb_X8: TLabel;
    lb_X9: TLabel;
    lb_X_u: TLabel;
    lb_X_u1: TLabel;
    lb_X_u10: TLabel;
    lb_X_u11: TLabel;
    lb_X_u12: TLabel;
    lb_X_u13: TLabel;
    lb_X_u14: TLabel;
    lb_X_u15: TLabel;
    lb_X_u16: TLabel;
    lb_X_u17: TLabel;
    lb_X_u2: TLabel;
    lb_X_u3: TLabel;
    lb_X_u4: TLabel;
    lb_X_u5: TLabel;
    lb_X_u6: TLabel;
    lb_X_u7: TLabel;
    lb_X_u8: TLabel;
    lb_X_u9: TLabel;
    lb_Ycg: TLabel;
    lb_Ycg_u: TLabel;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    PageControl3: TPageControl;
    PageControl4: TPageControl;
    PaintBox1: TPaintBox;
    rb_modelo_1: TRadioButton;
    rb_modelo_2: TRadioButton;
    TabArmadura1: TTabSheet;
    TabCortante: TTabSheet;
    TabDeformacao1: TTabSheet;
    TabDeformacao2: TTabSheet;
    TabDetalhamento1: TTabSheet;
    TabFCN: TTabSheet;
    TabFissuracao1: TTabSheet;
    TabFissuracao2: TTabSheet;
    TabFlexao: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabTorcao: TTabSheet;
    tb_Ac: TEdit;
    tb_Alpha_c: TEdit;
    tb_Alpha_i: TEdit;
    tb_Alpha_v2: TEdit;
    tb_As1: TEdit;
    tb_As2: TEdit;
    tb_As_max: TEdit;
    tb_As_min: TEdit;
    tb_As_pele: TEdit;
    tb_Beta: TEdit;
    tb_Beta_23: TEdit;
    tb_Beta_34: TEdit;
    tb_Beta_limite: TEdit;
    tb_Bf: TEdit;
    tb_Bw: TEdit;
    tb_C: TEdit;
    tb_D: TEdit;
    tb_Delta: TEdit;
    tb_Dominio: TEdit;
    tb_D_linha: TEdit;
    tb_Eci: TEdit;
    tb_Ecs: TEdit;
    tb_Epsilon_c2: TEdit;
    tb_Epsilon_cu: TEdit;
    tb_Epsilon_yd: TEdit;
    tb_Es: TEdit;
    tb_Fcd: TEdit;
    tb_Fcd1: TEdit;
    tb_Fcd10: TEdit;
    tb_Fcd11: TEdit;
    tb_Fcd12: TEdit;
    tb_Fcd13: TEdit;
    tb_Fcd14: TEdit;
    tb_Fcd15: TEdit;
    tb_Fcd16: TEdit;
    tb_Fcd17: TEdit;
    tb_Fcd18: TEdit;
    tb_Fcd19: TEdit;
    tb_Fcd2: TEdit;
    tb_Fcd20: TEdit;
    tb_Fcd21: TEdit;
    tb_Fcd22: TEdit;
    tb_Fcd23: TEdit;
    tb_Fcd24: TEdit;
    tb_Fcd25: TEdit;
    tb_Fcd26: TEdit;
    tb_Fcd27: TEdit;
    tb_Fcd28: TEdit;
    tb_Fcd29: TEdit;
    tb_Fcd3: TEdit;
    tb_Fcd30: TEdit;
    tb_Fcd31: TEdit;
    tb_Fcd32: TEdit;
    tb_Fcd33: TEdit;
    tb_Fcd34: TEdit;
    tb_Fcd35: TEdit;
    tb_Fcd36: TEdit;
    tb_Fcd37: TEdit;
    tb_Fcd38: TEdit;
    tb_Fcd39: TEdit;
    tb_Fcd4: TEdit;
    tb_Fcd40: TEdit;
    tb_Fcd41: TEdit;
    tb_Fcd42: TEdit;
    tb_Fcd43: TEdit;
    tb_Fcd5: TEdit;
    tb_Fcd6: TEdit;
    tb_Fcd7: TEdit;
    tb_Fcd8: TEdit;
    tb_Fcd9: TEdit;
    tb_Fctd: TEdit;
    tb_Fctk_inf: TEdit;
    tb_Fctk_sup: TEdit;
    tb_Fctm: TEdit;
    tb_Fyd: TEdit;
    tb_Fywd: TEdit;
    tb_Gama_c: TEdit;
    tb_Gama_s: TEdit;
    tb_H: TEdit;
    tb_Hf: TEdit;
    tb_I0: TEdit;
    tb_Lambda: TEdit;
    tb_Msd: TEdit;
    tb_Msd_min: TEdit;
    tb_Msd_min1: TEdit;
    tb_Msd_min2: TEdit;
    tb_Msd_min3: TEdit;
    tb_Msd_min4: TEdit;
    tb_Msd_min5: TEdit;
    tb_Msd_min6: TEdit;
    tb_Ncp: TEdit;
    tb_Secao: TEdit;
    tb_Tipo_armacao: TEdit;
    tb_Verificacao_Flexao: TEdit;
    tb_Vsd: TEdit;
    tb_Vsd1: TEdit;
    tb_W0_inf: TEdit;
    tb_W0_sup: TEdit;
    tb_X: TEdit;
    tb_X1: TEdit;
    tb_X10: TEdit;
    tb_X11: TEdit;
    tb_X12: TEdit;
    tb_X13: TEdit;
    tb_X14: TEdit;
    tb_X15: TEdit;
    tb_X16: TEdit;
    tb_X17: TEdit;
    tb_X2: TEdit;
    tb_X3: TEdit;
    tb_X4: TEdit;
    tb_X5: TEdit;
    tb_X6: TEdit;
    tb_X7: TEdit;
    tb_X8: TEdit;
    tb_X9: TEdit;
    tb_Ycg: TEdit;
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
  Form_Principal: TForm_Principal;
  //Coeficientes de ponderação
  Gama_c, Gama_s, Delta : real;
  //Variáveis referentes ao concreto
  Beta_limite, Epsilon_cu, Epsilon_c2, Alpha_c, Lambda :real;
  Fck, Fcd, Fcd1, Fcd2, Fcd3, Alpha_v2, Fctm, Fctk_inf, Fctk_sup:real;
  Fctd, Alpha_e, Alpha_i, Eci, Ecs :real;
  //Variáveis referentes ao aço
  Fyk, Fyd, Fywk, Fywd, Es, Epsilon_yd, Epsilon_s2, Epsilon_s1: real;
  Rsd2, Rsd1, Sigma_sd2, Sigma_sd1, As1, As2, As_max, As_pele, As_min:real;
  //Variáveis referentes a geometria
  Bw, H, Bf, Hf, D, D_linha, C, Ac, Ycg, I0, W0_inf, W0_sup, Aw, Af,Sx :real;
  Tipo_elemento, Geometria:String;
  //Variáveis referentes a flexão simples
  Msd, Msd_min, X, Y, Mcfd, Rcfd, Mcwd, Rcwd, Beta, Beta_23, Beta_34:real;
  X_min, X_23, X_34, X_limite,X_aviso, Y_min:real;
  Mcfd_min, Rcfd_min, Mcwd_min, Rcwd_min, Delta_Msd:real;
  Secao, Dominio, Verificacao_Flexao, Tipo_armacao:String;
implementation
{$R *.lfm}

{ TForm_Principal }
//Cálculos preliminares apenas para preenchimento inicial
procedure TForm_Principal.FormCreate(Sender: TObject);
begin
  Materiais;
  Propriedades_Geometricas;
  Flexao_Simples;
end;

{$REGION 'MÓDULO DE MATERIAIS '}
 //******************************************************************************
 //                            MÓDULO DE MATERIAIS
 //******************************************************************************
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
 procedure TForm_Principal.tb_Gama_sKeyPress(Sender: TObject; var Key: char);
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
 procedure TForm_Principal.tb_Gama_cKeyPress(Sender: TObject; var Key: char);
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
 procedure TForm_Principal.tb_DeltaKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.cb_FckChange(Sender: TObject);
 begin
   Materiais;
 end;

 procedure TForm_Principal.cb_Alpha_eChange(Sender: TObject);
 begin
   Materiais;
 end;

 procedure TForm_Principal.cb_FykChange(Sender: TObject);
 begin
   Materiais;
 end;

 procedure TForm_Principal.cb_FywkChange(Sender: TObject);
 begin
   Materiais;
 end;
{$ENDREGION}

{$REGION 'MÓDULO DE GEOMETRIA'}
 //******************************************************************************
 //                            MÓDULO DE GEOMETRIA
 //******************************************************************************
 Procedure TForm_Principal.Propriedades_Geometricas;
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

  procedure TForm_Principal.tb_BwKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.tb_HKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.tb_BfKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.tb_HfKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.tb_DKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.tb_D_linhaKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.tb_CKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.cb_Tipo_elementoChange(Sender: TObject);
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

 procedure TForm_Principal.cb_GeometriaChange(Sender: TObject);
 begin
 Propriedades_Geometricas;
 end;

 procedure TForm_Principal.tb_BwChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm_Principal.tb_HChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm_Principal.tb_BfChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm_Principal.tb_HfChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm_Principal.tb_DChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;

 procedure TForm_Principal.tb_D_linhaChange(Sender: TObject);
 begin
   Propriedades_Geometricas;
 end;
{$ENDREGION}

{$REGION 'MÓDULO DE FLEXÃO SIMPLES'}
 //******************************************************************************
 //                    MÓDULO DE FLEXÃO SIMPLES
 //******************************************************************************
 procedure TForm_Principal.tb_MsdKeyPress(Sender: TObject; var Key: char);
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

 procedure TForm_Principal.Flexao_Simples;
 begin
 try
   //Leitura dos dados de flexão
   Msd:=StrToFloat(tb_Msd.Text);
   //Conversões
   Msd:=100*Msd;
   Msd_min:=(0.8*(Fctk_sup/10)*W0_inf)/100;
   //Função da linha neutra

   //Determinação da linha neutra
   case  Geometria of
   'Seção Tê':
   begin
         X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
         Y:=Lambda*X;    { #todo : Calcular o valor de X dentro de cada caso da geometria e depois avaliar seu resultado }
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
   end;
   'Seção Tê Invertido':
   begin
         X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
         Y:=Lambda*X;
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
   end;
   'Seção I':
   begin
         X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
         Y:=Lambda*X;
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
   end;
      'Seção Retangular':
         begin
             Rcfd:=0;
             X:=D*(1/Lambda-sqrt(1/(Lambda**2)-Msd/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
             Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
             Secao:='Seção Retangular';
         end;
   end;
   //Relações da linha neutra
   Beta:=X/D;
   Beta_23:=Epsilon_cu/(Epsilon_cu+0.01);
   Beta_34:=Epsilon_cu/(Epsilon_cu+abs(Epsilon_yd));
   X_23:=Beta_23*D;
   X_34:=Beta_34*D;
   X_limite:=Beta_limite*D;
   //Para verificação do limite de armadura dupla e emissão de aviso
   X_aviso:=X;
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
   case  Geometria of
   'Seção Tê':
      begin
      X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
      Y_min:=Lambda*X_min;
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
        end;
   'Seção Tê Invertido':
      begin
         X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bw*(D**2)*(Lambda**2))));
         Y_min:=Lambda*X_min;
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
      end;
   'Seção I':
      begin
         X_min:=D*(1/Lambda-sqrt(1/(Lambda**2)-(Msd_min*100)/(0.50*Alpha_c*(Fcd/10)*Bf*(D**2)*(Lambda**2))));
         Y_min:=Lambda*X_min;
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
       Tipo_armacao:='Armadura Dupla';
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
                  Sigma_sd2:=Epsilon_s2*(Es/10);
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
             Sigma_sd2:=Epsilon_s2*(Es/10);
       As2:=Rsd2/Sigma_sd2;
       Rsd1:=Rsd2+Rcfd+Rcwd;
       As1:=Rsd1/(Fyd/10);
   end
   else if (Geometria='Seção Tê Invertido') and ((Dominio='4') or (X>X_limite)) then
   begin
       X:=X_limite;
       Y:=Lambda*X;
       Tipo_armacao:='Armadura Dupla';
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
           Rcwd:=Alpha_c*(Fcd/10)*Bw*(H-Hf);
           Rcfd:=Alpha_c*(Fcd/10)*Bf*(X-(H-Hf));
           Mcwd:=Rcwd*(D-(H-Hf)/2);
           Mcfd:=Rcfd*(D-(X-(H-Hf))/2);
           Delta_Msd:=Msd-Mcfd-Mcwd;
           Rsd2:=Delta_Msd/(D-D_linha);
           Epsilon_s2:=(Epsilon_cu*(X-D_linha))/X ;
           if Epsilon_s2 >= Epsilon_yd then
              Sigma_sd2:=Fyd
           else
              Sigma_sd2:=Epsilon_s2*Es/10;
       As2:=Rsd2/Sigma_sd2;
       Rsd1:=Rsd2+Rcfd+Rcwd;
       As1:=Rsd1/(Fyd/10);
   end
   else if (Geometria='Seção I') and ((Dominio='4') or (X>X_limite)) then
      begin
          X:=X_limite;
          Y:=Lambda*X;
          Tipo_armacao:='Armadura Dupla';
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
             Sigma_sd2:=Epsilon_s2*(Es/10);
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
                Sigma_sd2:=Epsilon_s2*(Es/10);
      end
   else if (Geometria='Seção Retangular') and ((Dominio='4') or (X>X_limite)) then
      begin
          X:=X_limite;
          Y:=Lambda*X;
          Tipo_armacao:='Armadura Dupla';
          Rcwd:=Alpha_c*(Fcd/10)*Bw*Lambda*X;
          Rcfd:=0;
          Mcwd:=Rcwd*(D-0.5*Lambda*X);
          Mcfd:=0;
          Delta_Msd:=Msd-Mcfd-Mcwd;
          Rsd2:=Delta_Msd/(D-D_linha);
          Epsilon_s2:=(Epsilon_cu*(X-D_linha))/X ;
          if Epsilon_s2 >= Epsilon_yd then
             Sigma_sd2:=(Fyd/10)
          else
             Sigma_sd2:=Epsilon_s2*(Es/10);
          As2:=Rsd2/Sigma_sd2;
          Rsd1:=Rsd2+Rcfd+Rcwd;
          As1:=Rsd1/(Fyd/10);
      end
   else
      begin
          Tipo_armacao:='Armadura Simples';
          Rsd1:=Rcwd+Rcfd;
          As2:=0;
          As1:=Rsd1/(Fyd/10);
          Delta_Msd:=0;
      end;
   //Aviso de armadura dupla em excesso
 if (X_aviso/d >= 0.9) or (Delta_Msd >=0.30*Msd) then
    begin
      lb_Aviso.Font.color:=clRed;
      lb_Aviso.Caption:='β > 0,9 ou ΔMsd ≥ 0,30 Msd, não recomenda-se usar armadura dupla';
    end
 else
    begin
      lb_Aviso.Caption:='';
    end;
   //Valores limites de armadura
   As_max:=(4/100)*Ac;
   if  (Rcwd_min+Rcfd_min)/(Fyd/10)<(0.15/100)*Ac then
      As_min:=(0.15/100)*Ac
   else
      As_min:=(Rcwd_min+Rcfd_min)/(Fyd/10);
   //Armaduras auxiliares
   if Tipo_elemento='Viga' then
      if (0.1/100)*Ac > 5 then
         As_pele:=(5/100)*h
      else
         As_pele:=(0.1/100)*Ac
    else
         As_pele:=0;
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
   tb_Tipo_armacao.Text:=Tipo_armacao;
   tb_As1.Text:=FloatToStrF(As1,ffFixed,3,2);
   tb_As2.Text:=FloatToStrF(As2,ffFixed,3,2);
   tb_As_max.Text:=FloatToStrF(As_max,ffFixed,3,2);
   tb_As_min.Text:=FloatToStrF(As_min,ffFixed,3,2);
   tb_As_pele.Text:=FloatToStrF(As_pele,ffFixed,3,2);
 //Tratamento de erros encontrados
except
     on E: EConvertError do
     ShowMessage('Existe uma variável em branco. Verifique os dados inseridos');
     on E: EInvalidOp do
     ShowMessage('Não há solução para o momento aplicado');
end;
end;

procedure TForm_Principal.tb_MsdChange(Sender: TObject);
begin
   Flexao_Simples;
end;

{$ENDREGION}
{$REGION 'MÓDULO DE CISALHAMENTO'}

 //******************************************************************************
 //                    MÓDULO DE CISALHAMENTO
 //******************************************************************************





{$ENDREGION}
end.
