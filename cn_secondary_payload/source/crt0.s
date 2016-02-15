.section ".init"
.arm
.align 4
.global _init
.global _start

#include "../../build/constants.h"

_start:
	# blx __libc_init_array
	# don't clear r0 in order to protect mode arg, and r1 for new sp
	# mov r0, #0
	# mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	mov r5, #0
	mov r6, #0
	mov r7, #0
	mov r8, #0
	mov r9, #0
	mov r10, #0
	mov r11, #0
	mov r12, #0
	mov sp, #0x10000000
#ifdef OTHERAPP
	push {r0} @ Write r0 to the very top of the stack, so that code elsewhere can load that value globally via a fixed address.
	mov sp, r1
#endif
	blx main

_init:
	bx lr
