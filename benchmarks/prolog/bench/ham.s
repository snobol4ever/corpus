  .intel_syntax noprefix
  .text
  .globl proc_del_α
proc_del_α:
#=======================================================================================================================
    .global proc_del_α
    .global proc_del_β
    .global proc_del_γ
    .global proc_del_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_del_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1072], rax
 pop rsi
proc_del_α_body:
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
 je proc_del_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_del_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n2_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+720]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_del_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_del_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_del_ω
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n8_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_del_ω
# IR_VAR_REF local
 xchain0_n9_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n10_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp proc_del_ω
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn23: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+944]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 952], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+960]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn25: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn29: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_del_ω
 jmp proc_del_ω
 xchain0_n14_β:
 jmp proc_del_ω
 xchain0_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn31: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp proc_del_ω
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n18_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp proc_del_ω
# IR_VAR_REF local
 xchain0_n19_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n20_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp proc_del_ω
 xchain0_n21_α:
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
  .Lrkfn42: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n5_α
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+576]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 584], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+592]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn44: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 560]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n23_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_del_γ
 xchain0_n23_β:
 jmp proc_del_ω
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn48: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n25_α:
 jmp qword ptr [r12 + 80]
 xchain0_n25_β:
 jmp proc_del_ω
# IR_VAR_REF local
 xchain0_n26_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n14_α
# IR_LIT_STRING
 xchain0_n27_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_del_ω
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n28_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp proc_del_ω
# IR_VAR_REF local
 xchain0_n29_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp proc_del_ω
 xchain0_n30_α:
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
  .Lrkfn59: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n14_α
 xchain0_n31_α:
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
  .Lrkfn61: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n32_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n33_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n34_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n14_α
 xchain0_n35_α:
  .section .rodata
  .Lcall36_pname: .string "del"
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
   lea rdi, [rip + .Lcall36_pname]
 mov esi, 3
 lea rdx, [r12 + 208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n36_α
xchain0_n35_β:
 mov rdi, qword ptr [r12 + 208]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n36_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n36_α:
 lea rax, [rip + xchain0_n35_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_del_γ
 xchain0_n36_β:
 jmp proc_del_ω
proc_del_β:
jmp xchain0_n25_α
proc_del_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1072]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_del_ω:
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
  .globl proc_el_α
proc_el_α:
#=======================================================================================================================
    .global proc_el_α
    .global proc_el_β
    .global proc_el_γ
    .global proc_el_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_el_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 768], rax
 pop rsi
proc_el_α_body:
 xchain71_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn73: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_el_ω
 jmp xchain71_n1_α
 xchain71_n0_β:
 jmp proc_el_ω
# IR_VAR_REF local
 xchain71_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain71_n2_α
 xchain71_n1_β:
 jmp xchain71_n5_α
# IR_VAR_REF local
 xchain71_n2_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain71_n3_α
 xchain71_n2_β:
 jmp xchain71_n5_α
 xchain71_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn79: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain71_n5_α
 jmp xchain71_n4_α
 xchain71_n3_β:
 jmp xchain71_n5_α
# IR_VAR_REF local
 xchain71_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain71_n6_α
 xchain71_n4_β:
 jmp xchain71_n5_α
 xchain71_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+496]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn83: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_el_ω
 jmp xchain71_n7_α
 xchain71_n5_β:
 jmp proc_el_ω
# IR_LIT_STRING
 xchain71_n6_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain71_n8_α
 xchain71_n6_β:
 jmp proc_el_ω
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "."
# IR_VAR_REF local
 xchain71_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain71_n9_α
 xchain71_n7_β:
 jmp xchain71_n14_α
# IR_VAR_REF local
 xchain71_n8_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain71_n10_α
 xchain71_n8_β:
 jmp proc_el_ω
# IR_VAR_REF local
 xchain71_n9_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain71_n11_α
 xchain71_n9_β:
 jmp xchain71_n14_α
# IR_VAR_REF local
 xchain71_n10_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain71_n12_α
 xchain71_n10_β:
 jmp proc_el_ω
 xchain71_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn94: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain71_n14_α
 jmp xchain71_n13_α
 xchain71_n11_β:
 jmp xchain71_n14_α
 xchain71_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+640]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+656]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn96: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain71_n5_α
 jmp xchain71_n15_α
 xchain71_n12_β:
 jmp xchain71_n5_α
# IR_VAR_REF local
 xchain71_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain71_n16_α
 xchain71_n13_β:
 jmp xchain71_n14_α
 xchain71_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn100: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn100]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_el_ω
 jmp proc_el_ω
 xchain71_n14_β:
 jmp proc_el_ω
 xchain71_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn102: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain71_n5_α
 jmp xchain71_n17_α
 xchain71_n15_β:
 jmp xchain71_n5_α
# IR_LIT_STRING
 xchain71_n16_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx103_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain71_n18_α
 xchain71_n16_β:
 jmp proc_el_ω
.Lx103_0:
 .quad .Lx103_0_s
.Lx103_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain71_n17_α:
 lea rax, [rip + xchain71_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_el_γ
 xchain71_n17_β:
 jmp proc_el_ω
# IR_VAR_REF local
 xchain71_n18_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain71_n20_α
 xchain71_n18_β:
 jmp proc_el_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain71_n19_α:
 jmp qword ptr [r12 + 64]
 xchain71_n19_β:
 jmp proc_el_ω
# IR_VAR_REF local
 xchain71_n20_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain71_n21_α
 xchain71_n20_β:
 jmp proc_el_ω
 xchain71_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 360], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+368]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn113: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn113]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain71_n14_α
 jmp xchain71_n22_α
 xchain71_n21_β:
 jmp xchain71_n14_α
 xchain71_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn115: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain71_n14_α
 jmp xchain71_n23_α
 xchain71_n22_β:
 jmp xchain71_n14_α
# IR_VAR_REF local
 xchain71_n23_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain71_n24_α
 xchain71_n23_β:
 jmp xchain71_n14_α
# IR_VAR_REF local
 xchain71_n24_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain71_n25_α
 xchain71_n24_β:
 jmp xchain71_n14_α
 xchain71_n25_α:
  .section .rodata
  .Lcall63_pname: .string "el"
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
   lea rdi, [rip + .Lcall63_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain71_n14_α
 jmp xchain71_n26_α
xchain71_n25_β:
 mov rdi, qword ptr [r12 + 176]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain71_n14_α
 jmp xchain71_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain71_n26_α:
 lea rax, [rip + xchain71_n25_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_el_γ
 xchain71_n26_β:
 jmp proc_el_ω
proc_el_β:
jmp xchain71_n19_α
proc_el_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 768]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_el_ω:
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
  .globl proc_connect_α
proc_connect_α:
#=======================================================================================================================
    .global proc_connect_α
    .global proc_connect_β
    .global proc_connect_γ
    .global proc_connect_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_connect_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 9696], rax
 pop rsi
proc_connect_α_body:
 xchain123_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn125: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n1_α
 xchain123_n0_β:
 jmp proc_connect_ω
# IR_VAR_REF local
 xchain123_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9664], rax
 mov qword ptr [r12 + 9672], rdx
 jmp xchain123_n2_α
 xchain123_n1_β:
 jmp xchain123_n5_α
# IR_LIT_STRING
 xchain123_n2_α:
 mov qword ptr [r12 + 9680], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 9688], rax
 jmp xchain123_n3_α
 xchain123_n2_β:
 jmp xchain123_n5_α
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "a"
 xchain123_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9664] -> [zr+9632]
 mov rax, qword ptr [r12 + 9664]
 mov qword ptr [r12 + 9632], rax
 mov rax, qword ptr [r12 + 9672]
 mov qword ptr [r12 + 9640], rax
# marshal arg1 = producer-box slot [zr+9680] -> [zr+9648]
 mov rax, qword ptr [r12 + 9680]
 mov qword ptr [r12 + 9648], rax
 mov rax, qword ptr [r12 + 9688]
 mov qword ptr [r12 + 9656], rax
  .section .rodata
  .Lrkfn130: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn130]
 lea rsi, [r12 + 9632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9616], rax
 mov qword ptr [r12 + 9624], rdx
 cmp eax, 99
 je xchain123_n5_α
 jmp xchain123_n4_α
 xchain123_n3_β:
 jmp xchain123_n5_α
# IR_VAR_REF local
 xchain123_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9296], rax
 mov qword ptr [r12 + 9304], rdx
 jmp xchain123_n6_α
 xchain123_n4_β:
 jmp xchain123_n5_α
 xchain123_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+9232]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 9232], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 9240], rax
  .section .rodata
  .Lrkfn134: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn134]
 lea rsi, [r12 + 9232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9216], rax
 mov qword ptr [r12 + 9224], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n7_α
 xchain123_n5_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n6_α:
 mov qword ptr [r12 + 9600], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 9608], rax
 jmp xchain123_n8_α
 xchain123_n6_β:
 jmp proc_connect_ω
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 9184], rax
 mov qword ptr [r12 + 9192], rdx
 jmp xchain123_n9_α
 xchain123_n7_β:
 jmp xchain123_n14_α
# IR_LIT_STRING
 xchain123_n8_α:
 mov qword ptr [r12 + 9520], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 9528], rax
 jmp xchain123_n10_α
 xchain123_n8_β:
 jmp proc_connect_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "b"
# IR_LIT_STRING
 xchain123_n9_α:
 mov qword ptr [r12 + 9200], 1
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 9208], rax
 jmp xchain123_n11_α
 xchain123_n9_β:
 jmp xchain123_n14_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "b"
# IR_LIT_STRING
 xchain123_n10_α:
 mov qword ptr [r12 + 9504], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 9512], rax
 jmp xchain123_n12_α
 xchain123_n10_β:
 jmp proc_connect_ω
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "."
 xchain123_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9184] -> [zr+9152]
 mov rax, qword ptr [r12 + 9184]
 mov qword ptr [r12 + 9152], rax
 mov rax, qword ptr [r12 + 9192]
 mov qword ptr [r12 + 9160], rax
# marshal arg1 = producer-box slot [zr+9200] -> [zr+9168]
 mov rax, qword ptr [r12 + 9200]
 mov qword ptr [r12 + 9168], rax
 mov rax, qword ptr [r12 + 9208]
 mov qword ptr [r12 + 9176], rax
  .section .rodata
  .Lrkfn142: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn142]
 lea rsi, [r12 + 9152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9136], rax
 mov qword ptr [r12 + 9144], rdx
 cmp eax, 99
 je xchain123_n14_α
 jmp xchain123_n13_α
 xchain123_n11_β:
 jmp xchain123_n14_α
# IR_LIT_STRING
 xchain123_n12_α:
 mov qword ptr [r12 + 9424], 1
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 9432], rax
 jmp xchain123_n15_α
 xchain123_n12_β:
 jmp proc_connect_ω
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "j"
# IR_VAR_REF local
 xchain123_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8816], rax
 mov qword ptr [r12 + 8824], rdx
 jmp xchain123_n16_α
 xchain123_n13_β:
 jmp xchain123_n14_α
 xchain123_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8752]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 8752], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 8760], rax
  .section .rodata
  .Lrkfn147: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 8752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8736], rax
 mov qword ptr [r12 + 8744], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n17_α
 xchain123_n14_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n15_α:
 mov qword ptr [r12 + 9408], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 9416], rax
 jmp xchain123_n18_α
 xchain123_n15_β:
 jmp proc_connect_ω
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n16_α:
 mov qword ptr [r12 + 9120], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 9128], rax
 jmp xchain123_n19_α
 xchain123_n16_β:
 jmp proc_connect_ω
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8704], rax
 mov qword ptr [r12 + 8712], rdx
 jmp xchain123_n20_α
 xchain123_n17_β:
 jmp xchain123_n27_α
# IR_LIT_STRING
 xchain123_n18_α:
 mov qword ptr [r12 + 9328], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 9336], rax
 jmp xchain123_n21_α
 xchain123_n18_β:
 jmp proc_connect_ω
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "k"
# IR_LIT_STRING
 xchain123_n19_α:
 mov qword ptr [r12 + 9040], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 9048], rax
 jmp xchain123_n22_α
 xchain123_n19_β:
 jmp proc_connect_ω
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "a"
# IR_LIT_STRING
 xchain123_n20_α:
 mov qword ptr [r12 + 8720], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 8728], rax
 jmp xchain123_n23_α
 xchain123_n20_β:
 jmp xchain123_n27_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "c"
# IR_LIT_STRING
 xchain123_n21_α:
 mov qword ptr [r12 + 9312], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 9320], rax
 jmp xchain123_n24_α
 xchain123_n21_β:
 jmp proc_connect_ω
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n22_α:
 mov qword ptr [r12 + 9024], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [r12 + 9032], rax
 jmp xchain123_n25_α
 xchain123_n22_β:
 jmp proc_connect_ω
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "."
 xchain123_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8704] -> [zr+8672]
 mov rax, qword ptr [r12 + 8704]
 mov qword ptr [r12 + 8672], rax
 mov rax, qword ptr [r12 + 8712]
 mov qword ptr [r12 + 8680], rax
# marshal arg1 = producer-box slot [zr+8720] -> [zr+8688]
 mov rax, qword ptr [r12 + 8720]
 mov qword ptr [r12 + 8688], rax
 mov rax, qword ptr [r12 + 8728]
 mov qword ptr [r12 + 8696], rax
  .section .rodata
  .Lrkfn158: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 8672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8656], rax
 mov qword ptr [r12 + 8664], rdx
 cmp eax, 99
 je xchain123_n27_α
 jmp xchain123_n26_α
 xchain123_n23_β:
 jmp xchain123_n27_α
 xchain123_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9408] -> [zr+9360]
 mov rax, qword ptr [r12 + 9408]
 mov qword ptr [r12 + 9360], rax
 mov rax, qword ptr [r12 + 9416]
 mov qword ptr [r12 + 9368], rax
# marshal arg1 = producer-box slot [zr+9328] -> [zr+9376]
 mov rax, qword ptr [r12 + 9328]
 mov qword ptr [r12 + 9376], rax
 mov rax, qword ptr [r12 + 9336]
 mov qword ptr [r12 + 9384], rax
# marshal arg2 = producer-box slot [zr+9312] -> [zr+9392]
 mov rax, qword ptr [r12 + 9312]
 mov qword ptr [r12 + 9392], rax
 mov rax, qword ptr [r12 + 9320]
 mov qword ptr [r12 + 9400], rax
  .section .rodata
  .Lrkfn160: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 9360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9344], rax
 mov qword ptr [r12 + 9352], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n28_α
 xchain123_n24_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n25_α:
 mov qword ptr [r12 + 8944], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 8952], rax
 jmp xchain123_n29_α
 xchain123_n25_β:
 jmp proc_connect_ω
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "c"
# IR_VAR_REF local
 xchain123_n26_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8336], rax
 mov qword ptr [r12 + 8344], rdx
 jmp xchain123_n30_α
 xchain123_n26_β:
 jmp xchain123_n27_α
 xchain123_n27_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8272]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 8272], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 8280], rax
  .section .rodata
  .Lrkfn165: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn165]
 lea rsi, [r12 + 8272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8256], rax
 mov qword ptr [r12 + 8264], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n31_α
 xchain123_n27_β:
 jmp proc_connect_ω
 xchain123_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9504] -> [zr+9456]
 mov rax, qword ptr [r12 + 9504]
 mov qword ptr [r12 + 9456], rax
 mov rax, qword ptr [r12 + 9512]
 mov qword ptr [r12 + 9464], rax
# marshal arg1 = producer-box slot [zr+9424] -> [zr+9472]
 mov rax, qword ptr [r12 + 9424]
 mov qword ptr [r12 + 9472], rax
 mov rax, qword ptr [r12 + 9432]
 mov qword ptr [r12 + 9480], rax
# marshal arg2 = producer-box slot [zr+9344] -> [zr+9488]
 mov rax, qword ptr [r12 + 9344]
 mov qword ptr [r12 + 9488], rax
 mov rax, qword ptr [r12 + 9352]
 mov qword ptr [r12 + 9496], rax
  .section .rodata
  .Lrkfn167: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn167]
 lea rsi, [r12 + 9456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9440], rax
 mov qword ptr [r12 + 9448], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n32_α
 xchain123_n28_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n29_α:
 mov qword ptr [r12 + 8928], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 8936], rax
 jmp xchain123_n33_α
 xchain123_n29_β:
 jmp proc_connect_ω
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n30_α:
 mov qword ptr [r12 + 8640], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 8648], rax
 jmp xchain123_n34_α
 xchain123_n30_β:
 jmp proc_connect_ω
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n31_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 8224], rax
 mov qword ptr [r12 + 8232], rdx
 jmp xchain123_n35_α
 xchain123_n31_β:
 jmp xchain123_n44_α
 xchain123_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9600] -> [zr+9552]
 mov rax, qword ptr [r12 + 9600]
 mov qword ptr [r12 + 9552], rax
 mov rax, qword ptr [r12 + 9608]
 mov qword ptr [r12 + 9560], rax
# marshal arg1 = producer-box slot [zr+9520] -> [zr+9568]
 mov rax, qword ptr [r12 + 9520]
 mov qword ptr [r12 + 9568], rax
 mov rax, qword ptr [r12 + 9528]
 mov qword ptr [r12 + 9576], rax
# marshal arg2 = producer-box slot [zr+9440] -> [zr+9584]
 mov rax, qword ptr [r12 + 9440]
 mov qword ptr [r12 + 9584], rax
 mov rax, qword ptr [r12 + 9448]
 mov qword ptr [r12 + 9592], rax
  .section .rodata
  .Lrkfn173: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn173]
 lea rsi, [r12 + 9552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9536], rax
 mov qword ptr [r12 + 9544], rdx
 cmp eax, 99
 je xchain123_n5_α
 jmp xchain123_n36_α
 xchain123_n32_β:
 jmp xchain123_n5_α
# IR_LIT_STRING
 xchain123_n33_α:
 mov qword ptr [r12 + 8848], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [r12 + 8856], rax
 jmp xchain123_n37_α
 xchain123_n33_β:
 jmp proc_connect_ω
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "p"
# IR_LIT_STRING
 xchain123_n34_α:
 mov qword ptr [r12 + 8560], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 8568], rax
 jmp xchain123_n38_α
 xchain123_n34_β:
 jmp proc_connect_ω
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "b"
# IR_LIT_STRING
 xchain123_n35_α:
 mov qword ptr [r12 + 8240], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 8248], rax
 jmp xchain123_n39_α
 xchain123_n35_β:
 jmp xchain123_n44_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "d"
 xchain123_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9296] -> [zr+9264]
 mov rax, qword ptr [r12 + 9296]
 mov qword ptr [r12 + 9264], rax
 mov rax, qword ptr [r12 + 9304]
 mov qword ptr [r12 + 9272], rax
# marshal arg1 = producer-box slot [zr+9536] -> [zr+9280]
 mov rax, qword ptr [r12 + 9536]
 mov qword ptr [r12 + 9280], rax
 mov rax, qword ptr [r12 + 9544]
 mov qword ptr [r12 + 9288], rax
  .section .rodata
  .Lrkfn178: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn178]
 lea rsi, [r12 + 9264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9248], rax
 mov qword ptr [r12 + 9256], rdx
 cmp eax, 99
 je xchain123_n5_α
 jmp xchain123_n40_α
 xchain123_n36_β:
 jmp xchain123_n5_α
# IR_LIT_STRING
 xchain123_n37_α:
 mov qword ptr [r12 + 8832], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 8840], rax
 jmp xchain123_n41_α
 xchain123_n37_β:
 jmp proc_connect_ω
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n38_α:
 mov qword ptr [r12 + 8544], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [r12 + 8552], rax
 jmp xchain123_n42_α
 xchain123_n38_β:
 jmp proc_connect_ω
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "."
 xchain123_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8224] -> [zr+8192]
 mov rax, qword ptr [r12 + 8224]
 mov qword ptr [r12 + 8192], rax
 mov rax, qword ptr [r12 + 8232]
 mov qword ptr [r12 + 8200], rax
# marshal arg1 = producer-box slot [zr+8240] -> [zr+8208]
 mov rax, qword ptr [r12 + 8240]
 mov qword ptr [r12 + 8208], rax
 mov rax, qword ptr [r12 + 8248]
 mov qword ptr [r12 + 8216], rax
  .section .rodata
  .Lrkfn182: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn182]
 lea rsi, [r12 + 8192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8176], rax
 mov qword ptr [r12 + 8184], rdx
 cmp eax, 99
 je xchain123_n44_α
 jmp xchain123_n43_α
 xchain123_n39_β:
 jmp xchain123_n44_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n40_α:
 lea rax, [rip + xchain123_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n40_β:
 jmp proc_connect_ω
 xchain123_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8928] -> [zr+8880]
 mov rax, qword ptr [r12 + 8928]
 mov qword ptr [r12 + 8880], rax
 mov rax, qword ptr [r12 + 8936]
 mov qword ptr [r12 + 8888], rax
# marshal arg1 = producer-box slot [zr+8848] -> [zr+8896]
 mov rax, qword ptr [r12 + 8848]
 mov qword ptr [r12 + 8896], rax
 mov rax, qword ptr [r12 + 8856]
 mov qword ptr [r12 + 8904], rax
# marshal arg2 = producer-box slot [zr+8832] -> [zr+8912]
 mov rax, qword ptr [r12 + 8832]
 mov qword ptr [r12 + 8912], rax
 mov rax, qword ptr [r12 + 8840]
 mov qword ptr [r12 + 8920], rax
  .section .rodata
  .Lrkfn186: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 8880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8864], rax
 mov qword ptr [r12 + 8872], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n46_α
 xchain123_n41_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n42_α:
 mov qword ptr [r12 + 8464], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 8472], rax
 jmp xchain123_n47_α
 xchain123_n42_β:
 jmp proc_connect_ω
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "d"
# IR_VAR_REF local
 xchain123_n43_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7856], rax
 mov qword ptr [r12 + 7864], rdx
 jmp xchain123_n48_α
 xchain123_n43_β:
 jmp xchain123_n44_α
 xchain123_n44_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7792]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 7792], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 7800], rax
  .section .rodata
  .Lrkfn191: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 7792]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7776], rax
 mov qword ptr [r12 + 7784], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n49_α
 xchain123_n44_β:
 jmp proc_connect_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain123_n45_α:
 jmp qword ptr [r12 + 64]
 xchain123_n45_β:
 jmp proc_connect_ω
 xchain123_n46_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9024] -> [zr+8976]
 mov rax, qword ptr [r12 + 9024]
 mov qword ptr [r12 + 8976], rax
 mov rax, qword ptr [r12 + 9032]
 mov qword ptr [r12 + 8984], rax
# marshal arg1 = producer-box slot [zr+8944] -> [zr+8992]
 mov rax, qword ptr [r12 + 8944]
 mov qword ptr [r12 + 8992], rax
 mov rax, qword ptr [r12 + 8952]
 mov qword ptr [r12 + 9000], rax
# marshal arg2 = producer-box slot [zr+8864] -> [zr+9008]
 mov rax, qword ptr [r12 + 8864]
 mov qword ptr [r12 + 9008], rax
 mov rax, qword ptr [r12 + 8872]
 mov qword ptr [r12 + 9016], rax
  .section .rodata
  .Lrkfn195: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 8976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8960], rax
 mov qword ptr [r12 + 8968], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n50_α
 xchain123_n46_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n47_α:
 mov qword ptr [r12 + 8448], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [r12 + 8456], rax
 jmp xchain123_n51_α
 xchain123_n47_β:
 jmp proc_connect_ω
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n48_α:
 mov qword ptr [r12 + 8160], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [r12 + 8168], rax
 jmp xchain123_n52_α
 xchain123_n48_β:
 jmp proc_connect_ω
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n49_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7744], rax
 mov qword ptr [r12 + 7752], rdx
 jmp xchain123_n53_α
 xchain123_n49_β:
 jmp xchain123_n62_α
 xchain123_n50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9120] -> [zr+9072]
 mov rax, qword ptr [r12 + 9120]
 mov qword ptr [r12 + 9072], rax
 mov rax, qword ptr [r12 + 9128]
 mov qword ptr [r12 + 9080], rax
# marshal arg1 = producer-box slot [zr+9040] -> [zr+9088]
 mov rax, qword ptr [r12 + 9040]
 mov qword ptr [r12 + 9088], rax
 mov rax, qword ptr [r12 + 9048]
 mov qword ptr [r12 + 9096], rax
# marshal arg2 = producer-box slot [zr+8960] -> [zr+9104]
 mov rax, qword ptr [r12 + 8960]
 mov qword ptr [r12 + 9104], rax
 mov rax, qword ptr [r12 + 8968]
 mov qword ptr [r12 + 9112], rax
  .section .rodata
  .Lrkfn201: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn201]
 lea rsi, [r12 + 9072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 9056], rax
 mov qword ptr [r12 + 9064], rdx
 cmp eax, 99
 je xchain123_n14_α
 jmp xchain123_n54_α
 xchain123_n50_β:
 jmp xchain123_n14_α
# IR_LIT_STRING
 xchain123_n51_α:
 mov qword ptr [r12 + 8368], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 8376], rax
 jmp xchain123_n55_α
 xchain123_n51_β:
 jmp proc_connect_ω
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "l"
# IR_LIT_STRING
 xchain123_n52_α:
 mov qword ptr [r12 + 8080], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 8088], rax
 jmp xchain123_n56_α
 xchain123_n52_β:
 jmp proc_connect_ω
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "c"
# IR_LIT_STRING
 xchain123_n53_α:
 mov qword ptr [r12 + 7760], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [r12 + 7768], rax
 jmp xchain123_n57_α
 xchain123_n53_β:
 jmp xchain123_n62_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "e"
 xchain123_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8816] -> [zr+8784]
 mov rax, qword ptr [r12 + 8816]
 mov qword ptr [r12 + 8784], rax
 mov rax, qword ptr [r12 + 8824]
 mov qword ptr [r12 + 8792], rax
# marshal arg1 = producer-box slot [zr+9056] -> [zr+8800]
 mov rax, qword ptr [r12 + 9056]
 mov qword ptr [r12 + 8800], rax
 mov rax, qword ptr [r12 + 9064]
 mov qword ptr [r12 + 8808], rax
  .section .rodata
  .Lrkfn206: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn206]
 lea rsi, [r12 + 8784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8768], rax
 mov qword ptr [r12 + 8776], rdx
 cmp eax, 99
 je xchain123_n14_α
 jmp xchain123_n58_α
 xchain123_n54_β:
 jmp xchain123_n14_α
# IR_LIT_STRING
 xchain123_n55_α:
 mov qword ptr [r12 + 8352], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [r12 + 8360], rax
 jmp xchain123_n59_α
 xchain123_n55_β:
 jmp proc_connect_ω
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n56_α:
 mov qword ptr [r12 + 8064], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [r12 + 8072], rax
 jmp xchain123_n60_α
 xchain123_n56_β:
 jmp proc_connect_ω
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "."
 xchain123_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7744] -> [zr+7712]
 mov rax, qword ptr [r12 + 7744]
 mov qword ptr [r12 + 7712], rax
 mov rax, qword ptr [r12 + 7752]
 mov qword ptr [r12 + 7720], rax
# marshal arg1 = producer-box slot [zr+7760] -> [zr+7728]
 mov rax, qword ptr [r12 + 7760]
 mov qword ptr [r12 + 7728], rax
 mov rax, qword ptr [r12 + 7768]
 mov qword ptr [r12 + 7736], rax
  .section .rodata
  .Lrkfn210: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 7712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7696], rax
 mov qword ptr [r12 + 7704], rdx
 cmp eax, 99
 je xchain123_n62_α
 jmp xchain123_n61_α
 xchain123_n57_β:
 jmp xchain123_n62_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n58_α:
 lea rax, [rip + xchain123_n14_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n58_β:
 jmp proc_connect_ω
 xchain123_n59_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8448] -> [zr+8400]
 mov rax, qword ptr [r12 + 8448]
 mov qword ptr [r12 + 8400], rax
 mov rax, qword ptr [r12 + 8456]
 mov qword ptr [r12 + 8408], rax
# marshal arg1 = producer-box slot [zr+8368] -> [zr+8416]
 mov rax, qword ptr [r12 + 8368]
 mov qword ptr [r12 + 8416], rax
 mov rax, qword ptr [r12 + 8376]
 mov qword ptr [r12 + 8424], rax
# marshal arg2 = producer-box slot [zr+8352] -> [zr+8432]
 mov rax, qword ptr [r12 + 8352]
 mov qword ptr [r12 + 8432], rax
 mov rax, qword ptr [r12 + 8360]
 mov qword ptr [r12 + 8440], rax
  .section .rodata
  .Lrkfn214: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 8400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8384], rax
 mov qword ptr [r12 + 8392], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n63_α
 xchain123_n59_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n60_α:
 mov qword ptr [r12 + 7984], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 7992], rax
 jmp xchain123_n64_α
 xchain123_n60_β:
 jmp proc_connect_ω
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "e"
# IR_VAR_REF local
 xchain123_n61_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7376], rax
 mov qword ptr [r12 + 7384], rdx
 jmp xchain123_n65_α
 xchain123_n61_β:
 jmp xchain123_n62_α
 xchain123_n62_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7312]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 7312], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 7320], rax
  .section .rodata
  .Lrkfn219: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn219]
 lea rsi, [r12 + 7312]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7296], rax
 mov qword ptr [r12 + 7304], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n66_α
 xchain123_n62_β:
 jmp proc_connect_ω
 xchain123_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8544] -> [zr+8496]
 mov rax, qword ptr [r12 + 8544]
 mov qword ptr [r12 + 8496], rax
 mov rax, qword ptr [r12 + 8552]
 mov qword ptr [r12 + 8504], rax
# marshal arg1 = producer-box slot [zr+8464] -> [zr+8512]
 mov rax, qword ptr [r12 + 8464]
 mov qword ptr [r12 + 8512], rax
 mov rax, qword ptr [r12 + 8472]
 mov qword ptr [r12 + 8520], rax
# marshal arg2 = producer-box slot [zr+8384] -> [zr+8528]
 mov rax, qword ptr [r12 + 8384]
 mov qword ptr [r12 + 8528], rax
 mov rax, qword ptr [r12 + 8392]
 mov qword ptr [r12 + 8536], rax
  .section .rodata
  .Lrkfn221: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn221]
 lea rsi, [r12 + 8496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8480], rax
 mov qword ptr [r12 + 8488], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n67_α
 xchain123_n63_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n64_α:
 mov qword ptr [r12 + 7968], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [r12 + 7976], rax
 jmp xchain123_n68_α
 xchain123_n64_β:
 jmp proc_connect_ω
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n65_α:
 mov qword ptr [r12 + 7680], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [r12 + 7688], rax
 jmp xchain123_n69_α
 xchain123_n65_β:
 jmp proc_connect_ω
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n66_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 7264], rax
 mov qword ptr [r12 + 7272], rdx
 jmp xchain123_n70_α
 xchain123_n66_β:
 jmp xchain123_n79_α
 xchain123_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8640] -> [zr+8592]
 mov rax, qword ptr [r12 + 8640]
 mov qword ptr [r12 + 8592], rax
 mov rax, qword ptr [r12 + 8648]
 mov qword ptr [r12 + 8600], rax
# marshal arg1 = producer-box slot [zr+8560] -> [zr+8608]
 mov rax, qword ptr [r12 + 8560]
 mov qword ptr [r12 + 8608], rax
 mov rax, qword ptr [r12 + 8568]
 mov qword ptr [r12 + 8616], rax
# marshal arg2 = producer-box slot [zr+8480] -> [zr+8624]
 mov rax, qword ptr [r12 + 8480]
 mov qword ptr [r12 + 8624], rax
 mov rax, qword ptr [r12 + 8488]
 mov qword ptr [r12 + 8632], rax
  .section .rodata
  .Lrkfn227: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 8592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8576], rax
 mov qword ptr [r12 + 8584], rdx
 cmp eax, 99
 je xchain123_n27_α
 jmp xchain123_n71_α
 xchain123_n67_β:
 jmp xchain123_n27_α
# IR_LIT_STRING
 xchain123_n68_α:
 mov qword ptr [r12 + 7888], 1
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [r12 + 7896], rax
 jmp xchain123_n72_α
 xchain123_n68_β:
 jmp proc_connect_ω
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "q"
# IR_LIT_STRING
 xchain123_n69_α:
 mov qword ptr [r12 + 7600], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [r12 + 7608], rax
 jmp xchain123_n73_α
 xchain123_n69_β:
 jmp proc_connect_ω
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "d"
# IR_LIT_STRING
 xchain123_n70_α:
 mov qword ptr [r12 + 7280], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [r12 + 7288], rax
 jmp xchain123_n74_α
 xchain123_n70_β:
 jmp xchain123_n79_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "f"
 xchain123_n71_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8336] -> [zr+8304]
 mov rax, qword ptr [r12 + 8336]
 mov qword ptr [r12 + 8304], rax
 mov rax, qword ptr [r12 + 8344]
 mov qword ptr [r12 + 8312], rax
# marshal arg1 = producer-box slot [zr+8576] -> [zr+8320]
 mov rax, qword ptr [r12 + 8576]
 mov qword ptr [r12 + 8320], rax
 mov rax, qword ptr [r12 + 8584]
 mov qword ptr [r12 + 8328], rax
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 8304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8288], rax
 mov qword ptr [r12 + 8296], rdx
 cmp eax, 99
 je xchain123_n27_α
 jmp xchain123_n75_α
 xchain123_n71_β:
 jmp xchain123_n27_α
# IR_LIT_STRING
 xchain123_n72_α:
 mov qword ptr [r12 + 7872], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [r12 + 7880], rax
 jmp xchain123_n76_α
 xchain123_n72_β:
 jmp proc_connect_ω
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n73_α:
 mov qword ptr [r12 + 7584], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [r12 + 7592], rax
 jmp xchain123_n77_α
 xchain123_n73_β:
 jmp proc_connect_ω
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "."
 xchain123_n74_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7264] -> [zr+7232]
 mov rax, qword ptr [r12 + 7264]
 mov qword ptr [r12 + 7232], rax
 mov rax, qword ptr [r12 + 7272]
 mov qword ptr [r12 + 7240], rax
# marshal arg1 = producer-box slot [zr+7280] -> [zr+7248]
 mov rax, qword ptr [r12 + 7280]
 mov qword ptr [r12 + 7248], rax
 mov rax, qword ptr [r12 + 7288]
 mov qword ptr [r12 + 7256], rax
  .section .rodata
  .Lrkfn236: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 7232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7216], rax
 mov qword ptr [r12 + 7224], rdx
 cmp eax, 99
 je xchain123_n79_α
 jmp xchain123_n78_α
 xchain123_n74_β:
 jmp xchain123_n79_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n75_α:
 lea rax, [rip + xchain123_n27_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n75_β:
 jmp proc_connect_ω
 xchain123_n76_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7968] -> [zr+7920]
 mov rax, qword ptr [r12 + 7968]
 mov qword ptr [r12 + 7920], rax
 mov rax, qword ptr [r12 + 7976]
 mov qword ptr [r12 + 7928], rax
# marshal arg1 = producer-box slot [zr+7888] -> [zr+7936]
 mov rax, qword ptr [r12 + 7888]
 mov qword ptr [r12 + 7936], rax
 mov rax, qword ptr [r12 + 7896]
 mov qword ptr [r12 + 7944], rax
# marshal arg2 = producer-box slot [zr+7872] -> [zr+7952]
 mov rax, qword ptr [r12 + 7872]
 mov qword ptr [r12 + 7952], rax
 mov rax, qword ptr [r12 + 7880]
 mov qword ptr [r12 + 7960], rax
  .section .rodata
  .Lrkfn240: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 7920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7904], rax
 mov qword ptr [r12 + 7912], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n80_α
 xchain123_n76_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n77_α:
 mov qword ptr [r12 + 7504], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 7512], rax
 jmp xchain123_n81_α
 xchain123_n77_β:
 jmp proc_connect_ω
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "f"
# IR_VAR_REF local
 xchain123_n78_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6896], rax
 mov qword ptr [r12 + 6904], rdx
 jmp xchain123_n82_α
 xchain123_n78_β:
 jmp xchain123_n79_α
 xchain123_n79_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6832]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 6832], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 6840], rax
  .section .rodata
  .Lrkfn245: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn245]
 lea rsi, [r12 + 6832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6816], rax
 mov qword ptr [r12 + 6824], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n83_α
 xchain123_n79_β:
 jmp proc_connect_ω
 xchain123_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8064] -> [zr+8016]
 mov rax, qword ptr [r12 + 8064]
 mov qword ptr [r12 + 8016], rax
 mov rax, qword ptr [r12 + 8072]
 mov qword ptr [r12 + 8024], rax
# marshal arg1 = producer-box slot [zr+7984] -> [zr+8032]
 mov rax, qword ptr [r12 + 7984]
 mov qword ptr [r12 + 8032], rax
 mov rax, qword ptr [r12 + 7992]
 mov qword ptr [r12 + 8040], rax
# marshal arg2 = producer-box slot [zr+7904] -> [zr+8048]
 mov rax, qword ptr [r12 + 7904]
 mov qword ptr [r12 + 8048], rax
 mov rax, qword ptr [r12 + 7912]
 mov qword ptr [r12 + 8056], rax
  .section .rodata
  .Lrkfn247: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn247]
 lea rsi, [r12 + 8016]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8000], rax
 mov qword ptr [r12 + 8008], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n84_α
 xchain123_n80_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n81_α:
 mov qword ptr [r12 + 7488], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 7496], rax
 jmp xchain123_n85_α
 xchain123_n81_β:
 jmp proc_connect_ω
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n82_α:
 mov qword ptr [r12 + 7200], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 7208], rax
 jmp xchain123_n86_α
 xchain123_n82_β:
 jmp proc_connect_ω
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n83_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6784], rax
 mov qword ptr [r12 + 6792], rdx
 jmp xchain123_n87_α
 xchain123_n83_β:
 jmp xchain123_n96_α
 xchain123_n84_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8160] -> [zr+8112]
 mov rax, qword ptr [r12 + 8160]
 mov qword ptr [r12 + 8112], rax
 mov rax, qword ptr [r12 + 8168]
 mov qword ptr [r12 + 8120], rax
# marshal arg1 = producer-box slot [zr+8080] -> [zr+8128]
 mov rax, qword ptr [r12 + 8080]
 mov qword ptr [r12 + 8128], rax
 mov rax, qword ptr [r12 + 8088]
 mov qword ptr [r12 + 8136], rax
# marshal arg2 = producer-box slot [zr+8000] -> [zr+8144]
 mov rax, qword ptr [r12 + 8000]
 mov qword ptr [r12 + 8144], rax
 mov rax, qword ptr [r12 + 8008]
 mov qword ptr [r12 + 8152], rax
  .section .rodata
  .Lrkfn253: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn253]
 lea rsi, [r12 + 8112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 8096], rax
 mov qword ptr [r12 + 8104], rdx
 cmp eax, 99
 je xchain123_n44_α
 jmp xchain123_n88_α
 xchain123_n84_β:
 jmp xchain123_n44_α
# IR_LIT_STRING
 xchain123_n85_α:
 mov qword ptr [r12 + 7408], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 7416], rax
 jmp xchain123_n89_α
 xchain123_n85_β:
 jmp proc_connect_ω
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "m"
# IR_LIT_STRING
 xchain123_n86_α:
 mov qword ptr [r12 + 7120], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [r12 + 7128], rax
 jmp xchain123_n90_α
 xchain123_n86_β:
 jmp proc_connect_ω
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "e"
# IR_LIT_STRING
 xchain123_n87_α:
 mov qword ptr [r12 + 6800], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [r12 + 6808], rax
 jmp xchain123_n91_α
 xchain123_n87_β:
 jmp xchain123_n96_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "g"
 xchain123_n88_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7856] -> [zr+7824]
 mov rax, qword ptr [r12 + 7856]
 mov qword ptr [r12 + 7824], rax
 mov rax, qword ptr [r12 + 7864]
 mov qword ptr [r12 + 7832], rax
# marshal arg1 = producer-box slot [zr+8096] -> [zr+7840]
 mov rax, qword ptr [r12 + 8096]
 mov qword ptr [r12 + 7840], rax
 mov rax, qword ptr [r12 + 8104]
 mov qword ptr [r12 + 7848], rax
  .section .rodata
  .Lrkfn258: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn258]
 lea rsi, [r12 + 7824]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7808], rax
 mov qword ptr [r12 + 7816], rdx
 cmp eax, 99
 je xchain123_n44_α
 jmp xchain123_n92_α
 xchain123_n88_β:
 jmp xchain123_n44_α
# IR_LIT_STRING
 xchain123_n89_α:
 mov qword ptr [r12 + 7392], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [r12 + 7400], rax
 jmp xchain123_n93_α
 xchain123_n89_β:
 jmp proc_connect_ω
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n90_α:
 mov qword ptr [r12 + 7104], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 7112], rax
 jmp xchain123_n94_α
 xchain123_n90_β:
 jmp proc_connect_ω
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "."
 xchain123_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6784] -> [zr+6752]
 mov rax, qword ptr [r12 + 6784]
 mov qword ptr [r12 + 6752], rax
 mov rax, qword ptr [r12 + 6792]
 mov qword ptr [r12 + 6760], rax
# marshal arg1 = producer-box slot [zr+6800] -> [zr+6768]
 mov rax, qword ptr [r12 + 6800]
 mov qword ptr [r12 + 6768], rax
 mov rax, qword ptr [r12 + 6808]
 mov qword ptr [r12 + 6776], rax
  .section .rodata
  .Lrkfn262: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn262]
 lea rsi, [r12 + 6752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6736], rax
 mov qword ptr [r12 + 6744], rdx
 cmp eax, 99
 je xchain123_n96_α
 jmp xchain123_n95_α
 xchain123_n91_β:
 jmp xchain123_n96_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n92_α:
 lea rax, [rip + xchain123_n44_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n92_β:
 jmp proc_connect_ω
 xchain123_n93_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7488] -> [zr+7440]
 mov rax, qword ptr [r12 + 7488]
 mov qword ptr [r12 + 7440], rax
 mov rax, qword ptr [r12 + 7496]
 mov qword ptr [r12 + 7448], rax
# marshal arg1 = producer-box slot [zr+7408] -> [zr+7456]
 mov rax, qword ptr [r12 + 7408]
 mov qword ptr [r12 + 7456], rax
 mov rax, qword ptr [r12 + 7416]
 mov qword ptr [r12 + 7464], rax
# marshal arg2 = producer-box slot [zr+7392] -> [zr+7472]
 mov rax, qword ptr [r12 + 7392]
 mov qword ptr [r12 + 7472], rax
 mov rax, qword ptr [r12 + 7400]
 mov qword ptr [r12 + 7480], rax
  .section .rodata
  .Lrkfn266: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn266]
 lea rsi, [r12 + 7440]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7424], rax
 mov qword ptr [r12 + 7432], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n97_α
 xchain123_n93_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n94_α:
 mov qword ptr [r12 + 7024], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [r12 + 7032], rax
 jmp xchain123_n98_α
 xchain123_n94_β:
 jmp proc_connect_ω
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "g"
# IR_VAR_REF local
 xchain123_n95_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6416], rax
 mov qword ptr [r12 + 6424], rdx
 jmp xchain123_n99_α
 xchain123_n95_β:
 jmp xchain123_n96_α
 xchain123_n96_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6352]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 6352], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 6360], rax
  .section .rodata
  .Lrkfn271: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 6352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6336], rax
 mov qword ptr [r12 + 6344], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n100_α
 xchain123_n96_β:
 jmp proc_connect_ω
 xchain123_n97_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7536]
 mov rax, qword ptr [r12 + 7584]
 mov qword ptr [r12 + 7536], rax
 mov rax, qword ptr [r12 + 7592]
 mov qword ptr [r12 + 7544], rax
# marshal arg1 = producer-box slot [zr+7504] -> [zr+7552]
 mov rax, qword ptr [r12 + 7504]
 mov qword ptr [r12 + 7552], rax
 mov rax, qword ptr [r12 + 7512]
 mov qword ptr [r12 + 7560], rax
# marshal arg2 = producer-box slot [zr+7424] -> [zr+7568]
 mov rax, qword ptr [r12 + 7424]
 mov qword ptr [r12 + 7568], rax
 mov rax, qword ptr [r12 + 7432]
 mov qword ptr [r12 + 7576], rax
  .section .rodata
  .Lrkfn273: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn273]
 lea rsi, [r12 + 7536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7520], rax
 mov qword ptr [r12 + 7528], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n101_α
 xchain123_n97_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n98_α:
 mov qword ptr [r12 + 7008], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 7016], rax
 jmp xchain123_n102_α
 xchain123_n98_β:
 jmp proc_connect_ω
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n99_α:
 mov qword ptr [r12 + 6720], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 6728], rax
 jmp xchain123_n103_α
 xchain123_n99_β:
 jmp proc_connect_ω
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n100_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6304], rax
 mov qword ptr [r12 + 6312], rdx
 jmp xchain123_n104_α
 xchain123_n100_β:
 jmp xchain123_n113_α
 xchain123_n101_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7680] -> [zr+7632]
 mov rax, qword ptr [r12 + 7680]
 mov qword ptr [r12 + 7632], rax
 mov rax, qword ptr [r12 + 7688]
 mov qword ptr [r12 + 7640], rax
# marshal arg1 = producer-box slot [zr+7600] -> [zr+7648]
 mov rax, qword ptr [r12 + 7600]
 mov qword ptr [r12 + 7648], rax
 mov rax, qword ptr [r12 + 7608]
 mov qword ptr [r12 + 7656], rax
# marshal arg2 = producer-box slot [zr+7520] -> [zr+7664]
 mov rax, qword ptr [r12 + 7520]
 mov qword ptr [r12 + 7664], rax
 mov rax, qword ptr [r12 + 7528]
 mov qword ptr [r12 + 7672], rax
  .section .rodata
  .Lrkfn279: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 7632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7616], rax
 mov qword ptr [r12 + 7624], rdx
 cmp eax, 99
 je xchain123_n62_α
 jmp xchain123_n105_α
 xchain123_n101_β:
 jmp xchain123_n62_α
# IR_LIT_STRING
 xchain123_n102_α:
 mov qword ptr [r12 + 6928], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 6936], rax
 jmp xchain123_n106_α
 xchain123_n102_β:
 jmp proc_connect_ω
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "r"
# IR_LIT_STRING
 xchain123_n103_α:
 mov qword ptr [r12 + 6640], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [r12 + 6648], rax
 jmp xchain123_n107_α
 xchain123_n103_β:
 jmp proc_connect_ω
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "f"
# IR_LIT_STRING
 xchain123_n104_α:
 mov qword ptr [r12 + 6320], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [r12 + 6328], rax
 jmp xchain123_n108_α
 xchain123_n104_β:
 jmp xchain123_n113_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "h"
 xchain123_n105_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7376] -> [zr+7344]
 mov rax, qword ptr [r12 + 7376]
 mov qword ptr [r12 + 7344], rax
 mov rax, qword ptr [r12 + 7384]
 mov qword ptr [r12 + 7352], rax
# marshal arg1 = producer-box slot [zr+7616] -> [zr+7360]
 mov rax, qword ptr [r12 + 7616]
 mov qword ptr [r12 + 7360], rax
 mov rax, qword ptr [r12 + 7624]
 mov qword ptr [r12 + 7368], rax
  .section .rodata
  .Lrkfn284: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 7344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7328], rax
 mov qword ptr [r12 + 7336], rdx
 cmp eax, 99
 je xchain123_n62_α
 jmp xchain123_n109_α
 xchain123_n105_β:
 jmp xchain123_n62_α
# IR_LIT_STRING
 xchain123_n106_α:
 mov qword ptr [r12 + 6912], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [r12 + 6920], rax
 jmp xchain123_n110_α
 xchain123_n106_β:
 jmp proc_connect_ω
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n107_α:
 mov qword ptr [r12 + 6624], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [r12 + 6632], rax
 jmp xchain123_n111_α
 xchain123_n107_β:
 jmp proc_connect_ω
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "."
 xchain123_n108_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6304] -> [zr+6272]
 mov rax, qword ptr [r12 + 6304]
 mov qword ptr [r12 + 6272], rax
 mov rax, qword ptr [r12 + 6312]
 mov qword ptr [r12 + 6280], rax
# marshal arg1 = producer-box slot [zr+6320] -> [zr+6288]
 mov rax, qword ptr [r12 + 6320]
 mov qword ptr [r12 + 6288], rax
 mov rax, qword ptr [r12 + 6328]
 mov qword ptr [r12 + 6296], rax
  .section .rodata
  .Lrkfn288: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn288]
 lea rsi, [r12 + 6272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6256], rax
 mov qword ptr [r12 + 6264], rdx
 cmp eax, 99
 je xchain123_n113_α
 jmp xchain123_n112_α
 xchain123_n108_β:
 jmp xchain123_n113_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n109_α:
 lea rax, [rip + xchain123_n62_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n109_β:
 jmp proc_connect_ω
 xchain123_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7008] -> [zr+6960]
 mov rax, qword ptr [r12 + 7008]
 mov qword ptr [r12 + 6960], rax
 mov rax, qword ptr [r12 + 7016]
 mov qword ptr [r12 + 6968], rax
# marshal arg1 = producer-box slot [zr+6928] -> [zr+6976]
 mov rax, qword ptr [r12 + 6928]
 mov qword ptr [r12 + 6976], rax
 mov rax, qword ptr [r12 + 6936]
 mov qword ptr [r12 + 6984], rax
# marshal arg2 = producer-box slot [zr+6912] -> [zr+6992]
 mov rax, qword ptr [r12 + 6912]
 mov qword ptr [r12 + 6992], rax
 mov rax, qword ptr [r12 + 6920]
 mov qword ptr [r12 + 7000], rax
  .section .rodata
  .Lrkfn292: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn292]
 lea rsi, [r12 + 6960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6944], rax
 mov qword ptr [r12 + 6952], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n114_α
 xchain123_n110_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n111_α:
 mov qword ptr [r12 + 6544], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 6552], rax
 jmp xchain123_n115_α
 xchain123_n111_β:
 jmp proc_connect_ω
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "h"
# IR_VAR_REF local
 xchain123_n112_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5936], rax
 mov qword ptr [r12 + 5944], rdx
 jmp xchain123_n116_α
 xchain123_n112_β:
 jmp xchain123_n113_α
 xchain123_n113_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5872]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 5872], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 5880], rax
  .section .rodata
  .Lrkfn297: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 5872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n117_α
 xchain123_n113_β:
 jmp proc_connect_ω
 xchain123_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7104] -> [zr+7056]
 mov rax, qword ptr [r12 + 7104]
 mov qword ptr [r12 + 7056], rax
 mov rax, qword ptr [r12 + 7112]
 mov qword ptr [r12 + 7064], rax
# marshal arg1 = producer-box slot [zr+7024] -> [zr+7072]
 mov rax, qword ptr [r12 + 7024]
 mov qword ptr [r12 + 7072], rax
 mov rax, qword ptr [r12 + 7032]
 mov qword ptr [r12 + 7080], rax
# marshal arg2 = producer-box slot [zr+6944] -> [zr+7088]
 mov rax, qword ptr [r12 + 6944]
 mov qword ptr [r12 + 7088], rax
 mov rax, qword ptr [r12 + 6952]
 mov qword ptr [r12 + 7096], rax
  .section .rodata
  .Lrkfn299: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn299]
 lea rsi, [r12 + 7056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7040], rax
 mov qword ptr [r12 + 7048], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n118_α
 xchain123_n114_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n115_α:
 mov qword ptr [r12 + 6528], 1
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [r12 + 6536], rax
 jmp xchain123_n119_α
 xchain123_n115_β:
 jmp proc_connect_ω
.Lx300_0:
 .quad .Lx300_0_s
.Lx300_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n116_α:
 mov qword ptr [r12 + 6240], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [r12 + 6248], rax
 jmp xchain123_n120_α
 xchain123_n116_β:
 jmp proc_connect_ω
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n117_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5824], rax
 mov qword ptr [r12 + 5832], rdx
 jmp xchain123_n121_α
 xchain123_n117_β:
 jmp xchain123_n130_α
 xchain123_n118_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7200] -> [zr+7152]
 mov rax, qword ptr [r12 + 7200]
 mov qword ptr [r12 + 7152], rax
 mov rax, qword ptr [r12 + 7208]
 mov qword ptr [r12 + 7160], rax
# marshal arg1 = producer-box slot [zr+7120] -> [zr+7168]
 mov rax, qword ptr [r12 + 7120]
 mov qword ptr [r12 + 7168], rax
 mov rax, qword ptr [r12 + 7128]
 mov qword ptr [r12 + 7176], rax
# marshal arg2 = producer-box slot [zr+7040] -> [zr+7184]
 mov rax, qword ptr [r12 + 7040]
 mov qword ptr [r12 + 7184], rax
 mov rax, qword ptr [r12 + 7048]
 mov qword ptr [r12 + 7192], rax
  .section .rodata
  .Lrkfn305: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn305]
 lea rsi, [r12 + 7152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 7136], rax
 mov qword ptr [r12 + 7144], rdx
 cmp eax, 99
 je xchain123_n79_α
 jmp xchain123_n122_α
 xchain123_n118_β:
 jmp xchain123_n79_α
# IR_LIT_STRING
 xchain123_n119_α:
 mov qword ptr [r12 + 6448], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 6456], rax
 jmp xchain123_n123_α
 xchain123_n119_β:
 jmp proc_connect_ω
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "n"
# IR_LIT_STRING
 xchain123_n120_α:
 mov qword ptr [r12 + 6160], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [r12 + 6168], rax
 jmp xchain123_n124_α
 xchain123_n120_β:
 jmp proc_connect_ω
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "i"
# IR_LIT_STRING
 xchain123_n121_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain123_n125_α
 xchain123_n121_β:
 jmp xchain123_n130_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "i"
 xchain123_n122_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6896] -> [zr+6864]
 mov rax, qword ptr [r12 + 6896]
 mov qword ptr [r12 + 6864], rax
 mov rax, qword ptr [r12 + 6904]
 mov qword ptr [r12 + 6872], rax
# marshal arg1 = producer-box slot [zr+7136] -> [zr+6880]
 mov rax, qword ptr [r12 + 7136]
 mov qword ptr [r12 + 6880], rax
 mov rax, qword ptr [r12 + 7144]
 mov qword ptr [r12 + 6888], rax
  .section .rodata
  .Lrkfn310: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn310]
 lea rsi, [r12 + 6864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6848], rax
 mov qword ptr [r12 + 6856], rdx
 cmp eax, 99
 je xchain123_n79_α
 jmp xchain123_n126_α
 xchain123_n122_β:
 jmp xchain123_n79_α
# IR_LIT_STRING
 xchain123_n123_α:
 mov qword ptr [r12 + 6432], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 6440], rax
 jmp xchain123_n127_α
 xchain123_n123_β:
 jmp proc_connect_ω
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n124_α:
 mov qword ptr [r12 + 6144], 1
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [r12 + 6152], rax
 jmp xchain123_n128_α
 xchain123_n124_β:
 jmp proc_connect_ω
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "."
 xchain123_n125_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5824] -> [zr+5792]
 mov rax, qword ptr [r12 + 5824]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5832]
 mov qword ptr [r12 + 5800], rax
# marshal arg1 = producer-box slot [zr+5840] -> [zr+5808]
 mov rax, qword ptr [r12 + 5840]
 mov qword ptr [r12 + 5808], rax
 mov rax, qword ptr [r12 + 5848]
 mov qword ptr [r12 + 5816], rax
  .section .rodata
  .Lrkfn314: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn314]
 lea rsi, [r12 + 5792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5776], rax
 mov qword ptr [r12 + 5784], rdx
 cmp eax, 99
 je xchain123_n130_α
 jmp xchain123_n129_α
 xchain123_n125_β:
 jmp xchain123_n130_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n126_α:
 lea rax, [rip + xchain123_n79_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n126_β:
 jmp proc_connect_ω
 xchain123_n127_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6528] -> [zr+6480]
 mov rax, qword ptr [r12 + 6528]
 mov qword ptr [r12 + 6480], rax
 mov rax, qword ptr [r12 + 6536]
 mov qword ptr [r12 + 6488], rax
# marshal arg1 = producer-box slot [zr+6448] -> [zr+6496]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6496], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6504], rax
# marshal arg2 = producer-box slot [zr+6432] -> [zr+6512]
 mov rax, qword ptr [r12 + 6432]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6440]
 mov qword ptr [r12 + 6520], rax
  .section .rodata
  .Lrkfn318: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn318]
 lea rsi, [r12 + 6480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n131_α
 xchain123_n127_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n128_α:
 mov qword ptr [r12 + 6064], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 6072], rax
 jmp xchain123_n132_α
 xchain123_n128_β:
 jmp proc_connect_ω
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "g"
# IR_VAR_REF local
 xchain123_n129_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 jmp xchain123_n133_α
 xchain123_n129_β:
 jmp xchain123_n130_α
 xchain123_n130_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5392]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 5392], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 5400], rax
  .section .rodata
  .Lrkfn323: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn323]
 lea rsi, [r12 + 5392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n134_α
 xchain123_n130_β:
 jmp proc_connect_ω
 xchain123_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6624] -> [zr+6576]
 mov rax, qword ptr [r12 + 6624]
 mov qword ptr [r12 + 6576], rax
 mov rax, qword ptr [r12 + 6632]
 mov qword ptr [r12 + 6584], rax
# marshal arg1 = producer-box slot [zr+6544] -> [zr+6592]
 mov rax, qword ptr [r12 + 6544]
 mov qword ptr [r12 + 6592], rax
 mov rax, qword ptr [r12 + 6552]
 mov qword ptr [r12 + 6600], rax
# marshal arg2 = producer-box slot [zr+6464] -> [zr+6608]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6608], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6616], rax
  .section .rodata
  .Lrkfn325: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn325]
 lea rsi, [r12 + 6576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6560], rax
 mov qword ptr [r12 + 6568], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n135_α
 xchain123_n131_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n132_α:
 mov qword ptr [r12 + 6048], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 6056], rax
 jmp xchain123_n136_α
 xchain123_n132_β:
 jmp proc_connect_ω
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n133_α:
 mov qword ptr [r12 + 5760], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [r12 + 5768], rax
 jmp xchain123_n137_α
 xchain123_n133_β:
 jmp proc_connect_ω
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n134_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5344], rax
 mov qword ptr [r12 + 5352], rdx
 jmp xchain123_n138_α
 xchain123_n134_β:
 jmp xchain123_n147_α
 xchain123_n135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6720] -> [zr+6672]
 mov rax, qword ptr [r12 + 6720]
 mov qword ptr [r12 + 6672], rax
 mov rax, qword ptr [r12 + 6728]
 mov qword ptr [r12 + 6680], rax
# marshal arg1 = producer-box slot [zr+6640] -> [zr+6688]
 mov rax, qword ptr [r12 + 6640]
 mov qword ptr [r12 + 6688], rax
 mov rax, qword ptr [r12 + 6648]
 mov qword ptr [r12 + 6696], rax
# marshal arg2 = producer-box slot [zr+6560] -> [zr+6704]
 mov rax, qword ptr [r12 + 6560]
 mov qword ptr [r12 + 6704], rax
 mov rax, qword ptr [r12 + 6568]
 mov qword ptr [r12 + 6712], rax
  .section .rodata
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 6672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6656], rax
 mov qword ptr [r12 + 6664], rdx
 cmp eax, 99
 je xchain123_n96_α
 jmp xchain123_n139_α
 xchain123_n135_β:
 jmp xchain123_n96_α
# IR_LIT_STRING
 xchain123_n136_α:
 mov qword ptr [r12 + 5968], 1
 mov rax, qword ptr [rip + .Lx332_0]
 mov qword ptr [r12 + 5976], rax
 jmp xchain123_n140_α
 xchain123_n136_β:
 jmp proc_connect_ω
.Lx332_0:
 .quad .Lx332_0_s
.Lx332_0_s:
 .string "s"
# IR_LIT_STRING
 xchain123_n137_α:
 mov qword ptr [r12 + 5680], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [r12 + 5688], rax
 jmp xchain123_n141_α
 xchain123_n137_β:
 jmp proc_connect_ω
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "j"
# IR_LIT_STRING
 xchain123_n138_α:
 mov qword ptr [r12 + 5360], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [r12 + 5368], rax
 jmp xchain123_n142_α
 xchain123_n138_β:
 jmp xchain123_n147_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "j"
 xchain123_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6416] -> [zr+6384]
 mov rax, qword ptr [r12 + 6416]
 mov qword ptr [r12 + 6384], rax
 mov rax, qword ptr [r12 + 6424]
 mov qword ptr [r12 + 6392], rax
# marshal arg1 = producer-box slot [zr+6656] -> [zr+6400]
 mov rax, qword ptr [r12 + 6656]
 mov qword ptr [r12 + 6400], rax
 mov rax, qword ptr [r12 + 6664]
 mov qword ptr [r12 + 6408], rax
  .section .rodata
  .Lrkfn336: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn336]
 lea rsi, [r12 + 6384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 cmp eax, 99
 je xchain123_n96_α
 jmp xchain123_n143_α
 xchain123_n139_β:
 jmp xchain123_n96_α
# IR_LIT_STRING
 xchain123_n140_α:
 mov qword ptr [r12 + 5952], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [r12 + 5960], rax
 jmp xchain123_n144_α
 xchain123_n140_β:
 jmp proc_connect_ω
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n141_α:
 mov qword ptr [r12 + 5664], 1
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [r12 + 5672], rax
 jmp xchain123_n145_α
 xchain123_n141_β:
 jmp proc_connect_ω
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "."
 xchain123_n142_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5344] -> [zr+5312]
 mov rax, qword ptr [r12 + 5344]
 mov qword ptr [r12 + 5312], rax
 mov rax, qword ptr [r12 + 5352]
 mov qword ptr [r12 + 5320], rax
# marshal arg1 = producer-box slot [zr+5360] -> [zr+5328]
 mov rax, qword ptr [r12 + 5360]
 mov qword ptr [r12 + 5328], rax
 mov rax, qword ptr [r12 + 5368]
 mov qword ptr [r12 + 5336], rax
  .section .rodata
  .Lrkfn340: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn340]
 lea rsi, [r12 + 5312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 cmp eax, 99
 je xchain123_n147_α
 jmp xchain123_n146_α
 xchain123_n142_β:
 jmp xchain123_n147_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n143_α:
 lea rax, [rip + xchain123_n96_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n143_β:
 jmp proc_connect_ω
 xchain123_n144_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6048] -> [zr+6000]
 mov rax, qword ptr [r12 + 6048]
 mov qword ptr [r12 + 6000], rax
 mov rax, qword ptr [r12 + 6056]
 mov qword ptr [r12 + 6008], rax
# marshal arg1 = producer-box slot [zr+5968] -> [zr+6016]
 mov rax, qword ptr [r12 + 5968]
 mov qword ptr [r12 + 6016], rax
 mov rax, qword ptr [r12 + 5976]
 mov qword ptr [r12 + 6024], rax
# marshal arg2 = producer-box slot [zr+5952] -> [zr+6032]
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 6032], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 6040], rax
  .section .rodata
  .Lrkfn344: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn344]
 lea rsi, [r12 + 6000]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n148_α
 xchain123_n144_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n145_α:
 mov qword ptr [r12 + 5584], 1
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [r12 + 5592], rax
 jmp xchain123_n149_α
 xchain123_n145_β:
 jmp proc_connect_ω
.Lx345_0:
 .quad .Lx345_0_s
.Lx345_0_s:
 .string "h"
# IR_VAR_REF local
 xchain123_n146_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain123_n150_α
 xchain123_n146_β:
 jmp xchain123_n147_α
 xchain123_n147_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4912]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4912], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4920], rax
  .section .rodata
  .Lrkfn349: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn349]
 lea rsi, [r12 + 4912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n151_α
 xchain123_n147_β:
 jmp proc_connect_ω
 xchain123_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6144] -> [zr+6096]
 mov rax, qword ptr [r12 + 6144]
 mov qword ptr [r12 + 6096], rax
 mov rax, qword ptr [r12 + 6152]
 mov qword ptr [r12 + 6104], rax
# marshal arg1 = producer-box slot [zr+6064] -> [zr+6112]
 mov rax, qword ptr [r12 + 6064]
 mov qword ptr [r12 + 6112], rax
 mov rax, qword ptr [r12 + 6072]
 mov qword ptr [r12 + 6120], rax
# marshal arg2 = producer-box slot [zr+5984] -> [zr+6128]
 mov rax, qword ptr [r12 + 5984]
 mov qword ptr [r12 + 6128], rax
 mov rax, qword ptr [r12 + 5992]
 mov qword ptr [r12 + 6136], rax
  .section .rodata
  .Lrkfn351: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn351]
 lea rsi, [r12 + 6096]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6080], rax
 mov qword ptr [r12 + 6088], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n152_α
 xchain123_n148_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n149_α:
 mov qword ptr [r12 + 5568], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [r12 + 5576], rax
 jmp xchain123_n153_α
 xchain123_n149_β:
 jmp proc_connect_ω
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n150_α:
 mov qword ptr [r12 + 5280], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [r12 + 5288], rax
 jmp xchain123_n154_α
 xchain123_n150_β:
 jmp proc_connect_ω
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n151_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 jmp xchain123_n155_α
 xchain123_n151_β:
 jmp xchain123_n164_α
 xchain123_n152_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6240] -> [zr+6192]
 mov rax, qword ptr [r12 + 6240]
 mov qword ptr [r12 + 6192], rax
 mov rax, qword ptr [r12 + 6248]
 mov qword ptr [r12 + 6200], rax
# marshal arg1 = producer-box slot [zr+6160] -> [zr+6208]
 mov rax, qword ptr [r12 + 6160]
 mov qword ptr [r12 + 6208], rax
 mov rax, qword ptr [r12 + 6168]
 mov qword ptr [r12 + 6216], rax
# marshal arg2 = producer-box slot [zr+6080] -> [zr+6224]
 mov rax, qword ptr [r12 + 6080]
 mov qword ptr [r12 + 6224], rax
 mov rax, qword ptr [r12 + 6088]
 mov qword ptr [r12 + 6232], rax
  .section .rodata
  .Lrkfn357: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn357]
 lea rsi, [r12 + 6192]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6176], rax
 mov qword ptr [r12 + 6184], rdx
 cmp eax, 99
 je xchain123_n113_α
 jmp xchain123_n156_α
 xchain123_n152_β:
 jmp xchain123_n113_α
# IR_LIT_STRING
 xchain123_n153_α:
 mov qword ptr [r12 + 5488], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [r12 + 5496], rax
 jmp xchain123_n157_α
 xchain123_n153_β:
 jmp proc_connect_ω
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "o"
# IR_LIT_STRING
 xchain123_n154_α:
 mov qword ptr [r12 + 5200], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [r12 + 5208], rax
 jmp xchain123_n158_α
 xchain123_n154_β:
 jmp proc_connect_ω
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "a"
# IR_LIT_STRING
 xchain123_n155_α:
 mov qword ptr [r12 + 4880], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain123_n159_α
 xchain123_n155_β:
 jmp xchain123_n164_α
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "k"
 xchain123_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5936] -> [zr+5904]
 mov rax, qword ptr [r12 + 5936]
 mov qword ptr [r12 + 5904], rax
 mov rax, qword ptr [r12 + 5944]
 mov qword ptr [r12 + 5912], rax
# marshal arg1 = producer-box slot [zr+6176] -> [zr+5920]
 mov rax, qword ptr [r12 + 6176]
 mov qword ptr [r12 + 5920], rax
 mov rax, qword ptr [r12 + 6184]
 mov qword ptr [r12 + 5928], rax
  .section .rodata
  .Lrkfn362: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn362]
 lea rsi, [r12 + 5904]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je xchain123_n113_α
 jmp xchain123_n160_α
 xchain123_n156_β:
 jmp xchain123_n113_α
# IR_LIT_STRING
 xchain123_n157_α:
 mov qword ptr [r12 + 5472], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [r12 + 5480], rax
 jmp xchain123_n161_α
 xchain123_n157_β:
 jmp proc_connect_ω
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n158_α:
 mov qword ptr [r12 + 5184], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [r12 + 5192], rax
 jmp xchain123_n162_α
 xchain123_n158_β:
 jmp proc_connect_ω
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "."
 xchain123_n159_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4864] -> [zr+4832]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4840], rax
# marshal arg1 = producer-box slot [zr+4880] -> [zr+4848]
 mov rax, qword ptr [r12 + 4880]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4888]
 mov qword ptr [r12 + 4856], rax
  .section .rodata
  .Lrkfn366: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn366]
 lea rsi, [r12 + 4832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 cmp eax, 99
 je xchain123_n164_α
 jmp xchain123_n163_α
 xchain123_n159_β:
 jmp xchain123_n164_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n160_α:
 lea rax, [rip + xchain123_n113_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n160_β:
 jmp proc_connect_ω
 xchain123_n161_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5568] -> [zr+5520]
 mov rax, qword ptr [r12 + 5568]
 mov qword ptr [r12 + 5520], rax
 mov rax, qword ptr [r12 + 5576]
 mov qword ptr [r12 + 5528], rax
# marshal arg1 = producer-box slot [zr+5488] -> [zr+5536]
 mov rax, qword ptr [r12 + 5488]
 mov qword ptr [r12 + 5536], rax
 mov rax, qword ptr [r12 + 5496]
 mov qword ptr [r12 + 5544], rax
# marshal arg2 = producer-box slot [zr+5472] -> [zr+5552]
 mov rax, qword ptr [r12 + 5472]
 mov qword ptr [r12 + 5552], rax
 mov rax, qword ptr [r12 + 5480]
 mov qword ptr [r12 + 5560], rax
  .section .rodata
  .Lrkfn370: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn370]
 lea rsi, [r12 + 5520]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n165_α
 xchain123_n161_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n162_α:
 mov qword ptr [r12 + 5104], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [r12 + 5112], rax
 jmp xchain123_n166_α
 xchain123_n162_β:
 jmp proc_connect_ω
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "i"
# IR_VAR_REF local
 xchain123_n163_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain123_n167_α
 xchain123_n163_β:
 jmp xchain123_n164_α
 xchain123_n164_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4432]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 4432], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 4440], rax
  .section .rodata
  .Lrkfn375: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn375]
 lea rsi, [r12 + 4432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n168_α
 xchain123_n164_β:
 jmp proc_connect_ω
 xchain123_n165_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5664] -> [zr+5616]
 mov rax, qword ptr [r12 + 5664]
 mov qword ptr [r12 + 5616], rax
 mov rax, qword ptr [r12 + 5672]
 mov qword ptr [r12 + 5624], rax
# marshal arg1 = producer-box slot [zr+5584] -> [zr+5632]
 mov rax, qword ptr [r12 + 5584]
 mov qword ptr [r12 + 5632], rax
 mov rax, qword ptr [r12 + 5592]
 mov qword ptr [r12 + 5640], rax
# marshal arg2 = producer-box slot [zr+5504] -> [zr+5648]
 mov rax, qword ptr [r12 + 5504]
 mov qword ptr [r12 + 5648], rax
 mov rax, qword ptr [r12 + 5512]
 mov qword ptr [r12 + 5656], rax
  .section .rodata
  .Lrkfn377: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn377]
 lea rsi, [r12 + 5616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n169_α
 xchain123_n165_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n166_α:
 mov qword ptr [r12 + 5088], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 5096], rax
 jmp xchain123_n170_α
 xchain123_n166_β:
 jmp proc_connect_ω
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n167_α:
 mov qword ptr [r12 + 4800], 1
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [r12 + 4808], rax
 jmp xchain123_n171_α
 xchain123_n167_β:
 jmp proc_connect_ω
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n168_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4384], rax
 mov qword ptr [r12 + 4392], rdx
 jmp xchain123_n172_α
 xchain123_n168_β:
 jmp xchain123_n181_α
 xchain123_n169_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5760] -> [zr+5712]
 mov rax, qword ptr [r12 + 5760]
 mov qword ptr [r12 + 5712], rax
 mov rax, qword ptr [r12 + 5768]
 mov qword ptr [r12 + 5720], rax
# marshal arg1 = producer-box slot [zr+5680] -> [zr+5728]
 mov rax, qword ptr [r12 + 5680]
 mov qword ptr [r12 + 5728], rax
 mov rax, qword ptr [r12 + 5688]
 mov qword ptr [r12 + 5736], rax
# marshal arg2 = producer-box slot [zr+5600] -> [zr+5744]
 mov rax, qword ptr [r12 + 5600]
 mov qword ptr [r12 + 5744], rax
 mov rax, qword ptr [r12 + 5608]
 mov qword ptr [r12 + 5752], rax
  .section .rodata
  .Lrkfn383: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn383]
 lea rsi, [r12 + 5712]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 cmp eax, 99
 je xchain123_n130_α
 jmp xchain123_n173_α
 xchain123_n169_β:
 jmp xchain123_n130_α
# IR_LIT_STRING
 xchain123_n170_α:
 mov qword ptr [r12 + 5008], 1
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [r12 + 5016], rax
 jmp xchain123_n174_α
 xchain123_n170_β:
 jmp proc_connect_ω
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string "t"
# IR_LIT_STRING
 xchain123_n171_α:
 mov qword ptr [r12 + 4720], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [r12 + 4728], rax
 jmp xchain123_n175_α
 xchain123_n171_β:
 jmp proc_connect_ω
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "o"
# IR_LIT_STRING
 xchain123_n172_α:
 mov qword ptr [r12 + 4400], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [r12 + 4408], rax
 jmp xchain123_n176_α
 xchain123_n172_β:
 jmp xchain123_n181_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "l"
 xchain123_n173_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5456] -> [zr+5424]
 mov rax, qword ptr [r12 + 5456]
 mov qword ptr [r12 + 5424], rax
 mov rax, qword ptr [r12 + 5464]
 mov qword ptr [r12 + 5432], rax
# marshal arg1 = producer-box slot [zr+5696] -> [zr+5440]
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5440], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5448], rax
  .section .rodata
  .Lrkfn388: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 5424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 cmp eax, 99
 je xchain123_n130_α
 jmp xchain123_n177_α
 xchain123_n173_β:
 jmp xchain123_n130_α
# IR_LIT_STRING
 xchain123_n174_α:
 mov qword ptr [r12 + 4992], 1
 mov rax, qword ptr [rip + .Lx389_0]
 mov qword ptr [r12 + 5000], rax
 jmp xchain123_n178_α
 xchain123_n174_β:
 jmp proc_connect_ω
.Lx389_0:
 .quad .Lx389_0_s
.Lx389_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n175_α:
 mov qword ptr [r12 + 4704], 1
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [r12 + 4712], rax
 jmp xchain123_n179_α
 xchain123_n175_β:
 jmp proc_connect_ω
.Lx390_0:
 .quad .Lx390_0_s
.Lx390_0_s:
 .string "."
 xchain123_n176_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4384] -> [zr+4352]
 mov rax, qword ptr [r12 + 4384]
 mov qword ptr [r12 + 4352], rax
 mov rax, qword ptr [r12 + 4392]
 mov qword ptr [r12 + 4360], rax
# marshal arg1 = producer-box slot [zr+4400] -> [zr+4368]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4376], rax
  .section .rodata
  .Lrkfn392: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn392]
 lea rsi, [r12 + 4352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], rdx
 cmp eax, 99
 je xchain123_n181_α
 jmp xchain123_n180_α
 xchain123_n176_β:
 jmp xchain123_n181_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n177_α:
 lea rax, [rip + xchain123_n130_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n177_β:
 jmp proc_connect_ω
 xchain123_n178_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5088] -> [zr+5040]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5040], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5048], rax
# marshal arg1 = producer-box slot [zr+5008] -> [zr+5056]
 mov rax, qword ptr [r12 + 5008]
 mov qword ptr [r12 + 5056], rax
 mov rax, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 5064], rax
# marshal arg2 = producer-box slot [zr+4992] -> [zr+5072]
 mov rax, qword ptr [r12 + 4992]
 mov qword ptr [r12 + 5072], rax
 mov rax, qword ptr [r12 + 5000]
 mov qword ptr [r12 + 5080], rax
  .section .rodata
  .Lrkfn396: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn396]
 lea rsi, [r12 + 5040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n182_α
 xchain123_n178_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n179_α:
 mov qword ptr [r12 + 4624], 1
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [r12 + 4632], rax
 jmp xchain123_n183_α
 xchain123_n179_β:
 jmp proc_connect_ω
.Lx397_0:
 .quad .Lx397_0_s
.Lx397_0_s:
 .string "l"
# IR_VAR_REF local
 xchain123_n180_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain123_n184_α
 xchain123_n180_β:
 jmp xchain123_n181_α
 xchain123_n181_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3952]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn401: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn401]
 lea rsi, [r12 + 3952]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n185_α
 xchain123_n181_β:
 jmp proc_connect_ω
 xchain123_n182_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5136]
 mov rax, qword ptr [r12 + 5184]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5192]
 mov qword ptr [r12 + 5144], rax
# marshal arg1 = producer-box slot [zr+5104] -> [zr+5152]
 mov rax, qword ptr [r12 + 5104]
 mov qword ptr [r12 + 5152], rax
 mov rax, qword ptr [r12 + 5112]
 mov qword ptr [r12 + 5160], rax
# marshal arg2 = producer-box slot [zr+5024] -> [zr+5168]
 mov rax, qword ptr [r12 + 5024]
 mov qword ptr [r12 + 5168], rax
 mov rax, qword ptr [r12 + 5032]
 mov qword ptr [r12 + 5176], rax
  .section .rodata
  .Lrkfn403: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn403]
 lea rsi, [r12 + 5136]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n186_α
 xchain123_n182_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n183_α:
 mov qword ptr [r12 + 4608], 1
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [r12 + 4616], rax
 jmp xchain123_n187_α
 xchain123_n183_β:
 jmp proc_connect_ω
.Lx404_0:
 .quad .Lx404_0_s
.Lx404_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n184_α:
 mov qword ptr [r12 + 4320], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [r12 + 4328], rax
 jmp xchain123_n188_α
 xchain123_n184_β:
 jmp proc_connect_ω
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n185_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain123_n189_α
 xchain123_n185_β:
 jmp xchain123_n198_α
 xchain123_n186_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5232]
 mov rax, qword ptr [r12 + 5280]
 mov qword ptr [r12 + 5232], rax
 mov rax, qword ptr [r12 + 5288]
 mov qword ptr [r12 + 5240], rax
# marshal arg1 = producer-box slot [zr+5200] -> [zr+5248]
 mov rax, qword ptr [r12 + 5200]
 mov qword ptr [r12 + 5248], rax
 mov rax, qword ptr [r12 + 5208]
 mov qword ptr [r12 + 5256], rax
# marshal arg2 = producer-box slot [zr+5120] -> [zr+5264]
 mov rax, qword ptr [r12 + 5120]
 mov qword ptr [r12 + 5264], rax
 mov rax, qword ptr [r12 + 5128]
 mov qword ptr [r12 + 5272], rax
  .section .rodata
  .Lrkfn409: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 5232]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5216], rax
 mov qword ptr [r12 + 5224], rdx
 cmp eax, 99
 je xchain123_n147_α
 jmp xchain123_n190_α
 xchain123_n186_β:
 jmp xchain123_n147_α
# IR_LIT_STRING
 xchain123_n187_α:
 mov qword ptr [r12 + 4528], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 4536], rax
 jmp xchain123_n191_α
 xchain123_n187_β:
 jmp proc_connect_ω
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "a"
# IR_LIT_STRING
 xchain123_n188_α:
 mov qword ptr [r12 + 4240], 1
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [r12 + 4248], rax
 jmp xchain123_n192_α
 xchain123_n188_β:
 jmp proc_connect_ω
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "k"
# IR_LIT_STRING
 xchain123_n189_α:
 mov qword ptr [r12 + 3920], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [r12 + 3928], rax
 jmp xchain123_n193_α
 xchain123_n189_β:
 jmp xchain123_n198_α
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "m"
 xchain123_n190_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4976] -> [zr+4944]
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 4952], rax
# marshal arg1 = producer-box slot [zr+5216] -> [zr+4960]
 mov rax, qword ptr [r12 + 5216]
 mov qword ptr [r12 + 4960], rax
 mov rax, qword ptr [r12 + 5224]
 mov qword ptr [r12 + 4968], rax
  .section .rodata
  .Lrkfn414: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn414]
 lea rsi, [r12 + 4944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4928], rax
 mov qword ptr [r12 + 4936], rdx
 cmp eax, 99
 je xchain123_n147_α
 jmp xchain123_n194_α
 xchain123_n190_β:
 jmp xchain123_n147_α
# IR_LIT_STRING
 xchain123_n191_α:
 mov qword ptr [r12 + 4512], 1
 mov rax, qword ptr [rip + .Lx415_0]
 mov qword ptr [r12 + 4520], rax
 jmp xchain123_n195_α
 xchain123_n191_β:
 jmp proc_connect_ω
.Lx415_0:
 .quad .Lx415_0_s
.Lx415_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n192_α:
 mov qword ptr [r12 + 4224], 1
 mov rax, qword ptr [rip + .Lx416_0]
 mov qword ptr [r12 + 4232], rax
 jmp xchain123_n196_α
 xchain123_n192_β:
 jmp proc_connect_ω
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "."
 xchain123_n193_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+3888]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn418: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn418]
 lea rsi, [r12 + 3872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3856], rax
 mov qword ptr [r12 + 3864], rdx
 cmp eax, 99
 je xchain123_n198_α
 jmp xchain123_n197_α
 xchain123_n193_β:
 jmp xchain123_n198_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n194_α:
 lea rax, [rip + xchain123_n147_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n194_β:
 jmp proc_connect_ω
 xchain123_n195_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4560]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4568], rax
# marshal arg1 = producer-box slot [zr+4528] -> [zr+4576]
 mov rax, qword ptr [r12 + 4528]
 mov qword ptr [r12 + 4576], rax
 mov rax, qword ptr [r12 + 4536]
 mov qword ptr [r12 + 4584], rax
# marshal arg2 = producer-box slot [zr+4512] -> [zr+4592]
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 4600], rax
  .section .rodata
  .Lrkfn422: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn422]
 lea rsi, [r12 + 4560]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n199_α
 xchain123_n195_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n196_α:
 mov qword ptr [r12 + 4144], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [r12 + 4152], rax
 jmp xchain123_n200_α
 xchain123_n196_β:
 jmp proc_connect_ω
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "m"
# IR_VAR_REF local
 xchain123_n197_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3536], rax
 mov qword ptr [r12 + 3544], rdx
 jmp xchain123_n201_α
 xchain123_n197_β:
 jmp xchain123_n198_α
 xchain123_n198_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3472]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 3472], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3480], rax
  .section .rodata
  .Lrkfn427: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn427]
 lea rsi, [r12 + 3472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n202_α
 xchain123_n198_β:
 jmp proc_connect_ω
 xchain123_n199_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4704] -> [zr+4656]
 mov rax, qword ptr [r12 + 4704]
 mov qword ptr [r12 + 4656], rax
 mov rax, qword ptr [r12 + 4712]
 mov qword ptr [r12 + 4664], rax
# marshal arg1 = producer-box slot [zr+4624] -> [zr+4672]
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4672], rax
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4680], rax
# marshal arg2 = producer-box slot [zr+4544] -> [zr+4688]
 mov rax, qword ptr [r12 + 4544]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4552]
 mov qword ptr [r12 + 4696], rax
  .section .rodata
  .Lrkfn429: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn429]
 lea rsi, [r12 + 4656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n203_α
 xchain123_n199_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n200_α:
 mov qword ptr [r12 + 4128], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [r12 + 4136], rax
 jmp xchain123_n204_α
 xchain123_n200_β:
 jmp proc_connect_ω
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n201_α:
 mov qword ptr [r12 + 3840], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [r12 + 3848], rax
 jmp xchain123_n205_α
 xchain123_n201_β:
 jmp proc_connect_ω
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n202_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3424], rax
 mov qword ptr [r12 + 3432], rdx
 jmp xchain123_n206_α
 xchain123_n202_β:
 jmp xchain123_n215_α
 xchain123_n203_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4800] -> [zr+4752]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4760], rax
# marshal arg1 = producer-box slot [zr+4720] -> [zr+4768]
 mov rax, qword ptr [r12 + 4720]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4728]
 mov qword ptr [r12 + 4776], rax
# marshal arg2 = producer-box slot [zr+4640] -> [zr+4784]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4784], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4792], rax
  .section .rodata
  .Lrkfn435: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn435]
 lea rsi, [r12 + 4752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 cmp eax, 99
 je xchain123_n164_α
 jmp xchain123_n207_α
 xchain123_n203_β:
 jmp xchain123_n164_α
# IR_LIT_STRING
 xchain123_n204_α:
 mov qword ptr [r12 + 4048], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [r12 + 4056], rax
 jmp xchain123_n208_α
 xchain123_n204_β:
 jmp proc_connect_ω
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "c"
# IR_LIT_STRING
 xchain123_n205_α:
 mov qword ptr [r12 + 3760], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [r12 + 3768], rax
 jmp xchain123_n209_α
 xchain123_n205_β:
 jmp proc_connect_ω
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "l"
# IR_LIT_STRING
 xchain123_n206_α:
 mov qword ptr [r12 + 3440], 1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [r12 + 3448], rax
 jmp xchain123_n210_α
 xchain123_n206_β:
 jmp xchain123_n215_α
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "n"
 xchain123_n207_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4496] -> [zr+4464]
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 4472], rax
# marshal arg1 = producer-box slot [zr+4736] -> [zr+4480]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4480], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4488], rax
  .section .rodata
  .Lrkfn440: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn440]
 lea rsi, [r12 + 4464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 cmp eax, 99
 je xchain123_n164_α
 jmp xchain123_n211_α
 xchain123_n207_β:
 jmp xchain123_n164_α
# IR_LIT_STRING
 xchain123_n208_α:
 mov qword ptr [r12 + 4032], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [r12 + 4040], rax
 jmp xchain123_n212_α
 xchain123_n208_β:
 jmp proc_connect_ω
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n209_α:
 mov qword ptr [r12 + 3744], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 3752], rax
 jmp xchain123_n213_α
 xchain123_n209_β:
 jmp proc_connect_ω
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "."
 xchain123_n210_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3424] -> [zr+3392]
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 3400], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3408]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3416], rax
  .section .rodata
  .Lrkfn444: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn444]
 lea rsi, [r12 + 3392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3376], rax
 mov qword ptr [r12 + 3384], rdx
 cmp eax, 99
 je xchain123_n215_α
 jmp xchain123_n214_α
 xchain123_n210_β:
 jmp xchain123_n215_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n211_α:
 lea rax, [rip + xchain123_n164_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n211_β:
 jmp proc_connect_ω
 xchain123_n212_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4128] -> [zr+4080]
 mov rax, qword ptr [r12 + 4128]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4136]
 mov qword ptr [r12 + 4088], rax
# marshal arg1 = producer-box slot [zr+4048] -> [zr+4096]
 mov rax, qword ptr [r12 + 4048]
 mov qword ptr [r12 + 4096], rax
 mov rax, qword ptr [r12 + 4056]
 mov qword ptr [r12 + 4104], rax
# marshal arg2 = producer-box slot [zr+4032] -> [zr+4112]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4120], rax
  .section .rodata
  .Lrkfn448: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 4080]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n216_α
 xchain123_n212_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n213_α:
 mov qword ptr [r12 + 3664], 1
 mov rax, qword ptr [rip + .Lx449_0]
 mov qword ptr [r12 + 3672], rax
 jmp xchain123_n217_α
 xchain123_n213_β:
 jmp proc_connect_ω
.Lx449_0:
 .quad .Lx449_0_s
.Lx449_0_s:
 .string "n"
# IR_VAR_REF local
 xchain123_n214_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain123_n218_α
 xchain123_n214_β:
 jmp xchain123_n215_α
 xchain123_n215_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2992]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 3000], rax
  .section .rodata
  .Lrkfn453: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn453]
 lea rsi, [r12 + 2992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n219_α
 xchain123_n215_β:
 jmp proc_connect_ω
 xchain123_n216_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4224] -> [zr+4176]
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4184], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4192]
 mov rax, qword ptr [r12 + 4144]
 mov qword ptr [r12 + 4192], rax
 mov rax, qword ptr [r12 + 4152]
 mov qword ptr [r12 + 4200], rax
# marshal arg2 = producer-box slot [zr+4064] -> [zr+4208]
 mov rax, qword ptr [r12 + 4064]
 mov qword ptr [r12 + 4208], rax
 mov rax, qword ptr [r12 + 4072]
 mov qword ptr [r12 + 4216], rax
  .section .rodata
  .Lrkfn455: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn455]
 lea rsi, [r12 + 4176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n220_α
 xchain123_n216_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n217_α:
 mov qword ptr [r12 + 3648], 1
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [r12 + 3656], rax
 jmp xchain123_n221_α
 xchain123_n217_β:
 jmp proc_connect_ω
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n218_α:
 mov qword ptr [r12 + 3360], 1
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [r12 + 3368], rax
 jmp xchain123_n222_α
 xchain123_n218_β:
 jmp proc_connect_ω
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n219_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain123_n223_α
 xchain123_n219_β:
 jmp xchain123_n232_α
 xchain123_n220_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4320] -> [zr+4272]
 mov rax, qword ptr [r12 + 4320]
 mov qword ptr [r12 + 4272], rax
 mov rax, qword ptr [r12 + 4328]
 mov qword ptr [r12 + 4280], rax
# marshal arg1 = producer-box slot [zr+4240] -> [zr+4288]
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 4288], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 4296], rax
# marshal arg2 = producer-box slot [zr+4160] -> [zr+4304]
 mov rax, qword ptr [r12 + 4160]
 mov qword ptr [r12 + 4304], rax
 mov rax, qword ptr [r12 + 4168]
 mov qword ptr [r12 + 4312], rax
  .section .rodata
  .Lrkfn461: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn461]
 lea rsi, [r12 + 4272]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4256], rax
 mov qword ptr [r12 + 4264], rdx
 cmp eax, 99
 je xchain123_n181_α
 jmp xchain123_n224_α
 xchain123_n220_β:
 jmp xchain123_n181_α
# IR_LIT_STRING
 xchain123_n221_α:
 mov qword ptr [r12 + 3568], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [r12 + 3576], rax
 jmp xchain123_n225_α
 xchain123_n221_β:
 jmp proc_connect_ω
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "e"
# IR_LIT_STRING
 xchain123_n222_α:
 mov qword ptr [r12 + 3280], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [r12 + 3288], rax
 jmp xchain123_n226_α
 xchain123_n222_β:
 jmp proc_connect_ω
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string "m"
# IR_LIT_STRING
 xchain123_n223_α:
 mov qword ptr [r12 + 2960], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain123_n227_α
 xchain123_n223_β:
 jmp xchain123_n232_α
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "o"
 xchain123_n224_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3984]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 3992], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4000]
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 4008], rax
  .section .rodata
  .Lrkfn466: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn466]
 lea rsi, [r12 + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 cmp eax, 99
 je xchain123_n181_α
 jmp xchain123_n228_α
 xchain123_n224_β:
 jmp xchain123_n181_α
# IR_LIT_STRING
 xchain123_n225_α:
 mov qword ptr [r12 + 3552], 1
 mov rax, qword ptr [rip + .Lx467_0]
 mov qword ptr [r12 + 3560], rax
 jmp xchain123_n229_α
 xchain123_n225_β:
 jmp proc_connect_ω
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n226_α:
 mov qword ptr [r12 + 3264], 1
 mov rax, qword ptr [rip + .Lx468_0]
 mov qword ptr [r12 + 3272], rax
 jmp xchain123_n230_α
 xchain123_n226_β:
 jmp proc_connect_ω
.Lx468_0:
 .quad .Lx468_0_s
.Lx468_0_s:
 .string "."
 xchain123_n227_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2912]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+2928]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn470: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn470]
 lea rsi, [r12 + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 cmp eax, 99
 je xchain123_n232_α
 jmp xchain123_n231_α
 xchain123_n227_β:
 jmp xchain123_n232_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n228_α:
 lea rax, [rip + xchain123_n181_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n228_β:
 jmp proc_connect_ω
 xchain123_n229_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3648] -> [zr+3600]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3608], rax
# marshal arg1 = producer-box slot [zr+3568] -> [zr+3616]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3624], rax
# marshal arg2 = producer-box slot [zr+3552] -> [zr+3632]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3640], rax
  .section .rodata
  .Lrkfn474: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn474]
 lea rsi, [r12 + 3600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n233_α
 xchain123_n229_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n230_α:
 mov qword ptr [r12 + 3184], 1
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [r12 + 3192], rax
 jmp xchain123_n234_α
 xchain123_n230_β:
 jmp proc_connect_ω
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "o"
# IR_VAR_REF local
 xchain123_n231_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain123_n235_α
 xchain123_n231_β:
 jmp xchain123_n232_α
 xchain123_n232_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2512]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2520], rax
  .section .rodata
  .Lrkfn479: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn479]
 lea rsi, [r12 + 2512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n236_α
 xchain123_n232_β:
 jmp proc_connect_ω
 xchain123_n233_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3744] -> [zr+3696]
 mov rax, qword ptr [r12 + 3744]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3704], rax
# marshal arg1 = producer-box slot [zr+3664] -> [zr+3712]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3712], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3720], rax
# marshal arg2 = producer-box slot [zr+3584] -> [zr+3728]
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3736], rax
  .section .rodata
  .Lrkfn481: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 3696]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n237_α
 xchain123_n233_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n234_α:
 mov qword ptr [r12 + 3168], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [r12 + 3176], rax
 jmp xchain123_n238_α
 xchain123_n234_β:
 jmp proc_connect_ω
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n235_α:
 mov qword ptr [r12 + 2880], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [r12 + 2888], rax
 jmp xchain123_n239_α
 xchain123_n235_β:
 jmp proc_connect_ω
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n236_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 jmp xchain123_n240_α
 xchain123_n236_β:
 jmp xchain123_n249_α
 xchain123_n237_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3840] -> [zr+3792]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3800], rax
# marshal arg1 = producer-box slot [zr+3760] -> [zr+3808]
 mov rax, qword ptr [r12 + 3760]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3768]
 mov qword ptr [r12 + 3816], rax
# marshal arg2 = producer-box slot [zr+3680] -> [zr+3824]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3824], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3832], rax
  .section .rodata
  .Lrkfn487: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn487]
 lea rsi, [r12 + 3792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3776], rax
 mov qword ptr [r12 + 3784], rdx
 cmp eax, 99
 je xchain123_n198_α
 jmp xchain123_n241_α
 xchain123_n237_β:
 jmp xchain123_n198_α
# IR_LIT_STRING
 xchain123_n238_α:
 mov qword ptr [r12 + 3088], 1
 mov rax, qword ptr [rip + .Lx488_0]
 mov qword ptr [r12 + 3096], rax
 jmp xchain123_n242_α
 xchain123_n238_β:
 jmp proc_connect_ω
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "g"
# IR_LIT_STRING
 xchain123_n239_α:
 mov qword ptr [r12 + 2800], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [r12 + 2808], rax
 jmp xchain123_n243_α
 xchain123_n239_β:
 jmp proc_connect_ω
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "n"
# IR_LIT_STRING
 xchain123_n240_α:
 mov qword ptr [r12 + 2480], 1
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [r12 + 2488], rax
 jmp xchain123_n244_α
 xchain123_n240_β:
 jmp xchain123_n249_α
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "p"
 xchain123_n241_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3536] -> [zr+3504]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3512], rax
# marshal arg1 = producer-box slot [zr+3776] -> [zr+3520]
 mov rax, qword ptr [r12 + 3776]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3784]
 mov qword ptr [r12 + 3528], rax
  .section .rodata
  .Lrkfn492: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn492]
 lea rsi, [r12 + 3504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 cmp eax, 99
 je xchain123_n198_α
 jmp xchain123_n245_α
 xchain123_n241_β:
 jmp xchain123_n198_α
# IR_LIT_STRING
 xchain123_n242_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx493_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain123_n246_α
 xchain123_n242_β:
 jmp proc_connect_ω
.Lx493_0:
 .quad .Lx493_0_s
.Lx493_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n243_α:
 mov qword ptr [r12 + 2784], 1
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [r12 + 2792], rax
 jmp xchain123_n247_α
 xchain123_n243_β:
 jmp proc_connect_ω
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string "."
 xchain123_n244_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2432]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2440], rax
# marshal arg1 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
  .section .rodata
  .Lrkfn496: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn496]
 lea rsi, [r12 + 2432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 cmp eax, 99
 je xchain123_n249_α
 jmp xchain123_n248_α
 xchain123_n244_β:
 jmp xchain123_n249_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n245_α:
 lea rax, [rip + xchain123_n198_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n245_β:
 jmp proc_connect_ω
 xchain123_n246_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3120]
 mov rax, qword ptr [r12 + 3168]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 3176]
 mov qword ptr [r12 + 3128], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+3136]
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 3136], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 3144], rax
# marshal arg2 = producer-box slot [zr+3072] -> [zr+3152]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3152], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3160], rax
  .section .rodata
  .Lrkfn500: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn500]
 lea rsi, [r12 + 3120]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n250_α
 xchain123_n246_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n247_α:
 mov qword ptr [r12 + 2704], 1
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 2712], rax
 jmp xchain123_n251_α
 xchain123_n247_β:
 jmp proc_connect_ω
.Lx501_0:
 .quad .Lx501_0_s
.Lx501_0_s:
 .string "k"
# IR_VAR_REF local
 xchain123_n248_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain123_n252_α
 xchain123_n248_β:
 jmp xchain123_n249_α
 xchain123_n249_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2032]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn505: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn505]
 lea rsi, [r12 + 2032]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n253_α
 xchain123_n249_β:
 jmp proc_connect_ω
 xchain123_n250_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3216]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3224], rax
# marshal arg1 = producer-box slot [zr+3184] -> [zr+3232]
 mov rax, qword ptr [r12 + 3184]
 mov qword ptr [r12 + 3232], rax
 mov rax, qword ptr [r12 + 3192]
 mov qword ptr [r12 + 3240], rax
# marshal arg2 = producer-box slot [zr+3104] -> [zr+3248]
 mov rax, qword ptr [r12 + 3104]
 mov qword ptr [r12 + 3248], rax
 mov rax, qword ptr [r12 + 3112]
 mov qword ptr [r12 + 3256], rax
  .section .rodata
  .Lrkfn507: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 3216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3200], rax
 mov qword ptr [r12 + 3208], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n254_α
 xchain123_n250_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n251_α:
 mov qword ptr [r12 + 2688], 1
 mov rax, qword ptr [rip + .Lx508_0]
 mov qword ptr [r12 + 2696], rax
 jmp xchain123_n255_α
 xchain123_n251_β:
 jmp proc_connect_ω
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n252_α:
 mov qword ptr [r12 + 2400], 1
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [r12 + 2408], rax
 jmp xchain123_n256_α
 xchain123_n252_β:
 jmp proc_connect_ω
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n253_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain123_n257_α
 xchain123_n253_β:
 jmp xchain123_n266_α
 xchain123_n254_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3312]
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3320], rax
# marshal arg1 = producer-box slot [zr+3280] -> [zr+3328]
 mov rax, qword ptr [r12 + 3280]
 mov qword ptr [r12 + 3328], rax
 mov rax, qword ptr [r12 + 3288]
 mov qword ptr [r12 + 3336], rax
# marshal arg2 = producer-box slot [zr+3200] -> [zr+3344]
 mov rax, qword ptr [r12 + 3200]
 mov qword ptr [r12 + 3344], rax
 mov rax, qword ptr [r12 + 3208]
 mov qword ptr [r12 + 3352], rax
  .section .rodata
  .Lrkfn513: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 3312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 cmp eax, 99
 je xchain123_n215_α
 jmp xchain123_n258_α
 xchain123_n254_β:
 jmp xchain123_n215_α
# IR_LIT_STRING
 xchain123_n255_α:
 mov qword ptr [r12 + 2608], 1
 mov rax, qword ptr [rip + .Lx514_0]
 mov qword ptr [r12 + 2616], rax
 jmp xchain123_n259_α
 xchain123_n255_β:
 jmp proc_connect_ω
.Lx514_0:
 .quad .Lx514_0_s
.Lx514_0_s:
 .string "i"
# IR_LIT_STRING
 xchain123_n256_α:
 mov qword ptr [r12 + 2320], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [r12 + 2328], rax
 jmp xchain123_n260_α
 xchain123_n256_β:
 jmp proc_connect_ω
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "b"
# IR_LIT_STRING
 xchain123_n257_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain123_n261_α
 xchain123_n257_β:
 jmp xchain123_n266_α
.Lx516_0:
 .quad .Lx516_0_s
.Lx516_0_s:
 .string "q"
 xchain123_n258_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3056] -> [zr+3024]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3032], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3040]
 mov rax, qword ptr [r12 + 3296]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 3304]
 mov qword ptr [r12 + 3048], rax
  .section .rodata
  .Lrkfn518: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn518]
 lea rsi, [r12 + 3024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3008], rax
 mov qword ptr [r12 + 3016], rdx
 cmp eax, 99
 je xchain123_n215_α
 jmp xchain123_n262_α
 xchain123_n258_β:
 jmp xchain123_n215_α
# IR_LIT_STRING
 xchain123_n259_α:
 mov qword ptr [r12 + 2592], 1
 mov rax, qword ptr [rip + .Lx519_0]
 mov qword ptr [r12 + 2600], rax
 jmp xchain123_n263_α
 xchain123_n259_β:
 jmp proc_connect_ω
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n260_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx520_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain123_n264_α
 xchain123_n260_β:
 jmp proc_connect_ω
.Lx520_0:
 .quad .Lx520_0_s
.Lx520_0_s:
 .string "."
 xchain123_n261_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn522: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain123_n266_α
 jmp xchain123_n265_α
 xchain123_n261_β:
 jmp xchain123_n266_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n262_α:
 lea rax, [rip + xchain123_n215_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n262_β:
 jmp proc_connect_ω
 xchain123_n263_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2640]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2656]
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2664], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2672]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2680], rax
  .section .rodata
  .Lrkfn526: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn526]
 lea rsi, [r12 + 2640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n267_α
 xchain123_n263_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n264_α:
 mov qword ptr [r12 + 2224], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [r12 + 2232], rax
 jmp xchain123_n268_α
 xchain123_n264_β:
 jmp proc_connect_ω
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "q"
# IR_VAR_REF local
 xchain123_n265_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain123_n269_α
 xchain123_n265_β:
 jmp xchain123_n266_α
 xchain123_n266_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1552]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1560], rax
  .section .rodata
  .Lrkfn531: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 1552]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n270_α
 xchain123_n266_β:
 jmp proc_connect_ω
 xchain123_n267_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2736]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2744], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2752]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2760], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2768]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2776], rax
  .section .rodata
  .Lrkfn533: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn533]
 lea rsi, [r12 + 2736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n271_α
 xchain123_n267_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n268_α:
 mov qword ptr [r12 + 2208], 1
 mov rax, qword ptr [rip + .Lx534_0]
 mov qword ptr [r12 + 2216], rax
 jmp xchain123_n272_α
 xchain123_n268_β:
 jmp proc_connect_ω
.Lx534_0:
 .quad .Lx534_0_s
.Lx534_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n269_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain123_n273_α
 xchain123_n269_β:
 jmp proc_connect_ω
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n270_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain123_n274_α
 xchain123_n270_β:
 jmp xchain123_n283_α
 xchain123_n271_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2840], rax
# marshal arg1 = producer-box slot [zr+2800] -> [zr+2848]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2856], rax
# marshal arg2 = producer-box slot [zr+2720] -> [zr+2864]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2872], rax
  .section .rodata
  .Lrkfn539: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn539]
 lea rsi, [r12 + 2832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain123_n232_α
 jmp xchain123_n275_α
 xchain123_n271_β:
 jmp xchain123_n232_α
# IR_LIT_STRING
 xchain123_n272_α:
 mov qword ptr [r12 + 2128], 1
 mov rax, qword ptr [rip + .Lx540_0]
 mov qword ptr [r12 + 2136], rax
 jmp xchain123_n276_α
 xchain123_n272_β:
 jmp proc_connect_ω
.Lx540_0:
 .quad .Lx540_0_s
.Lx540_0_s:
 .string "t"
# IR_LIT_STRING
 xchain123_n273_α:
 mov qword ptr [r12 + 1840], 1
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain123_n277_α
 xchain123_n273_β:
 jmp proc_connect_ω
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "p"
# IR_LIT_STRING
 xchain123_n274_α:
 mov qword ptr [r12 + 1520], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain123_n278_α
 xchain123_n274_β:
 jmp xchain123_n283_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "r"
 xchain123_n275_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2560]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2568], rax
  .section .rodata
  .Lrkfn544: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn544]
 lea rsi, [r12 + 2544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2528], rax
 mov qword ptr [r12 + 2536], rdx
 cmp eax, 99
 je xchain123_n232_α
 jmp xchain123_n279_α
 xchain123_n275_β:
 jmp xchain123_n232_α
# IR_LIT_STRING
 xchain123_n276_α:
 mov qword ptr [r12 + 2112], 1
 mov rax, qword ptr [rip + .Lx545_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain123_n280_α
 xchain123_n276_β:
 jmp proc_connect_ω
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n277_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain123_n281_α
 xchain123_n277_β:
 jmp proc_connect_ω
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "."
 xchain123_n278_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn548: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn548]
 lea rsi, [r12 + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain123_n283_α
 jmp xchain123_n282_α
 xchain123_n278_β:
 jmp xchain123_n283_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n279_α:
 lea rax, [rip + xchain123_n232_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n279_β:
 jmp proc_connect_ω
 xchain123_n280_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2160]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2168], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2176]
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2176], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2184], rax
# marshal arg2 = producer-box slot [zr+2112] -> [zr+2192]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2200], rax
  .section .rodata
  .Lrkfn552: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn552]
 lea rsi, [r12 + 2160]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n284_α
 xchain123_n280_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n281_α:
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain123_n285_α
 xchain123_n281_β:
 jmp proc_connect_ω
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "r"
# IR_VAR_REF local
 xchain123_n282_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain123_n286_α
 xchain123_n282_β:
 jmp xchain123_n283_α
 xchain123_n283_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1072]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn557: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn557]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n287_α
 xchain123_n283_β:
 jmp proc_connect_ω
 xchain123_n284_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2256]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2264], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2272]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2280], rax
# marshal arg2 = producer-box slot [zr+2144] -> [zr+2288]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn559: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn559]
 lea rsi, [r12 + 2256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n288_α
 xchain123_n284_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n285_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain123_n289_α
 xchain123_n285_β:
 jmp proc_connect_ω
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n286_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain123_n290_α
 xchain123_n286_β:
 jmp proc_connect_ω
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n287_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain123_n291_α
 xchain123_n287_β:
 jmp xchain123_n300_α
 xchain123_n288_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2360], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2368]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2376], rax
# marshal arg2 = producer-box slot [zr+2240] -> [zr+2384]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2384], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2392], rax
  .section .rodata
  .Lrkfn565: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn565]
 lea rsi, [r12 + 2352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain123_n249_α
 jmp xchain123_n292_α
 xchain123_n288_β:
 jmp xchain123_n249_α
# IR_LIT_STRING
 xchain123_n289_α:
 mov qword ptr [r12 + 1648], 1
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [r12 + 1656], rax
 jmp xchain123_n293_α
 xchain123_n289_β:
 jmp proc_connect_ω
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "d"
# IR_LIT_STRING
 xchain123_n290_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain123_n294_α
 xchain123_n290_β:
 jmp proc_connect_ω
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "q"
# IR_LIT_STRING
 xchain123_n291_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain123_n295_α
 xchain123_n291_β:
 jmp xchain123_n300_α
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "s"
 xchain123_n292_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2064]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2072], rax
# marshal arg1 = producer-box slot [zr+2336] -> [zr+2080]
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 2088], rax
  .section .rodata
  .Lrkfn570: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn570]
 lea rsi, [r12 + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain123_n249_α
 jmp xchain123_n296_α
 xchain123_n292_β:
 jmp xchain123_n249_α
# IR_LIT_STRING
 xchain123_n293_α:
 mov qword ptr [r12 + 1632], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [r12 + 1640], rax
 jmp xchain123_n297_α
 xchain123_n293_β:
 jmp proc_connect_ω
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n294_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain123_n298_α
 xchain123_n294_β:
 jmp proc_connect_ω
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "."
 xchain123_n295_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn574: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn574]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain123_n300_α
 jmp xchain123_n299_α
 xchain123_n295_β:
 jmp xchain123_n300_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n296_α:
 lea rax, [rip + xchain123_n249_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n296_β:
 jmp proc_connect_ω
 xchain123_n297_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1728] -> [zr+1680]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1696]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1704], rax
# marshal arg2 = producer-box slot [zr+1632] -> [zr+1712]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lrkfn578: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn578]
 lea rsi, [r12 + 1680]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n301_α
 xchain123_n297_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n298_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain123_n302_α
 xchain123_n298_β:
 jmp proc_connect_ω
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "s"
# IR_VAR_REF local
 xchain123_n299_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain123_n303_α
 xchain123_n299_β:
 jmp xchain123_n300_α
 xchain123_n300_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+592]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn583: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn583]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n304_α
 xchain123_n300_β:
 jmp proc_connect_ω
 xchain123_n301_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1784], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1792]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1800], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1808]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn585: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn585]
 lea rsi, [r12 + 1776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n305_α
 xchain123_n301_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n302_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain123_n306_α
 xchain123_n302_β:
 jmp proc_connect_ω
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n303_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain123_n307_α
 xchain123_n303_β:
 jmp proc_connect_ω
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "."
# IR_VAR_REF local
 xchain123_n304_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain123_n308_α
 xchain123_n304_β:
 jmp xchain123_n317_α
 xchain123_n305_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1888]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1896], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1904]
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1912], rax
  .section .rodata
  .Lrkfn591: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn591]
 lea rsi, [r12 + 1872]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain123_n266_α
 jmp xchain123_n309_α
 xchain123_n305_β:
 jmp xchain123_n266_α
# IR_LIT_STRING
 xchain123_n306_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain123_n310_α
 xchain123_n306_β:
 jmp proc_connect_ω
.Lx592_0:
 .quad .Lx592_0_s
.Lx592_0_s:
 .string "f"
# IR_LIT_STRING
 xchain123_n307_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain123_n311_α
 xchain123_n307_β:
 jmp proc_connect_ω
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "r"
# IR_LIT_STRING
 xchain123_n308_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain123_n312_α
 xchain123_n308_β:
 jmp xchain123_n317_α
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "t"
 xchain123_n309_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1600]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lrkfn596: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn596]
 lea rsi, [r12 + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je xchain123_n266_α
 jmp xchain123_n313_α
 xchain123_n309_β:
 jmp xchain123_n266_α
# IR_LIT_STRING
 xchain123_n310_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain123_n314_α
 xchain123_n310_β:
 jmp proc_connect_ω
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n311_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain123_n315_α
 xchain123_n311_β:
 jmp proc_connect_ω
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "."
 xchain123_n312_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn600: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn600]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain123_n317_α
 jmp xchain123_n316_α
 xchain123_n312_β:
 jmp xchain123_n317_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n313_α:
 lea rax, [rip + xchain123_n266_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n313_β:
 jmp proc_connect_ω
 xchain123_n314_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1208], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1216]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1224], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1232]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn604: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn604]
 lea rsi, [r12 + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n318_α
 xchain123_n314_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n315_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx605_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain123_n319_α
 xchain123_n315_β:
 jmp proc_connect_ω
.Lx605_0:
 .quad .Lx605_0_s
.Lx605_0_s:
 .string "t"
# IR_VAR_REF local
 xchain123_n316_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain123_n320_α
 xchain123_n316_β:
 jmp xchain123_n317_α
 xchain123_n317_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn609: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn609]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp proc_connect_ω
 xchain123_n317_β:
 jmp proc_connect_ω
 xchain123_n318_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1312]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1320], rax
# marshal arg2 = producer-box slot [zr+1184] -> [zr+1328]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn611: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn611]
 lea rsi, [r12 + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n321_α
 xchain123_n318_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n319_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain123_n322_α
 xchain123_n319_β:
 jmp proc_connect_ω
.Lx612_0:
 .quad .Lx612_0_s
.Lx612_0_s:
 .string "."
# IR_LIT_STRING
 xchain123_n320_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx613_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain123_n323_α
 xchain123_n320_β:
 jmp proc_connect_ω
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "."
 xchain123_n321_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1408]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1416], rax
# marshal arg2 = producer-box slot [zr+1280] -> [zr+1424]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn615: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn615]
 lea rsi, [r12 + 1392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain123_n283_α
 jmp xchain123_n324_α
 xchain123_n321_β:
 jmp xchain123_n283_α
# IR_LIT_STRING
 xchain123_n322_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain123_n325_α
 xchain123_n322_β:
 jmp proc_connect_ω
.Lx616_0:
 .quad .Lx616_0_s
.Lx616_0_s:
 .string "h"
# IR_LIT_STRING
 xchain123_n323_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain123_n326_α
 xchain123_n323_β:
 jmp proc_connect_ω
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "p"
 xchain123_n324_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1120]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn619: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn619]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain123_n283_α
 jmp xchain123_n327_α
 xchain123_n324_β:
 jmp xchain123_n283_α
# IR_LIT_STRING
 xchain123_n325_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx620_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain123_n328_α
 xchain123_n325_β:
 jmp proc_connect_ω
.Lx620_0:
 .quad .Lx620_0_s
.Lx620_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain123_n326_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx621_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain123_n329_α
 xchain123_n326_β:
 jmp proc_connect_ω
.Lx621_0:
 .quad .Lx621_0_s
.Lx621_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n327_α:
 lea rax, [rip + xchain123_n283_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n327_β:
 jmp proc_connect_ω
 xchain123_n328_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+736]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+752]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn625: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn625]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n330_α
 xchain123_n328_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n329_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain123_n331_α
 xchain123_n329_β:
 jmp proc_connect_ω
.Lx626_0:
 .quad .Lx626_0_s
.Lx626_0_s:
 .string "s"
 xchain123_n330_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+832]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 840], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+848]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn628: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn628]
 lea rsi, [r12 + 816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n332_α
 xchain123_n330_β:
 jmp proc_connect_ω
# IR_LIT_STRING
 xchain123_n331_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx629_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain123_n333_α
 xchain123_n331_β:
 jmp proc_connect_ω
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "."
 xchain123_n332_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+928]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 936], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+944]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn631: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn631]
 lea rsi, [r12 + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain123_n300_α
 jmp xchain123_n334_α
 xchain123_n332_β:
 jmp xchain123_n300_α
# IR_LIT_STRING
 xchain123_n333_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx632_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain123_n335_α
 xchain123_n333_β:
 jmp proc_connect_ω
.Lx632_0:
 .quad .Lx632_0_s
.Lx632_0_s:
 .string "j"
 xchain123_n334_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+640]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn634: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn634]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain123_n300_α
 jmp xchain123_n336_α
 xchain123_n334_β:
 jmp xchain123_n300_α
# IR_LIT_STRING
 xchain123_n335_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx635_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain123_n337_α
 xchain123_n335_β:
 jmp proc_connect_ω
.Lx635_0:
 .quad .Lx635_0_s
.Lx635_0_s:
 .string "[]"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n336_α:
 lea rax, [rip + xchain123_n300_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n336_β:
 jmp proc_connect_ω
 xchain123_n337_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+256]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 264], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+272]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn639: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn639]
 lea rsi, [r12 + 240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n338_α
 xchain123_n337_β:
 jmp proc_connect_ω
 xchain123_n338_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 360], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+368]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn641: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn641]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je proc_connect_ω
 jmp xchain123_n339_α
 xchain123_n338_β:
 jmp proc_connect_ω
 xchain123_n339_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+448]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 456], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+464]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn643: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn643]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain123_n317_α
 jmp xchain123_n340_α
 xchain123_n339_β:
 jmp xchain123_n317_α
 xchain123_n340_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+160]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn645: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn645]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain123_n317_α
 jmp xchain123_n341_α
 xchain123_n340_β:
 jmp xchain123_n317_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain123_n341_α:
 lea rax, [rip + xchain123_n317_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_connect_γ
 xchain123_n341_β:
 jmp proc_connect_ω
proc_connect_β:
jmp xchain123_n45_α
proc_connect_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 9696]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_connect_ω:
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
  .globl proc_cycle_ham_α
proc_cycle_ham_α:
#=======================================================================================================================
    .global proc_cycle_ham_α
    .global proc_cycle_ham_β
    .global proc_cycle_ham_γ
    .global proc_cycle_ham_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_cycle_ham_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 992], rax
 pop rsi
proc_cycle_ham_α_body:
 xchain648_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn650: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn650]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_cycle_ham_ω
 jmp xchain648_n1_α
 xchain648_n0_β:
 jmp proc_cycle_ham_ω
# IR_VAR_REF local
 xchain648_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain648_n2_α
 xchain648_n1_β:
 jmp xchain648_n7_α
# IR_LIT_STRING
 xchain648_n2_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx653_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain648_n3_α
 xchain648_n2_β:
 jmp proc_cycle_ham_ω
.Lx653_0:
 .quad .Lx653_0_s
.Lx653_0_s:
 .string "."
# IR_VAR_REF local
 xchain648_n3_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain648_n4_α
 xchain648_n3_β:
 jmp proc_cycle_ham_ω
# IR_VAR_REF local
 xchain648_n4_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain648_n5_α
 xchain648_n4_β:
 jmp proc_cycle_ham_ω
 xchain648_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+944]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 952], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+960]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn659: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn659]
 lea rsi, [r12 + 928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n6_α
 xchain648_n5_β:
 jmp xchain648_n7_α
 xchain648_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn661: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn661]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n8_α
 xchain648_n6_β:
 jmp xchain648_n7_α
 xchain648_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn663: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn663]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_cycle_ham_ω
 jmp proc_cycle_ham_ω
 xchain648_n7_β:
 jmp proc_cycle_ham_ω
# IR_VAR_REF local
 xchain648_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain648_n9_α
 xchain648_n8_β:
 jmp xchain648_n7_α
# IR_LIT_STRING
 xchain648_n9_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx666_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain648_n10_α
 xchain648_n9_β:
 jmp proc_cycle_ham_ω
.Lx666_0:
 .quad .Lx666_0_s
.Lx666_0_s:
 .string "."
# IR_VAR_REF local
 xchain648_n10_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain648_n11_α
 xchain648_n10_β:
 jmp proc_cycle_ham_ω
# IR_LIT_STRING
 xchain648_n11_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx669_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain648_n12_α
 xchain648_n11_β:
 jmp proc_cycle_ham_ω
.Lx669_0:
 .quad .Lx669_0_s
.Lx669_0_s:
 .string "."
# IR_VAR_REF local
 xchain648_n12_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain648_n13_α
 xchain648_n12_β:
 jmp proc_cycle_ham_ω
# IR_VAR_REF local
 xchain648_n13_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain648_n14_α
 xchain648_n13_β:
 jmp proc_cycle_ham_ω
 xchain648_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+672]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 680], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+688]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn675: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn675]
 lea rsi, [r12 + 656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je proc_cycle_ham_ω
 jmp xchain648_n15_α
 xchain648_n14_β:
 jmp proc_cycle_ham_ω
 xchain648_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+768]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 776], rax
# marshal arg2 = producer-box slot [zr+640] -> [zr+784]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn677: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn677]
 lea rsi, [r12 + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n16_α
 xchain648_n15_β:
 jmp xchain648_n7_α
 xchain648_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+576]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn679: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn679]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n17_α
 xchain648_n16_β:
 jmp xchain648_n7_α
# IR_LIT_STRING
 xchain648_n17_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain648_n18_α
 xchain648_n17_β:
 jmp proc_cycle_ham_ω
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "."
# IR_VAR_REF local
 xchain648_n18_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain648_n19_α
 xchain648_n18_β:
 jmp proc_cycle_ham_ω
# IR_VAR_REF local
 xchain648_n19_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain648_n20_α
 xchain648_n19_β:
 jmp proc_cycle_ham_ω
 xchain648_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+368]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 376], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+384]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn686: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn686]
 lea rsi, [r12 + 352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n21_α
 xchain648_n20_β:
 jmp xchain648_n7_α
# IR_LIT_STRING
 xchain648_n21_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx687_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain648_n22_α
 xchain648_n21_β:
 jmp xchain648_n7_α
.Lx687_0:
 .quad .Lx687_0_s
.Lx687_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain648_n22_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx688_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain648_n23_α
 xchain648_n22_β:
 jmp proc_cycle_ham_ω
.Lx688_0:
 .quad .Lx688_0_s
.Lx688_0_s:
 .string "."
# IR_VAR_REF local
 xchain648_n23_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain648_n24_α
 xchain648_n23_β:
 jmp proc_cycle_ham_ω
# IR_VAR_REF local
 xchain648_n24_α:
 lea rdi, [r12 + 1056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain648_n25_α
 xchain648_n24_β:
 jmp proc_cycle_ham_ω
 xchain648_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+496]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 504], rax
# marshal arg2 = producer-box slot [zr+432] -> [zr+512]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn694: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn694]
 lea rsi, [r12 + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n26_α
 xchain648_n25_β:
 jmp xchain648_n7_α
 xchain648_n26_α:
  .section .rodata
  .Lcall433_pname: .string "chain_ham"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall433_pname]
 mov esi, 3
 lea rdx, [r12 + 288]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n27_α
xchain648_n26_β:
 mov rdi, qword ptr [r12 + 288]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain648_n7_α
 jmp xchain648_n27_α
# IR_VAR_REF local
 xchain648_n27_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain648_n28_α
 xchain648_n27_β:
 jmp xchain648_n7_α
# IR_VAR_REF local
 xchain648_n28_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain648_n29_α
 xchain648_n28_β:
 jmp xchain648_n7_α
 xchain648_n29_α:
  .section .rodata
  .Lcall436_pname: .string "edge"
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
   lea rdi, [rip + .Lcall436_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain648_n26_β
 jmp xchain648_n30_α
xchain648_n29_β:
 mov rdi, qword ptr [r12 + 176]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain648_n26_β
 jmp xchain648_n30_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain648_n30_α:
 lea rax, [rip + xchain648_n26_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_cycle_ham_γ
 xchain648_n30_β:
 jmp proc_cycle_ham_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain648_n31_α:
 jmp qword ptr [r12 + 64]
 xchain648_n31_β:
 jmp proc_cycle_ham_ω
proc_cycle_ham_β:
jmp xchain648_n31_α
proc_cycle_ham_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 992]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_cycle_ham_ω:
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
  .globl proc_ham1_α
proc_ham1_α:
#=======================================================================================================================
    .global proc_ham1_α
    .global proc_ham1_β
    .global proc_ham1_γ
    .global proc_ham1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_ham1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2208], rax
 pop rsi
proc_ham1_α_body:
 xchain705_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn707: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn707]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n1_α
 xchain705_n0_β:
 jmp proc_ham1_ω
# IR_VAR_REF local
 xchain705_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain705_n2_α
 xchain705_n1_β:
 jmp xchain705_n5_α
# IR_VAR_REF local
 xchain705_n2_α:
 lea rdi, [r12 + 2224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain705_n3_α
 xchain705_n2_β:
 jmp xchain705_n5_α
 xchain705_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2144]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2152], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn713: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn713]
 lea rsi, [r12 + 2144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 cmp eax, 99
 je xchain705_n5_α
 jmp xchain705_n4_α
 xchain705_n3_β:
 jmp xchain705_n5_α
# IR_LIT_STRING
 xchain705_n4_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx714_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain705_n6_α
 xchain705_n4_β:
 jmp proc_ham1_ω
.Lx714_0:
 .quad .Lx714_0_s
.Lx714_0_s:
 .string "."
 xchain705_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn716: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn716]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp proc_ham1_ω
 xchain705_n5_β:
 jmp proc_ham1_ω
# IR_LIT_STRING
 xchain705_n6_α:
 mov qword ptr [r12 + 2016], 1
 mov rax, qword ptr [rip + .Lx717_0]
 mov qword ptr [r12 + 2024], rax
 jmp xchain705_n7_α
 xchain705_n6_β:
 jmp proc_ham1_ω
.Lx717_0:
 .quad .Lx717_0_s
.Lx717_0_s:
 .string "a"
# IR_LIT_STRING
 xchain705_n7_α:
 mov qword ptr [r12 + 2000], 1
 mov rax, qword ptr [rip + .Lx718_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain705_n8_α
 xchain705_n7_β:
 jmp proc_ham1_ω
.Lx718_0:
 .quad .Lx718_0_s
.Lx718_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n8_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain705_n9_α
 xchain705_n8_β:
 jmp proc_ham1_ω
.Lx719_0:
 .quad .Lx719_0_s
.Lx719_0_s:
 .string "b"
# IR_LIT_STRING
 xchain705_n9_α:
 mov qword ptr [r12 + 1904], 1
 mov rax, qword ptr [rip + .Lx720_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain705_n10_α
 xchain705_n9_β:
 jmp proc_ham1_ω
.Lx720_0:
 .quad .Lx720_0_s
.Lx720_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n10_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx721_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain705_n11_α
 xchain705_n10_β:
 jmp proc_ham1_ω
.Lx721_0:
 .quad .Lx721_0_s
.Lx721_0_s:
 .string "c"
# IR_LIT_STRING
 xchain705_n11_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx722_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain705_n12_α
 xchain705_n11_β:
 jmp proc_ham1_ω
.Lx722_0:
 .quad .Lx722_0_s
.Lx722_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n12_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx723_0]
 mov qword ptr [r12 + 1736], rax
 jmp xchain705_n13_α
 xchain705_n12_β:
 jmp proc_ham1_ω
.Lx723_0:
 .quad .Lx723_0_s
.Lx723_0_s:
 .string "d"
# IR_LIT_STRING
 xchain705_n13_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain705_n14_α
 xchain705_n13_β:
 jmp proc_ham1_ω
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n14_α:
 mov qword ptr [r12 + 1632], 1
 mov rax, qword ptr [rip + .Lx725_0]
 mov qword ptr [r12 + 1640], rax
 jmp xchain705_n15_α
 xchain705_n14_β:
 jmp proc_ham1_ω
.Lx725_0:
 .quad .Lx725_0_s
.Lx725_0_s:
 .string "e"
# IR_LIT_STRING
 xchain705_n15_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx726_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain705_n16_α
 xchain705_n15_β:
 jmp proc_ham1_ω
.Lx726_0:
 .quad .Lx726_0_s
.Lx726_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n16_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain705_n17_α
 xchain705_n16_β:
 jmp proc_ham1_ω
.Lx727_0:
 .quad .Lx727_0_s
.Lx727_0_s:
 .string "f"
# IR_LIT_STRING
 xchain705_n17_α:
 mov qword ptr [r12 + 1520], 1
 mov rax, qword ptr [rip + .Lx728_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain705_n18_α
 xchain705_n17_β:
 jmp proc_ham1_ω
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n18_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx729_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain705_n19_α
 xchain705_n18_β:
 jmp proc_ham1_ω
.Lx729_0:
 .quad .Lx729_0_s
.Lx729_0_s:
 .string "g"
# IR_LIT_STRING
 xchain705_n19_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx730_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain705_n20_α
 xchain705_n19_β:
 jmp proc_ham1_ω
.Lx730_0:
 .quad .Lx730_0_s
.Lx730_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n20_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx731_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain705_n21_α
 xchain705_n20_β:
 jmp proc_ham1_ω
.Lx731_0:
 .quad .Lx731_0_s
.Lx731_0_s:
 .string "h"
# IR_LIT_STRING
 xchain705_n21_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx732_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain705_n22_α
 xchain705_n21_β:
 jmp proc_ham1_ω
.Lx732_0:
 .quad .Lx732_0_s
.Lx732_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n22_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx733_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain705_n23_α
 xchain705_n22_β:
 jmp proc_ham1_ω
.Lx733_0:
 .quad .Lx733_0_s
.Lx733_0_s:
 .string "i"
# IR_LIT_STRING
 xchain705_n23_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx734_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain705_n24_α
 xchain705_n23_β:
 jmp proc_ham1_ω
.Lx734_0:
 .quad .Lx734_0_s
.Lx734_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n24_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx735_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain705_n25_α
 xchain705_n24_β:
 jmp proc_ham1_ω
.Lx735_0:
 .quad .Lx735_0_s
.Lx735_0_s:
 .string "j"
# IR_LIT_STRING
 xchain705_n25_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain705_n26_α
 xchain705_n25_β:
 jmp proc_ham1_ω
.Lx736_0:
 .quad .Lx736_0_s
.Lx736_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n26_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain705_n27_α
 xchain705_n26_β:
 jmp proc_ham1_ω
.Lx737_0:
 .quad .Lx737_0_s
.Lx737_0_s:
 .string "k"
# IR_LIT_STRING
 xchain705_n27_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx738_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain705_n28_α
 xchain705_n27_β:
 jmp proc_ham1_ω
.Lx738_0:
 .quad .Lx738_0_s
.Lx738_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n28_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx739_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain705_n29_α
 xchain705_n28_β:
 jmp proc_ham1_ω
.Lx739_0:
 .quad .Lx739_0_s
.Lx739_0_s:
 .string "l"
# IR_LIT_STRING
 xchain705_n29_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx740_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain705_n30_α
 xchain705_n29_β:
 jmp proc_ham1_ω
.Lx740_0:
 .quad .Lx740_0_s
.Lx740_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n30_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx741_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain705_n31_α
 xchain705_n30_β:
 jmp proc_ham1_ω
.Lx741_0:
 .quad .Lx741_0_s
.Lx741_0_s:
 .string "m"
# IR_LIT_STRING
 xchain705_n31_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain705_n32_α
 xchain705_n31_β:
 jmp proc_ham1_ω
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n32_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx743_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain705_n33_α
 xchain705_n32_β:
 jmp proc_ham1_ω
.Lx743_0:
 .quad .Lx743_0_s
.Lx743_0_s:
 .string "n"
# IR_LIT_STRING
 xchain705_n33_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx744_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain705_n34_α
 xchain705_n33_β:
 jmp proc_ham1_ω
.Lx744_0:
 .quad .Lx744_0_s
.Lx744_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n34_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx745_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain705_n35_α
 xchain705_n34_β:
 jmp proc_ham1_ω
.Lx745_0:
 .quad .Lx745_0_s
.Lx745_0_s:
 .string "o"
# IR_LIT_STRING
 xchain705_n35_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain705_n36_α
 xchain705_n35_β:
 jmp proc_ham1_ω
.Lx746_0:
 .quad .Lx746_0_s
.Lx746_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n36_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx747_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain705_n37_α
 xchain705_n36_β:
 jmp proc_ham1_ω
.Lx747_0:
 .quad .Lx747_0_s
.Lx747_0_s:
 .string "p"
# IR_LIT_STRING
 xchain705_n37_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx748_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain705_n38_α
 xchain705_n37_β:
 jmp proc_ham1_ω
.Lx748_0:
 .quad .Lx748_0_s
.Lx748_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n38_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx749_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain705_n39_α
 xchain705_n38_β:
 jmp proc_ham1_ω
.Lx749_0:
 .quad .Lx749_0_s
.Lx749_0_s:
 .string "q"
# IR_LIT_STRING
 xchain705_n39_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx750_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain705_n40_α
 xchain705_n39_β:
 jmp proc_ham1_ω
.Lx750_0:
 .quad .Lx750_0_s
.Lx750_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n40_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain705_n41_α
 xchain705_n40_β:
 jmp proc_ham1_ω
.Lx751_0:
 .quad .Lx751_0_s
.Lx751_0_s:
 .string "r"
# IR_LIT_STRING
 xchain705_n41_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain705_n42_α
 xchain705_n41_β:
 jmp proc_ham1_ω
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n42_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx753_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain705_n43_α
 xchain705_n42_β:
 jmp proc_ham1_ω
.Lx753_0:
 .quad .Lx753_0_s
.Lx753_0_s:
 .string "s"
# IR_LIT_STRING
 xchain705_n43_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx754_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain705_n44_α
 xchain705_n43_β:
 jmp proc_ham1_ω
.Lx754_0:
 .quad .Lx754_0_s
.Lx754_0_s:
 .string "."
# IR_LIT_STRING
 xchain705_n44_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx755_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain705_n45_α
 xchain705_n44_β:
 jmp proc_ham1_ω
.Lx755_0:
 .quad .Lx755_0_s
.Lx755_0_s:
 .string "t"
# IR_LIT_STRING
 xchain705_n45_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx756_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain705_n46_α
 xchain705_n45_β:
 jmp proc_ham1_ω
.Lx756_0:
 .quad .Lx756_0_s
.Lx756_0_s:
 .string "[]"
 xchain705_n46_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+176] -> [zr+256]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn758: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn758]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n47_α
 xchain705_n46_β:
 jmp proc_ham1_ω
 xchain705_n47_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+352]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn760: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn760]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n48_α
 xchain705_n47_β:
 jmp proc_ham1_ω
 xchain705_n48_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+432]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 440], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+448]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn762: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn762]
 lea rsi, [r12 + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n49_α
 xchain705_n48_β:
 jmp proc_ham1_ω
 xchain705_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+544]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn764: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn764]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n50_α
 xchain705_n49_β:
 jmp proc_ham1_ω
 xchain705_n50_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+624]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 632], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+640]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn766: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn766]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n51_α
 xchain705_n50_β:
 jmp proc_ham1_ω
 xchain705_n51_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+720]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+736]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn768: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn768]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n52_α
 xchain705_n51_β:
 jmp proc_ham1_ω
 xchain705_n52_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+816]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+832]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn770: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn770]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n53_α
 xchain705_n52_β:
 jmp proc_ham1_ω
 xchain705_n53_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+912]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+928]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn772: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn772]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n54_α
 xchain705_n53_β:
 jmp proc_ham1_ω
 xchain705_n54_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+1008]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1016], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+1024]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn774: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn774]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n55_α
 xchain705_n54_β:
 jmp proc_ham1_ω
 xchain705_n55_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1104]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1112], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+1120]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn776: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn776]
 lea rsi, [r12 + 1088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n56_α
 xchain705_n55_β:
 jmp proc_ham1_ω
 xchain705_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1200]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1208], rax
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1216]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn778: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn778]
 lea rsi, [r12 + 1184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n57_α
 xchain705_n56_β:
 jmp proc_ham1_ω
 xchain705_n57_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1296]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1304], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1312]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn780: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn780]
 lea rsi, [r12 + 1280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n58_α
 xchain705_n57_β:
 jmp proc_ham1_ω
 xchain705_n58_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1392]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1400], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1408]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn782: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn782]
 lea rsi, [r12 + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n59_α
 xchain705_n58_β:
 jmp proc_ham1_ω
 xchain705_n59_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1480], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1488]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1496], rax
# marshal arg2 = producer-box slot [zr+1360] -> [zr+1504]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lrkfn784: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn784]
 lea rsi, [r12 + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n60_α
 xchain705_n59_β:
 jmp proc_ham1_ω
 xchain705_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1584]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1592], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1600]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lrkfn786: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn786]
 lea rsi, [r12 + 1568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n61_α
 xchain705_n60_β:
 jmp proc_ham1_ω
 xchain705_n61_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1672], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1680]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1688], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1696]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn788: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn788]
 lea rsi, [r12 + 1664]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n62_α
 xchain705_n61_β:
 jmp proc_ham1_ω
 xchain705_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1776]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1784], rax
# marshal arg2 = producer-box slot [zr+1648] -> [zr+1792]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lrkfn790: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn790]
 lea rsi, [r12 + 1760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n63_α
 xchain705_n62_β:
 jmp proc_ham1_ω
 xchain705_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1856]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1864], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1872]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1880], rax
# marshal arg2 = producer-box slot [zr+1744] -> [zr+1888]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lrkfn792: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn792]
 lea rsi, [r12 + 1856]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n64_α
 xchain705_n63_β:
 jmp proc_ham1_ω
 xchain705_n64_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2000] -> [zr+1952]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1968]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1976], rax
# marshal arg2 = producer-box slot [zr+1840] -> [zr+1984]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1992], rax
  .section .rodata
  .Lrkfn794: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn794]
 lea rsi, [r12 + 1952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je proc_ham1_ω
 jmp xchain705_n65_α
 xchain705_n64_β:
 jmp proc_ham1_ω
 xchain705_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2056], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+2064]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2072], rax
# marshal arg2 = producer-box slot [zr+1936] -> [zr+2080]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 2088], rax
  .section .rodata
  .Lrkfn796: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn796]
 lea rsi, [r12 + 2048]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain705_n5_α
 jmp xchain705_n66_α
 xchain705_n65_β:
 jmp xchain705_n5_α
# IR_VAR_REF local
 xchain705_n66_α:
 lea rdi, [r12 + 2224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain705_n67_α
 xchain705_n66_β:
 jmp xchain705_n5_α
 xchain705_n67_α:
  .section .rodata
  .Lcall506_pname: .string "cycle_ham"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2032]
 mov rdx, qword ptr [r12 + 2040]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2112]
 mov rdx, qword ptr [r12 + 2120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall506_pname]
 mov esi, 2
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain705_n5_α
 jmp xchain705_n68_α
xchain705_n67_β:
 mov rdi, qword ptr [r12 + 160]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain705_n5_α
 jmp xchain705_n68_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain705_n68_α:
 lea rax, [rip + xchain705_n67_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_ham1_γ
 xchain705_n68_β:
 jmp proc_ham1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain705_n69_α:
 jmp qword ptr [r12 + 48]
 xchain705_n69_β:
 jmp proc_ham1_ω
proc_ham1_β:
jmp xchain705_n69_α
proc_ham1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_ham1_ω:
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
  .globl proc_chain_ham_α
proc_chain_ham_α:
#=======================================================================================================================
    .global proc_chain_ham_α
    .global proc_chain_ham_β
    .global proc_chain_ham_γ
    .global proc_chain_ham_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_chain_ham_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1488], rax
 pop rsi
proc_chain_ham_α_body:
 xchain804_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn806: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn806]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_chain_ham_ω
 jmp xchain804_n1_α
 xchain804_n0_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain804_n2_α
 xchain804_n1_β:
 jmp xchain804_n7_α
# IR_LIT_STRING
 xchain804_n2_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx809_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain804_n3_α
 xchain804_n2_β:
 jmp proc_chain_ham_ω
.Lx809_0:
 .quad .Lx809_0_s
.Lx809_0_s:
 .string "."
# IR_VAR_REF local
 xchain804_n3_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain804_n4_α
 xchain804_n3_β:
 jmp proc_chain_ham_ω
# IR_LIT_STRING
 xchain804_n4_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx812_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain804_n5_α
 xchain804_n4_β:
 jmp proc_chain_ham_ω
.Lx812_0:
 .quad .Lx812_0_s
.Lx812_0_s:
 .string "[]"
 xchain804_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1424]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1432], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1440]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1448], rax
# marshal arg2 = producer-box slot [zr+1376] -> [zr+1456]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn814: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn814]
 lea rsi, [r12 + 1424]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain804_n7_α
 jmp xchain804_n6_α
 xchain804_n5_β:
 jmp xchain804_n7_α
 xchain804_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1328]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn816: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn816]
 lea rsi, [r12 + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain804_n7_α
 jmp xchain804_n8_α
 xchain804_n6_β:
 jmp xchain804_n7_α
 xchain804_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1040]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn818: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn818]
 lea rsi, [r12 + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je proc_chain_ham_ω
 jmp xchain804_n9_α
 xchain804_n7_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain804_n10_α
 xchain804_n8_β:
 jmp xchain804_n7_α
# IR_VAR_REF local
 xchain804_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain804_n11_α
 xchain804_n9_β:
 jmp xchain804_n20_α
# IR_VAR_REF local
 xchain804_n10_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain804_n12_α
 xchain804_n10_β:
 jmp xchain804_n7_α
# IR_LIT_STRING
 xchain804_n11_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx825_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain804_n13_α
 xchain804_n11_β:
 jmp proc_chain_ham_ω
.Lx825_0:
 .quad .Lx825_0_s
.Lx825_0_s:
 .string "."
 xchain804_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn827: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn827]
 lea rsi, [r12 + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain804_n7_α
 jmp xchain804_n14_α
 xchain804_n12_β:
 jmp xchain804_n7_α
# IR_VAR_REF local
 xchain804_n13_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain804_n15_α
 xchain804_n13_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain804_n16_α
 xchain804_n14_β:
 jmp xchain804_n7_α
# IR_VAR_REF local
 xchain804_n15_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain804_n17_α
 xchain804_n15_β:
 jmp proc_chain_ham_ω
# IR_LIT_STRING
 xchain804_n16_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx834_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain804_n18_α
 xchain804_n16_β:
 jmp proc_chain_ham_ω
.Lx834_0:
 .quad .Lx834_0_s
.Lx834_0_s:
 .string "."
 xchain804_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+976]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 984], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+992]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn836: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn836]
 lea rsi, [r12 + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n19_α
 xchain804_n17_β:
 jmp xchain804_n20_α
# IR_VAR_REF local
 xchain804_n18_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain804_n21_α
 xchain804_n18_β:
 jmp proc_chain_ham_ω
 xchain804_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn840: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn840]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n22_α
 xchain804_n19_β:
 jmp xchain804_n20_α
 xchain804_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn842: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn842]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_chain_ham_ω
 jmp proc_chain_ham_ω
 xchain804_n20_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n21_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain804_n23_α
 xchain804_n21_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain804_n24_α
 xchain804_n22_β:
 jmp xchain804_n20_α
 xchain804_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1184]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1200]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn848: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn848]
 lea rsi, [r12 + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain804_n7_α
 jmp xchain804_n25_α
 xchain804_n23_β:
 jmp xchain804_n7_α
# IR_VAR_REF local
 xchain804_n24_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain804_n26_α
 xchain804_n24_β:
 jmp xchain804_n20_α
 xchain804_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn852: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn852]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain804_n7_α
 jmp xchain804_n27_α
 xchain804_n25_β:
 jmp xchain804_n7_α
 xchain804_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn854: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn854]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n28_α
 xchain804_n26_β:
 jmp xchain804_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain804_n27_α:
 lea rax, [rip + xchain804_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_chain_ham_γ
 xchain804_n27_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n28_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain804_n30_α
 xchain804_n28_β:
 jmp xchain804_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain804_n29_α:
 jmp qword ptr [r12 + 80]
 xchain804_n29_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n30_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain804_n31_α
 xchain804_n30_β:
 jmp xchain804_n20_α
 xchain804_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn864: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn864]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n32_α
 xchain804_n31_β:
 jmp xchain804_n20_α
# IR_VAR_REF local
 xchain804_n32_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain804_n33_α
 xchain804_n32_β:
 jmp xchain804_n20_α
# IR_VAR_REF local
 xchain804_n33_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain804_n34_α
 xchain804_n33_β:
 jmp xchain804_n20_α
# IR_VAR_REF local
 xchain804_n34_α:
 lea rdi, [r12 + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain804_n35_α
 xchain804_n34_β:
 jmp xchain804_n20_α
 xchain804_n35_α:
  .section .rodata
  .Lcall544_pname: .string "del"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall544_pname]
 mov esi, 3
 lea rdx, [r12 + 624]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n36_α
xchain804_n35_β:
 mov rdi, qword ptr [r12 + 624]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n36_α
# IR_VAR_REF local
 xchain804_n36_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain804_n37_α
 xchain804_n36_β:
 jmp xchain804_n20_α
# IR_VAR_REF local
 xchain804_n37_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain804_n38_α
 xchain804_n37_β:
 jmp xchain804_n20_α
 xchain804_n38_α:
  .section .rodata
  .Lcall547_pname: .string "edge"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall547_pname]
 mov esi, 2
 lea rdx, [r12 + 512]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain804_n35_β
 jmp xchain804_n39_α
xchain804_n38_β:
 mov rdi, qword ptr [r12 + 512]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain804_n35_β
 jmp xchain804_n39_α
# IR_LIT_STRING
 xchain804_n39_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx877_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain804_n40_α
 xchain804_n39_β:
 jmp proc_chain_ham_ω
.Lx877_0:
 .quad .Lx877_0_s
.Lx877_0_s:
 .string "."
# IR_VAR_REF local
 xchain804_n40_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain804_n41_α
 xchain804_n40_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n41_α:
 lea rdi, [r12 + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain804_n42_α
 xchain804_n41_β:
 jmp proc_chain_ham_ω
 xchain804_n42_α:
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
  .Lrkfn883: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn883]
 lea rsi, [r12 + 272]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n43_α
 xchain804_n42_β:
 jmp xchain804_n20_α
# IR_LIT_STRING
 xchain804_n43_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx884_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain804_n44_α
 xchain804_n43_β:
 jmp proc_chain_ham_ω
.Lx884_0:
 .quad .Lx884_0_s
.Lx884_0_s:
 .string "."
# IR_VAR_REF local
 xchain804_n44_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain804_n45_α
 xchain804_n44_β:
 jmp proc_chain_ham_ω
# IR_VAR_REF local
 xchain804_n45_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain804_n46_α
 xchain804_n45_β:
 jmp proc_chain_ham_ω
 xchain804_n46_α:
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
  .Lrkfn890: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn890]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain804_n20_α
 jmp xchain804_n47_α
 xchain804_n46_β:
 jmp xchain804_n20_α
# IR_VAR_REF local
 xchain804_n47_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain804_n48_α
 xchain804_n47_β:
 jmp xchain804_n20_α
 xchain804_n48_α:
  .section .rodata
  .Lcall557_pname: .string "chain_ham"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall557_pname]
 mov esi, 3
 lea rdx, [r12 + 208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain804_n38_β
 jmp xchain804_n49_α
xchain804_n48_β:
 mov rdi, qword ptr [r12 + 208]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain804_n38_β
 jmp xchain804_n49_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain804_n49_α:
 lea rax, [rip + xchain804_n35_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_chain_ham_γ
 xchain804_n49_β:
 jmp proc_chain_ham_ω
proc_chain_ham_β:
jmp xchain804_n29_α
proc_chain_ham_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1488]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_chain_ham_ω:
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
  .globl proc_edge_α
proc_edge_α:
#=======================================================================================================================
    .global proc_edge_α
    .global proc_edge_β
    .global proc_edge_γ
    .global proc_edge_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_edge_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 480], rax
 pop rsi
proc_edge_α_body:
 xchain896_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn898: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn898]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_edge_ω
 jmp xchain896_n1_α
 xchain896_n0_β:
 jmp proc_edge_ω
# IR_VAR_REF local
 xchain896_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain896_n2_α
 xchain896_n1_β:
 jmp xchain896_n5_α
# IR_VAR_REF local
 xchain896_n2_α:
 lea rdi, [r12 + 528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain896_n3_α
 xchain896_n2_β:
 jmp xchain896_n5_α
 xchain896_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn904: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn904]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain896_n5_α
 jmp xchain896_n4_α
 xchain896_n3_β:
 jmp xchain896_n5_α
# IR_VAR_REF local
 xchain896_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain896_n6_α
 xchain896_n4_β:
 jmp xchain896_n5_α
 xchain896_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn908: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn908]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_edge_ω
 jmp proc_edge_ω
 xchain896_n5_β:
 jmp proc_edge_ω
# IR_VAR_REF local
 xchain896_n6_α:
 lea rdi, [r12 + 496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain896_n7_α
 xchain896_n6_β:
 jmp xchain896_n5_α
 xchain896_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn912: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn912]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain896_n5_α
 jmp xchain896_n8_α
 xchain896_n7_β:
 jmp xchain896_n5_α
# IR_VAR_REF local
 xchain896_n8_α:
 lea rdi, [r12 + 528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain896_n9_α
 xchain896_n8_β:
 jmp xchain896_n5_α
# IR_VAR_REF local
 xchain896_n9_α:
 lea rdi, [r12 + 512]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain896_n10_α
 xchain896_n9_β:
 jmp xchain896_n5_α
 xchain896_n10_α:
  .section .rodata
  .Lcall569_pname: .string "connect"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall569_pname]
 mov esi, 2
 lea rdx, [r12 + 272]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain896_n5_α
 jmp xchain896_n11_α
xchain896_n10_β:
 mov rdi, qword ptr [r12 + 272]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain896_n5_α
 jmp xchain896_n11_α
# IR_VAR_REF local
 xchain896_n11_α:
 lea rdi, [r12 + 496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain896_n12_α
 xchain896_n11_β:
 jmp xchain896_n5_α
# IR_VAR_REF local
 xchain896_n12_α:
 lea rdi, [r12 + 512]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain896_n13_α
 xchain896_n12_β:
 jmp xchain896_n5_α
 xchain896_n13_α:
  .section .rodata
  .Lcall572_pname: .string "el"
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
   lea rdi, [rip + .Lcall572_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain896_n10_β
 jmp xchain896_n14_α
xchain896_n13_β:
 mov rdi, qword ptr [r12 + 176]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain896_n10_β
 jmp xchain896_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain896_n14_α:
 lea rax, [rip + xchain896_n10_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_edge_γ
 xchain896_n14_β:
 jmp proc_edge_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain896_n15_α:
 jmp qword ptr [r12 + 64]
 xchain896_n15_β:
 jmp proc_edge_ω
proc_edge_β:
jmp xchain896_n15_α
proc_edge_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 480]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_edge_ω:
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
  .Lstartup_pname0: .string "del"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_del_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "el"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_el_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "connect"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_connect_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "cycle_ham"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_cycle_ham_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "ham1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_ham1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname5: .string "chain_ham"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_chain_ham_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname6: .string "edge"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_edge_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
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
 mov qword ptr [r12 + 256], rax
 pop rsi
main_α_body:
 xchain927_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn929: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn929]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain927_n1_α
 xchain927_n0_β:
 jmp main_ω
# IR_VAR_REF local
 xchain927_n1_α:
 lea rdi, [r12 + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain927_n2_α
 xchain927_n1_β:
 jmp xchain927_n4_α
 xchain927_n2_α:
  .section .rodata
  .Lcall577_pname: .string "ham1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall577_pname]
 mov esi, 1
 lea rdx, [r12 + 224]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain927_n4_α
 jmp xchain927_n3_α
xchain927_n2_β:
 mov rdi, qword ptr [r12 + 224]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain927_n4_α
 jmp xchain927_n3_α
# IR_VAR
 xchain927_n3_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 184], rax
 jmp xchain927_n5_α
 xchain927_n3_β:
 jmp xchain927_n4_α
 xchain927_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn936: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn936]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain927_n4_β:
 jmp main_ω
 xchain927_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn938: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn938]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain927_n2_β
 jmp xchain927_n6_α
 xchain927_n5_β:
 jmp xchain927_n2_β
# IR_LIT_STRING
 xchain927_n6_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx939_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain927_n7_α
 xchain927_n6_β:
 jmp xchain927_n4_α
.Lx939_0:
 .quad .Lx939_0_s
.Lx939_0_s:
 .string ""
 xchain927_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn941: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn941]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain927_n2_β
 jmp xchain927_n8_α
 xchain927_n7_β:
 jmp xchain927_n2_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain927_n8_α:
 lea rax, [rip + xchain927_n2_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain927_n8_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain927_n9_α:
 jmp qword ptr [r12 + 32]
 xchain927_n9_β:
 jmp main_ω
main_β:
jmp xchain927_n9_α
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
 mov rdi, qword ptr [r12 + 256]
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
