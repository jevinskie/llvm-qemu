.global _start
.type _start, %function

 _start:
	mov   r0, r1

        mov r0, #0x18
        swi 0x123456
