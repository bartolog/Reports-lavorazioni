object frmImpostazioni: TfrmImpostazioni
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impostazioni'
  ClientHeight = 450
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 790
    Height = 450
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object tsTRSI7500E: TTabSheet
      Caption = 'Troncatrice TRSI7500'
      ImageIndex = 6
      object SpeedButton1: TSpeedButton
        Left = 282
        Top = 40
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
          078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
          BEFF00FFFF00FFFF00FF078DBE25A1D171C6E884D7FA66CDF965CDF965CDF965
          CDF965CDF865CDF965CDF866CEF93AADD81999C9FF00FFFF00FF078DBE4CBCE7
          39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
          D9C9F0F3078DBEFF00FF078DBE72D6FA078DBEAEE9FC79DCFB79DCFB79DCFB79
          DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9C9F0F3078DBEFF00FF078DBE79DDFB
          1899C79ADFF392E7FC84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
          DAC9F0F31496C4FF00FF078DBE82E3FC43B7DC65C2E0ABF0FC8DEBFC8DEBFC8D
          EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDAC9F0F3C9F0F3078DBE078DBE8AEAFC
          77DCF3219CC7FEFFFFC8F7FDC9F7FDC9F7FDC9F7FEC8F7FEC9F7FDC8F7FE9BD5
          E6EAFEFED2F3F8078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
          8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE9BF5FE
          9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
          BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
          FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
          FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = btnChooseFolderClick
      end
      object Label3: TLabel
        Left = 11
        Top = 24
        Width = 133
        Height = 13
        Caption = 'Percorso totali nuova cursal'
      end
      object edtDirTotaliNewCursalTRSI7500E: TEdit
        Left = 11
        Top = 40
        Width = 257
        Height = 21
        TabOrder = 0
      end
    end
    object tsTronTRV2200: TTabSheet
      Caption = 'Trocatrice TRV2200'
      object lblTotali: TLabel
        Left = 3
        Top = 16
        Width = 133
        Height = 13
        Caption = 'Percorso totali nuova cursal'
      end
      object btnChooseFolder: TSpeedButton
        Left = 274
        Top = 32
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
          078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
          BEFF00FFFF00FFFF00FF078DBE25A1D171C6E884D7FA66CDF965CDF965CDF965
          CDF965CDF865CDF965CDF866CEF93AADD81999C9FF00FFFF00FF078DBE4CBCE7
          39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
          D9C9F0F3078DBEFF00FF078DBE72D6FA078DBEAEE9FC79DCFB79DCFB79DCFB79
          DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9C9F0F3078DBEFF00FF078DBE79DDFB
          1899C79ADFF392E7FC84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
          DAC9F0F31496C4FF00FF078DBE82E3FC43B7DC65C2E0ABF0FC8DEBFC8DEBFC8D
          EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDAC9F0F3C9F0F3078DBE078DBE8AEAFC
          77DCF3219CC7FEFFFFC8F7FDC9F7FDC9F7FDC9F7FEC8F7FEC9F7FDC8F7FE9BD5
          E6EAFEFED2F3F8078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
          8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE9BF5FE
          9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
          BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
          FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
          FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = btnChooseFolderClick
      end
      object edtDirTotaliNewCursal: TEdit
        Left = 3
        Top = 32
        Width = 257
        Height = 21
        TabOrder = 0
      end
    end
    object tsTroncCursal: TTabSheet
      Caption = 'Troncatrice cursal'
      ImageIndex = 1
      object Label1: TLabel
        Left = 27
        Top = 40
        Width = 69
        Height = 13
        Caption = 'Max larghezza'
      end
      object Label2: TLabel
        Left = 27
        Top = 86
        Width = 57
        Height = 13
        Caption = 'Max altezza'
      end
      object edMaxWidthCursal: TcxCalcEdit
        Left = 118
        Top = 32
        EditValue = 0.000000000000000000
        TabOrder = 0
        Width = 121
      end
      object edMaxHeightCursal: TcxCalcEdit
        Left = 118
        Top = 83
        EditValue = 0.000000000000000000
        TabOrder = 1
        Width = 121
      end
    end
    object tsR500: TTabSheet
      Caption = 'Pantografo R500'
      ImageIndex = 2
      object ListaPacchiR500: TValueListEditor
        Left = 0
        Top = 0
        Width = 297
        Height = 422
        Align = alLeft
        KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
        TabOrder = 0
        TitleCaptions.Strings = (
          'Materiale'
          'Pacco')
        ColWidths = (
          150
          141)
      end
    end
    object tsSCM: TTabSheet
      Caption = 'Pantografo SCM'
      ImageIndex = 3
      object ListaPacchiSCM: TValueListEditor
        Left = 0
        Top = 0
        Width = 297
        Height = 422
        Align = alLeft
        KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
        TabOrder = 0
        TitleCaptions.Strings = (
          'Materiale'
          'Pacco')
        ColWidths = (
          150
          141)
      end
    end
    object tsGreda: TTabSheet
      Caption = 'Pantografo Greda'
      ImageIndex = 4
      object ListaPacchiGreda: TValueListEditor
        Left = 0
        Top = 0
        Width = 297
        Height = 422
        Align = alLeft
        KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
        TabOrder = 0
        TitleCaptions.Strings = (
          'Materiale'
          'Pacco')
        ColWidths = (
          150
          141)
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Ssezionatrice Gabbiani'
      ImageIndex = 5
      object ListaPacchiGabbiani: TValueListEditor
        Left = 0
        Top = 0
        Width = 297
        Height = 422
        Align = alLeft
        KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
        TabOrder = 0
        TitleCaptions.Strings = (
          'Materiale'
          'Pacco')
        ColWidths = (
          150
          141)
      end
    end
    object ts1: TTabSheet
      Caption = 'Generale'
      ImageIndex = 7
      object Label4: TLabel
        Left = 24
        Top = 21
        Width = 119
        Height = 13
        Caption = 'Percorso carrtella modelli'
      end
      object Label5: TLabel
        Left = 24
        Top = 85
        Width = 170
        Height = 13
        Caption = 'Visualizza le schede lavorazioni  dal '
      end
      object edtPathModelli: TcxButtonEdit
        Left = 24
        Top = 40
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
        TabOrder = 0
        Width = 713
      end
      object cxDateEdit1: TcxDateEdit
        Left = 24
        Top = 104
        Properties.OnChange = cxDateEdit1PropertiesChange
        TabOrder = 1
        Width = 185
      end
    end
  end
  object RzRegIniFile1: TRzRegIniFile
    Left = 512
    Top = 200
  end
  object RzFormState1: TRzFormState
    RegIniFile = RzRegIniFile1
    Left = 360
    Top = 312
  end
  object RzPropertyStore1: TRzPropertyStore
    Properties = <
      item
        Component = edtDirTotaliNewCursal
        PropertyName = 'Text'
      end
      item
        Component = ListaPacchiR500
        PropertyName = 'Strings'
      end
      item
        Component = ListaPacchiSCM
        PropertyName = 'Strings'
      end
      item
        Component = ListaPacchiGreda
        PropertyName = 'Strings'
      end
      item
        Component = ListaPacchiGabbiani
        PropertyName = 'Strings'
      end
      item
        Component = edMaxHeightCursal
        PropertyName = 'Value'
      end
      item
        Component = edMaxWidthCursal
        PropertyName = 'Value'
      end
      item
        Component = edtDirTotaliNewCursalTRSI7500E
        PropertyName = 'Text'
      end
      item
        Component = edtPathModelli
        PropertyName = 'Text'
      end
      item
        Component = cxDateEdit1
        PropertyName = 'Date'
      end>
    RegIniFile = RzRegIniFile1
    Left = 376
    Top = 240
  end
end
