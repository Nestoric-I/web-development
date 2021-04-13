PROGRAM Parameters(INPUT, OUTPUT);
USES DOS;

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR

  QS: STRING;
  SeB, SeE: INTEGER;

BEGIN

  QS := GetEnv('QUERY_STRING');
  SeB := POS(Key, QS);
  IF SeB <> 0
  THEN
    BEGIN
      DELETE(QS, 1, SeB + LENGTH(Key));
      SeE := POS('&', QS);
      IF SeE <> 0
      THEN
        DELETE(QS, SeE, LENGTH(QS) - SeE + 1);
      END
    ELSE
      QS := 'No Parameters';
  GetQueryStringParameter := QS

END;

BEGIN

  WRITELN('Content-type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))

END.
