object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 526
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    810
    526)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 184
    Width = 785
    Height = 334
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 607
    Top = 153
    Width = 186
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Carregar!'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 352
    Top = 72
    Width = 433
    Height = 33
    Anchors = [akTop, akRight]
    CharCase = ecUpperCase
    DataField = 'title'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 8
    Width = 338
    Height = 170
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    ControlData = {
      4C000000EF220000921100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://jsonplaceholder.typicode.com/photos'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 96
    Top = 112
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 112
    Top = 40
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 224
    Top = 48
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 312
    Top = 32
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'albumId'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'title'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'url'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'thumbnailUrl'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    DetailFields = 'url'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 480
    Top = 72
    object FDMemTable1albumId: TWideStringField
      DisplayLabel = 'Id do Album'
      DisplayWidth = 10
      FieldName = 'albumId'
      Size = 255
    end
    object FDMemTable1id: TWideStringField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'id'
      Size = 255
    end
    object FDMemTable1title: TWideStringField
      DisplayLabel = 'Titulo'
      DisplayWidth = 60
      FieldName = 'title'
      Size = 255
    end
    object FDMemTable1url: TWideStringField
      DisplayLabel = 'Url'
      DisplayWidth = 60
      FieldName = 'url'
      Size = 255
    end
    object FDMemTable1thumbnailUrl: TWideStringField
      DisplayLabel = 'Thumbnail Url'
      DisplayWidth = 60
      FieldName = 'thumbnailUrl'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    OnDataChange = DataSource1DataChange
    Left = 440
    Top = 136
  end
end
