unit Sezionatrice;

interface

uses classes, contnrs, sysutils;
type
   PTaglio = ^TTaglio;
   TTaglio = record
      Tipo: Char;
      Quota: Double;
      Ripetizioni: integer;

   end;





   TSchemaTaglio = class
   private
      FPx: integer; // dimensione del pannello X
      FPy: integer; // dimensione del pannello Y
      FPz: Double; // dimensione del pannello Z
      Fmateriale: string; // descrizione materiale
      FNpannelli: integer; // numero di pannelli
      FTagli: TList; // Lista dei tagli
      FNtagli: Integer; // Numero di tagli

   protected
      function GetTaglio(index: integer): TTaglio;
   public
      // il costruttore di questa classe accetta la lista dei pannelli
      // la stringa che rappresenta la lista di taglio

      constructor Create(ListaPannelli: TList; Sq: string);
      destructor Destroy; override;

      property Pannello_Dim_X: integer read FPx write FPx;
      property Pannello_Dim_Y: integer read FPy write FPy;
      property Pannello_Dim_Z: Double read FPz write FPz;
      property Materiale: string read FMateriale write FMateriale;
      property Num_pannelli: integer read FNPannelli write FNPannelli;
      property Tagli[index: integer]: TTaglio read GetTaglio;
      property Num_Tagli: Integer read FNTagli;


   end;

   TCommessaSezionatrice = class
   private
      FNome: string; // nome della commessa
      FPrg: integer; // numero del programma
      FSchemi: TobjectList; // lista degli schemi  di taglio
      FNSchemi: Integer; // Numero di schemi
   protected
      function GetSchema(index: integer): TSchemaTaglio;
   public
      constructor Create(NomeCommessa: TFileName);
      destructor Destroy; override;
      property NomeCommessa: string read FNome;
      property Programma: integer read Fprg;
      property Schemi[index: integer]: TSchemaTaglio read GetSchema;
      property Num_Schemi: Integer read FNSchemi;
   end;
implementation
type
   PPannello = ^TPannello;
   TPannello = record
      Dim_X: integer;
      Dim_Y: integer;
      Dim_Z: double;
      Descrizione: string;

   end;

destructor TSchemaTaglio.Destroy;
begin
   Ftagli.Free;
   inherited destroy;
end;

constructor TSchemaTaglio.Create(ListaPannelli: TList; Sq: string);
var
   i: integer;
   v: string;
   t: PTaglio;
   stato: integer;
begin
   delete(Sq, 1, pos('R', Sq));
   i := strtoint(copy(Sq, 1, pos('P', sq) - 1)) - 1;
   FPx := TPannello(ListaPannelli[i]^).Dim_X;
   FPy := TPannello(ListaPannelli[i]^).Dim_Y;
   FPz := TPannello(ListaPannelli[i]^).Dim_Z;
   FMateriale := TPannello(ListaPannelli[i]^).Descrizione;
   delete(sq, 1, pos('P', sq));
   FNPannelli := Strtoint(copy(sq, 1, pos('X', sq) - 1));
   Delete(sq, 1, pos('Y', sq) - 1);
   i := 1; v := '';
   Ftagli := TList.create;
   t := nil; stato := 0;
   while sq[i] <> 'F' do
   begin
      if sq[i] = 'Y' then
      begin
         case stato of
            0: begin
                  new(t);
                  t.Tipo := 'Y';
                  inc(stato)
               end;
            1: begin
                  t.Quota := strtofloat(v);
                  v := '';
                  if t.Tipo = 'X' then
                  begin
                     t.Ripetizioni := 1;
                     FTagli.Add(t);
                     new(t);
                     t.Tipo := 'Y';
                     stato := 1;
                  end else
                     inc(stato);
               end;

            2: begin
                  t.Ripetizioni := strtoint(v);
                  v := '';
                  FTagli.Add(t);
                  new(t);
                  t.Tipo := 'Y';
                  stato := 1
               end;
         end;
      end;

      if sq[i] = 'Z' then
      begin
         case stato of
            0: begin
                  new(t);
                  t.Tipo := 'Z';
                  inc(stato)
               end;
            1: begin
                  t.Quota := strtofloat(v);
                  v := '';
                  if t.Tipo = 'X' then
                  begin
                     t.Ripetizioni := 1;
                     FTagli.Add(t);
                     new(t);
                     t.Tipo := 'Z';
                     stato := 1;
                  end else
                     inc(stato);
               end;

            2: begin
                  t.Ripetizioni := strtoint(v);
                  v := '';
                  FTagli.Add(t);
                  new(t);
                  t.Tipo := 'Z';
                  stato := 1
               end;
         end;
      end;

              // pretaglio
      if sq[i] = 'X' then
      begin
         if stato = 0 then
         begin
            new(t);
            t.Tipo := 'X';
            inc(stato)
         end;
      end;

      if (stato > 0) and (sq[i] in ['0'..'9', '.']) then
      begin
         if sq[i] = '.' then
            v := v + ','
         else
            v := v + sq[i];
      end;
      if sq[i] = 'N' then
      begin
         if stato = 1 then
         begin
            t.Quota := strtofloat(v);
            v := '';
            inc(stato)
         end;
      end;
      if sq[i] = 'M' then
      begin
         if stato = 2 then
         begin
            t.Ripetizioni := strtoint(v);
            v := '';
            FTagli.Add(t);

            stato := 0;
         end;

      end;


      inc(i) // incremento dell'indice
   end;
   FNTagli := FTagli.Count;




end;

destructor TCommessaSezionatrice.Destroy;
begin
   FSchemi.Free;
   inherited destroy;
end;

constructor TCommessaSezionatrice.Create(NomeCommessa: TFileName);
var
   c: TextFile;
   l: string;
   pannelli: TList;
   spessore: double;
   p: PPannello;

begin
   FNome := extractFileName(NomeCommessa);
   AssignFile(c, NomeCommessa);
   FSchemi := TobjectList.Create(True);
   pannelli := Tlist.Create;
   reset(c);

   try
      while not eof(c) do
      begin
         readln(c, l);
         // estrazione del numero di programma
         if Pos('PROG.', l) > 0 then
         begin
            delete(l, 1, pos('.', l));
            FPrg := StrToInt(Trim(l));
         end;
         if copy(l, 1, 2) = 'F1' then
         begin
            delete(l, 1, pos(' ', l));
            l := copy(l, 1, pos(' ', l));
            l[pos('.', l)] := ',';
            spessore := StrToFloat(l);
                   // estrazione dei pannelli utilizzati
            repeat
               readln(c, l);
                        // se la riga di testo non e' vuota
               if l <> '' then
               begin
                  new(p);
                  p.Dim_X := strtoint(copy(l, 1, pos('.', l) - 1));
                  delete(l, 1, pos(' ', l));
                  p.Dim_Y := strtoint(copy(l, 1, pos('.', l) - 1));
                  p.Dim_Z := spessore;
                  delete(l, 1, pos(' ', l));
                  delete(l, 1, pos(' ', l));
                  delete(l, 1, pos(' ', l));
                  delete(l, 1, pos(' ', l));
                  p.Descrizione := copy(l, 1, pos(' ', l) - 1);
                  pannelli.Add(p);


               end;

            until (l = '');
         end;
         if l = 'F3' then
         begin
            readln(c, l);
            while (not (l = 'E0')) and (not eof(c)) do
            begin
               FSchemi.Add(TschemaTaglio.Create(pannelli, uppercase(l)));
               readln(c, l);
            end;
         end;
      end;
      FNSchemi := FSchemi.Count;
   finally

      closefile(c);
      pannelli.Free;
   end;


end;

function TCommessaSezionatrice.GetSchema(index: integer): TSchemaTaglio;
begin
   result := TSchemaTaglio(FSchemi.Items[index]);
end;

function TSchemaTaglio.GetTaglio(index: integer): TTaglio;
begin
   result := TTaglio(FTagli[index]^);
end;


end.

