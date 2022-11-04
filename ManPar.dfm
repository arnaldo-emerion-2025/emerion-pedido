inherited fmManPar: TfmManPar
  Left = 491
  Top = 109
  Caption = 'Parametros'
  ClientHeight = 566
  ClientWidth = 694
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 694
    Height = 525
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 694
    Height = 525
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object Label27: TLabel
        Left = 3
        Top = 2
        Width = 146
        Height = 13
        Caption = 'Tela de Pedidos/Cotações'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 3
        Top = 40
        Width = 169
        Height = 13
        Caption = 'Consultar pelo Código de Barras ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Bevel5: TBevel
        Left = 182
        Top = 8
        Width = 499
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label36: TLabel
        Left = 320
        Top = 40
        Width = 314
        Height = 13
        Caption = 
          '(Permitir Buscas Somente Utilizando Leitura por Código de Barras' +
          ')'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 3
        Top = 64
        Width = 262
        Height = 13
        Caption = 'Informar Quantidade dos Itens com Casas Decimais ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 3
        Top = 88
        Width = 357
        Height = 13
        Caption = 
          'Permitir Alterar Valores de Itens na Comanda Acima do Preço de T' +
          'abela ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 3
        Top = 112
        Width = 296
        Height = 13
        Caption = 'Organizar Pedido/Cotação ao Concluir pelo Código do Item ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 3
        Top = 136
        Width = 416
        Height = 13
        Caption = 
          'Emitir Aviso ao Vendedor Quando Lançar Qtde de Item Acima do Est' +
          'oque Disponivel ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 3
        Top = 160
        Width = 413
        Height = 13
        Caption = 
          'Não Permitir Continuar Pedidos Acima do Limite de Crédito Dispon' +
          'ivel para o Cliente ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 3
        Top = 184
        Width = 320
        Height = 13
        Caption = 
          'Quantidade Limite de Itens para Digitação de Pedidos/Cotações ? ' +
          ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 3
        Top = 207
        Width = 601
        Height = 13
        Caption = 
          'Permitir que os Vendedores Emitam Pedidos com Data de Previsão d' +
          'e Faturamento Maior que a Data de Emissão do Pedido ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 0
        Top = 291
        Width = 206
        Height = 13
        Caption = 'Quantidade de Casas Decimais para  Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label51: TLabel
        Left = 0
        Top = 307
        Width = 238
        Height = 13
        Caption = 'Quantidade de Casas Decimais para  Quantidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label52: TLabel
        Left = 3
        Top = 352
        Width = 67
        Height = 13
        Caption = 'Frete padrão:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label53: TLabel
        Left = 3
        Top = 385
        Width = 96
        Height = 13
        Caption = 'Habilitar atendente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EdFlgCod: TdxDBColorPickEdit
        Left = 268
        Top = 36
        Width = 47
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
        DataField = 'FLGCOD'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdUsaDec: TdxDBColorPickEdit
        Left = 268
        Top = 60
        Width = 47
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
        DataField = 'USADEC'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdLanMai: TdxDBColorPickEdit
        Left = 424
        Top = 84
        Width = 47
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
        DataField = 'LANMAI'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdFlgOrd: TdxDBColorPickEdit
        Left = 424
        Top = 108
        Width = 47
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
        DataField = 'FLGORD'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdVerEst: TdxDBColorPickEdit
        Left = 424
        Top = 132
        Width = 47
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
        DataField = 'VEREST'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdBloCre: TdxDBColorPickEdit
        Left = 424
        Top = 156
        Width = 47
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
        DataField = 'BLOCRE'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdQtlIte: TdxDBColorCurrencyEdit
        Left = 403
        Top = 180
        Width = 68
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        Alignment = taRightJustify
        DataField = 'QTLITE'
        DataSource = DsPar
        DecimalPlaces = 0
        DisplayFormat = '##0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object EdPerPro: TdxDBColorPickEdit
        Left = 608
        Top = 203
        Width = 47
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
        TabOrder = 10
        DataField = 'PERPRO'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox7: TDBCheckBox
        Left = -1
        Top = 254
        Width = 137
        Height = 17
        Caption = 'Permitir frete vendedor'
        DataField = 'FRETEVENDEDOR'
        DataSource = DsPar
        Enabled = False
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object DBCheckBox8: TDBCheckBox
        Left = 480
        Top = 108
        Width = 202
        Height = 17
        Caption = 'Liberar vendas de outros vendedores'
        DataField = 'LIB_VEN_OUTROS'
        DataSource = DsPar
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 0
        Top = 273
        Width = 198
        Height = 17
        Caption = 'Comissão Manual'
        DataField = 'COM_MANUAL'
        DataSource = DsPar
        Enabled = False
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object dxDBColorEdit1: TdxDBColorEdit
        Left = 240
        Top = 281
        Width = 58
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
        TabOrder = 11
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DECIMAIS_VALOR'
        DataSource = DsPar
        MaxLength = 2
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object dxDBColorEdit2: TdxDBColorEdit
        Left = 241
        Top = 305
        Width = 58
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
        TabOrder = 12
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'DECIMAIS_QTD'
        DataSource = DsPar
        MaxLength = 2
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdFrtRes: TdxDBColorLookupEdit
        Left = 78
        Top = 349
        Width = 160
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 13
        DataField = 'ID_FRETE_PADRAO'
        DataSource = DsPar
        ClearKey = 46
        ListFieldName = 'NOMFRT'
        KeyFieldName = 'ID'
        ListSource = dsTipFrt
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object dxDBColorPickEdit4: TdxDBColorPickEdit
        Left = 104
        Top = 381
        Width = 47
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
        DataField = 'FLGATD'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox20: TDBCheckBox
        Left = -1
        Top = 414
        Width = 282
        Height = 17
        Caption = 'Imprimir Valor das parcelas nas vias de separação'
        DataField = 'IMP_PARCELA_PEDIDO'
        DataSource = DsPar
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox22: TDBCheckBox
        Left = -1
        Top = 438
        Width = 370
        Height = 17
        Caption = 'Suprimir os "Zeros " do código na impressão do Pedido e cotação.'
        DataField = 'SUPRIMIR_ZEROS'
        DataSource = DsPar
        TabOrder = 16
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox25: TDBCheckBox
        Left = -1
        Top = 462
        Width = 282
        Height = 17
        Caption = 'Permitir duplicar itens no pedido'
        DataField = 'DUP_ITEM_PEDIDO'
        DataSource = DsPar
        TabOrder = 17
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Geral 2'
      ImageIndex = 1
      object Label11: TLabel
        Left = 8
        Top = 16
        Width = 165
        Height = 13
        Caption = 'Observação padrão das cotações:'
      end
      object Label12: TLabel
        Left = 4
        Top = 410
        Width = 74
        Height = 13
        Caption = '(%) Desconto :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label13: TLabel
        Left = 320
        Top = 410
        Width = 292
        Height = 26
        Caption = 
          '(Percentual de Desconto Permitido para Itens ou para Media Calcu' +
          'lada em Pedidos Realizados no Sistema.)'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
        WordWrap = True
      end
      object Label18: TLabel
        Left = 4
        Top = 447
        Width = 138
        Height = 13
        Caption = 'Tipo de Desconto Praticado :'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label23: TLabel
        Left = 320
        Top = 447
        Width = 335
        Height = 13
        Caption = 
          '(Se Percentual Devera ser Praticado para Controlar Desconto no I' +
          'tem'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label24: TLabel
        Left = 5
        Top = 241
        Width = 169
        Height = 13
        Caption = 'Desconto Sobre o Preço de Custo ?'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label37: TLabel
        Left = 320
        Top = 466
        Width = 262
        Height = 13
        Caption = 'ou na Media Calculada de Descontos para os Pedidos.)'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label38: TLabel
        Left = 320
        Top = 241
        Width = 322
        Height = 13
        Caption = 
          '(Percentual Permitido para Descontos Realizados no Valor de Cust' +
          'o'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label39: TLabel
        Left = 320
        Top = 260
        Width = 302
        Height = 13
        Caption = 'ao se praticar preços de Venda menores que o Custo do Item.)'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label40: TLabel
        Left = 6
        Top = 153
        Width = 97
        Height = 13
        Caption = 'Reserva de Itens'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 7
        Top = 173
        Width = 76
        Height = 13
        Caption = 'Reserva Itens ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 6
        Top = 199
        Width = 85
        Height = 13
        Caption = 'Tipo de Reserva :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EdObsCta: TdxDBColorMemo
        Left = 6
        Top = 30
        Width = 667
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        CharCase = ecUpperCase
        DataField = 'MSG_COTACAO'
        DataSource = DsPar
        MaxLength = 240
        CorDeFoco = clInfoBk
        Height = 116
        StoredValues = 2
      end
      object EdPedDsc: TdxDBColorCurrencyEdit
        Left = 202
        Top = 406
        Width = 114
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        Visible = False
        Alignment = taRightJustify
        DataField = 'PEDDSC'
        DataSource = DsPar
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object EdTipDsc: TdxDBColorPickEdit
        Left = 202
        Top = 443
        Width = 114
        Color = 16577773
        Enabled = False
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
        Visible = False
        DataField = 'TIPDSC'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Itens'
          'Media do Pedido')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdPerCst: TdxDBColorCurrencyEdit
        Left = 202
        Top = 237
        Width = 114
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        Visible = False
        Alignment = taRightJustify
        DataField = 'PERCST'
        DataSource = DsPar
        DisplayFormat = '###,###,##0.00'
        MaxValue = 100
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object EdTipRes: TdxDBColorPickEdit
        Left = 148
        Top = 195
        Width = 123
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
        DataField = 'TIPRES'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'No Pedido'
          'Na Liberacao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdFlgRes: TdxDBCheckEdit
        Left = 145
        Top = 171
        Width = 20
        Style.BorderColor = 14789952
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        AutoSize = False
        DataField = 'FLGRES'
        DataSource = DsPar
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
        Height = 18
      end
    end
    object Pedi: TTabSheet
      Caption = 'Pedidos'
      ImageIndex = 3
      object Bevel1: TBevel
        Left = 56
        Top = 16
        Width = 625
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label15: TLabel
        Left = 3
        Top = 27
        Width = 86
        Height = 13
        Caption = 'Imprimir Pedidos ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 320
        Top = 27
        Width = 245
        Height = 13
        Caption = 'Permite Vendedor Consultar Comissões no Pedido ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 3
        Top = 50
        Width = 91
        Height = 13
        Caption = 'Tipo de Comissão ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Bevel7: TBevel
        Left = 3
        Top = 381
        Width = 679
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label26: TLabel
        Left = 2
        Top = 274
        Width = 184
        Height = 13
        Caption = 'Realizar Analise de Todos os Pedidos ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 238
        Top = 275
        Width = 442
        Height = 13
        Caption = 
          '(Realizar Analise dos Pedidos Emitidos com Problemas em Relação ' +
          'a Parametros Comerciais.)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 320
        Top = 50
        Width = 245
        Height = 26
        Caption = 'Imprimir Referência ao invés do Códido do Item na via do pedido?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Bevel2: TBevel
        Left = 181
        Top = 199
        Width = 499
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label9: TLabel
        Left = 2
        Top = 192
        Width = 111
        Height = 13
        Caption = 'Etapas Obrigatórias'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 3
        Top = 74
        Width = 144
        Height = 13
        Caption = 'Tipo de impressão do pedido ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label5: TLabel
        Left = 3
        Top = 10
        Width = 44
        Height = 13
        Caption = 'Pedidos'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 1
        Top = 303
        Width = 128
        Height = 13
        Caption = 'MarkUp Min. permitido (%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 1
        Top = 327
        Width = 142
        Height = 13
        Caption = 'Valor maximo para os Pedidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 1
        Top = 351
        Width = 144
        Height = 13
        Caption = 'Acréscimo Max. permitido (%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label49: TLabel
        Left = 1
        Top = 250
        Width = 154
        Height = 13
        Caption = 'Liberação Depto. Comercial'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Bevel3: TBevel
        Left = 177
        Top = 257
        Width = 499
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label25: TLabel
        Left = 2
        Top = 386
        Width = 141
        Height = 13
        Caption = 'Indicação Presencial Padrão: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label54: TLabel
        Left = 3
        Top = 98
        Width = 232
        Height = 13
        Caption = 'Imprime Via de Deposito Confirmação do Pedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 328
        Top = 408
        Width = 241
        Height = 13
        Caption = 'Dias sem faturamento para liberação do financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EdFlgImp: TdxDBColorPickEdit
        Left = 191
        Top = 23
        Width = 46
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
        DataField = 'FLGIMP'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdExiCom: TdxDBColorPickEdit
        Left = 574
        Top = 23
        Width = 46
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
        DataField = 'EXICOM'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdTipCom: TdxDBColorPickEdit
        Left = 191
        Top = 46
        Width = 122
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
        DataField = 'TIPCOM'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Cliente'
          'Vendedor'
          'Item'
          'Tabela de Preco'
          'Valor de Markup')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdFlgCom: TdxDBColorPickEdit
        Left = 190
        Top = 270
        Width = 46
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
        TabOrder = 17
        DataField = 'FLGCOM'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdImpRef: TdxDBColorPickEdit
        Left = 574
        Top = 51
        Width = 46
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
        DataField = 'IMPREF'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox1: TDBCheckBox
        Left = 191
        Top = 205
        Width = 153
        Height = 17
        Caption = 'Periodo de Programacao'
        DataField = 'PER_PROG'
        DataSource = DsPar
        TabOrder = 11
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 343
        Top = 205
        Width = 137
        Height = 17
        Caption = 'Consultas de Cadastro'
        DataField = 'CONS_CAD'
        DataSource = DsPar
        TabOrder = 12
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 511
        Top = 206
        Width = 169
        Height = 17
        Caption = 'Liberacao do Depto Financeiro'
        DataField = 'LIB_FINANC'
        DataSource = DsPar
        TabOrder = 13
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 191
        Top = 221
        Width = 145
        Height = 17
        Caption = 'Separacao de Estoque'
        DataField = 'SEP_ESTOQUE'
        DataSource = DsPar
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 343
        Top = 221
        Width = 161
        Height = 17
        Caption = 'Liberacao para Faturamento'
        DataField = 'LIB_FATURA'
        DataSource = DsPar
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 511
        Top = 222
        Width = 161
        Height = 17
        Caption = 'Confirmacao do Pagamento'
        DataField = 'CONF_PAG'
        DataSource = DsPar
        TabOrder = 16
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dxDBColorPickEdit1: TdxDBColorPickEdit
        Left = 191
        Top = 70
        Width = 122
        Color = 16577773
        Enabled = False
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
        Visible = False
        DataField = 'TIP_IMP_PED'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Grafica'
          'Matricial')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox10: TDBCheckBox
        Left = 248
        Top = 134
        Width = 241
        Height = 17
        Caption = 'Obriga ver observação do cliente caso exista.'
        DataField = 'OBRIGA_VER_OBS_CLI'
        DataSource = DsPar
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 3
        Top = 134
        Width = 217
        Height = 17
        Caption = 'Obriga informar observações do produto'
        DataField = 'OBRLIBPED'
        DataSource = DsPar
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox15: TDBCheckBox
        Left = 248
        Top = 154
        Width = 105
        Height = 17
        Caption = 'Consultar Cliente'
        DataField = 'CONSCLI'
        DataSource = DsPar
        TabOrder = 10
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox16: TDBCheckBox
        Left = 506
        Top = 134
        Width = 137
        Height = 17
        Caption = 'Imprimir status no email'
        DataField = 'IMPSITEMAIL'
        DataSource = DsPar
        TabOrder = 8
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox17: TDBCheckBox
        Left = 3
        Top = 154
        Width = 230
        Height = 17
        Caption = 'Permite alterar descrição do produto'
        DataField = 'ALT_DESC_PROD'
        DataSource = DsPar
        TabOrder = 9
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
        Left = 147
        Top = 296
        Width = 60
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        TabOrder = 18
        Alignment = taRightJustify
        DataField = 'MVAMAX'
        DataSource = DsPar
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit
        Left = 148
        Top = 320
        Width = 60
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        TabOrder = 19
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALMAX'
        DataSource = DsPar
        DisplayFormat = '##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        Height = 23
        StoredValues = 49
      end
      object dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit
        Left = 148
        Top = 344
        Width = 60
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        TabOrder = 20
        Alignment = taRightJustify
        DataField = 'ACRMAX'
        DataSource = DsPar
        DisplayFormat = '###,###,##0.00'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object edIndicPresenca: TdxDBColorLookupEdit
        Left = 6
        Top = 401
        Width = 251
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 21
        DataField = 'OP_PADRAO'
        DataSource = DsPar
        ClearKey = 46
        ListFieldName = 'SITUACAO'
        CanDeleteText = True
        KeyFieldName = 'ID'
        ListSource = dsINDIC_PRES
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object DBCheckBox18: TDBCheckBox
        Left = 3
        Top = 429
        Width = 302
        Height = 17
        Caption = 'Bloquear a Realização de Pedidos sem Comanda/Cotação:'
        DataField = 'PED_BLOC_NOVO'
        DataSource = DsPar
        TabOrder = 22
        ValueChecked = 'N'
        ValueUnchecked = 'S'
      end
      object dxDBColorPickEdit5: TdxDBColorPickEdit
        Left = 239
        Top = 94
        Width = 46
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
        DataField = 'IMP_DEPOSITO_PEDIDO'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox19: TDBCheckBox
        Left = 2
        Top = 453
        Width = 289
        Height = 17
        Caption = 'Acumular o Valor da ST e do  IPI na Primeira Parcela'
        DataField = 'FLG_ACUMULA_IMP'
        DataSource = DsPar
        TabOrder = 23
        ValueChecked = 'Sim'
        ValueUnchecked = 'Nao'
      end
      object dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit
        Left = 579
        Top = 401
        Width = 60
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        TabOrder = 24
        Alignment = taRightJustify
        DataField = 'LIMITE_INATIVO'
        DataSource = DsPar
        DecimalPlaces = 0
        DisplayFormat = '###,###,##0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object DBCheckBox23: TDBCheckBox
        Left = 3
        Top = 474
        Width = 326
        Height = 17
        Caption = 'Permitir quantidade Fracionada [Pedido e Cotação]'
        DataField = 'PERMITIR_QTD_FRACIONADA'
        DataSource = DsPar
        TabOrder = 25
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Cotação/Separação'
      ImageIndex = 2
      object Label10: TLabel
        Left = 3
        Top = 30
        Width = 109
        Height = 13
        Caption = 'Quantidade de Dias ? :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 3
        Top = 54
        Width = 156
        Height = 13
        Caption = 'Imprimir Informações de Marca ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 3
        Top = 77
        Width = 189
        Height = 13
        Caption = 'Imprimir tracejado para Separar Itens ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 376
        Top = 54
        Width = 222
        Height = 13
        Caption = 'Imprimir Informações de Venctos Financeiros ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 376
        Top = 77
        Width = 210
        Height = 13
        Caption = 'Imprimir Localização dos Itens em Estoque ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 376
        Top = 30
        Width = 112
        Height = 13
        Caption = 'Imprimir Observações ?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 376
        Top = 93
        Width = 230
        Height = 26
        Caption = 
          'Imprimir Referência ao invés do Código do Item na via de Separaç' +
          'ão?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label20: TLabel
        Left = 320
        Top = 7
        Width = 100
        Height = 13
        Caption = 'Via de Separação '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Bevel4: TBevel
        Left = 64
        Top = 14
        Width = 248
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label14: TLabel
        Left = 3
        Top = 7
        Width = 52
        Height = 13
        Caption = 'Cotações'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Bevel6: TBevel
        Left = 424
        Top = 14
        Width = 257
        Height = 2
        Shape = bsTopLine
        Style = bsRaised
      end
      object Label45: TLabel
        Left = 3
        Top = 119
        Width = 217
        Height = 13
        Caption = 'Permite cotação com cliente sem cadastrado?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 221
        Top = 139
        Width = 139
        Height = 39
        Caption = 
          '(Tipo de Display na Tela para Digitação do Código do Item) Apena' +
          's cotação.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label28: TLabel
        Left = 3
        Top = 152
        Width = 78
        Height = 13
        Caption = 'Busca de Itens :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 3
        Top = 198
        Width = 255
        Height = 13
        Caption = 'Inserir Part Number na 2ª linha de descrição do Item:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label56: TLabel
        Left = 3
        Top = 362
        Width = 236
        Height = 13
        Caption = 'Quantidade de Casa Decimais [Via de Separação]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label57: TLabel
        Left = 3
        Top = 448
        Width = 163
        Height = 13
        Caption = 'Tipo Impressão via de Seperação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label58: TLabel
        Left = 3
        Top = 472
        Width = 179
        Height = 13
        Caption = 'Ordem Via de Separação Localização:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EdQtdCta: TdxDBColorCurrencyEdit
        Left = 265
        Top = 25
        Width = 68
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        Alignment = taRightJustify
        DataField = 'QTDCTA'
        DataSource = DsPar
        DecimalPlaces = 0
        DisplayFormat = '##0'
        Nullable = False
        CorDeFoco = clInfoBk
        StoredValues = 49
      end
      object EdImpMrc: TdxDBColorPickEdit
        Left = 265
        Top = 49
        Width = 68
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
        DataField = 'IMPMRC'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdImpTra: TdxDBColorPickEdit
        Left = 265
        Top = 72
        Width = 68
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
        DataField = 'IMPTRA'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdImpObs: TdxDBColorPickEdit
        Left = 630
        Top = 25
        Width = 46
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
        DataField = 'IMPOBS'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdImpFin: TdxDBColorPickEdit
        Left = 630
        Top = 49
        Width = 46
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
        TabOrder = 15
        DataField = 'IMPFIN'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object EdImpLoc: TdxDBColorPickEdit
        Left = 630
        Top = 72
        Width = 46
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
        TabOrder = 16
        DataField = 'IMPLOC'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object dxDBColorPickEdit2: TdxDBColorPickEdit
        Left = 630
        Top = 97
        Width = 46
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
        TabOrder = 17
        DataField = 'IMPREF'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox11: TDBCheckBox
        Left = 536
        Top = 128
        Width = 137
        Height = 17
        Caption = 'Ordenar por Localização'
        DataField = 'ORDENA_VIASEP_LOC'
        DataSource = DsPar
        TabOrder = 19
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox12: TDBCheckBox
        Left = 379
        Top = 128
        Width = 121
        Height = 17
        Caption = 'Novo Modelo Gráfico'
        DataField = 'VIA_SEP_GRAF'
        DataSource = DsPar
        TabOrder = 18
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object edCLISEMCAD: TdxDBColorPickEdit
        Left = 266
        Top = 115
        Width = 68
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
        DataField = 'CLISEMCAD'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object RadioGroup1: TRadioGroup
        Left = 256
        Top = 216
        Width = 185
        Height = 65
        Caption = 'Imprimir na Terceira Linha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Referência Interna'
          '2ª Linha da Descrição')
        ParentFont = False
        TabOrder = 8
        Visible = False
      end
      object DBCheckBox14: TDBCheckBox
        Left = 3
        Top = 96
        Width = 182
        Height = 17
        Caption = 'Repitir Itens na Cotação/Pedido'
        DataField = 'REP_ITE'
        DataSource = DsPar
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object EdTipPed: TdxDBColorPickEdit
        Left = 92
        Top = 147
        Width = 122
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
        DataField = 'TIPPED'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Codigo do Item'
          'Codigo de Barras')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object dxDBColorPickEdit3: TdxDBColorPickEdit
        Left = 265
        Top = 193
        Width = 46
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
        DataField = 'IMPPARTNUMBER'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Sim'
          'Nao')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object rgImpCot: TRadioGroup
        Left = 8
        Top = 216
        Width = 209
        Height = 135
        Caption = 'Impressão da  cotação'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Completa'
          'Reduzida'
          'Modelo Novo'
          'Modelo com Saldo'
          'Modelo com Saldo(Detalhado)')
        ParentFont = False
        TabOrder = 7
      end
      object dxDBColorPickEdit6: TdxDBColorPickEdit
        Left = 250
        Top = 358
        Width = 51
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
        DataField = 'QTD_DEC_VIA_SEP'
        DataSource = DsPar
        MaxLength = 15
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox21: TDBCheckBox
        Left = 11
        Top = 419
        Width = 438
        Height = 17
        Caption = 
          'Concatenar Quantidade de Embalagem na Descrição da via de separa' +
          'ção'
        DataField = 'CONCATENAR_QTD_EMB_VIA_SEP'
        DataSource = DsPar
        TabOrder = 11
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox24: TDBCheckBox
        Left = 11
        Top = 395
        Width = 294
        Height = 17
        Caption = 'Imprimir Marca na Impressão do Pedido/Cotação'
        DataField = 'IMP_MARCA_PEDIDO_COTACAO'
        DataSource = DsPar
        TabOrder = 10
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dxDBColorPickEdit7: TdxDBColorPickEdit
        Left = 188
        Top = 443
        Width = 122
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
        TabOrder = 12
        DataField = 'TIPO_IMPRESSAO_VIASEP'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Normal'
          'Por localização')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object dxDBColorPickEdit8: TdxDBColorPickEdit
        Left = 189
        Top = 469
        Width = 122
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
        TabOrder = 13
        DataField = 'TIPPED'
        DataSource = DsPar
        MaxLength = 16
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Ascendente'
          'Descendente')
        CorDeFoco = clInfoBk
        StoredValues = 66
      end
      object DBCheckBox26: TDBCheckBox
        Left = 379
        Top = 148
        Width = 191
        Height = 17
        Caption = 'Totalizar Pacotes na Via Separação'
        DataField = 'TOTALIZAQTDVIASEP'
        DataSource = DsPar
        TabOrder = 20
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbSUPRIMIR_QTDE_EMB: TDBCheckBox
        Left = 379
        Top = 167
        Width = 191
        Height = 17
        Caption = 'Suprimir Quantidade Embalagens'
        DataField = 'SUPRIMIR_QTDE_EMB'
        DataSource = DsPar
        TabOrder = 21
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 525
    Width = 694
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bFechar: TBitBtn
      Left = 497
      Top = 6
      Width = 196
      Height = 27
      Hint = 'Retornar a Tela Anterior'
      Caption = '&Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bFecharClick
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0000000000000
        000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D000C0CFD0C0CFD000000000000030679F30679F000000C0CFD0C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD000506030679F30
        679F30679F30679F000000005060005060005060005060005060005060C0CFD0
        C0CFD0C0CFD0C0CFD000C0CFD000506030689F30689F30679F30679F00000000
        CFFF00CFFF00CFFF000000C0C0C0C0C0C0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
        D00050602F6FA02F6FA02F6F9F2F689F00000000CFFF00CFFF00CFFF000000C0
        C0C0FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD00050602077AF2077A02070
        A02F70A000000010CFFF00CFFF00CFFF000000FF0000FF0000C0CFD0C0CFD0C0
        CFD0C0CFD000C0CFD00050601F7FAF1F78AFFFFFFF2077AF00000030D7FF2FD0
        FF1FD0FFFF0000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0005060
        1080B01F80B01F80B01F7FB000000060DFFF50D8FFFF0000FF0000FF0000FF00
        00FF0000FF0000FF0000C0CFD000C0CFD00050600F88BF1088BF1087BF1087B0
        0000008FE7FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000C0CF
        D000C0CFD00050600F90C00F8FC00F8FC00F88BF000000B0EFFFA0E8FFFF0000
        FF0000FF0000FF0000FF0000FF0000FF0000C0CFD000C0CFD00050600097CF00
        97CF0090C00090C0000000DFF0FFCFF0FFC0EFFFFF0000FF0000FF0000C0CFD0
        C0CFD0C0CFD0C0CFD000C0CFD00050600098CF0098CF0098CF0097CF000000FF
        F8FFF0F7FFE0F7FF000000FF0000FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CF
        D00050600098CF0098CF0098CF0098CF000000FFF8FFFFF8FFFFF8FF000000C0
        C0C0FF0000C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD00050600050600098
        CF0098CF000000005060005060005060005060C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0005060005060005060C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD000}
    end
    object bConfirmar: TBitBtn
      Left = 299
      Top = 6
      Width = 196
      Height = 27
      Hint = 'Salvar as Alterações Realizadas'
      Caption = '&Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bConfirmarClick
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000014000000130000000100
        18000000000074040000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0CFD0C0CFD0C0CFD00000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000007F7F7FC0CFD0C0CFD0000000000000FF0000FF0000000000
        7F7F7FFF0000FF00007F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF00
        000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000FF00000000007F7F7FFF
        0000FF00007F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF0000000000
        7F7F7FC0CFD0C0CFD0000000FF0000FF0000FF00000000007F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F000000FF0000FF0000FF00000000007F7F7FC0
        CFD0C0CFD0000000FF0000FF0000FF0000000000000000000000000000000000
        000000000000000000000000FF0000FF0000FF00000000007F7F7FC0CFD0C0CF
        D0000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF
        0000000000000000000000000000000000000000000000000000000000000000
        000000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
        0000FF00000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00
        000000007F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF0000000000
        7F7F7FC0CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0
        CFD0C0CFD0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0CFD0C0CF
        D0000000FF0000FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000FF0000FF00000000007F7F7FC0CFD0C0CFD0000000
        FF0000FF000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF000000FF0000FF00000000007F7F7FC0CFD0C0CFD000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
        D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
        CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
    end
  end
  object PedPar: TwwQuery
    CachedUpdates = True
    AfterScroll = PedParAfterScroll
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * FROM PEDPAR'
      ''
      'where 0=0 ')
    UpdateObject = UpPar
    ValidateWithMask = True
    Left = 619
    Top = 455
    object PedParPEDDSC: TFloatField
      DisplayWidth = 10
      FieldName = 'PEDDSC'
      Origin = 'ISADE.PEDPAR.DESPRD'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedParFLGBLQ: TStringField
      DisplayWidth = 3
      FieldName = 'FLGBLQ'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGATR: TStringField
      DisplayWidth = 3
      FieldName = 'FLGATR'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGEXP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGEXP'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGCRE: TStringField
      DisplayWidth = 3
      FieldName = 'FLGCRE'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParFLGDSC: TStringField
      DisplayWidth = 3
      FieldName = 'FLGDSC'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 3
    end
    object PedParTIPDSC: TStringField
      DisplayWidth = 15
      FieldName = 'TIPDSC'
      Origin = 'ISADE.PEDPAR.TIPDES'
      FixedChar = True
      Size = 15
    end
    object PedParFLGRES: TStringField
      DisplayWidth = 3
      FieldName = 'FLGRES'
      Origin = 'ISADE.PEDPAR.FLGRES'
      FixedChar = True
      Size = 3
    end
    object PedParTIPRES: TStringField
      DisplayWidth = 12
      FieldName = 'TIPRES'
      Origin = 'ISADE.PEDPAR.TIPRES'
      FixedChar = True
      Size = 12
    end
    object PedParPERCST: TFloatField
      DisplayWidth = 10
      FieldName = 'PERCST'
      Origin = 'ISADE.PEDPAR.PERCST'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedParEXIMKA: TStringField
      DisplayWidth = 3
      FieldName = 'EXIMKA'
      Origin = 'ISADE.PEDPAR.EXIMKA'
      FixedChar = True
      Size = 3
    end
    object PedParQTDCTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTDCTA'
      Origin = 'ISADE.PEDPAR.QTDCTA'
    end
    object PedParFLGIMP: TStringField
      DisplayWidth = 3
      FieldName = 'FLGIMP'
      Origin = 'ISADE.PEDPAR.FLGIMP'
      FixedChar = True
      Size = 3
    end
    object PedParTIPCOM: TStringField
      DisplayWidth = 20
      FieldName = 'TIPCOM'
      Origin = 'ISADE.PEDPAR.TIPCOM'
      FixedChar = True
    end
    object PedParEXIVEN: TStringField
      DisplayWidth = 3
      FieldName = 'EXIVEN'
      Origin = 'ISADE.PEDPAR.EXIVEN'
      FixedChar = True
      Size = 3
    end
    object PedParEXICOM: TStringField
      DisplayWidth = 3
      FieldName = 'EXICOM'
      Origin = 'ISADE.PEDPAR.EXICOM'
      FixedChar = True
      Size = 3
    end
    object PedParCONTRA: TStringField
      DisplayWidth = 3
      FieldName = 'CONTRA'
      Origin = 'ISADE.PEDPAR.CONTRA'
      FixedChar = True
      Size = 3
    end
    object PedParEXIFOR: TStringField
      DisplayWidth = 3
      FieldName = 'EXIFOR'
      Origin = 'ISADE.PEDPAR.EXIFOR'
      FixedChar = True
      Size = 3
    end
    object PedParEXICLI: TStringField
      DisplayWidth = 3
      FieldName = 'EXICLI'
      Origin = 'ISADE.PEDPAR.EXICLI'
      FixedChar = True
      Size = 3
    end
    object PedParTIPPED: TStringField
      DisplayWidth = 16
      FieldName = 'TIPPED'
      Origin = 'ISADE.PEDPAR.TIPPED'
      FixedChar = True
      Size = 16
    end
    object PedParFLGCOD: TStringField
      DisplayWidth = 3
      FieldName = 'FLGCOD'
      Origin = 'ISADE.PEDPAR.FLGCOD'
      FixedChar = True
      Size = 3
    end
    object PedParFLGIPI: TStringField
      DisplayWidth = 3
      FieldName = 'FLGIPI'
      Origin = 'ISADE.PEDPAR.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object PedParIMPREF: TStringField
      DisplayWidth = 3
      FieldName = 'IMPREF'
      Origin = 'ISADE.PEDPAR.IMPREF'
      FixedChar = True
      Size = 3
    end
    object PedParFLGCOM: TStringField
      DisplayWidth = 3
      FieldName = 'FLGCOM'
      Origin = 'ISADE.PEDPAR.FLGCOM'
      OnChange = PedParFLGCOMChange
      FixedChar = True
      Size = 3
    end
    object PedParIMPTRA: TStringField
      DisplayWidth = 3
      FieldName = 'IMPTRA'
      Origin = 'ISADE.PEDPAR.IMPTRA'
      FixedChar = True
      Size = 3
    end
    object PedParIMPMRC: TStringField
      DisplayWidth = 3
      FieldName = 'IMPMRC'
      Origin = 'ISADE.PEDPAR.IMPMRC'
      FixedChar = True
      Size = 3
    end
    object PedParIMPOBS: TStringField
      DisplayWidth = 3
      FieldName = 'IMPOBS'
      Origin = 'ISADE.PEDPAR.IMPOBS'
      FixedChar = True
      Size = 3
    end
    object PedParIMPFIN: TStringField
      DisplayWidth = 3
      FieldName = 'IMPFIN'
      Origin = 'ISADE.PEDPAR.IMPFIN'
      FixedChar = True
      Size = 3
    end
    object PedParUSADEC: TStringField
      DisplayWidth = 3
      FieldName = 'USADEC'
      Origin = 'ISADE.PEDPAR.USADEC'
      FixedChar = True
      Size = 3
    end
    object PedParLANMAI: TStringField
      DisplayWidth = 3
      FieldName = 'LANMAI'
      Origin = 'ISADE.PEDPAR.LANMAI'
      FixedChar = True
      Size = 3
    end
    object PedParIMPLOC: TStringField
      DisplayWidth = 3
      FieldName = 'IMPLOC'
      Origin = 'ISADE.PEDPAR.IMPLOC'
      FixedChar = True
      Size = 3
    end
    object PedParVEREST: TStringField
      DisplayWidth = 3
      FieldName = 'VEREST'
      Origin = 'ISADE.PEDPAR.VEREST'
      FixedChar = True
      Size = 3
    end
    object PedParFLGORD: TStringField
      DisplayWidth = 3
      FieldName = 'FLGORD'
      Origin = 'ISADE.PEDPAR.FLGORD'
      FixedChar = True
      Size = 3
    end
    object PedParBLOCRE: TStringField
      DisplayWidth = 3
      FieldName = 'BLOCRE'
      Origin = 'ISADE.PEDPAR.BLOCRE'
      FixedChar = True
      Size = 3
    end
    object PedParLIBFIN: TStringField
      DisplayWidth = 3
      FieldName = 'LIBFIN'
      Origin = 'ISADE.PEDPAR.LIBFIN'
      FixedChar = True
      Size = 3
    end
    object PedParLIBCAD: TStringField
      DisplayWidth = 3
      FieldName = 'LIBCAD'
      Origin = 'ISADE.PEDPAR.LIBCAD'
      FixedChar = True
      Size = 3
    end
    object PedParQTLITE: TIntegerField
      DisplayWidth = 10
      FieldName = 'QTLITE'
      Origin = 'ISADE.PEDPAR.QTLITE'
      DisplayFormat = '###0'
    end
    object PedParPERPRO: TStringField
      DisplayWidth = 3
      FieldName = 'PERPRO'
      Origin = 'ISADE.PEDPAR.PERPRO'
      FixedChar = True
      Size = 3
    end
    object PedParPER_PROG: TSmallintField
      DisplayWidth = 10
      FieldName = 'PER_PROG'
      Origin = 'ISADE.PEDPAR.PER_PROG'
    end
    object PedParCONS_CAD: TSmallintField
      DisplayWidth = 10
      FieldName = 'CONS_CAD'
      Origin = 'ISADE.PEDPAR.CONS_CAD'
    end
    object PedParLIB_FINANC: TSmallintField
      DisplayWidth = 10
      FieldName = 'LIB_FINANC'
      Origin = 'ISADE.PEDPAR.LIB_FINANC'
    end
    object PedParSEP_ESTOQUE: TSmallintField
      DisplayWidth = 10
      FieldName = 'SEP_ESTOQUE'
      Origin = 'ISADE.PEDPAR.SEP_ESTOQUE'
    end
    object PedParLIB_FATURA: TSmallintField
      DisplayWidth = 10
      FieldName = 'LIB_FATURA'
      Origin = 'ISADE.PEDPAR.LIB_FATURA'
    end
    object PedParCONF_PAG: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONF_PAG'
      Origin = 'ISADE.PEDPAR.CONF_PAG'
    end
    object PedParFRETEVENDEDOR: TSmallintField
      DisplayWidth = 10
      FieldName = 'FRETEVENDEDOR'
      Origin = 'ISADE.PEDPAR.FRETEVENDEDOR'
    end
    object PedParLIBERA_VEN: TStringField
      DisplayWidth = 1
      FieldName = 'LIBERA_VEN'
      Origin = 'ISADE.PEDPAR.LIBERA_VEN'
      FixedChar = True
      Size = 1
    end
    object PedParLIB_VEN_OUTROS: TSmallintField
      DisplayWidth = 10
      FieldName = 'LIB_VEN_OUTROS'
      Origin = 'ISADE.PEDPAR.LIB_VEN_OUTROS'
    end
    object PedParCOM_MANUAL: TSmallintField
      DisplayWidth = 10
      FieldName = 'COM_MANUAL'
      Origin = 'ISADE.PEDPAR.COM_MANUAL'
    end
    object PedParMSG_COTACAO: TMemoField
      DisplayWidth = 10
      FieldName = 'MSG_COTACAO'
      Origin = 'ISADE.PEDPAR.MSG_COTACAO'
      BlobType = ftMemo
      Size = 500
    end
    object PedParTIP_IMP_PED: TStringField
      DisplayWidth = 15
      FieldName = 'TIP_IMP_PED'
      Size = 15
    end
    object PedParTRAVA_EMBALAGEM: TStringField
      DisplayWidth = 3
      FieldName = 'TRAVA_EMBALAGEM'
      Origin = 'ISADE.PEDPAR.TRAVA_EMBALAGEM'
      FixedChar = True
      Size = 3
    end
    object PedParIMPREFPED: TStringField
      DisplayWidth = 3
      FieldName = 'IMPREFPED'
      Origin = 'ISADE.PEDPAR.IMPREFPED'
      FixedChar = True
      Size = 3
    end
    object PedParTRAVA_EMBALAGEMCHAR: TStringField
      DisplayWidth = 30
      FieldName = 'TRAVA_EMBALAGEMCHAR'
      Origin = 'ISADE.PEDPAR.TRAVA_EMBALAGEMCHAR'
      Size = 30
    end
    object PedParIMPREFDEP: TStringField
      DisplayWidth = 3
      FieldName = 'IMPREFDEP'
      Origin = 'ISADE.PEDPAR.IMPREFDEP'
      FixedChar = True
      Size = 3
    end
    object PedParOBRIGA_VER_OBS_CLI: TStringField
      DisplayWidth = 1
      FieldName = 'OBRIGA_VER_OBS_CLI'
      Origin = 'ISADE.PEDPAR.OBRIGA_VER_OBS_CLI'
      FixedChar = True
      Size = 1
    end
    object PedParORDENA_VIASEP_LOC: TStringField
      DisplayWidth = 1
      FieldName = 'ORDENA_VIASEP_LOC'
      Origin = 'ISADE.PEDPAR.ORDENA_VIASEP_LOC'
      FixedChar = True
      Size = 1
    end
    object PedParVIA_SEP_GRAF: TStringField
      DisplayWidth = 1
      FieldName = 'VIA_SEP_GRAF'
      Origin = 'ISADE.PEDPAR.VIA_SEP_GRAF'
      FixedChar = True
      Size = 1
    end
    object PedParCLISEMCAD: TStringField
      DisplayWidth = 3
      FieldName = 'CLISEMCAD'
      Origin = 'ISADE.PEDPAR.CLISEMCAD'
      FixedChar = True
      Size = 3
    end
    object PedParREFINT: TStringField
      DisplayWidth = 1
      FieldName = 'REFINT'
      Origin = 'ISADE.PEDPAR.REFINT'
      FixedChar = True
      Size = 1
    end
    object PedParOBRLIBPED: TStringField
      DisplayWidth = 1
      FieldName = 'OBRLIBPED'
      Origin = 'ISADE.PEDPAR.OBRLIBPED'
      FixedChar = True
      Size = 1
    end
    object PedParCONSCLI: TSmallintField
      DisplayWidth = 10
      FieldName = 'CONSCLI'
      Origin = 'ISADE.PEDPAR.CONSCLI'
    end
    object PedParIMPSITEMAIL: TSmallintField
      DisplayWidth = 10
      FieldName = 'IMPSITEMAIL'
      Origin = 'ISADE.PEDPAR.IMPSITEMAIL'
    end
    object PedParREP_ITE: TSmallintField
      DisplayWidth = 10
      FieldName = 'REP_ITE'
    end
    object PedParALT_DESC_PROD: TStringField
      DisplayWidth = 1
      FieldName = 'ALT_DESC_PROD'
      FixedChar = True
      Size = 1
    end
    object PedParIMPPARTNUMBER: TStringField
      DisplayWidth = 3
      FieldName = 'IMPPARTNUMBER'
      FixedChar = True
      Size = 3
    end
    object PedParCOT_COMP_RED: TIntegerField
      DisplayWidth = 10
      FieldName = 'COT_COMP_RED'
    end
    object PedParMVAMAX: TFloatField
      DisplayWidth = 10
      FieldName = 'MVAMAX'
    end
    object PedParVALMAX: TFloatField
      DisplayWidth = 10
      FieldName = 'VALMAX'
    end
    object PedParACRMAX: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRMAX'
    end
    object PedParOP_PADRAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'OP_PADRAO'
    end
    object PedParDECIMAIS_QTD: TStringField
      DisplayWidth = 1
      FieldName = 'DECIMAIS_QTD'
      FixedChar = True
      Size = 1
    end
    object PedParDECIMAIS_VALOR: TStringField
      DisplayWidth = 1
      FieldName = 'DECIMAIS_VALOR'
      FixedChar = True
      Size = 1
    end
    object PedParPED_BLOC_NOVO: TStringField
      DisplayWidth = 1
      FieldName = 'PED_BLOC_NOVO'
      FixedChar = True
      Size = 1
    end
    object PedParID_FRETE_PADRAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FRETE_PADRAO'
    end
    object PedParFLGATD: TStringField
      DisplayWidth = 3
      FieldName = 'FLGATD'
      FixedChar = True
      Size = 3
    end
    object PedParIMP_DEPOSITO_PEDIDO: TStringField
      DisplayWidth = 3
      FieldName = 'IMP_DEPOSITO_PEDIDO'
      FixedChar = True
      Size = 3
    end
    object PedParFLG_ACUMULA_IMP: TStringField
      DisplayWidth = 3
      FieldName = 'FLG_ACUMULA_IMP'
      FixedChar = True
      Size = 3
    end
    object PedParLIMITE_INATIVO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIMITE_INATIVO'
    end
    object PedParIMP_PARCELA_PEDIDO: TSmallintField
      DisplayWidth = 10
      FieldName = 'IMP_PARCELA_PEDIDO'
    end
    object PedParQTD_DEC_VIA_SEP: TSmallintField
      DisplayWidth = 10
      FieldName = 'QTD_DEC_VIA_SEP'
    end
    object PedParIMP_MARCA_PEDIDO_COTACAO: TSmallintField
      DisplayWidth = 10
      FieldName = 'IMP_MARCA_PEDIDO_COTACAO'
    end
    object PedParSUPRIMIR_ZEROS: TSmallintField
      DisplayWidth = 10
      FieldName = 'SUPRIMIR_ZEROS'
    end
    object PedParPERMITIR_QTD_FRACIONADA: TIntegerField
      DisplayWidth = 10
      FieldName = 'PERMITIR_QTD_FRACIONADA'
    end
    object PedParCONCATENAR_QTD_EMB_VIA_SEP: TSmallintField
      DisplayWidth = 10
      FieldName = 'CONCATENAR_QTD_EMB_VIA_SEP'
    end
    object PedParORDEM_VIASEPLOC: TStringField
      DisplayWidth = 1
      FieldName = 'ORDEM_VIASEPLOC'
      FixedChar = True
      Size = 1
    end
    object PedParTIPO_IMPRESSAO_VIASEP: TStringField
      DisplayWidth = 20
      FieldName = 'TIPO_IMPRESSAO_VIASEP'
    end
    object PedParDUP_ITEM_PEDIDO: TStringField
      DisplayWidth = 3
      FieldName = 'DUP_ITEM_PEDIDO'
      FixedChar = True
      Size = 3
    end
    object PedParTOTALIZAQTDVIASEP: TStringField
      DisplayWidth = 1
      FieldName = 'TOTALIZAQTDVIASEP'
      FixedChar = True
      Size = 1
    end
    object PedParINTIMPPED: TStringField
      DisplayWidth = 1
      FieldName = 'INTIMPPED'
      Origin = 'ISADE.PEDPAR.INTIMPPED'
      FixedChar = True
      Size = 1
    end
    object PedParVALPARCELA: TStringField
      DisplayWidth = 3
      FieldName = 'VALPARCELA'
      Origin = 'ISADE.PEDPAR.VALPARCELA'
      FixedChar = True
      Size = 3
    end
    object PedParBLOQUEIA_LIMITE_CREDITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'BLOQUEIA_LIMITE_CREDITO'
      Origin = 'ISADE.PEDPAR.BLOQUEIA_LIMITE_CREDITO'
    end
    object PedParIMPQTDVIASEP: TStringField
      DisplayWidth = 1
      FieldName = 'IMPQTDVIASEP'
      Origin = 'ISADE.PEDPAR.IMPQTDVIASEP'
      FixedChar = True
      Size = 1
    end
    object PedParIMPPEDCAT_CUSTO_MK: TStringField
      DisplayWidth = 1
      FieldName = 'IMPPEDCAT_CUSTO_MK'
      Origin = 'ISADE.PEDPAR.IMPPEDCAT_CUSTO_MK'
      FixedChar = True
      Size = 1
    end
    object PedParRES_ITEM_NAOCONCLUIDO: TStringField
      DisplayWidth = 1
      FieldName = 'RES_ITEM_NAOCONCLUIDO'
      Origin = 'ISADE.PEDPAR.RES_ITEM_NAOCONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object PedParMOSTRA_VALOR_EXPEDICAO: TStringField
      DisplayWidth = 1
      FieldName = 'MOSTRA_VALOR_EXPEDICAO'
      Origin = 'ISADE.PEDPAR.MOSTRA_VALOR_EXPEDICAO'
      FixedChar = True
      Size = 1
    end
    object PedParFLG_OBRIGA_TRANS: TStringField
      DisplayWidth = 3
      FieldName = 'FLG_OBRIGA_TRANS'
      Origin = 'ISADE.PEDPAR.FLG_OBRIGA_TRANS'
      FixedChar = True
      Size = 3
    end
    object PedParFLG_OBS_FAT: TStringField
      DisplayWidth = 3
      FieldName = 'FLG_OBS_FAT'
      Origin = 'ISADE.PEDPAR.FLG_OBS_FAT'
      FixedChar = True
      Size = 3
    end
    object PedParTIPPAG: TStringField
      DisplayWidth = 28
      FieldName = 'TIPPAG'
      Origin = 'ISADE.PEDPAR.TIPPAG'
      Size = 28
    end
    object PedParFLGBLOQCTA_SEMCLI: TStringField
      DisplayWidth = 1
      FieldName = 'FLGBLOQCTA_SEMCLI'
      Origin = 'ISADE.PEDPAR.FLGBLOQCTA_SEMCLI'
      FixedChar = True
      Size = 1
    end
    object PedParFLGATIVO: TSmallintField
      DisplayWidth = 10
      FieldName = 'FLGATIVO'
      Origin = 'ISADE.PEDPAR.FLGATIVO'
    end
    object PedParORDEM_IMPRESSAO: TStringField
      DisplayWidth = 30
      FieldName = 'ORDEM_IMPRESSAO'
      Origin = 'ISADE.PEDPAR.ORDEM_IMPRESSAO'
      FixedChar = True
      Size = 30
    end
    object PedParSUPRIMIR_QTDE_EMB: TStringField
      FieldName = 'SUPRIMIR_QTDE_EMB'
      Origin = 'ISADE.PEDPAR.SUPRIMIR_QTDE_EMB'
      FixedChar = True
      Size = 1
    end
  end
  object DsPar: TDataSource
    DataSet = PedPar
    Left = 647
    Top = 457
  end
  object UpPar: TUpdateSQL
    ModifySQL.Strings = (
      'update PEDPAR'
      'set'
      '  PEDDSC = :PEDDSC,'
      '  TIPDSC = :TIPDSC,'
      '  FLGBLQ = :FLGBLQ,'
      '  FLGATR = :FLGATR,'
      '  FLGEXP = :FLGEXP,'
      '  FLGCRE = :FLGCRE,'
      '  FLGDSC = :FLGDSC,'
      '  FLGRES = :FLGRES,'
      '  TIPRES = :TIPRES,'
      '  PERCST = :PERCST,'
      '  EXIMKA = :EXIMKA,'
      '  QTDCTA = :QTDCTA,'
      '  FLGIMP = :FLGIMP,'
      '  TIPCOM = :TIPCOM,'
      '  EXIVEN = :EXIVEN,'
      '  CONTRA = :CONTRA,'
      '  EXICOM = :EXICOM,'
      '  EXIFOR = :EXIFOR,'
      '  EXICLI = :EXICLI,'
      '  TIPPED = :TIPPED,'
      '  FLGCOD = :FLGCOD,'
      '  FLGIPI = :FLGIPI,'
      '  FLGCOM = :FLGCOM,'
      '  IMPREF = :IMPREF,'
      '  IMPMRC = :IMPMRC,'
      '  IMPOBS = :IMPOBS,'
      '  IMPTRA = :IMPTRA,'
      '  IMPFIN = :IMPFIN,'
      '  USADEC = :USADEC,'
      '  LANMAI = :LANMAI,'
      '  IMPLOC = :IMPLOC,'
      '  FLGORD = :FLGORD,'
      '  LIBFIN = :LIBFIN,'
      '  VEREST = :VEREST,'
      '  LIBCAD = :LIBCAD,'
      '  PERPRO = :PERPRO,'
      '  BLOCRE = :BLOCRE,'
      '  QTLITE = :QTLITE,'
      '  PER_PROG = :PER_PROG,'
      '  CONS_CAD = :CONS_CAD,'
      '  LIB_FINANC = :LIB_FINANC,'
      '  SEP_ESTOQUE = :SEP_ESTOQUE,'
      '  LIB_FATURA = :LIB_FATURA,'
      '  CONF_PAG = :CONF_PAG,'
      '  FRETEVENDEDOR = :FRETEVENDEDOR,'
      '  LIBERA_VEN = :LIBERA_VEN,'
      '  LIB_VEN_OUTROS = :LIB_VEN_OUTROS,'
      '  COM_MANUAL = :COM_MANUAL,'
      '  MSG_COTACAO = :MSG_COTACAO,'
      '  TIP_IMP_PED = :TIP_IMP_PED,'
      '  TRAVA_EMBALAGEM = :TRAVA_EMBALAGEM,'
      '  TRAVA_EMBALAGEMCHAR = :TRAVA_EMBALAGEMCHAR,'
      '  IMPREFPED = :IMPREFPED,'
      '  IMPREFDEP = :IMPREFDEP,'
      '  OBRIGA_VER_OBS_CLI = :OBRIGA_VER_OBS_CLI,'
      '  ORDENA_VIASEP_LOC = :ORDENA_VIASEP_LOC,'
      '  VIA_SEP_GRAF = :VIA_SEP_GRAF,'
      '  CLISEMCAD = :CLISEMCAD,'
      '  OBRLIBPED = :OBRLIBPED,'
      '  REFINT = :REFINT,'
      '  CONSCLI = :CONSCLI,'
      '  IMPSITEMAIL = :IMPSITEMAIL,'
      '  REP_ITE = :REP_ITE,'
      '  ALT_DESC_PROD = :ALT_DESC_PROD,'
      '  INTIMPPED = :INTIMPPED,'
      '  IMPPARTNUMBER = :IMPPARTNUMBER,'
      '  VALPARCELA = :VALPARCELA,'
      '  COT_COMP_RED = :COT_COMP_RED,'
      '  BLOQUEIA_LIMITE_CREDITO = :BLOQUEIA_LIMITE_CREDITO,'
      '  MVAMAX = :MVAMAX,'
      '  VALMAX = :VALMAX,'
      '  ACRMAX = :ACRMAX,'
      '  IMPQTDVIASEP = :IMPQTDVIASEP,'
      '  IMPPEDCAT_CUSTO_MK = :IMPPEDCAT_CUSTO_MK,'
      '  OP_PADRAO = :OP_PADRAO,'
      '  PED_BLOC_NOVO = :PED_BLOC_NOVO,'
      '  DECIMAIS_QTD = :DECIMAIS_QTD,'
      '  DECIMAIS_VALOR = :DECIMAIS_VALOR,'
      '  RES_ITEM_NAOCONCLUIDO = :RES_ITEM_NAOCONCLUIDO,'
      '  MOSTRA_VALOR_EXPEDICAO = :MOSTRA_VALOR_EXPEDICAO,'
      '  ID_FRETE_PADRAO = :ID_FRETE_PADRAO,'
      '  FLGATD = :FLGATD,'
      '  IMP_DEPOSITO_PEDIDO = :IMP_DEPOSITO_PEDIDO,'
      '  FLG_OBRIGA_TRANS = :FLG_OBRIGA_TRANS,'
      '  FLG_OBS_FAT = :FLG_OBS_FAT,'
      '  FLG_ACUMULA_IMP = :FLG_ACUMULA_IMP,'
      '  LIMITE_INATIVO = :LIMITE_INATIVO,'
      '  TIPPAG = :TIPPAG,'
      '  IMP_PARCELA_PEDIDO = :IMP_PARCELA_PEDIDO,'
      '  FLGBLOQCTA_SEMCLI = :FLGBLOQCTA_SEMCLI,'
      '  QTD_DEC_VIA_SEP = :QTD_DEC_VIA_SEP,'
      '  IMP_MARCA_PEDIDO_COTACAO = :IMP_MARCA_PEDIDO_COTACAO,'
      '  SUPRIMIR_ZEROS = :SUPRIMIR_ZEROS,'
      '  PERMITIR_QTD_FRACIONADA = :PERMITIR_QTD_FRACIONADA,'
      '  CONCATENAR_QTD_EMB_VIA_SEP = :CONCATENAR_QTD_EMB_VIA_SEP,'
      '  FLGATIVO = :FLGATIVO,'
      '  ORDEM_IMPRESSAO = :ORDEM_IMPRESSAO,'
      '  ORDEM_VIASEPLOC = :ORDEM_VIASEPLOC,'
      '  TIPO_IMPRESSAO_VIASEP = :TIPO_IMPRESSAO_VIASEP,'
      '  DUP_ITEM_PEDIDO = :DUP_ITEM_PEDIDO,'
      '  TOTALIZAQTDVIASEP = :TOTALIZAQTDVIASEP,'
      '  SUPRIMIR_QTDE_EMB = :SUPRIMIR_QTDE_EMB'
      'where'
      '  PEDDSC = :OLD_PEDDSC')
    InsertSQL.Strings = (
      'insert into PEDPAR'
      
        '  (PEDDSC, TIPDSC, FLGBLQ, FLGATR, FLGEXP, FLGCRE, FLGDSC, FLGRE' +
        'S, TIPRES, '
      
        '   PERCST, EXIMKA, QTDCTA, FLGIMP, TIPCOM, EXIVEN, CONTRA, EXICO' +
        'M, EXIFOR, '
      
        '   EXICLI, TIPPED, FLGCOD, FLGIPI, FLGCOM, IMPREF, IMPMRC, IMPOB' +
        'S, IMPTRA, '
      
        '   IMPFIN, USADEC, LANMAI, IMPLOC, FLGORD, LIBFIN, VEREST, LIBCA' +
        'D, PERPRO, '
      
        '   BLOCRE, QTLITE, PER_PROG, CONS_CAD, LIB_FINANC, SEP_ESTOQUE, ' +
        'LIB_FATURA, '
      
        '   CONF_PAG, FRETEVENDEDOR, LIBERA_VEN, LIB_VEN_OUTROS, COM_MANU' +
        'AL, MSG_COTACAO, '
      
        '   TIP_IMP_PED, TRAVA_EMBALAGEM, TRAVA_EMBALAGEMCHAR, IMPREFPED,' +
        ' IMPREFDEP, '
      
        '   OBRIGA_VER_OBS_CLI, ORDENA_VIASEP_LOC, VIA_SEP_GRAF, CLISEMCA' +
        'D, OBRLIBPED, '
      
        '   REFINT, CONSCLI, IMPSITEMAIL, REP_ITE, ALT_DESC_PROD, INTIMPP' +
        'ED, IMPPARTNUMBER, '
      
        '   VALPARCELA, COT_COMP_RED, BLOQUEIA_LIMITE_CREDITO, MVAMAX, VA' +
        'LMAX, ACRMAX, '
      
        '   IMPQTDVIASEP, IMPPEDCAT_CUSTO_MK, OP_PADRAO, PED_BLOC_NOVO, D' +
        'ECIMAIS_QTD, '
      
        '   DECIMAIS_VALOR, RES_ITEM_NAOCONCLUIDO, MOSTRA_VALOR_EXPEDICAO' +
        ', ID_FRETE_PADRAO, '
      
        '   FLGATD, IMP_DEPOSITO_PEDIDO, FLG_OBRIGA_TRANS, FLG_OBS_FAT, F' +
        'LG_ACUMULA_IMP, '
      
        '   LIMITE_INATIVO, TIPPAG, IMP_PARCELA_PEDIDO, FLGBLOQCTA_SEMCLI' +
        ', QTD_DEC_VIA_SEP, '
      
        '   IMP_MARCA_PEDIDO_COTACAO, SUPRIMIR_ZEROS, PERMITIR_QTD_FRACIO' +
        'NADA, CONCATENAR_QTD_EMB_VIA_SEP, '
      
        '   FLGATIVO, ORDEM_IMPRESSAO, ORDEM_VIASEPLOC, TIPO_IMPRESSAO_VI' +
        'ASEP, DUP_ITEM_PEDIDO, '
      '   TOTALIZAQTDVIASEP, SUPRIMIR_QTDE_EMB)'
      'values'
      
        '  (:PEDDSC, :TIPDSC, :FLGBLQ, :FLGATR, :FLGEXP, :FLGCRE, :FLGDSC' +
        ', :FLGRES, '
      
        '   :TIPRES, :PERCST, :EXIMKA, :QTDCTA, :FLGIMP, :TIPCOM, :EXIVEN' +
        ', :CONTRA, '
      
        '   :EXICOM, :EXIFOR, :EXICLI, :TIPPED, :FLGCOD, :FLGIPI, :FLGCOM' +
        ', :IMPREF, '
      
        '   :IMPMRC, :IMPOBS, :IMPTRA, :IMPFIN, :USADEC, :LANMAI, :IMPLOC' +
        ', :FLGORD, '
      
        '   :LIBFIN, :VEREST, :LIBCAD, :PERPRO, :BLOCRE, :QTLITE, :PER_PR' +
        'OG, :CONS_CAD, '
      
        '   :LIB_FINANC, :SEP_ESTOQUE, :LIB_FATURA, :CONF_PAG, :FRETEVEND' +
        'EDOR, :LIBERA_VEN, '
      
        '   :LIB_VEN_OUTROS, :COM_MANUAL, :MSG_COTACAO, :TIP_IMP_PED, :TR' +
        'AVA_EMBALAGEM, '
      
        '   :TRAVA_EMBALAGEMCHAR, :IMPREFPED, :IMPREFDEP, :OBRIGA_VER_OBS' +
        '_CLI, :ORDENA_VIASEP_LOC, '
      
        '   :VIA_SEP_GRAF, :CLISEMCAD, :OBRLIBPED, :REFINT, :CONSCLI, :IM' +
        'PSITEMAIL, '
      
        '   :REP_ITE, :ALT_DESC_PROD, :INTIMPPED, :IMPPARTNUMBER, :VALPAR' +
        'CELA, :COT_COMP_RED, '
      
        '   :BLOQUEIA_LIMITE_CREDITO, :MVAMAX, :VALMAX, :ACRMAX, :IMPQTDV' +
        'IASEP, '
      
        '   :IMPPEDCAT_CUSTO_MK, :OP_PADRAO, :PED_BLOC_NOVO, :DECIMAIS_QT' +
        'D, :DECIMAIS_VALOR, '
      
        '   :RES_ITEM_NAOCONCLUIDO, :MOSTRA_VALOR_EXPEDICAO, :ID_FRETE_PA' +
        'DRAO, :FLGATD, '
      
        '   :IMP_DEPOSITO_PEDIDO, :FLG_OBRIGA_TRANS, :FLG_OBS_FAT, :FLG_A' +
        'CUMULA_IMP, '
      
        '   :LIMITE_INATIVO, :TIPPAG, :IMP_PARCELA_PEDIDO, :FLGBLOQCTA_SE' +
        'MCLI, :QTD_DEC_VIA_SEP, '
      
        '   :IMP_MARCA_PEDIDO_COTACAO, :SUPRIMIR_ZEROS, :PERMITIR_QTD_FRA' +
        'CIONADA, '
      
        '   :CONCATENAR_QTD_EMB_VIA_SEP, :FLGATIVO, :ORDEM_IMPRESSAO, :OR' +
        'DEM_VIASEPLOC, '
      
        '   :TIPO_IMPRESSAO_VIASEP, :DUP_ITEM_PEDIDO, :TOTALIZAQTDVIASEP,' +
        ' :SUPRIMIR_QTDE_EMB)')
    DeleteSQL.Strings = (
      'delete from PEDPAR'
      'where'
      '  PEDDSC = :OLD_PEDDSC')
    Left = 619
    Top = 488
  end
  object dsINDIC_PRES: TDataSource
    DataSet = INDIC_PRES
    Left = 648
    Top = 409
  end
  object INDIC_PRES: TQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select pr.id, pr.id || '#39' - '#39' || pr.situacao as SITUACAO from IND' +
        'IC_PRESENCA pr')
    Left = 616
    Top = 409
    object INDIC_PRESID: TIntegerField
      FieldName = 'ID'
      Origin = 'ISADE.INDIC_PRESENCA.ID'
    end
    object INDIC_PRESSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'ISADE.INDIC_PRESENCA.SITUACAO'
      Size = 50
    end
  end
  object TIPFRT: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select frt.id,CAST(frt.id as VARCHAR(2))||'#39' - '#39' ||frt.descfrt no' +
        'mfrt FROM TIPFRT frt')
    UniDirectional = True
    ValidateWithMask = True
    Left = 437
    Top = 363
    object TIPFRTID: TIntegerField
      FieldName = 'ID'
    end
    object TIPFRTNOMFRT: TStringField
      FieldName = 'NOMFRT'
      Size = 65
    end
  end
  object dsTipFrt: TDataSource
    DataSet = TIPFRT
    Left = 467
    Top = 363
  end
end
