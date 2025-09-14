unit AgendaY2K;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label5: TLabel;
    ListBox1: TListBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

 procedure TForm1.Button1Click(Sender: TObject);
 var
  NombreCompleto: string;
begin
  if (Trim(Edit1.Text) <> '') and (Trim(Edit2.Text) <> '') then
  begin
    NombreCompleto := Edit1.Text + ' ' + Edit2.Text;
    ListBox1.Items.Add(NombreCompleto);

    Edit1.Clear;
    Edit2.Clear;
    Edit1.SetFocus;
  end
  else
    ShowMessage('Por favor, introduce un nombre.');
end;

end.
