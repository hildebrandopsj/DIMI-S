program DIMIS;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, GUI_unit, Design_unit
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='DIMensIonamento de Seções';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.Run;
end.

