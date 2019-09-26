.cpu cortex-m0
text: .asciz "Hello world, the ANSWER is 42! @[]`{}~\n" 
.align 2
.text
.global application

application:
  PUSH {R4, LR}
  LDR R0, =text
  BL print_asciz
  POP {R4, PC}

  