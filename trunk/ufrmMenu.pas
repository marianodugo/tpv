unit ufrmMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxRibbonForm, dxStatusBar, dxRibbonStatusBar, cxClasses, dxRibbon,
  cxControls, dxBar, StdActns, ActnList, Menus, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter,
  cxLookAndFeels, dxSkinsForm, ImgList, cxGraphics, cxLocalization, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmMenu = class(TdxRibbonForm)
    tabVentas: TdxRibbonTab;
    rbnMenu: TdxRibbon;
    rsbBarraEstado: TdxRibbonStatusBar;
    bmBarras: TdxBarManager;
    bamMenu: TdxBarApplicationMenu;
    barAppMenu: TdxBar;
    tabCompras: TdxRibbonTab;
    barArchivosVenta: TdxBar;
    barArchivosCompra: TdxBar;
    tabUtilidades: TdxRibbonTab;
    tabInformes: TdxRibbonTab;
    tabSistema: TdxRibbonTab;
    tabExtras: TdxRibbonTab;
    tabVentanas: TdxRibbonTab;
    tabAyuda: TdxRibbonTab;
    barDocumentosVenta: TdxBar;
    btnProductos: TdxBarLargeButton;
    btnComerciales: TdxBarLargeButton;
    btnClientes: TdxBarLargeButton;
    btnPresupuestos: TdxBarLargeButton;
    btnAlbaranesVenta: TdxBarLargeButton;
    btnFacturasVenta: TdxBarLargeButton;
    btnTicketsVenta: TdxBarLargeButton;
    barInformesVenta: TdxBar;
    btnListaProductos: TdxBarLargeButton;
    btnListaClientes: TdxBarLargeButton;
    btnDocumentosVenta: TdxBarSubItem;
    btnGraficoBeneficio: TdxBarLargeButton;
    btnListaPresupuestosVenta: TdxBarLargeButton;
    btnListaAlbaranesVenta: TdxBarLargeButton;
    btnListaFacturasVenta: TdxBarLargeButton;
    btnListaTicketsVenta: TdxBarLargeButton;
    btnListaComisionesComerciales: TdxBarLargeButton;
    btnListaVencimientos: TdxBarLargeButton;
    btnImpresionRecibos: TdxBarLargeButton;
    barVentanas: TdxBar;
    btnCascada: TdxBarLargeButton;
    btnHorizontal: TdxBarLargeButton;
    btnVertical: TdxBarLargeButton;
    btnCerrarTodasVentanas: TdxBarLargeButton;
    actAcciones: TActionList;
    actCascada: TWindowCascade;
    actHorizontal: TWindowTileHorizontal;
    actVertical: TWindowTileVertical;
    actCerrarTodasVentanas: TAction;
    btnSeleccionarVentana: TdxBarListItem;
    btnProveedores: TdxBarLargeButton;
    barDocumentosCompra: TdxBar;
    btnPedidosCompra: TdxBarLargeButton;
    btnAlbaranesCompra: TdxBarLargeButton;
    btnFacturasCompra: TdxBarLargeButton;
    barInformesCompra: TdxBar;
    btnListaProveedores: TdxBarLargeButton;
    btnDocumentosCompra: TdxBarSubItem;
    btnListaPedidosCompra: TdxBarLargeButton;
    btnListaAlbaranesCompra: TdxBarLargeButton;
    btnListaFacturasCompra: TdxBarLargeButton;
    sknOffice: TdxSkinController;
    imgImagenes: TcxImageList;
    actSalir: TAction;
    barOperaciones: TdxBar;
    btnActualizarPreciosProductos: TdxBarLargeButton;
    btnTraspasarDocumentosCompraVenta: TdxBarSubItem;
    btnInicializarStockCero: TdxBarLargeButton;
    barImprimir: TdxBar;
    btnImpresionDocumentos: TdxBarLargeButton;
    btnTraspasarPedidosCompra: TdxBarLargeButton;
    btnTraspasarAlbaranesCompra: TdxBarLargeButton;
    btnTraspasarAlbaranesVenta: TdxBarLargeButton;
    btnTraspasarTicketsVenta: TdxBarLargeButton;
    btnTraspasarPresupuestosVenta: TdxBarLargeButton;
    barEstadisticasGraficos: TdxBar;
    btnEstadisticasProductos: TdxBarLargeButton;
    btnEstadisticasClientes: TdxBarLargeButton;
    barListadosBasicos: TdxBar;
    barDocumentos: TdxBar;
    barAdministracion: TdxBar;
    btnConfiguracionGeneral: TdxBarLargeButton;
    barArchivosSistema: TdxBar;
    btnFacturasAutomaticas: TdxBarLargeButton;
    btnPaises: TdxBarLargeButton;
    btnFormasPago: TdxBarLargeButton;
    btnMantenimientoFamilias: TdxBarLargeButton;
    barAdministrarBaseDatos: TdxBar;
    btnCompactarRepararBaseDatos: TdxBarLargeButton;
    btnCopiaSeguridad: TdxBarLargeButton;
    btnRestaurarCopiaSeguridad: TdxBarLargeButton;
    lclIdiomas: TcxLocalizer;
    barAplicaciones: TdxBar;
    btnCalculadora: TdxBarLargeButton;
    btnCalendario: TdxBarLargeButton;
    btnExploradorInternet: TdxBarLargeButton;
    btnBlocNotas: TdxBarLargeButton;
    btnEnviarCorreoElectronico: TdxBarLargeButton;
    barAyuda: TdxBar;
    btnAyuda: TdxBarLargeButton;
    barTPV: TdxBar;
    btnAcercaDe: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    actConfiguracion: TAction;
    actAcercaDe: TAction;
    actAyuda: TAction;
    procedure actCerrarTodasVentanasExecute(Sender: TObject);
    procedure actSalirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

procedure TfrmMenu.actCerrarTodasVentanasExecute(Sender: TObject);
var
  I: Integer;
begin
  { Must be done backwards through the MDIChildren array }
  with Self do
    for I := MDIChildCount - 1 downto 0 do
      MDIChildren[I].Close;
end;

procedure TfrmMenu.actSalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
  lclIdiomas.FileName:= ExtractFilePath(Application.ExeName) + 'devexpress.ini';
  lclIdiomas.Active:= true;
  lclIdiomas.Locale:= 1034;
end;

end.
