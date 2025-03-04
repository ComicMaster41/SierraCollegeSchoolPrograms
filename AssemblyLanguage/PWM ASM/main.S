/** 
 *  This file contains the setup and loop functions.
 */
 #include <avr/io.h>
 
.extern   delay

.section .text

.global setup
.global loop

/**
 * setup function
 */
setup:
    call    init_adc
    call    init_pwm11
    ret

/**
 * loop function
 */
loop:
    ldi     r22, 0xe8 ; (1 sec)
    ldi     r23, 0x03
    ldi     r24, 0x00 ; 0
    ldi     r25, 0x00 ; 0
    call    delay

    ldi     r24,  0x00
    call    read_adc

    lsr     r25
    ror     r24  ; shift r25/r24 to the right 2 times

    lsr     r25
    ror     r24  

    call    set_pwm11

    ret

/**
 * Variables
 */
 .section .data

.state:  .space  1
 
