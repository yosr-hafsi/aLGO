ALGORITHM differents
VAR
    set1:ARRAY_OF INTEGER[10];
    set2:ARRAY_OF INTEGER[10];
    i,j:INTEGER;
    sum:INTEGER:=0;
    Found:BOOLEAN;
BEGIN
    FOR i FROM 0 TO set1.length-1 DO
      found :=false;
          FOR j FROM 0 TO set2.length-1 DO
                IF (set1[i]=set2[j]) THEN
                 found= true
                  break 
            END IF
               if (found == false ) THEN
               sum := sum + set1[i]
  FOR j FROM 0 TO set2.length-1 DO
      found :=false;
          FOR i FROM 0 TO set1.length-1 DO
                IF (set2[j]=set1[i]) THEN
                 found= true
                  break 
            END IF
               if (found == false ) THEN
               sum := sum + set2[i]
            END IF

  
    
 Write("somme des elements differents",sum)      
