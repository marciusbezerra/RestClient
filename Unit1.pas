unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.Mask,
  Vcl.DBCtrls, Vcl.OleCtrls, SHDocVw;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    FDMemTable1albumId: TWideStringField;
    FDMemTable1id: TWideStringField;
    FDMemTable1title: TWideStringField;
    FDMemTable1url: TWideStringField;
    FDMemTable1thumbnailUrl: TWideStringField;
    DBEdit1: TDBEdit;
    WebBrowser1: TWebBrowser;
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  RESTRequest1.Execute;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  WebBrowser1.Navigate(FDMemTable1thumbnailUrl.AsString);
end;

end.
