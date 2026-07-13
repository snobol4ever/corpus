  .intel_syntax noprefix
  .text
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
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
  mov qword ptr [r12 + 792], rsp
 push rsi
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, [rsp + 8]
 mov qword ptr [r12 + 784], rax
 pop rsi
main_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
 xchain0_n2_α:
# BOX IR_CALL $read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn6: .string "$read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn6]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
# IR_VAR_REF
 xchain0_n3_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n4_α
 xchain0_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn10: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn10]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain0_n4_β:
 jmp main_ω
 xchain0_n5_α:
# BOX IR_CALL $read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn12: .string "$read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n4_α
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n10_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "end_of_file"
 xchain0_n8_α:
# BOX IR_CALL $atop_eq(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn17: .string "$atop_eq"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n4_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "no"
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n10_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "end_of_file"
 xchain0_n12_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn23: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n4_α
 xchain0_n13_α:
# BOX IR_CALL $atop_eq(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+400]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn25: .string "$atop_eq"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n4_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string ""
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n4_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string "both_eof"
 xchain0_n16_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn29: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n4_α
 xchain0_n17_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
  .section .rodata
  .Lrkfn31: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n14_α
 xchain0_n17_β:
 jmp xchain0_n4_α
# IR_MOVE_LABEL
 xchain0_n18_α:
 lea rax, [rip + xchain0_n4_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain0_n18_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n19_α:
 jmp qword ptr [r12 + 32]
 xchain0_n19_β:
 jmp main_ω
main_β:
jmp xchain0_n19_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [r12 + 792]
pop r12
ret
 push rsp
 push qword ptr [rsp]
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, [rsp + 8]
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, qword ptr [r12 + 792]
pop r12
ret
