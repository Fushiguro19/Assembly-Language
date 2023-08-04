# the SUB gives a neg value and we know it from the N flag set in the "NZCVI" flags section of the CPSR register. To set the flag in 
# it, we need to add an "S" after SUB instruction. "S" is also added when u don't knw what values r u gng to SUB.
# The "C" flag is set in CPSR when there is an overflow : resultant of an ADD operation is more than 32 bits (there is a carry over)
# To include the carry : ADC R2,R0,R1 // R2 = R0+R1+carry ... carry will be 1 if flag is set to 1

.global _stack
_stack:
  MOV R0, #5
  MOV R1, #7
  ADD R2,R0,R1             @ R2 = R0+R1
  SUBS R3,R0,R1             @ R3 = R1 - R0
  MUL R4,R0,R1             @ R4 = R0*R1
