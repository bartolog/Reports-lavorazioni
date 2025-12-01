unit AlphaCamPreviewUnit;

interface

uses Windows, Graphics, DB, SysUtils;






procedure GetBlackWhiteMefile(m, m1: TMetafile);
function LoadAlphaCamPreviewIntoBLOBField(filename: TFileName; BlobField: TBlobField; DataSet: TDataSet): integer;
function LoadAlphaCamPreviewIntoMetaFile(filename: TFileName; Disegno: TMetafile): integer;

var

FMetaFileBackColor : TColor = clWhite;

implementation


uses Classes;

function DrawMetaRecord(DC: HDC;
  lpHTable: PHANDLETABLE; lpEMFR: PENHMETARECORD; nObj: integer): integer;
var
  OldPen: HPen;
  OldBrush: HBrush;
  Pen: TPen;
  Brush: TBrush;

begin
  OldPen := 0;
  OldBrush := 0;

  // We can select a different brush and pen into the DC in order to change  the
  // appearance of the metafile

  Pen := TPen.Create;
  try
    Pen.Color := clBlack;
    OldPen := SelectObject(DC, Pen.Handle);
    Brush := TBrush.Create;

    try
      Brush.Color := FMetaFileBackColor; // clWhite;
      OldBrush := SelectObject(DC, Brush.Handle);
     // Draw the metafile records
      PlayEnhMetaFileRecord(DC, lpHTable^, lpEMFR^, nObj);
    finally

      Brush.Free;
    end;

  finally
    Pen.Free;

  end;



  SelectObject(DC, OldPen);
  SelectObject(DC, OldBrush);


  // Conclude with non-zero result to continue enumeration
  Result := 1;
end;


// This function is called from EnumEnhMetaFile in the Paint procedure

function EnhMetafileProc(DC: HDC; lpHTable: PHANDLETABLE; lpEMFR:
  PENHMETARECORD; nObj: Integer; AObject: Longint): Integer; stdcall;
begin
  Result := 0;
  // Use the aux parameter to call the correct shape's DrawMetaRecord
  //if assigned(AObject) then
  Result := DrawMetaRecord(DC, lpHTable, lpEMFR, nObj);
end;






procedure GetBlackWhiteMefile(m, m1: TMetafile);
var

  mc: TMetafileCanvas;
begin

  mc := TMetafileCanvas.Create(m1, m1.Handle);
  try
    EnumEnhMetaFile(mc.Handle, m.Handle, @enhmetafileproc, nil, Rect(0, 0, m.Width, m.Height));


  finally
    mc.Free;
  end;




end;

function LoadAlphaCamPreviewIntoBLOBField(filename: TFileName; BlobField: TBlobField; DataSet: TDataSet): integer;
var
  FieldDisegnoStream: TStream;
  Size: Integer; //The Size of the Metafile in Bytes
  TSFile: TFileStream; //A Handle on the AlphaCAM File
  ACamString: array[1..20] of char; //AlphaCAM File Header
  MetafileByte: Integer; //Tells us whether the drawing contains a preview
  ACAMFileVersion: string; //File Version Extracted from Header
  Ms: TMemoryStream;
  m1, m2: TMetafile;
begin
  Result := -1;
  if not FileExists(filename) then
    exit;
  //Initialise the Preview Byte Value
  MetafileByte := 0;
  FieldDisegnoStream := DataSet.CreateBlobStream(BlobField, bmWrite);
  try
        //Open the AlphaCAM File & Position to Start
    TSFile := TFileStream.Create(FileName, fmOpenRead + fmShareDenyNone);
    try
      TSFile.Seek(0, 0);

        //Read the File Header (EG Licom-APS File V1.25)
      TSFile.Read(ACAMString, 20);

        //Read the Byte that Tells us if there is a preview saved with the drawing
      TSFile.Seek(23, 0);
      TSFile.Read(MetafileByte, 1);
      ACAMFileVersion := ACAMString;

        //Get the file version from the File Header
      Delete(ACAMFileVersion, 1, Length(ACAMString) - 4);
      Delete(ACAMFileVersion, Pos('.', ACAMFileVersion), 1);

      //Check That the File Version is at least 1.25 & the preview Byte is 31
      if (StrToInt(ACAMFileVersion) >= 125) and (MetafileByte = 31) then
      begin
        //Position to the start of the 4 Byte value that tells us the size of the
        //Metafile
        TSFile.Seek(24, 0);

        //Read The Metafile Size
        TSFile.Read(Size, 4);
        m1 := TMetafile.Create; ;
        try
          M1.LoadFromStream(TSFile);
          m2 := TMetafile.Create;
          try
            GetBlackWhiteMefile(M1, M2);
            ms := TMemoryStream.Create;

            try
              m2.SaveToStream(ms);
              ms.Seek(0, 0);

        // copy into blob field the remaining content of TSFile
              FieldDisegnoStream.CopyFrom(ms, ms.Size);

            finally
              ms.Free;
            end;
          finally
            m2.Free;
          end;

        finally
          M1.Free;
        end;
      end;
    finally
      TSFile.Free;

    end;
  finally
    FieldDisegnoStream.Free;
  end;
  result := 0;
end;


function LoadAlphaCamPreviewIntoMetaFile(filename: TFileName; Disegno: TMetafile): integer;
var
//  FieldDisegnoStream: TStream;
  Size: Integer; //The Size of the Metafile in Bytes
  TSFile: TFileStream; //A Handle on the AlphaCAM File
  ACamString: array[1..20] of AnsiChar; //AlphaCAM File Header
  MetafileByte: Integer; //Tells us whether the drawing contains a preview
  ACAMFileVersion: ShortString; //File Version Extracted from Header
//  Ms: TMemoryStream;
  m1, m2: TMetafile;
begin
  Result := -1;
  if not FileExists(filename) then
    exit;
  //Initialise the Preview Byte Value
  MetafileByte := 0;
//  FieldDisegnoStream := DataSet.CreateBlobStream(BlobField, bmWrite);
 // try
        //Open the AlphaCAM File & Position to Start
  TSFile := TFileStream.Create(FileName, fmOpenRead + fmShareDenyNone);
  try
    TSFile.Seek(0, 0);

        //Read the File Header (EG Licom-APS File V1.25)
    TSFile.Read(ACAMString, 20);

        //Read the Byte that Tells us if there is a preview saved with the drawing
    TSFile.Seek(23, 0);
    TSFile.Read(MetafileByte, 1);
    ACAMFileVersion := Copy( ACAMString,1,20);

        //Get the file version from the File Header
    Delete(ACAMFileVersion, 1, Length(ACAMString) - 4);
    Delete(ACAMFileVersion, Pos('.', ACAMFileVersion), 1);

      //Check That the File Version is at least 1.25 & the preview Byte is 31
    if (StrToInt(ACAMFileVersion) >= 125) and (MetafileByte = 31) then
    begin
        //Position to the start of the 4 Byte value that tells us the size of the
        //Metafile
      TSFile.Seek(24, 0);

        //Read The Metafile Size
      TSFile.Read(Size, 4);
      m1 := TMetafile.Create; ;
      try
        m1.LoadFromStream(TSFile);
        m2 := TMetafile.Create;

        try
       //      m2.SetSize(m1.Width,m1.Height);
          GetBlackWhiteMefile(M1, M2);
          Disegno.Assign(m2);
        finally
          m2.Free;
        end;

      finally
        M1.Free;
      end;
    end;
  finally
    TSFile.Free;

  end;
  result := 0;
end;


end.
