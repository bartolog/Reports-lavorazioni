object frmSelectParts: TfrmSelectParts
  Left = 0
  Top = 0
  Caption = 'Select parts'
  ClientHeight = 507
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 1112
    Height = 450
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = pm1
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DM.dsSelectParts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      object cxGrid1DBTableView1Nome_Schema: TcxGridDBColumn
        DataBinding.FieldName = 'Nome_Schema'
        Width = 200
      end
      object cxGrid1DBTableView1Label: TcxGridDBColumn
        DataBinding.FieldName = 'Label'
        Width = 127
      end
      object cxGrid1DBTableView1lavorazioni: TcxGridDBColumn
        DataBinding.FieldName = 'lavorazioni'
        Width = 158
      end
      object cxGrid1DBTableView1QTA: TcxGridDBColumn
        DataBinding.FieldName = 'QTA'
      end
      object cxGrid1DBTableView1Tag: TcxGridDBColumn
        DataBinding.FieldName = 'Tag'
        Visible = False
      end
      object cxGrid1DBTableView1Codice: TcxGridDBColumn
        DataBinding.FieldName = 'Codice'
        Width = 125
      end
      object cxGrid1DBTableView1Descrizione: TcxGridDBColumn
        DataBinding.FieldName = 'Descrizione'
        Width = 229
      end
      object cxGrid1DBTableView1Materiale: TcxGridDBColumn
        DataBinding.FieldName = 'Materiale'
        Width = 142
      end
      object cxGrid1DBTableView1z: TcxGridDBColumn
        DataBinding.FieldName = 'z'
      end
      object cxGrid1DBTableView1x: TcxGridDBColumn
        DataBinding.FieldName = 'x'
      end
      object cxGrid1DBTableView1y: TcxGridDBColumn
        DataBinding.FieldName = 'y'
      end
      object cxGrid1DBTableView1AlphaCamFile: TcxGridDBColumn
        DataBinding.FieldName = 'AlphaCamFile'
      end
      object cxGrid1DBTableView1Note: TcxGridDBColumn
        DataBinding.FieldName = 'Note'
        Visible = False
      end
      object cxGrid1DBTableView1nfasi: TcxGridDBColumn
        DataBinding.FieldName = 'nfasi'
        Visible = False
      end
      object cxGrid1DBTableView1TipoMateriale: TcxGridDBColumn
        DataBinding.FieldName = 'TipoMateriale'
        Visible = False
      end
      object cxGrid1DBTableView1Versioni: TcxGridDBColumn
        DataBinding.FieldName = 'Versioni'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1112
    Height = 57
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 280
      Top = 22
      Width = 25
      Height = 13
      Caption = 'Anno'
    end
    object Label2: TLabel
      Left = 9
      Top = 22
      Width = 48
      Height = 13
      Caption = 'Settimana'
    end
    object edtAnno: TEdit
      Left = 311
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtSettimana: TEdit
      Left = 79
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnOk: TBitBtn
      Left = 568
      Top = 17
      Width = 129
      Height = 25
      Caption = 'OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnOkClick
    end
  end
  object pm1: TPopupMenu
    Left = 552
    Top = 256
    object I1: TMenuItem
      Caption = 'crea ordine'
      OnClick = I1Click
    end
  end
end
