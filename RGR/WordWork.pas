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
            IF Ch in ['à'..'ÿ', '¸', 'a'..'z', 'À'..'ß', '¨', 'A'..'Z']
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
      'À': RegisterChange := 'à';
      'Á': RegisterChange := 'á';
      'Â': RegisterChange := 'â';
      'Ã': RegisterChange := 'ã';
      'Ä': RegisterChange := 'ä';
      'Å': RegisterChange := 'å';
      'Æ': RegisterChange := 'æ';
      'Ç': RegisterChange := 'ç';
      'È': RegisterChange := 'è';
      'É': RegisterChange := 'é';
      'Ê': RegisterChange := 'ê';
      'Ë': RegisterChange := 'ë';
      'Ì': RegisterChange := 'ì';
      'Í': RegisterChange := 'í';
      'Î': RegisterChange := 'î';
      'Ï': RegisterChange := 'ï';
      'Ð': RegisterChange := 'ð';
      'Ñ': RegisterChange := 'ñ';
      'Ò': RegisterChange := 'ò';
      'Ó': RegisterChange := 'ó';
      'Ô': RegisterChange := 'ô';
      'Õ': RegisterChange := 'õ';
      'Ö': RegisterChange := 'ö';
      '×': RegisterChange := '÷';
      'Ø': RegisterChange := 'ø';
      'Ù': RegisterChange := 'ù';
      'Ú': RegisterChange := 'ú';
      'Û': RegisterChange := 'û';
      'Ü': RegisterChange := 'ü';
      'Ý': RegisterChange := 'ý';
      'Þ': RegisterChange := 'þ';
      'ß': RegisterChange := 'ÿ'
    END;
    IF ((Ch = '¨') OR (Ch = '¸'))
    THEN
      RegisterChange := 'å';  
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