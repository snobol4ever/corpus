  .intel_syntax noprefix
  .text
  .globl proc_INC_α
proc_INC_α:
#=======================================================================================================================
    .global proc_INC_α
    .global proc_INC_β
    .global proc_INC_γ
    .global proc_INC_ω
  sub rsp, 1392
  mov [rsp + 1368], rcx
  mov [rsp + 1376], rdx
  mov [rsp + 1384], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1360
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1352], rsp
proc_INC_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_INC_γ
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_INC_γ
.Lx2_0:
 .quad 1
 xchain0_n2_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 400]
 cmp eax, 100
 je .Lx3_0
 mov eax, dword ptr [rbp + 400]
 cmp eax, 6
 jne .Lx3_2
.Lx3_1:
 mov rax, qword ptr [rbp + 408]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 368], 6
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n3_α
.Lx3_0:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 0
 lea r9, [rbp + 368]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx3_3
.Lx3_2:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_INC_γ
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
.Lx3_3:
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_INC_γ
# IR_ASSIGN gva
 xchain0_n3_α:
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp proc_INC_γ
 xchain0_n3_β:
 jmp proc_INC_γ
proc_INC_res:
add rsp, 8
pop rsp
proc_INC_β:
jmp proc_INC_ω
proc_INC_γ:
mov rdi, [rsp]
mov rsi, [rsp + 8]
mov rax, [rsp + 1368]
mov rbp, [rbp + 1384]
lea rsp, [rsp + 1392]
jmp rax
proc_INC_ω:
mov rax, [rsp + 1376]
mov rbp, [rbp + 1384]
lea rsp, [rsp + 1392]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "INC"
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
  lea rsi, [rip + proc_INC_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1360
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "INC"
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
  mov qword ptr [rsp + 1352], rsp
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
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain5_n4_α
 xchain5_n3_β:
 jmp xchain5_n6_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "STLIMIT"
# IR_LIT_INTEGER
 xchain5_n4_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain5_n5_α
 xchain5_n4_β:
 jmp xchain5_n6_α
.Lx11_0:
 .quad 1000000000
 xchain5_n5_α:
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
  .Lrkfn13: .string "SNO$KWSET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn13]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain5_n6_α
 jmp xchain5_n6_α
 xchain5_n5_β:
 jmp xchain5_n6_α
 xchain5_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn15: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn15]
 lea rsi, [rbp + 496]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain5_n8_α
 jmp xchain5_n7_α
 xchain5_n6_β:
 jmp xchain5_n8_α
# IR_ASSIGN gva
 xchain5_n7_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain5_n8_α
 xchain5_n7_β:
 jmp xchain5_n8_α
# IR_LIT_INTEGER
 xchain5_n8_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain5_n9_α
 xchain5_n8_β:
 jmp xchain5_n10_α
.Lx17_0:
 .quad 0
# IR_ASSIGN gva
 xchain5_n9_α:
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain5_n10_α
 xchain5_n9_β:
 jmp xchain5_n10_α
# IR_LIT_INTEGER
 xchain5_n10_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain5_n11_α
 xchain5_n10_β:
 jmp xchain5_n12_α
.Lx19_0:
 .quad 0
# IR_ASSIGN gva
 xchain5_n11_α:
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain5_n12_α
 xchain5_n11_β:
 jmp xchain5_n12_α
# IR_VAR
 xchain5_n12_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain5_n13_α
 xchain5_n12_β:
 jmp xchain5_n14_α
# IR_LIT_INTEGER
 xchain5_n13_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain5_n15_α
 xchain5_n13_β:
 jmp xchain5_n14_α
.Lx22_0:
 .quad 10000000
 xchain5_n14_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn24: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 1040]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain5_n17_α
 jmp xchain5_n16_α
 xchain5_n14_β:
 jmp xchain5_n17_α
# IR_COERCE_NUMERIC
 xchain5_n15_α:
 mov eax, dword ptr [rbp + 784]
 cmp eax, 7
 je .Lx26_1
 cmp eax, 6
 jne .Lx26_0
 mov eax, dword ptr [rbp + 752]
 cmp eax, 6
 jne .Lx26_0
.Lx26_1:
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
 jmp .Lx26_2
.Lx26_0:
 lea rdi, [rbp + 784]
 lea rsi, [rbp + 752]
 lea rdx, [rbp + 720]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx26_2:
 jmp xchain5_n18_α
 xchain5_n15_β:
 jmp xchain5_n14_α
# IR_ASSIGN gva
 xchain5_n16_α:
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain5_n17_α
 xchain5_n16_β:
 jmp xchain5_n17_α
# IR_LIT_STRING
 xchain5_n17_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain5_n19_α
 xchain5_n17_β:
 jmp xchain5_n22_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain5_n18_α:
 mov eax, dword ptr [rbp + 752]
 cmp eax, 7
 je .Lx30_1
 cmp eax, 6
 jne .Lx30_0
 mov eax, dword ptr [rbp + 784]
 cmp eax, 6
 jne .Lx30_0
.Lx30_1:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
 jmp .Lx30_2
.Lx30_0:
 lea rdi, [rbp + 752]
 lea rsi, [rbp + 784]
 lea rdx, [rbp + 688]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx30_2:
 jmp xchain5_n20_α
 xchain5_n18_β:
 jmp xchain5_n14_α
# IR_VAR
 xchain5_n19_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain5_n21_α
 xchain5_n19_β:
 jmp xchain5_n22_α
# IR_CMP_TEST
 xchain5_n20_α:
 lea rdi, [rbp + 720]
 lea rsi, [rbp + 688]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain5_n14_α
 mov qword ptr [rbp + 656], 0
 mov qword ptr [rbp + 664], 0
 jmp xchain5_n23_α
 xchain5_n20_β:
 jmp xchain5_n14_α
 xchain5_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1104]
 mov rsi, qword ptr [rbp + 1112]
 mov rdx, qword ptr [rbp + 1136]
 mov rcx, qword ptr [rbp + 1144]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain5_n24_α
 xchain5_n21_β:
 jmp xchain5_n22_α
# IR_LIT_STRING
 xchain5_n22_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain5_n25_α
 xchain5_n22_β:
 jmp main_γ
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "ms: "
# IR_VAR
 xchain5_n23_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain5_n26_α
 xchain5_n23_β:
 jmp xchain5_n14_α
# IR_ASSIGN global
 xchain5_n24_α:
 mov rsi, qword ptr [rbp + 1072]
 mov rdx, qword ptr [rbp + 1080]
 mov rdi, qword ptr [rip + .Lx37_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain5_n22_α
 xchain5_n24_β:
 jmp xchain5_n22_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain5_n25_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain5_n27_α
 xchain5_n25_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain5_n26_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain5_n28_α
 xchain5_n26_β:
 jmp xchain5_n14_α
.Lx39_0:
 .quad 1
# IR_VAR
 xchain5_n27_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain5_n29_α
 xchain5_n27_β:
 jmp main_γ
 xchain5_n28_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 848]
 cmp eax, 100
 je .Lx41_0
 mov eax, dword ptr [rbp + 848]
 cmp eax, 6
 jne .Lx41_2
.Lx41_1:
 mov rax, qword ptr [rbp + 856]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 816], 6
 mov qword ptr [rbp + 824], rax
 jmp xchain5_n30_α
.Lx41_0:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 0
 lea r9, [rbp + 816]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx41_3
.Lx41_2:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain5_n14_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
.Lx41_3:
 jmp xchain5_n30_α
 xchain5_n28_β:
 jmp xchain5_n14_α
 xchain5_n29_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 100
 je .Lx42_0
 mov eax, dword ptr [rbp + 1312]
 cmp eax, 100
 je .Lx42_0
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 6
 jne .Lx42_2
 mov eax, dword ptr [rbp + 1312]
 cmp eax, 6
 jne .Lx42_2
.Lx42_1:
 mov rax, qword ptr [rbp + 1288]
 mov rcx, qword ptr [rbp + 1320]
 sub rax, rcx
 mov qword ptr [rbp + 1248], 6
 mov qword ptr [rbp + 1256], rax
 jmp xchain5_n31_α
.Lx42_0:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1312]
 mov rcx, qword ptr [rbp + 1320]
 mov r8d, 1
 lea r9, [rbp + 1248]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx42_3
.Lx42_2:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1312]
 mov rcx, qword ptr [rbp + 1320]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
.Lx42_3:
 jmp xchain5_n31_α
 xchain5_n29_β:
 jmp main_γ
 xchain5_n30_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 816]
 mov rcx, qword ptr [rbp + 824]
 call str_concat_d@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain5_n32_α
 xchain5_n30_β:
 jmp xchain5_n14_α
 xchain5_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1216]
 mov rsi, qword ptr [rbp + 1224]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain5_n33_α
 xchain5_n31_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain5_n32_α:
 mov rax, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain5_n34_α
 xchain5_n32_β:
 jmp xchain5_n14_α
# IR_ASSIGN global
 xchain5_n33_α:
 mov rsi, qword ptr [rbp + 1184]
 mov rdx, qword ptr [rbp + 1192]
 mov rdi, qword ptr [rip + .Lx46_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp main_γ
 xchain5_n33_β:
 jmp main_γ
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain5_n34_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain5_n35_α
 xchain5_n34_β:
 jmp xchain5_n12_α
 xchain5_n35_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx49_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx49_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx49_3]
 lea rdx, [rip + .Lx49_4]
 jmp rax
.Lx49_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx49_2
.Lx49_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx49_2
.Lx49_1:
 call rt_faildescr@PLT
.Lx49_2:
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain5_n12_α
 jmp xchain5_n36_α
 xchain5_n35_β:
 jmp xchain5_n12_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "INC"
# IR_ASSIGN gva
 xchain5_n36_α:
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain5_n12_α
 xchain5_n36_β:
 jmp xchain5_n12_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1352]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1352]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
