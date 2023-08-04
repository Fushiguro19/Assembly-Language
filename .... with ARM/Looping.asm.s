; "=list" stores the location of the first valus of the list into R0
;program to add numbers of a list


.global _start
.equ endlist, 0xaaaaaaaa      ;.equ : directive to define constants ..... endlist : name of the constant 
                              ;0xaaaaaaaa : All the empty slots r represented by 0xaaaaaaaa, so when the list ends, it reaches an empty slot 
                              ;and thats what we r telling the system here
_start:
  LDR R0,=list
  LDR R3, =endlist
  LDR R1,[R0]            ;stores the value at location R0 into R1
  ADD R2,R2,R1           

loop:
  LDR R1, [R0,#4]!      ;[R0,#4]! : First increment the location at R0 by 4(hex locations) and then load its value
  CMP R1,R3
  BEQ exit              ;If R1=R3 in the previous comparison then exit as we hv reached an empty slot = end of the list
  ADD R2,R2,R1        ;If they r not equal then keep adding 
  BAL loop            ;BAL : Branch ALways

exit:

.data
list:
  .word 1,2,3,4,5,6,7,8,9,10
