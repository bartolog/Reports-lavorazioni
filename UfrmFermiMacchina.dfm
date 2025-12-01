object frmFermiMacchina: TfrmFermiMacchina
  Left = 0
  Top = 0
  Caption = 'Fermi macchina'
  ClientHeight = 298
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 931
    Height = 298
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 929
    ExplicitHeight = 294
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DM.srcFermiMacchina
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1idScheda: TcxGridDBColumn
        DataBinding.FieldName = 'idScheda'
        Visible = False
      end
      object cxGrid1DBTableView1NumNota: TcxGridDBColumn
        DataBinding.FieldName = 'NumNota'
        Visible = False
        Width = 125
      end
      object cxGrid1DBTableView1Start: TcxGridDBColumn
        DataBinding.FieldName = 'Start'
      end
      object cxGrid1DBTableView1End: TcxGridDBColumn
        DataBinding.FieldName = 'End'
      end
      object cxGrid1DBTableView1Nota: TcxGridDBColumn
        DataBinding.FieldName = 'Nota'
        Width = 400
      end
      object cxGrid1DBTableView1Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'MANUTENZIONE'
          'ACCIDENTALE')
        Width = 139
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
