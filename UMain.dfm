object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Schede lavorazione 2026'
  ClientHeight = 577
  ClientWidth = 1208
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 1200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object stb1: TStatusBar
    Left = 0
    Top = 558
    Width = 1208
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1208
    Height = 558
    ActivePage = tsScheda
    Align = alClient
    TabOrder = 1
    object tsGriglia: TTabSheet
      Caption = 'Lista rapportini'
      object grSchede: TcxGrid
        Left = 0
        Top = 0
        Width = 1200
        Height = 530
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object grSchedeDBTableView1: TcxGridDBTableView
          Navigator.Visible = True
          DataController.DataSource = DM.srcSchedeLav
          DataController.Filter.AutoDataSetFilter = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object grSchedeDBTableView1Data: TcxGridDBColumn
            DataBinding.FieldName = 'Data'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object grSchedeDBTableView1idMacchina: TcxGridDBColumn
            DataBinding.FieldName = 'idMacchina'
          end
          object grSchedeDBTableView1CodiceLavorazione: TcxGridDBColumn
            DataBinding.FieldName = 'CodiceLavorazione'
            Width = 165
          end
          object grSchedeDBTableView1Turno: TcxGridDBColumn
            DataBinding.FieldName = 'Turno'
          end
          object grSchedeDBTableView1Stato: TcxGridDBColumn
            DataBinding.FieldName = 'Stato'
          end
          object grSchedeDBTableView1Operatore: TcxGridDBColumn
            DataBinding.FieldName = 'Operatore'
          end
          object grSchedeDBTableView1Macchina: TcxGridDBColumn
            DataBinding.FieldName = 'Macchina'
          end
          object grSchedeDBTableView1Lavorazione: TcxGridDBColumn
            DataBinding.FieldName = 'Lavorazione'
          end
          object grSchedeDBTableView1Orario_Inizio: TcxGridDBColumn
            DataBinding.FieldName = 'Orario_Inizio'
          end
          object grSchedeDBTableView1Orario_fine: TcxGridDBColumn
            DataBinding.FieldName = 'Orario_fine'
          end
        end
        object grSchedeLevel1: TcxGridLevel
          GridView = grSchedeDBTableView1
        end
      end
    end
    object tsScheda: TTabSheet
      Caption = 'Scheda'
      ImageIndex = 1
      OnShow = tsSchedaShow
      object pnlTesta: TPanel
        Left = 0
        Top = 0
        Width = 1200
        Height = 113
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1200
          113)
        object Label2: TLabel
          Left = 184
          Top = 112
          Width = 46
          Height = 13
          Caption = 'idOperaio'
          FocusControl = cxDBSpinEdit2
        end
        object Label3: TLabel
          Left = 184
          Top = 152
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = cxDBDateEdit1
        end
        object Label4: TLabel
          Left = 184
          Top = 192
          Width = 52
          Height = 13
          Caption = 'idMacchina'
          FocusControl = cxDBSpinEdit3
        end
        object Label5: TLabel
          Left = 184
          Top = 232
          Width = 90
          Height = 13
          Caption = 'CodiceLavorazione'
          FocusControl = cxDBTextEdit1
        end
        object Label6: TLabel
          Left = 184
          Top = 272
          Width = 28
          Height = 13
          Caption = 'Turno'
          FocusControl = cxDBTextEdit2
        end
        object Label7: TLabel
          Left = 184
          Top = 312
          Width = 61
          Height = 13
          Caption = 'Orario_Inizio'
          FocusControl = cxDBTextEdit3
        end
        object Label8: TLabel
          Left = 184
          Top = 352
          Width = 54
          Height = 13
          Caption = 'Orario_fine'
          FocusControl = cxDBTextEdit4
        end
        object Label9: TLabel
          Left = 184
          Top = 392
          Width = 26
          Height = 13
          Caption = 'Stato'
          FocusControl = cxDBTextEdit5
        end
        object Label1: TLabel
          Left = 180
          Top = 8
          Width = 50
          Height = 13
          Caption = 'Operatore'
          FocusControl = cmbOperatori
        end
        object Label10: TLabel
          Left = 32
          Top = 8
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = cxDBDateEdit2
        end
        object Label11: TLabel
          Left = 472
          Top = 8
          Width = 44
          Height = 13
          Caption = 'Macchina'
          FocusControl = cmbMacchina
        end
        object Label12: TLabel
          Left = 735
          Top = 8
          Width = 26
          Height = 13
          Caption = 'Stato'
        end
        object Label13: TLabel
          Left = 32
          Top = 62
          Width = 28
          Height = 13
          Caption = 'Turno'
        end
        object Label14: TLabel
          Left = 184
          Top = 62
          Width = 61
          Height = 13
          Caption = 'Orario_Inizio'
        end
        object Label15: TLabel
          Left = 360
          Top = 62
          Width = 54
          Height = 13
          Caption = 'Orario_fine'
        end
        object Label16: TLabel
          Left = 504
          Top = 62
          Width = 58
          Height = 13
          Caption = 'Lavorazione'
          FocusControl = cmbLavorazione
        end
        object Label17: TLabel
          Left = 703
          Top = 62
          Width = 84
          Height = 13
          Caption = 'Numero operatori'
          FocusControl = cmbLavorazione
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 184
          Top = 128
          DataBinding.DataField = 'idOperaio'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 8
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 184
          Top = 168
          DataBinding.DataField = 'Data'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 9
          Width = 121
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 184
          Top = 208
          DataBinding.DataField = 'idMacchina'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 10
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 184
          Top = 248
          DataBinding.DataField = 'CodiceLavorazione'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 11
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 184
          Top = 288
          DataBinding.DataField = 'Turno'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 12
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 184
          Top = 328
          DataBinding.DataField = 'Orario_Inizio'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 13
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 184
          Top = 368
          DataBinding.DataField = 'Orario_fine'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 14
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 184
          Top = 408
          DataBinding.DataField = 'Stato'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 15
          Width = 121
        end
        object cmbOperatori: TDBLookupComboBox
          Left = 184
          Top = 27
          Width = 274
          Height = 21
          DataField = 'Operatore'
          DataSource = DM.srcSchedeLav
          TabOrder = 1
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 32
          Top = 27
          DataBinding.DataField = 'Data'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 0
          Width = 121
        end
        object cmbMacchina: TDBLookupComboBox
          Left = 472
          Top = 27
          Width = 257
          Height = 21
          DataField = 'idMacchina'
          DataSource = DM.srcSchedeLav
          KeyField = 'idMacchina'
          ListField = 'Nome'
          ListSource = DM.srcMacchine
          TabOrder = 2
        end
        object cmbLavorazione: TDBLookupComboBox
          Left = 504
          Top = 78
          Width = 177
          Height = 21
          DataField = 'Lavorazione'
          DataSource = DM.srcSchedeLav
          TabOrder = 7
        end
        object DBComboBox1: TDBComboBox
          Left = 735
          Top = 27
          Width = 105
          Height = 21
          DataField = 'Stato'
          DataSource = DM.srcSchedeLav
          Items.Strings = (
            'APERTA'
            'CHIUSA')
          TabOrder = 3
        end
        object dbcmbTurno: TDBComboBox
          Left = 32
          Top = 78
          Width = 121
          Height = 21
          DataField = 'Turno'
          DataSource = DM.srcSchedeLav
          Items.Strings = (
            'MATTINA'
            'POMERIGGIO'
            'CENTRALE'
            'NOTTE')
          TabOrder = 4
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 184
          Top = 78
          DataBinding.DataField = 'Orario_Inizio'
          DataBinding.DataSource = DM.srcSchedeLav
          Properties.EditMask = '!90:00;1;_'
          TabOrder = 5
          Width = 137
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 360
          Top = 78
          DataBinding.DataField = 'Orario_fine'
          DataBinding.DataSource = DM.srcSchedeLav
          Properties.EditMask = '!90:00;1;_'
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          StyleReadOnly.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 121
        end
        object cxDBLabel1: TcxDBLabel
          Left = 1999
          Top = 5
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'TotMin'
          DataBinding.DataSource = DM.srcTotaleMin
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 16
          Height = 21
          Width = 86
        end
        object btnImpostazioni: TBitBtn
          Left = 1948
          Top = 70
          Width = 137
          Height = 37
          Anchors = [akRight, akBottom]
          Caption = 'Impostazioni'
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B00000001000000000000FF00FF00EAD0
            D300C6A4A100A8837400EEE4DE008C796700AAA19100D3CEB7008B8566006877
            4E00456129003A6123005884490023601300699E5D00155B0700ABC7A6000E61
            060012640A006AA26400075E02002A852800009C0000009B000000950000008E
            0000008D0000006D0000006C00000064000000630000005F0000005A0000004E
            000004A40500086F0B001E7A200003A20A00049B0B000AA914000AA6150018AA
            220013861B000FAE1F001A8D240012AD23001CAC2B0017B32D0019B430001685
            26002194310004821B0007A123001DB63A001EBB3B001BA73500168D30001BA5
            390021C24400058E250017B53C0021C2460022C1460022BB44001884300024C1
            480027B146002CB74B000381230031C055002AC4540031CA5C0049EA7A0047DF
            760007712A0018AB4900127F360033CF650051E47F005CF78E0062FE940036D4
            6D003BD570003DD975003FDC770046DF7C004FED85004DE7810051EB850054EF
            890059F58F005CF792005EFA960061FF970060FC960062FE990026C361002ED8
            6C0039DC760043E07D0049E6820049E583004FED890056F48F005CFC960062FF
            9D0068FFA10031B265004BE486006CFFA90035CE7A0043DA840042D78800066E
            38000B964F00086E3A004BD68E003ECA860050C98D004DD89600158251001F87
            5E0038BC89005ADEA9001FA57D005FCFAE002AB18B0037B597006FD8C500D6FC
            FF00E1FCFF0080C1C900BAEBF400C7F4FC001FD9FF0021DBFF0047E0FF0050E0
            FD0069E6FF0067CCE100ABF1FE00AAEFFC00D2F7FF00D6F8FF0024D5FD002DC2
            E3007ED9F0008AE9FF00AAE6F500B7F1FE0016C3F00018C7FA001ACEFC0064D5
            F50063D3F30076DDF9007FE0F900CEF4FE001EC4F7001EBEEE0050BCDC0056C7
            EA0022AADA0028B5E70032B5E30031B2DD003AB6E1003DBBE90049C1EC001EB5
            EE0024B5F10027ADE3002CB4EC0036B7EE004BC4F800DAF4FF0000669A000065
            9900006294000061930000609200005D8C00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            1D1D00000000000000000000000000000000000000001D1D1B1D1D1D00000000
            0000000000000000000000001D1D1916161D26191D1D1D000000000000000000
            000000001D262522221D2517181A331DB000000000000000000000001D272827
            271D34724A1C3BB1AEB2210000000000000000001D2D2D2B2B1D7EB1B57371B2
            ADB1441EB0B00000000000001D302F2F2F1D7FB089B3B39FA3A5B0B09CB00000
            000000001D363536361D3CB29A888697A9ACA7A1A0B00000000000001D413F3E
            3E1D4B79B28A91B2B1B0ABA7B0000000000000001D46463A6B83B1B28D9BB32A
            2939B0ACA6B0B000000000001D4D473D76B0828F8592B431372EB1AAA4A899B0
            000000001D514D4D4D1DB0B08595B34C4078B29EA2B0B000000000001D535253
            531D617AB08194B3B4B39098B0000000000000001D635463531D77B09D9D8F95
            938A888696B00000000000001D645565651D80B09DB0B0848C8BB0B087B00000
            000000001D565766651D7BB0B06E75B08EB0607CB0B00000000000001D675867
            671D68706F4874B0AFB0621D00000000000000001D5C5B69691D6D504F596C7D
            B077561D00000000000000001D5C5747321D45494F5F5C5965585A1D00000000
            000000001D5C240C101013153842495A5D5C5E1D00000000000000000F200505
            0201B604070E152C434E6A1D000000000000000000000F110F0B090601040703
            0A231D1D00000000000000000000000000001F0F0D09080F0000000000000000
            000000000000000000000000000F141200000000000000000000}
          TabOrder = 17
        end
        object BitBtn1: TBitBtn
          Left = 1948
          Top = 27
          Width = 137
          Height = 37
          Action = actFermiMacchina
          Anchors = [akTop, akRight]
          Caption = 'Fermi macchina'
          TabOrder = 18
        end
        object pnlButtons: TPanel
          Left = 856
          Top = 1
          Width = 343
          Height = 111
          Align = alRight
          TabOrder = 19
          object navSchede: TcxDBNavigator
            AlignWithMargins = True
            Left = 4
            Top = 67
            Width = 335
            Height = 40
            Buttons.Images = imgListNavigator
            Buttons.First.ImageIndex = 0
            Buttons.First.Visible = True
            Buttons.PriorPage.Visible = False
            Buttons.Prior.ImageIndex = 1
            Buttons.Next.ImageIndex = 2
            Buttons.NextPage.Visible = False
            Buttons.Last.ImageIndex = 3
            Buttons.Insert.ImageIndex = 7
            Buttons.Insert.Visible = True
            Buttons.Append.Visible = False
            Buttons.Delete.ImageIndex = 6
            Buttons.Delete.Visible = True
            Buttons.Edit.Visible = False
            Buttons.Post.ImageIndex = 9
            Buttons.Post.Visible = True
            Buttons.Cancel.ImageIndex = 8
            Buttons.Refresh.ImageIndex = 4
            Buttons.Refresh.Visible = True
            Buttons.SaveBookmark.Visible = False
            Buttons.GotoBookmark.Visible = False
            Buttons.Filter.Visible = False
            DataSource = DM.srcSchedeLav
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'McSkin'
            Align = alBottom
            TabOrder = 0
            ExplicitWidth = 319
          end
          object cxButton1: TcxButton
            Left = 181
            Top = 1
            Width = 84
            Height = 63
            Align = alLeft
            Action = actImpostazioni
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'McSkin'
            OptionsImage.Layout = blGlyphTop
            TabOrder = 1
          end
          object btnFermiMacchina: TcxButton
            Left = 90
            Top = 1
            Width = 91
            Height = 63
            Align = alLeft
            Action = actFermiMacchina
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'McSkin'
            OptionsImage.Layout = blGlyphTop
            TabOrder = 2
          end
          object cxButton2: TcxButton
            Left = 1
            Top = 1
            Width = 89
            Height = 63
            Align = alLeft
            Action = actScaricaMatPrima
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'McSkin'
            OptionsImage.Layout = blGlyphTop
            TabOrder = 3
            ExplicitLeft = 7
          end
          object btnUpdate: TcxButton
            Left = 265
            Top = 1
            Width = 77
            Height = 63
            Align = alClient
            Caption = 'Update'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'McSkin'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = imgList32
            OptionsImage.Layout = blGlyphTop
            TabOrder = 4
            OnClick = btnUpdateClick
            ExplicitLeft = 271
            ExplicitTop = -2
          end
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 703
          Top = 78
          DataBinding.DataField = 'NumOperatori'
          DataBinding.DataSource = DM.srcSchedeLav
          TabOrder = 20
          Width = 81
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 113
        Width = 1200
        Height = 417
        Align = alClient
        PopupMenu = pmSchemi
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.Images = imgListNavigator
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.ImageIndex = 6
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.ImageIndex = 4
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = DM.dsRighescheda
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1Num_Pannelli
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1Num_Pannelli
            end>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 0
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxGrid1DBTableView1IdScheda: TcxGridDBColumn
            DataBinding.FieldName = 'IdScheda'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Riga: TcxGridDBColumn
            DataBinding.FieldName = 'Riga'
            Options.Editing = False
          end
          object cxGrid1DBTableView1NSchema: TcxGridDBColumn
            DataBinding.FieldName = 'NSchema'
            Options.Editing = False
          end
          object cxGrid1DBTableView1idSchema: TcxGridDBColumn
            DataBinding.FieldName = 'idSchema'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Qta: TcxGridDBColumn
            DataBinding.FieldName = 'Qta'
          end
          object cxGrid1DBTableView1Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            Options.Editing = False
            Width = 146
          end
          object cxGrid1DBTableView1Materiale: TcxGridDBColumn
            DataBinding.FieldName = 'Materiale'
            Options.Editing = False
            Width = 164
          end
          object cxGrid1DBTableView1CodiceMatGo: TcxGridDBColumn
            Caption = 'Materiale Go'
            DataBinding.FieldName = 'CodiceMatGo'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODICE'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRIZIONE1'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DMGO.dsMateriali
            Width = 164
          end
          object cxGrid1DBTableView1Dim_X_Pannello: TcxGridDBColumn
            DataBinding.FieldName = 'Dim_X_Pannello'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Dim_Y_Pannello: TcxGridDBColumn
            DataBinding.FieldName = 'Dim_Y_Pannello'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Dim_Z_Pannello: TcxGridDBColumn
            DataBinding.FieldName = 'Dim_Z_Pannello'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Num_Pannelli: TcxGridDBColumn
            DataBinding.FieldName = 'Num_Pannelli'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Pacco: TcxGridDBColumn
            DataBinding.FieldName = 'Pacco'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Modelli: TcxGridDBColumn
            DataBinding.FieldName = 'Modelli'
            Options.Editing = False
          end
          object cxGrid1DBTableView1nTeste: TcxGridDBColumn
            DataBinding.FieldName = 'nTeste'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Eseguito_Start: TcxGridDBColumn
            DataBinding.FieldName = 'Eseguito_Start'
            Options.Editing = False
          end
          object cxGrid1DBTableView1Eseguito_End: TcxGridDBColumn
            DataBinding.FieldName = 'Eseguito_End'
            Options.Editing = False
          end
        end
        object grDatiGrid1DBTableView2: TcxGridDBTableView
          Navigator.Visible = True
          DataController.DataSource = DM.dsRighescheda
          OptionsData.CancelOnExit = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          object grDatiGrid1DBTableView2Riga: TcxGridDBColumn
            DataBinding.FieldName = 'Riga'
          end
          object grDatiGrid1DBTableView2Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
          end
          object grDatiGrid1DBTableView2Qta: TcxGridDBColumn
            DataBinding.FieldName = 'Qta'
          end
          object grDatiGrid1DBTableView2Modelli: TcxGridDBColumn
            DataBinding.FieldName = 'Modelli'
          end
        end
        object cxGrid1DBTableView2: TcxGridDBTableView
          Navigator.Visible = True
          DataController.DataSource = DM.dsRighescheda
          OptionsData.CancelOnExit = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object colGrid1DBTableView2Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
          end
          object colGrid1DBTableView2Qta: TcxGridDBColumn
            DataBinding.FieldName = 'Qta'
          end
          object colGrid1DBTableView2Modelli: TcxGridDBColumn
            DataBinding.FieldName = 'Modelli'
          end
        end
        object grdGrid1DBTableView3: TcxGridDBTableView
          Navigator.Visible = True
          DataController.DataSource = DM.dsRighescheda
          OptionsData.CancelOnExit = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          object grdGrid1DBTableView3Riga: TcxGridDBColumn
            DataBinding.FieldName = 'Riga'
          end
          object grdGrid1DBTableView3Qta: TcxGridDBColumn
            DataBinding.FieldName = 'Qta'
          end
          object grdGrid1DBTableView3Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
          end
          object grdGrid1DBTableView3Modelli: TcxGridDBColumn
            DataBinding.FieldName = 'Modelli'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
        object grdGrid1Level3: TcxGridLevel
          GridView = grdGrid1DBTableView3
        end
      end
      object ActivityIndicator1: TActivityIndicator
        Left = 790
        Top = 59
        IndicatorSize = aisLarge
      end
    end
  end
  object pmSchemi: TPopupMenu
    Images = cxImageList1
    Left = 216
    Top = 256
    object Aggiungischema1: TMenuItem
      Caption = 'Aggiungi schema'
      object Pantografo1: TMenuItem
        Action = actCaricaPantReport
      end
      object roncatrice1: TMenuItem
        Action = actTroncatrice
      end
      object Sezionatrice1: TMenuItem
        Action = actSezionatrice
      end
      object actLoadSquadra1: TMenuItem
        Action = actLoadSquadra
      end
      object FastPantografo1: TMenuItem
        Action = actFastLoadPantografo
      end
    end
    object Scheminoncompletati1: TMenuItem
      Caption = 'Schemi non completati'
      OnClick = Scheminoncompletati1Click
    end
    object Stampa1: TMenuItem
      Caption = 'Stampa'
      OnClick = Stampa1Click
    end
    object Leggitotali1: TMenuItem
      Action = actReadTotals
      Visible = False
    end
    object Stampacomeingriglia1: TMenuItem
      Caption = 'Stampa come in griglia'
      OnClick = Stampacomeingriglia1Click
    end
    object Cambialunghezzatavola1: TMenuItem
      Action = actChangeLxTavole
    end
    object actSelectParts1: TMenuItem
      Action = actSelectParts
    end
    object V1: TMenuItem
      Caption = 'Vista dettaglio'
      OnClick = V1Click
    end
  end
  object dlgOpen1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 288
    Top = 304
  end
  object frxReportTroncSezio: TfrxReport
    Version = '2025.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44078.651445081000000000
    ReportOptions.LastChange = 44098.349515925890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1088
    Top = 224
    Datasets = <
      item
        DataSet = frxSchedeLav
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxRigheScheda
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'EvenRows'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Fill.BackColor = 15000804
      end>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 1.889765000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SCHEDA DI LAVORAZIONE')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        PrintOnFirstPage = False
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Stampato il [Date] [Time]')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 79.370130000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object frxDBDataset1Data: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'Data'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Data"]')
        end
        object frxDBDataset1Operatore: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'Operatore'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Operatore"]')
        end
        object frxDBDataset1Macchina: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'Macchina'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Macchina"]')
        end
        object frxDBDataset1Orario_Inizio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 52.913420000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Turno :   [frxDBDataset1."Turno"]     [frxDBDataset1."Orario_Ini' +
              'zio"]  [frxDBDataset1."Orario_fine"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 79.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        Child = frxReportTroncSezio.Child1
        Condition = 'frxDBDataset2."Nome"'
        DrillDown = True
        object Memo5: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = []
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -15
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Nome"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2PrgModels: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 3.779530000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Franklin Gothic Medium Cond'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = ANSI_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -15
          Highlight.Font.Name = 'Calibri'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Modelli"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        DataSet = frxRigheScheda
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2Materiale: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clBtnFace
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset2."Materiale"] da [frxDBDataset2."Spessore"]  -  [f' +
              'rxDBDataset2."PanelXdim"] X [frxDBDataset2."PanelYDim"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object frxDBDataset2Qta: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 590.756340000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clBtnFace
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Qta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2NSchema: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'NSchema'
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."NSchema"]')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pannello')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Totale pannelli')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 556.740570000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."Qta">,MasterData1)]')
        end
      end
    end
  end
  object frxSchedeLav: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DM.tblSchedeLav
    BCDToCurrency = False
    DataSetOptions = []
    Left = 952
    Top = 216
  end
  object frxRigheScheda: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = DM.qryRigheScheda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 976
    Top = 288
  end
  object actManager1: TActionManager
    Images = cxImageList1
    Left = 136
    Top = 416
    StyleName = 'Platform Default'
    object actCaricaPantReport: TAction
      Tag = 1
      Caption = 'Pantografo'
      ImageIndex = 0
      Visible = False
      OnExecute = actCaricaPantReportExecute
      OnUpdate = actCaricaPantReportUpdate
    end
    object actTroncatrice: TAction
      Tag = 3
      Caption = 'Troncatrice'
      ImageIndex = 1
      OnExecute = actTroncatriceExecute
      OnUpdate = actCaricaPantReportUpdate
    end
    object actSezionatrice: TAction
      Tag = 2
      Caption = 'Sezionatrice'
      ImageIndex = 2
      OnExecute = actSezionatriceExecute
      OnUpdate = actCaricaPantReportUpdate
    end
    object actReadTotals: TAction
      Caption = 'Leggi totali'
      ImageIndex = 3
      OnUpdate = actReadTotalsUpdate
    end
    object actChangeLxTavole: TAction
      Caption = 'Cambia lunghezza tavola'
      OnExecute = actChangeLxTavoleExecute
      OnUpdate = actChangeLxTavoleUpdate
    end
    object actSelectParts: TAction
      Caption = 'Seleziona parti'
      ImageIndex = 5
      OnExecute = actSelectPartsExecute
    end
    object actLoadSquadra: TAction
      Tag = 2
      Caption = 'Squadratrice'
      ImageIndex = 6
      OnExecute = actLoadSquadraExecute
      OnUpdate = actCaricaPantReportUpdate
    end
    object actFastLoadPantografo: TAction
      Tag = 1
      Caption = 'Fast Pantografo'
      ImageIndex = 7
      OnExecute = actFastLoadPantografoExecute
      OnUpdate = actCaricaPantReportUpdate
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 17825824
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001D744558745469746C65005265706F72744C61796F75745069766F74
          5461626C653BC751897E0000014649444154785E85934D4B03311086DB65772F
          1E8ABFC53F2582282248119522A288825241D04B0FA24245111511BC7811FCF8
          23A268B5DD26FB39CE0C1B09EB842E3C87F03E79990D490D006AF8D5DB27CFFB
          7BA7AF300AF2C8A77D8429F0768F9EA02800B2BC70C13979E4570BFCADCE23A4
          59011393D77FE824B7E19C3CF2AB05C1FAC1030A39A83873C13979E4570BC256
          FB1E9234874867D0E9BE18686D26E29C3CF2FF152CEFDC418CC240A52E38474F
          2E58DCBE059D64F01325F604B43613708E9E5CD0DCBCE1FFEC0D62179CA32717
          2C6C5CC11085CF7EEC8273F4E482F9B54B8874CAA31A3EBEB50DE7E8C90573AB
          1710A914DE7BCA05E7E8C905B3AD733EE9B72F651F22ADCD449CA3271604332B
          677C5DFBC3C405E7E88917C99F6A1E1F4E2F756114E44957D94342640C6920E3
          028D320FA5C7542F4B7C242049202873CF7ECEBF04E59926DC2AD64100000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000D744558745469746C65005265706F72743B0C72A51900
          00022949444154785E75913D68544110C77FEF5DA277F138256263C4AB22E815
          4944102CECD38B8A8558A70962528885A60A8885A021DA8ADA9846B0D2C2C2C2
          C646FC404E4DCC69841883F1F271F776776665DFE3C17189B3FC776097F9CD7F
          76F1DED31551D087C6CA95778BBFFC9BFA8FD6C367AF6E02BD1D2A0051A8ED21
          0B26665E5C8E88C63DBE1A13D1F8B98A47498C2DD25B9C9CB8FB7C523DA8C852
          7BF3EFECBD6BE703D4E680C8AB1F3F3974B88ADB0C452C2DAFA4D95887318E7D
          45C7C2428323274E0F34BECA1870BB1380A856476A55EEDC7F84B382710E1724
          8288A2AA880895FD7BE04B74301B0572402C4E693B65EFA1A39C3D5EA15EAFA7
          8072B94CA55249F5E0E57CEACA390B500088F31142A72D2B38516AB51AA3A3A3
          0C0F0FD3DFDF4F5F5F1FA55209E7635CDC83733E077438B04ACB08CE0900C562
          91C1C1418C31ACADADA1AAA82F2012EF0CB0A26C1AC53A05607AEE238975182B
          882AD31747B0BE404200B8CC7D27C05961BD2D589B01AE9E3946775881C4FAD0
          64BB83607DC338AC1500AE3F7E4BDB389270E68499B153E95DE2341F33DE0668
          B61C26BB64EAC210DD61D2EF951C10E5943407EB1B6D4DBBFD2F82F5C42A4E74
          0707928DC0AE12E76E3CC57BD0B085AC9EB07ACB651251D42940D409506BECC6
          F2E7C572A53A809215AB82A8E29514E8BCCFC630490BB09D00D35CFD3E6BDF9B
          4B854FF307202B4833998BFCCC99AD3FCDDFDF9E00EB9D80F6EBB9A929E016B0
          1B8833117509C000CD1CF00FE6486C878568A5140000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000002BD49444154785E55526948554D187EE6DC734C69BB2E174B5BDC5028
          FC248216930235152C312D22E8332AA4BCF181202DF82BC422FCE1F22334A228
          252AFB912DE095D4422169C10297900FC176D1342C09BCF7CC3BCDCCB917F43D
          CC0CE779DFF799679E19D6D2F6B20740B6C0A21080F32F9660600C422CA9EC65
          358DCFC48533D9C10207F5BD1845FE9E4D2122DD34F17906891B6216B101B54D
          DD30390928D2804D60C11449CCB6B9C64910CEB7FD83BCCD1711175B0A66384A
          2C970B9C7318A1423511090DA62478240149521B8100C7DCFC345E7DACC3EDDE
          4ACCFF990371D22A6C1230392784F493E0B8EA3B82F1C90108859193E1443859
          508DAEC156D43EC8C1BFBB9B909EB44BAB34B99C9E760F41455A9207C313CF71
          E9441B3EFD942482A03E411CA3939D48888FC39AA818D47514A1E6E09852A214
          0814E6A46B0F1616FCB02538F2BD03B71EB763762A00120291D12E9415956270
          640CEFDE4FC15B7C171BD745832B0536E721A7B561EA4836B76592D07AEE0B54
          78AFAD47FB933EC4AFC842FD7FED70AF8C02330CB59932913493DF2F0DF3FB41
          5C38D249E2E4904784B991997C1655479B6573340CD9AC12017504E25C3B5F79
          234D3A3CA36F84935F6202152D1BB03C3C12F5C787F175EA37C24C2BF89874BF
          F6809557DD13A78E656260E81106C61B505D5E8DD16F3E98AE65B8FFB01F3B93
          AAB03D7D3FC6C6A7A142BF95E0DAD3FF3F8C0071A426C7A234B70C9EF06DB8D3
          D5ACE5BF1EFC004FC40E1CCA2F434AE25AEDD1BEBD192854233703C5055B749D
          A1A432C16059162A4A2EE3ED9B1F989DFBA5576FC9158987E9FD881CDD42AF02
          EAE38A808246316660F52A8FBCA206345FEF83F74023DCEE1895711A48681560
          08852635B5EB002CD380E9B290B5350F2D91234895B25D9609832902E866D332
          A04300A40611D8E1D3373B011428721000E786F414AAD61B2B1243E30E464C81
          BEBFB6CE92A30FE3B4900000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C6500446F776E6C6F61643B4172726F773BEC8F
          1AD00000023949444154785E75534D681341187DB3C98A37C18358A197D2AA85
          A220463C252D6AC5D26841F0E2A958905044114F9E440A82964A2E22A2077B11
          29D22262A968D5A412436D14FCA944A836C664B149BAA469F3373FCE245D1C08
          79F0F83EBE8FF786997D4B84105020844003A9B111DC691C9D010D63CF7A6AB3
          D1A7DDB3B2673AE56C5AED640F1D6E68E0655315C22AEEEEE1817BD071637CB0
          5719E42CCA9B19902BA75F186A46CB0C25B6827CF52B8400B618DB50A9504898
          2343615599A49084FE06AE6BE33E2A38A054E7CF5C855DFA0281BAC19D870F6A
          122E77C1CB5153EA68C31B247EAE4EEC6DDF8D813E3FAC7C0CAB450B76318D84
          3D0FFFA983E8DCD381CF0BD664B32BF0F8C75C4088E861BEF56FAB30F3E09C41
          080E0182D29A81278F13C9F4D27A60F30A0D5F41CC4D256D2B59189C9BFD2DB5
          04555691AC8231819793299EB58A438B914C0680D00D74F0E9FB4BA1E5B87DEB
          5BCC06E50C8C732C84B358FE51188BCD58AFB52C341AF407DA95338D3E4F8F7C
          7A6FCFAFA42AF89328E2C31B3BB618C95E07503D74729780829E284585E3E7DA
          107CB75FB5AE034777EEF30FB7157ACEB66E7478B6ABA1EB76B80B9EFE165D07
          A7D1236C6CD2E5E96BB9D0E5DB7171332F2E67A71BE839708F4EF95E11837819
          15608C4B8A1AB9EC29ADD78D751A0A5E8A1D7172A027D1CC66CADEDE639DC8E5
          53A08C81720EE690A94A313351F0AA6C493618885F71FBEDDD78C4C79D931505
          A4B07E3AE7808C79A859902A8F6E7E3F01C0D47E65557508C9AA64C919FC03C9
          195863EE9BB9A50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000011744558745469746C65004572726F723B4661696C3BE8
          835D03000001E849444154785EC593DB4B93711880BB9A7F43ECA293A5EC4231
          FB9496DA51E82277614442299D46A7F5752168A7455141888850633097611EC8
          4379086994E186B36F35681B692C87E045A690376E8679F5F4FE60775F7853D0
          C573F3BECFEFB97A7F1B80BFE2DF07BEDEBA661174C11032598CECCCB26E60AA
          A1DE2AC416BAFDFC1C7F49E66D0FE9D75DAC04BA5878EA41ED94F3C7404C7759
          84D86287871F1DCD24DD2E9607BCA4FB3D4CD79F61BEA591456F13E2C4851C53
          20E2745E996B7DC852DB03C277DCBCB8DB42543F4BF87C2DBDB79B99BCD1C0B7
          7B9799BB7F13E59A02A19375C6F7A64652D79D4C7ADB59058C9E41463D9DA401
          C3EB2771BA8A79F725946B0ABCA93EB6367BE22029D77112B54748F60FB00C0A
          A69FF7F2F1A8EC2E54335B5789B8BF4C8191C3556B3335FB99729410D8A731EA
          EB230DAC02A1EE61027B77F1D951CA4CCD01C4CD98027DE59546C25141B87813
          A1476D2C01A9E1572407475801261EFB081658255281724D81CEE2327DBC6C0F
          91F27C3EE9E7483D6B67E250A9A0F1E5898FE8C5537C90DD3BFB6E946B0AF86D
          5A8E101F2BD98961DF41B0682BEFED3605C1C2CD6AC69856843809E59A020ACF
          9602AB101BCA578F728968DB855C4285DB18CAB321BBB872D63DE5D68D7916E1
          AA101556B244B333D329FFFFDFF81BEAAAB702F51D56B10000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001D744558745469746C6500496E736572745461626C6543656C6C733B
          5461626C653BC0E2AA6D0000017849444154785EB592BF6B536118859F9B5CD0
          3D0EAE2E825217C1C14108A983712BC5A928B8B80842D1A18B2DCDE2203839B7
          A46087425D5CDAA1A183583A69051DFCF1073824A628A9BDB9EF395683A5D00B
          5E101F38EBC377BEF3A6B6F917524A72BFFD7643E14658440885C9439DD202C9
          8D4737C7C8C30C7F251733EDD78D343900A81C49021818DAD6A120442ED3FB3E
          240F310C219974FBEEA94E62D72D908D25F6326F8DB777AF5EB8FD7C2033AB70
          6BFCCA99B5078B6FAE29448409FDCE5A9A98FAA5D91790ED42D687FD3EAF9ECC
          5C064E4A1EC8CCDB667DF373F3E3F28DE39F681BF6BFC2A76590C08104E76FAD
          76FFBC28C4BCEC97408762410F2C2046B179BF3479FAECD4CA178F6859742820
          1D64DADC7A7CAF6E09CBD8A6B7E76D20B340A625313771FDDCC6F4C2CEF1191B
          0BFD26700248812A900019F0EDC3A8F31CC0F4E24EF18CB67F000729E6AF3352
          926A5AE93E7CF6AE76B442B55AE99616D8D40A2AD40E05FFBD42C8C59748499E
          DEB9D8A4809F38044A532F3854280000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000016744558745469746C6500417865733B417869733B5363
          616C653B75820782000001AB49444154785E8D53CD4AC340109E8D41117C9D28
          05C1AA8807F131AA2D082258893DB454C4B427B128AD072FBE835E3C540FFEE3
          D3B41EDA6667EDCCEC6E027A7092CD4E7667BEF9E6DB44756EBFFA4110148D81
          A9F103D8178F7C1EDEB79B5AA74FD552613D1C7E8F8A71B9E0E20194CC79CB16
          942B01A797CF2B0010848886F71B9D57AE50AB2C52AD1C8E72D5BDCDCFCE00E7
          1182A3149723E64A17DFC6CE888028EFC6A0CCDC26327A802849ADEE27F0920F
          B04952DF02884F8E4623005A4BA5A3DD8883107CA2F84823034554BC8E5A9887
          4491DC56EF5D0239926FCF468A668A0003A1654041CC40C433D2AF4DF6B4FD59
          A0807911C3F138058DA48130104D7C659FEC16886FAA15501E33006B87A548D0
          7DB26FC7B1A0FD5F1622CAD1B4AF3F001D03DF6D9E8998320284A2890A8D36FC
          52DD89E0ECEA0D9A172F304935688D904E34A49A28D3BBF142DEB4B70075FE3B
          30224E5C596206CD83659E93E335EEFABCB1C1C99D934D06C0DC97A9F6EAF726
          8925C099F18FBC88CE571C5B4B1EA0976C2F8483C1B0BF5FBF5BB5E2F166FEDC
          D1FCFD87A693D1230068526A8EC484CC14FCCFE81CC73F96EF7E877703304200
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001A744558745469746C650052696768744C6566743B4469
          72656374696F6E3BCCA13443000002BA49444154785E8D535B48545D145E5BC7
          7B53919A128D3A8E369A8AA610EA4F79E9A2915949C268236968D98B5379FB31
          2F6899486AE14328413541208A6986037641CDD05E22CB301A2D6C2483FAFF07
          111BA7CEDEAB73CE9C3303BED486EF7CFB72BE75D6DAE75B04EC8338E01C04FE
          3C90547626C1B5B229D7C6BBE91C300004B49FC80F94D6289E892CAF19C37105
          65A200E73E2C0D1CCEDC733C4CA3024494D44462672C02E8F888F1FE708A8249
          012687BFE6039958484B8B0950ABB7C2CC8C05A6A6CCA21251923061EECC8651
          7C0A86B6DDF0D2522FD61CA4557AE92AB40FBB47727074FE3CDE7E5C80C50D71
          5D00E0CDC38387FB3A28F81218301E930B973039A4790D71494739ECA10769B6
          364C058C469EA5F580779AA6CB00807BFEA95ABC08240046E30828184560C839
          2E67D1BCF293E3581E8F1E9AC11D090F0F8244A62DA53514EE5D9D31EC0D6DFD
          353A5F2ED624965FDA1C0FE31FABE4DFE65654177B59E0C0101FEFEC739AA1EB
          8399689A2DC69B43B978B22ABA4B4A9D3C335F80829A188092A65DB2D85D5F1D
          DD72BA2116A57A89BFCACB27AB24F4515BFF7E1C7A57889D8339A82BDFD9259F
          E757478143CC476FE9E83B8A857562808D3C3C79786FD8ECE69B51146C6AED4D
          C581377ABCF1E018E61A22BA01C08B878B42B8C9BCCAA8C6B804F5BF9A884D30
          FD9A41597BD23230A76384D9DB57FFF16F1350AB032091EE3803AE2E597D1DB3
          E124D710792844E3674A4A0906AB6D19B628B7032081759E14BDB062FD0E366E
          153CDD95F079CE0A2FC6CCB7C4F4F7E955CDF1C9011531097E60EAB7C0FFDF56
          2529DACD23AF90F040292B22B2DC401EA93AD595847FFCCB1717ACD0DBFEDE17
          00D6FEA2A998E2C0A9207C62B4D8C67A166B296324709BF2A2203E61D0FE6092
          0085091158CEC5B9EF2298215DAF12F66C13BD5F6A6D6BB455701C4504C6EC66
          414427CBBD41ED4DF51B640D67CAD05EBA1F0000000049454E44AE426082}
        FileName = 'Images\Direction\RightLeft_16x16.png'
        Keywords = 'Direction;RightLeft'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A233033
          394332333B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D22
          426C61636B2220706F696E74733D2232342C32322032342C323620382C323620
          382C323220342C323220342C33302032382C33302032382C323220222F3E0D0A
          3C706F6C79676F6E20636C6173733D22477265656E2220706F696E74733D2231
          362C32322032342C31342031382C31342031382C322031342C322031342C3134
          20382C313420222F3E0D0A3C2F7376673E0D0A}
        FileName = 'DevAV\Actions\Download.svg'
        Keywords = 'Actions;Download'
      end>
  end
  object RzVersionInfo1: TRzVersionInfo
    Left = 616
    Top = 264
  end
  object frxReportPanto: TfrxReport
    Version = '2025.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44078.651445081000000000
    ReportOptions.LastChange = 44098.380977777780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1080
    Top = 400
    Datasets = <
      item
        DataSet = frxSchedeLav
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxRigheScheda
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'EvenRows'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Fill.BackColor = 15000804
      end>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 30.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 1.889765000000001000
          Width = 272.126160000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SCHEDA DI LAVORAZIONE')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Stampato il [Date] [Time]')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 79.370130000000000000
        ParentFont = False
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object frxDBDataset1Data: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'Data'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Data"]')
        end
        object frxDBDataset1Operatore: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'Operatore'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Operatore"]')
        end
        object frxDBDataset1Macchina: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'Macchina'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Macchina"]')
        end
        object frxDBDataset1Orario_Inizio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 52.913420000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Turno :   [frxDBDataset1."Turno"]     [frxDBDataset1."Orario_Ini' +
              'zio"]  [frxDBDataset1."Orario_fine"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 79.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxRigheScheda
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2Materiale: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset2."Materiale"] da [frxDBDataset2."Dim_Z_Pannello"] ' +
              ' - [frxDBDataset2."Dim_X_Pannello"] X [frxDBDataset2."Dim_Y_Pann' +
              'ello"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object frxDBDataset2Qta: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 594.535870000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Qta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2NSchema: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Nome"]')
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '(  [frxDBDataset2."nTeste"] )')
          ParentFont = False
        end
      end
    end
  end
  object cxLocalizer1: TcxLocalizer
    FileName = 'grid6_ita.ini'
    Left = 512
    Top = 216
  end
  object dxAlertWindowManager1: TdxAlertWindowManager
    OptionsButtons.Buttons = <>
    OptionsButtons.Images = cxImageList1
    OptionsMessage.Caption.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Caption.Font.Color = clWindowText
    OptionsMessage.Caption.Font.Height = -13
    OptionsMessage.Caption.Font.Name = 'Tahoma'
    OptionsMessage.Caption.Font.Style = [fsBold]
    OptionsMessage.Text.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Text.Font.Color = clWindowText
    OptionsMessage.Text.Font.Height = -11
    OptionsMessage.Text.Font.Name = 'Tahoma'
    OptionsMessage.Text.Font.Style = []
    OptionsNavigationPanel.Font.Charset = DEFAULT_CHARSET
    OptionsNavigationPanel.Font.Color = clWindowText
    OptionsNavigationPanel.Font.Height = -11
    OptionsNavigationPanel.Font.Name = 'Tahoma'
    OptionsNavigationPanel.Font.Style = []
    OnClick = dxAlertWindowManager1Click
    Left = 456
    Top = 344
    PixelsPerInch = 96
  end
  object imgList32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    Left = 40
    Top = 216
    Bitmap = {
      494C010104000800040020002000FFFFFFFF2100FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000030000000A000000110000001600000017000000120000000B0000
      0004000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      000200000008040303425E4741FF5E4740FF5D473FFF5D463FFF030202440000
      0009000000020000000100000000000000010000000100000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000002000000030000000200000001000000010000
      00040000000E1E171597A5958EFFCBBCB1FFC5B4A9FF8D7A70FF18110F990000
      0011000000050000000100000001000000030000000400000003000000020000
      0001000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000BD77610FFD77610FF0301002100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000002000000060000000A0000000B0000000800000006000000060000
      000A00000018453530DACABEB6FFC0AEA1FFBFACA1FFB3A196FF3A2A26DB0000
      001C0000000D00000008000000080000000C000000100000000F000000090000
      0003000000010000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000A0603002D0000
      0000000000000603002DD77610FFD77610FF140B015000000000000000000201
      001D0201001C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000006000000152F2320B8312622BF0504034800000013000000130201
      01311C151390735D55FFCFBFB6FFC0ADA1FFBFAC9FFFC7B7ABFF614D46FF1611
      0F9301010137000000180000001904030350251C18C2221916BD0000001E0000
      000B000000030000000100000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A764009BDCB7010F82A17
      03722615026C8C4D0BCED77610FFD77610FF9A550BD82D1903761B0F025CBB67
      0EEE9F570CDB0201001C00000000000000000000000000000000000000000000
      0000000000000000000092635D008E5D59008E5D59008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D59008E5D590080504B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0005000000143B2F2BBBBBADA6FFB9A9A1FF78645CFF342724C12D221FB8715B
      54FD97847BFFC0AFA5FFC5B3A7FFC2AFA3FFC1AEA1FFC2AEA2FFB8A79DFF8975
      6CFF5B4841FD281E1ABC2B1F1CC566524BFFA18D84FF9C8A7EFF261B19C10000
      001E000000090000000200000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000B98530BD6D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFBB670EEE0201001D00000000000000000000000000000000000000000000
      0000000000000000000093655E00EFD3B400F6DAB600F3D5AD00F2D1A500F0CE
      9E00EFCB9700EFC79100EEC58900EBC18200EBC08000EBC08000EBC08000EBC0
      8000EBC08000EBC08000EDC18000EABF7F0080504B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      00083A2E2ABAC6BBB6FFD9CDC4FFD1C3BAFFD6C9BFFFB4A49CFFA99890FFCFC2
      B8FFCDBEB4FFC7B7ACFFC4B3A7FFC4B1A5FFC2B0A4FFC0AEA2FFC1AFA2FFC5B4
      A8FFC4B3A9FF9C8A80FFA39288FFC4B1A6FFBDA99CFFBBA89CFF9D8B80FF241A
      16BD0000000F0000000300000001000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000300240825007D135801C01E8702ED229C
      02FF229C02FF1D8102E8114C01B30107003A0000000008040033D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF1B0F025C0000000000000000000000000000000000000000000000000000
      0000000000000000000093655F00EED4B800F4DABB00F2D5B100F0D1AA00EFCF
      A300EECB9D00EDC79600EDC58F00EBC18800EABF8200E9BD7F00E9BD7F00E9BD
      7F00E9BD7F00E9BD7F00EABF7F00E7BC7E0080504B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      00083B2F2CBACABFBAFFE4DBD5FFCFC1B7FFCEBFB5FFD1C3B8FFD0C1B9FFCABB
      B0FFC9B8ADFFC8B7ABFFC7B5A9FFC5B4A8FFC4B2A6FFC2B1A4FFC2AFA3FFC0AD
      A1FFBFADA0FFC2B0A5FFC1AEA1FFBBA79BFFBBA79AFFBDA99EFFA18E85FF271C
      19C0000000100000000400000001000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000200200F4401A9229A02FD229C02FF229C02FF229C02FF229C
      02FF229C02FF0D3E01A20000000D00000000000000001E100260D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF361E04800000000000000000000000000000000000000000000000000000
      0000000000000000000093655F00EED7C000F6E0C100F2D9B800F2D4B100F0D1
      AA00EFCFA400EECB9D00EDC79600EDC58F00EBC18900EABF8200E9BD7F00E9BD
      7F00E9BD7F00E9BD7F00EABF7F00E7BC7E0080504B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      000606050544907B74FFEDE7E2FFD8CCC4FFD0C2B8FFCEC0B6FFCDBDB4FFCCBC
      B2FFCBBBB0FFCAB9AEFFC8B7ACFFC7B5AAFFC5B4A8FFC4B2A7FFC3B1A5FFC1AF
      A3FFC0AEA1FFBFACA0FFBEAA9EFFBDA99CFFBCA99CFFC6B3A8FF6A564FFF0503
      03500000000C0000000300000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000041200571F8C02F2229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0001001B000000000301001F130A014D8C4D0BCED77610FFD776
      10FFD77610FF683908B2010000130000000F5B3207A6D77610FFD77610FFD776
      10FFB0610EE7160C015303020022000000000000000000000000000000000000
      0000000000000000000093655F00EFDAC500F7E2C700F3DCBF00811E0000811E
      0000811E0000811E0000811E0000811E0000811E0000811E0000811E0000811E
      0000811E0000E9BD7F00EABF7F00E7BC7E0080504B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00040000000D3E322EBDCAC0BAFFDED4CEFFD1C4BAFFD0C2B8FFCFC0B6FFCEBE
      B4FFCCBDB3FFCBBBB0FFC9B9AEFFC8B8ACFFC7B6ABFFC6B5A9FFC4B3A7FFC3B1
      A6FFC2B0A4FFC1AEA2FFC0ADA1FFBEAB9EFFC1AFA3FFA8968CFF2E231FC50000
      0019000000080000000100000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000000000000000000000000000061C
      006D229A02FE229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0000000000000000D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0201001E00000000000000000000000FD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000093656000F0DECC00F8E6CF00F6E0C600811E0000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00D5DDFE001D41FB00E9EDFE00FEFEFE00FEFE
      FE00811E0000E9BD7F00EABF7F00E7BC7E0080504B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00040000000D372D29B0C2B6B1FFE0D7D0FFD9CDC5FFD5C8BFFFD2C3B9FFCFC1
      B7FFCEBFB4FFD0C1B8FFD9CEC6FFE3DBD5FFE7E0DAFFE5DCD6FFDBD0C8FFCBBC
      B2FFC4B2A6FFC2B0A4FFC1AEA3FFC0ADA1FFC5B2A8FF9F8D83FF2A201DBA0000
      0018000000080000000100000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A2C01880A2C018800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003100054229A
      02FE229C02FF229C02FF229C02FF229C02FF166501CE05180066000200210000
      0001000000060000000000000000D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF03020023000000000000000001000013D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000095666000F2E2D300FAEAD700F6E3CE00811E0000FEFE
      FE00FEFEFE00FEFEFE009AADFC00082AFA00011FFA00899EFC00FEFEFE00FEFE
      FE00811E0000E9BD7F00EABF7F00E7BC7E0080504B0000000000000000000000
      0000000000000000000000000000000000000000000000000001000000020000
      00060202022F857169FCEDE7E3FFE0D5CEFFDED3CBFFDCD0C8FFDACEC5FFD6C9
      C0FFD8CCC4FFCEC1BAFFA7958EFF927D74FF937E75FFA9978FFFD3C8C1FFE5DC
      D6FFD3C3BAFFC4B2A7FFC3B0A5FFC1AFA3FFC0AEA1FFC9B9AFFF66524AFD0202
      013C0000000D0000000500000002000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A2C0188229C02FF229C02FF0A2C0188000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000002001D1E8A02F0229C
      02FF229C02FF229C02FF209202F6051A00680000000100000000000000000000
      00000000000000000000000000000000000F0D07003F98530CD7D77610FFD776
      10FFD77610FF764009BD030200230301001F683908B2D77610FFD77610FFD776
      10FF90500BD10D07003F00000010000000000000000000000000000000000000
      0000000000000000000098696300F2E6DA00FAEEDE00F7E7D400811E0000FEFE
      FE00FEFEFE005674FB00011FFA00011FFA00011FFA001135FA00FEFEFE00FEFE
      FE00811E0000E9BD8100EABF7F00E7BC7E0080504B0000000000000000000000
      0000000000000000000000000000000000000000000200000004000000080000
      000D1F181693A69793FFEAE3DDFFE2D8D2FFE0D5CFFFDED3CCFFDCD1C8FFDFD5
      CEFFB6A7A0FF69564EE8110E0C660201012D0201012D110F0D686D5A54E8BCAE
      A7FFE5DCD6FFCBBCB1FFC5B3A7FFC3B1A6FFC1AFA4FFC9B8ACFF97837AFF1E17
      159D0000001C0000001100000009000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A2C0188229C02FF229C02FF229C02FF229C02FF0A2C01880000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D3E01A1229C02FF229C
      02FF229C02FF209202F7020A0042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023130267D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF241402690000000000000000000000000000000000000000000000000000
      000000000000000000009E6E6400F4EAE100FBF2E600F8EADC00811E0000E9ED
      FE001D41FB00011FFA00011FFA005674FB00082AFA00011FFA009AADFC00FEFE
      FE00811E0000EBC18800EABF8200E7BB7E0080504B0000000000000000000000
      000000000000000000000000000000000000000000040302022F1E1816874D3D
      38D3826C65FFDED5D2FFE7DED8FFE4DBD5FFE2D8D2FFE1D6CFFFE1D7D0FFCCC0
      B9FF574841DA010101260000000C00000008000000080000000D010101285E4E
      48DCD2C7C1FFDDD3CBFFC6B5A9FFC5B3A7FFC4B2A6FFC5B3A7FFC1B1A7FF705A
      52FF42332DD81A1412910302023B0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A2C0188229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0A2C
      0188000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001001C229702FB229C02FF229C
      02FF229C02FF061C006D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000160C0153D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF120A014B0000000000000000000000000000000000000000000000000000
      00000000000000000000A3726600F6EEE900FCF6ED00F8EFE300811E00001135
      FA00011FFA00082AFA009AADFC00FEFEFE006681FB00011FFA001135FA00FEFE
      FE00811E0000EBC48E00EBC28800E7BC800080504B0000000000000000000000
      00000000000000000000000000000000000000000007826B62FFBCB1ABFFDDD6
      D1FFF1ECE8FFEAE2DEFFE7E0DAFFE6DDD8FFE4DCD5FFE3D9D2FFE8E1DCFF8E7A
      73FF0E0B0A610000000B000000040000000200000002000000040000000D0F0C
      0B6599867DFFE8E0DBFFC7B7ABFFC6B5AAFFC5B4A8FFC4B2A6FFC4B3A8FFD0C1
      B7FFBEAEA5FF9E8C82FF6E574FFF000000120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A2C
      0188229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF0A2C01880000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000071F0072229C02FF229C02FF229C
      02FF186D02D50000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000201001BB6640EEBD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFB0610EE70100001600000000000000000000000000000000000000000000
      00000000000000000000A7756800F8F3F000FEFBF600FBF3EB00811E0000899E
      FC001D41FB00C1CCFC00FEFEFE00FEFEFE00E9EDFE00082AFA00011FFA006681
      FB00811E0000EDC79500EDC58F00E9BF870080504B0000000000000000000000
      000000000000000000000000000000000000000000088C766CFFFAF8F7FFEFEA
      E5FFEDE5E1FFEBE4DFFFE9E2DDFFE8E0DBFFE6DED8FFE4DCD6FFEBE5E0FF745D
      56FF000000200000000600000002000000000000000000000002000000070000
      00227C665EFFEBE3DFFFC9B9AEFFC8B8ACFFC6B6ABFFC6B4A8FFC5B2A6FFC3B1
      A5FFC5B3A7FFD1C3B9FF705951FF000000170000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A2C0188229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0A2C018800000000000000000000000000000000000000000000
      000000000000000000000000000000000000114D01B4229C02FF229C02FF229C
      02FF071E00710000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F84490AC8B6640EEB160C
      01531D10025F81470AC6D77610FFD77610FF84480AC820110263190E0258BB67
      0EEE764009BD0000000A00000000000000000000000000000000000000000000
      00000000000000000000AC796900FAF6F400FFFFFE00FEF8F300811E0000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00899EFC00011FFA00011F
      FA00631E1B00EECB9C00EEC99600EAC18E0080504B0000000000000000000000
      000000000000000000000000000000000000000000088F786EFFFAF8F7FFF5F0
      EEFFF0EBE6FFEDE6E1FFECE4E0FFE9E2DDFFE8E0DBFFE6DED9FFEEE7E4FF6F59
      52FF0000001F0000000600000001000000000000000000000002000000070000
      002178625BFFE8E1DBFFCBBBB1FFCAB9AFFFC8B8ADFFC7B7ABFFC6B4A9FFC5B3
      A7FFC7B6AAFFD7C9C2FF735B54FF000000160000000000000000000000000000
      000000000000000000000000000000000000000000000A2C0188229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0A2C0188000000000000000000000000000000000000
      0000000000000000000000000000000000001B7802DF229C02FF229C02FF229C
      02FF0105002E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000F0201001B0000
      0000000000000B06003CD77610FFD77610FF0B06003C00000000000000000201
      001E0000000A0000000000000000000000000000000000000000000000000000
      00000000000000000000B17E6B00FAF6F400FFFFFF00FFFEFB00811E0000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE003859FB00011F
      FA00041FE500DCC1A600EECB9C00EBC5920080504B0000000000000000000000
      00000000000000000000000000000000000000000006917A71FFC4B8B2FFE4DD
      DAFFF9F8F7FFF7F3F1FFEFE8E4FFECE4E0FFEAE2DEFFE8E0DBFFEEE7E4FF8470
      6AFF0C0908620000000A000000040000000100000002000000040000000C0D0A
      09638C7A72FFDED4CDFFCDBDB3FFCBBCB1FFCABAAFFFC9B8ADFFC9BAAFFFD7CB
      C3FFD1C6C0FFAE9F98FF755E56FF000000110000000000000000000000000000
      0000000000000000000000000000000000000A2C0188229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF0A2C01880000000000000000000000000000
      0000000000000000000000000000000000001E8A02F0229C02FF229C02FF229C
      02FF0000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000ED77610FFD77610FF0101001800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B6816C00FAF6F400FFFFFF00FFFFFF00811E0000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00E9EDFE001D41
      FB00011FFA001C3AEA00F0CFA300EDC9990080504B0000000000000000000000
      000000000000000000000000000000000000000000030303022B241E1C825C4F
      48CD9D887EFFEBE7E5FFF4EFEDFFEEE7E2FFECE5E1FFEBE3DFFFECE4DFFFCCC3
      BFFF473731DC000000230000000A00000006000000070000000B010000264A3B
      35DBCBC1BBFFD5C8C0FFCFBFB5FFCEBEB4FFCCBCB2FFCDBDB2FFCCBFB7FF8670
      68FF51423DD51F1A178C03020236000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E8902EF229C02FF229C02FF229C
      02FF000000110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BB846E00FAF6F400FFFFFF00FFFFFF00811E0000811E
      0000811E0000811E0000811E0000811E0000811E0000811E0000811E0000631E
      1B00041FE500011FFA00011FFA00CEB4910080504B0000000000000000000000
      0000000000000000000000000000000000000000000100000003000000050000
      00092B24218EC0B2ADFFF8F6F5FFEEEAE5FFEEE7E3FFECE6E1FFEBE4DFFFEEE7
      E3FFAB9E98FF4A3832E70C0908650101012B0101012C0D0A09674D3B35E7AA9B
      96FFDFD4CDFFD6C9C0FFD0C1B8FFCFC0B6FFCEBEB4FFD5C9C0FFAC9A91FF2720
      1D98000000170000000E00000008000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000197602DD229C02FF229C02FF229C
      02FF010600320000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0896F00FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFEFB00FEF7F200FBF2EA00FAEEE200F8EBDA00F7E6D300F6E2CB00F6DE
      C400F3DCBD00011FFA00011FFA00011FFA00011FFA0000000000000000000000
      0000000000000000000000000000000000000000000000000001000000020000
      0004020202289C877DFCF7F4F3FFF3EFECFFEFE9E5FFEEE8E3FFEDE6E1FFEBE3
      DFFFEEE7E3FFCCC2BFFF887670FF6B554FFF6A554FFF897570FFC8BEB7FFE3D9
      D4FFDBCEC6FFD9CDC4FFD4C7BFFFD1C3B9FFD0C1B7FFDBD1C8FF88736BFD0302
      02340000000A0000000400000002000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000104A01B0229C02FF229C02FF229C
      02FF072100760000000000000000000000000000000000000000000000000000
      00000000000000000000051A0069229A02FE229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C58C7000FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFCFB00FCF8F200FBF3EA00F8EEE200F8EAD900F8E7D400FAE9
      D000E0D0BA00B8AB9A00011FFA00011FFA00011FFA00011FFA00011FFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000200000007433935ADD3C9C4FFF6F3EFFFF0EAE7FFEFE9E6FFEEE8E3FFEDE6
      E1FFEBE4DFFFECE5E0FFEEE9E5FFEFEAE6FFEEE7E3FFEBE4DFFFE4DBD4FFDFD5
      CDFFDDD2CAFFDCCFC7FFD9CCC4FFD3C5BDFFD8CCC3FFAE9F98FF2D211FB50000
      0013000000060000000100000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000061C006D229C02FF229C02FF229C
      02FF197302DB0000000400000000000000000000000000000000000000000000
      0000000000000000000000000000051A0069229A02FE229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CB917300FBF7F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFB00FCF7F000FBF2E900FBF2E500E9D3C400A067
      5B00A0675B00A0675B00A0675B00A0675B00011FFA00011FFA00011FFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000074C403BB6DBD4CFFFF4F0EEFFF1ECE9FFF0EBE8FFEFEAE5FFEEE8
      E4FFEDE6E2FFEBE5DFFFE9E3DDFFE9E0DBFFE7DED9FFE5DCD6FFE3DAD3FFE1D7
      D1FFE0D5CDFFDDD2CBFFDCCFC7FFD7CAC2FFD8CCC3FFBBAFA8FF332724BF0000
      0013000000060000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010018219402F9229C02FF229C
      02FF229C02FF0722007800000000000000000000000000000000000000000000
      000000000000000000000000000000000000051A0069229A02FE229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CF967400FBF7F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFCFA00FCF7F000FFFAEF00DAC0B600A067
      5B00DAA16B00DD984F00E2903A00EA892300A5686B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000305040434AA9990FDF8F6F5FFF3EFECFFF3EEEAFFF2ECE9FFF1EBE8FFF0EA
      E6FFEFE8E4FFEDE7E2FFEBE5E0FFEAE3DEFFE8E1DBFFE7DED9FFE6DCD5FFE4DA
      D4FFE1D7D1FFE0D6CEFFDED2CCFFDBCFC7FFD5C8BFFFE0D6D1FF806B65FF0504
      0448000000080000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C380199229C02FF229C
      02FF229C02FF219602FA030E004E000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C380199229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4987500FCF8F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFB00FFFEF700DDC4BC00A067
      5B00EAB47400EFA95200F6A03600A5686B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00044B403CB1DED6D3FFF8F5F4FFF5F0EDFFF4EFECFFF5F1EEFFF6F3F0FFF4F0
      ECFFF0EBE7FFEFE9E4FFEDE7E2FFEBE5E0FFEBE3DEFFE9E1DCFFE7DFD9FFE6DD
      D6FFE4DCD5FFE8DFD9FFE9E1DCFFE3DAD3FFD8CAC3FFDBCEC6FFC1B3AEFF3429
      25BC0000000B0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000100171D8502EB229C
      02FF229C02FF229C02FF219602FA072200780000000400000000000000000000
      00000000000000000000000000000000000307200075229802FC229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4987500FCF8F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDC7C200A067
      5B00EAB27300EFA75100A5686B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00034E443EB4E1D9D5FFFBF9F8FFF8F5F3FFFAF7F6FFDDD5D1FFD6CDC8FFF8F5
      F4FFF9F7F6FFF4F1EEFFF0EAE7FFEEE7E2FFECE5E0FFEBE4DFFFEBE4DEFFEFE8
      E4FFF1ECE9FFD0C6C1FFD9CFCBFFF4F1EEFFECE5E0FFE0D7CFFFC4B9B2FF3429
      26B80000000A0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020C00492298
      02FC229C02FF229C02FF229C02FF229C02FF197302DB07210076010600320000
      0011000000100105002E061E0071186E02D6229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4987500FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2D0CE00A067
      5B00EDB57200A5686B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020000000B514742B6E0D9D5FFE2DCD8FFB2A198FF4D423EB5463C38ADA48F
      85FCC7BAB4FFEDE8E6FFF8F4F3FFEFE9E5FFEEE7E3FFEEE7E2FFE0D9D5FFAC9E
      99FF9D887FFC453B37B34F433DBEA9988EFFDAD1CDFFD6CCC7FF4C413CBB0000
      0015000000060000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000414
      005D229802FC229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF115001B7229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
      6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800A067
      5B00A5686B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000020000000B4F443FB4554943BA0706053A00000008000000070202
      012528232085AA968CFFFBF9F8FFF2EDE9FFEFE9E5FFF5F1EFFF846F68FF1C16
      1488020202290000000D0000000D080706444E433EBD493E39B7000000140000
      0006000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020C00491D8502EB229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF208E02F40414
      005E0000000007220078229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000200000003000000040000000300000002000000020000
      00040000000A6D5E56D5ECE6E3FFF6F2EFFFF2EDE9FFE6E0DDFF51413CD60000
      000D000000060000000400000004000000060000000800000008000000050000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000100170C380199219402F9229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229A02FD0F4301A7000200210000
      0000000000000000000007220078229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000010000000100000000000000000000
      0002000000052F28258DD2C6C1FFFCFAF9FFFCFAF9FFD0C5C0FF231C1A8F0000
      0008000000020000000100000001000000010000000200000002000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010018061C006D104A01B0197502DD1E89
      02EF1E8902EF1B7A02E1114F01B6072100760002002000000000000000000000
      0000000000000000000000000000072200780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000000306050536A48D83FFA28D82FFA28C82FFA18C80FF050303380000
      0004000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000300000006000000080000000800000007000000040000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00007F000000000000000000000000FC00007F000000000000000000000000
      FC00001F000000000000000000000000FC00001F000000000000000000000000
      FC00007F000000000000000000000000FC0000FF000000000000000000000000
      FC0001FF000000000000000000000000FC0003FF000000000000000000000000
      FC0007FF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000}
    DesignInfo = 14155816
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0092635D008E5D59008E5D59008E5D
          59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
          59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D590080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0093655E00EFD3B400F6DAB600F3D5
          AD00F2D1A500F0CE9E00EFCB9700EFC79100EEC58900EBC18200EBC08000EBC0
          8000EBC08000EBC08000EBC08000EBC08000EDC18000EABF7F0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0093655F00EED4B800F4DABB00F2D5
          B100F0D1AA00EFCFA300EECB9D00EDC79600EDC58F00EBC18800EABF8200E9BD
          7F00E9BD7F00E9BD7F00E9BD7F00E9BD7F00EABF7F00E7BC7E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0093655F00EED7C000F6E0C100F2D9
          B800F2D4B100F0D1AA00EFCFA400EECB9D00EDC79600EDC58F00EBC18900EABF
          8200E9BD7F00E9BD7F00E9BD7F00E9BD7F00EABF7F00E7BC7E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0093655F00EFDAC500F7E2C700F3DC
          BF00811E0000811E0000811E0000811E0000811E0000811E0000811E0000811E
          0000811E0000811E0000811E0000E9BD7F00EABF7F00E7BC7E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0093656000F0DECC00F8E6CF00F6E0
          C600811E0000FEFEFE00FEFEFE00FEFEFE00FEFEFE00D5DDFE001D41FB00E9ED
          FE00FEFEFE00FEFEFE00811E0000E9BD7F00EABF7F00E7BC7E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0095666000F2E2D300FAEAD700F6E3
          CE00811E0000FEFEFE00FEFEFE00FEFEFE009AADFC00082AFA00011FFA00899E
          FC00FEFEFE00FEFEFE00811E0000E9BD7F00EABF7F00E7BC7E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0098696300F2E6DA00FAEEDE00F7E7
          D400811E0000FEFEFE00FEFEFE005674FB00011FFA00011FFA00011FFA001135
          FA00FEFEFE00FEFEFE00811E0000E9BD8100EABF7F00E7BC7E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF009E6E6400F4EAE100FBF2E600F8EA
          DC00811E0000E9EDFE001D41FB00011FFA00011FFA005674FB00082AFA00011F
          FA009AADFC00FEFEFE00811E0000EBC18800EABF8200E7BB7E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00A3726600F6EEE900FCF6ED00F8EF
          E300811E00001135FA00011FFA00082AFA009AADFC00FEFEFE006681FB00011F
          FA001135FA00FEFEFE00811E0000EBC48E00EBC28800E7BC800080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00A7756800F8F3F000FEFBF600FBF3
          EB00811E0000899EFC001D41FB00C1CCFC00FEFEFE00FEFEFE00E9EDFE00082A
          FA00011FFA006681FB00811E0000EDC79500EDC58F00E9BF870080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00AC796900FAF6F400FFFFFE00FEF8
          F300811E0000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00899E
          FC00011FFA00011FFA00631E1B00EECB9C00EEC99600EAC18E0080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00B17E6B00FAF6F400FFFFFF00FFFE
          FB00811E0000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE003859FB00011FFA00041FE500DCC1A600EECB9C00EBC5920080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00B6816C00FAF6F400FFFFFF00FFFF
          FF00811E0000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
          FE00E9EDFE001D41FB00011FFA001C3AEA00F0CFA300EDC9990080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00BB846E00FAF6F400FFFFFF00FFFF
          FF00811E0000811E0000811E0000811E0000811E0000811E0000811E0000811E
          0000811E0000631E1B00041FE500011FFA00011FFA00CEB4910080504B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00C0896F00FBF7F400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFEFB00FEF7F200FBF2EA00FAEEE200F8EBDA00F7E6
          D300F6E2CB00F6DEC400F3DCBD00011FFA00011FFA00011FFA00011FFA00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00C58C7000FBF7F400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFCFB00FCF8F200FBF3EA00F8EEE200F8EA
          D900F8E7D400FAE9D000E0D0BA00B8AB9A00011FFA00011FFA00011FFA00011F
          FA00011FFA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00CB917300FBF7F400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FCF7F000FBF2E900FBF2
          E500E9D3C400A0675B00A0675B00A0675B00A0675B00A0675B00011FFA00011F
          FA00011FFA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00CF967400FBF7F600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFA00FCF7F000FFFA
          EF00DAC0B600A0675B00DAA16B00DD984F00E2903A00EA892300A5686B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D4987500FCF8F600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFB00FFFE
          F700DDC4BC00A0675B00EAB47400EFA95200F6A03600A5686B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D4987500FCF8F600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00DDC7C200A0675B00EAB27300EFA75100A5686B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D4987500FFFEFE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E2D0CE00A0675B00EDB57200A5686B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00CF8E6800CF8E6800CF8E6800CF8E
          6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E6800CF8E
          6800CF8E6800A0675B00A5686B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002B744558745469746C650053657475703B437573746F6D697A3B4465
          7369676E3B53657474696E673B50726F70657274381FB5210000096F49444154
          785EA5567B7054D51DFEF6EEDD6437316C1E04121342480884902AA09006E411
          218040159929C1542538C5E2D48E222A3830016CA538B60E582B152818A98101
          81F20A0F85407824BC04250592051260CD83D78624FBBC7BEFE9EF9CB9F74EA4
          FEC3F4DC7C39B37BCF39DFF77B9EB5E0E107DF2311ACFACC0723A8044DE02186
          4CC0B2951B7F9E8A897F62620C5834B75890BF5DFAC9134E67FC49064D506B60
          38537D227FF7D6CFCF0060A51FAE674CDF241E4DCC80F88A0980B0BC740E6483
          EB9DDF4F47D76193ADA67794B0CA00980222ED8EA251F98FE1974FE6808FEAD3
          B5A83D77AE08C07982F6FEFC590F7A4C707BEE7B3933480F96AFF8D2F4C0CF11
          770523314280EE729B64952666A43F0A5F2084901246AF941E9024790280D207
          C220E9E0438D7346AB77DA3A356EBDA6AAE60252A4FD847CC2AF5E702CF9E88B
          1D848AB90B3FCE0310C1895F9AFD4E9F05EF7FB6D01913939398E014E4E1B08A
          F83827121262073CF3FCEC85538B6667027070CCFCDD82516F2D5AB967EEC215
          DB33FBFDC20940EE1EFB8844FC5035CDF4008F91E9AEF144FE54C1C42DD3268F
          7EC66A9570F8F8F9C2451FACA9D0342DE08C753E37B07F6FEB90C7FA41515441
          AED1DE0E5F10AFBFF6228E1D3F33FFD63DEFDBE91903F6C22245A7A525178CCE
          1F2C84026CE3F64D6B8A1BAF5EBC9F181FA3BCB1E06366C667E95F3760F1BC97
          447C4B3FFCE78EA2A9E32667928B29F6B04A125CD76EC21F0822373B03926441
          20A420180C435135903088C4E26E9265F2A284CBF50D88723890999182F6CE00
          3CED9DB879C38D55ABCAF6EFFDF79A6900026327CDD20E56AC373CA0991E601A
          544D15D69172158C518C53932088152225A81AE3C43A20669510082A604C4352
          721209B7E0C7560FDADABCB0CA568443E24CD9C82D23074C0164AD48B67BF76E
          FFB1F2F8B9299464123F8CB8A02AC24A681C1A9F0D722688359521CC4B8D0B21
          F1C150185A98CEE486682ABAD9EDD8B7BF129EBB2D7FD1FB05E3FBCD24A40F66
          D1FFFDA30517DC3FB6EEAF27B74B168B10C785A826299118507936EB228888C8
          851035ACF2F0086FC964FDA53A175CAE2B87CF54579CE6744280FA8000C6600E
          728FDFEB0DC06295B8952654DD620B3DF6081BA2A32228D69170D8236021B161
          DD03E44C3E0B0100280C1DF459F3A1CB387AA8DCD2B549587448334ADEEC3B60
          E0A0DAB75E2BB20695B070A7E97A5513165D715DC3CE3DDFA2A1C12D3CD7273D
          0DE3278EA67E404947C27988949082905E2571B1D128FF6ABB76AAE6705E4D55
          C5450021C313B241AC43EED133F5D5DCFEE9569E7441452162E83167827CCFDE
          8328DFB8A32518F096DE6FBB7D02D02C2D2D4D23CE5FB8B8E4D7D32627E5E50F
          4587D7FF13E1814008997D33A4A61F9B7E0B542C06E0D745289CDC5A32675176
          4CB7D822ABCD3AD919D36DC8AB339F85DDEE809736323DD9C8C7686C68C49FFE
          FCE9D5862B3F4CB856FF5D3380B06E80DC276B504AFF8143F7CC9BFB6A5F5B64
          14BC7EDA2B046862AF4D62D8B9F3003C1ECF45BFDFBBF7EEADE6CDC72AB75F90
          B980F884C4DA31239F4076563AB931112145430777A56A261D1C9111F87ADB3E
          B2C6B74C270F11545D80DAE03ADF94969EBD7CDF81236B8B5F98C6F71B9E1350
          25A0B8F879A84A28E772DDD59CCAC335F300C40BD77382C231C3D03D210E9E0E
          3FDA3A7CBC668998438351322DAD77D0DA74F5A06EB97AC7D3C16EDD6D377ABF
          D2E0FAFE506BCB5D748B8982A69727CD424828A4C2DD720FB7DA7CC8C919208C
          13DD1F8028213EFCA110C28AF6BF754EE0F52CCB369EED66E2D23BD6B57A2C54
          B75659862C5921F631BD3768106731A6193CC238B10500F3797DD8BDBF0A77EE
          DC4364A40CA613AB2A8193AB4C78A457AF646464E51670E504A96782534AEAEE
          34123822F7F1E1637BF74EA5F5BAE754CDEC9A9285213E36069A12C4C993670D
          AF2A7CA3EABEDE30E85FE53B96BFFFC1A7B5A54B57A2B3A35364BF10111642D0
          E90BA2B07014121293DF23A21400764EAAC3913B68784A8FA494F9630BF22984
          5EA36F88D9221A9A8AB5ABCBB066F5FABABDBB767F5277F1EC53008232006DFF
          AEF5FF01B094B06CECA499CB8E54D5BC3E69CA388A9B02D30B84C4C4048C1F37
          322BC21651959533B8D47DDD55CD0392DABBDF88EEDD9397148CC9EBC9D7B81A
          9B0431D3C36777D871EEF40F68725F5F577D641B2F432F21405064A321F05980
          85D6D65DBDF9DA54D96ABDAF931B22DAA92CFB6665E0D147937AD6D6D67DDE9C
          D55F58979CD4034306E720B17B3CDCCDF7E0236F99770663B05A80EFBFFF416B
          6D6E580FE0BE4EAE129848A892398BF1C53F968A9E40701495BCBBA178FA94E7
          7AF74983970EA3FB9CA0F264156E95258932DD012765BBCD26537E90B84E1F6E
          DD6913A112AD5D086088B4D9E072D563F78E9DDF9CACDAFE328036429000A313
          1A19D9F52E887144D9451279FD01A396CD4C0E8455F86E07D174CB6310752135
          D6894486A286E17038F859D15D5A3F060D9BC4CE9FAA80A4131ADCD2F82933F3
          D27BF77A3ABB7F26FFCDA7136B309B9229A6CB4DA89A254BD0D7E9DF05430A52
          7BA5212535757846BF27F300C8A2F7A861F336148B8D3B21C619F76EE1D8E1E8
          E8F4F39E2EDE49562BFFBD088DE9F96008613AB1984DCBC55A2BC168E33E9F1F
          43F386213A26EE4D5D80E5C2D9031643801902434C381C86A7DD2B7E8E455128
          DCD76FE2D2A53AD8236D888C906101D3EF7FD33B206A44D27B4704C5BCBE1ECD
          EE1B745D3B204912172A42A1D200C074981E1007E82FD49AA3BB8BD7AEDBF4ED
          8DC61B686E6AC1BAB51BB0A16C63D5D6CDDBF7AF5BFB955673E21482812037C2
          0C09204109F871BCEA1856AF5AADEDD8BAEDE0A60DE527CABFDC8016B71B376F
          5CC7D6F28D55D7EA4FCFD2EF10D62F77B42902CFCF7803379AEEC2E8680989A9
          89A30B5FDC37725C71E5E343C74F0490C0919D9B3F7854E18C15D35F7E9B5554
          9E63655B0FB3F55F57B22D7BABD984675F61B4F66FC9A9FD799C9308C9E99983
          A7E60C7ABA2AFBB13107ED8E983400D17AA559FA0D1C09733C3BFD0F6874DF46
          C3CDDBA6084294D860763CF3BBA4B1934AEA2B0E9D6265DB0EB33212F059D92E
          F6E4F0E75C0052093104BB8E4708B10427C16190D79C77C11060E680281F7AAE
          5C6F15371B21A0234450748408BE50D07FF0F2251762BB45C36E8F10310FF87D
          87BA74B8A00E3FA19343FFAC9DF8CEC573D31CB29103252573C1F8A3328C2898
          2112C5B8EAF85C7D64B345EF96A1F676CF96DDBB0ECC61BB0E883DFCCFD7E9D9
          D2A5C36164E16FD8D16FBE32A9C8627158C94BAFE0FF1946B78C22C4117A107A
          12E209D146893D0CC17F0161B32CB90E1B30110000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A233033
          394332333B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D22
          426C61636B2220706F696E74733D2232342C32322032342C323620382C323620
          382C323220342C323220342C33302032382C33302032382C323220222F3E0D0A
          3C706F6C79676F6E20636C6173733D22477265656E2220706F696E74733D2231
          362C32322032342C31342031382C31342031382C322031342C322031342C3134
          20382C313420222F3E0D0A3C2F7376673E0D0A}
        FileName = 'DevAV\Actions\Download.svg'
        Keywords = 'Actions;Download'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
          3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
          3E0D0A3C672069643D224175746F6D6174696355706461746573223E0D0A0909
          3C7061746820636C6173733D22477265656E2220643D224D31352E362C32352E
          314C31342E362C3235632D312D302E322D312E362D312D312E362D32762D312E
          31632D302E332C302D302E372C302E312D312C302E31632D342E342C302D382D
          332E362D382D3863302D342E342C332E362D382C382D3820202623393B262339
          3B63322E322C302C342E322C302E392C352E362C322E344C31342C313268352E
          3748323268312E3848323456326C2D332E352C332E354331382E332C332E332C
          31352E332C322C31322C3243352E342C322C302C372E342C302C313463302C36
          2E362C352E342C31322C31322C313220202623393B2623393B63312E312C302C
          322E322D302E322C332E332D302E354C31352E362C32352E317A222F3E0D0A09
          093C7061746820636C6173733D22426C75652220643D224D33312C3233762D32
          6C2D322E322D302E34632D302E322D302E362D302E342D312E332D302E382D31
          2E386C312E332D312E386C2D312E342D312E346C2D312E382C312E33632D302E
          352D302E332D312E322D302E362D312E382D302E374C32342C3134682D322020
          2623393B2623393B6C2D302E342C322E32632D302E362C302E322D312E332C30
          2E342D312E382C302E374C31382C31352E364C31362E362C31376C312E332C31
          2E38632D302E332C302E352D302E362C312E322D302E382C312E384C31352C32
          3176326C322E322C302E3463302E322C302E362C302E342C312E332C302E382C
          312E3820202623393B2623393B4C31362E372C32376C312E342C312E346C312E
          382D312E3363302E352C302E332C312E322C302E362C312E382C302E374C3232
          2C333068326C302E342D322E3263302E362D302E322C312E332D302E342C312E
          382D302E376C312E382C312E336C312E342D312E346C2D312E332D312E382020
          2623393B2623393B63302E332D302E352C302E362D312E322C302E382D312E38
          4C33312C32337A204D32332C3234632D312E312C302D322D302E392D322D3273
          302E392D322C322D3273322C302E392C322C325332342E312C32342C32332C32
          347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
        FileName = 'SVG Images\Dashboards\AutomaticUpdates.svg'
        Keywords = 'Dashboards;AutomaticUpdates'
      end>
  end
  object actsButtons: TActionManager
    Images = imgList32
    Left = 72
    Top = 336
    StyleName = 'Platform Default'
    object actFermiMacchina: TAction
      Caption = 'Fermi macchina'
      ImageIndex = 0
      OnExecute = actFermiMacchinaExecute
    end
    object actImpostazioni: TAction
      Caption = 'Impostazioni'
      ImageIndex = 1
      OnExecute = actImpostazioniExecute
    end
    object actScaricaMatPrima: TAction
      Caption = 'Scarica materiale'
      ImageIndex = 2
      OnExecute = actScaricaMatPrimaExecute
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 320
    Top = 208
  end
  object UsrDataOrderAndFilter: TfrxUserDataSet
    UserName = 'UsrDataOrderAndFilter'
    OnCheckEOF = UsrDataOrderAndFilterCheckEOF
    OnFirst = UsrDataOrderAndFilterFirst
    OnNext = UsrDataOrderAndFilterNext
    Fields.Strings = (
      'NomeSchema'
      'Lx_Panel'
      'Ly_Panel'
      'Spessore'
      'Materiale'
      'NPanels'
      'Nteste')
    OnNewGetValue = UsrDataOrderAndFilterNewGetValue
    Left = 840
    Top = 224
  end
  object frxReport1: TfrxReport
    Version = '2025.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44152.637709919000000000
    ReportOptions.LastChange = 44152.722330879630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 904
    Top = 320
    Datasets = <
      item
        DataSet = frxSchedeLav
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = UsrDataOrderAndFilter
        DataSetName = 'UsrDataOrderAndFilter'
      end>
    Variables = <>
    Style = <
      item
        Name = 'EvenRows'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Fill.BackColor = 15790320
      end>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Height = 117.165430000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBDataset1Macchina: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 11.338590000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'Macchina'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Macchina"]')
        end
        object frxDBDataset1Operatore: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 26.456710000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            'Operatore : [frxDBDataset1."Operatore"]')
        end
        object frxDBDataset1Orario_Inizio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 86.929190000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            'Dalle ore [frxDBDataset1."Orario_Inizio"]')
        end
        object frxDBDataset1Orario_fine: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 86.929190000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            'alle ore [frxDBDataset1."Orario_fine"]')
        end
        object frxDBDataset1Turno1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 56.692949999999990000
          Width = 294.803340000000000000
          Height = 26.456710000000000000
          DataField = 'Turno'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Turno"]')
        end
        object frxDBDataset1Data: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            'Data : [frxDBDataset1."Data"]')
        end
        object frxDBDataset1Lavorazione: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 56.692949999999990000
          Width = 393.071120000000000000
          Height = 26.456710000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo di lavorazione : [frxDBDataset1."Lavorazione"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = UsrDataOrderAndFilter
        DataSetName = 'UsrDataOrderAndFilter'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14342874
          Highlight.Frame.Typ = []
          ParentFont = False
        end
        object UsrDataOrderAndFilterNomeSchema: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'NomeSchema'
          DataSet = UsrDataOrderAndFilter
          DataSetName = 'UsrDataOrderAndFilter'
          Frame.Typ = []
          Memo.UTF8W = (
            '[UsrDataOrderAndFilter."NomeSchema"]')
        end
        object UsrDataOrderAndFilterLx_Panel: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 374.700990000000000000
          Top = 7.559059999999988000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSet = UsrDataOrderAndFilter
          DataSetName = 'UsrDataOrderAndFilter'
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[UsrDataOrderAndFilter."Lx_Panel"]  X [UsrDataOrderAndFilter."Ly' +
              '_Panel"]')
        end
        object UsrDataOrderAndFilterMateriale: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 220.267780000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = UsrDataOrderAndFilter
          DataSetName = 'UsrDataOrderAndFilter'
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[UsrDataOrderAndFilter."Materiale"]  [UsrDataOrderAndFilter."Spe' +
              'ssore"]')
        end
        object UsrDataOrderAndFilterNPanels: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 590.031850000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NPanels'
          DataSet = UsrDataOrderAndFilter
          DataSetName = 'UsrDataOrderAndFilter'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[UsrDataOrderAndFilter."NPanels"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 139.267780000000000000
          Top = 7.559059999999988000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataSet = UsrDataOrderAndFilter
          DataSetName = 'UsrDataOrderAndFilter'
          Frame.Typ = []
          Memo.UTF8W = (
            '( T[UsrDataOrderAndFilter."Nteste"] )')
        end
      end
    end
  end
  object frxRigheDettaglioParti: TfrxDBDataset
    UserName = 'frxDettaglioParti'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 920
    Top = 376
  end
  object frxReportDettaglioParti: TfrxReport
    Version = '2025.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44078.651445081000000000
    ReportOptions.LastChange = 44098.380977777780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    GetAlphaGeoPreview(Picture1.Name,<frxDettaglioParti."Alphaca' +
        'mFile">)  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnUserFunction = frxReportDettaglioPartiUserFunction
    Left = 1088
    Top = 344
    Datasets = <
      item
        DataSet = frxSchedeLav
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxRigheDettaglioParti
        DataSetName = 'frxDettaglioParti'
      end
      item
        DataSet = frxRigheScheda
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'EvenRows'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Fill.BackColor = 15000804
      end>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 30.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 1.889765000000001000
          Width = 272.126160000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SCHEDA DI LAVORAZIONE')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Stampato il [Date] [Time]')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 79.370130000000000000
        ParentFont = False
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object frxDBDataset1Data: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'Data'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Data"]')
        end
        object frxDBDataset1Operatore: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'Operatore'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Operatore"]')
        end
        object frxDBDataset1Macchina: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'Macchina'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Macchina"]')
        end
        object frxDBDataset1Orario_Inizio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 52.913420000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Turno :   [frxDBDataset1."Turno"]     [frxDBDataset1."Orario_Ini' +
              'zio"]  [frxDBDataset1."Orario_fine"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 79.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxRigheDettaglioParti
        DataSetName = 'frxDettaglioParti'
        RowCount = 0
        object frxDBDataset2NSchema: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDettaglioParti."Qta"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 11.338590000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheDettaglioParti
          DataSetName = 'frxDettaglioParti'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDettaglioParti."Nome"]')
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheDettaglioParti
          DataSetName = 'frxDettaglioParti'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDettaglioParti."modello"]')
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 198.425325000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheDettaglioParti
          DataSetName = 'frxDettaglioParti'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDettaglioParti."Descrizione"]')
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 11.338590000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheDettaglioParti
          DataSetName = 'frxDettaglioParti'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDettaglioParti."Materiale"] [frxDettaglioParti."Spessore"] ')
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'lavorazione'
          DataSet = frxRigheDettaglioParti
          DataSetName = 'frxDettaglioParti'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDettaglioParti."lavorazione"]')
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 11.338590000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxRigheDettaglioParti
          DataSetName = 'frxDettaglioParti'
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2  = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDettaglioParti."Nota"]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '2025.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44078.651445081000000000
    ReportOptions.LastChange = 44098.349515925900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1088
    Top = 280
    Datasets = <
      item
        DataSet = frxSchedeLav
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxRigheScheda
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'EvenRows'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Fill.BackColor = 15000804
      end>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 1.889765000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SCHEDA DI LAVORAZIONE')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        PrintOnFirstPage = False
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftTop]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Stampato il [Date] [Time]')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Height = 79.370130000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object frxDBDataset1Data: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'Data'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Data"]')
        end
        object frxDBDataset1Operatore: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'Operatore'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Operatore"]')
        end
        object frxDBDataset1Macchina: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'Macchina'
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Macchina"]')
        end
        object frxDBDataset1Orario_Inizio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 52.913420000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataSet = frxSchedeLav
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Turno :   [frxDBDataset1."Turno"]     [frxDBDataset1."Orario_Ini' +
              'zio"]  [frxDBDataset1."Orario_fine"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 79.370130000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."Modelli"'
        object frxDBDataset2PrgModels: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Modelli"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 294.803340000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxRigheScheda
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2PrgModels1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxRigheScheda
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Modelli"]')
        end
      end
    end
  end
  object fod1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoAllowMultiSelect]
    Left = 296
    Top = 376
  end
  object sr1: TcxStyleRepository
    Left = 548
    Top = 408
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clOldlace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMidnightblue
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clMidnightblue
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLightskyblue
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLightsalmon
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBurlywood
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clPeachpuff
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSaddlebrown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBurlywood
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBurlywood
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clKhaki
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWheat
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMediumaquamarine
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = 7665132
      Font.Height = -12
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Header = cxStyle18
      Styles.Inactive = cxStyle19
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      Styles.Selection = cxStyle22
      BuiltIn = True
    end
  end
  object esc1: TcxEditStyleController
    Left = 412
    Top = 216
    PixelsPerInch = 96
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 348
    Top = 432
  end
  object imgListNavigator: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 29885124
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002C744558745469746C6500507265763B446F75626C653B4172726F77
          3B536C6F773B526577696E643B44656372656173657A53DE510000066C494441
          54785EED976B7094571DC69FF7B2976CB39B0BB9A784DC0810C286B04980D48C
          16EA28756A5B1C18A254110B08954E5BC74187D201A65E3AA332F68312D32282
          E5DA912054AB226A69810698C4D2A15282400324A4819064B3D977CF79DFE3FF
          BD6C66D3D9E443BFF40B67E63767779F33F33CE7BFFF73DE5D490881CF72C8F8
          8CC7BD00D24BADEF23DE0702B05F0B581884CB254FA83FBF2428251A6CDEDB2E
          2CD91485C0D6E5A1443D6E33EAA9EAF6425B197D2968260C4057A4643A195793
          001399901CF4CD4D35C6C6DD67C58F9FA84DAA13463C84896C26350897224337
          0CE8BA0D37A1F79FD0AD1D3BE632E15AB1794FF5B3DBDFFEF373CDA734002A21
          93F944FA988AA8A699002CD3558F056D55B257E552F9B7EEEF18D55F583A3B6E
          AC2CFACE969CB2EAC62DB93919DF7AA066B272E8D845988684F8A4DE109AACB4
          FECDD255828F09C075BBDCAA2401C23117181DA6BEF5EB35F1122AB31A1FF33D
          F0F8DAA70281B41F92B17F6A6916EE8E7064FA4D6FB8A78616B8177E63C3774D
          BD2154E49F569685E19801C6F5A44DAFEADCAE00937488244DEA982B84FAED9F
          B42EF6A765BD18AACC2FAEAB2EC4A0A6E362CF30FC1E0955F7FBD1B471D7E359
          F9C59B42558553EA66DF8F2885EFEA8F21D5A380C574C47B616C05AC0002B224
          3BED09E47BE4C4065296FCA02598915FFE8B1965D98D0FD61743F2B8D075374A
          3BE3D08868388AFF5CEE47FDDCD02B9F27DDED73A32FCCA071B38F84D53BA64F
          DC3C1195398D26C3EEF602AF123756177E7353767155E396FCBCCC155F6E2891
          B3B303B835C43078278A582C867044C3A50F6F015CE0E105D3919B13C09D118E
          BBB4869A9810CE2C21C6F4E401380982166E5B3D4FFAD94A7BC7D3EA17F9E63E
          B2EEA9B48C8C0D0FD64FF107A7E7E276C4C095DB11C4184734CA70F94A2F6E75
          87D1585B84E08C5C0C4605BA8762203FFB14197173C250C60FC048F8CDD38D72
          FCD82CDB7470B13F90F5625DB0B0F873B5931135645CEED3C00D1D312D86AEEB
          FDE8BCF4316656E4E0ABCB2AC0848C1B031C8610D09D23CB0D7BF7CC3AD28202
          7370C693F700995B255FF6A33FD4B9FC393FAF2CCD6978687E09149F075D544A
          C6057432BFDD3788F7CEDF406E9A0FCB1F9905B7DF8BDE082723BB790D233180
          6D1CE3060686193455024BE80167160454D8434E492F3CD9B4680632B35271AD
          9F61A47F188A22419601C1194E9CF81FC6EA61EB9A76AB1224C90414C036654C
          60384A6B346EBD77A7BAC1C6EB016716777AAE7F6DFBFEF04FCB4BF32B6A6B26
          C3E776616084DB5DCC198ACB2761D791F328C8CBC0A81E611812F6BD6E0030CC
          921B885760F4AB20120348C99E86FAE16D4FBCF1F7E6EFCD3B73BAFDB95D7B4F
          F7B5B75FC37D2E091E151442422033802A328EB011EC7BFD2C1275DAA5D56434
          13BAF5DD3383B0CDED402CF945243FFCFD5601C0840DF55D0BFFB3655573C79B
          BF9E73FC1FE75EDEB9FB6DADF3C31E0452547868C7503DC82BCAC5F49A425CEE
          EAC5AED74EE2D2C56E04BC0A54452273DB94711B5D27CC207CFC7B40D6A21C0B
          D61D140FAD7FDD70EE69EDFAF9BFF6BEB3F3C9E72F9C3858FB9723A70F1CD8F7
          2EFABA0790719F07AACB0DC5EBC394698528AECC41FB7B57B07FEF697C7CA31F
          695ED57260CEF163866E1F4742D7C709C0633A1823341DFBDA7BC5EFDA7A7400
          3162E46ADB9ECE337BD6ACF96FDBB12F1D3AF0EF936FFCE91C5844437AAA9782
          7891929A86B2AA22944C4DC3A9E3ED387AF82CB470047EAA0804A073C2E901EA
          8FE4C730C6398430156B81D5F93BDA7AC4CAFABCF8B35BEF7CEBE577003C3AF4
          850D5FB9DA79FD858A9925A5B34225F0FB3D180A4B48F77B51EC16F8D5F6D79E
          BDDA39E769D24B82B5A5F0795D0847EC3BC230C6BB8A350E016197836495E042
          A0E5D44DB16A7E0100702708EFFCD74B7F74A5641C8BF4AF5FD979E1A36766CE
          29CB9C1A2CA2D0328E9FEBC647EFB6BC79B3237038D2FFCC724B0F956756904E
          FEE306C0EC253B50BDE4558BDD676EE1F7677AB0B3AD07BF3DD51DD7134BA712
          5E22DD9F179C5EBE706B736DD30E6DC52FDF12B397BE220014116944C6187DDB
          09D25F35F502C243587F074CA4598B5B404AC2CFAEF80C5C38BC0689FAFB8756
          C78328848BF04D2A5D503AA9EC8B1B7CE9D98B3B0E3E9903609010849A44CF06
          304070E11849958F36DBEB137EEFC1993E38BA16C9F40F8EAC4DAC88DB01C408
          A1C11913E86234003EFD901266C5117442D84CACD370127EFA2112049EE4F389
          75877BFF0DEF05F83F9F40C907D9F7C3F30000000049454E44AE426082}
        FileName = 'Images\Arrows\DoublePrev_32x32.png'
        Keywords = 'Arrows;DoublePrev'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500507265763B4172726F773B4C6566743B42
          61636B3B526577696E640B2B870F000004BE49444154785EED576B6C1455183D
          776677BBAEDD9642BB6D435B6A8B920A16A594A71503A8C1C40845134C04ABA2
          0DD447D418D488B104118D4A82F1811825688A740DD280CF474529B516B54443
          A1B15189200449D7DA96DD9DFB72B877C6514CB4BB7FF8D39B9CBD8FD9DC73BE
          F37D7367864829712E9B8173DC4604F8CE5E78BAE520DCBA90801E4B28081B52
          0AC0595797DCCBFA22D6DC5C45CEE290CEFF8727806B1687C41D4A4D28D448AD
          09AD4E110B483CB1742A01401C57DD31072000C8613B208526CBF09B885B0C3A
          6009E1440C578480225EB74C11BBE9F4D53DDE3429A7A0643D21E6FCE7EA6706
          01D09404702E209DBE6E51A50EC40BC9DB494A14070C376273C1ED8D91F2C935
          8DF9919C5B6655159B3B3FEA71F76729D500E3DA011F218A8DA81F2DC21552E4
          27AE1EF3929A85A1D98B56346465653F34ABAA243CA13C17439600655CB99272
          1172A61DA084035EB48AAF28E01103F0DDBA6E676D383B77ED948985A5D59716
          21C1257E8959C8CC30412DEE199792034A8084410CE580244089B6FA2FBB6F7C
          7073654EE1F8672BC6476AE64C2B452014C0A9418A24136042820BA1F651E4A9
          3A408550856868F331CECBB36FDEB2D579A5936A1A0B0B46D75D3DBBCCC88F64
          A12FCEF0FB0005E3C286747A028BF2F40430CA21B9C4863B6790F5B7E988274C
          5B109A7EDDCA86EC9CD1ABAE9C3E2E5C59918F3F1212C7072C70A10B960945AE
          21CCF40550CAF1D23D358613B57FC9EA686D6656EEDAEAC9634B2FAF2E019506
          8EF533755B7221216C30A1A3A75C80DB7D22C1C0284BAF066C7265F99287DFAC
          F68723CF5C5C1699356FE60508848338799A81710E0928624F8026B69840FF10
          45D24740BD1A707B391C012E8CF3468D6DBF69410546E766E2488C221E1B84DF
          6F20E02320E40C002E3429A51243098A7892A9792033009A560A3CC8BE134717
          BFBC7DF0C9F16585174DBDAC18A1801FFDA72906A43ED70500C105B880EB809B
          0A054F00483A4F43DEB261E9BB1F6FBA6BC6FE8EAEFBB76EEB38D5D57504E7FB
          09327C50515A94EB9E71957B2A6C68722D887A07514A02AE7D60A774F245074E
          1D19FC6CF31D9B0E7CF0E294D64FBFD9B8E58DB6E40F3DC7911534E133092CA6
          4929D3E05C9F019479E740CA02920986B92BA372FEDD6F0BE71C4F1EFDFEC393
          FBB62C7FB47B6F74EAFBBB3A9AB76FEBC06FC762C80EFA1403756E3F2A389890
          0A9CA72980595CE58F2639DEEA3A295FEF3CC1015800E23F7736F5EE6FAAAF3F
          DCF9C935EF347FDEBEBBE56B24074F231C3495679CD970D220B848AF062CC694
          00CBB2D4DC34095EEB3C2101B842867ABFD8B8AFAB79C5F5DD5FB5D545B7B6FE
          D8DE7A1026A708050D40EA47B710693A40930CD4A2B02C0E83003E02B5E9E62F
          7F756B8301480018E8DDF3D48E43EF3D72C581B6F6C7766CDDD377F8DB9F100A
          1048092520FDA31852D703D56F3B06218AF585BD472513C0BD738A84E306A7F1
          18ED6D5DF37CB8A0323A18BBE1BE9EEF8AEA264DBB30A0540002FFD3FEF55D50
          B9F8554DEFAC4BB7D78B7AE00CBB77ADF8FBE3D90F2034A66C6ED998F2AB5685
          46E5D51E882ECF03D00F8049BB0D4BC0C485AF38441EA96ADED881373FB4BB41
          0BD18E0614748B0348EA38E4F08EE2EE967AA4DC3C65D4BD759D390720537827
          4C1F6791B07FACFF471BF9361C11F0278B42E8FBE4B6A6ED0000000049454E44
          AE426082}
        FileName = 'Images\Arrows\Prev_32x32.png'
        Keywords = 'Arrows;Prev'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001B744558745469746C65004E6578743B506C61793B4172726F773B52
          6967687416E40EAE0000047449444154785EED576D6855651CFF3DE7DEED6ECE
          0D448415B694BD6956732013665114984145D6B2A8D0308A28933E8444A14E96
          424E6F19E4BEB495D207B5316B6856DEB9686D6D6BB3BDE972EDFDD5ED6ECBDB
          DDDB39E779E93ECF39072F83053B057DC87BF9F370CEF3E1F7F2FF3DFF730E11
          42E0BFFC6900FEDF046E11F02EB44108C1C1B256BCF7D43D445E466D89FC53BF
          0AC10121FF428073006A8D1404C0012EAC3D21EF09EBFAD86BB90020EF2F4C20
          BA1CF0C2AFDA587846FF3E3C39BEE7C35D8F5CC97F2E5B41BE7BA24128123620
          574C006E832A709B84108B7320BA344A39B6DC97B6B9A629EEE13D2535257D57
          1AF69F3EBA7BFCD08E0D1291F7EB5C28B54A9D2C61ADB0DC395AFC3384E0AE33
          40248195C949787AF31ACF0339A9AFA467E55E7BE3E3C0DBD90F3D932045A4F8
          34EDCE380FB1D1ED45812BF5A6C922F50F08989429357F1A40DAEA1578F1C9AC
          C49CF5A987EECF7BAB79C7FB65DB00F8249155F15E6DF5122F91FE3B2D610A5C
          952B02C422C055B028E3081B1CD30CC8C9BE03DBB766ADBA7B5DC6173B0F0702
          4FEC2EDAE010494D8CD132126309A34229970E9A94BBCE00A12657965215264B
          DD9C0110CD8B2D0F66206B4D72EE77554B7F7A767FF9C9CE5F2E1C68FCA66814
          005DB73C8E0110797B2F08CE857B02066532D94A45747F19E708CF52C426C6E3
          F9ADF76ACD6DD75FF2F912F29233371D69F8DA5F34DA7D390C8096163CAA88C8
          7245C034381813304CE798D90484506D99D13926C202C929CBB17DE5B2A5D5F5
          7DF95E5FFECED058FF811F4A76950198036042351262310488E300D519425326
          3C1E0242887281D9AEC8FD599D63C4A08A5CFADADB919EB622A5AA7659B1F7CD
          D3AFDE18E978A7A1746F2D00C306108B7240D7290C263035471530ECC9C6B895
          0BC69413AACC48750729623D041B37A52333F3B68DE5E73C9500126D17C4E243
          481974A9D46437330080330EC601CA558BAC950BC4C77A647271A9A21D5D1D83
          9DD39383FB0030D7193074068372E8F234E0A6035CAA9765BB11E3D19010035C
          6D1B405B53CF44283850F8DBC52327F4A960D851EF2E038C61D6B07A2D006BB6
          47CD7C8F469014E78DA81DC6E5BA4EE34670E4D3BEC653FEC9DEDA2000C309A0
          EB632887C91C532E44CD79C00320C1E7C5D8C81F08D474E0FAE050E95847C5C1
          E196B3BD00F4E8E4AFDF562C9ACEBCEC761031E886CA8142D68804F660263C83
          8B816BE8EB1AAC090DB716F4541FAF778E9CD3737FE580F8FC936F655EDC3F0D
          4D4A31CBAC91BAC4A781981C753F76A0BDA5B76B7ABCB3E0F7CA0FCEDBC07A74
          D8FC97FA052180607C5EFA1699016A0A15C084580DED4DBD6869E89E989A1CF0
          F7541DFBCC989998B2FB4C9D3E1F89004B97344222656505C2FD28168C513437
          F5A3BEBAC3088D0D158FB47EE90F0D35066DC5D4568DC28A3E954E8FA24D1430
          85C4E6800B07886DA529A840A0BCFACC644FD5E1D1AB67BBE78FD6BB1E2F52FA
          4A3E3AEFD8365F832B02B001F4BA932F24D9846874C0D63E765C38EF780B8328
          7057041CDA0E20E63D4C44FBB9D7FFE5B7E28549B0BF97E4BE6E7D1BDE22F017
          8FBF08C63BAD11CF0000000049454E44AE426082}
        FileName = 'Images\Arrows\Next_32x32.png'
        Keywords = 'Arrows;Next'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002C744558745469746C65004E6578743B446F75626C653B4172726F77
          3B466173743B526577696E643B496E637265617365C977401F0000062B494441
          54785EED576B6C14651B3D73D94B77BBAD180AC556527AE122975A24450AD46A
          02482284100A0A8D2418BFA8585044BF2F31208A9808640DC825A22012121109
          4AC12BA58DF46B2985C296DEA0976D4B97DEB65D5B77BBEDEECECCEB3B6F665B
          2DBB9AF0C71F329993F97126CF397B9E333BBB1C2104FFE4C153FCBB0DDC3720
          06098EE3B0E37425DE5E3E9D03A0021AC8B613D70951000282F756CFBC8BFFEF
          9132A210CAAA5008E84941B0E7A50C26427984E3D9531034A00973BBBEAD92DD
          5EDFCF6E57F75B1FBDBAA81A8042C16EFC2B7EE3C112A26822F482FDB9F3D8EC
          4D872E3151263E820FB5025E92143C3D2F7961DCF8F8F2B78E941C58F5C6DEB1
          5A5A820A955F323F6961FCF8B83FF17B5ECE103E7E652E17A07C4092103C36AC
          9E850D6B662137875E9F7D0C1A1FB6039C2A101F1B85E50B270B4FA427BD9892
          9A716BFDDEFCCD3332979901E8A22344C48DB1207BE114E1C9F4C4213EEDA96C
          95173F792D933FF47AD6D09A085141A028802253F1804CA18437109064B66F77
          00489E10839C65A996F447933EC87AF64DDB9AAD5F66278E31D20112BAFA6524
          8C1F8DB54B532DB3293F7FC56B156BDF3FBD12808142D4E6736AECB21A3F9D2B
          29D00CC85A09478853B008414F5926F0488411E9690F63EAC49884C24BD1470B
          AEB7C36C318298CDF0093AF00287C7A6C7616AF2E884C2D2E6E3EB76E697743B
          EA37E7ED7DD906404A8AD2AB6AA4AAC34B6442A026AC68DD1343AE20C06E8024
          2B205A6307FD00CF8B589C35116D9DBFE14C510322CD22D266C4C16436A27F40
          8428F058909982195362337E2A32FF7FD53B79C71AAEFCF06EF9F7073B0148D3
          624DCCC88A2D3F10456106463E052C32036DB377E3F3E968F3488C63BB63312A
          D414815EE01065E05051DD81E2B216244E88C6E489B110F5221408301B443C10
          21A0B2B613BF94367B7A9CEDBBAF9EB11EECB45F73039028981115A13BE057A0
          D014FC7781B0F2F4790368EAF1631CDD7F4EF64C28128FD367AB505DED80C7ED
          81B3D78B5B9D5E8C8A7D0039CBD322D3674DDBF6F8CA6D57B2D6ED7B0E809942
          1FEC47C80EF825D652F4F4F920F03C0491637E1510D68B20EFFC55865AD8A449
          0F2129310645A57654D67461EAB458443F380A2E4E00019032E521A424C78C2F
          2A1D7558CCFDEA3FBDED75FFBB7A6A4B29007FC80EF87C12FC5468908A102233
          F16093250A5966FD600850D8BD125BCBECB929E8EDF620EF9C0D8B97A68213F5
          ACF576E7C0103F69D2B8D979E7844200168A40E8124A327C921AB93CFC0C833D
          C3A0271DAA3013ECAA1044E805B5B928B8508BAE0E17A6A7C652B39CEA9AF2A0
          BC38C437D6391AFA5D8EADC11E8434E0F7C93466053E350190A104143690424B
          4327F030EB809AAA56D4D53A9040CB38273309A231020ACFD3540444EA39C657
          D99A7AFA9CADBB6E9EDFFD85CFE37403085090D01D90650CF815B66B565585D9
          6006E80981E7106514E9A76983ED8A1D31638D98333F117A9309BCA0834EAF83
          D9A0839DF2D7CA1AFDBDCEF6CF5ACA4F585DCDA54E007E4D5C09FB3DA0166C50
          6629B0F8D91A0008007BC4BADA7F457E491DF40682B439F1305B2C10747AE844
          1166A31ECE8E5E145CAA4787E3CEA9AEBA0B3BDA6E7CD30CC0372C0CF2E8CAC3
          C476F285705F44327C7ED603A6CC73AAB000AFDB8BF3F9B71070BB317FDE04F4
          EB4D10750608A20E96081DBC9E01E41756A3A5D151D2D756B9BDA9F840198041
          26ACEDDC5AD84A8EEEFF91F5295C02BCFAA61A505B4E0D980C3C8D44C1E58B75
          A8BDD164EFBB63B36ECA5DBDCFF8F058DC76C9309944CA139415DD446D654B63
          7F77C3F6FAC20FBFD3847D41610A580B6E138E0308152740F877811420AC8066
          3D8F5A5B336E5CB5F7785CAD56FB45EBF1C0402F7F3173D1BE050909888C9070
          53E5CB9B18DF54B4E773BFB7C7A3ED590AEE7937155653E4398E82750908FF2E
          0091650915B6DB282BAEF3F775DD39DC5EF9B5B5EF4EB9531B686AEDF2A0B2C2
          81B292FA91BC4F139683B32820B06A73AA30230951801009705A54012211E4E7
          159F743515EDECACF9C6AEC52969F7F04402F2CF968CE0870BF6C892FD4CB8E6
          EC7A26F2A9F5DCC8CF18D200B401BECBC7D6446962D25081868FC1503C137E46
          1566F18ED023A1C443BE0D390DFC90A161BBE46FF97B38C430D9C8A12D87E7EF
          15F7FF1BDE37F03BBFFFD8380809D3C70000000049454E44AE426082}
        FileName = 'Images\Arrows\DoubleNext_32x32.png'
        Keywords = 'Arrows;DoubleNext'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000091349444154785EC597
          6950545716C72F8B46D151474D3431EEA3A351A3E306384649D4382A91C50430
          C8441425A0B8B3AF028ADA54005101111A9C068128342E40836C02DAB23468AB
          C8DEA06C0DCD4E3774379E39AF7DCFE9E2CBD4D45815AA7E75EF8577CEF99FE5
          5DEA1100F843F9C305FC3F3F1AA31965F0519DAB07D5A4D11A0DF3B7FF498C5F
          5239F1FB1DC1D5176182F82494C4BBC43C4E5473A8793A8C37C723F6F1714F4E
          31CF9B535CE61557A2F4E494283DFEF554E07E93CF73892A3871E437EE5C3531
          1A6EB14F896B0C059FB8B2F9C485FD8438472351D4FA9810DF440191BD7BF701
          CAD09D5DB4FB667E0D44F25E814368A611E5F05060C631BF448132E569033C6B
          EA82FACE01908E8C50E0BE1F7F27813B4FEAC137BE54E918591075D03F6E3623
          6470E41D516780E674642121DEB74A89140F882AFB1F8F058CF7892FA97BD323
          0351F7209C0CCFAFFBBB89DD04330FCE92331179F2AE612534CB95201A5242A5
          4C012FA40AA8C6953AB7C947A003CF778B45E016FD64E06850DA6EF43906D11C
          5062D0519C087B440896F0437044D325BAC8FD415913B463908621052414D4C0
          41569A073A196BE6798715975F0DD518E4F980029E0DC8DFD32F870A9A677D72
          689229E1554B1F78C53E8523C13C4746449FE21D51C7E14A3E21D8235539A8E0
          76812973CF270906C498D1EB410554A0B3C6FE6138793577D0F048C8023D6387
          E9163EC92D5558997A1421A2A9C5672B514879CF309422253D4320EC1B863A89
          143C629E286D0292CD68111A4CF05EC508B10FC92138147C267B6DC7C8C23481
          A80B4428A0B41B9DA1A3E72822FF552B587827A7A383715BEDAE9B183B2580A9
          4B02E81DB80E7ABF448089F32D3817FF044A9B7B5522F89221E077CAA0AC6B08
          044DDD384779BDA6274217D233A14105EF416C7F7B4898E05A0E213CE388F497
          D03A3C02020CCC97C86886A006CBED135304BB8E45995222D6595E76586BC1DA
          3673E9B79328D6FC747EBBAEE5E5886F6D6F0CC7E4544209062F144BA1A05D0A
          CFD00727B71A0E5E78C046DB4F10CD6EF908A1B0B9944954A5DFB4C77E024E6E
          7D0D4EF60B2C5D111AABE89051603652A878DB0D468E09F5B3577C37992EA796
          1ADA94F355465E1B36FC12DE12935D098FD13EB76510725B0740281E84A32139
          CA9DB6AC25F4B31A926125D91F90815B34B60FE279DE2EAA8306EC25A53ABF75
          F03FB4BD4780995CBE530A9B6DC2BDA88164DE7306FA3C76E56E37BD2DB691F2
          426C65F6DB7EC86CEA87A2B601B8765F083F7BDDF6A16D353A8794E478682E21
          56DE715FE1B4CA9A7088F81D52788846D96F07E02192DD8C50677AFFAA4B0666
          2E09F255BBDD56309930E5645A898CD3DF171C791167A2102BF0A0A10F45F441
          AAE02DECF5E66244321ED16C4701478373080E42567AD68B3610E2C094A18032
          318255C868EC43FAA114CF0C6548CA935A586711924165C29492A90023608DE9
          D97F98BB24AAFCA5D6F4A8C8AEEB0273AFD456B4F9935A0B3589B17312ECC6A9
          363C1D0F3B4FC4830D2B13F858FA7B75BD70AFBE57B5C75EC1C65FC241DFEA1A
          E85A5E81B5162130AA0D5AF480E9209326CFF8CB175B6CA3E1392675FB751724
          5576412E2663E6C995A3CDA7C86464225D0D54A3666CE89C325CD93B0C2955DD
          9052DD0D8FB0059480493316CDA4D5EBD0C1B4D432FF64FFB974784F1AEC3F9F
          063F7972A10205DC7A218138A104D26A7BC0D43519ACCF67C081008A743888AB
          7AF9B4119D6D276FB71463E9125F4A20F19504B21A7AA909869DF657B651E545
          B499CC5BA50AC208303CC1E1F1CADF408B5401CD34027C1D632B3A805DDE015C
          AC82105B5887C955E21D139F5F05AB4C5999C4E07014A9EE19661C8DDB6C1FFF
          282CB70E420B5B20AAAC1D92D13084FB0CF638DF8AA004329963008230098C59
          67E2F237CBB35CC5FDEA2E600BC4108DB651A562B851DA0E9125ED10FAB805FC
          788DE079BF01021F36C126EB70C53CBD036BC837D611A4AA7B98713456FF60B4
          8F4358A1CAD83FB31102F3DEC23DA118FEE97B5FBED5FAD2064A242382813E4F
          D8B43FF4A26F7C31702AC410F1B40DC2F8AD1054D0ACF2E3F9A001DC3138B5B7
          F4BF0F8BB7BAB2281BA26B194A2ABB871801DA5F197A2E3770F85D19572E86B3
          3C11F866882028AF19D839B560E69EDC6A60E5BF9132A487509B82DEEB4CF962
          E90C039B1BA2C8A22608C86A5205F5A003BBDDAB070F5CDD6FBF84A53BFC1A75
          A62E98A1B25B63164C5E750D51306D18BFCAEA46ECF1483EB072DE80575A0378
          A78920024B18935B0B963E77E546A739D7BFB709FE010DA6506CB509DA61E8C0
          3E81FBA95FEF72DF67E59B0ABFE5BD010F0CEA86B8DCAD07E7D43AF0C364B6D8
          DE80D9EB6DF731F7015969C22242C910798130FD9C67706CC91A6BCE008B574B
          0547470D2A67D7702EB25E4B201867E2308B8715E182991B170E5DCC80431778
          A06B1E4039FE6CB56960B6EF9DE7D8EFF7819DB8B5E076B70E0E5F2D80B91B9D
          B2E9D7708C2ADE32C300F2BC73089191E712D987615C6CC4B2DC609704E7D21B
          548EDC300B57C40705C59688E1115E54E56219083B65AA8B2BB3AA13BE77E0BC
          F96CA1DEC22F57EDD13338705D7AF1A1089C52EAC0311905706BE0EB1F02A4D3
          161BE9D273A4395BDF999025DBFD494587EC3D288299054467917188BBDEAF49
          E098F012BC1F88C005B371E632D482333AA770C2B33F96D7FB6631E8595EBE8A
          B633177DE776E1606086AAEFAE686778FA16CC5CFD6B00759730D7F8E7EBCF10
          B2ED683C29C7E002A49C464DC484793BCF5B2DB3BC39687E311F3C536BC18B76
          E88241CFA4D4C219CCCE891675ED5133FC702A49B168938DFEC4E9F3672FDDE1
          DF78F65E151C6597C02CDD538D6327CEFA9CBEC4348ADBA464C66A1C9B2D761C
          22104B3F5046A32662FC8CF536CB16985C8B5F6EC551EE0DC88223D1A5702A4E
          08DE28C60BA7FC2447087691A560E6CF834D8762956BCC825CD1EECFB3D6D95A
          ED381603BA7B4360EA929FADA8849857988F023E5DE940C8E6C3379158F2578B
          18B2D81C3163934514E66C32EA9E9FF8E95AEBE5737705BACF330ECF9B6F725D
          38FF4736CCDBC386B9C611C2394661795F6EBFE4316DB5F5723AD03864F21C7D
          A7B4E9CB0FF3703F8919BC692BECC9B41547C8545CFFEB8FFA7F3AE67DA7FB38
          05994A41EF27A9DD0F5A1474401D0A7AAFF931BE961831DAEAA87F8CA833FA6B
          E9A3F1D1BE0B01E00FE5DFFF3B6B594FDCD6290000000049454E44AE426082}
        FileName = 'Images\Actions\Refresh_32x32.png'
        Keywords = 'Actions;Refresh'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000029744558745469746C650052656D6F76653B44656C6574653B426172
          733B526962626F6E3B5374616E646172643B635648300000075549444154785E
          CD977B50145716C61B22212BC4C148802C0803828F1194B782E2A0C843015101
          5D175913A3A220441D501010D441E4A988318115105FA408A6203E8201411E22
          AE2042A2154908E003301044E34A2A1BFADB7B879ED801DB72F3CFA6AB7E75BB
          EED439DF77CFDC7BBA9B01F07FE5CF6140E05221A87290FBFFE952191D3F3A87
          D28090B01A419D434DC08890F86B84D7097FE150E7E654040C8C0A56AF5AB932
          AC2369FF604752E260A5BFFF6632F78632C9CDD5AB194AD3EA8061021428E3C7
          50D132DFE5A16D0909836D72F960E9D2A55BC9DC58EE371521034AF1372EAFF0
          8BBC7B3815FFB9DFACA0E35032CA7D7D6534B1D2C450CFD78C826ECA577CF1B1
          177C7CB6B51F48C42F1D8DF8A5BD01DF93FB0B4B7CA2499C86D2849081D72B7C
          7DB77512F19F6FD5E271692106CE9EC2CFCD9568CF4846A9CFEF57F26B570BF3
          EB8316BEB8C6E75EDEB2B6F4443CBBFE25FA4E7C88DEEC143CAD2E465BDA3E9C
          F3F48AE02AA9FA2203AAB3C462CDD6F8F8C1678DE5182839894745B90AFA8B72
          F0ACA10C34F1594F6F197F257CF1E2C59EB2EF52E4F8777D297AF332D0732411
          0F0F27A03B632F06BE388DDB51D183D3F5F4445C15471978CDD36CB256DDBA0D
          8FFB8AF2F16341D6734E7F8CBE531F91C41740058A172DA6263469C53834CFB8
          2F0A6F4DDA8BA757CEA3F7683ABA33A9F01E741F8847576A2CEE2545A376EDFA
          A75243A30942065409EA472CACDEAD0A0C18EA3D9689DE7C8E6387F0431E2503
          3FD594A075FF1E7CEAEA114E62B42885AEEE11771277E3A7EA123CCC4A41D781
          DD78901E870744F87ED24EDCDD17894B3E5E43072533DFE7F691EACB36E1D883
          D3CC3756AE5A39D4939D8A87FF4CC3C36C4A2A7AB2081F27E3C9A5227C238FC3
          89F92E51279C5DA26ECB77E149E567E8FE30110FD276E15E720CEEED27C2093B
          D0B9371C173D3D86924CA786108D37096A429B90BF993493274D092E5BBE6CA8
          EBF03E45623A7691B2761D2264C8F188FCA7B7E2A3150C9415D2395A66C56AEF
          CAB7A3734F383AE2B6E2BCEB42562E36A5C7781C5FFC850672CC244A136AD4ED
          3E23D3E02FBCBD86EEA5C7E33E252D0EF753C90A538657F963F131F49F3B49E6
          E2C84AB7A3632F118DDF867622DC161D861267291BF757A3502220E2F68AEA4B
          0D648B27334F2ACFF04D8C8B3710879CF3701FEA4C8CC25D422759616742243A
          E45430021DBB6568A7A2B15BF07D4C18110EC5773B36A1688E231BF5B67E18DD
          237CF1C3FAC6C29DF088810933F065013370B1E07726A275F543CF38CC62EF84
          04E2DB8820B46DDF84B6A810B429052336A275EBFBB813B606B7D7F9E313CB99
          6CC45BBA1F8C14EF2BC9630EEA1A081B38F48E21D37FEE38219FE93F9BFFDBC9
          2068CBB4F56485D6566CCB4A0F7C4559E18E16FF619AFDDDD0E2E786663F579C
          924C63378B26D086A3C36B3A2ABD85590C256D829EB081F3CEAE4CDF674799BE
          3347F90F259AE4ED0C2BFB5D756B56E3EBC0A5B8B9DC9563219A96B9A069B90B
          372E44F5DFFC916A61134F627479474EA5E764264349D1D21136F0F95C17E687
          82237C715ABEF19996F63BAFAE5F8B8EA42834AFF2C48DA50B70C387321F8D4B
          E6E386B73319A568F096E2DB9DC1A85913887473DB18123B81A0AE34D19593CA
          7C6A3B57D840B183335F9C06BE7570866D74ED7BFF40BB3C1C4D2B3CD0E02525
          CC2338A1C1D309D73DE7E1FA62A7E72C9A8B6FC2D7A32A6015522456B1D404FF
          49FA89B5A3A08151E2E9E6D631D58101688BDB82265F57FC8B2457E03107D728
          EE14470E075C737340BDDB6CD4BBCEC6ADD035A858E18FC4293376D13DC49910
          3A86A3C553255631A41BA29594B491949C2427D0E40E0A81AB0B67236F92314B
          A95B300B575DEC87596047463BD491B1256815CA962D83DCD43C8EEE239E09E1
          C731154F9E6A1973C9CF9794720329B5334DAC4491F88AB31DF24CC4EC060D51
          2CE598D924B6566A4BE66D08D6B822B546ED3C1B82356EBEE78B522F2FEC3199
          AE34A13ED200FF39F066829985ECA2F712DCFEE05D5C5BE444C48613D74A4972
          420D499C6B6CC486686AED2031FA94604DADC83CD3496CF55C4BD4FCC64C05D5
          7366A0F1EFDE38EBE28658F1D4EDB42B2A1FE5230DA811B44FDB48079A830250
          4FFEE35A272BD428B0A4906496C8111B2AC57508633974A8895C1363F6B28305
          AA08976753CC7179D630F5BEEEC8B7707CCC1D4F354103C72DE7F4D62D9612B1
          61F7D58E140BD0C4394613592A440579AF67147AAFB3495314956B2C662BEC25
          A8B423D84FC3F0FD3494DB99235762DF4763850CD044E3220D2707155AD9B355
          0ED4F97454122A08470D0D468AF35FB755B939DD8D1AA29DB96223B6DC660A2E
          112AACC9483839C582DDAA671C4CDBB3F2480A6D42ED087DD32D0516566C998D
          04E5B61264E9EBBF50BC699D3FD3B4D68F1961428F9AC89E3891BD3873324A67
          98E1B8D974364C472CE3CAAF2EF842C26FBDB2774C367E24B6E823F407698836
          8FECED49226D86CFC84AACD71085654E943CCA3490F485EA18858C6CCDAFD288
          443488438BCE097C9C08C58F27E8718CE777C357FD321AC37BE91CF312F13F1A
          FF0ADF867C84AF3F1AFFE7F83AFE2FD99CCA83727FB1B90000000049454E44AE
          426082}
        FileName = 'Images\Edit\Delete_32x32.png'
        Keywords = 'Edit;Delete'
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000051494441545809636018
          05A321301A02A321301A02A32130D24380113D00E6A86FF88F2E464D7ECACD00
          143B99A8693839660DB80358305DCD188629362A321A02A321301A02A321301A
          02A32140BB1000004E7804610465506E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA7930000008F494441545809636018
          05233D0418C90D8039EA1BFE23F43286A5DCF45F8DE013CF62225E296D548E3A
          6034044643603404304A42D4128EDA850F6689391A052C9881CC188629864DE4
          FF2AB82823433FC37FC6E3703E0EC6FFBF7F30D460A4011C7A318451D30A66DC
          6268C021309A0646436034044643004B4988A3C4C010469498D84A380CE5A302
          A3218023040079D81B5EEE436CA50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000265494441545809ED56DF
          6B1341109EBDD53426354AD507FD0B7C9024122A4811228D86427DF06FD5AA95
          8801F5C51250F1CFB04A1B2EA297CD3ADF269BBB9CB797DB7B101F72CCEC8F99
          6F66BE9DDB2321DA3C9B0EFCCF1D38EBDFDFF9D16D5F2DCB11B1C891171FB89C
          E1A3BD5B329A7DB8282BC3F36EE7BA0BE7B22306B1C811F63B375DB84C02E383
          BB37F42C7A4942DFE6C05620E50B9C86D7850458C430B8851C7A2A5F2127EFFF
          924C02DB17829091A7AC5676711A9CCA1A5C3330C0B27F97D5CAE922A7DD2F67
          B15CA516FA49A7164EE473363F64B5F279A654AF311C7DB386E48CE27CF201DB
          5AAC56DED66BEA503C1B4DAC21398BE426BDF62151A638EAE51200C0498268BF
          F1E6A3794D658B23FF5A0200CD49044744A24BF1F36946D423A5846FDBE3149C
          31B9C95BEBC7CD7AA8B6F84EC424B4A6AF02D758D39D446CEE3B4FE0CCB25007
          0C92872C126C4E8A5771047A114000484CA65BC75A883DECAD6AA2F7DB35D577
          DD768B4BCF6860DA96BB1FAB6A958B5F4E83F8248DF1445E4ADBD7EDBD089CEF
          DFBBC601F8CE9B19899BF00193E1739A98B8D3B7E240621460639B7521FADD7C
          211ECC67339AAFC37EA2C6923370CE1CEFC2E5283EACCB5F0750223DA4F86973
          D2016262937BB5B6034884849C227972143F14AFBF846C275CCCF427CAF6429D
          C82550A438173252968493804F71C38087322432099429CEF58DF892E0D76BE2
          5606518960875AFB49A4A2A7F69D5B63D60C0CB0EC3B61B522F09B6137C939B3
          03007CEF75AE54481E93D63FF9A62F2F1C7C45D474625A3DA280AABF49F57706
          A3B322712B18FCA1C4DFAB15A3C706B1C8E111B2816E3AF0EF3BF007F591196B
          B4EABE1F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA79300000220494441545809ED54BF
          4FDB4014BE17849058A884CAC08610126AC5C48A54828DED805495A9122A0406
          08BFFF08C66EA402C1826D26BAB41D294A96D2959909A18E95406A3750E21CDF
          3B8895C4260D4ED2C9D1BB977B3FEE7DEFBE3B9F10F12F6620662066E03F31A0
          B9564673CDED5AB88E5A473B6CDD319651771FE3CDC0BBC1E2D5B7CB33CC9524
          946EA3D21C6B4B0A6270028C47525CE2DF970E7FD686896E1B9B82C40E4A2B70
          21E587FCE2E9316C5F38E01BAD9C30B824AA0BCE786D6160C2353784A02C0078
          835ED8CE1153C2096AD22AC5E038E786C019B3A50D688EB98EA29F30B86EDD9D
          23470927AA49B32A0A3863063E43FDC81A336C6398838D0ECD35D2C82DD38EAF
          8ED66B6F3BE2A152D5806E5BE3B224BF17897EE8F6D448E88A1A275EB83521C9
          869B6B31EDB3F9F4C901EC868417F989A5845C82D18D737929C93B99B4278760
          3F2913B639871B1E69E7E5A2550DFCBDBD5E10427E150FBFFE12257E261DF3F5
          8359ADF1BCAE1209175EFE943D34F2AC9D639D92AA06CE33E7853F7737EF2B9A
          E843425E3B4CBD52D98F8AC171D0BB300983C1032F1CFC0D091708248E1E8C76
          BEE8EAFD8CC764E631F89B125E32379FBB00ED2BD8F91EFCBCB62970D4C04BCD
          3A64A4B2A9AE428FF7454A9A526112BFD05016547F84CDB483045A7DCE85C3BA
          8050C053E10861A21C6D7AE7E542751BE0A490265A06CEF5FFD900275534F116
          4710F9C271ADC883EF84EE98D3910BC40B63069E60E01E96E5C4C495ECDE8C00
          00000049454E44AE426082}
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = PrintGrid1
    Version = 0
    Left = 684
    Top = 344
    PixelsPerInch = 96
    object PrintGrid1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45481.453518819440000000
      TimeFormat = 0
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object WebUpdate1: TWebUpdate
    Agent = 'TWebUpdate'
    DateFormat = 'dd/mm/yyyy'
    DateSeparator = '/'
    Logging = True
    LogFileName = 'WUPDATE.LOG'
    PostUpdateInfo.Enabled = False
    Signature = 'WebUpdate'
    TempDirectory = '.'
    TimeFormat = 'hh:nn'
    TimeSeparator = ':'
    UpdateType = fileUpdate
    URL = 
      '\\192.168.10.166\Apps_AutoUpdate\Schede Lavorazioni\SchedeLavora' +
      'zioni.INF'
    Version = '2.6.5.1'
    Left = 736
    Top = 264
  end
end
