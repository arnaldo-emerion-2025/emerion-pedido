object fmOcorrencias: TfmOcorrencias
  Left = 448
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ocorrências'
  ClientHeight = 276
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 826
    Height = 276
    Align = alClient
    DataSource = dsOcorrencias
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEMP'
        Title.Caption = 'Empresa'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTERES'
        Title.Caption = 'Data do Pedido'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMRES'
        Title.Caption = 'Nro do Pedido'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOCO'
        Title.Caption = 'Tipo da Ocorrência'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMOCO'
        Width = 482
        Visible = True
      end>
  end
  object dsOcorrencias: TDataSource
    DataSet = sqlOcorrencias
    Left = 424
    Top = 16
  end
  object sqlOcorrencias: TQuery
    DatabaseName = 'Isade'
    SQL.Strings = (
      'select * from PEDOCO'
      'where NUMRES = :NUMRES')
    UpdateMode = upWhereChanged
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'NUMRES'
        ParamType = ptInput
      end>
    object sqlOcorrenciasCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Origin = 'ISADE.PEDOCO.CODEMP'
    end
    object sqlOcorrenciasDTERES: TDateTimeField
      FieldName = 'DTERES'
      Origin = 'ISADE.PEDOCO.DTERES'
    end
    object sqlOcorrenciasNUMRES: TIntegerField
      FieldName = 'NUMRES'
      Origin = 'ISADE.PEDOCO.NUMRES'
    end
    object sqlOcorrenciasTIPOCO: TStringField
      FieldName = 'TIPOCO'
      Origin = 'ISADE.PEDOCO.TIPOCO'
      Size = 15
    end
    object sqlOcorrenciasSEQOCO: TIntegerField
      FieldName = 'SEQOCO'
      Origin = 'ISADE.PEDOCO.SEQOCO'
    end
    object sqlOcorrenciasNOMOCO: TStringField
      FieldName = 'NOMOCO'
      Origin = 'ISADE.PEDOCO.NOMOCO'
      Size = 100
    end
    object sqlOcorrenciasNRORE2: TIntegerField
      FieldName = 'NRORE2'
      Origin = 'ISADE.PEDOCO.NRORE2'
    end
    object sqlOcorrenciasDTEOPE: TDateTimeField
      FieldName = 'DTEOPE'
      Origin = 'ISADE.PEDOCO.DTEOPE'
    end
  end
end
