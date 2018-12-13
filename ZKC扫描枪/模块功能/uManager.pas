//convert pas to utf8 by ¥

unit uManager;

interface

uses
  Classes,
  SysUtils,
  IniFiles,
  Types,
  UITypes,

  Variants,
  IdURI,
  uFuncCommon,
  uFileCommon,
  uBaseList,

  XSuperObject,
  XSuperJson
  {$IFDEF ANDROID}
  ,Androidapi.JNI.GraphicsContentViewText
  {$ENDIF}
  ;


type
  TBaseJsonObjectClass=class of TBaseJsonObject;
  TBaseJsonObject=class(TPersistent)
  public
    constructor Create;virtual;
    function ParseFromJson(AJson: ISuperObject): Boolean;virtual;abstract;
  end;
  TBaseJsonObjectList=class(TBaseList)
  public
    procedure Assign(Source: TBaseJsonObjectList;JsonObjectClass:TBaseJsonObjectClass);
  public
    function ParseFromJsonArray(JsonObjectClass:TBaseJsonObjectClass;JsonArray:ISuperArray):Boolean;virtual;
  end;

  {$IFDEF ANDROID}

  TGoodsInfoList=class;

  //语言
  TLanguage=class(TBaseJsonObject)
  public
    language:String;
    code:String;
    description:String;
  public
    constructor Create;override;
    destructor Destroy;override;
  public
    function ParseFromJson(AJson: ISuperObject): Boolean;override;
  end;

  TLanguageList=class(TBaseJsonObjectList)
  private
    function GetItem(Index: Integer): TLanguage;
  public
    property Items[Index:Integer]:TLanguage read GetItem;default;
  end;

  //超市购物清单
  TSupermakerBill=class(TBaseJsonObject)
  public
    supermaker_name:String;
	  serial_number:String;
    purchase_time:String;
    total_amount:String;
    total_cash:String;
    favorable_cash:String;
    receipt_cash:String;
    recived_cash:String;
    odd_change:String;
    vip_number:String;
    add_integral:String;
    current_integral:String;
    supermaker_address:String;
    supermaker_call:String;
    start_bitmap:JBitmap;
    end_bitmap:JBitmap;

    GoodsInfolList:TGoodsInfoList;
  public
    constructor Create;override;
    destructor Destroy;override;
  end;

  TSupermakerBillList=class(TBaseJsonObjectList)
  private
    function GetItem(Index: Integer): TSupermakerBill;
  public
    property Items[Index:Integer]:TSupermakerBill read GetItem;default;
  end;


  //商品清单
  TGoodsInfo=class(TBaseJsonObject)
  public
    goods_name:String;
    goods_unit_price:String;
    goods_amount:String;
    goods_price:String;
  end;

  TGoodsInfoList=class(TBaseJsonObjectList)
  private
    function GetItem(Index: Integer): TGoodsInfo;
  public
    property Items[Index:Integer]:TGoodsInfo read GetItem;default;
  end;
  {$ENDIF}

implementation

procedure TBaseJsonObjectList.Assign(Source: TBaseJsonObjectList;
  JsonObjectClass: TBaseJsonObjectClass);
var
  I:Integer;
  ABaseJsonObject:TBaseJsonObject;
begin

  Self.Clear(True);
  for I := 0 to Source.Count - 1 do
  begin
    ABaseJsonObject:=JsonObjectClass.Create();
    ABaseJsonObject.Assign(TPersistent(Source.Items[I]));
    Self.Add(ABaseJsonObject);
  end;

end;

function TBaseJsonObjectList.ParseFromJsonArray(JsonObjectClass:TBaseJsonObjectClass;JsonArray: ISuperArray): Boolean;
var
  I:Integer;
  ABaseJsonObject:TBaseJsonObject;
begin
  Result:=False;

  for I := 0 to JsonArray.Length - 1 do
  begin
    ABaseJsonObject:=JsonObjectClass.Create();
    ABaseJsonObject.ParseFromJson(JsonArray.O[I]);
    Self.Add(ABaseJsonObject);
  end;

  Result:=True;
end;

{ TBaseJsonObject }

constructor TBaseJsonObject.Create;
begin

end;

{$IFDEF ANDROID}
constructor TLanguage.Create;
begin
  inherited;
end;

destructor TLanguage.Destroy;
begin
  inherited;
end;

function TLanguage.ParseFromJson(AJson: ISuperObject): Boolean;
begin
  language:=AJson.S['language'];
  code:=AJson.S['code'];
  description:=AJson.S['description']
end;

{ TLanguageList }

function TLanguageList.GetItem(Index: Integer): TLanguage;
begin
  Result:=TLanguage(Inherited Items[Index]);
end;

{ TGoodsInfoList }

function TGoodsInfoList.GetItem(Index: Integer): TGoodsInfo;
begin
  Result:=TGoodsInfo(Inherited Items[Index]);
end;

{ TSupermakerBill }

constructor TSupermakerBill.Create;
begin
  inherited;
  Self.GoodsInfolList:=TGoodsInfoList.Create;
end;

destructor TSupermakerBill.Destroy;
begin
  FreeAndNil(GoodsInfolList);
  inherited;
end;

{ TSupermakerBillList }

function TSupermakerBillList.GetItem(Index: Integer): TSupermakerBill;
begin
  Result:=TSupermakerBill(Inherited Items[Index]);
end;
{$ENDIF}
end.
