object Form1: TForm1
  Left = 255
  Top = 182
  Width = 1146
  Height = 563
  HorzScrollBar.Position = 26
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -10
    Top = 8
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100
      2100
      50
      2970
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 19
      Top = 19
      Width = 1085
      Height = 113
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        298.979166666667
        2870.72916666667)
      BandType = rbPageHeader
      object QRDBText1: TQRDBText
        Left = 16
        Top = 8
        Width = 689
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          42.3333333333333
          21.1666666666667
          1822.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRDBText2: TQRDBText
        Left = 16
        Top = 32
        Width = 689
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          84.6666666666667
          1822.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 16
        Top = 53
        Width = 689
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          140.229166666667
          1822.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 16
        Top = 73
        Width = 689
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          42.3333333333333
          193.145833333333
          1822.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 16
        Top = 90
        Width = 689
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          42.3333333333333
          238.125
          1822.97916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 132
      Width = 1085
      Height = 82
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        216.958333333333
        2870.72916666667)
      BandType = rbTitle
      object QRDBText6: TQRDBText
        Left = 96
        Top = 8
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          254
          21.1666666666667
          341.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 8
        Top = 8
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          21.1666666666667
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nro. Pedido:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 240
        Top = 8
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          635
          21.1666666666667
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Emitido:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 304
        Top = 8
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          804.333333333333
          21.1666666666667
          277.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 416
        Top = 8
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1100.66666666667
          21.1666666666667
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vendedor:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 488
        Top = 8
        Width = 193
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1291.16666666667
          21.1666666666667
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 8
        Top = 32
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          84.6666666666667
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 64
        Top = 32
        Width = 617
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          169.333333333333
          84.6666666666667
          1632.47916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 67
        Top = 54
        Width = 614
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          177.270833333333
          142.875
          1624.54166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 8
        Top = 54
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          142.875
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entrega:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 685
        Top = 54
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1812.39583333333
          142.875
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Município:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 757
        Top = 54
        Width = 161
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2002.89583333333
          142.875
          425.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 925
        Top = 54
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2447.39583333333
          142.875
          58.2083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UF:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 951
        Top = 54
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2516.1875
          142.875
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 984
        Top = 54
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2603.5
          142.875
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 1018
        Top = 54
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2693.45833333333
          142.875
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 684
        Top = 32
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1809.75
          84.6666666666667
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Insc. Estadual:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 780
        Top = 32
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2063.75
          84.6666666666667
          283.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 973
        Top = 32
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2574.39583333333
          84.6666666666667
          283.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 895
        Top = 32
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2368.02083333333
          84.6666666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ/CPF:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 214
      Width = 1085
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        2870.72916666667)
      BandType = rbDetail
    end
  end
  object PedRes: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRes.CodEmp,'
      '           PedRes.DteRes,'
      '           PedRes.NumRes,'
      '           PedRes.HreRes,'
      '           PedRes.DtfRes,'
      '           PedRes.UfeRes,'
      '           PedRes.CgcCli,'
      '           PedRes.PedAnt,'
      '           PedRes.QtiRes,'
      '           PedRes.QtpRes,'
      '           PedRes.LanEst,'
      '           PedRes.CodFil,'
      '           PedRes.CodCli,'
      '           PedRes.CodTra,'
      '           PedRes.CodTip,'
      '           PedRes.CodVen,'
      '           PedRes.CodPfa,'
      '           PedRes.TipPfa,'
      '           PedRes.CodAtd,'
      '           PedRes.TotRes,'
      '           PedRes.TotSub,'
      '           PedRes.TotGer,'
      '           PedRes.TotCst,'
      '           PedRes.MedDsc,'
      '           PedRes.TotDsc,'
      '           PedRes.MedAcr,'
      '           PedRes.TotAcr,'
      '           PedRes.MedPrm,'
      '           PedRes.TotDsp,'
      '           PedRes.MedCom,'
      '           PedRes.TotCom,'
      '           PedRes.MedDco,'
      '           PedRes.TotDco,'
      '           PedRes.DscReg,'
      '           PedRes.TotDsr,'
      '           PedRes.TotIpi,'
      '           PedRes.FatGer,'
      '           PedRes.DevGer,'
      '           PedRes.SldGer,'
      '           PedRes.TotRen,'
      '           PedRes.UsuRej,'
      '           PedRes.FlgOco,'
      '           PedRes.FlgImp,'
      '           PedRes.AtuEst,'
      '           PedRes.SitRes,'
      '           FinCli.NomCli,'
      '           FinVen.ApeVen,'
      '           FinAtd.ApeAtd,'
      '           PedRes.FLGFEC'
      'From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'
      
        '                    LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.' +
        'CodVen)'
      
        '                     LEFT JOIN FinAtd ON (PedRes.CodAtd = FinAtd' +
        '.CodAtd)'
      'Where PedRes.DteRes = :DteRes'
      'Order by PedRes.NumRes')
    ValidateWithMask = True
    Left = 7
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DteRes'
        ParamType = ptInput
      end>
    object PedResNUMRES: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Pedido'
      DisplayWidth = 10
      FieldName = 'NUMRES'
    end
    object PedResCODVEN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vendedor'
      DisplayWidth = 10
      FieldName = 'CODVEN'
    end
    object PedResCODATD: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Atend.'
      DisplayWidth = 10
      FieldName = 'CODATD'
    end
    object PedResCODPFA: TStringField
      DisplayLabel = 'Padrão Fat.'
      DisplayWidth = 20
      FieldName = 'CODPFA'
      FixedChar = True
      Size = 15
    end
    object PedResCODCLI: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Cliente'
      DisplayWidth = 10
      FieldName = 'CODCLI'
    end
    object PedResTOTGER: TFloatField
      DisplayLabel = ' Total Pedido'
      DisplayWidth = 10
      FieldName = 'TOTGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResFATGER: TFloatField
      DisplayLabel = '     Faturado'
      DisplayWidth = 10
      FieldName = 'FATGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResDEVGER: TFloatField
      DisplayLabel = '    Devolvido'
      DisplayWidth = 10
      FieldName = 'DEVGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResSLDGER: TFloatField
      DisplayLabel = '          Saldo'
      DisplayWidth = 10
      FieldName = 'SLDGER'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResFLGFEC: TStringField
      DisplayWidth = 3
      FieldName = 'FLGFEC'
      FixedChar = True
      Size = 3
    end
    object PedResTOTRES: TFloatField
      DisplayLabel = '     Total Itens'
      DisplayWidth = 10
      FieldName = 'TOTRES'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedResCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedResDTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedResHRERES: TStringField
      FieldName = 'HRERES'
      Visible = False
      FixedChar = True
      Size = 8
    end
    object PedResCODTIP: TIntegerField
      FieldName = 'CODTIP'
      Visible = False
    end
    object PedResTIPPFA: TStringField
      FieldName = 'TIPPFA'
      Visible = False
      FixedChar = True
      Size = 7
    end
    object PedResTOTREN: TFloatField
      FieldName = 'TOTREN'
      Visible = False
    end
    object PedResSITRES: TStringField
      FieldName = 'SITRES'
      Visible = False
      FixedChar = True
      Size = 45
    end
    object PedResNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Visible = False
      FixedChar = True
      Size = 70
    end
    object PedResFLGOCO: TStringField
      FieldName = 'FLGOCO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedResFLGIMP: TStringField
      FieldName = 'FLGIMP'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResDTFRES: TDateTimeField
      FieldName = 'DTFRES'
      Visible = False
    end
    object PedResCODTRA: TIntegerField
      FieldName = 'CODTRA'
      Visible = False
    end
    object PedResLANEST: TStringField
      FieldName = 'LANEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResCODFIL: TIntegerField
      FieldName = 'CODFIL'
      Visible = False
    end
    object PedResTOTCST: TFloatField
      FieldName = 'TOTCST'
      Visible = False
    end
    object PedResMEDDSC: TFloatField
      FieldName = 'MEDDSC'
      Visible = False
    end
    object PedResTOTDSC: TFloatField
      FieldName = 'TOTDSC'
      Visible = False
    end
    object PedResMEDACR: TFloatField
      FieldName = 'MEDACR'
      Visible = False
    end
    object PedResTOTACR: TFloatField
      FieldName = 'TOTACR'
      Visible = False
    end
    object PedResMEDPRM: TFloatField
      FieldName = 'MEDPRM'
      Visible = False
    end
    object PedResTOTDSP: TFloatField
      FieldName = 'TOTDSP'
      Visible = False
    end
    object PedResMEDCOM: TFloatField
      FieldName = 'MEDCOM'
      Visible = False
    end
    object PedResTOTCOM: TFloatField
      FieldName = 'TOTCOM'
      Visible = False
    end
    object PedResDSCREG: TFloatField
      FieldName = 'DSCREG'
      Visible = False
    end
    object PedResTOTDSR: TFloatField
      FieldName = 'TOTDSR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedResMEDDCO: TFloatField
      FieldName = 'MEDDCO'
      Visible = False
    end
    object PedResTOTDCO: TFloatField
      FieldName = 'TOTDCO'
      Visible = False
    end
    object PedResQTIRES: TIntegerField
      FieldName = 'QTIRES'
      Visible = False
    end
    object PedResQTPRES: TIntegerField
      FieldName = 'QTPRES'
      Visible = False
    end
    object PedResPEDANT: TStringField
      FieldName = 'PEDANT'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedResUFERES: TStringField
      FieldName = 'UFERES'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object PedResCGCCLI: TStringField
      FieldName = 'CGCCLI'
      Visible = False
      FixedChar = True
      Size = 18
    end
    object PedResAPEVEN: TStringField
      FieldName = 'APEVEN'
      Visible = False
      FixedChar = True
    end
    object PedResAPEATD: TStringField
      FieldName = 'APEATD'
      Visible = False
      FixedChar = True
    end
    object PedResTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object PedResUSUREJ: TIntegerField
      FieldName = 'USUREJ'
      Visible = False
    end
    object PedResTOTSUB: TFloatField
      FieldName = 'TOTSUB'
      Visible = False
    end
    object PedResATUEST: TStringField
      FieldName = 'ATUEST'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
  object PedRe2: TwwQuery
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select PedRe2.CodEmp,'
      '           PedRe2.DteRes,'
      '           PedRe2.NumRes,'
      '           PedRe2.SeqRe2,'
      '           PedRe2.CodGru,'
      '           PedRe2.CodSub,'
      '           PedRe2.CodPro,'
      '           PedRe2.DesRe2,'
      '           PedRe2.QtpRe2,'
      '           PedRe2.VlqRe2,'
      '           PedRe2.IcmRe2,'
      '           PedRe2.TotRe2,'
      '           PedRe2.TotRen,'
      '           PedRe2.FlgVal,'
      '           PedRe2.FlgPac,'
      '           PedRe2.FlgLib'
      'From PedRe2'
      'Where PedRe2.CodEmp = :CodEmp'
      '     and PedRe2.DteRes = :DteRes'
      '     and PedRe2.NumRes = :NumRes'
      'Order by PedRe2.NroRe2')
    ValidateWithMask = True
    Left = 5
    Top = 42
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTERES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRES'
        ParamType = ptInput
      end>
    object PedRe2DSCPRO: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'DSCPRO'
      Size = 30
      Calculated = True
    end
    object PedRe2DESRE2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 45
      FieldName = 'DESRE2'
      FixedChar = True
      Size = 70
    end
    object PedRe2QTPRE2: TFloatField
      DisplayLabel = ' Quantidade'
      DisplayWidth = 10
      FieldName = 'QTPRE2'
      DisplayFormat = '###,##0.0000'
      Precision = 4
    end
    object PedRe2VLQRE2: TFloatField
      DisplayLabel = '      Valor Unitário'
      DisplayWidth = 10
      FieldName = 'VLQRE2'
      DisplayFormat = '###,###,##0.0000'
    end
    object PedRe2ICMRE2: TFloatField
      DisplayLabel = '    ICMS'
      DisplayWidth = 4
      FieldName = 'ICMRE2'
      DisplayFormat = '###0'
      Precision = 2
    end
    object PedRe2TOTRE2: TFloatField
      DisplayLabel = '   Total do Item'
      DisplayWidth = 10
      FieldName = 'TOTRE2'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object PedRe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Visible = False
    end
    object PedRe2DTERES: TDateTimeField
      FieldName = 'DTERES'
      Visible = False
    end
    object PedRe2NUMRES: TIntegerField
      FieldName = 'NUMRES'
      Visible = False
    end
    object PedRe2SEQRE2: TIntegerField
      FieldName = 'SEQRE2'
      Visible = False
    end
    object PedRe2CODGRU: TStringField
      FieldName = 'CODGRU'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2CODSUB: TStringField
      FieldName = 'CODSUB'
      Visible = False
      FixedChar = True
      Size = 4
    end
    object PedRe2CODPRO: TStringField
      FieldName = 'CODPRO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object PedRe2TOTREN: TFloatField
      FieldName = 'TOTREN'
      Visible = False
    end
    object PedRe2FLGVAL: TStringField
      FieldName = 'FLGVAL'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGPAC: TStringField
      FieldName = 'FLGPAC'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedRe2FLGLIB: TStringField
      FieldName = 'FLGLIB'
      Visible = False
      FixedChar = True
      Size = 3
    end
  end
end
