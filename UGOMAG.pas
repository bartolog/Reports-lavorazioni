unit UGOMAG;

interface

uses

UDDTInterface, System.Generics.Collections, UDM;


type
TGOMat = class (TInterfacedObject,IDDTItem )


    function GetIsDescrizione: Boolean;
    Function GetCodiceArticolo: string;
    Function GetDescrizione: string;
    function GetOrdine : string;
    function GetPosizione  : integer;
    Function GetQuantita: Double;
    function GetColli : integer;
    function GetCoordinateGestionale : TCoordinateGestionale;

    procedure SetProgressivoRiga(aProg : Cardinal; aRiga : Word);

    function GetCoordinateOrigine : TCoordinateGestionale;

    property IsDescrizione: Boolean read GetIsDescrizione;
    property CodiceArticolo: string read GetCodiceArticolo;
    property Descrizione: string read GetDescrizione;
    property Quantita: Double read GetQuantita;
    property Colli: integer read GetColli;

    property Ordine: string read GetOrdine;
    property Posizione : integer read GetPosizione;


end;

TSchedaLav = class ( TInterfacedObject, IDDTDATA)
  private
   FMatList : TList<TGOMat>;


  public


    procedure CreaDDTScaricoMat (aIdScheda : integer);


    Function GetCodiceDestinatario: string; // Il codice cliente


    Function GetCodiceDestinazione: string;

    // il codice del magazzino ... da cui ricavarel'inidirizzo
    Function GetCodiceVettore: string; // il codice spedizione (vettore)
    Function GetColli: double; // il numero delle confezioni
    Function GetNote: string; // eventuali note
    Function GetAnnoEsercizio : string; // anno esercizio
    function GetTotaleRigheDDT : integer;
    procedure SetDone (aValue : Boolean);
    procedure SetResult(aValue : variant);
    function GetPalletsNumber : string;
    function GetScadenze : string;
    function GetTipoDoc : string;

    // righe descrizione da aggiungere in fondo
    function GetDescrizionePiede : Tarray<string>;
    function GetDescrizioneTesta : Tarray<string>;


    property CodiceDestinatario: string read GetCodiceDestinatario;

    property CodiceDestinazione: string read GetCodiceDestinazione;
    property CodiceVettore: string read GetCodiceVettore;
    property Colli: double read GetColli;
    property Note: string read GetNote;
    property AnnoEsercizio : string read GetAnnoEsercizio;
    property Totalerigheddt: integer read GetTotalerigheddt ;


    function GetDetailDDt: TList<IDDTItem>;



end;




implementation

{ TSchedaLav }

procedure TSchedaLav.CreaDDTScaricoMat(aIdScheda: integer);
begin

 with DM do
 begin
   qryGetMatGoByIdScheda.Close;
   qryGetMatGoByIdScheda.ParamByName(':P_IDScheda').Value := aIdScheda;
   qryGetMatGoByIdScheda.Open;
   while not qryGetMatGoByIdScheda.Eof do
   begin



     qryGetMatGoByIdScheda.Next
   end;
   qryGetMatGoByIdScheda.Close

 end;


end;

function TSchedaLav.GetAnnoEsercizio: string;
begin

end;

function TSchedaLav.GetCodiceDestinatario: string;
begin

end;

function TSchedaLav.GetCodiceDestinazione: string;
begin

end;

function TSchedaLav.GetCodiceVettore: string;
begin

end;

function TSchedaLav.GetColli: double;
begin

end;

function TSchedaLav.GetDescrizionePiede: Tarray<string>;
begin

end;

function TSchedaLav.GetDescrizioneTesta: Tarray<string>;
begin

end;

function TSchedaLav.GetDetailDDt: TList<IDDTItem>;
begin

end;

function TSchedaLav.GetNote: string;
begin

end;

function TSchedaLav.GetPalletsNumber: string;
begin

end;

function TSchedaLav.GetScadenze: string;
begin

end;

function TSchedaLav.GetTipoDoc: string;
begin

end;

function TSchedaLav.GetTotaleRigheDDT: integer;
begin

end;

procedure TSchedaLav.SetDone(aValue: Boolean);
begin

end;

procedure TSchedaLav.SetResult(aValue: variant);
begin

end;

{ TGOMat }

function TGOMat.GetCodiceArticolo: string;
begin

end;

function TGOMat.GetColli: integer;
begin

end;

function TGOMat.GetCoordinateGestionale: TCoordinateGestionale;
begin

end;

function TGOMat.GetCoordinateOrigine: TCoordinateGestionale;
begin

end;

function TGOMat.GetDescrizione: string;
begin

end;

function TGOMat.GetIsDescrizione: Boolean;
begin

end;

function TGOMat.GetOrdine: string;
begin

end;

function TGOMat.GetPosizione: integer;
begin

end;

function TGOMat.GetQuantita: Double;
begin

end;

procedure TGOMat.SetProgressivoRiga(aProg: Cardinal; aRiga: Word);
begin

end;

end.
