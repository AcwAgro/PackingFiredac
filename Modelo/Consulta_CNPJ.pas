unit Consulta_CNPJ;

interface

uses
  SysUtils,
  Classes,
  Windows,
  Variants,
  IdHTTP,
  uLkJSON,
  IdSSLOpenSSL;
type
  EConsulta_CNPJ = class ( Exception );

  { TConsulta_CNPJ }
  TConsulta_CNPJ = class(TComponent)
  private
    Fatividade_principal_descricao : string;
    Fatividade_principal_code      : string;
    Fdata_situacao                 : string;
    Fcomplemento                   : string;
    Fnome                          : string;
    Fuf                            : string;
    Ftelefone                      : string;
    Fatividade_secuncaria_descricao: string;
    Fatividade_secundaria_code     : String;
    Fsituacao                      : string;
    Fbairro                        : string;
    Flogradouro                    : string;
    Fnumero                        : string;
    Fcep                           : string;
    Fmunicipio                     : string;
    Fporte                         : string;
    Fabertura                      : string;
    Fnatureza                      : string;
    Ffantasia                      : string;
    Fcapital                       : string;
    FEMail                         : string;
    FSocios                        : TStringList;
    procedure Clear;
    procedure SetSocios(Texto: TStringList);
  public

    function Consulta(const ACNPJ : String): Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
  published
    property Atividade_principal_descricao : String Read FAtividade_principal_descricao Write FAtividade_principal_descricao;
    property Atividade_principal_code : String Read FAtividade_principal_code Write FAtividade_principal_code;
    property Data_Situacao : String Read FData_Situacao Write FData_Situacao;
    property Complemento : String Read FComplemento Write FComplemento;
    property Nome : String Read FNome Write FNome;
    property UF : String Read FUF Write FUF;
    property Telefone : String Read FTelefone Write FTelefone;
    property Atividade_secuncaria_descricao : String Read FAtividade_secuncaria_descricao Write FAtividade_secuncaria_descricao;
    property Atividade_secundaria_code : String Read FAtividade_secundaria_code Write FAtividade_secundaria_code;
    property Situacao : String Read FSituacao Write FSituacao;
    property Bairro : String Read FBairro Write FBairro;
    property Logradouro : String Read FLogradouro Write FLogradouro;
    property Numero : String Read FNumero Write FNumero;
    property CEP : String Read FCEP Write FCEP;
    property Municipio : String Read FMunicipio Write FMunicipio;
    property Porte : String Read FPorte Write FPorte;
    property Abertura : String Read FAbertura Write FAbertura;
    property Natureza : String Read FNatureza Write FNatureza;
    property Fantasia : string Read FFantasia Write FFantasia;
    property Capital : String Read FCapital Write FCapital;
    property EMail : String Read FEMail Write FEMail;
    property Socios  : TStringList read FSocios write SetSocios;
  published

  end;

implementation

function TConsulta_CNPJ.Consulta(const ACNPJ : String): Boolean;
var
  joPrincipal : TlkJSONobject;
  joDados     : TlkJSONobject;
  jaDados     : TlkJSONlist;
  Urls        : string;
  i           : integer;
  IdHTTP1     : TIdHTTP;
  LHandler    : TIdSSLIOHandlerSocketOpenSSL;
begin
    IdHTTP1    := TIdHTTP.Create(nil);
    try
      LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      try
         IdHTTP1.IOHandler := LHandler;
         IdHTTP1.Request.Clear;
         IdHTTP1.Request.BasicAuthentication := False;
         IdHTTP1.Response.ContentType  := 'application/json';
         IdHTTP1.Response.CharSet      := 'UTF-8';

         urls := idHTTP1.URL.URLDecode (idHTTP1.Get('https://www.receitaws.com.br/v1/cnpj/' + ACNPJ));

         try
              joPrincipal  := TlkJSON.ParseText(TEncoding.ASCII.GetString(TEncoding.ASCII.GetBytes(urls))) as TlkJSONobject;

              if VarToStr(joPrincipal.Field['atividade_principal'].Value) = 'False' then
                  Result := False
              else
                begin
                   // atividade principal

                   jaDados           := joPrincipal.Field['atividade_principal'] as TlkJSONlist;

                   Fdata_situacao := VarToStr(joPrincipal.Field['data_situacao'].Value);
                   Fcomplemento   := VarToStr(joPrincipal.Field['complemento'].Value);
                   Fnome          := VarToStr(joPrincipal.Field['nome'].Value);
                   Fuf            := VarToStr(joPrincipal.Field['uf'].Value);
                   Ftelefone      := VarToStr(joPrincipal.Field['telefone'].Value);

                   for i := 0 to jaDados.count -1 do
                   begin
                     joDados                           := jaDados.Child[i] as TlkJSONobject;
                     Fatividade_principal_descricao :=  UTF8ToString( VarToStr(joDados.Field['text'].Value) );
                     Fatividade_principal_code      :=  UTF8ToString( VarToStr(joDados.Field['code'].Value));
                   end;

                   // atividade secundaria
                   jaDados           := joPrincipal.Field['atividades_secundarias'] as TlkJSONlist;

                   for i := 0 to jaDados.count -1 do
                   begin
                     joDados                         := jaDados.Child[i] as TlkJSONobject;
                     Fatividade_secuncaria_descricao := VarToStr(joDados.Field['text'].Value);
                     Fatividade_secundaria_code      := VarToStr(joDados.Field['code'].Value);
                   end;

                   // qsa
                   jaDados           := joPrincipal.Field['qsa'] as TlkJSONlist;

                   Fsituacao      := VarToStr(joPrincipal.Field['situacao'].Value);
                   Fbairro        := VarToStr(joPrincipal.Field['bairro'].Value);
                   Flogradouro    := VarToStr(joPrincipal.Field['logradouro'].Value);
                   Fnumero        := VarToStr(joPrincipal.Field['numero'].Value);
                   Fcep           := VarToStr(joPrincipal.Field['cep'].Value);
                   Fmunicipio     := VarToStr(joPrincipal.Field['municipio'].Value);
                   Fporte         := VarToStr(joPrincipal.Field['porte'].Value);
                   Fabertura      := VarToStr(joPrincipal.Field['abertura'].Value);
                   Fnatureza      := VarToStr(joPrincipal.Field['natureza_juridica'].Value);
                   Ffantasia      := VarToStr(joPrincipal.Field['fantasia'].Value);
                   Fcapital       := VarToStr(joPrincipal.Field['capital_social'].Value);
                   FEMail         := VarToStr(joPrincipal.Field['email'].Value);

                   for i := 0 to jaDados.count -1 do
                   begin
                     joDados := jaDados.Child[i] as TlkJSONobject;
                     FSocios.Add(VarToStr(joDados.Field['qual'].Value));
                     FSocios.Add(VarToStr(joDados.Field['nome'].Value));
                   end;
                end;
         finally
            LHandler.Free;
         end;
      finally
           IdHTTP1.Free;
           joPrincipal := nil;
           joDados     := nil;
           jaDados     := nil;
      end;
    except
        on E: Exception do
          Writeln(E.ClassName, ': ', E.Message);
    end;

end;



constructor TConsulta_CNPJ.Create(AOwner: TComponent);
begin
  inherited;
  FSocios := TStringList.Create;
end;

destructor TConsulta_CNPJ.Destroy;
begin
  inherited;
end;

procedure TConsulta_CNPJ.SetSocios(Texto: TStringList);
begin
    FSocios.Assign(Texto);
end;

procedure TConsulta_CNPJ.Clear;
begin
  Fatividade_principal_descricao := '';
  Fatividade_principal_code      := '';
  Fdata_situacao                 := '';
  Fcomplemento                   := '';
  Fnome                          := '';
  Fuf                            := '';
  Ftelefone                      := '';
  Fatividade_secuncaria_descricao:= '';
  Fatividade_secundaria_code     := '';
  Fsituacao                      := '';
  Fbairro                        := '';
  Flogradouro                    := '';
  Fnumero                        := '';
  Fcep                           := '';
  Fmunicipio                     := '';
  Fporte                         := '';
  Fabertura                      := '';
  Fnatureza                      := '';
  Ffantasia                      := '';
  Fcapital                       := '';
  FSocios.Text                   := '';
end;


end.
