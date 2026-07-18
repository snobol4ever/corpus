  .intel_syntax noprefix
  .text
  .globl proc_reverse$2_α
proc_reverse$2_α:
#=======================================================================================================================
    .global proc_reverse$2_α
    .global proc_reverse$2_β
    .global proc_reverse$2_γ
    .global proc_reverse$2_ω
  sub rsp, 704
  mov [rsp + 680], rcx
  mov [rsp + 688], rdx
  mov [rsp + 696], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 672
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 672
  call rt_jmp_frame_lexprep@PLT
proc_reverse$2_α_body:
lea rax, [rip + xchain0_n12_β]
mov qword ptr [rbp + 608], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_reverse$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_reverse$2_ω
 jmp proc_reverse$2_ω
 xchain0_n5_β:
 jmp proc_reverse$2_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
 xchain0_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n5_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx23_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx23_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx23_3]
 lea rdx, [rip + .Lx23_4]
 jmp rax
.Lx23_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx23_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx23_2
.Lx23_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx23_2
.Lx23_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx23_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx23_2
.Lx23_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx23_2
.Lx23_1:
 call rt_faildescr@PLT
.Lx23_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n12_α
 xchain0_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain0_n12_α:
 lea rax, [rip + xchain0_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_reverse$2_γ
 xchain0_n12_β:
 jmp xchain0_n11_β
proc_reverse$2_res:
add rsp, 8
pop rbp
proc_reverse$2_β:
jmp qword ptr [rbp + 608]
proc_reverse$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_reverse$2_res]
push rax
mov rax, [rbp + 680]
mov rbp, [rbp + 696]
jmp rax
proc_reverse$2_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_$reverse_$3_α
proc_$reverse_$3_α:
#=======================================================================================================================
    .global proc_$reverse_$3_α
    .global proc_$reverse_$3_β
    .global proc_$reverse_$3_γ
    .global proc_$reverse_$3_ω
  sub rsp, 1600
  mov [rsp + 1576], rcx
  mov [rsp + 1584], rdx
  mov [rsp + 1592], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1568
  call rt_jmp_frame_lexprep@PLT
proc_$reverse_$3_α_body:
lea rax, [rip + xchain26_n16_β]
mov qword ptr [rbp + 1472], rax
 xchain26_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn28: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn28]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain26_n1_α
 xchain26_n0_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain26_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain26_n2_α
 xchain26_n1_β:
 jmp xchain26_n5_α
# IR_LIT_STRING
 xchain26_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain26_n3_α
 xchain26_n2_β:
 jmp xchain26_n5_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "[]"
 xchain26_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn33: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn33]
 lea rsi, [rbp + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain26_n5_α
 jmp xchain26_n4_α
 xchain26_n3_β:
 jmp xchain26_n5_α
# IR_VAR_REF
 xchain26_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain26_n6_α
 xchain26_n4_β:
 jmp xchain26_n5_α
 xchain26_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn37: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn37]
 lea rsi, [rbp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp xchain26_n7_α
 xchain26_n5_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain26_n6_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain26_n8_α
 xchain26_n6_β:
 jmp xchain26_n5_α
# IR_VAR_REF
 xchain26_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain26_n9_α
 xchain26_n7_β:
 jmp xchain26_n18_α
 xchain26_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn43: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn43]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain26_n5_α
 jmp xchain26_n10_α
 xchain26_n8_β:
 jmp xchain26_n5_α
# IR_LIT_STRING
 xchain26_n9_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain26_n11_α
 xchain26_n9_β:
 jmp proc_$reverse_$3_ω
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "."
# IR_VAR_REF
 xchain26_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain26_n12_α
 xchain26_n10_β:
 jmp xchain26_n5_α
# IR_VAR_REF
 xchain26_n11_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain26_n13_α
 xchain26_n11_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain26_n12_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain26_n14_α
 xchain26_n12_β:
 jmp xchain26_n5_α
# IR_VAR_REF
 xchain26_n13_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain26_n15_α
 xchain26_n13_β:
 jmp proc_$reverse_$3_ω
 xchain26_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
  .section .rodata
  .Lrkfn54: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn54]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain26_n5_α
 jmp xchain26_n16_α
 xchain26_n14_β:
 jmp xchain26_n5_α
 xchain26_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn56: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn56]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain26_n18_α
 jmp xchain26_n17_α
 xchain26_n15_β:
 jmp xchain26_n18_α
# IR_SUSPEND yield+resume
 xchain26_n16_α:
 lea rax, [rip + xchain26_n16_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain26_n16_β:
 jmp xchain26_n5_α
 xchain26_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+800]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn60: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn60]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain26_n18_α
 jmp xchain26_n19_α
 xchain26_n17_β:
 jmp xchain26_n18_α
 xchain26_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn62: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn62]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_$reverse_$3_ω
 jmp proc_$reverse_$3_ω
 xchain26_n18_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain26_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain26_n20_α
 xchain26_n19_β:
 jmp xchain26_n18_α
# IR_VAR_REF
 xchain26_n20_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain26_n21_α
 xchain26_n20_β:
 jmp xchain26_n18_α
 xchain26_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn68: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn68]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain26_n18_α
 jmp xchain26_n22_α
 xchain26_n21_β:
 jmp xchain26_n18_α
# IR_VAR_REF
 xchain26_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain26_n23_α
 xchain26_n22_β:
 jmp xchain26_n18_α
# IR_VAR_REF
 xchain26_n23_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain26_n24_α
 xchain26_n23_β:
 jmp xchain26_n18_α
 xchain26_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
  .section .rodata
  .Lrkfn74: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn74]
 lea rsi, [rbp + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain26_n18_α
 jmp xchain26_n25_α
 xchain26_n24_β:
 jmp xchain26_n18_α
# IR_VAR_REF
 xchain26_n25_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain26_n26_α
 xchain26_n25_β:
 jmp xchain26_n18_α
# IR_LIT_STRING
 xchain26_n26_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain26_n27_α
 xchain26_n26_β:
 jmp proc_$reverse_$3_ω
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "."
# IR_VAR_REF
 xchain26_n27_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain26_n28_α
 xchain26_n27_β:
 jmp proc_$reverse_$3_ω
# IR_VAR_REF
 xchain26_n28_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain26_n29_α
 xchain26_n28_β:
 jmp proc_$reverse_$3_ω
 xchain26_n29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+400]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 408], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+416]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn83: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn83]
 lea rsi, [rbp + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain26_n18_α
 jmp xchain26_n30_α
 xchain26_n29_β:
 jmp xchain26_n18_α
# IR_VAR_REF
 xchain26_n30_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain26_n31_α
 xchain26_n30_β:
 jmp xchain26_n18_α
 xchain26_n31_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx87_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx87_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx87_3]
 lea rdx, [rip + .Lx87_4]
 jmp rax
.Lx87_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx87_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx87_2
.Lx87_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx87_2
.Lx87_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx87_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx87_2
.Lx87_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx87_2
.Lx87_1:
 call rt_faildescr@PLT
.Lx87_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain26_n18_α
 jmp xchain26_n32_α
 xchain26_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "$reverse_/3"
# IR_SUSPEND yield+resume
 xchain26_n32_α:
 lea rax, [rip + xchain26_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_$reverse_$3_γ
 xchain26_n32_β:
 jmp xchain26_n31_β
proc_$reverse_$3_res:
add rsp, 8
pop rbp
proc_$reverse_$3_β:
jmp qword ptr [rbp + 1472]
proc_$reverse_$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_$reverse_$3_res]
push rax
mov rax, [rbp + 1576]
mov rbp, [rbp + 1592]
jmp rax
proc_$reverse_$3_ω:
mov rax, [rbp + 1584]
lea rsp, [rbp + 1600]
mov rbp, [rbp + 1592]
jmp rax
  .globl proc_append$3_α
proc_append$3_α:
#=======================================================================================================================
    .global proc_append$3_α
    .global proc_append$3_β
    .global proc_append$3_γ
    .global proc_append$3_ω
  sub rsp, 1600
  mov [rsp + 1576], rcx
  mov [rsp + 1584], rdx
  mov [rsp + 1592], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1568
  call rt_jmp_frame_lexprep@PLT
proc_append$3_α_body:
lea rax, [rip + xchain90_n16_β]
mov qword ptr [rbp + 1472], rax
 xchain90_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn92: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn92]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_append$3_ω
 jmp xchain90_n1_α
 xchain90_n0_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain90_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain90_n2_α
 xchain90_n1_β:
 jmp xchain90_n5_α
# IR_LIT_STRING
 xchain90_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain90_n3_α
 xchain90_n2_β:
 jmp xchain90_n5_α
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "[]"
 xchain90_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn97: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn97]
 lea rsi, [rbp + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n4_α
 xchain90_n3_β:
 jmp xchain90_n5_α
# IR_VAR_REF
 xchain90_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain90_n6_α
 xchain90_n4_β:
 jmp xchain90_n5_α
 xchain90_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn101: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn101]
 lea rsi, [rbp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_append$3_ω
 jmp xchain90_n7_α
 xchain90_n5_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain90_n6_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain90_n8_α
 xchain90_n6_β:
 jmp xchain90_n5_α
# IR_VAR_REF
 xchain90_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain90_n9_α
 xchain90_n7_β:
 jmp xchain90_n18_α
 xchain90_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn107: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn107]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n10_α
 xchain90_n8_β:
 jmp xchain90_n5_α
# IR_LIT_STRING
 xchain90_n9_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain90_n11_α
 xchain90_n9_β:
 jmp proc_append$3_ω
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain90_n12_α
 xchain90_n10_β:
 jmp xchain90_n5_α
# IR_VAR_REF
 xchain90_n11_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain90_n13_α
 xchain90_n11_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain90_n12_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain90_n14_α
 xchain90_n12_β:
 jmp xchain90_n5_α
# IR_VAR_REF
 xchain90_n13_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain90_n15_α
 xchain90_n13_β:
 jmp proc_append$3_ω
 xchain90_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
  .section .rodata
  .Lrkfn118: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn118]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain90_n5_α
 jmp xchain90_n16_α
 xchain90_n14_β:
 jmp xchain90_n5_α
 xchain90_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn120: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn120]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain90_n18_α
 jmp xchain90_n17_α
 xchain90_n15_β:
 jmp xchain90_n18_α
# IR_SUSPEND yield+resume
 xchain90_n16_α:
 lea rax, [rip + xchain90_n16_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_append$3_γ
 xchain90_n16_β:
 jmp xchain90_n5_α
 xchain90_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+800]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn124: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn124]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain90_n18_α
 jmp xchain90_n19_α
 xchain90_n17_β:
 jmp xchain90_n18_α
 xchain90_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn126: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn126]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_append$3_ω
 jmp proc_append$3_ω
 xchain90_n18_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain90_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain90_n20_α
 xchain90_n19_β:
 jmp xchain90_n18_α
# IR_VAR_REF
 xchain90_n20_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain90_n21_α
 xchain90_n20_β:
 jmp xchain90_n18_α
 xchain90_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn132: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn132]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain90_n18_α
 jmp xchain90_n22_α
 xchain90_n21_β:
 jmp xchain90_n18_α
# IR_VAR_REF
 xchain90_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain90_n23_α
 xchain90_n22_β:
 jmp xchain90_n18_α
# IR_LIT_STRING
 xchain90_n23_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain90_n24_α
 xchain90_n23_β:
 jmp proc_append$3_ω
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "."
# IR_VAR_REF
 xchain90_n24_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain90_n25_α
 xchain90_n24_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain90_n25_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain90_n26_α
 xchain90_n25_β:
 jmp proc_append$3_ω
 xchain90_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+576]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn141: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn141]
 lea rsi, [rbp + 544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain90_n18_α
 jmp xchain90_n27_α
 xchain90_n26_β:
 jmp xchain90_n18_α
 xchain90_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+400]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn143: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn143]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain90_n18_α
 jmp xchain90_n28_α
 xchain90_n27_β:
 jmp xchain90_n18_α
# IR_VAR_REF
 xchain90_n28_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain90_n29_α
 xchain90_n28_β:
 jmp xchain90_n18_α
# IR_VAR_REF
 xchain90_n29_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain90_n30_α
 xchain90_n29_β:
 jmp xchain90_n18_α
# IR_VAR_REF
 xchain90_n30_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain90_n31_α
 xchain90_n30_β:
 jmp xchain90_n18_α
 xchain90_n31_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx151_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx151_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx151_3]
 lea rdx, [rip + .Lx151_4]
 jmp rax
.Lx151_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx151_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx151_2
.Lx151_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx151_2
.Lx151_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx151_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx151_2
.Lx151_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx151_2
.Lx151_1:
 call rt_faildescr@PLT
.Lx151_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain90_n18_α
 jmp xchain90_n32_α
 xchain90_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "append/3"
# IR_SUSPEND yield+resume
 xchain90_n32_α:
 lea rax, [rip + xchain90_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_append$3_γ
 xchain90_n32_β:
 jmp xchain90_n31_β
proc_append$3_res:
add rsp, 8
pop rbp
proc_append$3_β:
jmp qword ptr [rbp + 1472]
proc_append$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_append$3_res]
push rax
mov rax, [rbp + 1576]
mov rbp, [rbp + 1592]
jmp rax
proc_append$3_ω:
mov rax, [rbp + 1584]
lea rsp, [rbp + 1600]
mov rbp, [rbp + 1592]
jmp rax
  .globl proc_nrev$2_α
proc_nrev$2_α:
#=======================================================================================================================
    .global proc_nrev$2_α
    .global proc_nrev$2_β
    .global proc_nrev$2_γ
    .global proc_nrev$2_ω
  sub rsp, 1472
  mov [rsp + 1448], rcx
  mov [rsp + 1456], rdx
  mov [rsp + 1464], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1440
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1368], rsp
  mov rdi, rsp
  mov esi, 1440
  call rt_jmp_frame_lexprep@PLT
proc_nrev$2_α_body:
lea rax, [rip + xchain154_n10_β]
mov qword ptr [rbp + 1344], rax
 xchain154_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn156: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn156]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp xchain154_n1_α
 xchain154_n0_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain154_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain154_n2_α
 xchain154_n1_β:
 jmp xchain154_n5_α
# IR_LIT_STRING
 xchain154_n2_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain154_n3_α
 xchain154_n2_β:
 jmp xchain154_n5_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "[]"
 xchain154_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn161: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn161]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain154_n5_α
 jmp xchain154_n4_α
 xchain154_n3_β:
 jmp xchain154_n5_α
# IR_VAR_REF
 xchain154_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain154_n6_α
 xchain154_n4_β:
 jmp xchain154_n5_α
 xchain154_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1056]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn165: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn165]
 lea rsi, [rbp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp xchain154_n7_α
 xchain154_n5_β:
 jmp proc_nrev$2_ω
# IR_LIT_STRING
 xchain154_n6_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain154_n8_α
 xchain154_n6_β:
 jmp xchain154_n5_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "[]"
# IR_VAR_REF
 xchain154_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain154_n9_α
 xchain154_n7_β:
 jmp xchain154_n15_α
 xchain154_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
  .section .rodata
  .Lrkfn170: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn170]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain154_n5_α
 jmp xchain154_n10_α
 xchain154_n8_β:
 jmp xchain154_n5_α
# IR_LIT_STRING
 xchain154_n9_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain154_n11_α
 xchain154_n9_β:
 jmp proc_nrev$2_ω
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain154_n10_α:
 lea rax, [rip + xchain154_n10_β]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nrev$2_γ
 xchain154_n10_β:
 jmp xchain154_n5_α
# IR_VAR_REF
 xchain154_n11_α:
 lea rdi, [rbp + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain154_n12_α
 xchain154_n11_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain154_n12_α:
 lea rdi, [rbp + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain154_n13_α
 xchain154_n12_β:
 jmp proc_nrev$2_ω
 xchain154_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn179: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn179]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain154_n15_α
 jmp xchain154_n14_α
 xchain154_n13_β:
 jmp xchain154_n15_α
 xchain154_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+800]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn181: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn181]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain154_n15_α
 jmp xchain154_n16_α
 xchain154_n14_β:
 jmp xchain154_n15_α
 xchain154_n15_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn183: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn183]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp proc_nrev$2_ω
 xchain154_n15_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain154_n16_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain154_n17_α
 xchain154_n16_β:
 jmp xchain154_n15_α
# IR_VAR_REF
 xchain154_n17_α:
 lea rdi, [rbp + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain154_n18_α
 xchain154_n17_β:
 jmp xchain154_n15_α
 xchain154_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn189: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn189]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain154_n15_α
 jmp xchain154_n19_α
 xchain154_n18_β:
 jmp xchain154_n15_α
# IR_VAR_REF
 xchain154_n19_α:
 lea rdi, [rbp + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain154_n20_α
 xchain154_n19_β:
 jmp xchain154_n15_α
# IR_VAR_REF
 xchain154_n20_α:
 lea rdi, [rbp + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain154_n21_α
 xchain154_n20_β:
 jmp xchain154_n15_α
 xchain154_n21_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx195_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx195_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx195_3]
 lea rdx, [rip + .Lx195_4]
 jmp rax
.Lx195_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx195_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx195_2
.Lx195_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx195_2
.Lx195_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx195_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx195_2
.Lx195_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx195_2
.Lx195_1:
 call rt_faildescr@PLT
.Lx195_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain154_n15_α
 jmp xchain154_n22_α
 xchain154_n21_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "nrev/2"
# IR_VAR_REF
 xchain154_n22_α:
 lea rdi, [rbp + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain154_n23_α
 xchain154_n22_β:
 jmp xchain154_n15_α
# IR_LIT_STRING
 xchain154_n23_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain154_n24_α
 xchain154_n23_β:
 jmp proc_nrev$2_ω
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "."
# IR_VAR_REF
 xchain154_n24_α:
 lea rdi, [rbp + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain154_n25_α
 xchain154_n24_β:
 jmp proc_nrev$2_ω
# IR_LIT_STRING
 xchain154_n25_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain154_n26_α
 xchain154_n25_β:
 jmp proc_nrev$2_ω
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "[]"
 xchain154_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+384]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 392], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+400]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn203: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn203]
 lea rsi, [rbp + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain154_n15_α
 jmp xchain154_n27_α
 xchain154_n26_β:
 jmp xchain154_n15_α
# IR_VAR_REF
 xchain154_n27_α:
 lea rdi, [rbp + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain154_n28_α
 xchain154_n27_β:
 jmp xchain154_n15_α
 xchain154_n28_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx207_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx207_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx207_3]
 lea rdx, [rip + .Lx207_4]
 jmp rax
.Lx207_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx207_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx207_2
.Lx207_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx207_2
.Lx207_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx207_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx207_2
.Lx207_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx207_2
.Lx207_1:
 call rt_faildescr@PLT
.Lx207_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain154_n21_β
 jmp xchain154_n29_α
 xchain154_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "append/3"
# IR_SUSPEND yield+resume
 xchain154_n29_α:
 lea rax, [rip + xchain154_n29_β]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nrev$2_γ
 xchain154_n29_β:
 jmp xchain154_n28_β
proc_nrev$2_res:
add rsp, 8
pop rbp
proc_nrev$2_β:
jmp qword ptr [rbp + 1344]
proc_nrev$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nrev$2_res]
push rax
mov rax, [rbp + 1448]
mov rbp, [rbp + 1464]
jmp rax
proc_nrev$2_ω:
mov rax, [rbp + 1456]
lea rsp, [rbp + 1472]
mov rbp, [rbp + 1464]
jmp rax
  .globl proc_data$2_α
proc_data$2_α:
#=======================================================================================================================
    .global proc_data$2_α
    .global proc_data$2_β
    .global proc_data$2_γ
    .global proc_data$2_ω
  sub rsp, 1472
  mov [rsp + 1448], rcx
  mov [rsp + 1456], rdx
  mov [rsp + 1464], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1440
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1384], rsp
  mov rdi, rsp
  mov esi, 1440
  call rt_jmp_frame_lexprep@PLT
proc_data$2_α_body:
lea rax, [rip + xchain210_n10_β]
mov qword ptr [rbp + 1360], rax
 xchain210_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn212: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn212]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp xchain210_n1_α
 xchain210_n0_β:
 jmp proc_data$2_ω
# IR_VAR_REF
 xchain210_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain210_n2_α
 xchain210_n1_β:
 jmp xchain210_n5_α
# IR_LIT_STRING
 xchain210_n2_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain210_n3_α
 xchain210_n2_β:
 jmp xchain210_n5_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "[]"
 xchain210_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn217: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn217]
 lea rsi, [rbp + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain210_n5_α
 jmp xchain210_n4_α
 xchain210_n3_β:
 jmp xchain210_n5_α
# IR_VAR_REF
 xchain210_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain210_n6_α
 xchain210_n4_β:
 jmp xchain210_n5_α
 xchain210_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1072]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn221: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn221]
 lea rsi, [rbp + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp xchain210_n7_α
 xchain210_n5_β:
 jmp proc_data$2_ω
# IR_LIT_INTEGER
 xchain210_n6_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain210_n8_α
 xchain210_n6_β:
 jmp xchain210_n5_α
.Lx222_0:
 .quad 0
# IR_VAR_REF
 xchain210_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain210_n9_α
 xchain210_n7_β:
 jmp xchain210_n15_α
 xchain210_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
  .section .rodata
  .Lrkfn226: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn226]
 lea rsi, [rbp + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain210_n5_α
 jmp xchain210_n10_α
 xchain210_n8_β:
 jmp xchain210_n5_α
# IR_LIT_STRING
 xchain210_n9_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain210_n11_α
 xchain210_n9_β:
 jmp proc_data$2_ω
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain210_n10_α:
 lea rax, [rip + xchain210_n10_β]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$2_γ
 xchain210_n10_β:
 jmp xchain210_n5_α
# IR_LIT_STRING
 xchain210_n11_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain210_n12_α
 xchain210_n11_β:
 jmp proc_data$2_ω
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "a"
# IR_VAR_REF
 xchain210_n12_α:
 lea rdi, [rbp + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain210_n13_α
 xchain210_n12_β:
 jmp proc_data$2_ω
 xchain210_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+976]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 984], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+992]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 1000], rax
  .section .rodata
  .Lrkfn234: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn234]
 lea rsi, [rbp + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain210_n15_α
 jmp xchain210_n14_α
 xchain210_n13_β:
 jmp xchain210_n15_α
 xchain210_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+816]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn236: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn236]
 lea rsi, [rbp + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain210_n15_α
 jmp xchain210_n16_α
 xchain210_n14_β:
 jmp xchain210_n15_α
 xchain210_n15_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn238: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn238]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp proc_data$2_ω
 xchain210_n15_β:
 jmp proc_data$2_ω
# IR_VAR_REF
 xchain210_n16_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain210_n17_α
 xchain210_n16_β:
 jmp xchain210_n15_α
# IR_VAR_REF
 xchain210_n17_α:
 lea rdi, [rbp + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain210_n18_α
 xchain210_n17_β:
 jmp xchain210_n15_α
 xchain210_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn244: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn244]
 lea rsi, [rbp + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain210_n15_α
 jmp xchain210_n19_α
 xchain210_n18_β:
 jmp xchain210_n15_α
# IR_VAR
 xchain210_n19_α:
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 600], rax
 jmp xchain210_n20_α
 xchain210_n19_β:
 jmp xchain210_n15_α
# IR_LIT_INTEGER
 xchain210_n20_α:
 mov qword ptr [rbp + 624], 6
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain210_n21_α
 xchain210_n20_β:
 jmp xchain210_n15_α
.Lx247_0:
 .quad 0
 xchain210_n21_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn249: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn249]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain210_n15_α
 jmp xchain210_n22_α
 xchain210_n21_β:
 jmp xchain210_n15_α
# IR_VAR_REF
 xchain210_n22_α:
 lea rdi, [rbp + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain210_n23_α
 xchain210_n22_β:
 jmp xchain210_n15_α
# IR_VAR
 xchain210_n23_α:
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 472], rax
 jmp xchain210_n24_α
 xchain210_n23_β:
 jmp proc_data$2_ω
# IR_LIT_INTEGER
 xchain210_n24_α:
 mov qword ptr [rbp + 496], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain210_n25_α
 xchain210_n24_β:
 jmp proc_data$2_ω
.Lx254_0:
 .quad 1
 xchain210_n25_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn256: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn256]
 lea rsi, [rbp + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain210_n15_α
 jmp xchain210_n26_α
 xchain210_n25_β:
 jmp xchain210_n15_α
 xchain210_n26_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn258: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn258]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain210_n15_α
 jmp xchain210_n27_α
 xchain210_n26_β:
 jmp xchain210_n15_α
# IR_VAR_REF
 xchain210_n27_α:
 lea rdi, [rbp + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain210_n28_α
 xchain210_n27_β:
 jmp xchain210_n15_α
# IR_VAR_REF
 xchain210_n28_α:
 lea rdi, [rbp + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain210_n29_α
 xchain210_n28_β:
 jmp xchain210_n15_α
 xchain210_n29_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx264_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx264_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx264_3]
 lea rdx, [rip + .Lx264_4]
 jmp rax
.Lx264_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx264_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx264_2
.Lx264_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx264_2
.Lx264_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx264_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx264_2
.Lx264_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx264_2
.Lx264_1:
 call rt_faildescr@PLT
.Lx264_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain210_n15_α
 jmp xchain210_n30_α
 xchain210_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "data/2"
# IR_SUSPEND yield+resume
 xchain210_n30_α:
 lea rax, [rip + xchain210_n30_β]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$2_γ
 xchain210_n30_β:
 jmp xchain210_n29_β
proc_data$2_res:
add rsp, 8
pop rbp
proc_data$2_β:
jmp qword ptr [rbp + 1360]
proc_data$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_data$2_res]
push rax
mov rax, [rbp + 1448]
mov rbp, [rbp + 1464]
jmp rax
proc_data$2_ω:
mov rax, [rbp + 1456]
lea rsp, [rbp + 1472]
mov rbp, [rbp + 1464]
jmp rax
  .globl proc_data$1_α
proc_data$1_α:
#=======================================================================================================================
    .global proc_data$1_α
    .global proc_data$1_β
    .global proc_data$1_γ
    .global proc_data$1_ω
  sub rsp, 496
  mov [rsp + 472], rcx
  mov [rsp + 480], rdx
  mov [rsp + 488], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 464
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov rdi, rsp
  mov esi, 464
  call rt_jmp_frame_lexprep@PLT
proc_data$1_α_body:
lea rax, [rip + xchain267_n8_β]
mov qword ptr [rbp + 416], rax
 xchain267_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn269: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn269]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_data$1_ω
 jmp xchain267_n1_α
 xchain267_n0_β:
 jmp proc_data$1_ω
# IR_VAR_REF
 xchain267_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain267_n2_α
 xchain267_n1_β:
 jmp xchain267_n5_α
# IR_VAR_REF
 xchain267_n2_α:
 lea rdi, [rbp + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain267_n3_α
 xchain267_n2_β:
 jmp xchain267_n5_α
 xchain267_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn275: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn275]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain267_n5_α
 jmp xchain267_n4_α
 xchain267_n3_β:
 jmp xchain267_n5_α
# IR_VAR_REF
 xchain267_n4_α:
 lea rdi, [rbp + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain267_n6_α
 xchain267_n4_β:
 jmp xchain267_n5_α
 xchain267_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn279: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn279]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_data$1_ω
 jmp proc_data$1_ω
 xchain267_n5_β:
 jmp proc_data$1_ω
# IR_LIT_INTEGER
 xchain267_n6_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain267_n7_α
 xchain267_n6_β:
 jmp xchain267_n5_α
.Lx280_0:
 .quad 30
 xchain267_n7_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx282_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx282_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx282_3]
 lea rdx, [rip + .Lx282_4]
 jmp rax
.Lx282_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx282_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx282_2
.Lx282_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx282_2
.Lx282_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx282_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx282_2
.Lx282_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx282_2
.Lx282_1:
 call rt_faildescr@PLT
.Lx282_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain267_n5_α
 jmp xchain267_n8_α
 xchain267_n7_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "data/2"
# IR_SUSPEND yield+resume
 xchain267_n8_α:
 lea rax, [rip + xchain267_n8_β]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_data$1_γ
 xchain267_n8_β:
 jmp xchain267_n7_β
proc_data$1_res:
add rsp, 8
pop rbp
proc_data$1_β:
jmp qword ptr [rbp + 416]
proc_data$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_data$1_res]
push rax
mov rax, [rbp + 472]
mov rbp, [rbp + 488]
jmp rax
proc_data$1_ω:
mov rax, [rbp + 480]
lea rsp, [rbp + 496]
mov rbp, [rbp + 488]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "reverse/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_reverse$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 672
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "$reverse_/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_$reverse_$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1568
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "append/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_append$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1568
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "nrev/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nrev$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1440
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "data/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_data$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1440
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "data/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_data$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 464
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
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
 xchain285_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn287: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn287]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain285_n1_α
 xchain285_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain285_n1_α:
 lea rdi, [rbp + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain285_n2_α
 xchain285_n1_β:
 jmp xchain285_n4_α
 xchain285_n2_α:
 mov qword ptr [rbp + 464], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx291_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx291_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx291_3]
 lea rdx, [rip + .Lx291_4]
 jmp rax
.Lx291_3:
 mov qword ptr [rbp + 472], rsp
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx291_5
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx291_2
.Lx291_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx291_2
.Lx291_4:
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx291_6
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx291_2
.Lx291_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx291_2
.Lx291_1:
 call rt_faildescr@PLT
.Lx291_2:
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain285_n4_α
 jmp xchain285_n3_α
 xchain285_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 472]
 jmp qword ptr [rsp]
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "data/1"
# IR_VAR_REF
 xchain285_n3_α:
 lea rdi, [rbp + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain285_n5_α
 xchain285_n3_β:
 jmp xchain285_n4_α
 xchain285_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn295: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn295]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain285_n4_β:
 jmp main_ω
# IR_VAR_REF
 xchain285_n5_α:
 lea rdi, [rbp + 544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain285_n6_α
 xchain285_n5_β:
 jmp xchain285_n4_α
 xchain285_n6_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx299_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx299_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx299_3]
 lea rdx, [rip + .Lx299_4]
 jmp rax
.Lx299_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx299_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx299_2
.Lx299_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx299_2
.Lx299_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx299_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx299_2
.Lx299_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx299_2
.Lx299_1:
 call rt_faildescr@PLT
.Lx299_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain285_n2_β
 jmp xchain285_n7_α
 xchain285_n6_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "nrev/2"
# IR_VAR
 xchain285_n7_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 264], rax
 jmp xchain285_n8_α
 xchain285_n7_β:
 jmp xchain285_n4_α
 xchain285_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn303: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn303]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain285_n6_β
 jmp xchain285_n9_α
 xchain285_n8_β:
 jmp xchain285_n6_β
# IR_LIT_STRING
 xchain285_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain285_n10_α
 xchain285_n9_β:
 jmp xchain285_n4_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string ""
 xchain285_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn306: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn306]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain285_n6_β
 jmp xchain285_n11_α
 xchain285_n10_β:
 jmp xchain285_n6_β
# IR_MOVE_LABEL
 xchain285_n11_α:
 lea rax, [rip + xchain285_n6_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain285_n11_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain285_n12_α:
 jmp qword ptr [rbp + 32]
 xchain285_n12_β:
 jmp main_ω
main_β:
jmp xchain285_n12_α
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
