.global _Z4meanii
_Z4meanii:
	mov r2, #0
	vmov.f64 d0, r2
	vmov.f64 d2, r1
1:
	vldr.f64 d1, [r0,r2] 
	add r2, #4
	vadd.f64 d0, d1
	subs r1, #1
	bgt 1b
	
	vdiv.f64 d0, d2
	bx lr
