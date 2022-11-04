inherited fmPedR30: TfmPedR30
  Left = 270
  Top = 255
  Caption = 'Resumo de Vendas por Vendedor (Analitico)'
  ClientHeight = 204
  ClientWidth = 566
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 566
    Height = 204
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label17: TLabel
    Left = 4
    Top = 67
    Width = 56
    Height = 13
    Caption = 'Emitidos Em'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 202
    Top = 67
    Width = 6
    Height = 13
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 4
    Top = 44
    Width = 46
    Height = 13
    Caption = 'Vendedor'
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
  object BbPsqVen: TSpeedButton
    Left = 194
    Top = 40
    Width = 23
    Height = 21
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
    OnClick = BbPsqVenClick
  end
  object Label10: TLabel
    Left = 4
    Top = 0
    Width = 154
    Height = 13
    Caption = 'Informa��es para Pesquisa'
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
  object Bevel1: TBevel
    Left = 163
    Top = 6
    Width = 551
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object lb_Registro: TLabel
    Left = 8
    Top = 168
    Width = 273
    Height = 13
    AutoSize = False
    Caption = 'Foram encontrados : 0 Registros'
  end
  object BbPsqEmp: TSpeedButton
    Left = 194
    Top = 17
    Width = 23
    Height = 21
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
    OnClick = BbPsqEmpClick
  end
  object Label26: TLabel
    Left = 4
    Top = 21
    Width = 41
    Height = 13
    Caption = 'Empresa'
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
  object EdPsqDteres1: TdxColorDateEdit
    Left = 106
    Top = 62
    Width = 87
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqDteres2: TdxColorDateEdit
    Left = 217
    Top = 62
    Width = 87
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
    Date = -700000
    SaveTime = False
    UseEditMask = True
    CorDeFoco = clInfoBk
    StoredValues = 4
  end
  object EdPsqCodVen: TdxColorEdit
    Left = 106
    Top = 39
    Width = 87
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
    OnExit = EdPsqCodVenExit
    OnKeyPress = EdPsqCodEmpKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object EdPsqNomVen: TdxColorEdit
    Left = 217
    Top = 39
    Width = 343
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
    TabOrder = 3
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object bbPesquisa: TBitBtn
    Left = 305
    Top = 143
    Width = 126
    Height = 44
    Caption = '&Selecionar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
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
  object bImprime: TBitBtn
    Left = 433
    Top = 143
    Width = 126
    Height = 44
    Caption = '&Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = bImprimeClick
    Glyph.Data = {
      7E0D0000424D7E0D000000000000360000002800000021000000220000000100
      180000000000480D0000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0D0D050505050505050505020202020202020202020202020202020
      2020404040404040404040404040404040404040404040404040404040202020
      202020202020202020202020202020505050505050505050C0D0D0C0CFD0C0CF
      D000C0CFD0C0CFD0505050E0D8E0E0D8E0E0D8E0404040404040404040404040
      404040404040404040D0C8D0D0C8D0D0C8D0D0C8D0D0C8D0D0C8D0D0C8D04040
      40404040404040404040404040404040404040E0D8E0E0D8E0E0D8E0505050C0
      CFD0C0CFD000C0CFD0C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0
      E0E0D8E0E0D8E0E0D8E0A0A0A070787070787070787070787070787070787070
      7870A0A0A0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      505050C0CFD0C0CFD000C0CFD0C0CFD0505050C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0505050C0CFD0C0CFD000C0CFD0C0CFD0505050A0A0A0A0A0A0A0A0A0
      A0A0A00000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000A0A0A0A0
      A0A0A0A0A0A0A0A0505050C0CFD0C0CFD000C0CFD05050507078707078707078
      7070787070787040404040404040404040404040404040404040404040404040
      4040404040404040404040404040404040404040404040404040404040404040
      707870707870707870707870707870505050C0CFD000C0CFD0505050E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0707870C0C0C070787FC0C0C0707870E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CF
      D0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CF
      D000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E050
      5050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0E0E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD0505050E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CFD050505070787070
      78707078707078707F7870707870707870707870707870707870707870707870
      7F78707078707078707078707078707078707078707078707F78707078707078
      707078707078707078707078707078707F7870505050C0CFD000C0CFD0505050
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E03068FFE0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CFD000C0CF
      D0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0
      D8E0A0A0A0E0D8E0E0D8E0E0D8E000B800E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0505050C0CF
      D000C0CFD0505050E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0A0A0A0505050505050505050A0A0A0E0D8E0E0D8
      E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E050
      5050C0CFD000C0CFD0C0CFD05050505050505050505050505050505050505058
      50505050505050505050505050505050505050E0D8E0505850E0D8E050505050
      5050505050505050505050505050505850505050505050505050505050505050
      505050C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040505050C0
      C0C0404040E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0
      E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0E0D8E0404040909890404040C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040
      707870C0C0C0404040F0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8
      FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FFF0F8FF404040C0C0C040
      4040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0404040707870C0C0C0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040
      C0C0C0404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD04040407F7870C0C0C0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF404040C0C0C0404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0404040C0C0C040404FFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FF404040404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040404040FFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FF404040C0D0D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040FFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD04048
      40FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D0C0CFD0C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFF
      F8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FF404040
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0404040FFF8FFFFF8FFFFF8FFFFF8FFFFF8FF
      FFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8
      FF404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD040404F4040404040404040404040
      4040404040404040404040404F40404040404040404040404040404040404040
      404040404F404040C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD000C0CF
      D0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0
      CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CF
      D000}
  end
  object rgTipo: TRadioGroup
    Left = 370
    Top = 72
    Width = 111
    Height = 57
    Caption = ' Tipo '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 2
    Items.Strings = (
      'Varejo'
      'Atacado'
      'Todos')
    ParentFont = False
    TabOrder = 7
  end
  object rgComissao: TRadioGroup
    Left = 104
    Top = 88
    Width = 257
    Height = 41
    Caption = 'Comiss�o por:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Faturamento'
      'Recebimento')
    TabOrder = 6
  end
  object EdApeEmp: TdxColorEdit
    Left = 217
    Top = 16
    Width = 343
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
    TabOrder = 1
    CharCase = ecUpperCase
    CorDeFoco = clBlack
  end
  object EdCodEmp: TdxColorEdit
    Left = 106
    Top = 16
    Width = 87
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
    OnExit = EdCodEmpExit
    OnKeyPress = EdCodEmpKeyPress
    CharCase = ecUpperCase
    CorDeFoco = clInfoBk
  end
  object FINPGC: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        ' Select PedLib.NumRes, PedLib.DteRes, PedLib.DteFat, PedLib.CodV' +
        'en,  PedLib.CodCli, FinCli.NomCli,'
      
        ' ((Finpgc.vpppgc*PedLib.TOTLIB)/pedlib.totger)as TotLib, PedLib.' +
        'MedCom,fincom.percom,'
      
        ' ((Finpgc.vpppgc*PedLib.BasCom)/pedlib.totger)as Bascom,((Finpgc' +
        '.vpppgc*PedLib.TotCom)/pedlib.totger)as TOTCOM,'
      
        ' Cast(PedLib.NroNfs as varchar(10)) NroNfs,Finpgc.dpgpgc DteCre,' +
        'fincrp.dtvcrp DteVen, Finpgc.numcre, Finpgc.numcrp'
      ' From PedLib '
      ' JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'
      ' join finven on (finven.codven = pedlib.codven)'
      ' join fincom on (fincom.codcom = finven.codcom)'
      
        ' join FATPED on (PedLib.codemp = fatped.codemp and PedLib.numres' +
        ' = fatped.numres and PedLib.dteres = fatped.dteres) '
      
        ' left join fincre on (fincre.codemp = Fatped.codemp and fincre.d' +
        'tefat = fatped.dteres and fincre.numcre = fatped.nronfs) '
      
        ' left join fincrp on (fincrp.codemp = fincre.codemp and fincrp.n' +
        'umcre = fincre.numcre and fincrp.dtecre = fincre.dtecre) '
      
        ' join Finpgc on (finpgc.codemp = fincrp.codemp and finpgc.numcre' +
        ' = fincrp.numcre and finpgc.dtecre = fincrp.dtecre and finpgc.nu' +
        'mcrp = fincrp.numcrp) '
      ' Where '
      '1<>1'
      ''
      ' Union All'
      
        ' Select LojPed.NumPed NumRes, LojPed.DtePed DteRes, LojPed.DopRp' +
        'e DteFat,  LojPed.CodVen, LojPed.CodCli, '
      
        ' LojPed.NomCli, LojPed.TotPed TotLib,  LojPed.MedCom,fincom.perc' +
        'om,'
      
        ' ((Finpgc.vpppgc*LojPed.BasCom)/lojped.totger)as Bascom,((Finpgc' +
        '.vpppgc*LojPed.TotCom)/lojped.totger)as TOTCOM,'
      
        ' Cast(LOJPED.NroNfs as varchar(10)) NroNfs,Finpgc.dpgpgc DteCre,' +
        'fincrp.dtvcrp DteVen, Finpgc.numcre, Finpgc.numcrp'
      ' From LojPed '
      ' join finven on (finven.codven = lojped.codven)'
      ' join fincom on (fincom.codcom = finven.codcom)'
      
        ' left join LOJFAT on (lojfat.codemp = lojped.codemp and lojfat.d' +
        'teped = lojped.dteped and lojfat.numped = lojped.numped) '
      
        ' left join fincre on (fincre.codemp = lojfat.codemp and fincre.d' +
        'tefat = lojfat.dtefat and fincre.numcre = lojfat.nronfs) '
      
        ' left join fincrp on (fincrp.codemp = fincre.codemp and fincrp.n' +
        'umcre = fincre.numcre and fincrp.dtecre = fincre.dtecre) '
      
        ' join Finpgc on (finpgc.codemp = fincrp.codemp and finpgc.numcre' +
        ' = fincrp.numcre and finpgc.dtecre = fincrp.dtecre and finpgc.nu' +
        'mcrp = fincrp.numcrp) '
      ' where '
      '1 <> 1')
    ValidateWithMask = True
    Left = 365
    Top = 93
    object FINPGCNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object FINPGCDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object FINPGCDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
    end
    object FINPGCCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FINPGCCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object FINPGCNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object FINPGCTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FINPGCMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FINPGCPERCOM: TFloatField
      FieldName = 'PERCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FINPGCBASCOM: TFloatField
      FieldName = 'BASCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FINPGCTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FINPGCNRONFS: TStringField
      FieldName = 'NRONFS'
      Size = 10
    end
    object FINPGCDTECRE: TDateTimeField
      FieldName = 'DTECRE'
    end
    object FINPGCDTEVEN: TDateTimeField
      FieldName = 'DTEVEN'
    end
    object FINPGCNUMCRE: TFloatField
      FieldName = 'NUMCRE'
    end
    object FINPGCNUMCRP: TIntegerField
      FieldName = 'NUMCRP'
    end
  end
  object DsRes: TwwDataSource
    DataSet = PedRes
    Left = 521
    Top = 101
  end
  object quSql: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 485
    Top = 73
  end
  object FinCre: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'Select PedR24.NumRes, PedR24.DteRes, PedR24.DteFat, PedR24.DpgPg' +
        'c, PedR24.CodVen,'
      
        'PedR24.NroNfs, PedR24.TotLib, PedR24.MedCom, PedR24.BasCom, PedR' +
        '24.TotCom,'
      
        'TextoOcor(IntStrZeros(PedR24.CodCli,05),'#39' - '#39',FinCli.NomCli,'#39#39','#39 +
        #39','#39#39','#39#39') as Cliente'
      'From PedR24'
      'LEFT JOIN FinCli ON (PedR24.CodCli = FinCli.CodCli)')
    ValidateWithMask = True
    Left = 485
    Top = 45
    object FinCreNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object FinCreDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object FinCreDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
    end
    object FinCreDPGPGC: TDateTimeField
      FieldName = 'DPGPGC'
    end
    object FinCreCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object FinCreNRONFS: TIntegerField
      FieldName = 'NRONFS'
    end
    object FinCreTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FinCreMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FinCreBASCOM: TFloatField
      FieldName = 'BASCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FinCreTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FinCreCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 100
    end
  end
  object dsCre: TwwDataSource
    DataSet = FinCre
    Left = 513
    Top = 45
  end
  object PedRes: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      ' Select '
      
        ' PedLib.NumRes, PedLib.DteRes, PedLib.DteFat, PedLib.CodVen,  Pe' +
        'dLib.CodCli, FinCli.NomCli, '
      
        ' ((Finpgc.vpppgc*PedLib.TOTLIB)/pedlib.totger)as TotLib, PedLib.' +
        'MedCom,fincom.percom,'
      
        ' ((Finpgc.vpppgc*PedLib.BasCom)/pedlib.totger)as Bascom,((Finpgc' +
        '.vpppgc*PedLib.TotCom)/pedlib.totger)as TOTCOM,'
      
        ' Cast(PedLib.NroNfs as varchar(10)) NroNfs,Finpgc.dpgpgc DteCre,' +
        'fincrp.dtvcrp DteVen'
      ' From PedLib '
      ' JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'
      ' join finven on (finven.codven = pedlib.codven)'
      ' join fincom on (fincom.codcom = finven.codcom)'
      
        ' join FATPED on (PedLib.codemp = fatped.codemp and PedLib.numres' +
        ' = fatped.numres and PedLib.dteres = fatped.dteres) '
      
        ' left join fincre on (fincre.codemp = Fatped.codemp and fincre.d' +
        'tefat = fatped.dteres and fincre.numcre = fatped.nronfs) '
      
        ' left join fincrp on (fincrp.codemp = fincre.codemp and fincrp.n' +
        'umcre = fincre.numcre and fincrp.dtecre = fincre.dtecre) '
      
        ' join Finpgc on (finpgc.codemp = fincrp.codemp and finpgc.numcre' +
        ' = fincrp.numcre and finpgc.dtecre = fincrp.dtecre and finpgc.nu' +
        'mcrp = fincrp.numcrp) '
      ' Where'
      '1<>1'
      ''
      ' Union All'
      
        ' Select LojPed.NumPed NumRes, LojPed.DtePed DteRes, LojPed.DopRp' +
        'e DteFat,  LojPed.CodVen, LojPed.CodCli, '
      
        ' LojPed.NomCli, LojPed.TotPed TotLib,  LojPed.MedCom,fincom.perc' +
        'om,'
      
        ' ((Finpgc.vpppgc*LojPed.BasCom)/lojped.totger)as Bascom,((Finpgc' +
        '.vpppgc*LojPed.TotCom)/lojped.totger)as TOTCOM,'
      
        ' Cast(LOJPED.NroNfs as varchar(10)) NroNfs,Finpgc.dpgpgc DteCre,' +
        'fincrp.dtvcrp DteVen'
      ' From LojPed '
      ' join finven on (finven.codven = lojped.codven)'
      ' join fincom on (fincom.codcom = finven.codcom)'
      
        ' left join LOJFAT on (lojfat.codemp = lojped.codemp and lojfat.d' +
        'teped = lojped.dteped and lojfat.numped = lojped.numped) '
      
        ' left join fincre on (fincre.codemp = lojfat.codemp and fincre.d' +
        'tefat = lojfat.dtefat and fincre.numcre = lojfat.nronfs) '
      
        ' left join fincrp on (fincrp.codemp = fincre.codemp and fincrp.n' +
        'umcre = fincre.numcre and fincrp.dtecre = fincre.dtecre) '
      
        ' join Finpgc on (finpgc.codemp = fincrp.codemp and finpgc.numcre' +
        ' = fincrp.numcre and finpgc.dtecre = fincrp.dtecre and finpgc.nu' +
        'mcrp = fincrp.numcrp) '
      ' where'
      '1 <> 1')
    ValidateWithMask = True
    Left = 485
    Top = 101
    object PedResNUMRES: TIntegerField
      FieldName = 'NUMRES'
    end
    object PedResDTERES: TDateTimeField
      FieldName = 'DTERES'
    end
    object PedResDTEFAT: TDateTimeField
      FieldName = 'DTEFAT'
    end
    object PedResCODVEN: TIntegerField
      FieldName = 'CODVEN'
    end
    object PedResCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object PedResNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object PedResTOTLIB: TFloatField
      FieldName = 'TOTLIB'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object PedResMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object PedResPERCOM: TFloatField
      FieldName = 'PERCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object PedResBASCOM: TFloatField
      FieldName = 'BASCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object PedResTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object PedResNRONFS: TStringField
      FieldName = 'NRONFS'
      Size = 10
    end
    object PedResDTECRE: TDateTimeField
      FieldName = 'DTECRE'
    end
    object PedResDTEVEN: TDateTimeField
      FieldName = 'DTEVEN'
    end
  end
  object DSPGC: TDataSource
    DataSet = FINPGC
    Left = 408
    Top = 96
  end
end
