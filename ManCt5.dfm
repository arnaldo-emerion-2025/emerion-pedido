object fmManCt5: TfmManCt5
  Left = 375
  Top = 158
  BorderStyle = bsSingle
  Caption = 'Cotação'
  ClientHeight = 257
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 5
    Top = 234
    Width = 149
    Height = 16
    Caption = 'F4-A vista F12-Concluir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 165
    Top = 234
    Width = 88
    Height = 16
    Caption = 'ESC-Retornar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 80
    Top = 88
    Width = 42
    Height = 13
    Caption = 'PRACT3'
  end
  object grPro: TdxDBGraphicEdit
    Left = 19
    Top = 36
    Width = 224
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
    Height = 174
  end
  object grCt3: ThGrid
    Left = 21
    Top = 38
    Width = 218
    Height = 168
    Selected.Strings = (
      'PRACT3'#9'10'#9' '
      'VLPCT3'#9'20'#9' ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    ShowVertScrollBar = False
    BorderStyle = bsNone
    Color = 16577773
    DataSource = DsCt3
    Font.Charset = ANSI_CHARSET
    Font.Color = clBackground
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBackground
    TitleFont.Height = -20
    TitleFont.Name = 'Haettenschweiler'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnKeyDown = grCt3KeyDown
    IndicatorColor = icYellow
    CorDeFoco = clInfoBk
  end
  object pnTit: TdxDBColorEdit
    Left = 19
    Top = 3
    Width = 224
    Color = 16577773
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Style.BorderColor = clBlack
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtInactive
    Style.HotTrack = True
    Style.Shadow = True
    TabOrder = 2
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'CODGRU'
    CorDeFoco = clInfoBk
    Height = 33
  end
  object grTit: TPanel
    Left = 21
    Top = 5
    Width = 218
    Height = 27
    BevelOuter = bvNone
    TabOrder = 3
    object Label11: TLabel
      Left = 38
      Top = 5
      Width = 37
      Height = 16
      Caption = 'Prazo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 182
      Top = 5
      Width = 34
      Height = 16
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 20
    Top = 210
    Width = 222
    Height = 22
    BevelOuter = bvNone
    TabOrder = 4
    OnExit = Panel1Exit
    object EdPraCt3: TdxDBColorEdit
      Left = -1
      Top = -1
      Width = 80
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
      TabOrder = 0
      OnExit = EdPraCt3Exit
      OnKeyPress = EdPraCt3KeyPress
      Alignment = taRightJustify
      CharCase = ecUpperCase
      DataField = 'PRACT3'
      DataSource = DsCt3
      CorDeFoco = clInfoBk
      StoredValues = 1
    end
    object EdVlpCt3: TdxDBColorCurrencyEdit
      Left = 78
      Top = -1
      Width = 145
      Color = 16577773
      Enabled = False
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
      TabOrder = 1
      Alignment = taRightJustify
      AutoSize = False
      DataField = 'VLPCT3'
      DataSource = DsCt3
      DecimalPlaces = 4
      Nullable = False
      UseThousandSeparator = True
      CorDeFoco = clInfoBk
      Height = 24
      StoredValues = 1
    end
  end
  object DsCt3: TwwDataSource
    DataSet = PedCt3
    Left = 50
    Top = 149
  end
  object UpCt3: TUpdateSQL
    ModifySQL.Strings = (
      'update PedCt3'
      'set'
      '  PRACT3 = :PRACT3,'
      '  VLPCT3 = :VLPCT3,'
      '  FLGAPR = :FLGAPR,'
      '  FLGATU = :FLGATU'
      'where'
      '  ID_PEDCT3 = :OLD_ID_PEDCT3 and'
      '  NUMCTA = :OLD_NUMCTA and'
      '  DTECTA = :OLD_DTECTA and'
      '  CODEMP = :OLD_CODEMP')
    InsertSQL.Strings = (
      'insert into PedCt3'
      '  (NUMCTA, DTECTA, CODEMP, PRACT3, VLPCT3, FLGAPR, FLGATU)'
      'values'
      '  (:NUMCTA, :DTECTA, :CODEMP,:PRACT3, :VLPCT3, :FLGAPR, :FLGATU)')
    DeleteSQL.Strings = (
      'delete from PedCt3'
      'where'
      '  ID_PEDCT3 = :OLD_ID_PEDCT3 and'
      '  NUMCTA = :OLD_NUMCTA and'
      '  DTECTA = :OLD_DTECTA and'
      '  CODEMP = :OLD_CODEMP')
    Left = 22
    Top = 177
  end
  object quSQL: TwwQuery
    DatabaseName = 'ISade'
    UniDirectional = True
    ValidateWithMask = True
    Left = 50
    Top = 177
  end
  object PedCt3: TwwQuery
    Active = True
    CachedUpdates = True
    BeforePost = PedCt3BeforePost
    OnNewRecord = PedCt3NewRecord
    DatabaseName = 'ISade'
    SQL.Strings = (
      'Select * From PedCt3'
      'Where PedCt3.CODEMP = :CODEMP and'
      '      PedCt3.NUMCTA = :NUMCTA and'
      '      PedCt3.DTECTA = :DTECTA'
      'Order by PedCt3.NroCt3'
      ' ')
    UpdateObject = UpCt3
    ValidateWithMask = True
    Left = 22
    Top = 149
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMCTA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DTECTA'
        ParamType = ptInput
      end>
    object PedCt3PRACT3: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 10
      FieldName = 'PRACT3'
      Origin = 'ISADE.PEDCT3.PRACT3'
    end
    object PedCt3VLPCT3: TFloatField
      DisplayLabel = ' '
      DisplayWidth = 20
      FieldName = 'VLPCT3'
      Origin = 'ISADE.PEDCT3.VLPCT3'
    end
    object PedCt3ID_PEDCT3: TIntegerField
      FieldName = 'ID_PEDCT3'
      Origin = 'ISADE.PEDCT3.ID_PEDCT3'
      Visible = False
    end
    object PedCt3FLGAPR: TStringField
      FieldName = 'FLGAPR'
      Origin = 'ISADE.PEDCT3.FLGAPR'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object PedCt3FLGATU: TStringField
      FieldName = 'FLGATU'
      Origin = 'ISADE.PEDCT3.FLGATU'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object PedCt3NROCT3: TIntegerField
      FieldName = 'NROCT3'
      Origin = 'ISADE.PEDCT3.NROCT3'
      Visible = False
    end
    object PedCt3NUMCTA: TIntegerField
      FieldName = 'NUMCTA'
      Origin = 'ISADE.PEDCT3.NUMCTA'
      Visible = False
    end
    object PedCt3DTECTA: TDateTimeField
      FieldName = 'DTECTA'
      Origin = 'ISADE.PEDCT3.DTECTA'
      Visible = False
    end
    object PedCt3CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDCT3.CODEMP'
      Visible = False
    end
  end
end
