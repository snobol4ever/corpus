  .intel_syntax noprefix
  .text
  .globl proc_FIB_α
proc_FIB_α:
#=======================================================================================================================
    .global proc_FIB_α
    .global proc_FIB_β
    .global proc_FIB_γ
    .global proc_FIB_ω
  sub rsp, 1456
  mov [rsp + 1432], rcx
  mov [rsp + 1440], rdx
  mov [rsp + 1448], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1424
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1416], rsp
proc_FIB_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n3_α
 xchain0_n1_β:
 jmp xchain0_n2_α
.Lx2_0:
 .quad 2
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp proc_FIB_γ
# IR_COERCE_NUMERIC
 xchain0_n3_α:
 mov eax, dword ptr [rbp + 528]
 cmp eax, 7
 je .Lx5_1
 cmp eax, 6
 jne .Lx5_0
 mov eax, dword ptr [rbp + 496]
 cmp eax, 6
 jne .Lx5_0
.Lx5_1:
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
 jmp .Lx5_2
.Lx5_0:
 lea rdi, [rbp + 528]
 lea rsi, [rbp + 496]
 lea rdx, [rbp + 464]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx5_2:
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_FIB_γ
.Lx6_0:
 .quad 1
# IR_COERCE_NUMERIC
 xchain0_n5_α:
 mov eax, dword ptr [rbp + 496]
 cmp eax, 7
 je .Lx8_1
 cmp eax, 6
 jne .Lx8_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx8_0
.Lx8_1:
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
 jmp .Lx8_2
.Lx8_0:
 lea rdi, [rbp + 496]
 lea rsi, [rbp + 528]
 lea rdx, [rbp + 432]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx8_2:
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n2_α
 xchain0_n6_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx9_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx9_2
.Lx9_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rbp + 688], 6
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n8_α
.Lx9_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 mov r8d, 1
 lea r9, [rbp + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx9_3
.Lx9_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
.Lx9_3:
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_FIB_γ
# IR_CMP_TEST
 xchain0_n7_α:
 lea rdi, [rbp + 464]
 lea rsi, [rbp + 432]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n2_α
 mov qword ptr [rbp + 400], 0
 mov qword ptr [rbp + 408], 0
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n2_α
 xchain0_n8_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx13_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx13_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx13_3]
 lea rdx, [rip + .Lx13_4]
 jmp rax
.Lx13_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx13_2
.Lx13_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx13_2
.Lx13_1:
 call rt_faildescr@PLT
.Lx13_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je proc_FIB_γ
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_FIB_γ
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "FIB"
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp proc_FIB_γ
 xchain0_n11_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 560]
 mov rcx, qword ptr [rbp + 568]
 call str_concat_d@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp proc_FIB_γ
.Lx17_0:
 .quad 2
# IR_ASSIGN gva
 xchain0_n13_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp proc_FIB_γ
 xchain0_n13_β:
 jmp xchain0_n2_α
 xchain0_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 864]
 cmp eax, 100
 je .Lx19_0
 mov eax, dword ptr [rbp + 864]
 cmp eax, 6
 jne .Lx19_2
.Lx19_1:
 mov rax, qword ptr [rbp + 872]
 mov rcx, 2
 sub rax, rcx
 mov qword ptr [rbp + 832], 6
 mov qword ptr [rbp + 840], rax
 jmp xchain0_n15_α
.Lx19_0:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 1
 lea r9, [rbp + 832]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx19_3
.Lx19_2:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
.Lx19_3:
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_FIB_γ
 xchain0_n15_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx21_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx21_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx21_3]
 lea rdx, [rip + .Lx21_4]
 jmp rax
.Lx21_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx21_2
.Lx21_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx21_2
.Lx21_1:
 call rt_faildescr@PLT
.Lx21_2:
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je proc_FIB_γ
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_FIB_γ
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "FIB"
 xchain0_n16_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx22_0
 mov eax, dword ptr [rbp + 784]
 cmp eax, 100
 je .Lx22_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx22_2
 mov eax, dword ptr [rbp + 784]
 cmp eax, 6
 jne .Lx22_2
.Lx22_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, qword ptr [rbp + 792]
 add rax, rcx
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n17_α
.Lx22_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 0
 lea r9, [rbp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx22_3
.Lx22_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_FIB_γ
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
.Lx22_3:
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_FIB_γ
# IR_ASSIGN gva
 xchain0_n17_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp proc_FIB_γ
 xchain0_n17_β:
 jmp proc_FIB_γ
proc_FIB_res:
add rsp, 8
pop rsp
proc_FIB_β:
jmp proc_FIB_ω
proc_FIB_γ:
mov rdi, [rsp]
mov rsi, [rsp + 8]
mov rax, [rsp + 1432]
mov rbp, [rbp + 1448]
lea rsp, [rsp + 1456]
jmp rax
proc_FIB_ω:
mov rax, [rsp + 1440]
mov rbp, [rbp + 1448]
lea rsp, [rsp + 1456]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "FIB"
  .Lstartup_pp0_0: .string "N"
  .align 8
  .Lstartup_pnames0:
  .quad .Lstartup_pp0_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + .Lstartup_pnames0]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_FIB_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1424
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "FIB"
  .Lgvan1: .string "N"
  .Lgvan2: .string "T1"
  .Lgvan3: .string "R"
  .Lgvan4: .string "T2"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 5
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 5
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
  mov qword ptr [rsp + 1416], rsp
  mov r12, qword ptr [1879048192]
  mov rbp, rsp
main_α_body:
# IR_LIT_STRING
 xchain24_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain24_n1_α
 xchain24_n0_β:
 jmp xchain24_n3_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain24_n1_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain24_n2_α
 xchain24_n1_β:
 jmp xchain24_n3_α
.Lx26_0:
 .quad 1
 xchain24_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn28: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn28]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain24_n3_α
 jmp xchain24_n3_α
 xchain24_n2_β:
 jmp xchain24_n3_α
# IR_LIT_STRING
 xchain24_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain24_n4_α
 xchain24_n3_β:
 jmp xchain24_n6_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain24_n4_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain24_n5_α
 xchain24_n4_β:
 jmp xchain24_n6_α
.Lx30_0:
 .quad 1000000000
 xchain24_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn32: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn32]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain24_n6_α
 jmp xchain24_n6_α
 xchain24_n5_β:
 jmp xchain24_n6_α
 xchain24_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn34: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn34]
 lea rsi, [rbp + 960]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain24_n8_α
 jmp xchain24_n7_α
 xchain24_n6_β:
 jmp xchain24_n8_α
# IR_ASSIGN gva
 xchain24_n7_α:
 mov rax, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain24_n8_α
 xchain24_n7_β:
 jmp xchain24_n8_α
# IR_LIT_INTEGER
 xchain24_n8_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain24_n9_α
 xchain24_n8_β:
 jmp xchain24_n11_α
.Lx36_0:
 .quad 30
 xchain24_n9_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx38_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx38_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx38_3]
 lea rdx, [rip + .Lx38_4]
 jmp rax
.Lx38_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx38_2
.Lx38_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx38_2
.Lx38_1:
 call rt_faildescr@PLT
.Lx38_2:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain24_n11_α
 jmp xchain24_n10_α
 xchain24_n9_β:
 jmp xchain24_n11_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "FIB"
# IR_ASSIGN gva
 xchain24_n10_α:
 mov rax, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain24_n11_α
 xchain24_n10_β:
 jmp xchain24_n11_α
 xchain24_n11_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn41: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn41]
 lea rsi, [rbp + 1104]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain24_n13_α
 jmp xchain24_n12_α
 xchain24_n11_β:
 jmp xchain24_n13_α
# IR_ASSIGN gva
 xchain24_n12_α:
 mov rax, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain24_n13_α
 xchain24_n12_β:
 jmp xchain24_n13_α
# IR_LIT_STRING
 xchain24_n13_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain24_n14_α
 xchain24_n13_β:
 jmp xchain24_n16_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "result: "
# IR_VAR
 xchain24_n14_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain24_n15_α
 xchain24_n14_β:
 jmp xchain24_n16_α
 xchain24_n15_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1168]
 mov rsi, qword ptr [rbp + 1176]
 mov rdx, qword ptr [rbp + 1200]
 mov rcx, qword ptr [rbp + 1208]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain24_n17_α
 xchain24_n15_β:
 jmp xchain24_n16_α
# IR_LIT_STRING
 xchain24_n16_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain24_n18_α
 xchain24_n16_β:
 jmp main_γ
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "ms: "
# IR_ASSIGN global
 xchain24_n17_α:
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 mov rdi, qword ptr [rip + .Lx47_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain24_n16_α
 xchain24_n17_β:
 jmp xchain24_n16_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain24_n18_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain24_n19_α
 xchain24_n18_β:
 jmp main_γ
# IR_VAR
 xchain24_n19_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain24_n20_α
 xchain24_n19_β:
 jmp main_γ
 xchain24_n20_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1344]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 100
 je .Lx50_0
 mov eax, dword ptr [rbp + 1344]
 cmp eax, 6
 jne .Lx50_2
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 6
 jne .Lx50_2
.Lx50_1:
 mov rax, qword ptr [rbp + 1352]
 mov rcx, qword ptr [rbp + 1384]
 sub rax, rcx
 mov qword ptr [rbp + 1312], 6
 mov qword ptr [rbp + 1320], rax
 jmp xchain24_n21_α
.Lx50_0:
 mov rdi, qword ptr [rbp + 1344]
 mov rsi, qword ptr [rbp + 1352]
 mov rdx, qword ptr [rbp + 1376]
 mov rcx, qword ptr [rbp + 1384]
 mov r8d, 1
 lea r9, [rbp + 1312]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx50_3
.Lx50_2:
 mov rdi, qword ptr [rbp + 1344]
 mov rsi, qword ptr [rbp + 1352]
 mov rdx, qword ptr [rbp + 1376]
 mov rcx, qword ptr [rbp + 1384]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
.Lx50_3:
 jmp xchain24_n21_α
 xchain24_n20_β:
 jmp main_γ
 xchain24_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1312]
 mov rcx, qword ptr [rbp + 1320]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain24_n22_α
 xchain24_n21_β:
 jmp main_γ
# IR_ASSIGN global
 xchain24_n22_α:
 mov rsi, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov rdi, qword ptr [rip + .Lx52_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp main_γ
 xchain24_n22_β:
 jmp main_γ
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1416]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1416]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
