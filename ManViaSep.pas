unit ManViaSep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables, QRPrntr,  qrpctrls, QRPDFFilt;

type
  TfmManViaSep = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRDB_CodPro: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    PedRe2: TQuery;
    PedRe2ATENDE: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2CODUND: TStringField;
    PedRe2QTPRE2: TFloatField;
    DataSource1: TDataSource;
    PedRe2REFPRO: TStringField;
    PedRe2PRODEXT: TStringField;
    PedRe2CODMRC: TIntegerField;
    PedRe2NUMPRO: TStringField;
    PedRe2DSCPRO: TStringField;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    LBCodPro: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    lbAtende: TQRLabel;
    QRGroupF: TQRBand;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    lb_steEntrega: TQRLabel;
    lb_NumPed: TQRLabel;
    QRLabel3: TQRLabel;
    quSQL: TQuery;
    PedRe2NUMRES: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NOMMRC: TStringField;
    QRLabel18: TQRLabel;
    lb_DtePed: TQRLabel;
    QRLabel19: TQRLabel;
    lb_HoraPed: TQRLabel;
    QRBand6: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    MMPrazo1: TQRMemo;
    lbObs: TQRMemo;
    QRLabel23: TQRLabel;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel9: TQRLabel;
    lbNomeTransp: TQRLabel;
    cpNomeTransp: TQRLabel;
    lbEndTransp: TQRLabel;
    lbCidadeTransp: TQRLabel;
    lbTransp: TQRLabel;
    cpCidadeTransp: TQRLabel;
    lbUFTransp: TQRLabel;
    lbCEPTransp: TQRLabel;
    lbTelTransp: TQRLabel;
    cpTelTransp: TQRLabel;
    lbbairroTransp: TQRLabel;
    cpbairroTransp: TQRLabel;
    lbNomVend: TQRLabel;
    lbNomCli: TQRLabel;
    lbEntrega: TQRLabel;
    lnTransp: TQRShape;
    cpEndTransp: TQRLabel;
    cpUFTransp: TQRLabel;
    cpCEPTransp: TQRLabel;
    cpNomVend: TQRLabel;
    cpCliente: TQRLabel;
    cpEntrega: TQRMemo;
    QRLabel5: TQRLabel;
    cpCgcTrans: TQRLabel;
    lbQtdTot: TQRLabel;
    edQtdTot: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel6: TQRLabel;
    lb_QtdImp: TQRLabel;
    lblVolumes: TQRLabel;
    QRPShape1: TQRPShape;
    QRLabel7: TQRLabel;
    cpLiberaFin: TQRLabel;
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    GImpMrc: string;

    procedure BuscaParcelas(idPEd, codemp: Integer; dtePEd: TDateTime);
    procedure CarregaDadosPedido(idPEd, codemp: Integer; dtePEd: TDateTime);

  public
    { Public declarations }
    id_Ped, CodEmp: integer;
    dtePed: TDateTime;
    formatDecimalViaSep  : string;
    
    procedure AbreSeperacao(idPed, codemp: Integer; dtePEd: TDateTime);
  end;

var
  fmManViaSep: TfmManViaSep;

implementation

uses ManGDB;

{$R *.DFM}

procedure TfmManViaSep.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

var
  ImpRef: string;
begin
  if PedRe2ATENDE.AsString = 'S' then
    lbAtende.Caption := 'Itens Disponíveis'
  else
    lbAtende.Caption := 'Itens Indisponíveis';

  ImpRef := fmManGDB.BuscaSimples('PEDPAR', 'IMPREF', ' 1 = 1 ');

  if uppercase(ImpRef) <> 'SIM' then
    LBCodPro.Caption := 'Nosso Codigo'
  else
    LBCodPro.Caption := 'Referencia';

end;

procedure TfmManViaSep.BuscaParcelas(idPEd, codemp: Integer; dtePEd: TDateTime);
var
  sBase, strPrazo: string;

  function completaStr(auxStr: string; inttamanho: integer): string;
  var
    tempStr: string;
    intFalta, i: integer;
  begin
    intFalta := inttamanho - length(auxStr);
    tempStr := Trim(auxStr);

    if inttamanho - length(tempStr) > 0 then
    begin
      while (inttamanho - length(tempStr)) > 0 do
      begin
        tempStr := ' ' + tempStr;
      end;
    end;
    Result := tempStr;

  end;
begin

  quSQL.Active := False;
  sBase := ' Select * From PedRe3' +
    ' Where CodEmp = ' + IntToStr(codemp) +
    ' and DteRes = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtePEd)) +
    ' and NumRes = ' + IntToStr(idPEd) +
    ' Order by CodEmp,NumRes,SeqRe3';

  quSQL.sql.Text := sBase;

  quSQL.Active := True;

  MMPrazo1.Lines.Clear;

  if(FmManGdb.BuscaSimples('PEDPAR', 'IMP_PARCELA_PEDIDO', ' 1 = 1') = 'AAA') then //Alterado para AAA para nao imprimir as parcelas até segunda instância
    begin
      while not quSQL.eof do
        begin
          strPrazo := '';
          strPrazo := strPrazo + completaStr(FormatFloat('00', quSQL.FieldByName('PraRe3').AsInteger), 5) + ' ' +
            completaStr(FormatFloat('###,###,##0.00', quSql.FieldbyName('VlpRe3').AsFloat), 15);
          quSql.Next;

          if not quSQL.eof then
          begin
            strPrazo := strPrazo + ' ' + completaStr(FormatFloat('00', quSQL.FieldByName('PraRe3').AsInteger), 5) + ' ' +
              completaStr(FormatFloat('###,###,##0.00', quSql.FieldbyName('VlpRe3').AsFloat), 15);
            quSql.Next;
          end;

          if not quSQL.eof then
          begin
            strPrazo := strPrazo + ' ' + completaStr(FormatFloat('00', quSQL.FieldByName('PraRe3').AsInteger), 5) + ' ' +
              completaStr(FormatFloat('###,###,##0.00', quSql.FieldbyName('VlpRe3').AsFloat), 15);
            quSql.Next;
          end;

          MMPrazo1.Lines.Add(strPrazo);
        end;
    end;

end;

procedure TfmManViaSep.QRDBText2Print(sender: TObject; var Value: string);
var
  GImpLoc: string;
begin
  if GImpMrc = 'Sim' then
    if trim(PedRe2NOMMRC.asString) <> '' then
      Value := Value + #13 + PedRe2NOMMRC.asString;

  QuSql.Active := False;
  QuSql.SQL.Text := ' Select * From PedPar';
  QuSql.Active := True;

  GImpLoc := QuSql.FieldbyName('ImpLoc').AsString;
  if UpperCase(Trim(GImpLoc)) = 'SIM' then
    Value := Value + #13 + 'Localização: ' + fmManGDB.BuscaSimples('EstPro', 'LocPro',
      'CodClp = ' + QuotedStr(PedRe2CODCLP.AsString) + ' AND ' +
      'CodGru = ' + QuotedStr(PedRe2CODGru.AsString) + ' AND ' +
      'CodSub = ' + QuotedStr(PedRe2CODSub.AsString) + ' AND ' +
      'CodPro = ' + QuotedStr(PedRe2CODPro.AsString));
end;

procedure TfmManViaSep.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  BuscaParcelas(pedre2NumRes.AsInteger, pedre2CodEmp.AsInteger, pedre2DteRes.AsDateTime);
  CarregaDadosPedido(pedre2NumRes.AsInteger, pedre2CodEmp.AsInteger, pedre2DteRes.AsDateTime);
  GImpMrc := fmmangdb.BuscaSimples('PedPar', 'ImpMrc', ' 1 = 1 ');

  if fmManGDB.BuscaSimples('PEDPAR', 'IMPREF', ' 1 = 1 ') = 'Sim' then
  begin
    LBCodPro.Caption := 'Referencia';
    QRDB_CodPro.DataField := 'refpro';
  end
  else
  begin
    LBCodPro.Caption := 'Nosso Codigo';
    QRDB_CodPro.DataField := 'PRODEXT';
  end;
end;

procedure TfmManViaSep.CarregaDadosPedido(idPEd, codemp: Integer; dtePEd: TDateTime);
var
  strAux: string;
begin
  qusql.Active := False;

  qusql.sql.Text := ' select pedres.codven, finven.apeven, pedres.codtra, fintra.nomtra, PedRes.ObsRes, '
    + ' pedres.codcli, fincli.nomcli, pedres.NomEnt, pedres.TenCli, pedres.EndCli, pedres.QtdImp, '
    + ' pedres.NumCli, pedres.BaiCli, pedres.CidCli, pedres.UfeCli, pedres.CepCli, '
    + ' pedres.hreres, pedres.UfeRes, pedres.DtfRes,fintra.ceptra,fintra.endtra, fintra.tentra, '
    + ' fintra.numtra, fintra.baitra, fintra.cidtra, fintra.sigufe UFETRA, fintra.CGCTRA, '
    + ' fintra.prttra, fintra.fontra, fintra.tentra, fintra.numtra, Pedres.PRFRES, '
    + ' Pedres.DTEFIN, Pedres.HREFIN '
    + ' from pedres '
    + ' left join finven on finven.codven = pedres.codven '
    + ' left join fintra on fintra.codtra = pedres.codtra '
    + ' left join fincli on fincli.codcli = pedres.codcli '
    + ' where pedres.codemp = ' + inttostr(codemp)
    + ' and pedres.dteres = ' + quotedStr(formatDateTime('yyyy-mm-dd', dtePEd))
    + ' and pedres.numres = ' + inttostr(idPed);
  qusql.Active := True;
  strAux := '';

  if not qusql.IsEmpty then
  begin
    if qusql.FieldbyName('codtra').AsString <> '' then
    begin

      QRBand2.Height := 186;

      cpNomVend.Top := 125;
      lbNomVend.Top := 125;

      cpCliente.Top := 141;
      lbNomCli.Top := 141;

      cpEntrega.Top := 160;
      lbEntrega.Top := 160;

      lbTransp.enabled := True;
      lnTransp.enabled := True;

      cpNomeTransp.enabled := True;
      lbNomeTransp.Enabled := True;

      cpEndTransp.enabled := True;
      lbEndTransp.Enabled := True;

      cpbairroTransp.enabled := True;
      lbbairroTransp.Enabled := True;

      cpCidadeTransp.enabled := True;
      lbCidadeTransp.Enabled := True;

      cpUFTransp.enabled := True;
      lbUFTransp.Enabled := True;

      cpCEPTransp.enabled := True;
      lbCEPTransp.Enabled := True;

      cpTelTransp.enabled := True;
      lbTelTransp.Enabled := True;

    end
    else
    begin
      QRBand2.Height := 71;

      cpNomVend.Top := 10;
      lbNomVend.Top := 10;

      cpCliente.Top := 26;
      lbNomCli.Top := 26;

      cpEntrega.Top := 45;
      lbEntrega.Top := 45;

      lbTransp.enabled := False;
      lnTransp.enabled := False;

      cpNomeTransp.enabled := False;
      lbNomeTransp.Enabled := False;

      cpEndTransp.enabled := False;
      lbEndTransp.Enabled := False;

      cpbairroTransp.enabled := False;
      lbbairroTransp.Enabled := False;

      cpCidadeTransp.enabled := False;
      lbCidadeTransp.Enabled := False;

      cpUFTransp.enabled := False;
      lbUFTransp.Enabled := False;

      cpCEPTransp.enabled := False;
      lbCEPTransp.Enabled := False;

      cpTelTransp.enabled := False;
      lbTelTransp.Enabled := False;

    end;

    lb_steEntrega.Caption := '';
    if not qusql.FieldbyName('DTFRES').IsNull then
      lb_steEntrega.Caption := 'Entregar em: ' + FormatDateTime('dd/mm/yyyy', qusql.FieldbyName('DTFRES').AsDateTime);

    cpNomeTransp.caption := qusql.FieldbyName('codtra').AsString + ' - ' + qusql.FieldbyName('nomtra').AsString;
    cpEndTransp.caption := qusql.FieldbyName('tentra').AsString + ' ' + qusql.FieldbyName('endtra').AsString + ', ' + qusql.FieldbyName('numtra').AsString;
    cpEndTransp.caption := trim(cpEndTransp.caption);
    cpbairroTransp.caption := qusql.FieldbyName('baitra').AsString;
    cpCidadeTransp.caption := qusql.FieldbyName('cidtra').AsString;
    cpCEPTransp.caption := qusql.FieldbyName('ceptra').AsString;
    cpTelTransp.caption := qusql.FieldbyName('prttra').AsString + '-' + qusql.FieldbyName('fontra').AsString;
    cpUFTransp.caption := qusql.FieldbyName('UFETRA').AsString;
    cpCgcTrans.Caption := qusql.FieldbyName('CGCTRA').AsString;

    cpLiberaFin.Caption := 'LF: ' + quSQL.FieldByName('DTEFIN').AsString + ' ' + quSQL.FieldByName('HREFIN').AsString;

    cpEntrega.Lines.Clear;
    cpEntrega.Caption := 'Entregar em : ' + FormatDateTime('dd/mm/yyyy', qusql.FieldbyName('dtfres').AsDateTime);
    cpCliente.Caption := qusql.FieldbyName('CodCli').AsString + ' - ' + qusql.FieldbyName('NomCli').AsString + '  UF: ' + qusql.FieldbyName('uferes').AsString;
    cpNomVend.Caption := qusql.FieldbyName('CodVen').AsString + ' - ' + qusql.FieldbyName('apeven').AsString;

    lb_NumPed.caption := FormatFloat('000000', idPEd);

    lb_DtePed.Caption := FormatDateTime('dd/mm/yyyy', dtePEd);

    lb_HoraPed.Caption := qusql.FieldbyName('hreres').AsString;
    lb_QtdImp.Caption := IntToStr(qusql.FieldbyName('QtdImp').AsInteger + 1);

    strAux := Trim(qusql.FieldbyName('NomEnt').AsString);

    cpEntrega.LineS.Add(strAux);
    strAux := '';

    if Trim(qusql.FieldbyName('TenCli').AsString) <> '' then
      strAux := Trim(qusql.FieldbyName('TenCli').AsString) + ' ' + Trim(qusql.FieldbyName('EndCli').AsString)
    else
      strAux := Trim(qusql.FieldbyName('EndCli').AsString);

    if Trim(qusql.FieldbyName('NumCli').AsString) <> '' then
      strAux := strAux + ', ' + Trim(qusql.FieldbyName('NumCli').AsString);

    if Trim(qusql.FieldbyName('BaiCli').AsString) <> '' then
      strAux := strAux + ' Bairro ' + Trim(qusql.FieldbyName('BaiCli').AsString);

    cpEntrega.LineS.Add(strAux);
    strAux := '';

    strAux := 'Cidade ' + Trim(qusql.FieldbyName('CidCli').AsString) + '  UF: ' + qusql.FieldbyName('UfeCli').AsString;

    if Trim(qusql.FieldbyName('CepCli').AsString) <> '' then
      strAux := strAux + ' Cep: ' + copy(qusql.FieldbyName('CepCli').AsString, 1, 5) + '-' + copy(qusql.FieldbyName('CepCli').AsString, 6, 3);

    cpEntrega.LineS.Add(strAux);

    strAux := '';
    lbObs.lines.Clear;
    lbObs.lines.add(qusql.FieldbyName('ObsRes').AsString);
  end;

  qusql.Active := False;

end;

procedure TfmManViaSep.AbreSeperacao(idPed, codemp: Integer; dtePEd: TDateTime);
var
  strBase: string;
begin
  {fmManViaSep.}
  strBase := ' Select ''N'' Atende, '
    + ' PedRe2.CodEmp, '
    + ' PedRe2.CodClp, '
    + ' PedRe2.CodGru, '
    + ' PedRe2.CodSub, '
    + ' PedRe2.CodPro, '
    + ' PedRe2.CodUnd, '
    + ' PedRe2.QtpRe2, '
    + ' estpro.refpro, '
    + ' PedRe2.CodClp||''.''||PedRe2.CodGru||''.''||PedRe2.CodSub||''.''||PedRe2.CodPro ProdExt, '
    + ' EstPro.CodMrc, '
    + ' EstPro.NumPro, '
    + ' EstPro.DscPro, '
    + ' PedRe2.NumRes, '
    + ' PedRe2.DteRes, '
    + ' estmrc.nommrc, '
    + ' estpro.locpro '
    + ' From PedRe2 '
    + ' join EstQte QTE on QTE.CodClp = PedRe2.CodClp '
    + ' and QTE.CodGru = PedRe2.CodGru '
    + ' and QTE.CodSub = PedRe2.CodSub '
    + ' and QTE.CodPro = PedRe2.CodPro '
    + ' and QTE.CodTam = PedRe2.CodTam '
    + ' and QTE.CodCor = PedRe2.CodCor '
    + ' and QTE.CodEmp = PedRe2.CodEmp '
    + ' join EstPro on EstPro.CodClp = PedRe2.CodClp '
    + ' and EstPro.CodGru = PedRe2.CodGru '
    + ' and EstPro.CodSub = PedRe2.CodSub '
    + ' and EstPro.CodPro = PedRe2.CodPro '
    + ' left join estmrc on estmrc.codmrc = estpro.codmrc '
    + ' Where PedRe2.CodEmp = :CodEmp '
    + ' and PedRe2.DteRes = :DteRes '
    + ' and PedRe2.NumRes = :NumRes '
    + ' and (QTE.QtdQte - ((SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) + QTE.QtdRma)) < 0 '

  + ' union all '

  + ' Select ''S'' Atende, '
    + ' PedRe2.CodEmp, '
    + ' PedRe2.CodClp, '
    + ' PedRe2.CodGru, '
    + ' PedRe2.CodSub, '
    + ' PedRe2.CodPro, '
    + ' PedRe2.CodUnd, '
    + ' PedRe2.QtpRe2, '
    + ' estpro.refpro, '
    + ' PedRe2.CodClp||''.''||PedRe2.CodGru||''.''||PedRe2.CodSub||''.''||PedRe2.CodPro ProdExt, '
    + ' EstPro.CodMrc, '
    + ' EstPro.NumPro, '
    + ' EstPro.DscPro, '
    + ' PedRe2.NumRes, '
    + ' PedRe2.DteRes, '
    + ' estmrc.nommrc, '
    + ' estpro.locpro '
    + ' From PedRe2 '
    + ' join EstQte QTE on QTE.CodClp = PedRe2.CodClp '
    + ' and QTE.CodGru = PedRe2.CodGru '
    + ' and QTE.CodSub = PedRe2.CodSub '
    + ' and QTE.CodPro = PedRe2.CodPro '
    + ' and QTE.CodTam = PedRe2.CodTam '
    + ' and QTE.CodCor = PedRe2.CodCor '
    + ' and QTE.CodEmp = PedRe2.CodEmp '
    + ' join EstPro on EstPro.CodClp = PedRe2.CodClp '
    + ' and EstPro.CodGru = PedRe2.CodGru '
    + ' and EstPro.CodSub = PedRe2.CodSub '
    + ' and EstPro.CodPro = PedRe2.CodPro '
    + ' left join estmrc on estmrc.codmrc = estpro.codmrc '
    + ' Where PedRe2.CodEmp = :CodEmp '
    + ' and PedRe2.DteRes = :DteRes '
    + ' and PedRe2.NumRes = :NumRes '
    + ' and (QTE.QtdQte - ((SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) + QTE.QtdRma)) >= 0 ';
  //+ ' --Group by 1,2,3,4,5,6,7,8 ';

  if fmManGDB.BuscaSimples('PEDPAR', 'ORDENA_VIASEP_LOC', ' 1 = 1 ') = 'S' then
  begin
    if fmManGDB.BuscaSimples('PEDPAR', 'IMPREF', ' 1 = 1 ') = 'Sim' then
      strBase := strBase + ' Order by 1 Desc,17,9,2,3,4,5 '
    else
      strBase := strBase + ' Order by 1 Desc,17,10,2,3,4,5 ';
  end
  else
  begin
    if fmManGDB.BuscaSimples('PEDPAR', 'IMPREF', ' 1 = 1 ') = 'Sim' then
      strBase := strBase + ' Order by 1 Desc,9,2,3,4,5 '
    else
      strBase := strBase + ' Order by 1 Desc,10,2,3,4,5 ';
  end;

  pedre2.Active := False;
  pedre2.sql.Text := strBase;

  pedre2.Active := False;

  pedre2.ParamByName('CodEmp').AsInteger := CodEmp;
  pedre2.ParamByName('NumRes').AsInteger := IdPed;
  pedre2.ParamByName('DteRes').AsDateTime := dtePed;

  pedre2.Active := True;
  QuickRep1.PreviewWidth := Screen.Width - 2;
  QuickRep1.PreviewHeight := Screen.Height - 2;
  QuickRep1.PrevInitialZoom := qrZoomToWidth;
  QuickRep1.PreviewModal;

  Close;

end;

procedure TfmManViaSep.FormCreate(Sender: TObject);
var
  strBase: string;

  aux, I  : Integer;
begin
  {fmManViaSep.}
  strBase := ' Select ''N'' Atende, '
    + ' PedRe2.CodEmp, '
    + ' PedRe2.CodClp, '
    + ' PedRe2.CodGru, '
    + ' PedRe2.CodSub, '
    + ' PedRe2.CodPro, '
    + ' PedRe2.CodUnd, '
    + ' PedRe2.QtpRe2, '
    + ' estpro.refpro, '
    + ' PedRe2.CodClp||''.''||PedRe2.CodGru||''.''||PedRe2.CodSub||''.''||PedRe2.CodPro ProdExt, '
    + ' EstPro.CodMrc, '
    + ' EstPro.NumPro, '
    + ' EstPro.DscPro, '
    + ' PedRe2.NumRes, '
    + ' PedRe2.DteRes, '
    + ' estmrc.nommrc '
    + ' From PedRe2 '
    + ' join EstQte QTE on QTE.CodClp = PedRe2.CodClp '
    + ' and QTE.CodGru = PedRe2.CodGru '
    + ' and QTE.CodSub = PedRe2.CodSub '
    + ' and QTE.CodPro = PedRe2.CodPro '
    + ' and QTE.CodTam = PedRe2.CodTam '
    + ' and QTE.CodCor = PedRe2.CodCor '
    + ' and QTE.CodEmp = PedRe2.CodEmp '
    + ' join EstPro on EstPro.CodClp = PedRe2.CodClp '
    + ' and EstPro.CodGru = PedRe2.CodGru '
    + ' and EstPro.CodSub = PedRe2.CodSub '
    + ' and EstPro.CodPro = PedRe2.CodPro '
    + ' left join estmrc on estmrc.codmrc = estpro.codmrc '
    + ' Where PedRe2.CodEmp = :CodEmp '
    + ' and PedRe2.DteRes = :DteRes '
    + ' and PedRe2.NumRes = :NumRes '
    + ' and (QTE.QtdQte - ((SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) + QTE.QtdRma)) < 0 '

  + ' union all '

  + ' Select ''S'' Atende, '
    + ' PedRe2.CodEmp, '
    + ' PedRe2.CodClp, '
    + ' PedRe2.CodGru, '
    + ' PedRe2.CodSub, '
    + ' PedRe2.CodPro, '
    + ' PedRe2.CodUnd, '
    + ' PedRe2.QtpRe2, '
    + ' estpro.refpro, '
    + ' PedRe2.CodClp||''.''||PedRe2.CodGru||''.''||PedRe2.CodSub||''.''||PedRe2.CodPro ProdExt, '
    + ' EstPro.CodMrc, '
    + ' EstPro.NumPro, '
    + ' EstPro.DscPro, '
    + ' PedRe2.NumRes, '
    + ' PedRe2.DteRes, '
    + ' estmrc.nommrc '
    + ' From PedRe2 '
    + ' join EstQte QTE on QTE.CodClp = PedRe2.CodClp '
    + ' and QTE.CodGru = PedRe2.CodGru '
    + ' and QTE.CodSub = PedRe2.CodSub '
    + ' and QTE.CodPro = PedRe2.CodPro '
    + ' and QTE.CodTam = PedRe2.CodTam '
    + ' and QTE.CodCor = PedRe2.CodCor '
    + ' and QTE.CodEmp = PedRe2.CodEmp '
    + ' join EstPro on EstPro.CodClp = PedRe2.CodClp '
    + ' and EstPro.CodGru = PedRe2.CodGru '
    + ' and EstPro.CodSub = PedRe2.CodSub '
    + ' and EstPro.CodPro = PedRe2.CodPro '
    + ' left join estmrc on estmrc.codmrc = estpro.codmrc '
    + ' Where PedRe2.CodEmp = :CodEmp '
    + ' and PedRe2.DteRes = :DteRes '
    + ' and PedRe2.NumRes = :NumRes '
    + ' and (QTE.QtdQte - ((SELECT QTD_RESERVADA FROM RESERVAS(QTE.CODEMP,QTE.CODCLP,QTE.CODGRU,QTE.CODSUB,QTE.CODPRO)) + QTE.QtdRma)) >= 0 ';
  //+ ' --Group by 1,2,3,4,5,6,7,8 ';

  if fmManGDB.BuscaSimples('PEDPAR', 'IMPREF', ' 1 = 1 ') = 'Sim' then
    strBase := strBase + ' Order by 1 Desc,9,2,3,4,5 '
  else
    strBase := strBase + ' Order by 1 Desc,10,2,3,4,5 ';

  pedre2.Active := False;
  pedre2.sql.Text := strBase;

   aux := fmManGDB.BuscaSimplesInt('PEDPAR','QTD_DEC_VIA_SEP','1 = 1');

   if(aux > 0) then
      begin
         formatDecimalViaSep := '#.';

         for I := 0 to aux -1 do
            begin
               formatDecimalViaSep := formatDecimalViaSep + '0';
            end
      end
   else
      formatDecimalViaSep := '0';

   PedRe2QTPRE2.DisplayFormat := formatDecimalViaSep;

end;

procedure TfmManViaSep.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if fmManGdb.BuscaSimples('PEDPAR', 'IMPQTDVIASEP', ' 1 = 1') = 'S' then
  begin
    edQtdTot.Enabled := true;
    lbQtdTot.Enabled := true;
  end
  else
  begin
    edQtdTot.Enabled := false;
    lbQtdTot.Enabled := false;
  end;
end;
end.






