	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}

	mov r3, r0			@ copy passed value
	mov r0, #1 			@ result = 1 
	subs r4, r4, #1			@ previous = -1	
	mov r5, #0			@ sum = 0
	mov r6, #0			@ i = 0	
.Loop:
	adds r5, r0, r4			@ sum = result + previous 
	mov r4, r0			@ previous = result
	mov r0, r5			@ result = sum
	adds r6, r6, #1			@ i++
	cmp r6, r3			@ if(i <= x)
	ble .Loop			@ (i <= x) hold, continue loop
	@bx lr				@ (i > x) hold, return

	pop {r3, r4, r5, pc}		@EPILOG

	@ END CODE MODIFICATION


	.size fibonacci, .-fibonacci
	.end
