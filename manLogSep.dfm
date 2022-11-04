object fmManLogSep: TfmManLogSep
  Left = 612
  Top = 199
  Width = 539
  Height = 442
  Caption = 'Relação de impressão da via de separação'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object gLogSep: TDBGrid
    Left = 0
    Top = 0
    Width = 523
    Height = 384
    Align = alClient
    DataSource = DSBUS
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMRES'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NROIMP'
        Title.Alignment = taRightJustify
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODUSU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGUSU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 137
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTELOG'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'HRELOG'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 384
    Width = 523
    Height = 19
    Panels = <
      item
        Text = 'ESC - Sair'
        Width = 50
      end>
    SimplePanel = False
  end
  object SQLBUS: TQuery
    DatabaseName = 'ISade'
    SQL.Strings = (
      
        'select sep.codemp, sep.dteres, sep.numres, sep.NROIMP,sep.codusu' +
        ', usu.logusu,sep.dtelog,sep.hrelog'
      'from log_pedsep sep'
      'join gerusu usu on usu.codusu = sep.codusu'
      'where sep.codemp = :codemp'
      'and sep.dteres = :dteres'
      'and sep.numres = :numres')
    Left = 56
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'dteres'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'numres'
        ParamType = ptUnknown
      end>
    object SQLBUSNUMRES: TIntegerField
      DisplayLabel = 'Nro. Pedido'
      DisplayWidth = 12
      FieldName = 'NUMRES'
    end
    object SQLBUSCODUSU: TIntegerField
      DisplayLabel = 'Cód. Usuario'
      DisplayWidth = 12
      FieldName = 'CODUSU'
    end
    object SQLBUSLOGUSU: TStringField
      DisplayLabel = 'Usuário'
      DisplayWidth = 18
      FieldName = 'LOGUSU'
      Size = 15
    end
    object SQLBUSDTELOG: TDateTimeField
      DisplayLabel = 'Dt.Impressão'
      FieldName = 'DTELOG'
    end
    object SQLBUSHRELOG: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HRELOG'
      FixedChar = True
      Size = 8
    end
    object SQLBUSNROIMP: TIntegerField
      DisplayLabel = 'Nro.Imp.'
      FieldName = 'NROIMP'
    end
  end
  object DSBUS: TDataSource
    DataSet = SQLBUS
    Left = 56
    Top = 96
  end
end
