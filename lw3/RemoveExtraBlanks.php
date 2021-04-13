PROGRAM RemoveExtraBlanks(INPUT, OUTPUT);
USES DOS;

VAR
  QS: STRING;
  
BEGIN
  QS := GetEnv('QUERY_STRING');
  Header("Content-Type: text/plain");
  WHILE NOT EOLN(QS)
  DO
    
END;
