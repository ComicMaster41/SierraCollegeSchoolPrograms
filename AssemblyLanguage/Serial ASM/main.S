/** 
 *  This file contains the setup and loop functions.
 */
 #include <avr/io.h>

.global delay

.section .text ; <-- THIS LINE HAD AN ERROR -- I noticed it was missing the period before the word text

msg:      .asciz "Hello World \n" ; include the space before the \n to avoid the compiler error

.global setup
.global loop

/**
 * setup function
 */
setup:
    call init_serial
    call init_pwm11

    ldi   zh, hi8(msg)
    ldi   zl, lo8(msg)

.output:
    lpm   r24, z+
    cpi   r24, 0x00
    breq  .exit_setup
    call  tx
    rjmp  .output

.exit_setup:
    ret

/**
 * loop function
 */
loop:
    call  rx_check
    cpi   r24, 0x00

    breq  .exit_loop

    call  rx

    ; ASCII values 0x30 - 0x39 represent the numbers 0-9
    ; subtract r24 - 0x30

    subi r24, 0x30
    cpi  r24, 0x00

    ; if result is less than exit loop

    brlt  .exit_loop

    ; compare r24 with 0x09

    cpi  r24, 0x0A

    ; if result is greater than exit loop

    brge  .exit_loop

    ; multiply r24 * 0.25 (use the AVR mul instruction)

    ldi  r25, 25
    mul  r25, r24

    ; results end up in r0 (low) r1 (high)
    ; move r0 to r24
    
    mov  r24, r0
    call set_pwm11

.exit_loop:
    ret
 
