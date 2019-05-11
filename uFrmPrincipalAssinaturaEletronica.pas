unit uFrmPrincipalAssinaturaEletronica;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, uFrmAssinaturaEletronica;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    lblNomeComida: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblValorSushi: TLabel;
    Image1: TImage;
    Rectangle2: TRectangle;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TForm1.Button4Click(Sender: TObject);
begin
  FrmAssinaturaEletronica.Show;
end;

end.
