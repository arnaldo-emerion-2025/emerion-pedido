inherited fmManStr2: TfmManStr2
  Left = 330
  Top = 14
  BorderStyle = bsNone
  Caption = 'Regras de substituição tributária - Novo'
  ClientHeight = 641
  ClientWidth = 767
  Color = 15788249
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape8: TShape
    Left = 800
    Top = 529
    Width = 762
    Height = 17
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
    Visible = False
  end
  object Label107: TLabel
    Left = 802
    Top = 497
    Width = 82
    Height = 13
    Caption = 'Regra de ICMS : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label48: TLabel
    Left = 802
    Top = 470
    Width = 73
    Height = 13
    Caption = 'Tipo de cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label20: TLabel
    Left = 802
    Top = 439
    Width = 95
    Height = 13
    Caption = 'Tipo da mercadoria:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label29: TLabel
    Left = 804
    Top = 530
    Width = 106
    Height = 13
    Caption = 'Origem do produto'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object pcStr: TPageControl
    Left = 0
    Top = 0
    Width = 771
    Height = 641
    ActivePage = pcPag2
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    TabWidth = 118
    object pcPag1: TTabSheet
      Caption = '&Visualizar'
      OnShow = pcPag1Show
      object Shape1: TShape
        Left = 0
        Top = 99
        Width = 237
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 0
        Top = 0
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Shape11: TShape
        Left = 0
        Top = 589
        Width = 762
        Height = 21
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label12: TLabel
        Left = 4
        Top = 593
        Width = 253
        Height = 13
        Caption = 'Crtl+'#39'I'#39'-Incluir Ctrl+'#39'E'#39'-Excluir Ctrl+'#39'S'#39'-Salvar'
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
      object Label1: TLabel
        Left = 4
        Top = 107
        Width = 116
        Height = 13
        Caption = 'Regras selecionadas'
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
      object Label4: TLabel
        Left = 2
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Código:'
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
      object Label6: TLabel
        Left = 2
        Top = 73
        Width = 58
        Height = 13
        Caption = 'Descrição:'
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
      object Label8: TLabel
        Left = 4
        Top = 2
        Width = 154
        Height = 13
        Caption = 'Informações para pesquisa'
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
      object Shape2: TShape
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape3: TShape
        Left = 238
        Top = 112
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Label11: TLabel
        Left = 2
        Top = 48
        Width = 57
        Height = 13
        Caption = 'Operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 130
        Width = 762
        Height = 455
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 0
        object grStr: ThGrid
          Tag = 1
          Left = 1
          Top = 1
          Width = 760
          Height = 453
          Selected.Strings = (
            'CODSTR'#9'25'#9'Código'
            'NOMSTR'#9'78'#9'Descrição'
            'TIPSTR'#9'17'#9'Tipo de Operação     ')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          BorderStyle = bsNone
          Color = 16577773
          DataSource = DsStr
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleLines = 1
          TitleButtons = False
          OnDblClick = grStrDblClick
          IndicatorColor = icYellow
          CorDeFoco = clInfoBk
        end
      end
      object EdPsqNomStr: TdxColorEdit
        Left = 65
        Top = 70
        Width = 423
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
        CharCase = ecUpperCase
        CorDeFoco = clInfoBk
      end
      object EdPsqCodStr: TdxColorEdit
        Left = 65
        Top = 20
        Width = 136
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
        CharCase = ecUpperCase
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 2
      end
      object BbPesquisa: TBitBtn
        Left = 334
        Top = 17
        Width = 152
        Height = 45
        Caption = '&Selecionar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = bbPesquisaClick
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
          FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
          FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
          FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
          FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
          CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
          CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
          CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
          CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
          990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
          990000CC9900FF999900CC99990099999900669999003399990000999900FF66
          9900CC66990099669900666699003366990000669900FF339900CC3399009933
          9900663399003333990000339900FF009900CC00990099009900660099003300
          990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
          6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
          6600669966003399660000996600FF666600CC66660099666600666666003366
          660000666600FF336600CC33660099336600663366003333660000336600FF00
          6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
          330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
          330000CC3300FF993300CC99330099993300669933003399330000993300FF66
          3300CC66330099663300666633003366330000663300FF333300CC3333009933
          3300663333003333330000333300FF003300CC00330099003300660033003300
          330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
          000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
          000000990000FF660000CC66000099660000666600000066000033660000FF33
          0000CC33000099330000663300003333000000330000CC000000990000006600
          0000330000000000DD000000BB000000AA000000880000007700000055000000
          44000000220000DD000000BB000000AA00000088000000770000005500000044
          000000220000DDDDDD0055555500777777007777770044444400222222001111
          110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00323232323232
          323232000000000000000000EDEDED3232323232323232323232323232323232
          00000031313131FF5CFF5C5C000000EDEDED3232323232323232323232320000
          31313131313131FF5CFF5C5C5C5C5C0000EDEDED323232323232323232005C5C
          31313131313131FF5CFF5C5C5C5C5C5C5C00EDEDED32323232323232005C5C5C
          31313131313131FF5CFF5C5C5C5C5C5C5C5C00EDEDED3232323232005C5C5C5C
          3131310000000000000000005C5C5C5C5C5C5C00EDEDED323232005C5C5C5C5C
          000000FFFFFFFFFFFFFFFFFF0000005C5C5C5C5C00EDED323232005C5C5C0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005C5C5C00EDEDED3232005C5C00FFFF
          FFFF00000000000000000000FFFFFFFFFF005C5C00EDEDED3232005C00FFFFFF
          00005B5B5B5B5B5B5B5B5B5B000000FFFFFF005C00EDEDEDED320000FFFFFF00
          5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B00FFFFFF0000EDEDEDED3200FFFFFF0087
          5B5B5B5B5B5B5B5B5BFFFFFF5B5B5B5B00FFFFFF00EDEDEDED3200FFFF005C5B
          875B5B5B5B5B5B5B5B5B5B5BFF5B5B875B00FFFF00EDEDED323200FFFF005C5C
          5B8787315B5B5B5B5B5B5B5BFF87875B5C00FFFF00EDEDED323200FFFF005C5C
          5C5B31FF3187878787878787875B5C5C5C00FFFF00EDED32323200FFFFFF005C
          5C5C5C315B5B5B5B5B5B5B5B5B5CF75B00FFFFFF00ED323232323200FFFFFF00
          5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C00FFFFFF00323232323232323200FFFFFF
          0000005C5C5C5C5C5C5C5C5C5C0000FFFFFF003232323232323232323200FFFF
          FFFFFF00000000000000000000FFFFFFFF00EDED323232323232323232320000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00005D00EDED3232323232323232323232
          000000FFFFFFFFFFFFFFFFFFFF00000707075D00EDED32323232323232323232
          3232320000000000000000000007FFFF0707070000EDED323232323232323232
          323232323232323232323232320007FFFF0700000000EDED3232323232323232
          323232323232323232323232323200000000F100000000EDED32323232323232
          32323232323232323232323232323200F0EDF0F100000000EDED323232323232
          3232323232323232323232323232323200F0EDF0F100000000ED323232323232
          323232323232323232323232323232323200F0EDF0F100000000323232323232
          32323232323232323232323232323232323200F0EDF0F1000000323232323232
          3232323232323232323232323232323232323200F0EDF0F10000323232323232
          323232323232323232323232323232323232323200F0EDF0F100323232323232
          3232323232323232323232323232323232323232320000000032323232323232
          3232323232323232323232323232323232323232323232323232}
      end
      object rgOrdem: TRadioGroup
        Left = 490
        Top = 22
        Width = 137
        Height = 82
        Caption = ' Exibido Por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Código'
          'Descrição'
          'Tipo')
        ParentFont = False
        TabOrder = 4
      end
      object rgBusca: TRadioGroup
        Left = 630
        Top = 22
        Width = 132
        Height = 82
        Caption = ' Tipo de Busca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Iniciais'
          'Inteligente')
        ParentFont = False
        TabOrder = 5
      end
      object EdPsqTipStr: TdxColorPickEdit
        Left = 65
        Top = 44
        Width = 136
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
        HideSelection = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada'
          'Todos')
        CorDeFoco = clInfoBk
      end
    end
    object pcPag2: TTabSheet
      Caption = '&Identificação'
      object Shape5: TShape
        Left = 238
        Top = 8
        Width = 523
        Height = 3
        Brush.Color = 11106843
        Pen.Color = 14789952
      end
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 237
        Height = 18
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label13: TLabel
        Left = 4
        Top = 2
        Width = 129
        Height = 13
        Caption = 'Informações principais'
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
      object Label14: TLabel
        Left = 2
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Código:'
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
      object Label15: TLabel
        Left = 208
        Top = 24
        Width = 58
        Height = 13
        Caption = 'Descrição:'
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
      object Label23: TLabel
        Left = 239
        Top = 48
        Width = 27
        Height = 13
        Caption = 'NCM:'
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
      object Label24: TLabel
        Left = 424
        Top = 48
        Width = 85
        Height = 13
        Caption = '% IVA Original:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape6: TShape
        Left = 0
        Top = 73
        Width = 760
        Height = 27
        Brush.Color = 14789952
        Pen.Color = 11764252
        Shape = stRoundRect
      end
      object Label73: TLabel
        Left = 4
        Top = 81
        Width = 215
        Height = 13
        Caption = 'Unidades da Federação com Protocolo'
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
      object Label22: TLabel
        Left = 583
        Top = 48
        Width = 107
        Height = 13
        Caption = '% ICMS Dentro UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 2
        Top = 48
        Width = 57
        Height = 13
        Caption = 'Operação:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdCodStr: TdxDBColorEdit
        Left = 65
        Top = 20
        Width = 136
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'CODSTR'
        DataSource = DsStr
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object EdNomStr: TdxDBColorEdit
        Left = 272
        Top = 20
        Width = 308
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
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'NOMSTR'
        DataSource = DsStr
        CorDeFoco = clInfoBk
        StoredValues = 1
      end
      object pEstUfe: TPanel
        Left = -2
        Top = 260
        Width = 763
        Height = 349
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15788249
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnExit = pEstUfeExit
        object Label19: TLabel
          Left = 6
          Top = 35
          Width = 83
          Height = 13
          Caption = 'UF de Destino: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel2: TBevel
          Left = 4
          Top = 86
          Width = 756
          Height = 2
        end
        object Label25: TLabel
          Left = 6
          Top = 122
          Width = 85
          Height = 13
          Caption = '% IVA Original:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 472
          Top = 122
          Width = 107
          Height = 13
          Caption = '% ICMS Dentro UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 201
          Top = 123
          Width = 159
          Height = 13
          Caption = '(Índice de Valor Adicionado)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 6
          Top = 183
          Width = 161
          Height = 13
          Caption = '% Aliquota Interna do ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 6
          Top = 253
          Width = 209
          Height = 13
          Caption = '% Margem de Valor Agregado - MVA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 6
          Top = 324
          Width = 166
          Height = 13
          Caption = 'Texto Fiscal para a Operação:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 6
          Top = 300
          Width = 160
          Height = 13
          Caption = 'Situação Tributária do ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 6
          Top = 277
          Width = 194
          Height = 13
          Caption = 'Código Fiscal de Operações - CFOP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel3: TBevel
          Left = 4
          Top = 172
          Width = 756
          Height = 2
        end
        object Label21: TLabel
          Left = 4
          Top = 149
          Width = 129
          Height = 13
          Caption = '% ICMS Interestadual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 386
          Top = 149
          Width = 192
          Height = 13
          Caption = '% ICMS Interestadual (SINIEF20):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 208
          Top = 149
          Width = 41
          Height = 13
          Caption = '% MVA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 650
          Top = 149
          Width = 41
          Height = 13
          Caption = '% MVA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 6
          Top = 61
          Width = 111
          Height = 13
          Caption = 'Regime Tributário : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 413
          Top = 253
          Width = 272
          Height = 13
          Caption = '% Margem de Valor Agregado - MVA (SINIEF20):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 6
          Top = 8
          Width = 89
          Height = 13
          Caption = 'UF da Empresa: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 6
          Top = 207
          Width = 185
          Height = 13
          Caption = '% Redução do Valor do Imposto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 6
          Top = 230
          Width = 106
          Height = 13
          Caption = '% Base de Cálculo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object EdSigUfe: TdxDBColorEdit
          Left = 99
          Top = 31
          Width = 48
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          OnExit = EdSigUfeExit
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'SIGUFE'
          DataSource = DsEstUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomUfe: TdxDBColorLookupEdit
          Left = 151
          Top = 32
          Width = 607
          Color = 16577773
          DragMode = dmAutomatic
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          TabStop = False
          DataField = 'SIGUFE'
          DataSource = DsEstUfe
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMUFE'
          KeyFieldName = 'SIGUFE'
          ListSource = DsGerUfe
          LookupKeyValue = 'SP'
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object edIVAEnt: TdxDBColorCurrencyEdit
          Left = 139
          Top = 119
          Width = 60
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
          TabOrder = 3
          Alignment = taRightJustify
          DataField = 'IVA_ORGINAL'
          DataSource = DsEstUfe
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object edIcmEnt: TdxDBColorCurrencyEdit
          Left = 584
          Top = 118
          Width = 60
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
          Alignment = taRightJustify
          DataField = 'ICM_DENT_UF'
          DataSource = DsEstUfe
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object EdIcmSub1: TdxDBColorCurrencyEdit
          Left = 220
          Top = 179
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 7
          Alignment = taRightJustify
          DataField = 'ICMSUB'
          DataSource = DsEstUfe
          DecimalPlaces = 0
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object EdMrgSub1: TdxDBColorCurrencyEdit
          Left = 220
          Top = 249
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 8
          Alignment = taRightJustify
          DataField = 'MRGMVA'
          DataSource = DsEstUfe
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object EdCodTxf1: TdxDBColorEdit
          Left = 178
          Top = 320
          Width = 110
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
          DataField = 'CODTXF'
          DataSource = DsEstUfe
          CorDeFoco = clInfoBk
          StoredValues = 1
        end
        object CbNomTxf1: TdxDBColorLookupEdit
          Left = 288
          Top = 320
          Width = 469
          Color = 16577773
          DragMode = dmAutomatic
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
          TabStop = False
          DataField = 'CODTXF'
          DataSource = DsEstUfe
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'DSRTXF'
          KeyFieldName = 'CODTXF'
          ListSource = DsTxf
          LookupKeyValue = Null
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object edCodSt2: TdxDBColorEdit
          Left = 220
          Top = 296
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
          TabOrder = 10
          OnExit = EdRegIcm1Exit
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'CODST2'
          DataSource = DsEstUfe
          ReadOnly = False
          CorDeFoco = clInfoBk
          StoredValues = 65
        end
        object EdCodCfo1: TdxDBColorEdit
          Left = 220
          Top = 273
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
          TabOrder = 9
          OnExit = EdCodCfo1Exit
          OnKeyPress = EdCodCfo1KeyPress
          Alignment = taCenter
          CharCase = ecUpperCase
          DataField = 'CODCFO'
          DataSource = DsEstUfe
          MaxLength = 5
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object CbNomSt2: TdxDBColorLookupEdit
          Left = 288
          Top = 296
          Width = 468
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
          TabStop = False
          DataField = 'CODST2'
          DataSource = DsEstUfe
          ReadOnly = False
          ListFieldName = 'NOMST2;CODST2'
          KeyFieldName = 'CODST2'
          ListSource = DsSt2
          LookupKeyValue = '10'
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object CbCalc_MVA: TCheckBox
          Tag = 1
          Left = 6
          Top = 97
          Width = 283
          Height = 15
          TabStop = False
          Caption = 'Calcular MVA (ou IVA Ajustado) Manualmente'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnClick = CbCalc_MVAClick
        end
        object dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit
          Left = 140
          Top = 145
          Width = 60
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
          TabOrder = 5
          Alignment = taRightJustify
          DataField = 'ICM_INTEREST'
          DataSource = DsEstUfe
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit
          Left = 585
          Top = 145
          Width = 60
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
          TabOrder = 6
          Alignment = taRightJustify
          DataField = 'ICM_INTER_SINIEF'
          DataSource = DsEstUfe
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object BbCalc_MVA: TButton
          Left = 666
          Top = 92
          Width = 91
          Height = 23
          Caption = 'Calcular'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          TabStop = False
          OnClick = BbCalc_MVAClick
        end
        object EdRegTrib: TdxDBColorLookupEdit
          Left = 123
          Top = 58
          Width = 635
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
          TabStop = False
          DataField = 'CODREGTRIB'
          DataSource = DsEstUfe
          ReadOnly = False
          OnChange = EdRegTribChange
          ListFieldName = 'NOMREGTRIB'
          KeyFieldName = 'NUMREGTRIB'
          ListSource = dsFINREGTRIB
          LookupKeyValue = 3
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit
          Left = 689
          Top = 249
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 17
          Alignment = taRightJustify
          DataField = 'MRGMVA_SINIEF'
          DataSource = DsEstUfe
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object edUfEmitente: TdxDBColorEdit
          Left = 99
          Top = 4
          Width = 48
          Color = 16577773
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Alignment = taLeftJustify
          CharCase = ecUpperCase
          DataField = 'UFEMITENTE'
          DataSource = DsEstUfe
          MaxLength = 2
          CorDeFoco = clInfoBk
          StoredValues = 3
        end
        object cbNomUfEmit: TdxDBColorLookupEdit
          Left = 150
          Top = 5
          Width = 609
          Color = 16577773
          DragMode = dmAutomatic
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = 14789952
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtInactive
          Style.HotTrack = True
          Style.Shadow = True
          TabOrder = 18
          TabStop = False
          DataField = 'UFEMITENTE'
          DataSource = DsEstUfe
          ReadOnly = False
          DropDownWidth = 700
          ListFieldName = 'NOMUFE'
          KeyFieldName = 'SIGUFE'
          ListSource = DsGerUfe
          LookupKeyValue = 'SP'
          CorDeFoco = clInfoBk
          StoredValues = 64
        end
        object edtMva: TdxColorEdit
          Left = 254
          Top = 145
          Width = 60
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
          TabOrder = 19
          CharCase = ecUpperCase
          MaxLength = 10
          CorDeFoco = clInfoBk
          StoredValues = 2
        end
        object edtMvaSinief20: TdxColorEdit
          Left = 698
          Top = 145
          Width = 60
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
          TabOrder = 20
          CharCase = ecUpperCase
          MaxLength = 10
          CorDeFoco = clInfoBk
          StoredValues = 2
        end
        object btnAplicar: TButton
          Left = 667
          Top = 119
          Width = 91
          Height = 23
          Caption = 'Aplicar'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          TabStop = False
          OnClick = btnAplicarClick
        end
        object edRedSub: TdxDBColorCurrencyEdit
          Left = 220
          Top = 202
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 22
          Alignment = taRightJustify
          DataField = 'REDSUB'
          DataSource = DsEstUfe
          OnChange = edRedSubChange
          DisplayFormat = '0.00'
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 17
        end
        object EdBasesb1: TdxDBColorCurrencyEdit
          Left = 220
          Top = 225
          Width = 68
          Color = 16577773
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
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
          TabOrder = 23
          Alignment = taRightJustify
          DataField = 'BASESB'
          DataSource = DsEstUfe
          DisplayFormat = '0.00'
          MaxValue = 99.99
          MinValue = 99.99
          Nullable = False
          UseThousandSeparator = True
          CorDeFoco = clInfoBk
          StoredValues = 49
        end
      end
      object edNCM: TdxDBColorEdit
        Left = 272
        Top = 44
        Width = 120
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        OnKeyPress = edNCMKeyPress
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        DataField = 'NCM'
        DataSource = DsStr
        MaxLength = 10
        CorDeFoco = clInfoBk
        StoredValues = 3
      end
      object dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit
        Left = 512
        Top = 44
        Width = 68
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        Alignment = taRightJustify
        DataField = 'IVAENT'
        DataSource = DsStr
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object Panel8: TPanel
        Left = 534
        Top = 74
        Width = 225
        Height = 25
        BevelOuter = bvNone
        Color = 14789952
        TabOrder = 7
        object nvUfe: ThDBNavigator
          Left = -56
          Top = -6
          Width = 281
          Height = 31
          BevelOuter = bvNone
          Caption = ' '
          Color = 14789952
          TabOrder = 0
          BeforeSalva = nvUfeBeforeSalva
          OnSalva = nvUfeSalva
          DataSource = DsEstUfe
          BaseAtualizar = 'EstIcmEstTxf'
          UsaAppend = True
          Salvar = False
          EnabledButtons = [nbAtualizar, nbInclui, nbExclui, nbSalva, nbCancela, nbNavega]
        end
      end
      object grUfe: ThGrid
        Tag = 1
        Left = 1
        Top = 101
        Width = 760
        Height = 157
        TabStop = False
        Selected.Strings = (
          'SIGUFE'#9'4'#9'U.F.'#9'F'
          'NOMUFE'#9'30'#9'Unidade da federação'#9'F'
          'ICMSUB'#9'18'#9'      Aliquota interna'#9'F'
          'MRGMVA'#9'10'#9'      % MVA'#9'F'
          'BASESB'#9'18'#9'                      %Base'#9'F'
          'IVAENT'#9'10'#9'IVA Entrada'#9'F'
          'CODREGTRIB'#9'10'#9'Regime Trib.'#9'F'
          'CODST1'#9'1'#9'Orig. Produto'#9'F'
          'ID_ESTUFE'#9'10'#9'ID_ESTUFE'#9'F'
          'ICMSENT'#9'10'#9'ICMSENT'#9'F'
          'GRUPO_ORIGEM'#9'40'#9'GRUPO_ORIGEM'#9'F'
          'UFEMITENTE'#9'3'#9'UFEMITENTE'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        ShowVertScrollBar = False
        Anchors = []
        BorderStyle = bsNone
        Color = 16577773
        DataSource = DsEstUfe
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 8
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
        IndicatorColor = icYellow
        CorDeFoco = clInfoBk
      end
      object dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit
        Left = 693
        Top = 44
        Width = 68
        Color = 16577773
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 5
        TabStop = False
        Alignment = taRightJustify
        DataField = 'ICMSENT'
        DataSource = DsStr
        DisplayFormat = '0.00'
        Nullable = False
        UseThousandSeparator = True
        CorDeFoco = clInfoBk
        StoredValues = 17
      end
      object EdTipStr: TdxDBColorPickEdit
        Left = 65
        Top = 44
        Width = 136
        Color = 16577773
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        DataField = 'TIPSTR'
        DataSource = DsStr
        ReadOnly = False
        DropDownListStyle = True
        Items.Strings = (
          'Saida'
          'Entrada')
        CorDeFoco = clInfoBk
        StoredValues = 64
      end
      object BitBtn1: TBitBtn
        Left = 671
        Top = 16
        Width = 89
        Height = 25
        Caption = 'Consultar Log'
        TabOrder = 9
        OnClick = BitBtn1Click
      end
    end
  end
  object nvStr: ThDBNavigator
    Left = 395
    Top = -3
    Width = 369
    Height = 31
    BevelOuter = bvNone
    Caption = ' '
    Color = 15788249
    TabOrder = 1
    OnSalva = nvStrSalva
    DataSource = DsStr
    BaseAtualizar = 'EstTxfEstSt1EstSt2ProTxf'
    UsaAppend = False
    Salvar = False
  end
  object EdRegIcm1: TdxDBColorEdit
    Left = 959
    Top = 493
    Width = 96
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
    Visible = False
    OnExit = EdRegIcm1Exit
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'REGICM'
    DataSource = DsEstUfe
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object CbNomIcm1: TdxDBColorLookupEdit
    Left = 1088
    Top = 493
    Width = 474
    Color = 16577773
    DragMode = dmAutomatic
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    TabStop = False
    Visible = False
    DataField = 'REGICM'
    DataSource = DsEstUfe
    ReadOnly = False
    DropDownWidth = 700
    ListFieldName = 'NOMICM'
    KeyFieldName = 'CODICM'
    ListSource = dsEstIcm
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object EdCodTCl1: TdxDBColorEdit
    Left = 959
    Top = 466
    Width = 96
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
    Visible = False
    OnKeyPress = EdCodTCl1KeyPress
    Alignment = taRightJustify
    CharCase = ecUpperCase
    DataField = 'CODTCL'
    DataSource = DsEstUfe
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object CbNomTCl: TdxDBColorLookupEdit
    Left = 1088
    Top = 466
    Width = 474
    Color = 16577773
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
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
    TabOrder = 5
    TabStop = False
    Visible = False
    DataField = 'CODTCL'
    DataSource = DsEstUfe
    DropDownWidth = 400
    ListFieldName = 'NOMTCL;CODTCL'
    KeyFieldName = 'CODTCL'
    ListSource = DsTCl
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
  end
  object EdCodTme1: TdxDBColorEdit
    Left = 959
    Top = 435
    Width = 96
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
    Visible = False
    Alignment = taLeftJustify
    CharCase = ecUpperCase
    DataField = 'CODTME'
    DataSource = DsEstUfe
    CorDeFoco = clInfoBk
    StoredValues = 1
  end
  object CbNomTme: TdxDBColorLookupEdit
    Left = 1088
    Top = 435
    Width = 474
    Color = 16577773
    DragMode = dmAutomatic
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
    TabStop = False
    Visible = False
    DataField = 'CODTME'
    DataSource = DsEstUfe
    ReadOnly = False
    DropDownWidth = 700
    ListFieldName = 'NOMTME'
    KeyFieldName = 'CODTME'
    ListSource = DsTme
    LookupKeyValue = Null
    CorDeFoco = clInfoBk
    StoredValues = 64
  end
  object hGrid1: ThGrid
    Tag = 1
    Left = 801
    Top = 547
    Width = 762
    Height = 136
    Selected.Strings = (
      'CODST1'#9'1'#9'CODST1'
      'NOMST1'#9'118'#9'NOMST1')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = dsESTST1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 8
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    Visible = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object quSql: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'ISade'
    ValidateWithMask = True
    Left = 828
    Top = 32
  end
  object EstStr: TwwQuery
    Active = True
    CachedUpdates = True
    BeforeEdit = EstStrBeforeEdit
    BeforePost = EstStrBeforePost
    AfterPost = EstStrAfterPost
    BeforeCancel = EstStrAfterCancel
    AfterCancel = EstStrAfterCancel
    BeforeDelete = EstStrBeforeDelete
    AfterScroll = EstStrAfterScroll
    OnNewRecord = EstStrNewRecord
    DatabaseName = 'ISade'
    Filter = 'tipstr = '#39'Entrada'#39
    SQL.Strings = (
      'Select *'
      'From EstStr'
      'Order by CodStr')
    UpdateObject = UpStr
    ValidateWithMask = True
    Left = 800
    Top = 4
    object EstStrCODSTR: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 25
      FieldName = 'CODSTR'
      Origin = 'ISADE.ESTSTR.CODSTR'
      FixedChar = True
    end
    object EstStrNOMSTR: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 78
      FieldName = 'NOMSTR'
      Origin = 'ISADE.ESTSTR.NOMSTR'
      FixedChar = True
      Size = 40
    end
    object EstStrTIPSTR: TStringField
      DisplayLabel = 'Tipo de Operação     '
      DisplayWidth = 17
      FieldName = 'TIPSTR'
      Origin = 'ISADE.ESTSTR.TIPSTR'
      FixedChar = True
      Size = 7
    end
    object EstStrIVAENT: TFloatField
      FieldName = 'IVAENT'
      Origin = 'ISADE.ESTSTR.IVAENT'
      Visible = False
    end
    object EstStrNCM: TStringField
      FieldName = 'NCM'
      Origin = 'ISADE.ESTSTR.NCM'
      Visible = False
      EditMask = '!0000.00.00;0;_'
      FixedChar = True
      Size = 8
    end
    object EstStrICMSENT: TFloatField
      FieldName = 'ICMSENT'
      Origin = 'ISADE.ESTSTR.ICMSENT'
      Visible = False
    end
  end
  object DsStr: TwwDataSource
    DataSet = EstStr
    OnDataChange = DsStrDataChange
    Left = 828
    Top = 4
  end
  object UpStr: TUpdateSQL
    ModifySQL.Strings = (
      'update EstStr'
      'set'
      '  NOMSTR = :NOMSTR,'
      '  IVAENT = :IVAENT,'
      '  ICMSENT = :ICMSENT'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR')
    InsertSQL.Strings = (
      'insert into EstStr'
      '  (CODSTR, TIPSTR, NOMSTR, IVAENT, NCM, ICMSENT)'
      'values'
      '  (:CODSTR, :TIPSTR, :NOMSTR, :IVAENT, :NCM, :ICMSENT)')
    DeleteSQL.Strings = (
      'delete from EstStr'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR')
    Left = 800
    Top = 32
  end
  object DsEstUfe: TwwDataSource
    DataSet = EstUfe
    OnDataChange = DsEstUfeDataChange
    Left = 893
    Top = 4
  end
  object UpEstUfe: TUpdateSQL
    ModifySQL.Strings = (
      'update EstUfe'
      'set'
      '  CODSTR = :CODSTR,'
      '  TIPSTR = :TIPSTR,'
      '  SIGUFE = :SIGUFE,'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  CODCFO = :CODCFO,'
      '  CODTXF = :CODTXF,'
      '  CODTME = :CODTME,'
      '  DTEENV = :DTEENV,'
      '  CODTCL = :CODTCL,'
      '  FLGNCALC_DIF_MVA = :FLGNCALC_DIF_MVA,'
      '  REDSUB = :REDSUB,'
      '  CODST2 = :CODST2,'
      '  IVAENT = :IVAENT,'
      '  CODST1 = :CODST1,'
      '  ID_ESTUFE = :ID_ESTUFE,'
      '  ICMSENT = :ICMSENT,'
      '  GRUPO_ORIGEM = :GRUPO_ORIGEM,'
      '  IVA_ORGINAL = :IVA_ORGINAL,'
      '  ICM_INTEREST = :ICM_INTEREST,'
      '  ICM_DENT_UF = :ICM_DENT_UF,'
      '  ICM_INTER_SINIEF = :ICM_INTER_SINIEF,'
      '  MRGMVA = :MRGMVA,'
      '  MRGMVA_SINIEF = :MRGMVA_SINIEF,'
      '  UFEMITENTE = :UFEMITENTE,'
      '  CODREGTRIB = :CODREGTRIB'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  SIGUFE = :OLD_SIGUFE and'
      '  UFEMITENTE = :OLD_UFEMITENTE and'
      '  CODREGTRIB = :OLD_CODREGTRIB')
    InsertSQL.Strings = (
      'insert into EstUfe'
      
        '  (CODSTR, TIPSTR, SIGUFE, ICMSUB, MRGSUB, BASESB, CODCFO, CODTX' +
        'F, CODTME, '
      
        '   DTEENV, CODTCL, FLGNCALC_DIF_MVA, REDSUB, CODST2, IVAENT, COD' +
        'ST1, ID_ESTUFE, '
      
        '   ICMSENT, GRUPO_ORIGEM, IVA_ORGINAL, ICM_INTEREST, ICM_DENT_UF' +
        ', ICM_INTER_SINIEF, '
      '   MRGMVA, MRGMVA_SINIEF, UFEMITENTE, CODREGTRIB)'
      'values'
      
        '  (:CODSTR, :TIPSTR, :SIGUFE, :ICMSUB, :MRGSUB, :BASESB, :CODCFO' +
        ', :CODTXF, '
      
        '   :CODTME, :DTEENV, :CODTCL, :FLGNCALC_DIF_MVA, :REDSUB, :CODST' +
        '2, :IVAENT, '
      
        '   :CODST1, :ID_ESTUFE, :ICMSENT, :GRUPO_ORIGEM, :IVA_ORGINAL, :' +
        'ICM_INTEREST, '
      
        '   :ICM_DENT_UF, :ICM_INTER_SINIEF, :MRGMVA, :MRGMVA_SINIEF, :UF' +
        'EMITENTE, '
      '   :CODREGTRIB)')
    DeleteSQL.Strings = (
      'delete from EstUfe'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  SIGUFE = :OLD_SIGUFE and'
      '  UFEMITENTE = :OLD_UFEMITENTE and'
      '  CODREGTRIB = :OLD_CODREGTRIB')
    Left = 865
    Top = 60
  end
  object EstIcm: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 929
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIcm'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIcm'
        ParamType = ptInput
      end>
    object StringField2: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object EstIcmCODICM: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
    object EstIcmPERICM: TFloatField
      FieldName = 'PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object dsEstIcm: TwwDataSource
    DataSet = EstIcm
    Left = 957
    Top = 32
  end
  object EstTxf: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstTxf'
      'Where EstTxf.TipTxf = '#39'Icms'#39)
    ValidateWithMask = True
    Left = 929
    Top = 60
    object EstTxfCODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTTXF.CODTXF'
      FixedChar = True
      Size = 30
    end
    object EstTxfTIPTXF: TStringField
      FieldName = 'TIPTXF'
      Origin = 'ISADE.ESTTXF.TIPTXF'
      FixedChar = True
      Size = 4
    end
    object EstTxfDSRTXF: TStringField
      FieldName = 'DSRTXF'
      Origin = 'ISADE.ESTTXF.DSRTXF'
      FixedChar = True
      Size = 50
    end
    object EstTxfDSCTXF: TMemoField
      FieldName = 'DSCTXF'
      Origin = 'ISADE.ESTTXF.DSCTXF'
      BlobType = ftMemo
      Size = 300
    end
  end
  object DsTxf: TwwDataSource
    DataSet = EstTxf
    Left = 957
    Top = 60
  end
  object GerUfe: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select GerUfe.SigUfe,GerUfe.NomUfe From GerUfe')
    ValidateWithMask = True
    Left = 929
    Top = 4
    object GerUfeSIGUFE: TStringField
      FieldName = 'SIGUFE'
      Origin = 'ISADE.GERUFE.SIGUFE'
      FixedChar = True
      Size = 2
    end
    object GerUfeNOMUFE: TStringField
      FieldName = 'NOMUFE'
      Origin = 'ISADE.GERUFE.NOMUFE'
      FixedChar = True
      Size = 40
    end
  end
  object DsGerUfe: TwwDataSource
    DataSet = GerUfe
    Left = 957
    Top = 4
  end
  object EstTme: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From EstTme')
    ValidateWithMask = True
    Left = 929
    Top = 88
    object EstTmeCODTME: TStringField
      FieldName = 'CODTME'
      Origin = 'ISADE.ESTTME.CODTME'
      FixedChar = True
      Size = 4
    end
    object EstTmeNOMTME: TStringField
      FieldName = 'NOMTME'
      Origin = 'ISADE.ESTTME.NOMTME'
      FixedChar = True
      Size = 150
    end
  end
  object DsTme: TwwDataSource
    DataSet = EstTme
    Left = 957
    Top = 88
  end
  object FinTCl: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select *  From FinTCl'
      'Order by NomTCl')
    ValidateWithMask = True
    Left = 929
    Top = 116
    object FinTClNOMTCL: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 40
      FieldName = 'NOMTCL'
      Origin = 'ISADE.FINTCL.NOMTCL'
      FixedChar = True
      Size = 40
    end
    object FinTClCODTCL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTCL'
      Origin = 'ISADE.FINTCL.CODTCL'
      Visible = False
    end
  end
  object DsTCl: TwwDataSource
    DataSet = FinTCl
    Left = 957
    Top = 116
  end
  object EstUfc: TwwQuery
    CachedUpdates = True
    BeforeEdit = EstUfcBeforeEdit
    AfterPost = EstUfcAfterCancel
    AfterCancel = EstUfcAfterCancel
    OnNewRecord = EstUfcNewRecord
    DatabaseName = 'ISade'
    DataSource = DsStr
    SQL.Strings = (
      'Select EstUfc.*,'
      '           FinCli.NomCli'
      'From EstUfc LEFT JOIN FinCli ON (EstUfc.CodCli = FinCli.CodCli)'
      'Where EstUfc.CodStr = :CodStr'
      '    and EstUfc.TipStr = :TipStr'
      'Order by EstUfc.CodCli')
    UpdateObject = UpEstUfc
    ValidateWithMask = True
    Left = 865
    Top = 32
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CODSTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'TIPSTR'
        ParamType = ptUnknown
      end>
    object EstUfcCODCLI: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Código'
      DisplayWidth = 10
      FieldName = 'CODCLI'
    end
    object EstUfcNOMCLI: TStringField
      DisplayLabel = 'Nome completo/Razão social'
      DisplayWidth = 55
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object EstUfcICMSUB: TFloatField
      DisplayLabel = '      Aliquota interna'
      DisplayWidth = 10
      FieldName = 'ICMSUB'
      DisplayFormat = '##0'
    end
    object EstUfcMRGSUB: TFloatField
      DisplayLabel = '                    % IVA'
      DisplayWidth = 10
      FieldName = 'MRGSUB'
      DisplayFormat = '##0.00'
    end
    object EstUfcBASESB: TFloatField
      DisplayLabel = '              % Base de cálculo'
      DisplayWidth = 10
      FieldName = 'BASESB'
      DisplayFormat = '###,###,##0.00'
    end
    object EstUfcCODSTR: TStringField
      FieldName = 'CODSTR'
      Visible = False
      FixedChar = True
    end
    object EstUfcTIPSTR: TStringField
      FieldName = 'TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfcCODCFO: TStringField
      FieldName = 'CODCFO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object EstUfcREGICM: TStringField
      FieldName = 'REGICM'
      Visible = False
      FixedChar = True
    end
    object EstUfcTIPICM: TStringField
      FieldName = 'TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfcREGIPI: TStringField
      FieldName = 'REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstUfcTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfcCODTXF: TStringField
      FieldName = 'CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
  end
  object UpEstUfc: TUpdateSQL
    ModifySQL.Strings = (
      'update EstUfc'
      'set'
      '  ICMSUB = :ICMSUB,'
      '  MRGSUB = :MRGSUB,'
      '  BASESB = :BASESB,'
      '  CODCFO = :CODCFO,'
      '  REGICM = :REGICM,'
      '  TIPICM = :TIPICM,'
      '  REGIPI = :REGIPI,'
      '  TIPIPI = :TIPIPI,'
      '  CODTXF = :CODTXF'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  CODCLI = :OLD_CODCLI')
    InsertSQL.Strings = (
      'insert into EstUfc'
      
        '  (CODSTR, TIPSTR, CODCLI, ICMSUB, MRGSUB, BASESB, CODCFO, REGIC' +
        'M, '
      'TIPICM, '
      '   REGIPI, TIPIPI, CODTXF)'
      'values'
      
        '  (:CODSTR, :TIPSTR, :CODCLI, :ICMSUB, :MRGSUB, :BASESB, :CODCFO' +
        ', '
      ':REGICM, '
      '   :TIPICM, :REGIPI, :TIPIPI, :CODTXF)')
    DeleteSQL.Strings = (
      'delete from EstUfc'
      'where'
      '  CODSTR = :OLD_CODSTR and'
      '  TIPSTR = :OLD_TIPSTR and'
      '  CODCLI = :OLD_CODCLI')
    Left = 893
    Top = 60
  end
  object dsEstUfc: TwwDataSource
    DataSet = EstUfc
    Left = 893
    Top = 32
  end
  object FinCli: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select FinCli.CodCli,FinCli.NomCli'
      'From FinCli'
      'Where FinCli.CodCli = :CodCli')
    ValidateWithMask = True
    Left = 929
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodCli'
        ParamType = ptInput
      end>
    object FinCliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object FinCliNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
  end
  object dsFinCli: TwwDataSource
    DataSet = FinCli
    Left = 957
    Top = 144
  end
  object EstIcc: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select CodIcm,NomIcm,PerIcm From EstIcm '
      'Where EstIcm.CodIcm = :CodIcm'
      '     and EstIcm.TipIcm = :TipIcm')
    ValidateWithMask = True
    Left = 929
    Top = 172
    ParamData = <
      item
        DataType = ftString
        Name = 'CodIcm'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipIcm'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 50
      FieldName = 'NOMICM'
      Origin = 'ISADE.ESTICM.NOMICM'
      FixedChar = True
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'CODICM'
      Origin = 'ISADE.ESTICM.CODICM'
      FixedChar = True
    end
    object FloatField1: TFloatField
      FieldName = 'PERICM'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
  end
  object dsEstIcc: TwwDataSource
    DataSet = EstIcc
    Left = 957
    Top = 172
  end
  object EstSt2: TwwQuery
    Tag = 1
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'select * from estst2 est'
      'where lengthstr(est.codst2) = 2'
      'and est.nomst2 like '#39'%TRIBUTARIA%'#39
      'or (codst2 = 90)'
      'order by'
      'est.codst2')
    ValidateWithMask = True
    Left = 864
    Top = 88
    object EstSt2NOMST2: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 90
      FieldName = 'NOMST2'
      Origin = 'ISADE.ESTST2.NOMST2'
      FixedChar = True
      Size = 90
    end
    object EstSt2CODST2: TStringField
      FieldName = 'CODST2'
      Origin = 'ISADE.ESTST2.CODST2'
      FixedChar = True
      Size = 3
    end
  end
  object DsSt2: TwwDataSource
    DataSet = EstSt2
    Left = 892
    Top = 92
  end
  object ESTST1: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select st1.codst1,st1.nomst1,st1.codst1||'#39' - '#39'||st1.nomst1 DescS' +
        't1 from estst1 st1 order by codst1')
    ValidateWithMask = True
    Left = 865
    Top = 120
    object ESTST1CODST1: TStringField
      DisplayWidth = 1
      FieldName = 'CODST1'
      Origin = 'ISADE.ESTST1.CODST1'
      FixedChar = True
      Size = 1
    end
    object ESTST1NOMST1: TStringField
      DisplayWidth = 118
      FieldName = 'NOMST1'
      Origin = 'ISADE.ESTST1.NOMST1'
      Size = 250
    end
    object ESTST1DESCST1: TStringField
      FieldName = 'DESCST1'
      Visible = False
      Size = 254
    end
  end
  object dsESTST1: TwwDataSource
    DataSet = ESTST1
    Left = 893
    Top = 120
  end
  object FINREGTRIB: TwwQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select rt.numregtrib,rt.nomregtrib, RTrim(LTrim(Cast(rt.numregtr' +
        'ib as VarChar(10))))||'#39' - '#39'||rt.nomregtrib DescReg  from finregt' +
        'rib rt order by rt.nomregtrib')
    ValidateWithMask = True
    Left = 865
    Top = 152
    object FINREGTRIBNUMREGTRIB: TIntegerField
      FieldName = 'NUMREGTRIB'
    end
    object FINREGTRIBNOMREGTRIB: TStringField
      FieldName = 'NOMREGTRIB'
      Size = 70
    end
    object FINREGTRIBDESCREG: TMemoField
      FieldName = 'DESCREG'
      BlobType = ftMemo
      Size = 327
    end
  end
  object dsFINREGTRIB: TwwDataSource
    DataSet = FINREGTRIB
    Left = 893
    Top = 152
  end
  object EstUfe: TwwQuery
    Active = True
    CachedUpdates = True
    AfterOpen = EstUfeAfterOpen
    BeforeInsert = EstUfeBeforeInsert
    AfterInsert = EstUfeAfterInsert
    BeforeEdit = EstUfeBeforeEdit
    BeforePost = EstUfeBeforePost
    AfterPost = EstUfeAfterPost
    AfterCancel = EstUfeAfterCancel
    AfterScroll = EstUfeAfterScroll
    OnNewRecord = EstUfeNewRecord
    DatabaseName = 'ISade'
    DataSource = DsStr
    SQL.Strings = (
      'Select EstUfe.*,'
      '           GerUfe.NomUfe'
      'From EstUfe LEFT JOIN GerUfe ON (EstUfe.SigUfe = GerUfe.SigUfe)'
      'Where EstUfe.CodStr = :CodStr'
      '    and EstUfe.TipStr = :TipStr'
      'Order by EstUfe.SigUfe')
    UpdateObject = UpEstUfe
    ValidateWithMask = True
    Left = 865
    Top = 4
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CODSTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'TIPSTR'
        ParamType = ptUnknown
      end>
    object EstUfeSIGUFE: TStringField
      DisplayLabel = 'U.F.'
      DisplayWidth = 4
      FieldName = 'SIGUFE'
      Origin = 'ISADE.ESTUFE.SIGUFE'
      OnChange = EstUfeSIGUFEChange
      FixedChar = True
      Size = 2
    end
    object EstUfeNOMUFE: TStringField
      DisplayLabel = 'Unidade da federação'
      DisplayWidth = 30
      FieldName = 'NOMUFE'
      FixedChar = True
      Size = 40
    end
    object EstUfeICMSUB: TFloatField
      DisplayLabel = '      Aliquota interna'
      DisplayWidth = 18
      FieldName = 'ICMSUB'
      Origin = 'ISADE.ESTUFE.ICMSUB'
      DisplayFormat = '##0'
    end
    object EstUfeMRGMVA: TFloatField
      DisplayLabel = '      % MVA'
      DisplayWidth = 10
      FieldName = 'MRGMVA'
    end
    object EstUfeBASESB: TFloatField
      DisplayLabel = '                      %Base'
      DisplayWidth = 18
      FieldName = 'BASESB'
      Origin = 'ISADE.ESTUFE.BASESB'
      DisplayFormat = '###,###,##0.00'
    end
    object EstUfeIVAENT: TFloatField
      DisplayLabel = 'IVA Entrada'
      DisplayWidth = 10
      FieldName = 'IVAENT'
    end
    object EstUfeCODREGTRIB: TIntegerField
      DisplayLabel = 'Regime Trib.'
      DisplayWidth = 10
      FieldName = 'CODREGTRIB'
    end
    object EstUfeCODST1: TStringField
      DisplayLabel = 'Orig. Produto'
      DisplayWidth = 1
      FieldName = 'CODST1'
      FixedChar = True
      Size = 1
    end
    object EstUfeID_ESTUFE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_ESTUFE'
    end
    object EstUfeICMSENT: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMSENT'
    end
    object EstUfeGRUPO_ORIGEM: TStringField
      DisplayWidth = 40
      FieldName = 'GRUPO_ORIGEM'
      Size = 40
    end
    object EstUfeUFEMITENTE: TStringField
      DisplayWidth = 3
      FieldName = 'UFEMITENTE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object EstUfeMRGSUB: TFloatField
      DisplayLabel = '      % MVA'
      DisplayWidth = 10
      FieldName = 'MRGSUB'
      Origin = 'ISADE.ESTUFE.MRGSUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object EstUfeFLGNCALC_DIF_MVA: TStringField
      DisplayLabel = 'Aplica Sif. Aliq'
      DisplayWidth = 5
      FieldName = 'FLGNCALC_DIF_MVA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object EstUfeCODCFO_DEV: TStringField
      DisplayWidth = 15
      FieldName = 'CODCFO_DEV'
      Visible = False
      Size = 15
    end
    object EstUfeCODSTR: TStringField
      FieldName = 'CODSTR'
      Origin = 'ISADE.ESTUFE.CODSTR'
      Visible = False
      FixedChar = True
    end
    object EstUfeTIPSTR: TStringField
      FieldName = 'TIPSTR'
      Origin = 'ISADE.ESTUFE.TIPSTR'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfeCODCFO: TStringField
      FieldName = 'CODCFO'
      Origin = 'ISADE.ESTUFE.CODCFO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object EstUfeREGICM: TStringField
      FieldName = 'REGICM'
      Origin = 'ISADE.ESTUFE.REGICM'
      Visible = False
      FixedChar = True
    end
    object EstUfeTIPICM: TStringField
      FieldName = 'TIPICM'
      Origin = 'ISADE.ESTUFE.TIPICM'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfeREGIPI: TStringField
      FieldName = 'REGIPI'
      Origin = 'ISADE.ESTUFE.REGIPI'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstUfeTIPIPI: TStringField
      FieldName = 'TIPIPI'
      Origin = 'ISADE.ESTUFE.TIPIPI'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object EstUfeCODTXF: TStringField
      FieldName = 'CODTXF'
      Origin = 'ISADE.ESTUFE.CODTXF'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object EstUfeCODTME: TStringField
      DisplayWidth = 4
      FieldName = 'CODTME'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object EstUfeDTEENV: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DTEENV'
      Visible = False
      EditMask = '!99/99/9999;1;_'
    end
    object EstUfeCODTCL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODTCL'
      Visible = False
    end
    object EstUfeREDSUB: TFloatField
      FieldName = 'REDSUB'
      Visible = False
    end
    object EstUfeCODST2: TStringField
      FieldName = 'CODST2'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object EstUfeIVA_ORGINAL: TFloatField
      FieldName = 'IVA_ORGINAL'
      Visible = False
    end
    object EstUfeICM_INTEREST: TFloatField
      FieldName = 'ICM_INTEREST'
      Visible = False
    end
    object EstUfeICM_DENT_UF: TFloatField
      FieldName = 'ICM_DENT_UF'
      Visible = False
    end
    object EstUfeICM_INTER_SINIEF: TFloatField
      FieldName = 'ICM_INTER_SINIEF'
      Visible = False
    end
    object EstUfeMRGMVA_SINIEF: TFloatField
      FieldName = 'MRGMVA_SINIEF'
      Visible = False
    end
  end
end
