  .intel_syntax noprefix
  .text
  .globl proc_tak$4_α
proc_tak$4_α:
#=======================================================================================================================
    .global proc_tak$4_α
    .global proc_tak$4_β
    .global proc_tak$4_γ
    .global proc_tak$4_ω
  sub rsp, 3504
  mov [rsp + 3480], rcx
  mov [rsp + 3488], rdx
  mov [rsp + 3496], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3472
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3304], rsp
  mov rdi, rsp
  mov esi, 3472
  call rt_jmp_frame_lexprep@PLT
proc_tak$4_α_body:
lea rax, [rip + xchain0_n35_β]
mov qword ptr [rbp + 3280], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_tak$4_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_tak$4_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [rbp + 3392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3216] -> [zr+3168]
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 3176], rax
# marshal arg1 = producer-box slot [zr+3248] -> [zr+3184]
 mov rax, qword ptr [rbp + 3248]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3192], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 3168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+2480]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2488], rax
  .section .rodata
  .Lrkfn12: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 2480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je proc_tak$4_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_tak$4_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+3120] -> [zr+3056]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
  .section .rodata
  .Lrkfn18: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn18]
 lea rsi, [rbp + 3040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [rbp + 3392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# marshal arg1 = producer-box slot [zr+2432] -> [zr+2368]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2376], rax
  .section .rodata
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 2352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
  .section .rodata
  .Lrkfn30: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn30]
 lea rsi, [rbp + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_tak$4_ω
 jmp proc_tak$4_ω
 xchain0_n14_β:
 jmp proc_tak$4_ω
 xchain0_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2928]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2936], rax
  .section .rodata
  .Lrkfn32: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn32]
 lea rsi, [rbp + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n16_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
 xchain0_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2224]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2232], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2240]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2248], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn38]
 lea rsi, [rbp + 2224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n19_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n20_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n14_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2784]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2792], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2800]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2808], rax
  .section .rodata
  .Lrkfn44: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn44]
 lea rsi, [rbp + 2784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n22_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 2712], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n5_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2096]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2104], rax
# marshal arg1 = producer-box slot [zr+2176] -> [zr+2112]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2120], rax
  .section .rodata
  .Lrkfn50: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn50]
 lea rsi, [rbp + 2096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 2744], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n26_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n14_α
 xchain0_n27_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
  .section .rodata
  .Lrkfn56: .string "$cmp_le"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn56]
 lea rsi, [rbp + 2656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n28_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n5_α
 xchain0_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1968]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1976], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+1984]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1992], rax
  .section .rodata
  .Lrkfn62: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn62]
 lea rsi, [rbp + 1968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 1896], rax
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n14_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2528]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2536], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
  .section .rodata
  .Lrkfn68: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn68]
 lea rsi, [rbp + 2528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1928], rax
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n14_α
# IR_SUSPEND yield+resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n35_β]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_tak$4_γ
 xchain0_n35_β:
 jmp xchain0_n5_α
 xchain0_n36_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1856]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1864], rax
  .section .rodata
  .Lrkfn74: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn74]
 lea rsi, [rbp + 1840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n38_α:
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 1768], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp proc_tak$4_ω
# IR_LIT_INTEGER
 xchain0_n39_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp proc_tak$4_ω
.Lx79_0:
 .quad 1
 xchain0_n40_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1712]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1728]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1736], rax
  .section .rodata
  .Lrkfn81: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn81]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n14_α
 xchain0_n41_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn83: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn83]
 lea rsi, [rbp + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n42_α:
 lea rdi, [rbp + 3456]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n43_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n44_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [rbp + 3312]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n14_α
 xchain0_n46_α:
 mov qword ptr [rbp + 1440], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1472]
 mov rdx, qword ptr [rbp + 1480]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1536]
 mov rdx, qword ptr [rbp + 1544]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx93_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx93_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx93_3]
 lea rdx, [rip + .Lx93_4]
 jmp rax
.Lx93_3:
 mov rax, qword ptr [rbp + 1440]
 test rax, rax
 jne .Lx93_5
 mov qword ptr [rbp + 1440], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx93_2
.Lx93_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx93_2
.Lx93_4:
 mov rax, qword ptr [rbp + 1440]
 test rax, rax
 jne .Lx93_6
 mov qword ptr [rbp + 1440], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx93_2
.Lx93_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx93_2
.Lx93_1:
 call rt_faildescr@PLT
.Lx93_2:
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n47_α
 xchain0_n46_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain0_n47_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n48_α:
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 1304], rax
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp proc_tak$4_ω
# IR_LIT_INTEGER
 xchain0_n49_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp proc_tak$4_ω
.Lx98_0:
 .quad 1
 xchain0_n50_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1264]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1272], rax
  .section .rodata
  .Lrkfn100: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn100]
 lea rsi, [rbp + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n14_α
 xchain0_n51_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1152]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
  .section .rodata
  .Lrkfn102: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn102]
 lea rsi, [rbp + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain0_n46_β
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n46_β
# IR_VAR_REF
 xchain0_n52_α:
 lea rdi, [rbp + 3440]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n53_α:
 lea rdi, [rbp + 3424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n54_α:
 lea rdi, [rbp + 3392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n55_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n14_α
 xchain0_n56_α:
 mov qword ptr [rbp + 976], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1072]
 mov rdx, qword ptr [rbp + 1080]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx112_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx112_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx112_3]
 lea rdx, [rip + .Lx112_4]
 jmp rax
.Lx112_3:
 mov rax, qword ptr [rbp + 976]
 test rax, rax
 jne .Lx112_5
 mov qword ptr [rbp + 976], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx112_2
.Lx112_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx112_2
.Lx112_4:
 mov rax, qword ptr [rbp + 976]
 test rax, rax
 jne .Lx112_6
 mov qword ptr [rbp + 976], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx112_2
.Lx112_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx112_2
.Lx112_1:
 call rt_faildescr@PLT
.Lx112_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n46_β
 jmp xchain0_n57_α
 xchain0_n56_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain0_n57_α:
 lea rdi, [rbp + 3376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n58_α:
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 840], rax
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp proc_tak$4_ω
# IR_LIT_INTEGER
 xchain0_n59_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp proc_tak$4_ω
.Lx117_0:
 .quad 1
 xchain0_n60_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn119: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn119]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n14_α
 xchain0_n61_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn121: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn121]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain0_n56_β
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n56_β
# IR_VAR_REF
 xchain0_n62_α:
 lea rdi, [rbp + 3376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n63_α:
 lea rdi, [rbp + 3392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n64_α:
 lea rdi, [rbp + 3408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n65_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n14_α
 xchain0_n66_α:
 mov qword ptr [rbp + 512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx131_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx131_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx131_3]
 lea rdx, [rip + .Lx131_4]
 jmp rax
.Lx131_3:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx131_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx131_2
.Lx131_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx131_2
.Lx131_4:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx131_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx131_2
.Lx131_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx131_2
.Lx131_1:
 call rt_faildescr@PLT
.Lx131_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain0_n56_β
 jmp xchain0_n67_α
 xchain0_n66_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "tak/4"
# IR_VAR_REF
 xchain0_n67_α:
 lea rdi, [rbp + 3312]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n68_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n69_α:
 lea rdi, [rbp + 3344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n70_α:
 lea rdi, [rbp + 3360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n14_α
 xchain0_n71_α:
 mov qword ptr [rbp + 272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx141_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx141_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx141_3]
 lea rdx, [rip + .Lx141_4]
 jmp rax
.Lx141_3:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx141_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx141_2
.Lx141_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx141_2
.Lx141_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx141_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx141_2
.Lx141_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx141_2
.Lx141_1:
 call rt_faildescr@PLT
.Lx141_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain0_n66_β
 jmp xchain0_n72_α
 xchain0_n71_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "tak/4"
# IR_SUSPEND yield+resume
 xchain0_n72_α:
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_tak$4_γ
 xchain0_n72_β:
 jmp xchain0_n71_β
proc_tak$4_res:
add rsp, 8
pop rbp
proc_tak$4_β:
jmp qword ptr [rbp + 3280]
proc_tak$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_tak$4_res]
push rax
mov rax, [rbp + 3480]
mov rbp, [rbp + 3496]
jmp rax
proc_tak$4_ω:
mov rax, [rbp + 3488]
lea rsp, [rbp + 3504]
mov rbp, [rbp + 3496]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "tak/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tak$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3472
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 536], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain144_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn146: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn146]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain144_n1_α
 xchain144_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain144_n1_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain144_n2_α
 xchain144_n1_β:
 jmp xchain144_n7_α
.Lx147_0:
 .quad 18
# IR_LIT_INTEGER
 xchain144_n2_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain144_n3_α
 xchain144_n2_β:
 jmp xchain144_n7_α
.Lx148_0:
 .quad 12
# IR_LIT_INTEGER
 xchain144_n3_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain144_n4_α
 xchain144_n3_β:
 jmp xchain144_n7_α
.Lx149_0:
 .quad 6
# IR_VAR_REF
 xchain144_n4_α:
 lea rdi, [rbp + 544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain144_n5_α
 xchain144_n4_β:
 jmp xchain144_n7_α
 xchain144_n5_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx153_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx153_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx153_3]
 lea rdx, [rip + .Lx153_4]
 jmp rax
.Lx153_3:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx153_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx153_2
.Lx153_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx153_2
.Lx153_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx153_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx153_2
.Lx153_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx153_2
.Lx153_1:
 call rt_faildescr@PLT
.Lx153_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain144_n7_α
 jmp xchain144_n6_α
 xchain144_n5_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "tak/4"
# IR_VAR
 xchain144_n6_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 264], rax
 jmp xchain144_n8_α
 xchain144_n6_β:
 jmp xchain144_n7_α
 xchain144_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn157: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn157]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain144_n7_β:
 jmp main_ω
 xchain144_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn159: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn159]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain144_n5_β
 jmp xchain144_n9_α
 xchain144_n8_β:
 jmp xchain144_n5_β
# IR_LIT_STRING
 xchain144_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain144_n10_α
 xchain144_n9_β:
 jmp xchain144_n7_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string ""
 xchain144_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn162: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain144_n5_β
 jmp xchain144_n11_α
 xchain144_n10_β:
 jmp xchain144_n5_β
# IR_MOVE_LABEL
 xchain144_n11_α:
 lea rax, [rip + xchain144_n5_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain144_n11_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain144_n12_α:
 jmp qword ptr [rbp + 32]
 xchain144_n12_β:
 jmp main_ω
main_β:
jmp xchain144_n12_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 536]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 536]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
