unit uLeap;

interface

type
  TYear = class
    public
      class function IsLeap(a_nYear : Integer) : Boolean;
  end;

implementation

class function TYear.IsLeap(a_nYear : Integer) : Boolean;
var
  bIsDivisibleBy4   : Boolean;
  bIsDivisibleBy100 : Boolean;
  bIsDivisibleBy400 : Boolean;
begin
  bIsDivisibleBy4   := (a_nYear mod 4)   = 0;
  bIsDivisibleBy100 := (a_nYear mod 100) = 0;
  bIsDivisibleBy400 := (a_nYear mod 400) = 0;

  Result := bIsDivisibleBy400 or (bIsDivisibleBy4 and (not bIsDivisibleBy100));
end;

end.
