Program MULTIPLOS;     				 
    VAR P1, P2, N, R, X, NUM:INTEGER;

  	FUNCTION INTEIRO(NN:REAL):INTEGER; // VERIFICA VALOR INTEIRO
    	VAR MULT, CONTI:INTEGER;
    			DIV1,CONTR:REAL;
    		BEGIN
					DIV1 := NN; // VALORES NEGATIVOS VIRAM POSITIVOS
          MULT := 1 ; 
          IF(DIV1 < 0) THEN 
               MULT :=  -1; 
          DIV1 := DIV1 * MULT; 
          
          // CONTADOR INTEIRO(CONTI) E REAL (CONTR)
	  CONTI := 0; 
          CONTR := 0; 
          REPEAT 
              CONTR := CONTR + 1 ; 
              CONTI := CONTI+1; 
          UNTIL (CONTR  > DIV1); 
          
          INTEIRO:=(CONTI-1)*MULT;  // INTEIRO COM SINAL  
        END;
        
		FUNCTION RESTO(A,B:INTEGER):INTEGER; // ENCONTRA O RESTO
			VAR CONTI:INTEGER;
				BEGIN      
	  CONTI := INTEIRO(A/B);
          RESTO:= A-B*CONTI; // RESTO DA DIVISÃO 
				END;
		
		PROCEDURE SAI;
			BEGIN
			  WRITELN ('MULTIPLOS DE ', N:5, ' = ',  P1:5); 
   			WRITELN ('NÃO MULTIPLOS DE ' , N:5,  ' = ',  P2:5); 
			END;
		
		PROCEDURE TESTA(RES:INTEGER; VAR MU,NMU:INTEGER);
				BEGIN
          IF (RES = 0) THEN
                MU := MU + 1
          ELSE 
              NMU := NMU + 1;
				END;

    BEGIN {1}
	 // MULTIPLOS DE 2
	  P1 := 0;
	  P2 := 0;
	  N := 2;
	  
	  FOR X := 1 TO 10 DO
	  	BEGIN
	  		WRITE('DIGITE O',X:3,'. =>' ); 
	  		READLN(NUM);
	  		R := RESTO(NUM,N);
	  		TESTA(R,P1,P2)
	  	END;
	  SAI;
	  
	  P1 := 0;
	  P2 := 0;
	  N := 3;
	 
	 // MULTIPLOS DE 3
	 FOR X := 1 TO 10 DO
	  	BEGIN
	  		WRITE('DIGITE O',X:3,'. =>' ); 
	  		READLN(NUM);
	  		R := RESTO(NUM,N);
	  		TESTA(R,P1,P2)
	  	END;
	  SAI;

	 WRITE('ENTER PARA ENCERRAR');
	 READLN;
END. {1}
