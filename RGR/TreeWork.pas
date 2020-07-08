UNIT TreeWork;

INTERFACE

  USES
    WordWork;

  TYPE
    Tree = ^TreeUnit;
    TreeUnit = RECORD
                Word: StringFixLen;
                Count: INTEGER;
                LeftWord: Tree;
                RightWord: Tree;
              END;

  PROCEDURE PrintTree(VAR OutFile: TEXT; VAR Root: Tree);
  PROCEDURE AddTree(VAR Root: Tree; CurWord: StringFixLen);
  PROCEDURE ClearTree(VAR Root: Tree);

IMPLEMENTATION

  PROCEDURE AddTree(VAR Root: Tree; CurWord: StringFixLen);
  BEGIN
    IF Root = NIL
    THEN
      BEGIN
        NEW(Root);
        Root^.Word := CurWord;
        Root^.Count := 1;
        Root^.LeftWord := NIL;
        Root^.RightWord := NIL;
      END
    ELSE
      IF Root^.Word = CurWord
      THEN
        Root^.Count := Root^.Count + 1
      ELSE
        IF CurWord > Root^.Word
        THEN
          AddTree(Root^.RightWord, CurWord)
        ELSE
          AddTree(Root^.LeftWord, CurWord);
  END;
  
  PROCEDURE PrintTree(VAR OutFile: TEXT; VAR Root: Tree);
  BEGIN
    IF Root <> NIL
    THEN
      BEGIN
        PrintTree(OutFile, Root^.LeftWord);
        WRITELN(Root^.Word, ' ', Root^.Count);
        PrintTree(OutFile, Root^.RightWord)
      END
  END;

  PROCEDURE ClearTree(VAR Root: Tree);
  BEGIN
    IF Root <> NIL
    THEN
      BEGIN
        ClearTree(Root^.LeftWord);
        ClearTree(Root^.RightWord);
        DISPOSE(Root)
      END
  END;

BEGIN

END.