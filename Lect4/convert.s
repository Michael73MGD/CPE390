	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"convert.cpp"
	.text
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.text
	.align	2
	.global	_Z1fi
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1fi, %function
_Z1fi:
	.fnstart
.LFB1512:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1fi, .-_Z1fi
	.align	2
	.global	_Z1gii
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1gii, %function
_Z1gii:
	.fnstart
.LFB1513:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1gii, .-_Z1gii
	.align	2
	.global	_Z1gi
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z1gi, %function
_Z1gi:
	.fnstart
.LFB1514:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #1
	str	r3, [fp, #-12]
.L7:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L6
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L7
.L6:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z1gi, .-_Z1gi
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1515:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, #0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1996:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L13
	ldr	r3, [fp, #-12]
	ldr	r2, .L14
	cmp	r3, r2
	bne	.L13
	ldr	r0, .L14+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r2, .L14+8
	ldr	r1, .L14+12
	ldr	r0, .L14+4
	bl	__aeabi_atexit
.L13:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L15:
	.align	2
.L14:
	.word	65535
	.word	_ZStL8__ioinit
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z1fi, %function
_GLOBAL__sub_I__Z1fi:
	.fnstart
.LFB1997:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r1, .L17
	mov	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii
	pop	{fp, pc}
.L18:
	.align	2
.L17:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z1fi, .-_GLOBAL__sub_I__Z1fi
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z1fi
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
