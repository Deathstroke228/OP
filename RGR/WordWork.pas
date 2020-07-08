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
    CASE Ch OF
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�';
      '�': RegisterChange := '�'
    END;
    IF ((Ch = '�') OR (Ch = '�'))
    THEN
      RegisterChange := '�';  
    CASE Ch OF
      'A': RegisterChange := 'a';
      'B': RegisterChange := 'b';
      'C': RegisterChange := 'c';
      'D': RegisterChange := 'd';
      'E': RegisterChange := 'e';
      'F': RegisterChange := 'f';
      'G': RegisterChange := 'g';
      'H': RegisterChange := 'h';
      'I': RegisterChange := 'i';
      'J': RegisterChange := 'j';
      'K': RegisterChange := 'k';
      'L': RegisterChange := 'l';
      'M': RegisterChange := 'm';
      'N': RegisterChange := 'n';
      'O': RegisterChange := 'o';
      'P': RegisterChange := 'p';
      'Q': RegisterChange := 'q';
      'R': RegisterChange := 'r';
      'S': RegisterChange := 's';
      'T': RegisterChange := 't';
      'U': RegisterChange := 'u';
      'V': RegisterChange := 'v';
      'W': RegisterChange := 'w';
      'X': RegisterChange := 'x';
      'Y': RegisterChange := 'y';
      'Z': RegisterChange := 'z'
    END
END;  {RegisterChange}

BEGIN

END.