.cpu cortex-m0
.align 2
.text
.global convert

convert:
  PUSH { lr }
  CMP R0, #64
  BLE skipIncr
  CMP R0, #90
  BGT skipIncr
  B incr

skipIncr:
  CMP R0, #96
  BLE done
  CMP R0, #122
  BGT done
  B decr

incr:
  ADD R0, #32
  B done

decr:
  SUB R0, #32

done:
  POP { pc }