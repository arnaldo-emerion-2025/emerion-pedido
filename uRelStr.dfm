object frmRelStr: TfrmRelStr
  Left = 242
  Top = 244
  BorderStyle = bsSingle
  Caption = 'frmRelStr'
  ClientHeight = 417
  ClientWidth = 925
  Color = 16577773
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 3
    Top = 9
    Width = 36
    Height = 13
    Caption = 'Grupo: '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 4
    Top = 56
    Width = 38
    Height = 13
    Caption = 'Origem:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 510
    Top = 81
    Width = 62
    Height = 13
    Caption = 'Código NCM:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 3
    Top = 81
    Width = 71
    Height = 13
    Caption = 'Código Antigo:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 4
    Top = 32
    Width = 50
    Height = 13
    Caption = 'Descrição:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 195
    Top = 81
    Width = 39
    Height = 13
    Caption = 'ID Atual'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 355
    Top = 81
    Width = 39
    Height = 13
    Caption = 'ID Novo'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 3
    Top = 105
    Width = 61
    Height = 13
    Caption = 'Localização: '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 195
    Top = 9
    Width = 57
    Height = 13
    Caption = 'Sub Grupo: '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 387
    Top = 9
    Width = 29
    Height = 13
    Caption = 'Item: '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 208
    Top = 105
    Width = 29
    Height = 13
    Caption = 'CEST:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edCodGru: TdxColorEdit
    Left = 78
    Top = 5
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 0
    OnExit = edCodGruExit
    OnKeyDown = edCodGruKeyDown
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edCodSt1: TdxColorPickEdit
    Left = 78
    Top = 53
    Width = 619
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 4
    HideSelection = False
    DropDownListStyle = True
    Items.Strings = (
      ''
      '0 - NACIONAL, EXCETO AS INDICADAS NOS CODIGOS 3, 4, 5 E 8'
      
        '1 - ESTRANGEIRA - IMPORTACAO DIRETA, EXCETO A INDICADA NO CODIGO' +
        ' 6'
      
        '2 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO, EXCETO A INDICAD' +
        'A NO CODIGO 7'
      
        '3 - NACIONAL, MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPER' +
        'IOR A 40% (QUARENTA POR CENTO) E INFERIOR OU IGUAL A 70% (SETENT' +
        'A POR CENTO)'
      
        '4 - NACIONAL, CUJA PRODUCAO TENHA SIDO FEITA EM CONFORMIDADE COM' +
        ' OS PROCESSOS PRODUTIVOS BASICOS DE QUE TRATAM O DECRETO-LEI No ' +
        '288/67, E AS LEIS NoS 8.248/91, 8.387/91, 10.176/01 E 11.484/07'
      
        '5 - NACIONAL, MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO INFER' +
        'IOR OU IGUAL A 40% (QUARENTA POR CENTO)'
      
        '6 - ESTRANGEIRA - IMPORTACAO DIRETA, SEM SIMILAR NACIONAL, CONST' +
        'ANTE EM LISTA DE RESOLUCAO CAMEX E GAS NATURAL'
      
        '7 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO, SEM SIMILAR NACI' +
        'ONAL, CONSTANTE EM LISTA DE RESOLUCAO CAMEX E GAS NATURAL'
      
        '8 - NACIONAL, MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPER' +
        'IOR A 70% (SETENTA POR CENTO) ')
    CorDeFoco = clInfoBk
  end
  object edCodNcm: TdxColorEdit
    Left = 585
    Top = 77
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 8
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edCodAnt: TdxColorEdit
    Left = 78
    Top = 77
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 5
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object Button1: TButton
    Left = 704
    Top = 8
    Width = 169
    Height = 49
    Caption = 'Selecionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Pitch = fpFixed
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 398
    Width = 925
    Height = 19
    Panels = <
      item
        Width = 700
      end
      item
        Text = 'Qtd. de Registros:'
        Width = 50
      end>
    SimplePanel = False
  end
  object btnXls: TButton
    Left = 704
    Top = 97
    Width = 169
    Height = 25
    Caption = 'Exportar para XLS'
    TabOrder = 11
    OnClick = btnXlsClick
  end
  object grSt: TdxDBGrid
    Left = 0
    Top = 127
    Width = 925
    Height = 271
    Bands = <
      item
        Width = 903
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'CONCATENATION'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            SummaryFormat = '###,###,##0.00'
            SummaryType = cstSum
          end
          item
            SummaryFormat = '###,###,##0.00'
            SummaryType = cstSum
          end
          item
            SummaryFormat = '###,###,##0.00'
            SummaryType = cstSum
          end>
        Name = 'grResSummaryGroup1'
      end>
    SummarySeparator = ', '
    Align = alBottom
    BorderStyle = bsNone
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopUpMenu
    TabOrder = 12
    BandColor = clMenu
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'Tahoma'
    BandFont.Style = [fsBold]
    DataSource = dsRel
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    GroupPanelColor = clAppWorkSpace
    GroupPanelFontColor = clInfoBk
    GroupNodeColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoPreview, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'Tahoma'
    PreviewFont.Style = []
    PreviewLines = 0
    RowFooterColor = clInfoBk
    RowFooterTextColor = clRed
    ShowGrid = False
    ShowHiddenInCustomizeBox = True
    ShowRowFooter = True
    WaitForExpandNodeTime = 230
    object grStCONCATENATION: TdxDBGridMaskColumn
      Width = 103
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONCATENATION'
    end
    object grStDESCRICAO_COMPLETA: TdxDBGridMaskColumn
      Width = 192
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DESCRICAO_COMPLETA'
    end
    object grStCODIGO_ANTIGO: TdxDBGridMaskColumn
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODIGO_ANTIGO'
    end
    object grStID_ATUAL: TdxDBGridMaskColumn
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID_ATUAL'
    end
    object grStID_NOVO: TdxDBGridMaskColumn
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID_NOVO'
    end
    object grStCOD_NCM: TdxDBGridMaskColumn
      Caption = 'Cód NCM'
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COD_NCM'
    end
    object grStLOCALIZACAO_PRODUTO: TdxDBGridMaskColumn
      Width = 118
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOCALIZACAO_PRODUTO'
    end
    object grStORIGEM: TdxDBGridMaskColumn
      Sorted = csUp
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ORIGEM'
    end
    object grStS_AC: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_AC'
    end
    object grStS_AL: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_AL'
    end
    object grStS_AM: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_AM'
    end
    object grStS_AP: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_AP'
    end
    object grStS_BA: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_BA'
    end
    object grStS_CE: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_CE'
    end
    object grStS_DF: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_DF'
    end
    object grStS_ES: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_ES'
    end
    object grStS_GO: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_GO'
    end
    object grStS_MA: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_MA'
    end
    object grStS_MG: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_MG'
    end
    object grStS_MS: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_MS'
    end
    object grStS_MT: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_MT'
    end
    object grStS_PA: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_PA'
    end
    object grStS_PB: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_PB'
    end
    object grStS_PE: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_PE'
    end
    object grStS_PI: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_PI'
    end
    object grStS_PR: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_PR'
    end
    object grStS_PR_SN: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_PR_SN'
    end
    object grStS_RJ: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_RJ'
    end
    object grStS_RN: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_RN'
    end
    object grStS_RO: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_RO'
    end
    object grStS_RR: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_RR'
    end
    object grStS_RS: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_RS'
    end
    object grStS_SC: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_SC'
    end
    object grStS_SC_SN: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_SC_SN'
    end
    object grStS_SE: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_SE'
    end
    object grStS_SP: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_SP'
    end
    object grStS_TO: TdxDBGridMaskColumn
      Visible = False
      Width = 299
      BandIndex = 0
      RowIndex = 0
      FieldName = 'S_TO'
    end
    object grStColumn38: TdxDBGridColumn
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CEST'
    end
  end
  object edDscPro: TdxColorEdit
    Left = 78
    Top = 29
    Width = 619
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 3
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edIdePro: TdxColorEdit
    Left = 242
    Top = 77
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 6
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edId2Pro: TdxColorEdit
    Left = 398
    Top = 77
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 7
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edLocPro: TdxColorEdit
    Left = 78
    Top = 101
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 9
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edCodSub: TdxColorEdit
    Left = 270
    Top = 5
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 1
    OnExit = edCodSubExit
    OnKeyDown = edCodSubKeyDown
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edCodPro: TdxColorEdit
    Left = 462
    Top = 5
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 2
    OnExit = edCodProExit
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object edCest: TdxColorEdit
    Left = 242
    Top = 101
    Width = 112
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14789952
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 14
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object sqlRel: TQuery
    AfterOpen = sqlRelAfterOpen
    DatabaseName = 'ISade'
    SQL.Strings = (
      'select'
      
        '    pro.codclp || '#39'-'#39' || pro.codgru || '#39'.'#39' || pro.codsub || '#39'.'#39' ' +
        '|| pro.codpro,'
      '    pro.codant CODIGO_ANTIGO,'
      '    pro.idepro ID_ATUAL,'
      '    pro.id2pro ID_NOVO,'
      '    pro.dscpro DESCRICAO_COMPLETA,'
      '    pro.codncm COD_NCM,'
      '    pro.locpro LOCALIZACAO_PRODUTO,'
      '    pro.codst1 ORIGEM,'
      '    pro.CEST  CEST,'
      ''
      
        '    S_AC, S_AL, S_AM, S_AP, S_BA, S_CE, S_DF, S_ES, S_GO, S_MA, ' +
        'S_MG, S_MS, S_MT,'
      
        '    S_PA, S_PB, S_PE, S_PI, S_PR, S_PR_SN, S_RJ, S_RN, S_RO, S_R' +
        'R, S_RS, S_SC,'
      '    S_SC_SN, S_SE, S_SP, S_TO, linha'
      ''
      'from estpro pro'
      
        'left join proc_valores_st p on p.s_regra = pro.codsts and p.s_ti' +
        'po = '#39'Saida'#39
      'where pro.codgru = '#39'001'#39' and '
      '           pro.codsub = '#39'0001'#39' and'
      '           pro.codpro = '#39'00002'#39)
    Left = 136
    Top = 232
    object sqlRelCONCATENATION: TStringField
      DisplayLabel = 'Cód. Produto'
      FieldName = 'CONCATENATION'
      Size = 16
    end
    object sqlRelCODIGO_ANTIGO: TStringField
      DisplayLabel = 'Cód. Antigo'
      FieldName = 'CODIGO_ANTIGO'
      Size = 30
    end
    object sqlRelID_ATUAL: TStringField
      DisplayLabel = 'ID Atual'
      FieldName = 'ID_ATUAL'
      Size = 30
    end
    object sqlRelID_NOVO: TStringField
      DisplayLabel = 'ID Novo'
      FieldName = 'ID_NOVO'
      FixedChar = True
      Size = 30
    end
    object sqlRelDESCRICAO_COMPLETA: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'DESCRICAO_COMPLETA'
      Size = 70
    end
    object sqlRelCOD_NCM: TStringField
      DisplayLabel = 'Cód. NCM'
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 8
    end
    object sqlRelLOCALIZACAO_PRODUTO: TStringField
      DisplayLabel = 'Localização'
      FieldName = 'LOCALIZACAO_PRODUTO'
    end
    object sqlRelORIGEM: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 1
    end
    object sqlRelS_AC: TStringField
      DisplayLabel = 'AC'
      FieldName = 'S_AC'
      Size = 30
    end
    object sqlRelS_AL: TStringField
      DisplayLabel = 'AL'
      FieldName = 'S_AL'
      Size = 30
    end
    object sqlRelS_AM: TStringField
      DisplayLabel = 'AM'
      FieldName = 'S_AM'
      Size = 30
    end
    object sqlRelS_AP: TStringField
      DisplayLabel = 'AP'
      FieldName = 'S_AP'
      Size = 30
    end
    object sqlRelS_BA: TStringField
      DisplayLabel = 'BA'
      FieldName = 'S_BA'
      Size = 30
    end
    object sqlRelS_CE: TStringField
      DisplayLabel = 'CE'
      FieldName = 'S_CE'
      Size = 30
    end
    object sqlRelS_DF: TStringField
      DisplayLabel = 'DF'
      FieldName = 'S_DF'
      Size = 30
    end
    object sqlRelS_ES: TStringField
      DisplayLabel = 'ES'
      FieldName = 'S_ES'
      Size = 30
    end
    object sqlRelS_GO: TStringField
      DisplayLabel = 'GO'
      FieldName = 'S_GO'
      Size = 30
    end
    object sqlRelS_MA: TStringField
      DisplayLabel = 'MA'
      FieldName = 'S_MA'
      Size = 30
    end
    object sqlRelS_MG: TStringField
      DisplayLabel = 'MG'
      FieldName = 'S_MG'
      Size = 30
    end
    object sqlRelS_MS: TStringField
      DisplayLabel = 'MS'
      FieldName = 'S_MS'
      Size = 30
    end
    object sqlRelS_MT: TStringField
      DisplayLabel = 'MT'
      FieldName = 'S_MT'
      Size = 30
    end
    object sqlRelS_PA: TStringField
      DisplayLabel = 'PA'
      FieldName = 'S_PA'
      Size = 30
    end
    object sqlRelS_PB: TStringField
      DisplayLabel = 'PB'
      FieldName = 'S_PB'
      Size = 30
    end
    object sqlRelS_PE: TStringField
      DisplayLabel = 'PE'
      FieldName = 'S_PE'
      Size = 30
    end
    object sqlRelS_PI: TStringField
      DisplayLabel = 'PI'
      FieldName = 'S_PI'
      Size = 30
    end
    object sqlRelS_PR: TStringField
      DisplayLabel = 'PR'
      FieldName = 'S_PR'
      Size = 30
    end
    object sqlRelS_PR_SN: TStringField
      DisplayLabel = 'PR-SN'
      FieldName = 'S_PR_SN'
      Size = 30
    end
    object sqlRelS_RJ: TStringField
      DisplayLabel = 'RJ'
      FieldName = 'S_RJ'
      Size = 30
    end
    object sqlRelS_RN: TStringField
      DisplayLabel = 'RN'
      FieldName = 'S_RN'
      Size = 30
    end
    object sqlRelS_RO: TStringField
      DisplayLabel = 'RO'
      FieldName = 'S_RO'
      Size = 30
    end
    object sqlRelS_RR: TStringField
      DisplayLabel = 'RR'
      FieldName = 'S_RR'
      Size = 30
    end
    object sqlRelS_RS: TStringField
      DisplayLabel = 'RS'
      FieldName = 'S_RS'
      Size = 30
    end
    object sqlRelS_SC: TStringField
      DisplayLabel = 'SC'
      FieldName = 'S_SC'
      Size = 30
    end
    object sqlRelS_SC_SN: TStringField
      DisplayLabel = 'SC-SN'
      FieldName = 'S_SC_SN'
      Size = 30
    end
    object sqlRelS_SE: TStringField
      DisplayLabel = 'SE'
      FieldName = 'S_SE'
      Size = 30
    end
    object sqlRelS_SP: TStringField
      DisplayLabel = 'SP'
      FieldName = 'S_SP'
      Size = 30
    end
    object sqlRelS_TO: TStringField
      DisplayLabel = 'TO'
      FieldName = 'S_TO'
      Size = 30
    end
    object sqlRelLINHA: TMemoField
      DisplayLabel = 
        'tipo;codigo;ncm;'#39'-'#39';AC;'#39'-'#39';AL;'#39'-'#39';AM;'#39'-'#39';AP;'#39'-'#39';BA;'#39'-'#39';CE;'#39'-'#39';DF' +
        ';'#39'-'#39';ES;'#39'-'#39';GO;'#39'-'#39';MA;'#39'-'#39';MG;'#39'-'#39';MS;'#39'-'#39';MT;'#39'-'#39';PA;'#39'-'#39';PB;'#39'-'#39';PE;' +
        #39'-'#39';PI;'#39'-'#39';PR;'#39'-'#39';PR_SN;'#39'-'#39';RJ;'#39'-'#39';RN;'#39'-'#39';RO;'#39'-'#39';RR;'#39'-'#39';RS;'#39'-'#39';S' +
        'C;'#39'-'#39';SC_SN;'#39'-'#39';SE;'#39'-'#39';SP;'#39'-'#39';TO'
      FieldName = 'LINHA'
      BlobType = ftMemo
      Size = 7500
    end
    object sqlRelCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
  end
  object dsRel: TDataSource
    DataSet = sqlRel
    Left = 176
    Top = 232
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Filter = '*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 136
    Top = 276
  end
  object PopUpMenu: TPopupMenu
    OwnerDraw = True
    Left = 260
    Top = 228
    object Colunas1: TMenuItem
      Caption = 'Colunas...'
      Hint = 'Colunas...'
      OnClick = Colunas1Click
    end
  end
end
