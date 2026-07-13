  .intel_syntax noprefix
  .text
  .globl proc_clause$2_α
proc_clause$2_α:
#=======================================================================================================================
    .global proc_clause$2_α
    .global proc_clause$2_β
    .global proc_clause$2_γ
    .global proc_clause$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  mov qword ptr [r12 + 184], rsp
  cmp esi, 0
  jne proc_clause$2_β
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 176], rax
 pop rsi
proc_clause$2_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_clause$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_clause$2_ω
 xchain0_n2_α:
# BOX CALL_GEN $clause(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+112] -> [zr+64]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+80]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], 0
.Lx5_60:
  .section .rodata
  .Lbynamegenfn3: .string "$clause"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn3]
 lea rsi, [r12 + 64]
 mov edx, 2
 lea rcx, [r12 + 96]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_clause$2_ω
 jmp proc_clause$2_γ
 xchain0_n2_β:
 jmp .Lx5_60
proc_clause$2_β:
jmp xchain0_n2_β
proc_clause$2_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 184]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 176]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
proc_clause$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 184]
pop r12
ret
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "clause/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_clause$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 192
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
  mov qword ptr [r12 + 1224], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 1216], rax
 pop rsi
main_α_body:
 xchain6_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn8: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain6_n1_α
 xchain6_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain6_n1_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain6_n2_α
 xchain6_n1_β:
 jmp main_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "color"
# IR_LIT_STRING
 xchain6_n2_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 1096], rax
 jmp xchain6_n3_α
 xchain6_n2_β:
 jmp main_ω
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "red"
 xchain6_n3_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1144], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1152]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn12: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n4_α
 xchain6_n3_β:
 jmp xchain6_n5_α
 xchain6_n4_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn14: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn14]
 lea rsi, [r12 + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n6_α
 xchain6_n4_β:
 jmp xchain6_n5_α
 xchain6_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn16: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain6_n5_β:
 jmp main_ω
# IR_LIT_STRING
 xchain6_n6_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain6_n7_α
 xchain6_n6_β:
 jmp main_ω
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "color"
# IR_LIT_STRING
 xchain6_n7_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain6_n8_α
 xchain6_n7_β:
 jmp main_ω
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "green"
 xchain6_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+976]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 984], rax
  .section .rodata
  .Lrkfn20: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n9_α
 xchain6_n8_β:
 jmp xchain6_n5_α
 xchain6_n9_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn22: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n10_α
 xchain6_n9_β:
 jmp xchain6_n5_α
# IR_LIT_STRING
 xchain6_n10_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain6_n11_α
 xchain6_n10_β:
 jmp main_ω
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "color"
# IR_LIT_STRING
 xchain6_n11_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain6_n12_α
 xchain6_n11_β:
 jmp main_ω
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "blue"
 xchain6_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+800]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn26: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n13_α
 xchain6_n12_β:
 jmp xchain6_n5_α
 xchain6_n13_α:
# BOX IR_CALL $dyn_assertz(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn28: .string "$dyn_assertz"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 704]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain6_n5_α
 jmp xchain6_n14_α
 xchain6_n13_β:
 jmp xchain6_n5_α
# IR_LIT_STRING
 xchain6_n14_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain6_n15_α
 xchain6_n14_β:
 jmp main_ω
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "color"
# IR_VAR_REF
 xchain6_n15_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain6_n16_α
 xchain6_n15_β:
 jmp main_ω
 xchain6_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+592]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn33: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain6_n18_α
 jmp xchain6_n17_α
 xchain6_n16_β:
 jmp xchain6_n18_α
# IR_VAR_REF
 xchain6_n17_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain6_n19_α
 xchain6_n17_β:
 jmp xchain6_n18_α
# IR_MOVE_LABEL
 xchain6_n18_α:
 lea rax, [rip + xchain6_n5_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain6_n18_β:
 jmp main_ω
 xchain6_n19_α:
  .section .rodata
  .Lcall23_pname: .string "clause/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall23_pname]
 mov esi, 2
 lea rdx, [r12 + 496]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain6_n18_α
 jmp xchain6_n21_α
xchain6_n19_β:
 lea rdi, [r12 + 496]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain6_n18_α
 jmp xchain6_n21_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain6_n20_α:
 jmp qword ptr [r12 + 32]
 xchain6_n20_β:
 jmp main_ω
# IR_VAR
 xchain6_n21_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 424], rax
 jmp xchain6_n22_α
 xchain6_n21_β:
 jmp xchain6_n18_α
 xchain6_n22_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn44: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain6_n19_β
 jmp xchain6_n23_α
 xchain6_n22_β:
 jmp xchain6_n19_β
# IR_LIT_STRING
 xchain6_n23_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain6_n24_α
 xchain6_n23_β:
 jmp xchain6_n18_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string " "
 xchain6_n24_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn47: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain6_n19_β
 jmp xchain6_n25_α
 xchain6_n24_β:
 jmp xchain6_n19_β
# IR_VAR
 xchain6_n25_α:
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 264], rax
 jmp xchain6_n26_α
 xchain6_n25_β:
 jmp xchain6_n18_α
 xchain6_n26_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn51: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn51]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain6_n19_β
 jmp xchain6_n27_α
 xchain6_n26_β:
 jmp xchain6_n19_β
# IR_LIT_STRING
 xchain6_n27_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain6_n28_α
 xchain6_n27_β:
 jmp xchain6_n18_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string ""
 xchain6_n28_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn54: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain6_n19_β
 jmp xchain6_n19_β
 xchain6_n28_β:
 jmp xchain6_n19_β
main_β:
jmp xchain6_n20_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 1224]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 1216]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 1224]
pop r12
ret
