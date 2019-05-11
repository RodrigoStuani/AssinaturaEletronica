unit uFrmAssinaturaEletronica;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics,
  FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts,
  FMX.Objects, System.Generics.Collections;

type
  TAssinatura = Record
    rPosicaoCursor: TPointF;
    rPosState: Byte;
  end;

  TFrmAssinaturaEletronica = class(TForm)
    imgAssinaturaEletronica: TImage;
    rtgAssinaturaEletronica: TRectangle;
    Layout1: TLayout;
    btnVoltar: TButton;
    btnLImpar: TButton;
    btnAssinaturaOk: TButton;
    lblAssinaturaEletronica: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLImparClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    lAssinar: TList<TAssinatura>;
    bBotao: Boolean;
    procedure AdicionarPonit(x, y: Single; const state: Byte);
  end;

var
  FrmAssinaturaEletronica: TFrmAssinaturaEletronica;

implementation

{$R *.fmx}

{ TFrmAssinaturaEletronica }

procedure TFrmAssinaturaEletronica.AdicionarPonit(x, y: Single; const state: Byte);
var
   pPontoAssintura: TAssinatura;
begin
     pPontoAssintura.rPosicaoCursor := PointF(x, y);
     pPontoAssintura.rPosState := state;

     if lAssinar.Count -1 < 0 then
        pPontoAssintura.rPosState := 0;

     //video parado no tempo 14:00
     //TO DO

end;

procedure TFrmAssinaturaEletronica.btnLImparClick(Sender: TObject);
begin
     lAssinar.Clear;
end;

procedure TFrmAssinaturaEletronica.btnVoltarClick(Sender: TObject);
begin
     // Limpar a assinatura e depois fechar o fomulario.
     lAssinar.Clear;
     Self.Close;
end;

procedure TFrmAssinaturaEletronica.FormCreate(Sender: TObject);
begin
     //instancia o objeto lAssinar da lista.
     lAssinar := TList<TAssinatura>.Create;
end;

procedure TFrmAssinaturaEletronica.FormDestroy(Sender: TObject);
begin
     //Libera o objeto da memoria
     FreeAndNil(lAssinar);
end;

procedure TFrmAssinaturaEletronica.FormShow(Sender: TObject);
begin
     //Limpar a lista de objetos assinar.
     lAssinar.Clear;
end;

end.
