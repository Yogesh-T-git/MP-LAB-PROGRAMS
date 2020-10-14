 .MODEL SMALL
 .DATA
      NUM1 DW 4567
      NUM2 DB 37
      QUOTIENT DB ?
      REMAINDER DB ?

 .CODE
      MOV AX, @DATA
      MOV DS, AX

      MOV AX, NUM1
      DIV NUM2
      MOV QUOTIENT, AL
      MOV REMAINDER, AH

      MOV AH, 4CH
      INT 21H
      END

