UNIT Statistic;

INTERFACE

  USES
    TreeWork, WordWork;

  PROCEDURE GetStatsToOutFile(VAR InFile, OutFile: TEXT);

IMPLEMENTATION

  PROCEDURE GetStatsToOutFile(VAR InFile, OutFile: TEXT);
  VAR
    TempWord: StringFixLen;
    RootTree: Tree;
  BEGIN
    RootTree := NIL;
    WHILE NOT EOF(InFile)
    DO
      BEGIN
        WHILE NOT EOLN(InFile)
        DO
          BEGIN
            ReadWord(InFile, TempWord);
            IF TempWord <> ''
            THEN
              AddTree(RootTree, TempWord);
          END;
        READLN(InFile);
      END;
    PrintTree(OutFile, RootTree);
    ClearTree(RootTree);
  END;
BEGIN

END.