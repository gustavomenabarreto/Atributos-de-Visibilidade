unit TesteVisibilidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFormTeste = class (TForm)
    procedure FormCreate(Sender: TObject);
  private
  { private declarations }
    varPrivate :string;

  protected
  { protected declarations }
    varProtected :string;

  strict protected
  { strict protected declarations }
    varStrictProtected :string;

  public
  { public declarations }
    varPublic :string;

  published
  { published declarations }
    property Propriedade:string read varProtected write varProtected;

  strict private
  { strict private declarations }
  varStrictPrivate:string;
  end;

   TFormHerdado = Class (TFormTeste)
   public
      procedure TestaDeclaracoes;
   End;

   TClasseTeste = class
   public
      procedure TestaDeclaracoes;
   end;

var
  FormTeste: TFormTeste;

implementation

{$R *.dfm}

{ TFormHerdado }

procedure TFormHerdado.TestaDeclaracoes;
begin
  varPrivate := '';
//  varStrictPrivate := '';
  varPublic := '';
  varProtected := '';
  varStrictProtected := '';
  Propriedade := '';
end;

{ TClasseTeste }


procedure TClasseTeste.TestaDeclaracoes;
begin
  FormTeste.varPrivate := '';
//  FormTeste.varStrictPrivate := '';
  FormTeste.varPublic := '';
  FormTeste.varProtected := '';
 // FormTeste.varStrictProtected := '';
  FormTeste.Propriedade := '';

end;

procedure TFormTeste.FormCreate(Sender: TObject);
begin
   varPrivate := '';
   varStrictPrivate := '';
   varPublic := '';
   varProtected := '';
   varStrictProtected := '';
   Propriedade := '';
end;

end.
