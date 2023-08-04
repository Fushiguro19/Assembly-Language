; Logical operations along with Logical SHIFT and ROTATION
; LSL : Logical Shift to Left : 00001010 LSL=> 00010100 ..... each bit moves one place to the left ....this is basically MUL by 2
; ....since 1010 was 10 and 10100 is 20 ... we move to the one power higher of 2 ......everything is just opp for LSR
; ..... 1010 LDR=> 101 ... i.e. we reduce one power of 2 ...  10 becomes 5
; In ROR or Rotation on Right, the least sig bit doesn't disappear but moves to the posi of MSB i.e. 00000101 => 10000010

.global _start
_start:
  MOV R0, #0xff
  MOV R1, #16
  AND R2,R0,R1      ; R0 AND R1 = 16 coz ff is all 1's and when ANDed with 16 it replicates 16
  ORR R3,R0,R1      ;OR ... gives ff coz wherever there's a 1 , OR will return a 1
  EOR R4,R0,R1      ;EXOR 
  MVN R0,R0         ; Moves the NEGATION of the source to the destination, here both R0
