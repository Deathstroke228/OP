PROGRAM TreeSort(INPUT, OUTPUT);
TYPE 
  Tree = ^NodeType;
  NodeType = RECORD
               Ch: CHAR;
               LLink, RLink: Tree
             END;
VAR
  Root: Tree;
  Ch: CHAR;
PROCEDURE Insert(VAR Ptr: Tree; Data: CHAR);
BEGIN {Insert}
  IF Ptr = NIL
  THEN
    BEGIN {‘®§¤ ¥¬ «¨áâ á® §­ ç¥­¨¥¬ Data}
      NEW(Ptr);
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL;
      Ptr^.Ch := Data
    END
  ELSE
    BEGIN
      IF Ptr^.Ch > Data
      THEN
        Insert(Ptr^.LLink, Data)
      ELSE
        Insert(Ptr^.RLink, Data)
    END
END;  {Insert}
PROCEDURE PrintTree(Ptr: Tree);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  {¥ç â ¥â ¯®¤¤¥à¥¢® á«¥¢ , ¢¥àè¨­ã, ¯®¤¤¥à¥¢® á¯à ¢ }
    BEGIN
      PrintTree(Ptr^.LLink);
      WRITE(Ptr^.Ch);
      PrintTree(Ptr^.RLink)
    END
END;  {PrintTree}
BEGIN {TreeSort}
  Root := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Insert(Root, Ch)
    END;
  PrintTree(Root)
END.  {TreeSort}
