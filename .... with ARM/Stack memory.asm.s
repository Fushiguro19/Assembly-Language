; loading data onto a stack
; .data : Tells us that we will be defining variables/constants/data to be loaded onto a stack
; list : is kinda like the variable name and ".word" is its data type mentioning that it would be a list of words where word = 32-bit sized data
; LDR : Load Data into Register from stack .... "=list" will search for a variable named list in the data section and place the location of its first value in R0
;.... This is known as Direct Addressing
;Register Indirect Addressing : Finding a value at a register location
; [R0] : Value at the register R0
; LDR R2, [R0, #4] : Takes the location of R0, adds 4 to it for the next memory location, picks up the value stored there and loads that value into R2
; Pre increment : [R0,#4]! ................ Post Increment : [R0], #4

.global _start
_start:
  LDR R0,=list
  LDR R1, [R0]
  LDR R2, [R0, #4]

.data
list:
  .word 4,5,3,-2,0
