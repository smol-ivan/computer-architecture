	.text
main:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	li	a5,1
	sw	a5,-36(s0)
	li	a5,2
	sw	a5,-40(s0)
	li	a5,3
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L7:
	sw	zero,-28(s0)
	j	.L3
.L6:
	sw	zero,-32(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L4:
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	blt	a4,a5,.L5
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L6
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L7
	li	a5,0
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra