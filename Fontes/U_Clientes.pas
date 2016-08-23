unit U_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TF_Clientes = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Clientes: TF_Clientes;

implementation

{$R *.dfm}

procedure TF_Clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    F_Clientes := nil;
end;

end.
