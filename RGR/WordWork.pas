UNIT WordWork;

INTERFACE
  TYPE
    StringFixLen = STRING[20];

  PROCEDURE ReadWord(VAR InFile: TEXT; VAR OutWord: STRING);
  FUNCTION RegisterChange(Ch: CHAR): CHAR;

IMPLEMENTATION

  PROCEDURE ReadWord(VAR InFile: TEXT; VAR OutWord: STRING);
  VAR
    Ch: CHAR;
    Flag: BOOLEAN;
  BEGIN
    Flag := TRUE;
    OutWord := '';
    WHILE Flag
    DO
      BEGIN
        IF NOT (EOLN(InFile) OR EOF(InFile))
        THEN 
          BEGIN
            READ(InFile, Ch);        
            IF Ch in ['�'..'�', '�', 'a'..'z', '�'..'�', '�', 'A'..'Z']
            THEN
              BEGIN
                OutWord := OutWord + RegisterChange(Ch);
              END
            ELSE
              IF OutWord <> ''
              THEN
                Flag := FALSE
          END
        ELSE
          Flag := FALSE
      END
  END;

  FUNCTION RegisterChange(Ch: CHAR): CHAR;
  BEGIN {RegisterChange}
    RegisterChange := Ch;
    IF Ch IN ['�'..'�', 'A'..'Z']
    THEN
      RegisterChange := CHR(ORD(Ch) + 32);
    IF Ch IN ['�', '�']
    THEN
      RegisterChange := '�'
END;  {RegisterChange}

BEGIN

END.