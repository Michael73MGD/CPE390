@Michael Dasaro

@Note, the code works up to the divion, which I can't get to divide by the size of the array, see comments

.global _Z4meanPKdi
_Z4meanPKdi:
	mov r2, #0		@This for incrementing through the list, and protects r1 for use in division
	@vmov.f64 d0, #0	@It seems that d0 is automatically 0, and this doesn't compile anyway
1:
	vldr.f64 d1, [r0]	@load d1 with the current value in the array
	vadd.f64 d0,d0,d1	@add the current value onto the running sum (d0)
	add r0, #8		@increment the pointer by 8
	add r2, #1		@increment our loop counter
	cmp r2, r1		@check if we're at the end of the array
	blt 1b			@loop again if current position is less than the length
	
	vmov s2,r1		@An attempt at converting the size (r1), to a float
	vcvt.f64.f32 d1, s2	@An attempt at converting the size (now  a float, s2) to a double, d1
	@vdiv.f64 d0, d1	@An attempt at diving the sum by the size of the array, hopefully converted to a double
	bx lr			@When uncommented, the above line fails to compile

