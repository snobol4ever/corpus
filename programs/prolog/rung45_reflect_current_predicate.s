  .intel_syntax noprefix
  .text
  .globl proc_current_predicate$1_α
proc_current_predicate$1_α:
#=======================================================================================================================
    .global proc_current_predicate$1_α
    .global proc_current_predicate$1_β
    .global proc_current_predicate$1_γ
    .global proc_current_predicate$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 120], rsp
  cmp esi, 0
  jne proc_current_predicate$1_β
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 112], rax
 pop rsi
proc_current_predicate$1_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_current_predicate$1_ω
 xchain0_n1_α:
# BOX CALL_GEN $current_predicate(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 0
.Lx3_60:
  .section .rodata
  .Lbynamegenfn2: .string "$current_predicate"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn2]
 lea rsi, [r12 + 48]
 mov edx, 1
 lea rcx, [r12 + 64]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_current_predicate$1_ω
 jmp proc_current_predicate$1_γ
 xchain0_n1_β:
 jmp .Lx3_60
proc_current_predicate$1_β:
jmp xchain0_n1_β
proc_current_predicate$1_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 120]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 112]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_current_predicate$1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 120]
pop r12
ret
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "current_predicate/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_current_predicate$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
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
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 1448], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1440], rax
 pop rsi
main_α_body:
 xchain4_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn6: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn6]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain4_n1_α
 xchain4_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain4_n1_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain4_n2_α
 xchain4_n1_β:
 jmp main_ω
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "widget"
# IR_LIT_INTEGER
 xchain4_n2_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain4_n3_α
 xchain4_n2_β:
 jmp main_ω
.Lx8_0:
 .quad 1
 xchain4_n3_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1376]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn10: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n4_α
 xchain4_n3_β:
 jmp xchain4_n5_α
 xchain4_n4_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1280]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn12: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 1280]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n6_α
 xchain4_n4_β:
 jmp xchain4_n5_α
 xchain4_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn14: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain4_n5_β:
 jmp main_ω
# IR_LIT_STRING
 xchain4_n6_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain4_n7_α
 xchain4_n6_β:
 jmp main_ω
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "widget"
# IR_LIT_INTEGER
 xchain4_n7_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain4_n8_α
 xchain4_n7_β:
 jmp main_ω
.Lx16_0:
 .quad 2
 xchain4_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1200]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn18: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n9_α
 xchain4_n8_β:
 jmp xchain4_n5_α
 xchain4_n9_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn20: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 1104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n10_α
 xchain4_n9_β:
 jmp xchain4_n5_α
# IR_LIT_STRING
 xchain4_n10_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain4_n11_α
 xchain4_n10_β:
 jmp main_ω
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "/"
# IR_LIT_STRING
 xchain4_n11_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain4_n12_α
 xchain4_n11_β:
 jmp main_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "widget"
# IR_LIT_INTEGER
 xchain4_n12_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain4_n13_α
 xchain4_n12_β:
 jmp main_ω
.Lx23_0:
 .quad 1
 xchain4_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+1008]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 1016], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1024]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn25: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain4_n15_α
 jmp xchain4_n14_α
 xchain4_n13_β:
 jmp xchain4_n15_α
 xchain4_n14_α:
  .section .rodata
  .Lcall17_pname: .string "current_predicate/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall17_pname]
 mov esi, 1
 lea rdx, [r12 + 880]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain4_n15_α
 jmp xchain4_n16_α
xchain4_n14_β:
 lea rdi, [r12 + 880]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain4_n15_α
 jmp xchain4_n16_α
# IR_LIT_STRING
 xchain4_n15_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain4_n17_α
 xchain4_n15_β:
 jmp xchain4_n5_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "no"
# IR_LIT_STRING
 xchain4_n16_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain4_n18_α
 xchain4_n16_β:
 jmp xchain4_n5_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "yes"
 xchain4_n17_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn30: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 784]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n19_α
 xchain4_n17_β:
 jmp xchain4_n5_α
 xchain4_n18_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn32: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 704]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n19_α
 xchain4_n18_β:
 jmp xchain4_n5_α
# IR_LIT_STRING
 xchain4_n19_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain4_n20_α
 xchain4_n19_β:
 jmp xchain4_n5_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string ""
 xchain4_n20_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn35: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn35]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n21_α
 xchain4_n20_β:
 jmp xchain4_n5_α
# IR_LIT_STRING
 xchain4_n21_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain4_n22_α
 xchain4_n21_β:
 jmp main_ω
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "/"
# IR_LIT_STRING
 xchain4_n22_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain4_n23_α
 xchain4_n22_β:
 jmp main_ω
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "nothing"
# IR_LIT_INTEGER
 xchain4_n23_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain4_n24_α
 xchain4_n23_β:
 jmp main_ω
.Lx38_0:
 .quad 3
 xchain4_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+528]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+544]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn40: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn40]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain4_n26_α
 jmp xchain4_n25_α
 xchain4_n24_β:
 jmp xchain4_n26_α
 xchain4_n25_α:
  .section .rodata
  .Lcall28_pname: .string "current_predicate/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall28_pname]
 mov esi, 1
 lea rdx, [r12 + 400]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain4_n26_α
 jmp xchain4_n27_α
xchain4_n25_β:
 lea rdi, [r12 + 400]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain4_n26_α
 jmp xchain4_n27_α
# IR_LIT_STRING
 xchain4_n26_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain4_n28_α
 xchain4_n26_β:
 jmp xchain4_n5_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "no"
# IR_LIT_STRING
 xchain4_n27_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain4_n29_α
 xchain4_n27_β:
 jmp xchain4_n5_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "yes"
 xchain4_n28_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn45: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n30_α
 xchain4_n28_β:
 jmp xchain4_n5_α
 xchain4_n29_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn47: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n30_α
 xchain4_n29_β:
 jmp xchain4_n5_α
# IR_LIT_STRING
 xchain4_n30_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain4_n31_α
 xchain4_n30_β:
 jmp xchain4_n5_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string ""
 xchain4_n31_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn50: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain4_n5_α
 jmp xchain4_n32_α
 xchain4_n31_β:
 jmp xchain4_n5_α
# IR_MOVE_LABEL
 xchain4_n32_α:
 lea rax, [rip + xchain4_n5_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain4_n32_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain4_n33_α:
 jmp qword ptr [r12 + 32]
 xchain4_n33_β:
 jmp main_ω
main_β:
jmp xchain4_n33_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1448]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1440]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1448]
pop r12
ret
