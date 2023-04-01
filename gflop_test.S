.align 4

.global _gflop_test
_gflop_test:
    mov x0, #1073741824
loop1:
    fmla v0.4s, v16.4s, v17.s[0]
    fmla v1.4s, v16.4s, v17.s[1]
    fmla v2.4s, v16.4s, v17.s[2]
    fmla v3.4s, v16.4s, v17.s[3]
    fmla v4.4s, v16.4s, v17.s[0]
    fmla v5.4s, v16.4s, v17.s[1]
    fmla v6.4s, v16.4s, v17.s[2]
    fmla v7.4s, v16.4s, v17.s[3]
    subs x0, x0, #1
    fmla v8.4s, v16.4s, v17.s[0]
    fmla v9.4s, v16.4s, v17.s[1]
    fmla v10.4s, v16.4s, v17.s[2]
    fmla v11.4s, v16.4s, v17.s[3]
    fmla v12.4s, v16.4s, v17.s[0]
    fmla v13.4s, v16.4s, v17.s[1]
    fmla v14.4s, v16.4s, v17.s[2]
    fmla v15.4s, v16.4s, v17.s[3]
    bne loop1
    ret