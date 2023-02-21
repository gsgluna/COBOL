      *****************************************************************
      * Program name:    CBL0002
      * Original author: SAMUEL LUNA
      *
      *
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  CBL0002.
      *****************************************************************
       ENVIRONMENT DIVISION.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS-N01             PIC 9(02) VALUE ZEROS.
       77 WS-N02             PIC 9(02) VALUE ZEROS.
       77 WS-SOMA            PIC Z(03) VALUE ZEROS.
       77 WS-SUBTRACAO       PIC S9(02) VALUE ZEROS.
       77 WS-MULTIPLICACAO   PIC 9(04) VALUE ZEROS.
       77 WS-DIVISAO         PIC 9(02)V99 VALUE ZEROS.

       77 WS-NOMESAM         PIC X(50) VALUE SPACES.
       77 WS-NOMESAMCAMPO-1  PIC X(50) VALUE SPACES.
       77 WS-NOMESAMCAMPO-2  PIC X(50) VALUE SPACES.

       77 WS-DATA            PIC X(10) VALUE SPACES.
      ******************************************************************
       PROCEDURE DIVISION.

               DISPLAY "OLÁ, MUNDO!".

               DISPLAY "Digite o primeiro número ...".

               ACCEPT WS-N01 FROM CONSOLE.

               DISPLAY "Digite o segundo número ...".

               ACCEPT WS-N02 FROM CONSOLE.

               DISPLAY "NÚMERO 1 = " WS-N01.
               DISPLAY "NÚMERO 2 = " WS-N02.

               COMPUTE WS-SOMA = WS-N01 + WS-N02.
               COMPUTE WS-SUBTRACAO  = WS-N01 - WS-N02.
               COMPUTE WS-MULTIPLICACAO  = WS-N01 * WS-N02.
               COMPUTE WS-DIVISAO  = WS-N01 / WS-N02.


           PERFORM MULTIPLICACAO THRU FIM-MULTIPLICACAO.
           PERFORM SUBTRACAO THRU FIM-SUBTRACAO.
           PERFORM SOMA THRU FIM-SOMA.
           PERFORM DIVISAO THRU FIM-DIVISAO.


           SOMA.

               DISPLAY "SOMA = " WS-SOMA.

           FIM-SOMA.

           SUBTRACAO.

               DISPLAY "SUBTRAÇÃO = " WS-SUBTRACAO.

           FIM-SUBTRACAO.

           MULTIPLICACAO.

               DISPLAY "MULTIPLICACAO = " WS-MULTIPLICACAO.

           FIM-MULTIPLICACAO.


           DIVISAO.

               DISPLAY "DIVISÃO = " WS-DIVISAO.

           FIM-DIVISAO.


               ACCEPT WS-DATA FROM DAY YYYYDDD
               DISPLAY WS-DATA

               GOBACK.
