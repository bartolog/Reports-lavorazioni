unit UNewCursalTypes;

interface





type

  TTotaliNewCursal = record
    // TOTALI LAVORATI;
    Data: string; // 2020-08-29_08-06-29
    COMMESSA: string; // ;N1_VIS_COMODA_ITALIA_ prg 39
    Totale_Tavole: Double; // Nr. ;51.000
    Totale_Tavole_Mt: Double; // Mt. ;164.753
    Totale_tagli: Double; // Nr. ;301.000
    Totale_segatura: Double; // Mt. ;1.203
    Ore_accensione: string; // ; Hr. ;0.000:20:55
    Ore_marcia: string; // ; Hr. ;0.000:17:39
    Ore_lavoro: string; // Hr. ;0.000:06:20
    Produzione_reale: string; // Mt/Min. ;0.000
    Scarto_segnato_Mt: Double; // Mt. ;11.118
    Scarto_ott_Mt: Double; // Mt. ;1.378
    Recupero_Mt: Double; // ;0.000
    Buono_ottenuto_Mt: Double; // ;151.053
    Da_tagli_fissi_Mt: Double; // ;0.000
    Scarto_segnato_perc: Double; // 7.399
    Scarto_ott_perc: Double;
    Recupero_perc: Double; // 0.000
    Buono_ottenuto_perc: Double; // 91.700
    Da_tagli_fissi_perc: Double;

  end;

  PTotaliNewCursal = ^TTotaliNewCursal;

function ReadTotalsNewCursal(aFile: string): PTotaliNewCursal;

implementation


uses
  System.SysUtils;

function ReadTotalsNewCursal(aFile: string): PTotaliNewCursal;
var
  t: TextFile;
  l: string;
  i : Integer;
  a :  TArray<string>;

begin
  AssignFile(t, aFile);
  Reset(t);
  try
    New(Result);

    i := 0;
    while not Eof(t) do
    begin
          readln(t, l);
          a := l.split([';']);

          a[High(a)] := StringReplace(a[High(a)],'.',',',[rfReplaceAll]);
          Inc(i);
          case i of
            1: Result.Data := a[High(a)];
            2: Result.COMMESSA := a[High(a)];
            3: Result.Totale_Tavole := a[High(a)].ToDouble;
            4: Result.Totale_Tavole_Mt := a[High(a)].ToDouble;
            5: Result.Totale_tagli := a[High(a)].ToDouble;
            6: Result.Totale_segatura := a[High(a)].ToDouble;
            7: result.Ore_accensione := a[High(a)];
            8: Result.Ore_marcia := a[High(a)];
            9: Result.Ore_lavoro := a[High(a)];
            10: Result.Produzione_reale := a[High(a)];
            11: Result.Scarto_segnato_Mt := a[High(a)].ToDouble;
            12: Result.Scarto_ott_Mt := a[High(a)].ToDouble;
            13: Result.Recupero_Mt := a[High(a)].ToDouble;
            14: Result.Buono_ottenuto_Mt := a[High(a)].ToDouble;
            15: Result.Da_tagli_fissi_Mt := a[High(a)].ToDouble;
            16: Result.Scarto_segnato_perc := a[High(a)].ToDouble;
            17: Result.Scarto_ott_perc := a[High(a)].ToDouble;
            18: Result.Recupero_perc := a[High(a)].ToDouble;
            19: Result.Buono_ottenuto_perc := a[High(a)].ToDouble;
            20: Result.Da_tagli_fissi_perc := a[High(a)].ToDouble;




          end;

    end;

  finally
    CloseFile(t);
  end;

end;

end.
