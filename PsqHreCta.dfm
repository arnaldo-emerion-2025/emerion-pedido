inherited fmPsqHreCta: TfmPsqHreCta
  Left = 351
  Top = 199
  Caption = 'Rastreabilidade de Cotação'
  ClientHeight = 281
  ClientWidth = 765
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox: TPaintBox
    Left = 0
    Top = 0
    Width = 765
    Height = 281
    Align = alClient
    OnPaint = PaintBoxPaint
  end
  object Label9: TLabel
    Left = 708
    Top = 261
    Width = 54
    Height = 16
    Caption = 'ESC-Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxDBGraphicEdit1: TdxDBGraphicEdit
    Left = 1
    Top = 2
    Width = 763
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Haettenschweiler'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clBlack
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 0
    TabStop = False
    DblClickActivate = False
    Stretch = True
    ToolbarLayout.Buttons = []
    ToolbarLayout.IsPopupMenu = False
    ToolbarPosStored = False
    Height = 257
  end
  object grLog: ThGrid
    Tag = 1
    Left = 3
    Top = 4
    Width = 757
    Height = 251
    Selected.Strings = (
      'DTELOG'#9'10'#9'Data'
      'HRELOG'#9'8'#9'Hora'
      'SITANT'#9'35'#9'De'
      'SITATU'#9'35'#9'Para'#9'F'
      'LOGUSU'#9'15'#9'Responsável')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsLogCta
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object PedLogCta: TwwQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select log.DteLog,'
      '           log.HreLog,'
      '           log.SitAnt,'
      '           log.SitAtu,'
      '           Usu.LogUsu'
      'From PedLogCta log'
      'join GerUsu usu on log.CodUsu = Usu.CodUsu'
      'Where  log.CodEmp = :CodEmp'
      '     and log.Dtecta = :DteCta'
      '     and log.Numcta = :NumCta'
      'Order by log.SeqLog')
    ValidateWithMask = True
    Left = 4
    Top = 226
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DteCta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumCta'
        ParamType = ptInput
      end>
    object PedLogCtaDTELOG: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DTELOG'
    end
    object PedLogCtaHRELOG: TStringField
      DisplayLabel = 'Hora'
      DisplayWidth = 8
      FieldName = 'HRELOG'
      FixedChar = True
      Size = 8
    end
    object PedLogCtaSITANT: TStringField
      DisplayLabel = 'De'
      DisplayWidth = 35
      FieldName = 'SITANT'
      Size = 45
    end
    object PedLogCtaSITATU: TStringField
      DisplayLabel = 'Para'
      DisplayWidth = 35
      FieldName = 'SITATU'
      Size = 45
    end
    object PedLogCtaLOGUSU: TStringField
      DisplayLabel = 'Responsável'
      DisplayWidth = 15
      FieldName = 'LOGUSU'
      Size = 15
    end
  end
  object DsLogCta: TwwDataSource
    DataSet = PedLogCta
    Left = 32
    Top = 226
  end
end
