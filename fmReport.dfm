object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 32
    Width = 38
    Height = 13
    Caption = 'CODCLI'
    FocusControl = DBEdit1
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 48
    Width = 134
    Height = 21
    DataField = 'CODCLI'
    DataSource = DataSource1
    TabOrder = 0
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42654.667780486100000000
    ReportOptions.LastChange = 42660.646826759300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 56
    Datasets = <
      item
        DataSet = fxDbLojPe2
        DataSetName = 'dbLojPe2'
      end
      item
        DataSet = fxDbLojPed
        DataSetName = 'dbLojPed'
      end
      item
        DataSet = fxDbLojRp2
        DataSetName = 'dbLojRp2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 79.000000000000000000
      PaperHeight = 150.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 3.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 16.000000000000000000
        Width = 291.023810000000000000
        DataSet = fxDbLojPed
        DataSetName = 'dbLojPed'
        RowCount = 0
        object dbLojPe2NUMPED: TfrxMemoView
          Width = 136.063080000000000000
          Height = 11.338582680000000000
          DataSet = fxDbLojPe2
          DataSetName = 'dbLojPe2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comanda: [dbLojPed."NUMPED"]')
          ParentFont = False
        end
        object dbLojPe2DTEPED: TfrxMemoView
          Left = 154.960730000000000000
          Width = 136.062970160000000000
          Height = 11.338582680000000000
          DataSet = fxDbLojPe2
          DataSetName = 'dbLojPe2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data: [dbLojPed."DTEPED"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 12.338590000000000000
          Width = 291.023810000000000000
          Height = 11.338582680000000000
          DataSet = fxDbLojPe2
          DataSetName = 'dbLojPe2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente: [dbLojPed."CODCLI"] - [<dbLojPed."NOMCLI">]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 22.897650000000000000
          Width = 291.023810000000000000
          Height = 11.338582680000000000
          DataSet = fxDbLojPe2
          DataSetName = 'dbLojPe2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor: [<dbLojPed."CODVEN">] - [<dbLojPed."APEVEN">]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 38.015770000000000000
          Width = 291.023810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 76.000000000000000000
        Width = 291.023810000000000000
        DataSet = fxDbLojPe2
        DataSetName = 'dbLojPe2'
        RowCount = 0
        object Memo3: TfrxMemoView
          Width = 68.031540000000000000
          Height = 13.228348900000000000
          DataSet = fxDbLojPe2
          DataSetName = 'dbLojPe2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<dbLojPe2."CODGRU">][<dbLojPe2."CODSUB">][<dbLojPe2."CODPRO">]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 68.031540000000000000
          Width = 222.992270000000000000
          Height = 13.228348900000000000
          DataSet = fxDbLojPe2
          DataSetName = 'dbLojPe2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbLojPe2."DESPE2"]')
          ParentFont = False
        end
      end
    end
  end
  object dsLojPed: TDataSource
    DataSet = LojPed
    Left = 192
    Top = 128
  end
  object dsLojPe2: TDataSource
    DataSet = LojPe2
    Left = 232
    Top = 128
  end
  object dsLojRp2: TDataSource
    DataSet = LojRp2
    Left = 280
    Top = 128
  end
  object fxDbLojPed: TfrxDBDataset
    UserName = 'dbLojPed'
    CloseDataSource = False
    DataSource = dsLojPed
    BCDToCurrency = False
    Left = 192
    Top = 184
  end
  object fxDbLojPe2: TfrxDBDataset
    UserName = 'dbLojPe2'
    CloseDataSource = False
    DataSource = dsLojPe2
    BCDToCurrency = False
    Left = 232
    Top = 184
  end
  object fxDbLojRp2: TfrxDBDataset
    UserName = 'dbLojRp2'
    CloseDataSource = False
    DataSource = dsLojRp2
    BCDToCurrency = False
    Left = 280
    Top = 184
  end
  object DataSource1: TDataSource
    Left = 376
    Top = 112
  end
  object LojPed: TSQLDataSet
    Active = True
    CommandText = 
      'select Ped.CodEmp, Ped.DtePed,Ped.NumPed,Ped.HrePed,Ped.CodVen,P' +
      'ed.CodCli,Ped.NomCli,'#13#10'Ped.TotPed,Ped.TotIpi,Ped.TotGer,Ped.TotI' +
      'BPT,Ped.SitPed,'#13#10'ven.ApeVen, rpe.RecMod,rpe.TrcMod'#13#10'--, mod.NOMM' +
      'OD MODALIDADE'#13#10'from lojped ped'#13#10'left join lojrpe rpe on rpe.code' +
      'mp = ped.codemp and rpe.dteped = ped.dteped and rpe.numped = ped' +
      '.numped'#13#10'join FinVen ven on ven.codven = ped.codven'#13#10'Where ped.N' +
      'umPed = :NumPed;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NumPed'
        ParamType = ptInput
        Value = 16910
      end>
    SQLConnection = fmConn.SQLConn
    Left = 192
    Top = 80
    object LojPedCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object LojPedDTEPED: TSQLTimeStampField
      FieldName = 'DTEPED'
      Required = True
    end
    object LojPedNUMPED: TIntegerField
      FieldName = 'NUMPED'
      Required = True
    end
    object LojPedHREPED: TStringField
      FieldName = 'HREPED'
      Required = True
      FixedChar = True
      Size = 8
    end
    object LojPedCODVEN: TIntegerField
      FieldName = 'CODVEN'
      Required = True
    end
    object LojPedCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object LojPedNOMCLI: TStringField
      FieldName = 'NOMCLI'
      FixedChar = True
      Size = 70
    end
    object LojPedTOTPED: TFMTBCDField
      FieldName = 'TOTPED'
      Precision = 15
      Size = 2
    end
    object LojPedTOTIPI: TFMTBCDField
      FieldName = 'TOTIPI'
      Precision = 15
      Size = 2
    end
    object LojPedTOTGER: TFMTBCDField
      FieldName = 'TOTGER'
      Precision = 15
      Size = 2
    end
    object LojPedTOTIBPT: TFloatField
      FieldName = 'TOTIBPT'
    end
    object LojPedSITPED: TStringField
      FieldName = 'SITPED'
      FixedChar = True
      Size = 45
    end
    object LojPedAPEVEN: TStringField
      FieldName = 'APEVEN'
      FixedChar = True
    end
    object LojPedRECMOD: TFMTBCDField
      FieldName = 'RECMOD'
      Precision = 15
      Size = 2
    end
    object LojPedTRCMOD: TFMTBCDField
      FieldName = 'TRCMOD'
      Precision = 15
      Size = 2
    end
  end
  object LojPe2: TSQLDataSet
    Active = True
    CommandText = 
      'Select LojPe2.CodEmp,'#13#10'           LojPe2.DtePed,'#13#10'           Loj' +
      'Pe2.NumPed,'#13#10'           LojPe2.CodGru,'#13#10'           LojPe2.CodSub' +
      ','#13#10'           LojPe2.CodPro,'#13#10'           LojPe2.DesPe2,'#13#10'       ' +
      '    LojPe2.QtpPe2,'#13#10'           LojPe2.VlqPe2,'#13#10'           LojPe2' +
      '.IcmPe2,'#13#10'           LojPe2.TotIpi,'#13#10'           LojPe2.TotIBPT,'#13 +
      #10'           LojPe2.TotGe2 From LojPe2'#13#10'Where LojPe2.CodEmp = :Co' +
      'dEmp'#13#10'     and LojPe2.DtePed = :DtePed'#13#10'     and LojPe2.NumPed =' +
      ' :NumPed'#13#10'Order by LojPe2.NroPe2'
    DataSource = dsLojPed
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DTEPED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMPED'
        ParamType = ptInput
      end>
    SQLConnection = fmConn.SQLConn
    Left = 232
    Top = 80
    object LojPe2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object LojPe2DTEPED: TSQLTimeStampField
      FieldName = 'DTEPED'
      Required = True
    end
    object LojPe2NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Required = True
    end
    object LojPe2CODGRU: TStringField
      FieldName = 'CODGRU'
      Required = True
      FixedChar = True
      Size = 3
    end
    object LojPe2CODSUB: TStringField
      FieldName = 'CODSUB'
      Required = True
      FixedChar = True
      Size = 4
    end
    object LojPe2CODPRO: TStringField
      FieldName = 'CODPRO'
      Required = True
      FixedChar = True
      Size = 5
    end
    object LojPe2DESPE2: TStringField
      FieldName = 'DESPE2'
      Size = 70
    end
    object LojPe2QTPPE2: TFMTBCDField
      FieldName = 'QTPPE2'
      Required = True
      Precision = 15
      Size = 4
    end
    object LojPe2VLQPE2: TFMTBCDField
      FieldName = 'VLQPE2'
      Precision = 15
      Size = 3
    end
    object LojPe2ICMPE2: TFMTBCDField
      FieldName = 'ICMPE2'
      Precision = 15
      Size = 2
    end
    object LojPe2TOTIPI: TFMTBCDField
      FieldName = 'TOTIPI'
      Precision = 15
      Size = 2
    end
    object LojPe2TOTIBPT: TFMTBCDField
      FieldName = 'TOTIBPT'
      Precision = 15
      Size = 2
    end
    object LojPe2TOTGE2: TFMTBCDField
      FieldName = 'TOTGE2'
      Precision = 15
      Size = 2
    end
  end
  object LojRp2: TSQLDataSet
    Active = True
    CommandText = 
      'Select LojRp2.*,FinMod.NomMod'#13#10'From LojRp2'#13#10'LEFT JOIN FinMod ON ' +
      '(LojRp2.CodMod = FinMod.CodMod)'#13#10'Where LojRp2.CodEmp = :CodEmp'#13#10 +
      'and LojRp2.DtePed = :DtePed'#13#10'and LojRp2.NumPed = :NumPed;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CodEmp'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DtePed'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPed'
        ParamType = ptInput
      end>
    SQLConnection = fmConn.SQLConn
    Left = 280
    Top = 80
    object LojRp2CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object LojRp2DTEPED: TSQLTimeStampField
      FieldName = 'DTEPED'
      Required = True
    end
    object LojRp2NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Required = True
    end
    object LojRp2SEQRP2: TIntegerField
      FieldName = 'SEQRP2'
      Required = True
    end
    object LojRp2CODMOD: TIntegerField
      FieldName = 'CODMOD'
      Required = True
    end
    object LojRp2TOTMOD: TFMTBCDField
      FieldName = 'TOTMOD'
      Precision = 15
      Size = 2
    end
    object LojRp2RECMOD: TFMTBCDField
      FieldName = 'RECMOD'
      Precision = 15
      Size = 2
    end
    object LojRp2SLDMOD: TFMTBCDField
      FieldName = 'SLDMOD'
      Precision = 15
      Size = 2
    end
    object LojRp2SEQMOD: TIntegerField
      FieldName = 'SEQMOD'
    end
    object LojRp2QTDMOD: TIntegerField
      FieldName = 'QTDMOD'
    end
    object LojRp2FLGDIR: TStringField
      FieldName = 'FLGDIR'
      FixedChar = True
      Size = 3
    end
    object LojRp2QTDORD: TIntegerField
      FieldName = 'QTDORD'
    end
    object LojRp2NRORP2: TIntegerField
      FieldName = 'NRORP2'
    end
    object LojRp2FLGATU: TStringField
      FieldName = 'FLGATU'
      FixedChar = True
      Size = 1
    end
    object LojRp2NROMOD: TIntegerField
      FieldName = 'NROMOD'
    end
    object LojRp2NOMMOD: TStringField
      FieldName = 'NOMMOD'
      Size = 40
    end
  end
end
