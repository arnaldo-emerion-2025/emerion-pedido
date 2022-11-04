unit PsqEs3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  FShowPadrao, AlignEdit, dxEditor, dxDBColorEdit, dxDBColorDateEdit,
  dxDBColorCurrencyEdit, Wwquery, Db, DBTables, DBClient, Provider, DBGrids,
  IBDatabase;

type
  TfmPsqEs3 = class(TfmShowPadrao)
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel2: TPanel;
    Label5: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    StrTab: TStringGrid;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    dxDBCurrencyEdit2: TdxDBColorCurrencyEdit;
    EdVpfOut: TAlignEdit;
    EdQtdImp: TAlignEdit;
    dxDBCurrencyEdit1: TdxDBColorCurrencyEdit;
    EdCstOut: TAlignEdit;
    dbQtdCmp: TdxDBColorCurrencyEdit;
    EdQtdCmp: TAlignEdit;
    dbDulCmp: TdxDBColorDateEdit;
    dbVpfIte: TdxDBColorCurrencyEdit;
    EdVpfIte: TAlignEdit;
    dbVcrIte: TdxDBColorCurrencyEdit;
    EdVcrIte: TAlignEdit;
    dxDBDateEdit1: TdxDBColorDateEdit;
    dxDBCurrencyEdit3: TdxDBColorCurrencyEdit;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    Panel3: TPanel;
    LbVb4Ite: TLabel;
    LbVb3Ite: TLabel;
    LbVb2Ite: TLabel;
    LbVb1Ite: TLabel;
    Label72: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    dbVb1Ite: TdxDBColorEdit;
    dbVb2Ite: TdxDBColorEdit;
    dbVb3Ite: TdxDBColorEdit;
    dbVb4Ite: TdxDBColorEdit;
    EdVb1Ite: TAlignEdit;
    EdVb2Ite: TAlignEdit;
    EdVb3Ite: TAlignEdit;
    EdVb4Ite: TAlignEdit;
    dbMk4Ite: TdxDBColorEdit;
    EdMk4Ite: TAlignEdit;
    dbMk3Ite: TdxDBColorEdit;
    EdMk3Ite: TAlignEdit;
    dbMk2Ite: TdxDBColorEdit;
    EdMk2Ite: TAlignEdit;
    dbMk1Ite: TdxDBColorEdit;
    EdMk1Ite: TAlignEdit;
    dbDs4Ite: TdxDBColorEdit;
    EdDs4Ite: TAlignEdit;
    dbDs3Ite: TdxDBColorEdit;
    EdDs3Ite: TAlignEdit;
    dbDs2Ite: TdxDBColorEdit;
    EdDs2Ite: TAlignEdit;
    dbDs1Ite: TdxDBColorEdit;
    EdDs1Ite: TAlignEdit;
    dbVb5Ite: TdxDBColorEdit;
    EdVb5Ite: TAlignEdit;
    dbMk5Ite: TdxDBColorEdit;
    EdMk5Ite: TAlignEdit;
    dbDs5Ite: TdxDBColorEdit;
    EdDs5Ite: TAlignEdit;
    EdDulCmp: TAlignEdit;
    EdDulImp: TAlignEdit;
    dbBase: TDatabase;
    EstPro: TwwQuery;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProREFPRO: TStringField;
    EstProLOCPRO: TStringField;
    EstProCODUNE: TStringField;
    EstProCODUNS: TStringField;
    EstProQTEPRO: TFloatField;
    EstProQTSPRO: TFloatField;
    EstProSAIIPI: TFloatField;
    EstProSAIICM: TFloatField;
    EstProCODST1: TStringField;
    EstProCODST2: TStringField;
    EstProQTDEMB: TFloatField;
    EstProIMGPRO: TBlobField;
    EstProSIMPRO: TStringField;
    EstProCBAPRO: TStringField;
    EstProWEBPRO: TStringField;
    EstProCODCAT: TIntegerField;
    EstProCODTIP: TIntegerField;
    EstProCODMRC: TIntegerField;
    EstProFLGPRO: TStringField;
    EstProCLFSAI: TStringField;
    EstProNUMPRO: TStringField;
    EstProCODANT: TStringField;
    EstProENTIPI: TFloatField;
    EstProCLFENT: TStringField;
    EstProENTICM: TFloatField;
    EstProIDEPRO: TStringField;
    sqlQuery: TQuery;
    ClientDataSet1: TClientDataSet;
    dsQuery: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    DateTimeField1: TDateTimeField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    DateTimeField2: TDateTimeField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    ClientDataSet1VP1ITE: TFloatField;
    ClientDataSet1VP2ITE: TFloatField;
    ClientDataSet1VP3ITE: TFloatField;
    ClientDataSet1VP4ITE: TFloatField;
    ClientDataSet1VP5ITE: TFloatField;
    ClientDataSet1MK1ITE: TFloatField;
    ClientDataSet1MK2ITE: TFloatField;
    ClientDataSet1MK3ITE: TFloatField;
    ClientDataSet1MK4ITE: TFloatField;
    ClientDataSet1MK5ITE: TFloatField;
    ClientDataSet1DS1ITE: TFloatField;
    ClientDataSet1DS2ITE: TFloatField;
    ClientDataSet1DS3ITE: TFloatField;
    ClientDataSet1DS4ITE: TFloatField;
    ClientDataSet1DS5ITE: TFloatField;
    ClientDataSet1VCRITE: TFloatField;
    ClientDataSet1VPFITE: TFloatField;
    ClientDataSet1QTDCMP: TFloatField;
    ClientDataSet1DULCMP: TDateTimeField;
    ClientDataSet1CUSTOFOB: TFloatField;
    ClientDataSet1CUSTOCIF: TFloatField;
    ClientDataSet1QTDREG2: TFloatField;
    ClientDataSet1DTEREG2: TDateTimeField;
    ClientDataSet1QTRQTE: TFloatField;
    ClientDataSet1QTDQTE: TFloatField;
    ClientDataSet1QTAQTE: TFloatField;
    ClientDataSet1QTDRMA: TFloatField;
    ClientDataSet1QTSQTE: TFloatField;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure StrTabSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StrTabDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    Linha: Integer;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqEs3: TfmPsqEs3;

implementation

uses dxDemoUtils, PsqEs2, PsqRes, PsqCmp, ManGDB;

{$R *.DFM}

procedure TfmPsqEs3.FormShow(Sender: TObject);
var
   queryIps, queryDados: TwwQuery;
   I, J: Integer;
begin
  inherited;

  EdVb1Ite.Text := StrTab.Cells[07, StrTab.Row];
  EdVb2Ite.Text := StrTab.Cells[08, StrTab.Row];
  EdVb3Ite.Text := StrTab.Cells[09, StrTab.Row];
  EdVb4Ite.Text := StrTab.Cells[10, StrTab.Row];
  EdVb5Ite.Text := StrTab.Cells[11, StrTab.Row];
  EdMk1Ite.Text := StrTab.Cells[12, StrTab.Row];
  EdMk2Ite.Text := StrTab.Cells[13, StrTab.Row];
  EdMk3Ite.Text := StrTab.Cells[14, StrTab.Row];
  EdMk4Ite.Text := StrTab.Cells[15, StrTab.Row];
  EdMk5Ite.Text := StrTab.Cells[16, StrTab.Row];
  EdDs1Ite.Text := StrTab.Cells[17, StrTab.Row];
  EdDs2Ite.Text := StrTab.Cells[18, StrTab.Row];
  EdDs3Ite.Text := StrTab.Cells[19, StrTab.Row];
  EdDs4Ite.Text := StrTab.Cells[20, StrTab.Row];
  EdDs5Ite.Text := StrTab.Cells[21, StrTab.Row];
  EdVcrIte.Text := StrTab.Cells[22, StrTab.Row];
  EdVpfIte.Text := StrTab.Cells[23, StrTab.Row];
  EdDulCmp.Text := StrTab.Cells[24, StrTab.Row];
  EdQtdCmp.Text := StrTab.Cells[25, StrTab.Row];
  EdVpfOut.Text := StrTab.Cells[26, StrTab.Row];
  EdCstOut.Text := StrTab.Cells[27, StrTab.Row];
  EdDulImp.Text := StrTab.Cells[28, StrTab.Row];
  EdQtdImp.Text := StrTab.Cells[29, StrTab.Row];

  Linha := StrTab.Row;

  StrTab.Setfocus;

  if Session.isAlias('gerirEstques') then
     begin

     end
  else
     begin
        Session.ConfigMode := cmSession;
        Session.AddStandardAlias('gerirEstques','C:\Emerion','INTRBASE');
        Session.SaveConfigFile;
     end;

  queryIps := TwwQuery.Create(self);
  queryIps.DataBaseName := 'ISade';
  queryIps.Active := False;

  queryIps.Sql.Text := 'select IP, PORTA, CAMINHO from REPLICA';

  queryIps.active := True;

  //**
  //Parametros Necessarios para se estabelecer uma conexao
  //USER NAME=SYSDBA
  //PASSWORD=ibsade20
  //TRIM CHAR=True
  //SERVER NAME =
  //**

  //ClientDataSet2.CreateDataSet;
  ClientDataSet2.Active := True;

  for I := 0 to queryIps.RecordCOunt - 1 do
     begin

        try
           begin

              dbBase.Connected := False;
              dbBase.DatabaseName := 'gerirEstques';
              dbBase.Params.Clear;
              dbBase.Params.Add('BLOBS TO CACHE=-1');

              dbBase.Params.Add('SERVER NAME=' + queryIps.FieldByName('IP').AsString +
                                           '/' + queryIps.FieldByName('PORTA').AsString +
                                           ':' + queryIps.FieldByName('CAMINHO').AsString);

              dbBase.Params.Add('USER NAME=SYSDBA');
              //dbBase.Params.Add('PASSWORD=' + 'ibsade20');
              dbBase.Params.Add('PASSWORD=' + GuIdHal);

              try
                 dbBase.Connected := True;
              except

              end;

             sqlQuery.Active := False;

             sqlQuery.Sql.Text :=
             'select' +

             ' pro.VP1ITE, pro.VP2ITE, pro.VP3ITE, pro.VP4ITE, pro.VP5ITE, pro.MK1ITE, pro.MK2ITE,' +
             ' pro.MK3ITE, pro.MK4ITE, pro.MK5ITE, pro.DS1ITE, pro.DS2ITE, pro.DS3ITE, pro.DS4ITE,' +
             ' pro.DS5ITE, pro.VCRITE, pro.VPFITE, pro.QTDCMP, pro.DULCMP, pro.CUSTOFOB, pro.CUSTOCIF,' +
             ' pro.QTDREG2, pro.DTEREG2,' +

             ' (SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)), qte.QTDQTE, qte.QTAQTE, qte.QTDRMA,' +
             ' Round(Qte.QtdQte-((SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO))+Qte.QtdRma),4) as QtsQte' +

             ' from estite pro' +
             ' left join estqte qte on qte.codemp = pro.codemp' +
             '                     and qte.codgru = pro.codgru' +
             '                     and qte.codsub = pro.codsub' +
             '                     and qte.codpro = pro.codpro' +

             ' where pro.codclp = ' + QuotedStr('1') +
             '   and pro.codgru = ' + QuotedStr('001') +
             '   and pro.codsub = ' + QuotedStr('0001') +
             '   and pro.codpro = ' + QuotedStr('00001');

             sqlQuery.Active := True;

             //
             //*Rotina para Preencher StrinGrid com as Informações da Base de Dados
             //
             ClientDataSet2.Insert;
             for J := 0 to sqlQuery.FieldCount -1 do
                begin
                   ClientDataSet2.Fields[J].Value := sqlQuery.Fields[J].Value;
                end;
             ClientDataSet2.SaveToFile('c:\Emerion\base.xml');

             //ClientDataSet2.Active := False;
             ClientDataSet2.Active := True;
             ClientDataSet2.LoadFromFile('c:\Emerion\base.xml');
           end;
        finally
           begin
              FreeAndNil(queryIps);
           end;
        end;

     end;

end;

procedure TfmPsqEs3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    Close;
end;

procedure TfmPsqEs3.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Trim(fmPsqEs2.EstProCodGru.Value) <> '' then
  begin

    if key = #18 then
    begin // Reservas //

      try

        fmPsqRes := TfmPsqRes.Create(Self);

        fmPsqRes.Panel3.Caption := ' ' + fmPsqEs2.EstProCodGru.Value + '.' + fmPsqEs2.EstProCodSub.Value + '.' + fmPsqEs2.EstProCodPro.Value + ' - ' +
          fmPsqEs2.EstProDscPro.Value;

        fmPsqRes.PedRes.Close;
        fmPsqRes.LojPed.Close;

        fmPsqRes.PedRes.DatabaseName := StrTab.Cells[6, Linha];
        fmPsqRes.LojPed.DatabaseName := StrTab.Cells[6, Linha];

        fmPsqRes.PedRes.Close;
        fmPsqRes.PedRes.Params[0].AsString := fmPsqEs2.EstProCodClp.Value;
        fmPsqRes.PedRes.Params[1].AsString := fmPsqEs2.EstProCodGru.Value;
        fmPsqRes.PedRes.Params[2].AsString := fmPsqEs2.EstProCodSub.Value;
        fmPsqRes.PedRes.Params[3].AsString := fmPsqEs2.EstProCodPro.Value;
        fmPsqRes.PedRes.Open;

        fmPsqRes.ShowModal;

      finally

        FreeAndNil(fmPsqRes);

      end;
    end;

    if key = #3 then
    begin // Comprado //

      try

        fmPsqCmp := TfmPsqCmp.Create(Self);

        fmPsqCmp.Panel3.Caption := ' ' + fmPsqEs2.EstProCodGru.Value + '.' + fmPsqEs2.EstProCodSub.Value + '.' + fmPsqEs2.EstProCodPro.Value + ' - ' +
          fmPsqEs2.EstProDscPro.Value;

        fmPsqCmp.CmpPed.Close;

        fmPsqCmp.CmpPed.DatabaseName := StrTab.Cells[6, Linha];

        fmPsqCmp.CmpPed.Close;
        fmPsqCmp.CmpPed.Params[0].AsString := fmPsqEs2.EstProCodClp.Value;
        fmPsqCmp.CmpPed.Params[1].AsString := fmPsqEs2.EstProCodGru.Value;
        fmPsqCmp.CmpPed.Params[2].AsString := fmPsqEs2.EstProCodSub.Value;
        fmPsqCmp.CmpPed.Params[3].AsString := fmPsqEs2.EstProCodPro.Value;
        fmPsqCmp.CmpPed.Open;

        fmPsqCmp.ShowModal;

      finally

        FreeAndNil(fmPsqCmp);

      end;
    end;
  end;
end;

procedure TfmPsqEs3.StrTabSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  inherited;
  EdVb1Ite.Text := StrTab.Cells[07, ARow];
  EdVb2Ite.Text := StrTab.Cells[08, ARow];
  EdVb3Ite.Text := StrTab.Cells[09, ARow];
  EdVb4Ite.Text := StrTab.Cells[10, ARow];
  EdVb5Ite.Text := StrTab.Cells[11, ARow];
  EdMk1Ite.Text := StrTab.Cells[12, ARow];
  EdMk2Ite.Text := StrTab.Cells[13, ARow];
  EdMk3Ite.Text := StrTab.Cells[14, ARow];
  EdMk4Ite.Text := StrTab.Cells[15, ARow];
  EdMk5Ite.Text := StrTab.Cells[16, ARow];
  EdDs1Ite.Text := StrTab.Cells[17, ARow];
  EdDs2Ite.Text := StrTab.Cells[18, ARow];
  EdDs3Ite.Text := StrTab.Cells[19, ARow];
  EdDs4Ite.Text := StrTab.Cells[20, ARow];
  EdDs5Ite.Text := StrTab.Cells[21, ARow];
  EdVcrIte.Text := StrTab.Cells[22, ARow];
  EdVpfIte.Text := StrTab.Cells[23, ARow];
  EdDulCmp.Text := StrTab.Cells[24, ARow];
  EdQtdCmp.Text := StrTab.Cells[25, ARow];
  EdVpfOut.Text := StrTab.Cells[26, ARow];
  EdCstOut.Text := StrTab.Cells[27, ARow];
  EdDulImp.Text := StrTab.Cells[28, ARow];
  EdQtdImp.Text := StrTab.Cells[29, ARow];
  Linha := ARow;
end;

procedure TfmPsqEs3.StrTabDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
begin

  { Pega o texto da célula }
  Texto := StrTab.Cells[ACol, ARow];

  { Calcura largura e altura (em pontos) do texto }

  LarguraTexto := StrTab.Canvas.TextWidth(Texto);
  AlturaTexto := StrTab.Canvas.TextHeight(Texto);

  { Calcula a posição horizontal do início do texto }
  if ACol = 0 then { Esquerda }
    X := Rect.Left + 2
  else { Direita }
    X := Rect.Right - LarguraTexto - 2;

  { Calcula a posição vertical do início do texto para
    que seja impresso no centro (verticalmente) da célula }
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;

  { Pinta o texto }
  StrTab.Canvas.TextRect(Rect, X, Y, Texto);

end;

end.
