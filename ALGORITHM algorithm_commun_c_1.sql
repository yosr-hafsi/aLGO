ALGORITHM algorithm_difference
VAR
    set1:ARRAY_OF INTEGER[10];
     set2:ARRAY_OF INTEGER[10];
     hash:HASH_TABLE<INTEGER,INTEGER>;
     i,j:INTEGER;
     sum:INTEGER:=0;
BEGIN
    FOR i FROM 0 TO set1.length-1 DO
        hash.insert(set1[i],1)
    END_FOR

    FOR j FROM 0 TO set2.length-1   DO
        IF(hash.lookup(set2[j])=TRUE) THEN
        hash.insert(set2[j],2)
        ELSE 
        hash.insert(set2[j],1)
    END_FOR
FOR i FROM 0 TO set1.length-1 DO
    IF (hash.get(set1[i])=1) THEN
        sum:=sum+set1[i]
    END_IF
END_FOR
FOR i FROM 0 TO set2.length-1 DO
    IF (hash.get(set2[i])=1) THEN
        sum:=sum+set2[i]
    END_IF
END_FOR
    Write("somme des elements differents",sum)
END