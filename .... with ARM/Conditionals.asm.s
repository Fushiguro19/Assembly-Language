;Comparators : >,<,>= etc 
;Branches : Move to diff locations/branches based on above results
;There r many more commands for branching similar to BGT like BEQ for equal condition etc...

.global _start
_start:
  MOV R0,#4
  MOV R1,#5

  CMP R0,R1     
  ;It will compute R0-R1 and based on the result it will decide the relation between the 2 which will set the CPSR flag accordinghly
  ;say if R0-R1 = neg number then CPSR flag N will be set indicating a neg ans and that R0 is smaller than R1
  BGT greater     
  ; B : Branch     GT : Greater Than      greater : A label whose code to execute if R0 > R1 
  
  MOV R2,#2     ; If R0 is not > R1 then this line will be executed and BGT will be skipped

greater:
  MOV R2, #1
