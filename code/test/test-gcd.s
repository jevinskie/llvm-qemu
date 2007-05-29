.global _start
.type _start, %function

 _start:
	mov   r0, #0x18
	mov   r1, #0x12

loop:	cmp   r0, r1
	subgt r0, r0, r1
	sublt r1, r1, r0
	bne   loop
	
        mov r0, #0x18
        swi 0x123456
