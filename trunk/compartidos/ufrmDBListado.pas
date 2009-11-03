unit ufrmDBListado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxClasses, ExtCtrls, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinOffice2007Blue, ImgList, cxGraphics, DBActns, ActnList, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmDBListado = class(TForm)
    Panel1: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    bmBarras: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnCrear: TdxBarLargeButton;
    btnVisualizar: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    imgImagenes: TcxImageList;
    actAcciones: TActionList;
    actPrimero: TDataSetFirst;
    actAnterior: TDataSetPrior;
    actSiguiente: TDataSetNext;
    actUltimo: TDataSetLast;
    actCrear: TDataSetInsert;
    actEliminar: TDataSetDelete;
    actModificar: TDataSetEdit;
    actRefrescar: TDataSetRefresh;
    actVisualizar: TAction;
    btnEliminar: TdxBarLargeButton;
    actCopiar: TAction;
    actBuscar: TAction;
    actSeleccionar: TAction;
    btnCopiar: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnRefrescar: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnPrimero: TdxBarLargeButton;
    btnUltimo: TdxBarLargeButton;
    btnSiguiente: TdxBarLargeButton;
    btnAnterior: TdxBarLargeButton;
    tvListado: TcxGridDBTableView;
    lvlListado: TcxGridLevel;
    grdListado: TcxGrid;
    procedure actVisualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBListado: TfrmDBListado;

implementation

{$R *.dfm}

procedure TfrmDBListado.actVisualizarExecute(Sender: TObject);
begin
//
end;

end.
