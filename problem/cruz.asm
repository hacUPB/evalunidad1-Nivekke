(INICIO)
@KBD
D=M
@84  //T
D=D-A
@VERTICAL
D; JEQ

@KBD
D=M
@67  //C
D=D-A
@BORRAR
D; JEQ

@KBD
D=M
@84  //T
D=D-A
@HORIZONTAL
D; JEQ

@INICIO
0,JMP


(VERTICAL)
@16400
D=A
@coord
M=D
@256
D=A
@cont
M=D
@32
D=A
@salto
M=D

@color
M= 1

@RECT
0,JMP

(BORRAR)
@16384
D=A
@coord
M=D
@8300
D=A
@cont
M=D
@1
D=A
@salto
M=D

@color
M = 0

@RECT
0,JMP

(HORIZONTAL)
@20480
D=A
@coord
M=D
@32
D=A
@cont
M=D
@1
D=A
@salto
M=D

@color
M= -1

@RECT
0,JMP


(RECT)
@coord
D=M
@pscreen
M=D

(PAINT)
@cont
D=M

@END
D; JEQ

@color
D=M
@pscreen
A=M
M=D

@cont
M = M-1

@salto
D=M

@pscreen
M = M+D

@PAINT
O,JMP

(END)
@INICIO
0;JMP


