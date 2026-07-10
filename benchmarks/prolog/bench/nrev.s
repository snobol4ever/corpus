  .intel_syntax noprefix
  .text
  .globl proc_append$3_α
proc_append$3_α:
#=======================================================================================================================
    .global proc_append$3_α
    .global proc_append$3_β
    .global proc_append$3_γ
    .global proc_append$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_append$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 976], rax
 pop rsi
proc_append$3_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_append$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "[]"
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+720]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn11: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_append$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n18_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn17: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp proc_append$3_ω
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_append$3_ω
 xchain0_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn28: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n5_α
 xchain0_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+656]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 664], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+672]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn30: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n16_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_append$3_γ
 xchain0_n16_β:
 jmp proc_append$3_ω
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn34: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n18_α
 xchain0_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn36: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_append$3_ω
 jmp proc_append$3_ω
 xchain0_n18_β:
 jmp proc_append$3_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n19_α:
 jmp qword ptr [r12 + 80]
 xchain0_n19_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain0_n20_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n18_α
 xchain0_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn44: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n23_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n18_α
# IR_LIT_STRING
 xchain0_n24_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_append$3_ω
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_append$3_ω
# IR_VAR_REF
 xchain0_n26_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_append$3_ω
 xchain0_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 408], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+416]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn53: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n18_α
 xchain0_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn55: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n30_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n18_α
 xchain0_n32_α:
  .section .rodata
  .Lcall33_pname: .string "append/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall33_pname]
 mov esi, 3
 lea rdx, [r12 + 208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n33_α
xchain0_n32_β:
 lea rdi, [r12 + 208]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n33_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n33_α:
 lea rax, [rip + xchain0_n32_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_append$3_γ
 xchain0_n33_β:
 jmp proc_append$3_ω
proc_append$3_β:
jmp xchain0_n19_α
proc_append$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 976]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_append$3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_nrev$2_α
proc_nrev$2_α:
#=======================================================================================================================
    .global proc_nrev$2_α
    .global proc_nrev$2_β
    .global proc_nrev$2_γ
    .global proc_nrev$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_nrev$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 896], rax
 pop rsi
proc_nrev$2_α_body:
 xchain65_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn67: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp xchain65_n1_α
 xchain65_n0_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain65_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain65_n2_α
 xchain65_n1_β:
 jmp xchain65_n5_α
# IR_LIT_STRING
 xchain65_n2_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain65_n3_α
 xchain65_n2_β:
 jmp xchain65_n5_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "[]"
 xchain65_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain65_n5_α
 jmp xchain65_n4_α
 xchain65_n3_β:
 jmp xchain65_n5_α
# IR_VAR_REF
 xchain65_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain65_n6_α
 xchain65_n4_β:
 jmp xchain65_n5_α
 xchain65_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+720]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn76: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp xchain65_n7_α
 xchain65_n5_β:
 jmp proc_nrev$2_ω
# IR_LIT_STRING
 xchain65_n6_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain65_n8_α
 xchain65_n6_β:
 jmp xchain65_n5_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "[]"
# IR_VAR_REF
 xchain65_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain65_n9_α
 xchain65_n7_β:
 jmp xchain65_n16_α
 xchain65_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn81: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain65_n5_α
 jmp xchain65_n10_α
 xchain65_n8_β:
 jmp xchain65_n5_α
# IR_LIT_STRING
 xchain65_n9_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain65_n11_α
 xchain65_n9_β:
 jmp proc_nrev$2_ω
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain65_n10_α:
 lea rax, [rip + xchain65_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_nrev$2_γ
 xchain65_n10_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain65_n11_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain65_n13_α
 xchain65_n11_β:
 jmp proc_nrev$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain65_n12_α:
 jmp qword ptr [r12 + 64]
 xchain65_n12_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain65_n13_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain65_n14_α
 xchain65_n13_β:
 jmp proc_nrev$2_ω
 xchain65_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+656]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 664], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+672]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn92: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain65_n16_α
 jmp xchain65_n15_α
 xchain65_n14_β:
 jmp xchain65_n16_α
 xchain65_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn94: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain65_n16_α
 jmp xchain65_n17_α
 xchain65_n15_β:
 jmp xchain65_n16_α
 xchain65_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn96: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_nrev$2_ω
 jmp proc_nrev$2_ω
 xchain65_n16_β:
 jmp proc_nrev$2_ω
# IR_VAR_REF
 xchain65_n17_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain65_n18_α
 xchain65_n17_β:
 jmp xchain65_n16_α
# IR_VAR_REF
 xchain65_n18_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain65_n19_α
 xchain65_n18_β:
 jmp xchain65_n16_α
 xchain65_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn102: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain65_n16_α
 jmp xchain65_n20_α
 xchain65_n19_β:
 jmp xchain65_n16_α
# IR_VAR_REF
 xchain65_n20_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain65_n21_α
 xchain65_n20_β:
 jmp xchain65_n16_α
# IR_VAR_REF
 xchain65_n21_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain65_n22_α
 xchain65_n21_β:
 jmp xchain65_n16_α
 xchain65_n22_α:
  .section .rodata
  .Lcall57_pname: .string "nrev/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall57_pname]
 mov esi, 2
 lea rdx, [r12 + 400]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain65_n16_α
 jmp xchain65_n23_α
xchain65_n22_β:
 lea rdi, [r12 + 400]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain65_n16_α
 jmp xchain65_n23_α
# IR_VAR_REF
 xchain65_n23_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain65_n24_α
 xchain65_n23_β:
 jmp xchain65_n16_α
# IR_LIT_STRING
 xchain65_n24_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain65_n25_α
 xchain65_n24_β:
 jmp proc_nrev$2_ω
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "."
# IR_VAR_REF
 xchain65_n25_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain65_n26_α
 xchain65_n25_β:
 jmp proc_nrev$2_ω
# IR_LIT_STRING
 xchain65_n26_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain65_n27_α
 xchain65_n26_β:
 jmp proc_nrev$2_ω
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "[]"
 xchain65_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+288]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 296], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+304]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn115: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 272]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain65_n16_α
 jmp xchain65_n28_α
 xchain65_n27_β:
 jmp xchain65_n16_α
# IR_VAR_REF
 xchain65_n28_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain65_n29_α
 xchain65_n28_β:
 jmp xchain65_n16_α
 xchain65_n29_α:
  .section .rodata
  .Lcall64_pname: .string "append/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall64_pname]
 mov esi, 3
 lea rdx, [r12 + 192]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain65_n22_β
 jmp xchain65_n30_α
xchain65_n29_β:
 lea rdi, [r12 + 192]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain65_n22_β
 jmp xchain65_n30_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain65_n30_α:
 lea rax, [rip + xchain65_n29_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_nrev$2_γ
 xchain65_n30_β:
 jmp proc_nrev$2_ω
proc_nrev$2_β:
jmp xchain65_n12_α
proc_nrev$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 896]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nrev$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_data$2_α
proc_data$2_α:
#=======================================================================================================================
    .global proc_data$2_α
    .global proc_data$2_β
    .global proc_data$2_γ
    .global proc_data$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_data$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 896], rax
 pop rsi
proc_data$2_α_body:
 xchain121_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn123: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp xchain121_n1_α
 xchain121_n0_β:
 jmp proc_data$2_ω
# IR_VAR_REF
 xchain121_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain121_n2_α
 xchain121_n1_β:
 jmp xchain121_n5_α
# IR_LIT_STRING
 xchain121_n2_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain121_n3_α
 xchain121_n2_β:
 jmp xchain121_n5_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "[]"
 xchain121_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn128: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain121_n5_α
 jmp xchain121_n4_α
 xchain121_n3_β:
 jmp xchain121_n5_α
# IR_VAR_REF
 xchain121_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain121_n6_α
 xchain121_n4_β:
 jmp xchain121_n5_α
 xchain121_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+720]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn132: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn132]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp xchain121_n7_α
 xchain121_n5_β:
 jmp proc_data$2_ω
# IR_LIT_INTEGER
 xchain121_n6_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain121_n8_α
 xchain121_n6_β:
 jmp xchain121_n5_α
.Lx133_0:
 .quad 0
# IR_VAR_REF
 xchain121_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain121_n9_α
 xchain121_n7_β:
 jmp xchain121_n16_α
 xchain121_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn137: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn137]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain121_n5_α
 jmp xchain121_n10_α
 xchain121_n8_β:
 jmp xchain121_n5_α
# IR_LIT_STRING
 xchain121_n9_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain121_n11_α
 xchain121_n9_β:
 jmp proc_data$2_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain121_n10_α:
 lea rax, [rip + xchain121_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_data$2_γ
 xchain121_n10_β:
 jmp proc_data$2_ω
# IR_LIT_STRING
 xchain121_n11_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain121_n13_α
 xchain121_n11_β:
 jmp proc_data$2_ω
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "a"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain121_n12_α:
 jmp qword ptr [r12 + 64]
 xchain121_n12_β:
 jmp proc_data$2_ω
# IR_VAR_REF
 xchain121_n13_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain121_n14_α
 xchain121_n13_β:
 jmp proc_data$2_ω
 xchain121_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+656]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 664], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+672]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn147: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n15_α
 xchain121_n14_β:
 jmp xchain121_n16_α
 xchain121_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn149: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn149]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n17_α
 xchain121_n15_β:
 jmp xchain121_n16_α
 xchain121_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn151: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_data$2_ω
 jmp proc_data$2_ω
 xchain121_n16_β:
 jmp proc_data$2_ω
# IR_VAR_REF
 xchain121_n17_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain121_n18_α
 xchain121_n17_β:
 jmp xchain121_n16_α
# IR_VAR_REF
 xchain121_n18_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain121_n19_α
 xchain121_n18_β:
 jmp xchain121_n16_α
 xchain121_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn157: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn157]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n20_α
 xchain121_n19_β:
 jmp xchain121_n16_α
# IR_VAR
 xchain121_n20_α:
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 424], rax
 jmp xchain121_n21_α
 xchain121_n20_β:
 jmp xchain121_n16_α
# IR_LIT_INTEGER
 xchain121_n21_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain121_n22_α
 xchain121_n21_β:
 jmp xchain121_n16_α
.Lx160_0:
 .quad 0
 xchain121_n22_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn162: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn162]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n23_α
 xchain121_n22_β:
 jmp xchain121_n16_α
# IR_VAR_REF
 xchain121_n23_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain121_n24_α
 xchain121_n23_β:
 jmp xchain121_n16_α
# IR_VAR
 xchain121_n24_α:
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 344], rax
 jmp xchain121_n25_α
 xchain121_n24_β:
 jmp proc_data$2_ω
# IR_LIT_INTEGER
 xchain121_n25_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain121_n26_α
 xchain121_n25_β:
 jmp proc_data$2_ω
.Lx167_0:
 .quad 1
 xchain121_n26_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn169: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn169]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n27_α
 xchain121_n26_β:
 jmp xchain121_n16_α
 xchain121_n27_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn171: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n28_α
 xchain121_n27_β:
 jmp xchain121_n16_α
# IR_VAR_REF
 xchain121_n28_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain121_n29_α
 xchain121_n28_β:
 jmp xchain121_n16_α
# IR_VAR_REF
 xchain121_n29_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain121_n30_α
 xchain121_n29_β:
 jmp xchain121_n16_α
 xchain121_n30_α:
  .section .rodata
  .Lcall96_pname: .string "data/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall96_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n31_α
xchain121_n30_β:
 lea rdi, [r12 + 176]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain121_n16_α
 jmp xchain121_n31_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain121_n31_α:
 lea rax, [rip + xchain121_n30_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_data$2_γ
 xchain121_n31_β:
 jmp proc_data$2_ω
proc_data$2_β:
jmp xchain121_n12_α
proc_data$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 896]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_data$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_data$1_α
proc_data$1_α:
#=======================================================================================================================
    .global proc_data$1_α
    .global proc_data$1_β
    .global proc_data$1_γ
    .global proc_data$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_data$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_data$1_α_body:
 xchain179_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn181: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_data$1_ω
 jmp xchain179_n1_α
 xchain179_n0_β:
 jmp proc_data$1_ω
# IR_VAR_REF
 xchain179_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain179_n2_α
 xchain179_n1_β:
 jmp xchain179_n5_α
# IR_VAR_REF
 xchain179_n2_α:
 lea rdi, [r12 + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain179_n3_α
 xchain179_n2_β:
 jmp xchain179_n5_α
 xchain179_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn187: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn187]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain179_n5_α
 jmp xchain179_n4_α
 xchain179_n3_β:
 jmp xchain179_n5_α
# IR_VAR_REF
 xchain179_n4_α:
 lea rdi, [r12 + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain179_n6_α
 xchain179_n4_β:
 jmp xchain179_n5_α
 xchain179_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn191: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_data$1_ω
 jmp proc_data$1_ω
 xchain179_n5_β:
 jmp proc_data$1_ω
# IR_LIT_INTEGER
 xchain179_n6_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain179_n7_α
 xchain179_n6_β:
 jmp xchain179_n5_α
.Lx192_0:
 .quad 30
 xchain179_n7_α:
  .section .rodata
  .Lcall105_pname: .string "data/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall105_pname]
 mov esi, 2
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain179_n5_α
 jmp xchain179_n8_α
xchain179_n7_β:
 lea rdi, [r12 + 160]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain179_n5_α
 jmp xchain179_n8_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain179_n8_α:
 lea rax, [rip + xchain179_n7_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_data$1_γ
 xchain179_n8_β:
 jmp proc_data$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain179_n9_α:
 jmp qword ptr [r12 + 48]
 xchain179_n9_β:
 jmp proc_data$1_ω
proc_data$1_β:
jmp xchain179_n9_α
proc_data$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_data$1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "append/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_append$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1056
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "nrev/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_nrev$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 976
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "data/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_data$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 960
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "data/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_data$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 320
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
  pop rbp
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
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 352], rax
 pop rsi
main_α_body:
 xchain198_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn200: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn200]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain198_n1_α
 xchain198_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain198_n1_α:
 lea rdi, [r12 + 384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain198_n2_α
 xchain198_n1_β:
 jmp xchain198_n4_α
 xchain198_n2_α:
  .section .rodata
  .Lcall110_pname: .string "data/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall110_pname]
 mov esi, 1
 lea rdx, [r12 + 320]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain198_n4_α
 jmp xchain198_n3_α
xchain198_n2_β:
 lea rdi, [r12 + 320]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain198_n4_α
 jmp xchain198_n3_α
# IR_VAR_REF
 xchain198_n3_α:
 lea rdi, [r12 + 384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain198_n5_α
 xchain198_n3_β:
 jmp xchain198_n4_α
 xchain198_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn207: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain198_n4_β:
 jmp main_ω
# IR_VAR_REF
 xchain198_n5_α:
 lea rdi, [r12 + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain198_n6_α
 xchain198_n5_β:
 jmp xchain198_n4_α
 xchain198_n6_α:
  .section .rodata
  .Lcall114_pname: .string "nrev/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall114_pname]
 mov esi, 2
 lea rdx, [r12 + 240]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain198_n2_β
 jmp xchain198_n7_α
xchain198_n6_β:
 lea rdi, [r12 + 240]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain198_n2_β
 jmp xchain198_n7_α
# IR_VAR
 xchain198_n7_α:
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 184], rax
 jmp xchain198_n8_α
 xchain198_n7_β:
 jmp xchain198_n4_α
 xchain198_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn214: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain198_n6_β
 jmp xchain198_n9_α
 xchain198_n8_β:
 jmp xchain198_n6_β
# IR_LIT_STRING
 xchain198_n9_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain198_n10_α
 xchain198_n9_β:
 jmp xchain198_n4_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string ""
 xchain198_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn217: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn217]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain198_n6_β
 jmp xchain198_n11_α
 xchain198_n10_β:
 jmp xchain198_n6_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain198_n11_α:
 lea rax, [rip + xchain198_n6_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain198_n11_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain198_n12_α:
 jmp qword ptr [r12 + 32]
 xchain198_n12_β:
 jmp main_ω
main_β:
jmp xchain198_n12_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
