.cpu cortex-m0
text: .asciz "Hello World! :)" 
.align 2
.text
.global application

application:
  PUSH {LR}
  LDR R0, =text
  BL print_asciz
  POP {PC}

  