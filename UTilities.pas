unit UTilities;

interface

uses
vcl.Dialogs, vcl.Controls;








procedure Info(aText : string);
function Ask(aQuestion , ACaption, ATitle: string) : TmodalResult;




implementation


procedure Info (aText : string);
begin
  with TTaskDialog.create(nil) do
  begin
    try
        Caption := 'Info';
        text := aText;
        CommonButtons := [tcbOk];
        MainIcon := tdiInformation;
        execute


    finally
      free
    end;
  end;
end;



function Ask(aQuestion , ACaption, ATitle: string) : TmodalResult;
begin

with TTaskDialog.create(nil) do
  begin
    try
        Caption := aCaption;
        text := aQuestion;
        Title := ATitle;
        CommonButtons := [tcbOk,tcbNo];
        MainIcon := tdiShield;
        execute;
        Result := ModalResult

    finally
      free
    end;
  end;

end;


end.
