ALGORITHM commun 
VAR
    set1:ARRAY_OF INTEGER[10];
    set2:ARRAY_OF INTEGER[10];
    i,j:INTEGER;
    sum:INTEGER:=0;
    
BEGIN
    FOR i FROM 0 TO set1.length-1 DO
   
    FOR j FROM 0 TO set2.length-1 DO
        IF ((set1[i]=set2[j])) THEN
            sum := sum + set1[i]*2
            END IF
   END FOR 
   END FOR
           
  Write("somme des elements communs",sum)
