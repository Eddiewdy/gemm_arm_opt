.align 4
.macro preserve_caller_vec
	stp d8, d9, [sp, #-16]!
	stp d10, d11, [sp, #-16]!
	stp d12, d13, [sp, #-16]!
	stp d14, d15, [sp, #-16]!
.endm

.macro restore_caller_vec
	ldp d14, d15, [sp], #16
	ldp d12, d13, [sp], #16
	ldp d10, d11, [sp], #16
	ldp d8, d9, [sp], #16
.endm
.macro SGEMM_KERNEL_M8N12K4_M1_LOOPK
    mov x11, x0                  // x11: a_loc
    mov x12, x5                  // x12: k
    ldr q8,  [x2, #0]
    ldr q9,  [x2, #16]
    ldr q10, [x2, #32]
    ldr q11, [x2, #48]
    ldr q12, [x2, #64]
    ldr q13, [x2, #80]
    ldr q14, [x2, #96]
    ldr q15, [x2, #112]
    ldr q16, [x2, #128]
    ldr q17, [x2, #144]
    ldr q18, [x2, #160]
    ldr q19, [x2, #176]
    ldr q20, [x2, #192]
    ldr q21, [x2, #208]
    ldr q22, [x2, #224]
    ldr q23, [x2, #240]
    ldr q24, [x2, #256]
    ldr q25, [x2, #272]
    ldr q26, [x2, #288]
    ldr q27, [x2, #304]
    ldr q28, [x2, #320]
    ldr q29, [x2, #336]
    ldr q30, [x2, #352]
    ldr q31, [x2, #368]
loop:
    ldr q0, [x9, #0]
    ldr q1, [x9, #16]
    ldr q2, [x9, #32]
    ldr q3, [x11, #0]
    fmla  v8.4s, v0.4s, v3.s[0]
    fmla  v9.4s, v1.4s, v3.s[0]
    fmla v10.4s, v2.4s, v3.s[0]
    fmla v11.4s, v0.4s, v3.s[1]
    fmla v12.4s, v1.4s, v3.s[1]
    fmla v13.4s, v2.4s, v3.s[1]
    fmla v14.4s, v0.4s, v3.s[2]
    fmla v15.4s, v1.4s, v3.s[2]
    fmla v16.4s, v2.4s, v3.s[2]
    fmla v17.4s, v0.4s, v3.s[3]
    fmla v18.4s, v1.4s, v3.s[3]
    fmla v19.4s, v2.4s, v3.s[3]
    ldr q3, [x11, #16]
    fmla v20.4s, v0.4s, v3.s[0]
    fmla v21.4s, v1.4s, v3.s[0]
    fmla v22.4s, v2.4s, v3.s[0]
    fmla v23.4s, v0.4s, v3.s[1]
    fmla v24.4s, v1.4s, v3.s[1]
    fmla v25.4s, v2.4s, v3.s[1]
    fmla v26.4s, v0.4s, v3.s[2]
    fmla v27.4s, v1.4s, v3.s[2]
    fmla v28.4s, v2.4s, v3.s[2]
    fmla v29.4s, v0.4s, v3.s[3]
    fmla v30.4s, v1.4s, v3.s[3]
    fmla v31.4s, v2.4s, v3.s[3]
    ldr q0, [x9, #48]
    ldr q1, [x9, #64]
    ldr q2, [x9, #80]
    ldr q3, [x11, #32]
    fmla  v8.4s, v0.4s, v3.s[0]
    fmla  v9.4s, v1.4s, v3.s[0]
    fmla v10.4s, v2.4s, v3.s[0]
    fmla v11.4s, v0.4s, v3.s[1]
    fmla v12.4s, v1.4s, v3.s[1]
    fmla v13.4s, v2.4s, v3.s[1]
    fmla v14.4s, v0.4s, v3.s[2]
    fmla v15.4s, v1.4s, v3.s[2]
    fmla v16.4s, v2.4s, v3.s[2]
    fmla v17.4s, v0.4s, v3.s[3]
    fmla v18.4s, v1.4s, v3.s[3]
    fmla v19.4s, v2.4s, v3.s[3]
    ldr q3, [x11, #48]
    fmla v20.4s, v0.4s, v3.s[0]
    fmla v21.4s, v1.4s, v3.s[0]
    fmla v22.4s, v2.4s, v3.s[0]
    fmla v23.4s, v0.4s, v3.s[1]
    fmla v24.4s, v1.4s, v3.s[1]
    fmla v25.4s, v2.4s, v3.s[1]
    fmla v26.4s, v0.4s, v3.s[2]
    fmla v27.4s, v1.4s, v3.s[2]
    fmla v28.4s, v2.4s, v3.s[2]
    fmla v29.4s, v0.4s, v3.s[3]
    fmla v30.4s, v1.4s, v3.s[3]
    fmla v31.4s, v2.4s, v3.s[3]
    ldr q0, [x9, #96]
    ldr q1, [x9, #112]
    ldr q2, [x9, #128]
    ldr q3, [x11, #64]
    fmla  v8.4s, v0.4s, v3.s[0]
    fmla  v9.4s, v1.4s, v3.s[0]
    fmla v10.4s, v2.4s, v3.s[0]
    fmla v11.4s, v0.4s, v3.s[1]
    fmla v12.4s, v1.4s, v3.s[1]
    fmla v13.4s, v2.4s, v3.s[1]
    fmla v14.4s, v0.4s, v3.s[2]
    fmla v15.4s, v1.4s, v3.s[2]
    fmla v16.4s, v2.4s, v3.s[2]
    fmla v17.4s, v0.4s, v3.s[3]
    fmla v18.4s, v1.4s, v3.s[3]
    fmla v19.4s, v2.4s, v3.s[3]
    ldr q3, [x11, #80]
    fmla v20.4s, v0.4s, v3.s[0]
    fmla v21.4s, v1.4s, v3.s[0]
    fmla v22.4s, v2.4s, v3.s[0]
    fmla v23.4s, v0.4s, v3.s[1]
    fmla v24.4s, v1.4s, v3.s[1]
    fmla v25.4s, v2.4s, v3.s[1]
    fmla v26.4s, v0.4s, v3.s[2]
    fmla v27.4s, v1.4s, v3.s[2]
    fmla v28.4s, v2.4s, v3.s[2]
    fmla v29.4s, v0.4s, v3.s[3]
    fmla v30.4s, v1.4s, v3.s[3]
    fmla v31.4s, v2.4s, v3.s[3]
    ldr q3, [x11, #96]
    ldr q0, [x9, #144]
    ldr q1, [x9, #160]
    ldr q2, [x9, #176]
    fmla  v8.4s, v0.4s, v3.s[0]
    fmla  v9.4s, v1.4s, v3.s[0]
    fmla v10.4s, v2.4s, v3.s[0]
    fmla v11.4s, v0.4s, v3.s[1]
    fmla v12.4s, v1.4s, v3.s[1]
    fmla v13.4s, v2.4s, v3.s[1]
    add x9, x9, #192
    fmla v14.4s, v0.4s, v3.s[2]
    fmla v15.4s, v1.4s, v3.s[2]
    fmla v16.4s, v2.4s, v3.s[2]
    fmla v17.4s, v0.4s, v3.s[3]
    fmla v18.4s, v1.4s, v3.s[3]
    fmla v19.4s, v2.4s, v3.s[3]
    ldr q3, [x11, #112]
    fmla v20.4s, v0.4s, v3.s[0]
    fmla v21.4s, v1.4s, v3.s[0]
    fmla v22.4s, v2.4s, v3.s[0]
    fmla v23.4s, v0.4s, v3.s[1]
    fmla v24.4s, v1.4s, v3.s[1]
    fmla v25.4s, v2.4s, v3.s[1]
    add x11, x11, #128
    fmla v26.4s, v0.4s, v3.s[2]
    fmla v27.4s, v1.4s, v3.s[2]
    fmla v28.4s, v2.4s, v3.s[2]
    fmla v29.4s, v0.4s, v3.s[3]
    fmla v30.4s, v1.4s, v3.s[3]
    fmla v31.4s, v2.4s, v3.s[3]
    subs x12, x12, #4            // x12: k -= 4
    bne loop                       // x12: while (k != 0)
    str q8,  [x2, #0]
    str q9,  [x2, #16]
    str q10, [x2, #32]
    str q11, [x2, #48]
    str q12, [x2, #64]
    str q13, [x2, #80]
    str q14, [x2, #96]
    str q15, [x2, #112]
    str q16, [x2, #128]
    str q17, [x2, #144]
    str q18, [x2, #160]
    str q19, [x2, #176]
    str q20, [x2, #192]
    str q21, [x2, #208]
    str q22, [x2, #224]
    str q23, [x2, #240]
    str q24, [x2, #256]
    str q25, [x2, #272]
    str q26, [x2, #288]
    str q27, [x2, #304]
    str q28, [x2, #320]
    str q29, [x2, #336]
    str q30, [x2, #352]
    str q31, [x2, #368]
    add x2, x2, #384             // x2:  c_loc += 8 * 12
.endm

.globl _sgemm_kernel_m1_fp32_m8n12k4
_sgemm_kernel_m1_fp32_m8n12k4:
// param x0: a_loc
// param x1: b_loc
// param x2: c_loc
// param x3: m
// param x4: n
// param x5: k
    preserve_caller_vec
.sk_m8n12k4_loopm:               // l1:  loop m
    mov x9, x1                   // x9:  b_loc
    mov x10, x4                  // x10: n
.sk_m8n12k4_loopm_loopn:         // l2:  loop n
    SGEMM_KERNEL_M8N12K4_M1_LOOPK
    subs x10, x10, #12           // x10: n -= 12
    bne .sk_m8n12k4_loopm_loopn  // x10: while (n != 0)
    add x0, x0, x5, lsl#5        // x0:  a_loc += k * 8
    subs x3, x3, #8              // x3:  m -= 8
    bne .sk_m8n12k4_loopm        // x3:  while (m != 0)
    restore_caller_vec
    ret




