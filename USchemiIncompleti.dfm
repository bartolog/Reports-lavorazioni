object frmSchemiIncompleti: TfrmSchemiIncompleti
  Left = 0
  Top = 0
  Caption = 'Schemi incompleti'
  ClientHeight = 417
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 728
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 375
    ExplicitWidth = 724
    DesignSize = (
      728
      41)
    object btnOk: TBitBtn
      Left = 620
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 616
    end
    object btnCancel: TBitBtn
      Left = 516
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 512
    end
  end
  object grSchemiIncompleti: TDBGrid
    Left = 0
    Top = 0
    Width = 728
    Height = 376
    Align = alClient
    DataSource = DM.srcSchemiIncompleti
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
