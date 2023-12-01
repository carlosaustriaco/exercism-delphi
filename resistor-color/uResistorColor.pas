unit uResistorColor;

interface

type
  TColorsCode = (black  = 0,
                 brown  = 1,
                 red    = 2,
                 orange = 3,
                 yellow = 4,
                 green  = 5,
                 blue   = 6,
                 violet = 7,
                 grey   = 8,
                 white  = 9);

  TResistor = class
    public
      class function colorCode(a_strColor : string) : Integer;
      class function colors : TArray<string>;
  end;

implementation

uses
  System.Rtti;

class function TResistor.colorCode(a_strColor : string) : Integer;
var
  ccCode : TColorsCode;
begin
  ccCode := TRttiEnumerationType.GetValue<TColorsCode>(a_strColor);
  Result := Integer(ccCode);
end;

class function TResistor.colors : TArray<string>;
var
  ccCode : TColorsCode;
  nIndex : Integer;
begin
  nIndex := 0;
  SetLength(Result, Integer(High(TColorsCode)) - Integer(Low(TColorsCode)) + 1);

  for ccCode := Low(TColorsCode) to High(TColorsCode) do
    begin
      Result[nIndex] := TRttiEnumerationType.GetName(ccCode);
      Inc(nIndex);
    end;
end;

end.
