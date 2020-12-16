.global _Z12eratosthenesPjjj
_Z12eratosthenesPjjj:
	@Given p, uint32 array of size (n+1+31)/32/2 in location r0
	@Given n, number of integers to count primes for, in r1
	@Given size, number of ints (each 32 bits) in p, in r2
	push {r4-r8}
	mov r3, #1		@Number of primes, to be returned, setting at 1 because assuming 2 is prime
	@Now looping through "array" and setting all bits to true
	mov r4, r0			@copy of address 
	ldr r5, =0xFFFFFFFF		@32 bits of all 1s
	mov r6, r2			@copy of size, number of ints (number of 32 bit sections)
1:
		str r5, [r4]			@store all 1s in this section of the array
		add r4, #4			@increment address by 4 bytes, 32 bits
		subs r6, #1			@Lower copy of size by one int (32 bits) 
		bgt 1b				@loop until size is at or below 0
	@out of loop, all bits are set to true
	@can write over r4, r5, r6
	
	@Now looping from 3 to n, only odds	
	ldr r4, =#31622		@sqrt(1 billion), I think it's faster to assume then to calculate each time
	mov r5, #3		@current number that we're testing		
2:
		ldrb r6, [r0],#1	@load r6 with the bit representing the first number, and postincrement it by one bit
		cmp r6, #1		@compare that bit with #1
		beq 3f			@if this number was set to true, branch ahead
4:
		add r5, #2		@increment by 2 (odds only)
		cmp r5, r1		@compare current to n (1 billion)
		ble 2b			@loop unless larger than n
	b 6f
3:
	@The number r5 is prime, increment prime count and wipe out multiples
	add r3, #1	@increment prime count
	cmp r5, r4	@compare the prime number to the square root of n
	bgt 4b		@if greater, brach back in the main loop where it was to continue to higher numbers
	@Those that remain have multiples that need to be wiped out, time for another loop
	mul r7, r5, r5		@r7 starts at the prime number squared
	add r8, r5, r5		@r8 is twice the prime number	
5:
		add r7, r8		@r7 increments by twice the prime number
		@isPrime[r7] = false
		cmp r7, r1		@compare current to n
		ble 5b			@loop until larger than n
	b 4b			@return to the outer loop
	
6:
	mov r0, r3
	pop {r4-r8}
	bx lr
