PROGRAM SarahRevere(INPUT, OUTPUT);
USES DOS;

VAR
  Kolvo: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Kolvo := GetEnv('QUERY_STRING');
  IF Kolvo = 'lanterns=1'
  THEN
    WRITELN('The British went by land')
  ELSE
    IF Kolvo = 'lanterns=2'
    THEN
      WRITELN('The British went by air')
    ELSE
      WRITELN('Sarah didn''t say');
END.