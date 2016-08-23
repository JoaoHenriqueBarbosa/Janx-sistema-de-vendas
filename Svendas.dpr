program Svendas;

uses
  Vcl.Forms,
  U_Principal in 'Fontes\U_Principal.pas' {Form3},
  U_Clientes in 'Fontes\U_Clientes.pas' {F_Clientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema de Vendas JanxCorp';
  Application.CreateForm(TF_Inicial, F_Inicial);
  Application.Run;
end.
