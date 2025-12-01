unit Troncatrice;

interface

uses SysUtils, Contnrs;

type
   TTipoCommessa = (tcTutto, tcLavorato, tcNonLavorato);


   PTaglio = ^TTaglio;
   TTaglio = record
      Quota: integer;
      Rip: integer;

   end;

   TSchemaDiTaglio = class
   private
      FNomeSchema: string;
      FNumTavole: integer;
      FLung_Tav: integer;
      FLarg_Tav: integer;
      FTotale_Tagli: integer;
      FTotale_Quote: integer;


   public
      FQuote: array of TTaglio;
      constructor Create(filename: TfileName; ntav: integer);
      destructor Destroy; override;

      property NomeSchema: string read FNomeSchema;
      property NumTavole: integer read FNumTavole;
      property Lung_Tav: integer read FLung_Tav;
      property Larg_Tav: integer read FLarg_Tav;
      property Totale_Tagli: integer read FTotale_Tagli;
      property Totale_Quote: integer read FTotale_Quote;
     // property Quote[index :integer]: TTaglio read  FQuote;




   end;


   TCommessaDiTaglio = class
   private
      FNome: string;
      FTotaleTavole: integer;
      FNumSchemidiTaglio: integer;
      FSpessore: integer;
      FSchemi: TObjectList;
  //    FPathCommSource : String;
      Fprg: integer;
      FMateriale: string;
      FTipoComm: TTipoCommessa;

   public
      constructor Create(FileName: TFileName);
      destructor Destroy; override;
      property NomeCommessa: string read FNome;
      property TotaleTavole: integer read FTotaleTavole;
      property Spessore: integer read FSpessore;
      property NumSchemidiTaglio: integer read FNumSchemidiTaglio;
      property Schemi: TObjectList read FSchemi;
  //    property PathCommessaSorgente : string  read  FPathCommSource write FPathCommSource default 'C:\ottimo\prg\';
      property Programma: integer read Fprg;
      property Materiale: string read FMateriale;
      property TipoComm: TTipoCommessa read FTipoComm;
   end;

implementation

constructor TCommessaDiTaglio.Create(FileName: TFileName);
var
   t: TextFile; // variabile che rappresenta il file testo;
   l: string; // riga ti testo letta dal file testo
   nt: string; // nome dello schema di taglio
   path: string; // percorso dove si trova tutto l'elaborato
   co: string; // nome della commessa di origine
   tp: string; // e' il tipo commessa
begin




   FNome := extractfilename(filename);
   co := copy(FNome, 1, pos('.', Fnome) - 1);
   assignfile(t, 'C:\ottimo\prg\' + co);
   reset(t);
   try
      readln(t, l);
      delete(l, 1, pos('%', l));
      Fprg := strtoint(trim(copy(l, 1, pos('%', l) - 1)));
      delete(l, 1, pos('%', l));
      tp := trim(copy(l, 1, pos('%', l) - 1));
      if tp = 'TUTTO' then
         FTipoComm := tcTutto
      else
         if tp = 'LAVORATO' then
            FTipoComm := tcLavorato

         else FTipoComm := tcNonLavorato;
      delete(l, 1, pos('%', l));
      Fmateriale := trim(l);
   finally
      closefile(t);
   end;

   path := extractfilepath(filename);
   assignfile(t, filename);
   reset(t);
   readln(t, l);
   delete(l, 1, pos('=', l));

   FNumSchemidiTaglio := strtoint(trim(l)) - 1;
   FSchemi := TObjectList.Create(true);
   try
      FTotaleTavole := 0;
      FSpessore := 0;
      while not eof(t) do
      begin

         readln(t, l);
         if l[1] = 'H' then
         begin
            delete(l, 1, pos(' ', l));
            delete(l, 1, pos(' ', l));
            FSpessore := strtoint(trim(copy(l, 1, pos('.', l) - 1)));

         end;
         if l[1] = 'P' then
         begin

            delete(l, 1, pos(' ', l));
            nt := copy(l, 1, pos(' ', l) - 1);

            delete(l, 1, pos(' ', l));
            delete(l, 1, pos('N', l));
            FSchemi.add(TSchemaDiTaglio.Create(path + nt, strtoint(trim(l))));
            FTotaleTavole := FTotaleTavole + strtoint(trim(l));

         end;

      end;
   finally
      closefile(t)
   end;


end;

destructor TCommessaDiTaglio.Destroy;
begin
   Fschemi.Destroy;
   inherited destroy;
end;

constructor TSchemaDiTaglio.Create(filename: TfileName; ntav: integer);
var
   st: TextFile;
   l: string;
   i: integer;
begin
   FNomeSchema := extractfilename(FileName);
   FNumTavole := ntav;
   assignfile(st, filename);
   reset(st);
   try
      // lettura del numero totale delle quote di taglio
      readln(st, l);
      delete(l, 1, pos('=', l));
      FTotale_Quote := strtoint(trim(l)) - 2;
      setlength(FQuote, FTotale_Quote);

      // lettura della dimensione della tavola
      readln(st, l);
      delete(l, 1, pos(' ', l));
      FLung_Tav := strtoint(trim(copy(l, 1, pos('.', l) - 1)));
      delete(l, 1, pos(' ', l));
      FLarg_Tav := strtoint(trim(copy(l, 1, pos('.', l) - 1)));

      // riga che non serve
      readln(st, l);
      // inizia la lettura delle quote le rispettive ripetizioni
      i := 0;
      FTotale_Tagli := 0;
      while not eof(st) do
      begin
         readln(st, l);
         delete(l, 1, pos('X', l) + 1);
         FQuote[i].Quota := strtoint(trim(copy(l, 1, pos('.', l) - 1)));
         delete(l, 1, pos('N', l));
         FQuote[i].Rip := strtoint(trim(copy(l, 1, pos(' ', l) - 1)));
         inc(FTotale_Tagli, FQuote[i].Rip);
         inc(i)
      end;

   finally
      closeFile(st);
   end;
end;

destructor TSchemaDiTaglio.destroy;
begin
   FQuote := nil;
   inherited Destroy;
end;





end.
