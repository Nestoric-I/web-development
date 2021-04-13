PROGRAM Greeting(INPUT, OUTPUT);
USES DOS;

VAR
  Name, QS: STRING;
  SeB, SeE: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QS := GetEnv('QUERY_STRING');
  SeB := POS('name=', QS);
  SeE := POS('&', QS);
  IF (QS = '') OR (SeB = 0)
  THEN
    WRITELN('Hello, Anonymoyus')
  ELSE
    BEGIN
      IF SeE = 0
      THEN
        Name := COPY(QS, 6, LENGTH(QS)-5)
      ELSE
        BEGIN
          DELETE(QS, 1, 5);
          SeE := POS('&', QS);
          Name := COPY(QS, 1, SeE-1)
        END;
      WRITELN('Hello, dear ', Name);
    END
END.
