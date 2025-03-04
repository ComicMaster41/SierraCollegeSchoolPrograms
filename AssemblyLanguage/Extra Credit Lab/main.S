#include <avr/io.h>
.extern   delay
.section .text

.global setup
.global loop
.global main

#define DIR_A 	5
#define DIR_B 	4

.equ     RBPIN10, 10 ; create an equate for the redboard pin 10

setup:
    call  init_adc
    call	init_pwm11

    sbi   _SFR_IO_ADDR(DDRB), PIN5
    sbi   _SFR_IO_ADDR(DDRB), PIN4

    ret

loop:
    ; set PIN5 to 1
    sbi _SFR_IO_ADDR(PORTB), PIN5
    sbi PIN5, 1
    ; clear PIN4 to 0
    cbi _SFR_IO_ADDR(PORTB), PIN4
    sbi PIN4, 0
    ; set PWM11 to 255 (full speed)
    ldi r24, 255

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

    sbic   _SFR_IO_ADDR(PIND), PIN4
    rjmp   button

    call    set_pwm11




    ret

button:
    ; set PIN_5 to 0
    cbi _SFR_IO_ADDR(PORTB), PIN5
    ; clear PIN4 to 0
    sbi _SFR_IO_ADDR(PORTB), PIN4
    ; set PWM11 to 0 (no speed)a
    ldi r24, 255
    call set_pwm11

    ldi    r22, 0x0f
    ldi    r23, 0x00
    ldi    r24, 0x00
    ldi    r25, 0x00
    call   delay

    sbic   _SFR_IO_ADDR(PIND), PIN4
    rjmp   loop

    ldi    r24, RBPIN10
    rjmp   done
    
done:
    ret

/**
 * Variables
 */
 .section .data

.state:  .space  1