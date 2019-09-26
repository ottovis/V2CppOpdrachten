.cpu cortex-m0
.align 2
.text
.global print_asciz

print_asciz:
  PUSH { R4 , lr }
  MOV R4, R0

loop:
  LDRB R0, [R4]
  ADD R0, #0
  BEQ done
  BL convert
  BL uart_put_char
  ADD R4, #1
  B loop

done:
  POP { R4 , pc }