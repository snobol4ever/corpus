  .intel_syntax noprefix
  .text
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
  sub rsp, 192
  mov [rsp + 168], rcx
  mov [rsp + 176], rdx
  mov [rsp + 184], rbp
  mov rbp, rsp
  mov qword ptr [rsp], 0
  mov qword ptr [rsp + 8], 0
  mov qword ptr [rsp + 64], 0
  mov qword ptr [rsp + 72], 0
  mov qword ptr [rsp + 128], 0
  mov qword ptr [rsp + 136], 0
  mov qword ptr [rsp + 144], 0
  mov qword ptr [rsp + 152], rsp
mov qword ptr [rbp + 160], r8
mov dword ptr [rbp + 152], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain0_n0_β]
mov qword ptr [rbp + 128], rax
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain0_n0_α:
                        jmp              xchain0_n1_α
xchain0_n0_as:
                        jmp              proc_PAT$0_γ
xchain0_n0_β:
                        jmp              xchain0_n3_β
xchain0_n0_af:
                        jmp              proc_PAT$0_ω
# IR_MATCH_CAPTURE_SAVE fc cell
xchain0_n1_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        jmp              xchain0_n4_α
xchain0_n1_β:
                        add              rsp, 16
                        jmp              proc_PAT$0_ω
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain0_n2_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        jmp              xchain0_n3_α
xchain0_n2_β:
                        sub              r12, 24
                        jmp              xchain0_n4_β
# IR_MATCH_LIT
xchain0_n3_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                        jg               xchain0_n2_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                        jne              xchain0_n2_β
                        add              r14d, 1
                        jmp              proc_PAT$0_γ
xchain0_n3_β:
                        sub              r14d, 1
                        jmp              xchain0_n2_β
# IR_MATCH_BREAK
xchain0_n4_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx10_0:
                        cmp              ecx, r15d
                        jl               .Lx10_237
                        add              rsp, 16
                        add              rsp, 16
                        jmp              proc_PAT$0_ω
.Lx10_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                        je               .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx10_238
                        add              rsp, 16
                        add              rsp, 16
                        jmp              proc_PAT$0_ω
.Lx10_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                        je               .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx10_239
                        add              rsp, 16
                        add              rsp, 16
                        jmp              proc_PAT$0_ω
.Lx10_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                        je               .Lx10_1
                        add              ecx, 1
                        cmp              ecx, r15d
                        jl               .Lx10_240
                        add              rsp, 16
                        add              rsp, 16
                        jmp              proc_PAT$0_ω
.Lx10_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                        je               .Lx10_1
                        add              ecx, 1
                        jmp              .Lx10_0
.Lx10_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                        jmp              xchain0_n2_α
xchain0_n4_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                        jmp              proc_PAT$0_ω
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 160], 1
jne 7f
mov ecx, dword ptr [rbp + 152]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
cmp qword ptr [rbp + 160], 1
jne 8f
mov eax, dword ptr [rbp + 152]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 152], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 128]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 168]
mov rbp, [rbp + 184]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 176]
lea rsp, [rbp + 192]
mov rbp, [rbp + 184]
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
  mov esi, 160
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
  .Lgvan0: .string "PAT"
  .Lgvan1: .string "WORD"
  .Lgvan2: .string "T1"
  .Lgvan3: .string "ITER"
  .Lgvan4: .string "S"
  .Lgvan5: .string "RESULT"
  .Lgvan6: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 7
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 7
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
  mov qword ptr [rsp + 1592], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
#     &TRIM = 1
# IR_LIT_STRING
xchain11_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 168], rax
                        jmp              xchain11_n1_α
.Lx12_0:
                        .quad            .Lx12_0_s
.Lx12_0_s:
                        .string          "TRIM"
# IR_LIT_INTEGER
xchain11_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 200], rax
                        jmp              xchain11_n2_α
.Lx13_0:
                        .quad            1
xchain11_n2_α:
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
.Lrkfn15:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                        je               xchain11_n3_α
                        jmp              xchain11_n3_α
xchain11_n2_β:
                        jmp              xchain11_n3_α
#     &STLIMIT = 1000000000
# IR_LIT_STRING
xchain11_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 296], rax
                        jmp              xchain11_n4_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "STLIMIT"
# IR_LIT_INTEGER
xchain11_n4_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 328], rax
                        jmp              xchain11_n5_α
.Lx17_0:
                        .quad            1000000000
xchain11_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn19:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                        je               xchain11_n6_α
                        jmp              xchain11_n6_α
xchain11_n5_β:
                        jmp              xchain11_n6_α
#     PAT = BREAK(',') . WORD ','
# IR_LIT_STRING
xchain11_n6_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 424], rax
                        jmp              xchain11_n7_α
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "PAT$0"
xchain11_n7_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn22:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                        je               xchain11_n9_α
                        jmp              xchain11_n8_α
xchain11_n7_β:
                        jmp              xchain11_n9_α
# IR_ASSIGN gva
xchain11_n8_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        jmp              xchain11_n9_α
#     T1 = TIME()
xchain11_n9_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn25:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rbp + 480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                        je               xchain11_n11_α
                        jmp              xchain11_n10_α
xchain11_n9_β:
                        jmp              xchain11_n11_α
# IR_ASSIGN gva
xchain11_n10_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        jmp              xchain11_n11_α
#     ITER = 0
# IR_LIT_INTEGER
xchain11_n11_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 520], rax
                        jmp              xchain11_n12_α
.Lx27_0:
                        .quad            0
# IR_ASSIGN gva
xchain11_n12_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        jmp              xchain11_n13_α
# OUTER   ITER = LT(ITER, 500000) ITER + 1   :F(DONE)
# IR_VAR
xchain11_n13_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        jmp              xchain11_n14_α
# IR_LIT_INTEGER
xchain11_n14_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 696], rax
                        jmp              xchain11_n16_α
.Lx30_0:
                        .quad            500000
# DONE    T2 = TIME()
xchain11_n15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn32:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                        je               xchain11_n18_α
                        jmp              xchain11_n17_α
xchain11_n15_β:
                        jmp              xchain11_n18_α
# IR_COERCE_NUMERIC
xchain11_n16_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 7
                        je               .Lx34_1
                        cmp              eax, 6
                        jne              .Lx34_0
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 6
                        jne              .Lx34_0
.Lx34_1:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        jmp              xchain11_n19_α
.Lx34_0:
                        lea              rdi, [rbp + 720]
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 656]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain11_n19_α
# IR_ASSIGN gva
xchain11_n17_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        jmp              xchain11_n18_α
#     OUTPUT = "result: " RESULT
# IR_LIT_STRING
xchain11_n18_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 1352], rax
                        jmp              xchain11_n20_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "result: "
# IR_COERCE_NUMERIC
xchain11_n19_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 7
                        je               .Lx38_1
                        cmp              eax, 6
                        jne              .Lx38_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                        jne              .Lx38_0
.Lx38_1:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        jmp              xchain11_n21_α
.Lx38_0:
                        lea              rdi, [rbp + 688]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 624]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                        jmp              xchain11_n21_α
# IR_VAR
xchain11_n20_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        jmp              xchain11_n22_α
# IR_CMP_TEST
xchain11_n21_α:
                        lea              rdi, [rbp + 656]
                        lea              rsi, [rbp + 624]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                        jns              xchain11_n15_α
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        jmp              xchain11_n24_α
xchain11_n22_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        jmp              xchain11_n25_α
#     OUTPUT = "ms: " (T2 - T1)
# IR_LIT_STRING
xchain11_n23_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 1464], rax
                        jmp              xchain11_n26_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "ms: "
# IR_VAR
xchain11_n24_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        jmp              xchain11_n27_α
# IR_ASSIGN global
xchain11_n25_α:
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              rdi, qword ptr [rip + .Lx45_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        jmp              xchain11_n23_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "OUTPUT"
# IR_VAR
xchain11_n26_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        jmp              xchain11_n28_α
# IR_LIT_INTEGER
xchain11_n27_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 824], rax
                        jmp              xchain11_n29_α
.Lx47_0:
                        .quad            1
# IR_VAR
xchain11_n28_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        jmp              xchain11_n30_α
xchain11_n29_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 100
                        je               .Lx49_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 6
                        jne              .Lx49_2
.Lx49_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                        jmp              xchain11_n31_α
.Lx49_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 0
                        lea              r9, [rbp + 752]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain11_n31_α
.Lx49_2:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               xchain11_n15_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        jmp              xchain11_n31_α
xchain11_n29_β:
                        jmp              xchain11_n15_α
xchain11_n30_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 100
                        je               .Lx50_0
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 100
                        je               .Lx50_0
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 6
                        jne              .Lx50_2
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 6
                        jne              .Lx50_2
.Lx50_1:
                        mov              rax, qword ptr [rbp + 1528]
                        mov              rcx, qword ptr [rbp + 1560]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1488], 6
                        mov              qword ptr [rbp + 1496], rax
                        jmp              xchain11_n32_α
.Lx50_0:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 1
                        lea              r9, [rbp + 1488]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                        jne              xchain11_n32_α
.Lx50_2:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                        je               main_γ
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        jmp              xchain11_n32_α
xchain11_n30_β:
                        jmp              main_γ
xchain11_n31_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        jmp              xchain11_n33_α
xchain11_n32_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        jmp              xchain11_n34_α
# IR_ASSIGN gva
xchain11_n33_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        jmp              xchain11_n35_α
# IR_ASSIGN global
xchain11_n34_α:
                        mov              rsi, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        jmp              main_γ
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "OUTPUT"
#     S = 'alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,'
# IR_LIT_STRING
xchain11_n35_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 872], rax
                        jmp              xchain11_n36_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,"
# IR_ASSIGN gva
xchain11_n36_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        jmp              xchain11_n37_α
#     RESULT = ''
# IR_LIT_STRING
xchain11_n37_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 920], rax
                        jmp              xchain11_n38_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          ""
# IR_ASSIGN gva
xchain11_n38_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        jmp              xchain11_n39_α
# INNER   S PAT = ''                          :F(OUTER)
# IR_VAR
xchain11_n39_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        jmp              xchain11_n40_α
# IR_MATCH_HEAD
xchain11_n40_α:
                        mov              qword ptr [rbp + 1000], rbp
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 992], r12
                        mov              qword ptr [rbp + 976], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 968], rax
                        mov              dword ptr [rbp + 960], 0
.Lx61_0:
                        mov              r14d, dword ptr [rbp + 960]
                        jmp              xchain11_n41_α
xchain11_n40_β:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, r15d
                        jg               .Lx61_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                        jne              .Lx61_1
                        jmp              .Lx61_0
.Lx61_1:
                        mov              rax, qword ptr [rbp + 968]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 976]
                        mov              r12, qword ptr [rbp + 992]
                        mov              rbp, qword ptr [rbp + 1000]
                        jmp              xchain11_n13_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain11_n41_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                        jne              .Lx62_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                        jne              .Lx62_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                        jne              .Lx62_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                        jmp              .Lx62_10
.Lx62_9:
                        xor              eax, eax
.Lx62_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx62_11:
                        test             rax, rax
                        jz               .Lx62_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx62_4]
                        lea              rdx, [rip + .Lx62_5]
                        jmp              rax
.Lx62_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 960], eax
                        jmp              xchain11_n42_α
.Lx62_5:
                        jmp              xchain11_n40_β
.Lx62_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx62_2:
                        test             rax, rax
                        je               .Lx62_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_7]
                        lea              rdx, [rip + .Lx62_8]
                        jmp              rax
.Lx62_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx62_2
.Lx62_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                        jmp              .Lx62_2
.Lx62_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                        js               xchain11_n40_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx62_6]
                        sub              rsp, 8
                        push             rax
                        jmp              xchain11_n42_α
.Lx62_6:
                        add              rsp, 16
                        jmp              xchain11_n40_β
xchain11_n41_β:
                        jmp              qword ptr [rsp]
# IR_MATCH_RELEASE
xchain11_n42_α:
                        mov              rax, qword ptr [rbp + 968]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rbp + 984], r14
                        mov              rsp, qword ptr [rbp + 976]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx64_1:
                        test             rax, rax
                        je               .Lx64_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx64_3]
                        lea              rdx, [rip + .Lx64_4]
                        jmp              rax
.Lx64_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx64_1
.Lx64_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                        jmp              .Lx64_1
.Lx64_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 992]
                        jmp              xchain11_n43_α
# IR_LIT_STRING
xchain11_n43_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1032], rax
                        jmp              xchain11_n44_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          ""
# IR_MATCH_REPLACE
xchain11_n44_α:
                        mov              rdi, qword ptr [rip + .Lx67_0]
                        mov              rsi, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              ecx, dword ptr [rbp + 960]
                        mov              r8, qword ptr [rbp + 984]
                        lea              r9, [rbp + 1024]
                        call             rt_match_replace@PLT
                        jmp              .Lx67_1
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "S"
.Lx67_1:
                        mov              rbp, qword ptr [rbp + 1000]
                        jmp              xchain11_n45_α
#     RESULT = RESULT WORD               :(INNER)
# IR_VAR
xchain11_n45_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        jmp              xchain11_n46_α
# IR_VAR
xchain11_n46_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        jmp              xchain11_n47_α
xchain11_n47_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        jmp              xchain11_n48_α
# IR_ASSIGN gva
xchain11_n48_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        jmp              xchain11_n39_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1592]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1592]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "WORD"
.S1: .string "PAT"
.text
