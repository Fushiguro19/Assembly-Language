;_start is a "label" :  like functions in high-level prog lang ........ When u go to a label, code under it is executed
; .global makes the _start label accessible to entities outside our program
; In this program we will place some numbers in register r0 and then move to r7 -> place some number there and call system interrupt
; ... to interrupt the OS and as it to do something for us... the OS then reads the number in r7 and looks for a task corresponding to that number
; ... and performs it for us
; Here we will place number 1 in r7 which tells the OS to exit/end the program
; MOV Destination,Source : Move data from Source to Destination ... here our source is a constant so we use # and destination is register r0
; SWI : SoftWare Interrupt ..... SWI 0 means an interrupt to make the OS perform the exit program task

.global _start
_start: 
  MOV R0,#30

  MOV R7,#1
  SWI 0
