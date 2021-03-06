unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TF_Inicial = class(TForm)
    Panel_menu: TPanel;
    Menu_inicial: TMainMenu;
    S1: TMenuItem;
    N1: TMenuItem;
    Cadastroseconsultas1: TMenuItem;
    N2: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    N3: TMenuItem;
    Mvimentos1: TMenuItem;
    PDV1: TMenuItem;
    N4: TMenuItem;
    Caixa1: TMenuItem;
    N5: TMenuItem;
    VendasGerenciar1: TMenuItem;
    VendasRelatrio1: TMenuItem;
    VendasAbertas1: TMenuItem;
    Stb_Inicial: TStatusBar;
    Timer1: TTimer;
    Btn_Clientes: TSpeedButton;
    Btn_Produtos: TSpeedButton;
    Btn_PDV: TSpeedButton;
    SpeedButton1: TSpeedButton;
    N6: TMenuItem;
    Ajustes1: TMenuItem;
    N7: TMenuItem;
    Sair1: TMenuItem;
    SpeedButton2: TSpeedButton;
    Img_Principal: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Inicial: TF_Inicial;

implementation

{$R *.dfm}

uses U_Clientes;

procedure TF_Inicial.Clientes1Click(Sender: TObject);
begin
    //chamar o form clientes
    if F_Clientes = nil then
    F_Clientes := TF_Clientes.Create(Self);
    F_Clientes.ShowModal;

end;

procedure TF_Inicial.Timer1Timer(Sender: TObject);
begin
    Stb_Inicial.Panels[0].Text := TimeToStr(Time);
    Stb_Inicial.Panels[1].Text := DateToStr(Date);
end;

end.
