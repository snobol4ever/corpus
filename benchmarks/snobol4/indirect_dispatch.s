  .intel_syntax noprefix
  .text
  .globl proc_ADD1_α
proc_ADD1_α:
#=======================================================================================================================
    .global proc_ADD1_α
    .global proc_ADD1_β
    .global proc_ADD1_γ
    .global proc_ADD1_ω
  sub rsp, 1024
  mov [rsp + 1000], rcx
  mov [rsp + 1008], rdx
  mov [rsp + 1016], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 992
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 984], rsp
proc_ADD1_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ADD1_γ
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_ADD1_γ
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 272]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [rbp + 272]
 cmp eax, 6
 jne .Lx3_2
.Lx3_1:
 mov rax, qword ptr [rbp + 280]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 240], 6
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n3_α
.Lx3_0:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 0
 lea r9, [rbp + 240]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx3_3
.Lx3_2:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_ADD1_γ
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
.Lx3_3:
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_ADD1_γ
# IR_ASSIGN gva
 xchain0_n3_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp proc_ADD1_γ
 xchain0_n3_β:
 jmp proc_ADD1_γ
proc_ADD1_res:
add rsp, 8
pop rbp
proc_ADD1_β:
jmp proc_ADD1_ω
proc_ADD1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1000]
lea rsp, [rbp + 1024]
mov rbp, [rbp + 1016]
jmp rax
proc_ADD1_ω:
mov rax, [rbp + 1008]
lea rsp, [rbp + 1024]
mov rbp, [rbp + 1016]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "ADD1"
  .Lstartup_pp0_0: .string "V"
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
  lea rsi, [rip + proc_ADD1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 992
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "ADD1"
  .Lgvan1: .string "V"
  .Lgvan2: .string "FN"
  .Lgvan3: .string "X"
  .Lgvan4: .string "N"
  .Lgvan5: .string "R"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 6
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 6
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
  mov qword ptr [rsp + 984], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_LIT_STRING
 xchain5_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain5_n1_α
 xchain5_n0_β:
 jmp xchain5_n3_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "TRIM"
# IR_LIT_INTEGER
 xchain5_n1_α:
 mov qword ptr [rbp + 192], 6
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain5_n2_α
 xchain5_n1_β:
 jmp xchain5_n3_α
.Lx7_0:
 .quad 1
 xchain5_n2_α:
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
  .Lrkfn9: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn9]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain5_n3_α
 jmp xchain5_n3_α
 xchain5_n2_β:
 jmp xchain5_n3_α
# IR_LIT_STRING
 xchain5_n3_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain5_n4_α
 xchain5_n3_β:
 jmp xchain5_n5_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "ADD1"
# IR_ASSIGN gva
 xchain5_n4_α:
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain5_n5_α
 xchain5_n4_β:
 jmp xchain5_n5_α
# IR_LIT_INTEGER
 xchain5_n5_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain5_n6_α
 xchain5_n5_β:
 jmp xchain5_n7_α
.Lx12_0:
 .quad 5
# IR_ASSIGN gva
 xchain5_n6_α:
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain5_n7_α
 xchain5_n6_β:
 jmp xchain5_n7_α
# IR_LIT_INTEGER
 xchain5_n7_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain5_n8_α
 xchain5_n7_β:
 jmp xchain5_n9_α
.Lx14_0:
 .quad 0
# IR_ASSIGN gva
 xchain5_n8_α:
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain5_n9_α
 xchain5_n8_β:
 jmp xchain5_n9_α
# IR_VAR
 xchain5_n9_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain5_n10_α
 xchain5_n9_β:
 jmp xchain5_n11_α
# IR_LIT_INTEGER
 xchain5_n10_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain5_n12_α
 xchain5_n10_β:
 jmp xchain5_n11_α
.Lx17_0:
 .quad 500
# IR_VAR
 xchain5_n11_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain5_n13_α
 xchain5_n11_β:
 jmp main_γ
# IR_COERCE_NUMERIC
 xchain5_n12_α:
 mov eax, dword ptr [rbp + 656]
 cmp eax, 7
 je .Lx20_1
 cmp eax, 6
 jne .Lx20_0
 mov eax, dword ptr [rbp + 624]
 cmp eax, 6
 jne .Lx20_0
.Lx20_1:
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
 jmp .Lx20_2
.Lx20_0:
 lea rdi, [rbp + 656]
 lea rsi, [rbp + 624]
 lea rdx, [rbp + 592]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx20_2:
 jmp xchain5_n14_α
 xchain5_n12_β:
 jmp xchain5_n11_α
# IR_ASSIGN global
 xchain5_n13_α:
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 mov rdi, qword ptr [rip + .Lx21_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp main_γ
 xchain5_n13_β:
 jmp main_γ
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "OUTPUT"
# IR_COERCE_NUMERIC
 xchain5_n14_α:
 mov eax, dword ptr [rbp + 624]
 cmp eax, 7
 je .Lx23_1
 cmp eax, 6
 jne .Lx23_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx23_0
.Lx23_1:
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
 jmp .Lx23_2
.Lx23_0:
 lea rdi, [rbp + 624]
 lea rsi, [rbp + 656]
 lea rdx, [rbp + 560]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx23_2:
 jmp xchain5_n15_α
 xchain5_n14_β:
 jmp xchain5_n11_α
# IR_CMP_TEST
 xchain5_n15_α:
 lea rdi, [rbp + 592]
 lea rsi, [rbp + 560]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain5_n11_α
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 jmp xchain5_n16_α
 xchain5_n15_β:
 jmp xchain5_n11_α
# IR_VAR
 xchain5_n16_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain5_n17_α
 xchain5_n16_β:
 jmp xchain5_n11_α
# IR_LIT_INTEGER
 xchain5_n17_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain5_n18_α
 xchain5_n17_β:
 jmp xchain5_n11_α
.Lx27_0:
 .quad 1
 xchain5_n18_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 720]
 cmp eax, 100
 je .Lx28_0
 mov eax, dword ptr [rbp + 720]
 cmp eax, 6
 jne .Lx28_2
.Lx28_1:
 mov rax, qword ptr [rbp + 728]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 688], 6
 mov qword ptr [rbp + 696], rax
 jmp xchain5_n19_α
.Lx28_0:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 mov r8d, 0
 lea r9, [rbp + 688]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx28_3
.Lx28_2:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain5_n11_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
.Lx28_3:
 jmp xchain5_n19_α
 xchain5_n18_β:
 jmp xchain5_n11_α
 xchain5_n19_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call str_concat_d@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain5_n20_α
 xchain5_n19_β:
 jmp xchain5_n11_α
# IR_ASSIGN gva
 xchain5_n20_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain5_n21_α
 xchain5_n20_β:
 jmp xchain5_n11_α
# IR_VAR
 xchain5_n21_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain5_n22_α
 xchain5_n21_β:
 jmp xchain5_n9_α
# IR_VAR
 xchain5_n22_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain5_n23_α
 xchain5_n22_β:
 jmp xchain5_n9_α
 xchain5_n23_α:
# BOX IR_CALL APPLY(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
  .section .rodata
  .Lrkfn34: .string "APPLY"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn34]
 lea rsi, [rbp + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain5_n9_α
 jmp xchain5_n24_α
 xchain5_n23_β:
 jmp xchain5_n9_α
# IR_ASSIGN gva
 xchain5_n24_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain5_n9_α
 xchain5_n24_β:
 jmp xchain5_n9_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 984]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 984]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
