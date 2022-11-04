inherited fmManCt2: TfmManCt2
  Left = 227
  Top = 54
  Caption = 'Cotações'
  ClientHeight = 630
  ClientWidth = 1007
  Font.Color = clNavy
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 637
    Top = 649
    Width = 149
    Height = 16
    Caption = 'F12-Continuar ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label53: TLabel
    Left = 564
    Top = 7
    Width = 49
    Height = 14
    Caption = 'Margem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pnItem: TPanel
    Left = 0
    Top = 394
    Width = 1007
    Height = 217
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 2
    OnExit = pnItemExit
    object Label57: TLabel
      Left = 604
      Top = 30
      Width = 90
      Height = 14
      Caption = 'Margem Item :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 483
      Top = 30
      Width = 40
      Height = 14
      Caption = 'Itens :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 649
      Top = 47
      Width = 51
      Height = 28
      Caption = 'Item de Compra:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object Label43: TLabel
      Left = 481
      Top = 47
      Width = 65
      Height = 28
      Caption = 'Pedido de Compra:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object EdTotMk2: TDBText
      Left = 699
      Top = 29
      Width = 89
      Height = 17
      Alignment = taRightJustify
      Color = clBtnFace
      DataField = 'TOTREN'
      DataSource = DsCt2
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label90: TLabel
      Left = 1156
      Top = 77
      Width = 31
      Height = 14
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label15: TLabel
      Left = 1156
      Top = 98
      Width = 44
      Height = 14
      Caption = 'Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label16: TLabel
      Left = 1156
      Top = 119
      Width = 79
      Height = 14
      Caption = 'Outras Desp.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object EdCbaCt2: TdxDBColorEdit
      Left = -1
      Top = 1
      Width = 183
      Hint = 'Código de Barras do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 0
      Visible = False
      OnEnter = EdCodProEnter
      OnExit = EdCbaCt2Exit
      OnKeyDown = EdCodProKeyDown
      OnKeyPress = EdCodEmpKeyPress
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CBACT2'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
    end
    object EdCodGru: TdxDBColorEdit
      Left = 23
      Top = 1
      Width = 41
      Hint = 'Grupo do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 2
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODGRU'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodSub: TdxDBColorEdit
      Left = 63
      Top = 1
      Width = 60
      Hint = 'Sub-Grupo do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 3
      OnEnter = EdCodGruEnter
      OnExit = EdCodSubExit
      OnKeyDown = EdCodSubKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODSUB'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdCodPro: TdxDBColorEdit
      Left = 122
      Top = 1
      Width = 60
      Hint = 'Código do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 4
      OnEnter = EdCodProEnter
      OnExit = EdCodProExit
      OnKeyDown = EdCodProKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODPRO'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdDscCt2: TdxDBColorCurrencyEdit
      Left = 564
      Top = 1
      Width = 82
      Hint = 'Percentual de Desconto para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 10
      OnEnter = EdDscCt2Enter
      OnExit = EdDscCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'DSCCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      MaxValue = 99.99
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 17
    end
    object EdVlqCt2: TdxDBColorCurrencyEdit
      Left = 727
      Top = 1
      Width = 87
      Hint = 'Preço Liquido Praticado para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 12
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLQCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdTotCt2: TdxDBColorCurrencyEdit
      Left = 880
      Top = 1
      Width = 126
      Hint = 'Total do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 14
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdQtpCt2: TdxDBColorCurrencyEdit
      Left = 181
      Top = 1
      Width = 83
      Hint = 'Quantidade Pedida do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 5
      OnEnter = EdQtpCt2Enter
      OnExit = EdQtpCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'QTPCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0000'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdVluCt2: TdxDBColorCurrencyEdit
      Left = 263
      Top = 1
      Width = 92
      Hint = 'Preço Praticado para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 6
      OnEnter = EdVluCt2Enter
      OnExit = EdVluCt2Exit
      OnKeyDown = EdVluCt2KeyDown
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLUCT2'
      DataSource = DsCt2
      OnChange = EdVluCt2Change
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdObsCt2: TdxDBColorEdit
      Left = 2
      Top = 50
      Width = 473
      Hint = 'Cliente'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 16
      TabStop = False
      OnEnter = EdDscCt2Enter
      OnExit = EdObsCt2Exit
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'OBSCT2'
      DataSource = DsCt2
      MaxLength = 70
      ReadOnly = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 67
    end
    object EdDesCt2: TdxDBColorEdit
      Left = 2
      Top = 25
      Width = 473
      Hint = 'Cliente'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 15
      TabStop = False
      OnEnter = EdDscCt2Enter
      OnExit = EdDesCt2Exit
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DESCT2'
      DataSource = DsCt2
      ReadOnly = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 65
    end
    object pnNroCt2: TPanel
      Left = 525
      Top = 30
      Width = 73
      Height = 14
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = '0000/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
    end
    object GroupBox6: TGroupBox
      Left = 792
      Top = 24
      Width = 212
      Height = 119
      Caption = 'Totais'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      object Label8: TLabel
        Left = 4
        Top = 15
        Width = 57
        Height = 14
        Caption = 'Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 4
        Top = 57
        Width = 70
        Height = 14
        Caption = 'ICMS Subs.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 4
        Top = 37
        Width = 18
        Height = 14
        Caption = 'IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label63: TLabel
        Left = 4
        Top = 99
        Width = 97
        Height = 14
        Caption = 'Total do Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 4
        Top = 78
        Width = 55
        Height = 14
        Caption = 'Desc.Inc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdTotRes: TdxDBColorCurrencyEdit
        Left = 105
        Top = 11
        Width = 102
        Hint = 'Total do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTITE'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
        Left = 105
        Top = 53
        Width = 102
        Hint = 'Total de ICMS Substituição'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTSUB'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit
        Left = 105
        Top = 32
        Width = 102
        Hint = 'Total da Nota'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTIPI'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit
        Left = 105
        Top = 95
        Width = 102
        Hint = 'Total de ICMS Substituição'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTGER'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit25: TdxDBColorCurrencyEdit
        Left = 105
        Top = 74
        Width = 102
        Hint = 'Total de ICMS Substituição'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTDESCINC'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 22
        StoredValues = 65
      end
    end
    object GroupBox5: TGroupBox
      Left = 553
      Top = 142
      Width = 239
      Height = 68
      Caption = 'COFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      object Label86: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label87: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit17: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTCOF'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit18: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASCOF'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit19: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 69
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALIQCOF'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edCodCOF: TdxDBLookupEdit
        Left = 165
        Top = 39
        Width = 69
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CSTCOF'
        DataSource = DsCt2
        ReadOnly = False
        DropDownWidth = 800
        ImmediateDropDown = False
        ListFieldName = 'SIGNFE;NOMCOF'
        KeyFieldName = 'SIGNFE'
        ListSource = fmManGDB.dsCOF
        LookupKeyValue = Null
        StoredValues = 65
      end
    end
    object GroupBox2: TGroupBox
      Left = 312
      Top = 142
      Width = 239
      Height = 68
      Caption = 'PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      object Label77: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label78: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit8: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTPIS'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit9: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASPIS'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit10: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 69
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALIQPIS'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edCodPIS: TdxDBLookupEdit
        Left = 165
        Top = 39
        Width = 69
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CSTPIS'
        DataSource = DsCt2
        ReadOnly = False
        DropDownWidth = 800
        ImmediateDropDown = False
        ListFieldName = 'SIGNFE;NOMPIS'
        KeyFieldName = 'SIGNFE'
        ListSource = fmManGDB.dsPIS
        LookupKeyValue = Null
        StoredValues = 65
      end
    end
    object GroupBox4: TGroupBox
      Left = 312
      Top = 74
      Width = 239
      Height = 68
      Caption = 'IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      object Label83: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label84: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Cursor = crHandPoint
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = Label7DblClick
      end
      object Label22: TLabel
        Left = 19
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit12: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTIPI'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit14: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASIPI'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit15: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 69
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'IPICT2'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edCodIPI: TdxDBLookupEdit
        Left = 165
        Top = 39
        Width = 69
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CSTIPI'
        DataSource = DsCt2
        ReadOnly = False
        DropDownWidth = 600
        ImmediateDropDown = False
        ListFieldName = 'SIGNFE;NOMSIP'
        KeyFieldName = 'SIGNFE'
        ListSource = fmManGDB.dsIPI
        LookupKeyValue = Null
        StoredValues = 65
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 74
      Width = 308
      Height = 68
      Caption = 'ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      object Label73: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label74: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Cursor = crHandPoint
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = Label74DblClick
      end
      object Label75: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label81: TLabel
        Left = 133
        Top = 44
        Width = 31
        Height = 14
        Caption = 'CST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 259
        Top = 24
        Width = 42
        Height = 14
        Caption = 'Red.%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit5: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTICM'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit6: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASICM'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 80
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ICMCT2'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorEdit2: TdxDBColorEdit
        Left = 165
        Top = 39
        Width = 23
        Hint = 'Unidade do Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taCenter
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'CODST1'
        DataSource = DsCt2
        ReadOnly = False
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorEdit7: TdxDBColorEdit
        Left = 187
        Top = 39
        Width = 45
        Hint = 'Unidade do Item'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        TabStop = False
        OnEnter = EdCodUndEnter
        OnExit = EdCodUndExit
        OnKeyDown = EdCodUndKeyDown
        Alignment = taCenter
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'CODST2'
        ReadOnly = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edCodSt2: TdxDBLookupEdit
        Left = 187
        Top = 39
        Width = 58
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14065456
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'CODST2'
        DataSource = DsCt2
        ReadOnly = False
        DropDownWidth = 550
        ImmediateDropDown = False
        ListFieldName = 'CODST2;NOMST2'
        KeyFieldName = 'CODST2'
        ListSource = fmManGDB.DSst2
        LookupKeyValue = Null
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit20: TdxDBColorCurrencyEdit
        Left = 249
        Top = 39
        Width = 55
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'REDICM'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 142
      Width = 308
      Height = 68
      Caption = 'ICMS Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      object Label67: TLabel
        Left = 133
        Top = 21
        Width = 31
        Height = 14
        Caption = 'Aliq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label71: TLabel
        Left = 133
        Top = 44
        Width = 32
        Height = 14
        Caption = 'MVA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 3
        Top = 19
        Width = 44
        Height = 14
        Cursor = crHandPoint
        Caption = 'B.Calc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = Label24DblClick
      end
      object Label26: TLabel
        Left = 3
        Top = 43
        Width = 35
        Height = 14
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 259
        Top = 24
        Width = 42
        Height = 14
        Caption = 'Red.%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit
        Left = 47
        Top = 39
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTSUB'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit11: TdxDBColorCurrencyEdit
        Left = 47
        Top = 16
        Width = 85
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASSUB'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit16: TdxDBColorCurrencyEdit
        Left = 165
        Top = 16
        Width = 80
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ICMSUB'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit21: TdxDBColorCurrencyEdit
        Left = 165
        Top = 39
        Width = 80
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MRGSUB'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit22: TdxDBColorCurrencyEdit
        Left = 249
        Top = 39
        Width = 55
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'REDSUB'
        DataSource = DsCt2
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
    end
    object GroupBox12: TGroupBox
      Left = 553
      Top = 74
      Width = 239
      Height = 68
      TabOrder = 21
      object Label34: TLabel
        Left = 3
        Top = 19
        Width = 118
        Height = 14
        Caption = 'Desc. ICMS Região:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label66: TLabel
        Left = 3
        Top = 44
        Width = 87
        Height = 14
        Caption = 'Frete rateado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit26: TdxDBColorCurrencyEdit
        Left = 132
        Top = 16
        Width = 102
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTDSR'
        DataSource = DsCt2
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edFrt: TdxDBColorCurrencyEdit
        Left = 132
        Top = 39
        Width = 102
        Hint = 'Frete por Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTFRT'
        DataSource = DsCt2
        ReadOnly = True
        DecimalPlaces = 4
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
    end
    object edVlrLiq: TdxDBColorCurrencyEdit
      Left = 813
      Top = 1
      Width = 68
      Hint = 'Preço Liquido Praticado para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 13
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLQCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object EdAscCt2: TdxDBColorCurrencyEdit
      Left = 645
      Top = 1
      Width = 83
      Hint = 'Percentual de Desconto para o Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 11
      OnEnter = EdDscCt2Enter
      OnExit = EdDscCt2Exit
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'PACCT2'
      DataSource = DsCt2
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      MaxValue = 99.99
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 17
    end
    object edClsIpi: TdxDBColorEdit
      Left = 420
      Top = 1
      Width = 95
      Hint = 'Unidade do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 8
      TabStop = False
      OnEnter = EdCodUndEnter
      OnExit = EdCodUndExit
      OnKeyDown = EdCodUndKeyDown
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLSIPI'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object dxDBColorEdit4: TdxDBColorEdit
      Left = 0
      Top = 1
      Width = 24
      Hint = 'Grupo do Item'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14789952
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 1
      OnEnter = EdCodGruEnter
      OnExit = EdCodGruExit
      OnKeyDown = EdCodGruKeyDown
      OnKeyPress = EdCodEmpKeyPress
      Alignment = taCenter
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CODCLP'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edItemCompra: TdxDBColorEdit
      Left = 720
      Top = 49
      Width = 68
      Hint = 'Cliente'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 18
      TabStop = False
      Anchors = [akTop, akRight]
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMITEMCOMPRA'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edPedCompra: TdxDBColorEdit
      Left = 553
      Top = 49
      Width = 85
      Hint = 'Cliente'
      Color = 16577773
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 17
      TabStop = False
      Anchors = [akTop, akRight]
      Alignment = taLeftJustify
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'NUMPEDCOMPRA'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
    object edCodCfo: TdxDBColorLookupEdit
      Left = 354
      Top = 2
      Width = 67
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14065456
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 7
      TabStop = False
      Alignment = taCenter
      DataField = 'CODCFO'
      DataSource = DsCt2
      ReadOnly = False
      ListFieldName = 'CODCFO'
      KeyFieldName = 'CODCFO'
      ListSource = dsCFOP
      LookupKeyValue = Null
      CorDeFoco = clInfoBk
      StoredValues = 65
    end
    object EdCodUnd: TdxDBColorPickEdit
      Left = 514
      Top = 1
      Width = 51
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
      TabOrder = 9
      OnEnter = EdCodUndEnter
      OnExit = EdCodUndExit
      OnKeyDown = EdCodUndKeyDown
      DataField = 'CODUND'
      DataSource = DsCt2
      CorDeFoco = clInfoBk
    end
    object dxDBColorCurrencyEdit13: TdxDBColorCurrencyEdit
      Left = 1257
      Top = 73
      Width = 102
      Hint = 'Total do Item'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 27
      Visible = False
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTFRT'
      DataSource = DsCta
      ReadOnly = True
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 22
      StoredValues = 65
    end
    object dxDBColorCurrencyEdit23: TdxDBColorCurrencyEdit
      Left = 1257
      Top = 94
      Width = 102
      Hint = 'Total do Item'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 28
      Visible = False
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTSEG'
      DataSource = DsCta
      ReadOnly = True
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 22
      StoredValues = 65
    end
    object dxDBColorCurrencyEdit24: TdxDBColorCurrencyEdit
      Left = 1257
      Top = 115
      Width = 102
      Hint = 'Total do Item'
      Color = 16577773
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = 14859373
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtInactive
      Style.HotTrack = True
      Style.Shadow = True
      TabOrder = 29
      Visible = False
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'TOTOUTDESP'
      DataSource = DsCta
      ReadOnly = True
      DisplayFormat = '0.00'
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 22
      StoredValues = 65
    end
    object GroupBox11: TGroupBox
      Left = 793
      Top = 142
      Width = 214
      Height = 68
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
      object Label45: TLabel
        Left = 3
        Top = 19
        Width = 82
        Height = 14
        Caption = 'Peso Liquido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label76: TLabel
        Left = 3
        Top = 44
        Width = 72
        Height = 14
        Caption = 'Peso Bruto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit38: TdxDBColorCurrencyEdit
        Left = 112
        Top = 16
        Width = 102
        Hint = 'Total de Desconto ICMS Obrigatorio'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTLIQ'
        DataSource = DsCt2
        ReadOnly = True
        DecimalPlaces = 4
        DisplayFormat = '0.0000'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit39: TdxDBColorCurrencyEdit
        Left = 112
        Top = 39
        Width = 102
        Hint = 'Frete por Item'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTBRT'
        DataSource = DsCt2
        ReadOnly = True
        DecimalPlaces = 4
        DisplayFormat = '0.0000'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
    end
  end
  object pnEstoque: TPanel
    Left = 17
    Top = 419
    Width = 321
    Height = 178
    TabOrder = 3
    Visible = False
    object Panel10: TPanel
      Left = 8
      Top = 10
      Width = 305
      Height = 161
      BevelOuter = bvNone
      Color = clRed
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 2
        Width = 303
        Height = 157
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 14
          Width = 114
          Height = 14
          Caption = 'Estoque Adquirido'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 8
          Top = 38
          Width = 87
          Height = 14
          Caption = 'Estoque Atual'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 8
          Top = 62
          Width = 118
          Height = 14
          Caption = 'Estoque Reservado'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 8
          Top = 110
          Width = 116
          Height = 14
          Caption = 'Estoque Disponivel'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 136
          Top = 110
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 136
          Top = 62
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 136
          Top = 38
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 136
          Top = 14
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 8
          Top = 134
          Width = 69
          Height = 14
          Caption = 'Embalagem'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label58: TLabel
          Left = 136
          Top = 134
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label51: TLabel
          Left = 9
          Top = 86
          Width = 83
          Height = 14
          Caption = 'Estoque RMA'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label61: TLabel
          Left = 136
          Top = 86
          Width = 12
          Height = 14
          Caption = ' : '
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Panel13: TPanel
          Left = 155
          Top = 15
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 7
        end
        object Panel12: TPanel
          Left = 155
          Top = 39
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 6
        end
        object Panel11: TPanel
          Left = 155
          Top = 63
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 5
        end
        object Panel9: TPanel
          Left = 155
          Top = 111
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 4
        end
        object Panel8: TPanel
          Left = 152
          Top = 11
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 3
          object EdQtaIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 152
          Top = 35
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 2
          object EdQtdIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel6: TPanel
          Left = 152
          Top = 59
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 1
          object EdQtrIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Left = 152
          Top = 107
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 0
          object EdSldIte: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel16: TPanel
          Left = 155
          Top = 135
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 8
        end
        object Panel17: TPanel
          Left = 152
          Top = 131
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 9
          object EdQtdEmb: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel18: TPanel
          Left = 154
          Top = 87
          Width = 142
          Height = 19
          BevelOuter = bvNone
          Color = clGray
          TabOrder = 10
        end
        object Panel19: TPanel
          Left = 152
          Top = 83
          Width = 143
          Height = 20
          BevelOuter = bvNone
          Color = 14859373
          TabOrder = 11
          object EdQtdRma: TPanel
            Left = 1
            Top = 1
            Width = 141
            Height = 18
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = '0,00 '
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object Panel14: TPanel
      Left = 13
      Top = 3
      Width = 128
      Height = 15
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Posição de Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel20: TPanel
      Left = 321
      Top = 10
      Width = 47
      Height = 158
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = 6682849
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label68: TLabel
        Left = 5
        Top = 7
        Width = 27
        Height = 120
        Caption = '*  V e j a  *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label44: TLabel
        Left = 25
        Top = 5
        Width = 14
        Height = 140
        Caption = 'S i m i l a r '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 277
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    OnExit = Panel1Exit
    object GroupBox7: TGroupBox
      Left = 4
      Top = 38
      Width = 1000
      Height = 89
      TabOrder = 1
      object Label38: TLabel
        Left = 9
        Top = 15
        Width = 45
        Height = 14
        Cursor = crHandPoint
        Caption = 'Cliente :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = Label38DblClick
      end
      object Label39: TLabel
        Left = 9
        Top = 39
        Width = 62
        Height = 14
        Cursor = crHandPoint
        Caption = 'Vendedor :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bpsqCli: TSpeedButton
        Left = 243
        Top = 12
        Width = 26
        Height = 22
        Hint = 'Pesquisar Clientes Existentes'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
          FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
          7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
          787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
          78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
          B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
          B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
          7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
        OnClick = bpsqCliClick
      end
      object Label54: TLabel
        Left = 930
        Top = 14
        Width = 18
        Height = 14
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bPsqVen: TSpeedButton
        Left = 243
        Top = 36
        Width = 26
        Height = 22
        Hint = 'Pesquisar Vendedores Existentes'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
          FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
          7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
          787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
          78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
          B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
          B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
          7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
        OnClick = bPsqVenClick
      end
      object Label46: TLabel
        Left = 9
        Top = 63
        Width = 68
        Height = 14
        Caption = 'Atendente :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 797
        Top = 64
        Width = 81
        Height = 14
        Caption = '(%) Margem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 582
        Top = 13
        Width = 56
        Height = 14
        Caption = 'CPF/CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 582
        Top = 37
        Width = 23
        Height = 14
        Caption = 'I.E.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bPsqAtd: TSpeedButton
        Left = 243
        Top = 59
        Width = 26
        Height = 22
        Hint = 'Pesquisar Vendedores Existentes'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
          FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
          7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
          787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
          78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
          B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
          B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
          7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
        OnClick = bPsqAtdClick
      end
      object EdTotRen: TdxDBColorCurrencyEdit
        Left = 889
        Top = 62
        Width = 104
        Hint = 'Total do Item'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 9
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTREN'
        DataSource = DsCta
        DecimalPlaces = 4
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdUfeCta: TdxDBColorEdit
        Left = 950
        Top = 9
        Width = 43
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        OnExit = EdUfeCtaExit
        OnKeyDown = EdUfeCtaKeyDown
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'UFECTA'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdNomCli: TdxDBColorEdit
        Left = 269
        Top = 11
        Width = 305
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        OnExit = EdNomCliExit
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'NOMCLI'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object EdNomVen: TdxDBColorEdit
        Left = 269
        Top = 35
        Width = 305
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataSource = DsCta
        CorDeFoco = clBlack
        Height = 24
        StoredValues = 1
      end
      object EdCodCli: TdxDBColorEdit
        Left = 138
        Top = 11
        Width = 103
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        OnEnter = EdCodCliEnter
        OnExit = EdCodCliExit
        OnKeyDown = EdCodCliKeyDown
        OnKeyPress = EdCodEmpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODCLI'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdCodVen: TdxDBColorEdit
        Left = 138
        Top = 35
        Width = 103
        Hint = 'Vendedor'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        OnEnter = EdCodCliEnter
        OnExit = EdCodVenExit
        OnKeyDown = EdCodVenKeyDown
        OnKeyPress = EdCodEmpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODVEN'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object pnNomVen: TPanel
        Left = 272
        Top = 38
        Width = 298
        Height = 14
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object EdCodAtd: TdxDBColorEdit
        Left = 138
        Top = 59
        Width = 103
        Hint = 'Atendente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 7
        OnExit = EdCodAtdExit
        OnKeyDown = EdCodAtdKeyDown
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODATD'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdNomAtd: TdxDBColorEdit
        Left = 269
        Top = 59
        Width = 305
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 8
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        CorDeFoco = clBlack
        Height = 24
        StoredValues = 1
      end
      object pnNomAtd: TPanel
        Left = 272
        Top = 63
        Width = 298
        Height = 14
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object EdCgcCli: TdxDBColorEdit
        Left = 641
        Top = 9
        Width = 163
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        OnExit = EdCgcCliExit
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'CGCCLI'
        DataSource = DsCta
        ReadOnly = False
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object EdIECli: TdxDBColorEdit
        Left = 641
        Top = 33
        Width = 163
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        Alignment = taCenter
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'INSCLI'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
    end
    object GroupBox8: TGroupBox
      Left = 4
      Top = 1
      Width = 1000
      Height = 38
      TabOrder = 0
      object Label29: TLabel
        Left = 9
        Top = 13
        Width = 117
        Height = 14
        Caption = 'Número do Cotação :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 265
        Top = 13
        Width = 46
        Height = 14
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object bpsqEmp: TSpeedButton
        Left = 418
        Top = 10
        Width = 26
        Height = 22
        Hint = 'Pesquisar Empresas Existentes'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
          FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
          7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
          787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
          78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
          B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
          B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
          7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
        OnClick = bpsqEmpClick
      end
      object Label56: TLabel
        Left = 769
        Top = 14
        Width = 42
        Height = 14
        Caption = 'Emissão'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EdNomEmp: TdxDBColorEdit
        Left = 444
        Top = 9
        Width = 305
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataSource = DsCta
        CorDeFoco = clBlack
        Height = 24
        StoredValues = 1
      end
      object EdNumCta: TdxDBColorEdit
        Left = 138
        Top = 9
        Width = 103
        Hint = 'Empresa'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'NUMCTA'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 1
      end
      object pnNumCta: TPanel
        Left = 140
        Top = 12
        Width = 96
        Height = 13
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object EdCodEmp: TdxDBColorEdit
        Left = 314
        Top = 9
        Width = 103
        Hint = 'Empresa'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        OnEnter = EdCodEmpEnter
        OnExit = EdCodEmpExit
        OnKeyDown = EdCodEmpKeyDown
        OnKeyPress = EdCodEmpKeyPress
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODEMP'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object pnNomEmp: TPanel
        Left = 447
        Top = 12
        Width = 298
        Height = 14
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object EdDteCta: TdxDBColorDateEdit
        Left = 835
        Top = 9
        Width = 104
        Hint = 'Data de Emissão da Cotação'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        OnEnter = EdDteCtaEnter
        OnExit = EdDteCtaExit
        Alignment = taCenter
        DataField = 'DTECTA'
        DataSource = DsCta
        PopupBorder = pbFlat
        DateButtons = []
        SaveTime = False
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object EdFlgOco: TdxDBColorEdit
        Left = 946
        Top = 9
        Width = 49
        Hint = 'Empresa'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        Alignment = taRightJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'FLGOCO'
        CorDeFoco = clInfoBk
        Height = 25
        StoredValues = 1
      end
      object pnFlgOco: TPanel
        Left = 948
        Top = 11
        Width = 43
        Height = 19
        BevelOuter = bvNone
        Color = clLime
        TabOrder = 7
        OnDblClick = pnFlgOcoDblClick
      end
    end
    object GroupBox9: TGroupBox
      Left = 4
      Top = 126
      Width = 1000
      Height = 62
      TabOrder = 2
      object Label40: TLabel
        Left = 9
        Top = 14
        Width = 119
        Height = 14
        Cursor = crHandPoint
        Caption = 'Padrao Faturamento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = Label40DblClick
      end
      object bpsqPfa: TSpeedButton
        Left = 243
        Top = 10
        Width = 26
        Height = 22
        Hint = 'Pesquisar Padrões de Faturamento Existentes'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD000007F000000000000C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000007F0000FFFF00
          FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD000007F0000FFFF00FF0000FF00007F000000C0CFD0C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F0000FFBFB8BF0000FF0000
          7F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F
          787FBFB8BFFFF8FF0000FF00007F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F000000000000000000BFB8BFFFF8FFBFB8BF7F787F000000C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F7F7800FFF800BFB8BF7F78007F
          78000000007F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          7F7800FFF800BFB8BFFFF800BFB8BF7F78007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800BFB8BFFFF800BF
          B8BF7F7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          FFF8FFFFF800FFF8FFFFF800BFB8BFFFF800BFB8BF000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD07F787FFFF800FFF8FFFFF800FFF8FFFFF800BF
          B8BFFFF800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787F
          BFB8BFFFF800FFF8FFFFF800BFB8BFFFF8007F7800000000C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD07F787FBFB8BFFFF800FFF8FFFFF8007F
          7800000000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
          C0CFD07F787F7F787F7F787F7F787F000000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
          D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
          CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0}
        OnClick = bpsqPfaClick
      end
      object Label3: TLabel
        Left = 791
        Top = 14
        Width = 39
        Height = 14
        Caption = 'Frete :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 10
        Top = 38
        Width = 69
        Height = 14
        Caption = 'Tipo Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label49: TLabel
        Left = 591
        Top = 38
        Width = 117
        Height = 14
        Caption = 'Regime Tributário :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdNomPfa: TdxDBColorEdit
        Left = 269
        Top = 9
        Width = 305
        Hint = 'Cliente'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        Alignment = taLeftJustify
        AutoSize = False
        CharCase = ecUpperCase
        DataSource = DsCta
        CorDeFoco = clBlack
        Height = 24
        StoredValues = 1
      end
      object EdCodPfa: TdxDBColorEdit
        Left = 138
        Top = 9
        Width = 103
        Hint = 'Padrão de Faturamento'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14789952
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        OnEnter = EdDteCtaEnter
        OnExit = EdCodPfaExit
        OnKeyDown = EdCodPfaKeyDown
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODPFA'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object pnNomPfa: TPanel
        Left = 272
        Top = 14
        Width = 298
        Height = 14
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object EdFrtRes: TdxDBColorLookupEdit
        Left = 836
        Top = 10
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
        TabOrder = 2
        DataField = 'ID_FRETE'
        DataSource = DsCta
        ListFieldName = 'NOMFRT'
        KeyFieldName = 'ID'
        ListSource = dsTipFrt
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object CbNomTCl: TdxDBColorLookupEdit
        Left = 269
        Top = 34
        Width = 305
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        TabStop = False
        DataField = 'CODTCL'
        DataSource = DsCta
        ListFieldName = 'NOMTCL'
        KeyFieldName = 'CODTCL'
        ListSource = DsTCl
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
      object edCodTcl: TdxDBColorEdit
        Left = 138
        Top = 33
        Width = 103
        Hint = 'Padrão de Faturamento'
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        OnEnter = EdCodCliEnter
        OnExit = EdCodPfaExit
        Alignment = taRightJustify
        CharCase = ecUpperCase
        DataField = 'CODTCL'
        DataSource = DsCta
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object cbCodRegTrib: TdxDBColorLookupEdit
        Left = 714
        Top = 34
        Width = 281
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
        TabOrder = 6
        OnKeyDown = cbCodRegTribKeyDown
        DataField = 'CODREGTRIB'
        DataSource = DsCta
        ListFieldName = 'NOMREGTRIB'
        KeyFieldName = 'NUMREGTRIB'
        ListSource = dsREGTRIB
        LookupKeyValue = Null
        CorDeFoco = clInfoBk
      end
    end
    object GroupBox13: TGroupBox
      Left = 4
      Top = 187
      Width = 1000
      Height = 89
      TabOrder = 3
      object Label42: TLabel
        Left = 145
        Top = 8
        Width = 64
        Height = 14
        Caption = 'Base ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 145
        Top = 48
        Width = 31
        Height = 14
        Caption = 'Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 285
        Top = 8
        Width = 67
        Height = 14
        Caption = 'Total ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 285
        Top = 48
        Width = 44
        Height = 14
        Caption = 'Seguro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 426
        Top = 8
        Width = 50
        Height = 14
        Caption = 'Base St.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label59: TLabel
        Left = 426
        Top = 48
        Width = 101
        Height = 14
        Caption = 'Outras Despesas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label62: TLabel
        Left = 567
        Top = 8
        Width = 53
        Height = 14
        Caption = 'Total St.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label64: TLabel
        Left = 567
        Top = 48
        Width = 85
        Height = 14
        Caption = 'Desconto Inc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label65: TLabel
        Left = 707
        Top = 8
        Width = 56
        Height = 14
        Caption = 'Valor PIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label69: TLabel
        Left = 707
        Top = 48
        Width = 79
        Height = 14
        Caption = 'Valor COFINS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label70: TLabel
        Left = 848
        Top = 8
        Width = 92
        Height = 14
        Caption = 'Valor Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label72: TLabel
        Left = 848
        Top = 48
        Width = 77
        Height = 14
        Caption = 'Total Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 4
        Top = 8
        Width = 78
        Height = 14
        Caption = 'Peso Líquido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 4
        Top = 48
        Width = 68
        Height = 14
        Caption = 'Peso Bruto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dxDBColorCurrencyEdit27: TdxDBColorCurrencyEdit
        Left = 145
        Top = 23
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 0
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASICM'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object edFrete: TdxDBColorCurrencyEdit
        Left = 145
        Top = 61
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 6
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTFRT'
        DataSource = DsCta
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit28: TdxDBColorCurrencyEdit
        Left = 285
        Top = 23
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 1
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTICM'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit29: TdxDBColorCurrencyEdit
        Left = 285
        Top = 61
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 7
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTSEG'
        DataSource = DsCta
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit30: TdxDBColorCurrencyEdit
        Left = 426
        Top = 23
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 2
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'BASSUB'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit31: TdxDBColorCurrencyEdit
        Left = 426
        Top = 61
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 8
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTOUTDESP'
        DataSource = DsCta
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit32: TdxDBColorCurrencyEdit
        Left = 567
        Top = 23
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 3
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTSUB'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit33: TdxDBColorCurrencyEdit
        Left = 567
        Top = 61
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 9
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTDESCINC'
        DataSource = DsCta
        ReadOnly = False
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit34: TdxDBColorCurrencyEdit
        Left = 707
        Top = 23
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 4
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTPIS'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit35: TdxDBColorCurrencyEdit
        Left = 707
        Top = 61
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 10
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTCOF'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit36: TdxDBColorCurrencyEdit
        Left = 848
        Top = 23
        Width = 147
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 5
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTITE'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit37: TdxDBColorCurrencyEdit
        Left = 848
        Top = 61
        Width = 147
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 11
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTGER'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit40: TdxDBColorCurrencyEdit
        Left = 4
        Top = 23
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 12
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTLIQ'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
      object dxDBColorCurrencyEdit41: TdxDBColorCurrencyEdit
        Left = 4
        Top = 61
        Width = 130
        Hint = 'Base de calculo ICMS'
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 14859373
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtInactive
        Style.HotTrack = True
        Style.Shadow = True
        TabOrder = 13
        TabStop = False
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTBRT'
        DataSource = DsCta
        ReadOnly = True
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        Height = 24
        StoredValues = 65
      end
    end
  end
  object grCt2: TDBGrid
    Left = 0
    Top = 277
    Width = 1007
    Height = 117
    Align = alClient
    Color = 16577773
    DataSource = DsCt2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnEnter = grCt2Enter
    OnKeyDown = grCt2KeyDown
    OnKeyPress = grCt2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCLP'
        Title.Caption = 'Clp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODGRU'
        Title.Caption = 'Grupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODSUB'
        Title.Caption = 'SubGrupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTPCT2'
        Title.Alignment = taRightJustify
        Title.Caption = 'Quantidade'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLUCT2'
        Title.Alignment = taRightJustify
        Title.Caption = 'Preço Unit.'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODCFO'
        Title.Alignment = taCenter
        Title.Caption = 'CFOP'
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLSIPI'
        Title.Alignment = taCenter
        Title.Caption = 'NCM'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODUND'
        Title.Alignment = taCenter
        Title.Caption = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DSCCT2'
        Title.Alignment = taRightJustify
        Title.Caption = '% Desc.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PACCT2'
        Title.Alignment = taRightJustify
        Title.Caption = '%Acresc.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLQCT2'
        Title.Alignment = taRightJustify
        Title.Caption = 'Preço Liq.'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALLIQTRB'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr.c/Imp'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTGERAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total Item'
        Width = 104
        Visible = True
      end>
  end
  object SBText: TStatusBar
    Left = 0
    Top = 611
    Width = 1007
    Height = 19
    Panels = <
      item
        Width = 1000
      end>
    SimplePanel = False
  end
  object DsCta: TwwDataSource
    DataSet = PedCta
    Left = 50
    Top = 269
  end
  object DsCt2: TwwDataSource
    DataSet = PedCt2
    OnDataChange = DsCt2DataChange
    Left = 50
    Top = 297
  end
  object UpCta: TUpdateSQL
    ModifySQL.Strings = (
      'update PedCta'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTECTA = :DTECTA,'
      '  NUMCTA = :NUMCTA,'
      '  HRECTA = :HRECTA,'
      '  CODVEN = :CODVEN,'
      '  CODPFA = :CODPFA,'
      '  TIPPFA = :TIPPFA,'
      '  UFECTA = :UFECTA,'
      '  QTICTA = :QTICTA,'
      '  SEQITE = :SEQITE,'
      '  CODCLI = :CODCLI,'
      '  NOMCLI = :NOMCLI,'
      '  DSCREG = :DSCREG,'
      '  DSCCOM = :DSCCOM,'
      '  CODATD = :CODATD,'
      '  CODUSU = :CODUSU,'
      '  FLGTAB = :FLGTAB,'
      '  SEQCTA = :SEQCTA,'
      '  BSCIPI = :BSCIPI,'
      '  OBSCND = :OBSCND,'
      '  OBSENT = :OBSENT,'
      '  OBSVAL = :OBSVAL,'
      '  OBSCLI = :OBSCLI,'
      '  OBSCTA = :OBSCTA,'
      '  SITCTA = :SITCTA,'
      '  CGCCLI = :CGCCLI,'
      '  CODTCL = :CODTCL,'
      '  DSCCTA = :DSCCTA,'
      '  TOTDESCINC = :TOTDESCINC,'
      '  TOTOUTDESP = :TOTOUTDESP,'
      '  TOTSEG = :TOTSEG,'
      '  TOTFRT = :TOTFRT,'
      '  ID_FRETE = :ID_FRETE,'
      '  SUFR_ICMS = :SUFR_ICMS,'
      '  SUFR_IPI = :SUFR_IPI,'
      '  SUFR_PIS = :SUFR_PIS,'
      '  SUFR_COFINS = :SUFR_COFINS,'
      '  NROSUF = :NROSUF,'
      '  DTVSUF = :DTVSUF,'
      '  REGTRB = :REGTRB,'
      '  INDIC_CF = :INDIC_CF,'
      '  INDIC_PRESENCA = :INDIC_PRESENCA,'
      '  CODREGTRIB = :CODREGTRIB'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA')
    InsertSQL.Strings = (
      'insert into PedCta'
      
        '  (CODEMP, DTECTA, NUMCTA, HRECTA, CODVEN, CODPFA, TIPPFA, UFECT' +
        'A, QTICTA, '
      
        '   SEQITE, CODCLI, NOMCLI, DSCREG, DSCCOM, CODATD, CODUSU, FLGTA' +
        'B, SEQCTA, '
      
        '   BSCIPI, OBSCND, OBSENT, OBSVAL, OBSCLI, OBSCTA, SITCTA, CGCCL' +
        'I, CODTCL, '
      
        '   DSCCTA, TOTDESCINC, TOTOUTDESP, TOTSEG, TOTFRT, ID_FRETE, SUF' +
        'R_ICMS, '
      
        '   SUFR_IPI, SUFR_PIS, SUFR_COFINS, NROSUF, DTVSUF, REGTRB, INDI' +
        'C_CF, INDIC_PRESENCA, '
      '   CODREGTRIB)'
      'values'
      
        '  (:CODEMP, :DTECTA, :NUMCTA, :HRECTA, :CODVEN, :CODPFA, :TIPPFA' +
        ', :UFECTA, '
      
        '   :QTICTA, :SEQITE, :CODCLI, :NOMCLI, :DSCREG, :DSCCOM, :CODATD' +
        ', :CODUSU, '
      
        '   :FLGTAB, :SEQCTA, :BSCIPI, :OBSCND, :OBSENT, :OBSVAL, :OBSCLI' +
        ', :OBSCTA, '
      
        '   :SITCTA, :CGCCLI, :CODTCL, :DSCCTA, :TOTDESCINC, :TOTOUTDESP,' +
        ' :TOTSEG, '
      
        '   :TOTFRT, :ID_FRETE, :SUFR_ICMS, :SUFR_IPI, :SUFR_PIS, :SUFR_C' +
        'OFINS, '
      
        '   :NROSUF, :DTVSUF, :REGTRB, :INDIC_CF, :INDIC_PRESENCA, :CODRE' +
        'GTRIB)')
    DeleteSQL.Strings = (
      'delete from PedCta'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA')
    Left = 22
    Top = 325
  end
  object UpCt2: TUpdateSQL
    ModifySQL.Strings = (
      'update PedCt2'
      'set'
      '  CODEMP = :CODEMP,'
      '  DTECTA = :DTECTA,'
      '  NUMCTA = :NUMCTA,'
      '  SEQCT2 = :SEQCT2,'
      '  CODEIT = :CODEIT,'
      '  CODCLP = :CODCLP,'
      '  CODGRU = :CODGRU,'
      '  CODSUB = :CODSUB,'
      '  CODPRO = :CODPRO,'
      '  CODTAM = :CODTAM,'
      '  CODCOR = :CODCOR,'
      '  DESCT2 = :DESCT2,'
      '  OBSCT2 = :OBSCT2,'
      '  CODST1 = :CODST1,'
      '  CODST2 = :CODST2,'
      '  CODUND = :CODUND,'
      '  TABPRC = :TABPRC,'
      '  QTPCT2 = :QTPCT2,'
      '  VLUCT2 = :VLUCT2,'
      '  VLQCT2 = :VLQCT2,'
      '  DSCCT2 = :DSCCT2,'
      '  VDSCT2 = :VDSCT2,'
      '  DSPCT2 = :DSPCT2,'
      '  VDPCT2 = :VDPCT2,'
      '  PACCT2 = :PACCT2,'
      '  VACCT2 = :VACCT2,'
      '  DSCCOM = :DSCCOM,'
      '  VDSCOM = :VDSCOM,'
      '  IPICT2 = :IPICT2,'
      '  CLSIPI = :CLSIPI,'
      '  ICMCT2 = :ICMCT2,'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  BSCIPI = :BSCIPI,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  REDICM = :REDICM,'
      '  BSCICM = :BSCICM,'
      '  INCREV = :INCREV,'
      '  INCFIN = :INCFIN,'
      '  REFCT2 = :REFCT2,'
      '  CBACT2 = :CBACT2,'
      '  CODCFO = :CODCFO,'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  CSTPIS = :CSTPIS,'
      '  CSTCOF = :CSTCOF,'
      '  CSTIPI = :CSTIPI,'
      '  ALIQPIS = :ALIQPIS,'
      '  ALIQCOF = :ALIQCOF,'
      '  REDSUB = :REDSUB,'
      '  FLG_SINEIF20 = :FLG_SINEIF20,'
      '  CODTXF = :CODTXF,'
      '  FLG_DESC_ZF_PIS = :FLG_DESC_ZF_PIS,'
      '  FLG_DESC_ZF_COF = :FLG_DESC_ZF_COF,'
      '  ALIQPIS_ZF = :ALIQPIS_ZF,'
      '  ALIQCOF_ZF = :ALIQCOF_ZF,'
      '  FRTICM = :FRTICM,'
      '  SEGICM = :SEGICM,'
      '  DESICM = :DESICM,'
      '  FRTIPI = :FRTIPI,'
      '  SEGIPI = :SEGIPI,'
      '  DESIPI = :DESIPI,'
      '  FLGNCALC_DIF_MVA = :FLGNCALC_DIF_MVA,'
      '  NUMPEDCOMPRA = :NUMPEDCOMPRA,'
      '  NUMITEMCOMPRA = :NUMITEMCOMPRA,'
      '  CODTXF2 = :CODTXF2,'
      '  ID_ESTICM = :ID_ESTICM,'
      '  CEST = :CEST,'
      '  ALIQ_FCPUFDEST = :ALIQ_FCPUFDEST,'
      '  ALIQ_ICMSUFDEST = :ALIQ_ICMSUFDEST,'
      '  ALIQ_ICMSINTER = :ALIQ_ICMSINTER,'
      '  ALIQ_ICMSINTERPART = :ALIQ_ICMSINTERPART,'
      '  ID_REGRA_FCP = :ID_REGRA_FCP,'
      '  COD_ENQ = :COD_ENQ'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA and'
      '  SEQCT2 = :OLD_SEQCT2')
    InsertSQL.Strings = (
      'insert into PedCt2'
      
        '  (CODEMP, DTECTA, NUMCTA, SEQCT2, CODEIT, CODCLP, CODGRU, CODSU' +
        'B, CODPRO, '
      
        '   CODTAM, CODCOR, DESCT2, OBSCT2, CODST1, CODST2, CODUND, TABPR' +
        'C, QTPCT2, '
      
        '   VLUCT2, VLQCT2, DSCCT2, VDSCT2, DSPCT2, VDPCT2, PACCT2, VACCT' +
        '2, DSCCOM, '
      
        '   VDSCOM, IPICT2, CLSIPI, ICMCT2, CODSTR, TIPSTR, REGIPI, TIPIP' +
        'I, BSCIPI, '
      
        '   REGICM, TIPICM, REDICM, BSCICM, INCREV, INCFIN, REFCT2, CBACT' +
        '2, CODCFO, '
      
        '   ICMSUB, MRGSUB, BASESB, CSTPIS, CSTCOF, CSTIPI, ALIQPIS, ALIQ' +
        'COF, REDSUB, '
      
        '   FLG_SINEIF20, CODTXF, FLG_DESC_ZF_PIS, FLG_DESC_ZF_COF, ALIQP' +
        'IS_ZF, '
      
        '   ALIQCOF_ZF, FRTICM, SEGICM, DESICM, FRTIPI, SEGIPI, DESIPI, F' +
        'LGNCALC_DIF_MVA, '
      
        '   NUMPEDCOMPRA, NUMITEMCOMPRA, CODTXF2, ID_ESTICM, CEST, ALIQ_F' +
        'CPUFDEST, '
      
        '   ALIQ_ICMSUFDEST, ALIQ_ICMSINTER, ALIQ_ICMSINTERPART, ID_REGRA' +
        '_FCP, COD_ENQ)'
      'values'
      
        '  (:CODEMP, :DTECTA, :NUMCTA, :SEQCT2, :CODEIT, :CODCLP, :CODGRU' +
        ', :CODSUB, '
      
        '   :CODPRO, :CODTAM, :CODCOR, :DESCT2, :OBSCT2, :CODST1, :CODST2' +
        ', :CODUND, '
      
        '   :TABPRC, :QTPCT2, :VLUCT2, :VLQCT2, :DSCCT2, :VDSCT2, :DSPCT2' +
        ', :VDPCT2, '
      
        '   :PACCT2, :VACCT2, :DSCCOM, :VDSCOM, :IPICT2, :CLSIPI, :ICMCT2' +
        ', :CODSTR, '
      
        '   :TIPSTR, :REGIPI, :TIPIPI, :BSCIPI, :REGICM, :TIPICM, :REDICM' +
        ', :BSCICM, '
      
        '   :INCREV, :INCFIN, :REFCT2, :CBACT2, :CODCFO, :ICMSUB, :MRGSUB' +
        ', :BASESB, '
      
        '   :CSTPIS, :CSTCOF, :CSTIPI, :ALIQPIS, :ALIQCOF, :REDSUB, :FLG_' +
        'SINEIF20, '
      
        '   :CODTXF, :FLG_DESC_ZF_PIS, :FLG_DESC_ZF_COF, :ALIQPIS_ZF, :AL' +
        'IQCOF_ZF, '
      
        '   :FRTICM, :SEGICM, :DESICM, :FRTIPI, :SEGIPI, :DESIPI, :FLGNCA' +
        'LC_DIF_MVA, '
      
        '   :NUMPEDCOMPRA, :NUMITEMCOMPRA, :CODTXF2, :ID_ESTICM, :CEST, :' +
        'ALIQ_FCPUFDEST, '
      
        '   :ALIQ_ICMSUFDEST, :ALIQ_ICMSINTER, :ALIQ_ICMSINTERPART, :ID_R' +
        'EGRA_FCP, '
      '   :COD_ENQ)')
    DeleteSQL.Strings = (
      'delete from PedCt2'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  DTECTA = :OLD_DTECTA and'
      '  NUMCTA = :OLD_NUMCTA and'
      '  SEQCT2 = :OLD_SEQCT2')
    Left = 50
    Top = 325
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 83
    Top = 269
  end
  object PedCt2: TwwQuery
    CachedUpdates = True
    BeforeInsert = PedCt2BeforeInsert
    BeforeEdit = PedCt2BeforeEdit
    AfterScroll = PedCt2AfterScroll
    OnCalcFields = PedCt2CalcFields
    OnNewRecord = PedCt2NewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select Ct2.*, (select max(nroct2) from pedct2 p2 where p2.numcta' +
        ' = Ct2.NumCta ) Conta,'
      
        '           Ct2.CodGru || _UNICODE_FSS '#39'.'#39' || Ct2.CodSub || _UNIC' +
        'ODE_FSS '#39'.'#39' || Ct2.CodPro as CodIte '
      'From PedCt2 ct2'
      'Where Ct2.CodEmp = :CodEmp'
      '     and Ct2.DteCta = :DteCta'
      '     and Ct2.NumCta = :NumCta'
      'Order by Ct2.NroCt2')
    UpdateObject = UpCt2
    ValidateWithMask = True
    Left = 22
    Top = 297
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DteCta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumCta'
        ParamType = ptInput
      end>
    object PedCt2CODGRU: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODGRU'
      Origin = 'ISADE.PEDCT2.CODGRU'
      FixedChar = True
      Size = 3
    end
    object PedCt2CODSUB: TStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'CODSUB'
      Origin = 'ISADE.PEDCT2.CODSUB'
      FixedChar = True
      Size = 4
    end
    object PedCt2CODPRO: TStringField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'CODPRO'
      Origin = 'ISADE.PEDCT2.CODPRO'
      FixedChar = True
      Size = 5
    end
    object PedCt2QTPCT2: TFloatField
      DisplayWidth = 12
      FieldName = 'QTPCT2'
      Origin = 'ISADE.PEDCT2.QTPCT2'
      DisplayFormat = '#,##0.0000'
      Precision = 4
    end
    object PedCt2VLUCT2: TFloatField
      DisplayWidth = 12
      FieldName = 'VLUCT2'
      Origin = 'ISADE.PEDCT2.VLUCT2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2CODUND: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'CODUND'
      Origin = 'ISADE.PEDCT2.CODUND'
      FixedChar = True
      Size = 3
    end
    object PedCt2IPICT2: TFloatField
      DisplayWidth = 7
      FieldName = 'IPICT2'
      Origin = 'ISADE.PEDCT2.IPICT2'
      DisplayFormat = '###0'
    end
    object PedCt2ICMCT2: TFloatField
      DisplayWidth = 7
      FieldName = 'ICMCT2'
      Origin = 'ISADE.PEDCT2.ICMCT2'
      DisplayFormat = '###0'
    end
    object PedCt2DSCCT2: TFloatField
      DisplayWidth = 8
      FieldName = 'DSCCT2'
      Origin = 'ISADE.PEDCT2.DSCCT2'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 4
    end
    object PedCt2VLQCT2: TFloatField
      DisplayWidth = 17
      FieldName = 'VLQCT2'
      Origin = 'ISADE.PEDCT2.VLQCT2'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTCT2: TFloatField
      DisplayWidth = 16
      FieldName = 'TOTCT2'
      Origin = 'ISADE.PEDCT2.TOTCT2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VDSCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'VDSCT2'
    end
    object PedCt2PACCT2: TFloatField
      DisplayWidth = 10
      FieldName = 'PACCT2'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object PedCt2TOTIPC: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTIPC'
    end
    object PedCt2CODCFO: TStringField
      DisplayWidth = 10
      FieldName = 'CODCFO'
      FixedChar = True
      Size = 10
    end
    object PedCt2TRBSUB: TStringField
      DisplayWidth = 3
      FieldName = 'TRBSUB'
      FixedChar = True
      Size = 3
    end
    object PedCt2ICMSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMSUB'
    end
    object PedCt2MRGSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'MRGSUB'
    end
    object PedCt2BASESB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASESB'
    end
    object PedCt2DSPCT2: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 9
      FieldName = 'DSPCT2'
      Origin = 'ISADE.PEDCT2.DSPCT2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDCT2.CODEMP'
      Visible = False
    end
    object PedCt2DTECTA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTECTA'
      Origin = 'ISADE.PEDCT2.DTECTA'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object PedCt2NUMCTA: TIntegerField
      FieldName = 'NUMCTA'
      Origin = 'ISADE.PEDCT2.NUMCTA'
      Visible = False
    end
    object PedCt2SEQCT2: TIntegerField
      FieldName = 'SEQCT2'
      Origin = 'ISADE.PEDCT2.SEQCT2'
      Visible = False
    end
    object PedCt2CODEIT: TIntegerField
      FieldName = 'CODEIT'
      Origin = 'ISADE.PEDCT2.CODEIT'
      Visible = False
    end
    object PedCt2CODCLP: TStringField
      FieldName = 'CODCLP'
      Origin = 'ISADE.PEDCT2.CODCLP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedCt2CODTAM: TStringField
      FieldName = 'CODTAM'
      Origin = 'ISADE.PEDCT2.CODTAM'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedCt2CODCOR: TStringField
      FieldName = 'CODCOR'
      Origin = 'ISADE.PEDCT2.CODCOR'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object PedCt2DESCT2: TStringField
      FieldName = 'DESCT2'
      Origin = 'ISADE.PEDCT2.DESCT2'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedCt2OBSCT2: TStringField
      FieldName = 'OBSCT2'
      Origin = 'ISADE.PEDCT2.OBSCT2'
      Visible = False
      FixedChar = True
      Size = 100
    end
    object PedCt2CODST1: TStringField
      FieldName = 'CODST1'
      Origin = 'ISADE.PEDCT2.CODST1'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedCt2CODST2: TStringField
      DisplayWidth = 3
      FieldName = 'CODST2'
      Origin = 'ISADE.PEDCT2.CODST2'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2TABPRC: TIntegerField
      FieldName = 'TABPRC'
      Origin = 'ISADE.PEDCT2.TABPRC'
      Visible = False
    end
    object PedCt2CSTCT2: TFloatField
      FieldName = 'CSTCT2'
      Origin = 'ISADE.PEDCT2.CSTCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCHCT2: TFloatField
      FieldName = 'VCHCT2'
      Origin = 'ISADE.PEDCT2.VCHCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VRECT2: TFloatField
      FieldName = 'VRECT2'
      Origin = 'ISADE.PEDCT2.VRECT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCRCT2: TFloatField
      FieldName = 'VCRCT2'
      Origin = 'ISADE.PEDCT2.VCRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCPCT2: TFloatField
      FieldName = 'VCPCT2'
      Origin = 'ISADE.PEDCT2.VCPCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VPRCT2: TFloatField
      FieldName = 'VPRCT2'
      Origin = 'ISADE.PEDCT2.VPRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VCSCT2: TFloatField
      FieldName = 'VCSCT2'
      Origin = 'ISADE.PEDCT2.VCSCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VDPCT2: TFloatField
      FieldName = 'VDPCT2'
      Origin = 'ISADE.PEDCT2.VDPCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2DSRCT2: TFloatField
      FieldName = 'DSRCT2'
      Origin = 'ISADE.PEDCT2.DSRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VDRCT2: TFloatField
      FieldName = 'VDRCT2'
      Origin = 'ISADE.PEDCT2.VDRCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2VACCT2: TFloatField
      FieldName = 'VACCT2'
      Origin = 'ISADE.PEDCT2.VACCT2'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2DSCCOM: TFloatField
      FieldName = 'DSCCOM'
      Origin = 'ISADE.PEDCT2.DSCCOM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2VDSCOM: TFloatField
      FieldName = 'VDSCOM'
      Origin = 'ISADE.PEDCT2.VDSCOM'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2CLSIPI: TStringField
      FieldName = 'CLSIPI'
      Origin = 'ISADE.PEDCT2.CLSIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedCt2TOTVEN: TFloatField
      FieldName = 'TOTVEN'
      Origin = 'ISADE.PEDCT2.TOTVEN'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTCST: TFloatField
      FieldName = 'TOTCST'
      Origin = 'ISADE.PEDCT2.TOTCST'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2BASIPI: TFloatField
      FieldName = 'BASIPI'
      Origin = 'ISADE.PEDCT2.BASIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'ISADE.PEDCT2.TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BASICM: TFloatField
      FieldName = 'BASICM'
      Origin = 'ISADE.PEDCT2.BASICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTICM: TFloatField
      FieldName = 'TOTICM'
      Origin = 'ISADE.PEDCT2.TOTICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BASSUB: TFloatField
      FieldName = 'BASSUB'
      Origin = 'ISADE.PEDCT2.BASSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Origin = 'ISADE.PEDCT2.TOTSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTGE2: TFloatField
      FieldName = 'TOTGE2'
      Origin = 'ISADE.PEDCT2.TOTGE2'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2TOTREN: TFloatField
      FieldName = 'TOTREN'
      Origin = 'ISADE.PEDCT2.TOTREN'
      Visible = False
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 2
    end
    object PedCt2TOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Origin = 'ISADE.PEDCT2.TOTDSC'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Origin = 'ISADE.PEDCT2.TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Origin = 'ISADE.PEDCT2.TOTDSP'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTACR: TFloatField
      FieldName = 'TOTACR'
      Origin = 'ISADE.PEDCT2.TOTACR'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2TOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Origin = 'ISADE.PEDCT2.TOTDCO'
      Visible = False
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCt2CODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.PEDCT2.CODSTR'
      Visible = False
      FixedChar = True
    end
    object PedCt2TIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.PEDCT2.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedCt2REGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.PEDCT2.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object PedCt2TIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.PEDCT2.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedCt2TRBIPI: TStringField
      FieldName = 'TRBIPI'
      Origin = 'ISADE.PEDCT2.TRBIPI'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2REDIPI: TFloatField
      FieldName = 'REDIPI'
      Origin = 'ISADE.PEDCT2.REDIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BSCIPI: TFloatField
      FieldName = 'BSCIPI'
      Origin = 'ISADE.PEDCT2.BSCIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2REGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.PEDCT2.REGICM'
      Visible = False
      FixedChar = True
    end
    object PedCt2TIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.PEDCT2.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedCt2TRBICM: TStringField
      FieldName = 'TRBICM'
      Origin = 'ISADE.PEDCT2.TRBICM'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2REDICM: TFloatField
      FieldName = 'REDICM'
      Origin = 'ISADE.PEDCT2.REDICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2BSCICM: TFloatField
      FieldName = 'BSCICM'
      Origin = 'ISADE.PEDCT2.BSCICM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2INCREV: TFloatField
      FieldName = 'INCREV'
      Origin = 'ISADE.PEDCT2.INCREV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2INCFIN: TFloatField
      FieldName = 'INCFIN'
      Origin = 'ISADE.PEDCT2.INCFIN'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCt2NROCT2: TIntegerField
      FieldName = 'NROCT2'
      Origin = 'ISADE.PEDCT2.NROCT2'
      Visible = False
    end
    object PedCt2FLASEQ: TStringField
      FieldName = 'FLASEQ'
      Origin = 'ISADE.PEDCT2.FLASEQ'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedCt2FLGDUP: TStringField
      FieldName = 'FLGDUP'
      Origin = 'ISADE.PEDCT2.FLGDUP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt2QTDEMB: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDEMB'
      Visible = False
    end
    object PedCt2VMECT2: TFloatField
      FieldName = 'VMECT2'
      Visible = False
    end
    object PedCt2VPFCT2: TFloatField
      FieldName = 'VPFCT2'
      Visible = False
    end
    object PedCt2CSTCST: TFloatField
      FieldName = 'CSTCST'
      Visible = False
    end
    object PedCt2VCHCST: TFloatField
      FieldName = 'VCHCST'
      Visible = False
    end
    object PedCt2VRECST: TFloatField
      FieldName = 'VRECST'
      Visible = False
    end
    object PedCt2VCRCST: TFloatField
      FieldName = 'VCRCST'
      Visible = False
    end
    object PedCt2VCPCST: TFloatField
      FieldName = 'VCPCST'
      Visible = False
    end
    object PedCt2VPRCST: TFloatField
      FieldName = 'VPRCST'
      Visible = False
    end
    object PedCt2VMECST: TFloatField
      FieldName = 'VMECST'
      Visible = False
    end
    object PedCt2VPFCST: TFloatField
      FieldName = 'VPFCST'
      Visible = False
    end
    object PedCt2REFCT2: TStringField
      FieldName = 'REFCT2'
      Visible = False
      FixedChar = True
    end
    object PedCt2CODITE: TStringField
      FieldName = 'CODITE'
      Visible = False
      Size = 14
    end
    object PedCt2CBACT2: TStringField
      DisplayWidth = 20
      FieldName = 'CBACT2'
      Visible = False
      FixedChar = True
    end
    object PedCt2TOTOUTDESP: TFloatField
      FieldName = 'TOTOUTDESP'
    end
    object PedCt2TOTDESCINC: TFloatField
      FieldName = 'TOTDESCINC'
    end
    object PedCt2CSTPIS: TStringField
      FieldName = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object PedCt2CSTCOF: TStringField
      FieldName = 'CSTCOF'
      FixedChar = True
      Size = 2
    end
    object PedCt2CSTIPI: TStringField
      FieldName = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object PedCt2ALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
    end
    object PedCt2ALIQCOF: TFloatField
      FieldName = 'ALIQCOF'
    end
    object PedCt2REDSUB: TFloatField
      FieldName = 'REDSUB'
    end
    object PedCt2TRBPIS: TStringField
      FieldName = 'TRBPIS'
      FixedChar = True
      Size = 3
    end
    object PedCt2TRBCOF: TStringField
      FieldName = 'TRBCOF'
      FixedChar = True
      Size = 3
    end
    object PedCt2TOTSEG: TFloatField
      FieldName = 'TOTSEG'
    end
    object PedCt2TOTFRT: TFloatField
      FieldName = 'TOTFRT'
    end
    object PedCt2BASPIS: TFloatField
      FieldName = 'BASPIS'
    end
    object PedCt2TOTPIS: TFloatField
      FieldName = 'TOTPIS'
    end
    object PedCt2BASCOF: TFloatField
      FieldName = 'BASCOF'
    end
    object PedCt2TOTCOF: TFloatField
      FieldName = 'TOTCOF'
    end
    object PedCt2CODCAT: TIntegerField
      FieldName = 'CODCAT'
    end
    object PedCt2LIQCT2: TFloatField
      FieldName = 'LIQCT2'
    end
    object PedCt2CODTIP: TIntegerField
      FieldName = 'CODTIP'
    end
    object PedCt2BRTCT2: TFloatField
      FieldName = 'BRTCT2'
    end
    object PedCt2VOLCT2: TFloatField
      FieldName = 'VOLCT2'
    end
    object PedCt2CODMRC: TIntegerField
      FieldName = 'CODMRC'
    end
    object PedCt2ISSCT2: TFloatField
      FieldName = 'ISSCT2'
    end
    object PedCt2VALLIQTRB: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VALLIQTRB'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object PedCt2DSCPER: TFloatField
      FieldName = 'DSCPER'
    end
    object PedCt2FLG_SINEIF20: TStringField
      FieldName = 'FLG_SINEIF20'
      FixedChar = True
      Size = 1
    end
    object PedCt2FLG_DESC_ZF_PIS: TStringField
      FieldName = 'FLG_DESC_ZF_PIS'
      FixedChar = True
      Size = 1
    end
    object PedCt2FLG_DESC_ZF_COF: TStringField
      FieldName = 'FLG_DESC_ZF_COF'
      FixedChar = True
      Size = 1
    end
    object PedCt2ALIQPIS_ZF: TFloatField
      FieldName = 'ALIQPIS_ZF'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object PedCt2ALIQCOF_ZF: TFloatField
      FieldName = 'ALIQCOF_ZF'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object PedCt2REGSUB: TStringField
      FieldName = 'REGSUB'
      Size = 30
    end
    object PedCt2FRTICM: TFloatField
      FieldName = 'FRTICM'
    end
    object PedCt2SEGICM: TFloatField
      FieldName = 'SEGICM'
    end
    object PedCt2DESICM: TFloatField
      FieldName = 'DESICM'
    end
    object PedCt2FRTIPI: TFloatField
      FieldName = 'FRTIPI'
    end
    object PedCt2SEGIPI: TFloatField
      FieldName = 'SEGIPI'
    end
    object PedCt2DESIPI: TFloatField
      FieldName = 'DESIPI'
    end
    object PedCt2TOTITETRB: TFloatField
      FieldName = 'TOTITETRB'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object PedCt2TOTGERAL: TFloatField
      FieldName = 'TOTGERAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object PedCt2FLGNCALC_DIF_MVA: TStringField
      FieldName = 'FLGNCALC_DIF_MVA'
      FixedChar = True
      Size = 1
    end
    object PedCt2TOTPISZF: TFloatField
      FieldName = 'TOTPISZF'
    end
    object PedCt2TOTCOFZF: TFloatField
      FieldName = 'TOTCOFZF'
    end
    object PedCt2CODTXF: TStringField
      FieldName = 'CODTXF'
      FixedChar = True
      Size = 30
    end
    object PedCt2DSCREG: TFloatField
      FieldName = 'DSCREG'
    end
    object PedCt2NUMPEDCOMPRA: TStringField
      FieldName = 'NUMPEDCOMPRA'
      Size = 15
    end
    object PedCt2NUMITEMCOMPRA: TIntegerField
      FieldName = 'NUMITEMCOMPRA'
    end
    object PedCt2DSCORGPUBLIC: TFloatField
      FieldName = 'DSCORGPUBLIC'
    end
    object PedCt2VLDORGPUBLIC: TFloatField
      FieldName = 'VLDORGPUBLIC'
    end
    object PedCt2CONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object PedCt2FRTSUB: TFloatField
      FieldName = 'FRTSUB'
    end
    object PedCt2SEGSUB: TFloatField
      FieldName = 'SEGSUB'
    end
    object PedCt2DESSUB: TFloatField
      FieldName = 'DESSUB'
    end
    object PedCt2DSCSUB: TFloatField
      FieldName = 'DSCSUB'
    end
    object PedCt2DSCIPI: TFloatField
      FieldName = 'DSCIPI'
    end
    object PedCt2DSCICM: TFloatField
      FieldName = 'DSCICM'
    end
    object PedCt2QTNCT2: TFloatField
      FieldName = 'QTNCT2'
    end
    object PedCt2ID_PEDCT2: TIntegerField
      FieldName = 'ID_PEDCT2'
    end
    object PedCt2TOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object PedCt2TOTBRT: TFloatField
      FieldName = 'TOTBRT'
    end
    object PedCt2CODTXF2: TStringField
      FieldName = 'CODTXF2'
      Size = 30
    end
    object PedCt2ID_ESTICM: TIntegerField
      FieldName = 'ID_ESTICM'
    end
    object PedCt2CEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object PedCt2ALIQ_FCPUFDEST: TFloatField
      FieldName = 'ALIQ_FCPUFDEST'
    end
    object PedCt2ALIQ_ICMSUFDEST: TFloatField
      FieldName = 'ALIQ_ICMSUFDEST'
    end
    object PedCt2ALIQ_ICMSINTER: TFloatField
      FieldName = 'ALIQ_ICMSINTER'
    end
    object PedCt2ALIQ_ICMSINTERPART: TFloatField
      FieldName = 'ALIQ_ICMSINTERPART'
    end
    object PedCt2ID_REGRA_FCP: TIntegerField
      FieldName = 'ID_REGRA_FCP'
    end
    object PedCt2COD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      FixedChar = True
      Size = 3
    end
  end
  object PedPar: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select ExiMka From PedPar')
    UniDirectional = True
    ValidateWithMask = True
    Left = 111
    Top = 269
    object PedParEXIMKA: TStringField
      FieldName = 'EXIMKA'
      FixedChar = True
      Size = 3
    end
  end
  object PedCta: TwwQuery
    CachedUpdates = True
    AfterOpen = PedCtaAfterOpen
    AfterScroll = PedCtaAfterScroll
    OnNewRecord = PedCtaNewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedCta'
      'Where PedCta.CodEmp = :CodEmp'
      '     and PedCta.DteCta = :DteCta'
      '     and PedCta.NumCta = :NumCta')
    UpdateObject = UpCta
    ValidateWithMask = True
    Left = 22
    Top = 269
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DteCta'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NumCta'
        ParamType = ptUnknown
      end>
    object PedCtaCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object PedCtaDTECTA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTECTA'
      EditMask = '!99/99/9999;1;_'
    end
    object PedCtaNUMCTA: TIntegerField
      FieldName = 'NUMCTA'
    end
    object PedCtaHRECTA: TStringField
      FieldName = 'HRECTA'
      FixedChar = True
      Size = 8
    end
    object PedCtaCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object PedCtaCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object PedCtaCODPFA: TStringField
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedCtaTIPPFA: TStringField
      FieldName = 'TIPPFA'
      FixedChar = True
      Size = 7
    end
    object PedCtaUFECTA: TStringField
      FieldName = 'UFECTA'
      FixedChar = True
      Size = 2
    end
    object PedCtaQTICTA: TIntegerField
      FieldName = 'QTICTA'
    end
    object PedCtaSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object PedCtaBASIPI: TFloatField
      FieldName = 'BASIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaBASICM: TFloatField
      FieldName = 'BASICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTICM: TFloatField
      FieldName = 'TOTICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaBASSUB: TFloatField
      FieldName = 'BASSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTITE: TFloatField
      FieldName = 'TOTITE'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTREN: TFloatField
      FieldName = 'TOTREN'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTGER: TFloatField
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaDSCREG: TFloatField
      FieldName = 'DSCREG'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaDSCCOM: TFloatField
      FieldName = 'DSCCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDDCO: TFloatField
      FieldName = 'MEDDCO'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaMEDACR: TFloatField
      FieldName = 'MEDACR'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedCtaTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTACR: TFloatField
      FieldName = 'TOTACR'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTDCO: TFloatField
      FieldName = 'TOTDCO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTVEN: TFloatField
      FieldName = 'TOTVEN'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaTOTCST: TFloatField
      FieldName = 'TOTCST'
      DisplayFormat = '###,###,##0.0000'
      Precision = 4
    end
    object PedCtaCODATD: TIntegerField
      FieldName = 'CODATD'
    end
    object PedCtaCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object PedCtaFLGTAB: TStringField
      FieldName = 'FLGTAB'
      FixedChar = True
      Size = 25
    end
    object PedCtaFLGCTB: TStringField
      FieldName = 'FLGCTB'
      FixedChar = True
      Size = 3
    end
    object PedCtaSEQCTA: TStringField
      FieldName = 'SEQCTA'
      FixedChar = True
      Size = 22
    end
    object PedCtaCONSUM: TStringField
      FieldName = 'CONSUM'
      FixedChar = True
      Size = 3
    end
    object PedCtaCODIPI: TStringField
      FieldName = 'CODIPI'
      FixedChar = True
      Size = 30
    end
    object PedCtaTIPIPI: TStringField
      FieldName = 'TIPIPI'
      FixedChar = True
      Size = 7
    end
    object PedCtaTRBIPI: TStringField
      FieldName = 'TRBIPI'
      FixedChar = True
      Size = 3
    end
    object PedCtaREDIPI: TFloatField
      FieldName = 'REDIPI'
    end
    object PedCtaBSCIPI: TFloatField
      FieldName = 'BSCIPI'
    end
    object PedCtaCODICM: TStringField
      FieldName = 'CODICM'
      FixedChar = True
    end
    object PedCtaTIPICM: TStringField
      FieldName = 'TIPICM'
      FixedChar = True
      Size = 7
    end
    object PedCtaTRBICM: TStringField
      FieldName = 'TRBICM'
      FixedChar = True
      Size = 3
    end
    object PedCtaREDICM: TFloatField
      FieldName = 'REDICM'
    end
    object PedCtaBSCICM: TFloatField
      FieldName = 'BSCICM'
    end
    object PedCtaINCREV: TFloatField
      FieldName = 'INCREV'
    end
    object PedCtaINCFIN: TFloatField
      FieldName = 'INCFIN'
    end
    object PedCtaTXFIPI: TStringField
      FieldName = 'TXFIPI'
      FixedChar = True
      Size = 160
    end
    object PedCtaTXFICM: TStringField
      FieldName = 'TXFICM'
      FixedChar = True
      Size = 160
    end
    object PedCtaEMPRES: TIntegerField
      FieldName = 'EMPRES'
    end
    object PedCtaDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object PedCtaNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object PedCtaOBSCND: TStringField
      FieldName = 'OBSCND'
      FixedChar = True
      Size = 100
    end
    object PedCtaOBSENT: TStringField
      FieldName = 'OBSENT'
      FixedChar = True
      Size = 100
    end
    object PedCtaOBSVAL: TStringField
      FieldName = 'OBSVAL'
      FixedChar = True
      Size = 100
    end
    object PedCtaOBSCLI: TStringField
      FieldName = 'OBSCLI'
      FixedChar = True
      Size = 100
    end
    object PedCtaSITCTA: TStringField
      FieldName = 'SITCTA'
      FixedChar = True
      Size = 45
    end
    object PedCtaLANEST: TStringField
      FieldName = 'LANEST'
      FixedChar = True
      Size = 3
    end
    object PedCtaINTFIN: TStringField
      FieldName = 'INTFIN'
      FixedChar = True
      Size = 3
    end
    object PedCtaCODFIL: TIntegerField
      FieldName = 'CODFIL'
    end
    object PedCtaATUEST: TStringField
      FieldName = 'ATUEST'
      FixedChar = True
      Size = 3
    end
    object PedCtaOBSCTA: TMemoField
      FieldName = 'OBSCTA'
      BlobType = ftMemo
      Size = 500
    end
    object PedCtaFLGPSQ: TStringField
      FieldName = 'FLGPSQ'
      FixedChar = True
      Size = 3
    end
    object PedCtaFLGSLD: TStringField
      FieldName = 'FLGSLD'
      FixedChar = True
      Size = 1
    end
    object PedCtaFLGOCO: TStringField
      FieldName = 'FLGOCO'
      FixedChar = True
      Size = 1
    end
    object PedCtaCODTCL: TIntegerField
      FieldName = 'CODTCL'
    end
    object PedCtaNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object PedCtaCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Size = 18
    end
    object PedCtaINSCLI: TStringField
      FieldName = 'INSCLI'
      FixedChar = True
      Size = 18
    end
    object PedCtaCLITAB: TStringField
      FieldName = 'CLITAB'
      FixedChar = True
      Size = 23
    end
    object PedCtaCODGCL: TIntegerField
      FieldName = 'CODGCL'
    end
    object PedCtaDSCCTA: TFloatField
      FieldName = 'DSCCTA'
    end
    object PedCtaFLGIPI: TStringField
      FieldName = 'FLGIPI'
      Origin = 'ISADE.PEDCTA.FLGIPI'
      FixedChar = True
      Size = 3
    end
    object PedCtaTOTIPC: TFloatField
      FieldName = 'TOTIPC'
      Origin = 'ISADE.PEDCTA.TOTIPC'
    end
    object PedCtaMODPFA: TStringField
      FieldName = 'MODPFA'
      Origin = 'ISADE.PEDCTA.MODPFA'
      FixedChar = True
    end
    object PedCtaCODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.PEDCTA.CODCFO'
      FixedChar = True
      Size = 15
    end
    object PedCtaFLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDCTA.FLGATU'
      FixedChar = True
      Size = 1
    end
    object PedCtaBASPIS: TFloatField
      FieldName = 'BASPIS'
      Origin = 'ISADE.PEDCTA.BASPIS'
    end
    object PedCtaTOTPIS: TFloatField
      FieldName = 'TOTPIS'
      Origin = 'ISADE.PEDCTA.TOTPIS'
    end
    object PedCtaBASCOF: TFloatField
      FieldName = 'BASCOF'
      Origin = 'ISADE.PEDCTA.BASCOF'
    end
    object PedCtaTOTCOF: TFloatField
      FieldName = 'TOTCOF'
      Origin = 'ISADE.PEDCTA.TOTCOF'
    end
    object PedCtaTOTDESCINC: TFloatField
      FieldName = 'TOTDESCINC'
      Origin = 'ISADE.PEDCTA.TOTDESCINC'
    end
    object PedCtaTOTOUTDESP: TFloatField
      FieldName = 'TOTOUTDESP'
      Origin = 'ISADE.PEDCTA.TOTOUTDESP'
    end
    object PedCtaTOTSEG: TFloatField
      FieldName = 'TOTSEG'
      Origin = 'ISADE.PEDCTA.TOTSEG'
    end
    object PedCtaTOTFRT: TFloatField
      FieldName = 'TOTFRT'
      Origin = 'ISADE.PEDCTA.TOTFRT'
    end
    object PedCtaFRTICM: TFloatField
      FieldName = 'FRTICM'
      Origin = 'ISADE.PEDCTA.FRTICM'
    end
    object PedCtaSEGICM: TFloatField
      FieldName = 'SEGICM'
      Origin = 'ISADE.PEDCTA.SEGICM'
    end
    object PedCtaDESICM: TFloatField
      FieldName = 'DESICM'
      Origin = 'ISADE.PEDCTA.DESICM'
    end
    object PedCtaFRTIPI: TFloatField
      FieldName = 'FRTIPI'
      Origin = 'ISADE.PEDCTA.FRTIPI'
    end
    object PedCtaSEGIPI: TFloatField
      FieldName = 'SEGIPI'
      Origin = 'ISADE.PEDCTA.SEGIPI'
    end
    object PedCtaDESIPI: TFloatField
      FieldName = 'DESIPI'
      Origin = 'ISADE.PEDCTA.DESIPI'
    end
    object PedCtaID_FRETE: TIntegerField
      FieldName = 'ID_FRETE'
      Origin = 'ISADE.PEDCTA.ID_FRETE'
      OnChange = PedCtaID_FRETEChange
    end
    object PedCtaTOTITETRB: TFloatField
      FieldName = 'TOTITETRB'
      Origin = 'ISADE.PEDCTA.TOTITETRB'
    end
    object PedCtaTRBPIS: TStringField
      FieldName = 'TRBPIS'
      Origin = 'ISADE.PEDCTA.TRBPIS'
      FixedChar = True
      Size = 3
    end
    object PedCtaTRBCOF: TStringField
      FieldName = 'TRBCOF'
      Origin = 'ISADE.PEDCTA.TRBCOF'
      FixedChar = True
      Size = 3
    end
    object PedCtaALIQPIS: TIntegerField
      FieldName = 'ALIQPIS'
      Origin = 'ISADE.PEDCTA.ALIQPIS'
    end
    object PedCtaALIQCOF: TFloatField
      FieldName = 'ALIQCOF'
      Origin = 'ISADE.PEDCTA.ALIQCOF'
    end
    object PedCtaCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'ISADE.PEDCTA.CSTPIS'
      FixedChar = True
      Size = 2
    end
    object PedCtaCSTCOF: TStringField
      FieldName = 'CSTCOF'
      Origin = 'ISADE.PEDCTA.CSTCOF'
      FixedChar = True
      Size = 2
    end
    object PedCtaSUFR_ICMS: TStringField
      FieldName = 'SUFR_ICMS'
      Origin = 'ISADE.PEDCTA.SUFR_ICMS'
      FixedChar = True
      Size = 1
    end
    object PedCtaSUFR_IPI: TStringField
      FieldName = 'SUFR_IPI'
      Origin = 'ISADE.PEDCTA.SUFR_IPI'
      FixedChar = True
      Size = 1
    end
    object PedCtaSUFR_PIS: TStringField
      FieldName = 'SUFR_PIS'
      Origin = 'ISADE.PEDCTA.SUFR_PIS'
      FixedChar = True
      Size = 1
    end
    object PedCtaSUFR_COFINS: TStringField
      FieldName = 'SUFR_COFINS'
      Origin = 'ISADE.PEDCTA.SUFR_COFINS'
      FixedChar = True
      Size = 1
    end
    object PedCtaNROSUF: TStringField
      FieldName = 'NROSUF'
      Origin = 'ISADE.PEDCTA.NROSUF'
    end
    object PedCtaDTVSUF: TDateTimeField
      FieldName = 'DTVSUF'
      Origin = 'ISADE.PEDCTA.DTVSUF'
    end
    object PedCtaREGTRB: TIntegerField
      FieldName = 'REGTRB'
      Origin = 'ISADE.PEDCTA.REGTRB'
    end
    object PedCtaREGTRBEMP: TIntegerField
      FieldName = 'REGTRBEMP'
      Origin = 'ISADE.PEDCTA.REGTRBEMP'
    end
    object PedCtaINDIC_CF: TIntegerField
      FieldName = 'INDIC_CF'
      Origin = 'ISADE.PEDCTA.INDIC_CF'
    end
    object PedCtaINDIC_PRESENCA: TIntegerField
      FieldName = 'INDIC_PRESENCA'
      Origin = 'ISADE.PEDCTA.INDIC_PRESENCA'
    end
    object PedCtaFRTSUB: TFloatField
      FieldName = 'FRTSUB'
      Origin = 'ISADE.PEDCTA.FRTSUB'
    end
    object PedCtaSEGSUB: TFloatField
      FieldName = 'SEGSUB'
      Origin = 'ISADE.PEDCTA.SEGSUB'
    end
    object PedCtaDESSUB: TFloatField
      FieldName = 'DESSUB'
      Origin = 'ISADE.PEDCTA.DESSUB'
    end
    object PedCtaDSCSUB: TFloatField
      FieldName = 'DSCSUB'
      Origin = 'ISADE.PEDCTA.DSCSUB'
    end
    object PedCtaDSCIPI: TFloatField
      FieldName = 'DSCIPI'
      Origin = 'ISADE.PEDCTA.DSCIPI'
    end
    object PedCtaDSCICM: TFloatField
      FieldName = 'DSCICM'
      Origin = 'ISADE.PEDCTA.DSCICM'
    end
    object PedCtaTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'ISADE.PEDCTA.TOTLIQ'
    end
    object PedCtaTOTBRT: TFloatField
      FieldName = 'TOTBRT'
      Origin = 'ISADE.PEDCTA.TOTBRT'
    end
    object PedCtaQTICT3: TIntegerField
      FieldName = 'QTICT3'
      Origin = 'ISADE.PEDCTA.QTICT3'
    end
    object PedCtaID_ESTICM: TIntegerField
      FieldName = 'ID_ESTICM'
      Origin = 'ISADE.PEDCTA.ID_ESTICM'
    end
    object PedCtaID_ESTIPI: TIntegerField
      FieldName = 'ID_ESTIPI'
      Origin = 'ISADE.PEDCTA.ID_ESTIPI'
    end
    object PedCtaSEQCT3: TIntegerField
      FieldName = 'SEQCT3'
      Origin = 'ISADE.PEDCTA.SEQCT3'
    end
    object PedCtaFLGAVI: TStringField
      FieldName = 'FLGAVI'
      Origin = 'ISADE.PEDCTA.FLGAVI'
      FixedChar = True
      Size = 3
    end
    object PedCtaCODREGTRIB: TIntegerField
      FieldName = 'CODREGTRIB'
      Origin = 'ISADE.PEDCTA.CODREGTRIB'
    end
  end
  object TIPFRT: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select frt.id,CAST(frt.id as VARCHAR(2))||'#39' - '#39' ||frt.descfrt no' +
        'mfrt FROM TIPFRT frt')
    UniDirectional = True
    ValidateWithMask = True
    Left = 93
    Top = 371
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
    Left = 123
    Top = 371
  end
  object DsTCl: TDataSource
    DataSet = FinTCl
    Left = 128
    Top = 332
  end
  object FinTCl: TQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select codtcl,cast(codtcl as char(3))||'#39' - '#39'|| nomtcl nomtcl Fro' +
        'm FinTCl'
      'Order by codTCl')
    Left = 96
    Top = 332
    object FinTClCODTCL: TIntegerField
      FieldName = 'CODTCL'
    end
    object FinTClNOMTCL: TStringField
      FieldName = 'NOMTCL'
      Size = 46
    end
  end
  object dsCFOP: TwwDataSource
    DataSet = CFOP
    Left = 54
    Top = 357
  end
  object CFOP: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select * from CFOP where Substring(CODCFO from 1 for 1) in ('#39'5'#39',' +
        #39'6'#39','#39'7'#39')')
    ValidateWithMask = True
    Left = 24
    Top = 356
    object CFOPCODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.CFOP.CODCFO'
      FixedChar = True
      Size = 5
    end
    object CFOPDESCFO: TMemoField
      FieldName = 'DESCFO'
      Origin = 'ISADE.CFOP.DESCFO'
      BlobType = ftMemo
      Size = 1000
    end
    object CFOPAPLCFO: TMemoField
      FieldName = 'APLCFO'
      Origin = 'ISADE.CFOP.APLCFO'
      BlobType = ftMemo
      Size = 1000
    end
  end
  object FINREGTRIB: TQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select NUMREGTRIB,cast(NUMREGTRIB as char(3))||'#39' - '#39'|| NOMREGTRI' +
        'B NOMREGTRIB From FINREGTRIB'
      'Order by NUMREGTRIB')
    Left = 168
    Top = 300
    object FINREGTRIBNUMREGTRIB: TIntegerField
      FieldName = 'NUMREGTRIB'
    end
    object FINREGTRIBNOMREGTRIB: TStringField
      FieldName = 'NOMREGTRIB'
      Size = 76
    end
  end
  object dsREGTRIB: TDataSource
    DataSet = FINREGTRIB
    Left = 200
    Top = 300
  end
end
