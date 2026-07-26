  .intel_syntax noprefix
  .text
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
  sub rsp, 384
  mov [rsp + 360], rcx
  mov [rsp + 368], rdx
  mov [rsp + 376], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 320], 0
  mov qword ptr [rsp + 328], 0
  mov qword ptr [rsp + 336], 0
  mov qword ptr [rsp + 344], rsp
mov qword ptr [rbp + 352], r8
mov dword ptr [rbp + 344], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain0_n0_β]
mov qword ptr [rbp + 320], rax
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain0_n0_α:
                        mov              dword ptr [rbp + 16], r14d
                        jmp              xchain0_n1_α
xchain0_n0_as:
                        jmp              proc_PAT$0_γ
xchain0_n0_β:
                        jmp              xchain0_n5_β
xchain0_n0_af:
                        jmp              proc_PAT$0_ω
# IR_LIT_INTEGER
xchain0_n1_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx3_0]
                        mov              qword ptr [rbp + 56], rax
                        jmp              xchain0_n2_α
xchain0_n1_β:
                        jmp              proc_PAT$0_ω
.Lx3_0:
                        .quad            0
# IR_MATCH_POS
xchain0_n2_α:
                        mov              rax, 0
                        cmp              r14d, eax
                        jne              proc_PAT$0_ω
                        jmp              xchain0_n3_α
xchain0_n2_β:
                        jmp              proc_PAT$0_ω
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
xchain0_n3_α:
                        mov              dword ptr [rbp + 96], r14d
                        mov              dword ptr [rbp + 100], r14d
                        mov              dword ptr [rbp + 104], 0
                        mov              qword ptr [rbp + 120], rsp
                        mov              qword ptr [rbp + 112], 0
                        jmp              xchain0_n4_α
xchain0_n3_β:
                        mov              r14d, dword ptr [rbp + 100]
                        mov              rax, qword ptr [rbp + 112]
                        sub              rsp, 288
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 112], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                        jmp              xchain0_n6_α
xchain0_n3_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                        je               xchain0_n6_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 104]
                        add              eax, 1
                        mov              dword ptr [rbp + 104], eax
                        mov              dword ptr [rbp + 100], r14d
                        jmp              xchain0_n4_α
xchain0_n3_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 296]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 104]
                        test             ecx, ecx
                        jz               .Lx6_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 104], ecx
                        mov              qword ptr [rbp + 112], rax
                        lea              rbp, [rax + -8]
                        jmp              xchain0_n6_β
.Lx6_2:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 120]
                        jmp              xchain0_n2_β
# IR_LIT_INTEGER
xchain0_n4_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain0_n5_α
xchain0_n4_β:
                        jmp              xchain0_n3_β
.Lx7_0:
                        .quad            0
# IR_MATCH_RPOS
xchain0_n5_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                        jne              xchain0_n3_β
                        jmp              proc_PAT$0_γ
xchain0_n5_β:
                        jmp              xchain0_n3_β
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain0_n6_α:
                        mov              dword ptr [rbp + 144], r14d
                        jmp              xchain0_n8_α
xchain0_n6_as:
                        jmp              xchain0_n3_as
xchain0_n6_β:
                        jmp              xchain0_n7_β
xchain0_n6_af:
                        jmp              xchain0_n3_af
# IR_MATCH_SPAN
xchain0_n7_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx12_0:
                        cmp              ecx, r15d
                        jge              .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx12_10
                        cmp              esi, 10
                        je               .Lx12_10
                        jmp              .Lx12_1
.Lx12_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx12_11
                        cmp              esi, 10
                        je               .Lx12_11
                        jmp              .Lx12_1
.Lx12_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx12_12
                        cmp              esi, 10
                        je               .Lx12_12
                        jmp              .Lx12_1
.Lx12_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx12_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                        je               .Lx12_13
                        cmp              esi, 10
                        je               .Lx12_13
                        jmp              .Lx12_1
.Lx12_13:
                        add              ecx, 1
                        jmp              .Lx12_0
.Lx12_1:
                        cmp              ecx, r14d
                        jg               .Lx12_240
                        add              rsp, 16
                        jmp              xchain0_n8_β
.Lx12_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain0_n3_as
xchain0_n7_β:
xchain0_n7_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              xchain0_n8_β
# IR_MATCH_ALT_NARY
xchain0_n8_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], 0
                        jmp              xchain0_n9_α
xchain0_n8_s0:
                        sub              rsp, 16
                        jmp              xchain0_n8_as
xchain0_n8_s1:
                        jmp              xchain0_n8_as
xchain0_n8_as:
                        jmp              xchain0_n7_α
xchain0_n8_β:
                        mov              eax, dword ptr [rsp + 36]
                        cmp              eax, 0
                        jne              .Lx14_100
                        add              rsp, 16
                        jmp              xchain0_n9_β
.Lx14_100:
                        jmp              xchain0_n10_β
xchain0_n8_af:
                        add              dword ptr [rsp + 4], 1
                        mov              r14d, dword ptr [rsp + 0]
                        mov              eax, dword ptr [rsp + 4]
                        cmp              eax, 1
                        je               xchain0_n10_α
                        add              rsp, 16
                        jmp              xchain0_n3_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain0_n9_α:
                        mov              dword ptr [rbp + 176], r14d
                        jmp              xchain0_n11_α
xchain0_n9_as:
                        jmp              xchain0_n8_s0
xchain0_n9_β:
                        jmp              xchain0_n12_β
xchain0_n9_af:
                        jmp              xchain0_n8_af
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain0_n10_α:
                        mov              dword ptr [rbp + 208], r14d
                        jmp              xchain0_n13_α
xchain0_n10_as:
                        jmp              xchain0_n8_s1
xchain0_n10_β:
                        jmp              xchain0_n17_β
xchain0_n10_af:
                        jmp              xchain0_n8_af
# IR_MATCH_SPAN
xchain0_n11_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx20_0:
                        cmp              ecx, r15d
                        jge              .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx20_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx20_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx20_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx20_1
                        add              ecx, 1
                        jmp              .Lx20_0
.Lx20_1:
                        cmp              ecx, r14d
                        jg               .Lx20_240
                        add              rsp, 16
                        jmp              xchain0_n8_af
.Lx20_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain0_n12_α
xchain0_n11_β:
xchain0_n11_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              xchain0_n8_af
# IR_MATCH_LIT
xchain0_n12_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                        jg               xchain0_n11_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax
                        jne              xchain0_n11_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85
                        jne              xchain0_n11_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78
                        jne              xchain0_n11_β
                        add              r14d, 10
                        jmp              xchain0_n8_s0
xchain0_n12_β:
                        sub              r14d, 10
                        jmp              xchain0_n11_β
# IR_MATCH_NOTANY
xchain0_n13_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain0_n8_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                        je               xchain0_n8_af
                        add              r14d, 1
                        jmp              xchain0_n14_α
xchain0_n13_β:
                        sub              r14d, 1
                        jmp              xchain0_n8_af
# IR_MATCH_BREAK
xchain0_n14_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx25_0:
                        cmp              ecx, r15d
                        jl               .Lx25_237
                        add              rsp, 16
                        jmp              xchain0_n13_β
.Lx25_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                        je               .Lx25_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx25_238
                        add              rsp, 16
                        jmp              xchain0_n13_β
.Lx25_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                        je               .Lx25_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx25_239
                        add              rsp, 16
                        jmp              xchain0_n13_β
.Lx25_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                        je               .Lx25_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx25_240
                        add              rsp, 16
                        jmp              xchain0_n13_β
.Lx25_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                        je               .Lx25_1
                        add              ecx, 1
                        jmp              .Lx25_0
.Lx25_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                        jmp              xchain0_n15_α
xchain0_n14_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        jmp              xchain0_n13_β
# IR_MATCH_LIT
xchain0_n15_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain0_n14_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95
                        jne              xchain0_n14_β
                        add              r14d, 1
                        jmp              xchain0_n16_α
xchain0_n15_β:
                        sub              r14d, 1
                        jmp              xchain0_n14_β
# IR_MATCH_ANY
xchain0_n16_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                        jge              xchain0_n15_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0
                        je               xchain0_n15_β
                        add              r14d, 1
                        jmp              xchain0_n17_α
xchain0_n16_β:
                        sub              r14d, 1
                        jmp              xchain0_n15_β
# IR_MATCH_SPAN
xchain0_n17_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx31_0:
                        cmp              ecx, r15d
                        jge              .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx31_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jge              .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                        je               .Lx31_1
                        add              ecx, 1
                        jmp              .Lx31_0
.Lx31_1:
                        cmp              ecx, r14d
                        jg               .Lx31_240
                        add              rsp, 16
                        jmp              xchain0_n16_β
.Lx31_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                        jmp              xchain0_n8_s1
xchain0_n17_β:
xchain0_n17_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        jmp              xchain0_n16_β
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 352], 1
jne 7f
mov ecx, dword ptr [rbp + 344]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
cmp qword ptr [rbp + 352], 1
jne 8f
mov eax, dword ptr [rbp + 344]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 344], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 320]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 360]
mov rbp, [rbp + 376]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 368]
lea rsp, [rbp + 384]
mov rbp, [rbp + 376]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 352
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_zstatic@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "src"
  .Lgvan1: .string "claws"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 2
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 2
  call gva_register@PLT
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
  mov qword ptr [rsp + 952], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
#                 &TRIM          =  0
# IR_LIT_STRING
xchain32_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 168], rax
                        jmp              xchain32_n1_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain32_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 200], rax
                        jmp              xchain32_n2_α
.Lx34_0:
                        .quad            0
xchain32_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn36:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn36]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                        je               xchain32_n3_α
                        jmp              xchain32_n3_α
xchain32_n2_β:
                        jmp              xchain32_n3_α
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
# IR_LIT_STRING
xchain32_n3_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 360], rax
                        jmp              xchain32_n4_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "INPUT"
xchain32_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn39:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                        je               xchain32_n6_α
                        jmp              xchain32_n5_α
xchain32_n4_β:
                        jmp              xchain32_n6_α
# IR_LIT_INTEGER
xchain32_n5_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 392], rax
                        jmp              xchain32_n7_α
.Lx40_0:
                        .quad            9
#                 src             =   INPUT                       :F(fail)
# IR_VAR
xchain32_n6_α:
                        mov              rdi, qword ptr [rip + .Lx41_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                        je               xchain32_n9_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        jmp              xchain32_n8_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "INPUT"
# IR_LIT_STRING
xchain32_n7_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 424], rax
                        jmp              xchain32_n10_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "[-f0 -r1000000]"
# IR_ASSIGN gva
xchain32_n8_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain32_n11_α
# fail            OUTPUT          =  'Pattern match failed'
# IR_LIT_STRING
xchain32_n9_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 920], rax
                        jmp              xchain32_n12_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "Pattern match failed"
xchain32_n10_α:
# BOX CALL INPUT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+304] -> [zr+240]
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+256]
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 264], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+272]
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lbynamefn29:           .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn29]
                        lea              rsi, [rbp + 240]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                        je               xchain32_n6_α
                        jmp              xchain32_n6_α
xchain32_n10_β:
                        jmp              xchain32_n6_α
#                 claws           =
# IR_LIT_STRING
xchain32_n11_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 568], rax
                        jmp              xchain32_n13_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "PAT$0"
# IR_ASSIGN global
xchain32_n12_α:
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              rdi, qword ptr [rip + .Lx47_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        jmp              main_γ
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "OUTPUT"
xchain32_n13_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn49:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                        je               xchain32_n15_α
                        jmp              xchain32_n14_α
xchain32_n13_β:
                        jmp              xchain32_n15_α
# IR_ASSIGN gva
xchain32_n14_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        jmp              xchain32_n15_α
#                 src             claws                           :F(fail)
# IR_VAR
xchain32_n15_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        jmp              xchain32_n16_α
# IR_MATCH_HEAD
xchain32_n16_α:
                        mov              qword ptr [rbp + 648], rbp
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 640], r12
                        mov              qword ptr [rbp + 624], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 616], rax
                        mov              dword ptr [rbp + 608], 0
.Lx53_0:
                        mov              r14d, dword ptr [rbp + 608]
                        jmp              xchain32_n17_α
xchain32_n16_β:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, r15d
                        jg               .Lx53_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                        jne              .Lx53_1
                        jmp              .Lx53_0
.Lx53_1:
                        mov              rax, qword ptr [rbp + 616]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 624]
                        mov              r12, qword ptr [rbp + 640]
                        mov              rbp, qword ptr [rbp + 648]
                        jmp              xchain32_n9_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain32_n17_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx54_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                        jne              .Lx54_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx54_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx54_10
.Lx54_9:
                        xor              eax, eax
.Lx54_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx54_11:
                        test             rax, rax
                        jz               .Lx54_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx54_4]
                        lea              rdx, [rip + .Lx54_5]
                        jmp              rax
.Lx54_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 608], eax
                        jmp              xchain32_n18_α
.Lx54_5:
                        jmp              xchain32_n16_β
.Lx54_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx54_2:
                        test             rax, rax
                        je               .Lx54_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx54_7]
                        lea              rdx, [rip + .Lx54_8]
                        jmp              rax
.Lx54_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx54_2
.Lx54_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx54_2
.Lx54_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain32_n16_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain32_n18_α
.Lx54_6:
                        add              rsp, 16
                        jmp              xchain32_n16_β
xchain32_n17_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_RELEASE
xchain32_n18_α:
                        mov              rax, qword ptr [rbp + 616]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 624]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx56_1:
                        test             rax, rax
                        je               .Lx56_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx56_3]
                        lea              rdx, [rip + .Lx56_4]
                        jmp              rax
.Lx56_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx56_1
.Lx56_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx56_1
.Lx56_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 640]
                        mov              rbp, qword ptr [rbp + 648]
                        jmp              xchain32_n19_α
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
# IR_LIT_STRING
xchain32_n19_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 792], rax
                        jmp              xchain32_n20_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "matched bytes="
# IR_VAR
xchain32_n20_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        jmp              xchain32_n21_α
xchain32_n21_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn60:               .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                        je               main_γ
                        jmp              xchain32_n22_α
xchain32_n21_β:
                        jmp              main_γ
xchain32_n22_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        jmp              xchain32_n23_α
# IR_ASSIGN global
xchain32_n23_α:
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              rdi, qword ptr [rip + .Lx62_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        jmp              main_γ
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 952]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 952]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "claws"
.text
.section .rodata
.C0:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
 .byte 1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
 .byte 0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
 .byte 1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
 .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
