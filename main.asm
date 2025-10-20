# My first ever assembly project hehehehe
.section .data
	filename:
	.ascii "new_file.txt\0"
	message:
	.ascii "Creating file\n\0"

.section .text
	.global _start


create_file:
	mov r7, #0x8
	ldr r0, =filename
	mov r1, #420
	swi 0

	bx lr

_start:
	mov r7, #0x4
	mov r0, #1
	ldr r1, =message
	mov r2, #15
	swi 0

	bl create_file


	mov r7, #0x1
	mov r0, #0
	swi 0

