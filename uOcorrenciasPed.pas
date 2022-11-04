unit uOcorrenciasPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids;

type
  TfmOcorrencias = class(TForm)
    dsOcorrencias: TDataSource;
    DBGrid1: TDBGrid;
    sqlOcorrencias: TQuery;
    sqlOcorrenciasCODEMP: TIntegerField;
    sqlOcorrenciasDTERES: TDateTimeField;
    sqlOcorrenciasNUMRES: TIntegerField;
    sqlOcorrenciasTIPOCO: TStringField;
    sqlOcorrenciasSEQOCO: TIntegerField;
    sqlOcorrenciasNOMOCO: TStringField;
    sqlOcorrenciasNRORE2: TIntegerField;
    sqlOcorrenciasDTEOPE: TDateTimeField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mostrarOcorrencia(numres: Integer; tabela: String);
  end;

var
  fmOcorrencias: TfmOcorrencias;

implementation

{$R *.DFM}

procedure TfmOcorrencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #27) then
      Self.Close;
end;

procedure TfmOcorrencias.mostrarOcorrencia(numres: Integer; tabela: String);
begin
   sqlOcorrencias.Active := False;

   sqlOcorrencias.sql.Text := 'select * from ' + tabela + ' where NUMRES = :NUMRES';

   sqlOcorrencias.Params.ParamByName('NUMRES').AsInteger := numres;
   sqlOcorrencias.Active := True;
end;

end.
