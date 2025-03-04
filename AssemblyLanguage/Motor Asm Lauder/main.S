#include <avr/io.h>
.extern   delay
.section .text

.global setup
.global loop

#define DIR_A 	5
#define DIR_B 	4

.global main

setup:
    call	init_pwm11

    sbi   _SFR_IO_ADDR(DDRB), PIN5
    sbi   _SFR_IO_ADDR(DDRB), PIN4

    ret

loop:
; drive forward for 1 second

  ; set PIN5 to 1
  sbi _SFR_IO_ADDR(PORTB), PIN5
  sbi PIN5, 1
  ; clear PIN4 to 0
  cbi _SFR_IO_ADDR(PORTB), PIN4
  sbi PIN4, 0
  
  ; set PWM11 to 255 (full speed)
  ldi r24, 255
  call set_pwm11
  ; delay for 1 seconds
  ldi     r22, 0xe8 ; (1 sec)
  ldi     r23, 0x03
  ldi     r24, 0x00 ; 0
  ldi     r25, 0x00 ; 0
  call delay
  ; repeat process

; brake for 1 second
  ; set PIN_5 to 0
  cbi _SFR_IO_ADDR(PORTB), PIN5
  ; clear PIN4 to 0
  cbi _SFR_IO_ADDR(PORTB), PIN4
  ; set PWM11 to 0 (no speed)a
  ldi r24, 0
  call set_pwm11
  ; delay for 1 seconds
  ldi  r22, 0xe8 ; (1 sec)
  ldi  r23, 0x03
  ldi  r24, 0x00 ; 0
  ldi  r25, 0x00 ; 0
  call delay

; drive backward for 1 second

  ; set PIN_5 to 0
  cbi _SFR_IO_ADDR(PORTB), PIN5
  ; clear PIN4 to 0
  sbi _SFR_IO_ADDR(PORTB), PIN4
  ; set PWM11 to 0 (no speed)a
  ldi r24, 255
  call set_pwm11
  ; delay for 1 seconds
  ldi  r22, 0xe8 ; (1 sec)
  ldi  r23, 0x03
  ldi  r24, 0x00 ; 0
  ldi  r25, 0x00 ; 0
  call delay

; brake for 1 second
; set PIN_5 to 0
  cbi _SFR_IO_ADDR(PORTB), PIN5
  ; clear PIN4 to 0
  cbi _SFR_IO_ADDR(PORTB), PIN4
  ; set PWM11 to 0 (no speed)a
  ldi r24, 0
  call set_pwm11
  ; delay for 1 seconds
  ldi  r22, 0xe8 ; (1 sec)
  ldi  r23, 0x03
  ldi  r24, 0x00 ; 0
  ldi  r25, 0x00 ; 0
  call delay

    ret
