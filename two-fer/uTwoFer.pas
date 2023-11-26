unit uTwoFer;

interface

function twoFer(a_strName : String = '') : String;

implementation

function twoFer(a_strName : String = '') : String;
const
  c_strInitalString = 'One for ';
  c_strFinalString = ', one for me.';
var
  strName : String;
begin
  if (a_strName <> '')
    then strName := a_strName
    else strName := 'you';

  Result := c_strInitalString + strName + c_strFinalString;
end;

end.
