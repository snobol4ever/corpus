  .intel_syntax noprefix
  .text
  .globl proc_event_α
proc_event_α:
#=======================================================================================================================
    .global proc_event_α
    .global proc_event_β
    .global proc_event_γ
    .global proc_event_ω
  sub rsp, 1232
  mov [rsp + 1208], rcx
  mov [rsp + 1216], rdx
  mov [rsp + 1224], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1200
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1160], rsp
  mov rdi, rsp
  mov esi, 1200
  call rt_jmp_frame_lexprep@PLT
proc_event_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string ""
# IR_VAR
 xchain0_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1128], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
 xchain0_n2_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx5_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx5_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx5_3]
 lea rdx, [rip + .Lx5_4]
 jmp rax
.Lx5_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx5_2
.Lx5_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx5_2
.Lx5_1:
 call rt_faildescr@PLT
.Lx5_2:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "geddate"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n8_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string ""
 xchain0_n4_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 mov rdx, qword ptr [rbp + 1072]
 mov rcx, qword ptr [rbp + 1080]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n3_α
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 936], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n8_α
 xchain0_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n3_α
 xchain0_n6_β:
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n8_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "PLAC"
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n11_α
 xchain0_n9_α:
  .section .rodata
  .Lcall10_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 2
 lea rdx, [rbp + 944]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n12_α
xchain0_n9_β:
 lea rdi, [rbp + 944]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n12_α
# IR_UNOP
 xchain0_n10_α:
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 99
 je xchain0_n11_α
 cmp eax, 0
 jne xchain0_n11_α
 mov qword ptr [rbp + 752], 0
 mov qword ptr [rbp + 760], 0
 jmp xchain0_n13_α
 xchain0_n10_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain0_n14_α
 xchain0_n11_β:
 jmp xchain0_n18_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "   "
 xchain0_n12_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n9_β
 mov rdi, qword ptr [rbp + 896]
 mov rsi, qword ptr [rbp + 904]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n9_β
# IR_LIT_STRING
 xchain0_n13_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n18_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "   "
# IR_VAR
 xchain0_n14_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n18_α
 xchain0_n15_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n8_α
 xchain0_n15_β:
 jmp xchain0_n8_α
# IR_VAR
 xchain0_n16_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n18_α
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n18_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string " "
# IR_RETURN
 xchain0_n18_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_event_γ
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n18_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string " "
# IR_VAR
 xchain0_n20_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 664], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n18_α
# IR_UNOP
 xchain0_n22_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 99
 je xchain0_n23_α
 cmp eax, 0
 je xchain0_n23_α
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n23_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n18_α
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "            "
# IR_UNOP
 xchain0_n24_α:
 mov eax, dword ptr [rbp + 1168]
 cmp eax, 99
 je xchain0_n18_α
 cmp eax, 0
 je xchain0_n18_α
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 280], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL
 xchain0_n25_α:
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain0_n23_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain0_n30_α
 xchain0_n25_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL
 xchain0_n26_α:
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
 lea rax, [rip + xchain0_n18_α]
 mov qword ptr [rbp + 576], rax
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n18_α
 xchain0_n27_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+96]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 104], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+112]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 120], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+128]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 136], rax
# marshal arg3 = producer-box slot [zr+272] -> [zr+144]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn39: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn39]
 lea rsi, [rbp + 96]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n18_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n28_α:
 jmp qword ptr [rbp + 576]
 xchain0_n28_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL
 xchain0_n29_α:
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + xchain0_n18_α]
 mov qword ptr [rbp + 64], rax
 jmp xchain0_n18_α
 xchain0_n29_β:
 jmp xchain0_n18_α
# IR_LIT_STRING
 xchain0_n30_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n28_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "  "
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n31_α:
 jmp qword ptr [rbp + 64]
 xchain0_n31_β:
 jmp xchain0_n18_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n28_α
 xchain0_n33_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+352]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+368]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 376], rax
# marshal arg2 = producer-box slot [zr+528] -> [zr+384]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 392], rax
# marshal arg3 = producer-box slot [zr+560] -> [zr+400]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 408], rax
# marshal arg4 = producer-box slot [zr+688] -> [zr+416]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 424], rax
# marshal arg5 = producer-box slot [zr+720] -> [zr+432]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 440], rax
  .section .rodata
  .Lrkfn50: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn50]
 lea rsi, [rbp + 352]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n18_α
# IR_MOVE_LABEL
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 56], rax
 lea rax, [rip + xchain0_n28_α]
 mov qword ptr [rbp + 64], rax
 jmp xchain0_n18_α
 xchain0_n34_β:
 jmp xchain0_n18_α
proc_event_res:
add rsp, 8
pop rbp
proc_event_β:
jmp proc_event_ω
proc_event_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1208]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
proc_event_ω:
mov rax, [rbp + 1216]
lea rsp, [rbp + 1232]
mov rbp, [rbp + 1224]
jmp rax
  .globl proc_refto_α
proc_refto_α:
#=======================================================================================================================
    .global proc_refto_α
    .global proc_refto_β
    .global proc_refto_γ
    .global proc_refto_ω
  sub rsp, 576
  mov [rsp + 552], rcx
  mov [rsp + 560], rdx
  mov [rsp + 568], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 536], rsp
  mov rdi, rsp
  mov esi, 544
  call rt_jmp_frame_lexprep@PLT
proc_refto_α_body:
# IR_LIT_STRING
 xchain53_n0_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain53_n1_α
 xchain53_n0_β:
 jmp xchain53_n3_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "   "
# IR_VAR
 xchain53_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain53_n2_α
 xchain53_n1_β:
 jmp xchain53_n3_α
# IR_LIT_STRING
 xchain53_n2_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain53_n4_α
 xchain53_n2_β:
 jmp xchain53_n3_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string " ["
# IR_RETURN
 xchain53_n3_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_refto_γ
# IR_VAR_REF
 xchain53_n4_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain53_n5_α
 xchain53_n4_β:
 jmp xchain53_n3_α
# IR_VAR
 xchain53_n5_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 344], rax
 jmp xchain53_n6_α
 xchain53_n5_β:
 jmp xchain53_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain53_n6_α:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain53_n3_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain53_n7_α
 xchain53_n6_β:
 jmp xchain53_n3_α
# IR_DEREF variable -> value
 xchain53_n7_α:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain53_n3_α
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain53_n8_α
 xchain53_n7_β:
 jmp xchain53_n3_α
# IR_FIELD_GET
 xchain53_n8_α:
 mov rdi, qword ptr [rip + .Lx65_0]
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain53_n3_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain53_n9_α
 xchain53_n8_β:
 jmp xchain53_n3_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "n"
# IR_LIT_STRING
 xchain53_n9_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain53_n10_α
 xchain53_n9_β:
 jmp xchain53_n3_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "] "
# IR_VAR
 xchain53_n10_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 504], rax
 jmp xchain53_n11_α
 xchain53_n10_β:
 jmp xchain53_n3_α
 xchain53_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx70_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx70_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx70_3]
 lea rdx, [rip + .Lx70_4]
 jmp rax
.Lx70_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx70_2
.Lx70_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx70_2
.Lx70_1:
 call rt_faildescr@PLT
.Lx70_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain53_n3_α
 jmp xchain53_n12_α
 xchain53_n11_β:
 jmp xchain53_n3_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "gedfnf"
 xchain53_n12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+64]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 72], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+80]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 88], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+96]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 104], rax
# marshal arg3 = producer-box slot [zr+272] -> [zr+112]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 120], rax
# marshal arg4 = producer-box slot [zr+416] -> [zr+128]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 136], rax
# marshal arg5 = producer-box slot [zr+448] -> [zr+144]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn72: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 64]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain53_n3_α
 jmp xchain53_n3_α
 xchain53_n12_β:
 jmp xchain53_n3_α
proc_refto_res:
add rsp, 8
pop rbp
proc_refto_β:
jmp proc_refto_ω
proc_refto_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 552]
lea rsp, [rbp + 576]
mov rbp, [rbp + 568]
jmp rax
proc_refto_ω:
mov rax, [rbp + 560]
lea rsp, [rbp + 576]
mov rbp, [rbp + 568]
jmp rax
  .globl proc_sortkey_α
proc_sortkey_α:
#=======================================================================================================================
    .global proc_sortkey_α
    .global proc_sortkey_β
    .global proc_sortkey_γ
    .global proc_sortkey_ω
  sub rsp, 208
  mov [rsp + 184], rcx
  mov [rsp + 192], rdx
  mov [rsp + 200], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 176
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 168], rsp
  mov rdi, rsp
  mov esi, 176
  call rt_jmp_frame_lexprep@PLT
proc_sortkey_α_body:
# IR_VAR
 xchain73_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain73_n1_α
 xchain73_n0_β:
 jmp proc_sortkey_ω
 xchain73_n1_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx77_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx77_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx77_3]
 lea rdx, [rip + .Lx77_4]
 jmp rax
.Lx77_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx77_2
.Lx77_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx77_2
.Lx77_1:
 call rt_faildescr@PLT
.Lx77_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain73_n2_α
 xchain73_n1_β:
 jmp proc_sortkey_ω
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "gedlnf"
 xchain73_n2_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn79: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn79]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain73_n3_α
 xchain73_n2_β:
 jmp proc_sortkey_ω
# IR_RETURN
 xchain73_n3_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_sortkey_γ
proc_sortkey_res:
add rsp, 8
pop rbp
proc_sortkey_β:
jmp proc_sortkey_ω
proc_sortkey_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 184]
lea rsp, [rbp + 208]
mov rbp, [rbp + 200]
jmp rax
proc_sortkey_ω:
mov rax, [rbp + 192]
lea rsp, [rbp + 208]
mov rbp, [rbp + 200]
jmp rax
  .globl proc_gedload_α
proc_gedload_α:
#=======================================================================================================================
    .global proc_gedload_α
    .global proc_gedload_β
    .global proc_gedload_γ
    .global proc_gedload_ω
  sub rsp, 3840
  mov [rsp + 3816], rcx
  mov [rsp + 3824], rdx
  mov [rsp + 3832], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3808
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3656], rsp
  mov rdi, rsp
  mov esi, 3808
  call rt_jmp_frame_lexprep@PLT
proc_gedload_α_body:
# IR_LIT_INTEGER
 xchain81_n0_α:
 mov qword ptr [rbp + 3616], 6
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 3624], rax
 jmp xchain81_n1_α
 xchain81_n0_β:
 jmp xchain81_n2_α
.Lx82_0:
 .quad 0
 xchain81_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3616]
 mov rdx, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain81_n2_α
 xchain81_n1_β:
 jmp xchain81_n2_α
# IR_LIT_INTEGER
 xchain81_n2_α:
 mov qword ptr [rbp + 3360], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain81_n3_α
 xchain81_n2_β:
 jmp xchain81_n8_α
.Lx84_0:
 .quad 18446744073709551615
# KEYWORD_null
 xchain81_n3_α:
 mov qword ptr [rbp + 3392], 0
 mov qword ptr [rbp + 3400], 0
 jmp xchain81_n4_α
 xchain81_n3_β:
 jmp xchain81_n8_α
# IR_LIT_STRING
 xchain81_n4_α:
 mov qword ptr [rbp + 3424], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain81_n5_α
 xchain81_n4_β:
 jmp xchain81_n8_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "ROOT"
# IR_LIT_STRING
 xchain81_n5_α:
 mov qword ptr [rbp + 3456], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 3464], rax
 jmp xchain81_n6_α
 xchain81_n5_β:
 jmp xchain81_n8_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string ""
# IR_VAR
 xchain81_n6_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3496], rax
 jmp xchain81_n7_α
 xchain81_n6_β:
 jmp xchain81_n8_α
# KEYWORD_null
 xchain81_n7_α:
 mov qword ptr [rbp + 3520], 0
 mov qword ptr [rbp + 3528], 0
 jmp xchain81_n9_α
 xchain81_n7_β:
 jmp xchain81_n8_α
 xchain81_n8_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn92: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn92]
 lea rsi, [rbp + 3152]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain81_n11_α
 jmp xchain81_n10_α
 xchain81_n8_β:
 jmp xchain81_n11_α
# KEYWORD_null
 xchain81_n9_α:
 mov qword ptr [rbp + 3552], 0
 mov qword ptr [rbp + 3560], 0
 jmp xchain81_n12_α
 xchain81_n9_β:
 jmp xchain81_n8_α
 xchain81_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain81_n11_α
 xchain81_n10_β:
 jmp xchain81_n11_α
# IR_MAKE_LIST
 xchain81_n11_α:
 lea rdi, [rbp + 3120]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain81_n13_α
 xchain81_n11_β:
 jmp xchain81_n15_α
# IR_MAKE_LIST
 xchain81_n12_α:
 lea rdi, [rbp + 3600]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain81_n14_α
 xchain81_n12_β:
 jmp xchain81_n8_α
 xchain81_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3104]
 mov rdx, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain81_n15_α
 xchain81_n13_β:
 jmp xchain81_n15_α
 xchain81_n14_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3216]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3224], rax
# marshal arg1 = producer-box slot [zr+3392] -> [zr+3232]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3240], rax
# marshal arg2 = producer-box slot [zr+3424] -> [zr+3248]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3256], rax
# marshal arg3 = producer-box slot [zr+3456] -> [zr+3264]
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3272], rax
# marshal arg4 = producer-box slot [zr+3488] -> [zr+3280]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3288], rax
# marshal arg5 = producer-box slot [zr+3520] -> [zr+3296]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3304], rax
# marshal arg6 = producer-box slot [zr+3552] -> [zr+3312]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3320], rax
# marshal arg7 = producer-box slot [zr+3584] -> [zr+3328]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3336], rax
  .section .rodata
  .Lrkfn101: .string "gednode"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn101]
 lea rsi, [rbp + 3216]
 mov edx, 8
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain81_n8_α
 jmp xchain81_n16_α
 xchain81_n14_β:
 jmp xchain81_n8_α
# IR_MAKE_LIST
 xchain81_n15_α:
 lea rdi, [rbp + 3088]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain81_n17_α
 xchain81_n15_β:
 jmp xchain81_n19_α
 xchain81_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain81_n18_α
 xchain81_n16_β:
 jmp xchain81_n8_α
 xchain81_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain81_n19_α
 xchain81_n17_β:
 jmp xchain81_n19_α
 xchain81_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3184]
 mov rdx, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain81_n8_α
 xchain81_n18_β:
 jmp xchain81_n8_α
# IR_VAR
 xchain81_n19_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 680], rax
 jmp xchain81_n20_α
 xchain81_n19_β:
 jmp xchain81_n21_α
 xchain81_n20_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn110: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain81_n21_α
 jmp xchain81_n22_α
 xchain81_n20_β:
 jmp xchain81_n21_α
# IR_VAR
 xchain81_n21_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 296], rax
 jmp xchain81_n23_α
 xchain81_n21_β:
 jmp xchain81_n24_α
# IR_LIT_CHARSET
 xchain81_n22_α:
 mov qword ptr [rbp + 704], 1
 mov dword ptr [rbp + 708], -1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain81_n25_α
 xchain81_n22_β:
 jmp xchain81_n21_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "\t\n "
 xchain81_n23_α:
  .section .rodata
  .Lcall76_pname: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall76_pname]
 mov esi, 1
 lea rdx, [rbp + 304]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain81_n24_α
 jmp xchain81_n26_α
xchain81_n23_β:
 lea rdi, [rbp + 304]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain81_n24_α
 jmp xchain81_n26_α
# IR_VAR
 xchain81_n24_α:
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 136], rax
 jmp xchain81_n27_α
 xchain81_n24_β:
 jmp proc_gedload_ω
 xchain81_n25_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+592]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 600], rax
  .section .rodata
  .Lrkfn118: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn118]
 lea rsi, [rbp + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain81_n21_α
 jmp xchain81_n28_α
 xchain81_n25_β:
 jmp xchain81_n21_α
 xchain81_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain81_n29_α
 xchain81_n26_β:
 jmp xchain81_n24_α
# IR_VAR
 xchain81_n27_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 168], rax
 jmp xchain81_n30_α
 xchain81_n27_β:
 jmp proc_gedload_ω
 xchain81_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain81_n31_α
 xchain81_n28_β:
 jmp xchain81_n21_α
# IR_VAR
 xchain81_n29_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 360], rax
 jmp xchain81_n32_α
 xchain81_n29_β:
 jmp xchain81_n23_β
# IR_VAR
 xchain81_n30_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 200], rax
 jmp xchain81_n33_α
 xchain81_n30_β:
 jmp proc_gedload_ω
# IR_VAR
 xchain81_n31_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3000], rax
 jmp xchain81_n34_α
 xchain81_n31_β:
 jmp xchain81_n35_α
# IR_FIELD_GET lv
 xchain81_n32_α:
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain81_n23_β
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain81_n36_α
 xchain81_n32_β:
 jmp xchain81_n23_β
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "ref"
# IR_VAR
 xchain81_n33_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 232], rax
 jmp xchain81_n37_α
 xchain81_n33_β:
 jmp proc_gedload_ω
# IR_LIT_INTEGER
 xchain81_n34_α:
 mov qword ptr [rbp + 3024], 6
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain81_n38_α
 xchain81_n34_β:
 jmp xchain81_n35_α
.Lx00003_0:
 .quad 1
# IR_VAR
 xchain81_n35_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 2856], rax
 jmp xchain81_n39_α
 xchain81_n35_β:
 jmp xchain81_n40_α
# IR_VAR_REF
 xchain81_n36_α:
 lea rdi, [rbp + 3680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain81_n41_α
 xchain81_n36_β:
 jmp xchain81_n23_β
 xchain81_n37_α:
# BOX IR_CALL gedcom(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+48]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 56], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+64]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 72], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+80]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 88], rax
# marshal arg3 = producer-box slot [zr+224] -> [zr+96]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn138: .string "gedcom"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 48]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_gedload_ω
 jmp xchain81_n42_α
 xchain81_n37_β:
 jmp proc_gedload_ω
# IR_COERCE_NUMERIC
 xchain81_n38_α:
 mov eax, dword ptr [rbp + 3792]
 cmp eax, 7
 je .Lx00004_1
 cmp eax, 6
 jne .Lx00004_0
 mov eax, dword ptr [rbp + 3024]
 cmp eax, 6
 jne .Lx00004_0
.Lx00004_1:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2968], rax
 jmp .Lx00004_2
.Lx00004_0:
 lea rdi, [rbp + 3792]
 lea rsi, [rbp + 3024]
 lea rdx, [rbp + 2960]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00004_2:
 jmp xchain81_n43_α
 xchain81_n38_β:
 jmp xchain81_n35_α
# IR_UNOP
 xchain81_n39_α:
 mov rdi, qword ptr [rbp + 3744]
 mov rsi, qword ptr [rbp + 3752]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain81_n44_α
 xchain81_n39_β:
 jmp xchain81_n40_α
# IR_VAR
 xchain81_n40_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 2728], rax
 jmp xchain81_n45_α
 xchain81_n40_β:
 jmp xchain81_n46_α
# IR_VAR
 xchain81_n41_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 472], rax
 jmp xchain81_n47_α
 xchain81_n41_β:
 jmp xchain81_n23_β
# IR_RETURN
 xchain81_n42_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedload_γ
 xchain81_n43_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2960]
 cmp eax, 100
 je .Lx00005_0
 mov eax, dword ptr [rbp + 2960]
 cmp eax, 6
 jne .Lx00005_2
.Lx00005_1:
 mov rax, qword ptr [rbp + 2968]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2928], 6
 mov qword ptr [rbp + 2936], rax
 jmp xchain81_n48_α
.Lx00005_0:
 mov rdi, qword ptr [rbp + 2960]
 mov rsi, qword ptr [rbp + 2968]
 mov rdx, qword ptr [rbp + 3024]
 mov rcx, qword ptr [rbp + 3032]
 mov r8d, 0
 lea r9, [rbp + 2928]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00005_3
.Lx00005_2:
 mov rdi, qword ptr [rbp + 2960]
 mov rsi, qword ptr [rbp + 2968]
 mov rdx, qword ptr [rbp + 3024]
 mov rcx, qword ptr [rbp + 3032]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain81_n35_α
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
.Lx00005_3:
 jmp xchain81_n48_α
 xchain81_n43_β:
 jmp xchain81_n35_α
# IR_LIT_INTEGER
 xchain81_n44_α:
 mov qword ptr [rbp + 2880], 6
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [rbp + 2888], rax
 jmp xchain81_n49_α
 xchain81_n44_β:
 jmp xchain81_n40_α
.Lx00006_0:
 .quad 0
 xchain81_n45_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00007_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00007_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00007_3]
 lea rdx, [rip + .Lx00007_4]
 jmp rax
.Lx00007_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00007_2
.Lx00007_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00007_2
.Lx00007_1:
 call rt_faildescr@PLT
.Lx00007_2:
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain81_n46_α
 jmp xchain81_n50_α
 xchain81_n45_β:
 jmp xchain81_n46_α
.Lx00007_0:
 .quad .Lx00007_0_s
.Lx00007_0_s:
 .string "gedscan"
# KEYWORD_null
 xchain81_n46_α:
 mov qword ptr [rbp + 2624], 0
 mov qword ptr [rbp + 2632], 0
 jmp xchain81_n51_α
 xchain81_n46_β:
 jmp xchain81_n52_α
# IR_FIELD_GET
 xchain81_n47_α:
 mov rdi, qword ptr [rip + .Lx00008_0]
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain81_n23_β
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain81_n53_α
 xchain81_n47_β:
 jmp xchain81_n23_β
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "data"
 xchain81_n48_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain81_n35_α
 xchain81_n48_β:
 jmp xchain81_n35_α
 xchain81_n49_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 2880]
 cmp eax, 100
 je .Lx00009_0
 mov eax, dword ptr [rbp + 2816]
 cmp eax, 6
 jne .Lx00009_2
 mov eax, dword ptr [rbp + 2880]
 cmp eax, 6
 jne .Lx00009_2
.Lx00009_1:
 mov rax, qword ptr [rbp + 2824]
 mov rcx, qword ptr [rbp + 2888]
 cmp rax, rcx
 jne xchain81_n40_α
 mov rcx, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2784], rcx
 mov rcx, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2792], rcx
 jmp xchain81_n19_α
.Lx00009_0:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 mov r8d, 9
 lea r9, [rbp + 2784]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00009_1
 cmp eax, 1
 je xchain81_n40_α
 jmp xchain81_n19_α
.Lx00009_2:
 mov rdi, qword ptr [rbp + 2816]
 mov rsi, qword ptr [rbp + 2824]
 mov rdx, qword ptr [rbp + 2880]
 mov rcx, qword ptr [rbp + 2888]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain81_n40_α
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2792], rax
 jmp xchain81_n19_α
 xchain81_n49_β:
 jmp xchain81_n40_α
 xchain81_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2672]
 mov rdx, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain81_n52_α
 xchain81_n50_β:
 jmp xchain81_n46_α
# KEYWORD_read
 xchain81_n51_α:
 mov rdi, qword ptr [rip + .Lx00010_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain81_n55_α
 xchain81_n51_β:
 jmp xchain81_n19_α
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "&errout"
# IR_VAR
 xchain81_n52_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 2232], rax
 jmp xchain81_n56_α
 xchain81_n52_β:
 jmp xchain81_n57_α
# IR_SUBSCRIPT x[i] variable
 xchain81_n53_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain81_n23_β
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain81_n58_α
 xchain81_n53_β:
 jmp xchain81_n23_β
 xchain81_n54_α:
 jmp xchain81_n19_α
xchain81_n54_β:
 jmp xchain81_n19_α
# IR_LIT_STRING
 xchain81_n55_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain81_n59_α
 xchain81_n55_β:
 jmp xchain81_n19_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "ERR, line "
# IR_FIELD_GET lv
 xchain81_n56_α:
 mov rdi, qword ptr [rip + .Lx00012_0]
 mov rsi, qword ptr [rbp + 2224]
 mov rdx, qword ptr [rbp + 2232]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain81_n57_α
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain81_n60_α
 xchain81_n56_β:
 jmp xchain81_n57_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "lnum"
# IR_VAR
 xchain81_n57_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 2136], rax
 jmp xchain81_n61_α
 xchain81_n57_β:
 jmp xchain81_n62_α
# IR_DEREF variable -> value
 xchain81_n58_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain81_n23_β
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain81_n63_α
 xchain81_n58_β:
 jmp xchain81_n23_β
# IR_VAR
 xchain81_n59_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2536], rax
 jmp xchain81_n64_α
 xchain81_n59_β:
 jmp xchain81_n19_α
# IR_VAR
 xchain81_n60_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2280], rax
 jmp xchain81_n66_α
 xchain81_n60_β:
 jmp xchain81_n57_α
# IR_FIELD_GET lv
 xchain81_n61_α:
 mov rdi, qword ptr [rip + .Lx00013_0]
 mov rsi, qword ptr [rbp + 2128]
 mov rdx, qword ptr [rbp + 2136]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain81_n62_α
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain81_n67_α
 xchain81_n61_β:
 jmp xchain81_n62_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "sub"
# IR_VAR
 xchain81_n62_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1928], rax
 jmp xchain81_n68_α
 xchain81_n62_β:
 jmp xchain81_n69_α
# IR_ASSIGN_VAR
 xchain81_n63_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain81_n23_β
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain81_n23_β
 xchain81_n63_β:
 jmp xchain81_n23_β
# IR_LIT_STRING
 xchain81_n64_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx00014_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain81_n70_α
 xchain81_n64_β:
 jmp xchain81_n19_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string ": "
 xchain81_n65_α:
 jmp xchain81_n19_α
xchain81_n65_β:
 jmp xchain81_n19_α
# IR_ASSIGN_VAR
 xchain81_n66_α:
 mov rdi, qword ptr [rbp + 2192]
 mov rsi, qword ptr [rbp + 2200]
 mov rdx, qword ptr [rbp + 2272]
 mov rcx, qword ptr [rbp + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain81_n57_α
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain81_n57_α
 xchain81_n66_β:
 jmp xchain81_n57_α
# IR_MAKE_LIST
 xchain81_n67_α:
 lea rdi, [rbp + 2192]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain81_n71_α
 xchain81_n67_β:
 jmp xchain81_n62_α
# IR_FIELD_GET
 xchain81_n68_α:
 mov rdi, qword ptr [rip + .Lx00015_0]
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain81_n69_α
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain81_n72_α
 xchain81_n68_β:
 jmp xchain81_n69_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "level"
# IR_VAR
 xchain81_n69_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1800], rax
 jmp xchain81_n73_α
 xchain81_n69_β:
 jmp xchain81_n74_α
# IR_VAR
 xchain81_n70_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 2600], rax
 jmp xchain81_n75_α
 xchain81_n70_β:
 jmp xchain81_n19_α
# IR_ASSIGN_VAR
 xchain81_n71_α:
 mov rdi, qword ptr [rbp + 2096]
 mov rsi, qword ptr [rbp + 2104]
 mov rdx, qword ptr [rbp + 2176]
 mov rcx, qword ptr [rbp + 2184]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain81_n62_α
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain81_n62_α
 xchain81_n71_β:
 jmp xchain81_n62_α
# IR_VAR
 xchain81_n72_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 1992], rax
 jmp xchain81_n76_α
 xchain81_n72_β:
 jmp xchain81_n69_α
# IR_FIELD_GET
 xchain81_n73_α:
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov rsi, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain81_n74_α
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain81_n77_α
 xchain81_n73_β:
 jmp xchain81_n74_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "sub"
# IR_VAR
 xchain81_n74_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 1624], rax
 jmp xchain81_n78_α
 xchain81_n74_β:
 jmp xchain81_n79_α
 xchain81_n75_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2368]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2376], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2384]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2392], rax
# marshal arg2 = producer-box slot [zr+2528] -> [zr+2400]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2408], rax
# marshal arg3 = producer-box slot [zr+2560] -> [zr+2416]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2424], rax
# marshal arg4 = producer-box slot [zr+2592] -> [zr+2432]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2440], rax
  .section .rodata
  .Lrkfn191: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 2368]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain81_n19_α
 jmp xchain81_n19_α
 xchain81_n75_β:
 jmp xchain81_n19_α
# IR_FIELD_GET
 xchain81_n76_α:
 mov rdi, qword ptr [rip + .Lx00017_0]
 mov rsi, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain81_n69_α
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain81_n80_α
 xchain81_n76_β:
 jmp xchain81_n69_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "level"
# IR_VAR
 xchain81_n77_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 1832], rax
 jmp xchain81_n81_α
 xchain81_n77_β:
 jmp xchain81_n74_α
# IR_FIELD_GET lv
 xchain81_n78_α:
 mov rdi, qword ptr [rip + .Lx00018_0]
 mov rsi, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain81_n79_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain81_n82_α
 xchain81_n78_β:
 jmp xchain81_n79_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "parent"
# IR_VAR
 xchain81_n79_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 1560], rax
 jmp xchain81_n83_α
 xchain81_n79_β:
 jmp xchain81_n84_α
 xchain81_n80_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1888]
 cmp eax, 100
 je .Lx00019_0
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 100
 je .Lx00019_0
 mov eax, dword ptr [rbp + 1888]
 cmp eax, 6
 jne .Lx00019_2
 mov eax, dword ptr [rbp + 1952]
 cmp eax, 6
 jne .Lx00019_2
.Lx00019_1:
 mov rax, qword ptr [rbp + 1896]
 mov rcx, qword ptr [rbp + 1960]
 cmp rax, rcx
 jl xchain81_n69_α
 mov rcx, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1856], rcx
 mov rcx, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1864], rcx
 jmp xchain81_n85_α
.Lx00019_0:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1952]
 mov rcx, qword ptr [rbp + 1960]
 mov r8d, 8
 lea r9, [rbp + 1856]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00019_1
 cmp eax, 1
 je xchain81_n69_α
 jmp xchain81_n85_α
.Lx00019_2:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1952]
 mov rcx, qword ptr [rbp + 1960]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain81_n69_α
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1864], rax
 jmp xchain81_n85_α
 xchain81_n80_β:
 jmp xchain81_n69_α
 xchain81_n81_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1712]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1728]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1736], rax
  .section .rodata
  .Lrkfn200: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn200]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain81_n74_α
 jmp xchain81_n74_α
 xchain81_n81_β:
 jmp xchain81_n74_α
# IR_VAR
 xchain81_n82_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1672], rax
 jmp xchain81_n86_α
 xchain81_n82_β:
 jmp xchain81_n79_α
 xchain81_n83_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain81_n84_α
 xchain81_n83_β:
 jmp xchain81_n84_α
# IR_VAR_REF
 xchain81_n84_α:
 lea rdi, [rbp + 3680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain81_n87_α
 xchain81_n84_β:
 jmp xchain81_n90_α
# IR_VAR
 xchain81_n85_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 2072], rax
 jmp xchain81_n88_α
 xchain81_n85_β:
 jmp xchain81_n62_α
# IR_ASSIGN_VAR
 xchain81_n86_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain81_n79_α
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain81_n79_α
 xchain81_n86_β:
 jmp xchain81_n79_α
# IR_VAR
 xchain81_n87_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 1432], rax
 jmp xchain81_n89_α
 xchain81_n87_β:
 jmp xchain81_n90_α
# IR_FIELD_GET
 xchain81_n88_α:
 mov rdi, qword ptr [rip + .Lx00020_0]
 mov rsi, qword ptr [rbp + 2064]
 mov rdx, qword ptr [rbp + 2072]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain81_n62_α
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain81_n91_α
 xchain81_n88_β:
 jmp xchain81_n62_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "parent"
# IR_FIELD_GET
 xchain81_n89_α:
 mov rdi, qword ptr [rip + .Lx00021_0]
 mov rsi, qword ptr [rbp + 1424]
 mov rdx, qword ptr [rbp + 1432]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain81_n90_α
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain81_n92_α
 xchain81_n89_β:
 jmp xchain81_n90_α
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string "id"
# IR_VAR
 xchain81_n90_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 824], rax
 jmp xchain81_n93_α
 xchain81_n90_β:
 jmp xchain81_n19_α
 xchain81_n91_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain81_n62_α
 xchain81_n91_β:
 jmp xchain81_n62_α
# IR_UNOP
 xchain81_n92_α:
 mov eax, dword ptr [rbp + 1392]
 cmp eax, 99
 je xchain81_n90_α
 cmp eax, 0
 je xchain81_n90_α
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 jmp xchain81_n94_α
 xchain81_n92_β:
 jmp xchain81_n90_α
# IR_FIELD_GET
 xchain81_n93_α:
 mov rdi, qword ptr [rip + .Lx00022_0]
 mov rsi, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain81_n19_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain81_n95_α
 xchain81_n93_β:
 jmp xchain81_n19_α
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string "tag"
# IR_SUBSCRIPT x[i] variable
 xchain81_n94_α:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, qword ptr [rbp + 1360]
 mov rcx, qword ptr [rbp + 1368]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain81_n90_α
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain81_n96_α
 xchain81_n94_β:
 jmp xchain81_n90_α
# IR_LIT_STRING
 xchain81_n95_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain81_n97_α
 xchain81_n95_β:
 jmp xchain81_n19_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "FAM"
# IR_VAR
 xchain81_n96_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 1512], rax
 jmp xchain81_n98_α
 xchain81_n96_β:
 jmp xchain81_n90_α
 xchain81_n97_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1280]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1296]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn223: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn223]
 lea rsi, [rbp + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain81_n00024_α
 jmp xchain81_n99_α
 xchain81_n97_β:
 jmp xchain81_n00024_α
# IR_ASSIGN_VAR
 xchain81_n98_α:
 mov rdi, qword ptr [rbp + 1456]
 mov rsi, qword ptr [rbp + 1464]
 mov rdx, qword ptr [rbp + 1504]
 mov rcx, qword ptr [rbp + 1512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain81_n90_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain81_n90_α
 xchain81_n98_β:
 jmp xchain81_n90_α
# IR_VAR
 xchain81_n99_α:
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 1192], rax
 jmp xchain81_n00025_α
 xchain81_n99_β:
 jmp xchain81_n19_α
# IR_LIT_STRING
 xchain81_n00024_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain81_n00027_α
 xchain81_n00024_β:
 jmp xchain81_n19_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "INDI"
# IR_VAR
 xchain81_n00025_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 1224], rax
 jmp xchain81_n00028_α
 xchain81_n00025_β:
 jmp xchain81_n19_α
 xchain81_n00027_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+1040]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+1056]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn231: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn231]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain81_n19_α
 jmp xchain81_n00029_α
 xchain81_n00027_β:
 jmp xchain81_n19_α
 xchain81_n00028_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
  .section .rodata
  .Lrkfn233: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn233]
 lea rsi, [rbp + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain81_n19_α
 jmp xchain81_n00030_α
 xchain81_n00028_β:
 jmp xchain81_n19_α
# IR_VAR
 xchain81_n00029_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 952], rax
 jmp xchain81_n00031_α
 xchain81_n00029_β:
 jmp xchain81_n19_α
 xchain81_n00030_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain81_n00032_α
 xchain81_n00030_β:
 jmp xchain81_n19_α
# IR_VAR
 xchain81_n00031_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 984], rax
 jmp xchain81_n00033_α
 xchain81_n00031_β:
 jmp xchain81_n19_α
# IR_VAR
 xchain81_n00032_α:
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 760], rax
 jmp xchain81_n00034_α
 xchain81_n00032_β:
 jmp xchain81_n19_α
 xchain81_n00033_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
  .section .rodata
  .Lrkfn242: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn242]
 lea rsi, [rbp + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain81_n19_α
 jmp xchain81_n00035_α
 xchain81_n00033_β:
 jmp xchain81_n19_α
 xchain81_n00034_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 744], rax
 jmp xchain81_n19_α
xchain81_n00034_β:
 jmp xchain81_n19_α
 xchain81_n00035_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain81_n00032_α
 xchain81_n00035_β:
 jmp xchain81_n19_α
proc_gedload_res:
add rsp, 8
pop rbp
proc_gedload_β:
jmp proc_gedload_ω
proc_gedload_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3816]
lea rsp, [rbp + 3840]
mov rbp, [rbp + 3832]
jmp rax
proc_gedload_ω:
mov rax, [rbp + 3824]
lea rsp, [rbp + 3840]
mov rbp, [rbp + 3832]
jmp rax
  .globl proc_gedscan_α
proc_gedscan_α:
#=======================================================================================================================
    .global proc_gedscan_α
    .global proc_gedscan_β
    .global proc_gedscan_γ
    .global proc_gedscan_ω
  sub rsp, 1936
  mov [rsp + 1912], rcx
  mov [rsp + 1920], rdx
  mov [rsp + 1928], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1904
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1832], rsp
  mov rdi, rsp
  mov esi, 1904
  call rt_jmp_frame_lexprep@PLT
proc_gedscan_α_body:
# IR_VAR_REF
 xchain00036_n0_α:
 mov rdi, 1879052320
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00036_n1_α
 xchain00036_n0_β:
 jmp xchain00036_n3_α
# IR_NULLTEST_VAR
 xchain00036_n1_α:
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 99
 je xchain00036_n3_α
 mov rdi, qword ptr [rbp + 1712]
 mov rsi, qword ptr [rbp + 1720]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00036_n3_α
 cmp eax, 0
 jne xchain00036_n3_α
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00036_n2_α
 xchain00036_n1_β:
 jmp xchain00036_n3_α
# IR_LIT_INTEGER
 xchain00036_n2_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00036_n4_α
 xchain00036_n2_β:
 jmp xchain00036_n3_α
.Lx00037_0:
 .quad 1
# IR_VAR
 xchain00036_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00036_n5_α
 xchain00036_n3_β:
 jmp proc_gedscan_ω
# IR_ASSIGN_VAR
 xchain00036_n4_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00036_n3_α
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00036_n6_α
 xchain00036_n4_β:
 jmp xchain00036_n3_α
# IR_GEN_SCAN
 xchain00036_n5_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00036_n7_α
 xchain00036_n5_β:
 jmp proc_gedscan_ω
# IR_LIT_CHARSET
 xchain00036_n6_α:
 mov qword ptr [rbp + 1616], 1
 mov dword ptr [rbp + 1620], -1
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00036_n8_α
 xchain00036_n6_β:
 jmp xchain00036_n3_α
.Lx00038_0:
 .quad .Lx00038_0_s
.Lx00038_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00036_n7_α:
 mov qword ptr [rbp + 1440], 1
 mov dword ptr [rbp + 1444], -1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00036_n9_α
 xchain00036_n7_β:
 jmp xchain00036_n13_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "\t\n "
# IR_LIT_CHARSET
 xchain00036_n8_α:
 mov qword ptr [rbp + 1648], 1
 mov dword ptr [rbp + 1652], -1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00036_n10_α
 xchain00036_n8_β:
 jmp xchain00036_n3_α
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "0123456789"
# IR_SCAN_MANY
 xchain00036_n9_α:
 mov eax, r14d
.Lx00041_0:
 cmp eax, r15d
 jge .Lx00041_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00041_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00041_1
 add eax, 1
 jmp .Lx00041_0
.Lx00041_1:
 cmp eax, r14d
 je xchain00036_n13_α
 mov qword ptr [rbp + 1408], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1416], rcx
 jmp xchain00036_n11_α
 xchain00036_n9_β:
 jmp xchain00036_n13_α
.Lx00041_2:
 .quad .Lx00041_2_s
.Lx00041_2_s:
 .string "\t\n "
 xchain00036_n10_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00036_n3_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00036_n12_α
 xchain00036_n10_β:
 jmp xchain00036_n3_α
# IR_SCAN_TAB
 xchain00036_n11_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1416]
 cmp rax, 1
 jge .Lx00042_0
 add rax, r15
 add rax, 1
.Lx00042_0:
 cmp rax, 1
 jge .Lx00042_239
 add rsp, 16
 jmp xchain00036_n13_α
.Lx00042_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00042_240
 add rsp, 16
 jmp xchain00036_n13_α
.Lx00042_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00036_n13_α
 xchain00036_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00036_n13_α
# IR_LIT_CHARSET
 xchain00036_n12_α:
 mov qword ptr [rbp + 1680], 1
 mov dword ptr [rbp + 1684], -1
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00036_n14_α
 xchain00036_n12_β:
 jmp xchain00036_n3_α
.Lx00043_0:
 .quad .Lx00043_0_s
.Lx00043_0_s:
 .string "_"
# IR_LIT_CHARSET
 xchain00036_n13_α:
 mov qword ptr [rbp + 1344], 1
 mov dword ptr [rbp + 1348], -1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00036_n15_α
 xchain00036_n13_β:
 jmp proc_gedscan_ω
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "0123456789"
 xchain00036_n14_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1680]
 mov rcx, qword ptr [rbp + 1688]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00036_n3_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00036_n16_α
 xchain00036_n14_β:
 jmp xchain00036_n3_α
# IR_SCAN_MANY
 xchain00036_n15_α:
 mov eax, r14d
.Lx00045_0:
 cmp eax, r15d
 jge .Lx00045_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00045_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00045_1
 add eax, 1
 jmp .Lx00045_0
.Lx00045_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [rbp + 1312], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1320], rcx
 jmp xchain00036_n17_α
 xchain00036_n15_β:
 jmp proc_gedscan_ω
.Lx00045_2:
 .quad .Lx00045_2_s
.Lx00045_2_s:
 .string "0123456789"
# IR_ASSIGN gva
 xchain00036_n16_α:
 mov rax, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00036_n18_α
 xchain00036_n16_β:
 jmp xchain00036_n3_α
# IR_SCAN_TAB
 xchain00036_n17_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1320]
 cmp rax, 1
 jge .Lx00046_0
 add rax, r15
 add rax, 1
.Lx00046_0:
 cmp rax, 1
 jge .Lx00046_239
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00046_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00046_240
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00046_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00036_n19_α
 xchain00036_n17_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedscan_ω
# IR_MOVE_LABEL
 xchain00036_n18_α:
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1512], rax
 lea rax, [rip + xchain00036_n3_α]
 mov qword ptr [rbp + 1520], rax
 jmp xchain00036_n3_α
 xchain00036_n18_β:
 jmp xchain00036_n3_α
# IR_MOVE_LABEL
 xchain00036_n19_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00036_n21_α
 xchain00036_n19_β:
 jmp xchain00036_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00036_n20_α:
 jmp qword ptr [rbp + 1520]
 xchain00036_n20_β:
 jmp xchain00036_n3_α
 xchain00036_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00036_n23_α
 xchain00036_n21_β:
 jmp xchain00036_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00036_n22_α:
 jmp qword ptr [rbp + 1264]
 xchain00036_n22_β:
 jmp xchain00036_n23_α
# IR_LIT_CHARSET
 xchain00036_n23_α:
 mov qword ptr [rbp + 1200], 1
 mov dword ptr [rbp + 1204], -1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00036_n24_α
 xchain00036_n23_β:
 jmp xchain00036_n26_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "\t\n "
# IR_SCAN_MANY
 xchain00036_n24_α:
 mov eax, r14d
.Lx00048_0:
 cmp eax, r15d
 jge .Lx00048_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00048_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00048_1
 add eax, 1
 jmp .Lx00048_0
.Lx00048_1:
 cmp eax, r14d
 je xchain00036_n26_α
 mov qword ptr [rbp + 1168], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00036_n25_α
 xchain00036_n24_β:
 jmp xchain00036_n26_α
.Lx00048_2:
 .quad .Lx00048_2_s
.Lx00048_2_s:
 .string "\t\n "
# IR_SCAN_TAB
 xchain00036_n25_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1176]
 cmp rax, 1
 jge .Lx00049_0
 add rax, r15
 add rax, 1
.Lx00049_0:
 cmp rax, 1
 jge .Lx00049_239
 add rsp, 16
 jmp xchain00036_n26_α
.Lx00049_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00049_240
 add rsp, 16
 jmp xchain00036_n26_α
.Lx00049_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain00036_n26_α
 xchain00036_n25_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00036_n26_α
# IR_SCAN_SEQ_NARY
 xchain00036_n26_α:
 mov dword ptr [rbp + 832], r14d
 mov dword ptr [rbp + 836], 0
 jmp xchain00036_n28_α
xchain00036_n26_as:
 mov eax, dword ptr [rbp + 836]
 add eax, 1
 mov dword ptr [rbp + 836], eax
 cmp eax, 1
 je xchain00036_n30_α
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 push r10
 push r10
 mov rdi, rax
 mov rsi, rdx
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 call str_concat_d@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain00036_n27_α
 xchain00036_n26_β:
 mov dword ptr [rbp + 836], 2
xchain00036_n26_af:
 mov eax, dword ptr [rbp + 836]
 sub eax, 1
 mov dword ptr [rbp + 836], eax
 cmp eax, 0
 je xchain00036_n29_β
 cmp eax, 1
 je xchain00036_n31_β
 jmp xchain00036_n40_α
 xchain00036_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00036_n32_α
 xchain00036_n27_β:
 jmp xchain00036_n40_α
# IR_LIT_STRING
 xchain00036_n28_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00036_n33_α
 xchain00036_n28_β:
 jmp xchain00036_n26_af
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00036_n29_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 888]
 cmp rax, 1
 jge .Lx00051_0
 add rax, r15
 add rax, 1
.Lx00051_0:
 cmp rax, 1
 jge .Lx00051_239
 add rsp, 16
 jmp xchain00036_n26_af
.Lx00051_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00051_240
 add rsp, 16
 jmp xchain00036_n26_af
.Lx00051_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00036_n26_as
 xchain00036_n29_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00036_n26_af
# IR_LIT_CHARSET
 xchain00036_n30_α:
 mov qword ptr [rbp + 1072], 1
 mov dword ptr [rbp + 1076], -1
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00036_n34_α
 xchain00036_n30_β:
 jmp xchain00036_n26_af
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00036_n31_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 984]
 cmp rax, 1
 jge .Lx00053_0
 add rax, r15
 add rax, 1
.Lx00053_0:
 cmp rax, 1
 jge .Lx00053_239
 add rsp, 16
 jmp xchain00036_n26_af
.Lx00053_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00053_240
 add rsp, 16
 jmp xchain00036_n26_af
.Lx00053_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00036_n26_as
 xchain00036_n31_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00036_n26_af
# IR_LIT_CHARSET
 xchain00036_n32_α:
 mov qword ptr [rbp + 768], 1
 mov dword ptr [rbp + 772], -1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00036_n35_α
 xchain00036_n32_β:
 jmp xchain00036_n40_α
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "\t\n "
# IR_SCAN_MATCH
 xchain00036_n33_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00055_239
 add rsp, 16
 jmp xchain00036_n26_af
.Lx00055_239:
 mov rdi, qword ptr [rip + .Lx00055_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00055_240
 add rsp, 16
 jmp xchain00036_n26_af
.Lx00055_240:
 mov qword ptr [rbp + 880], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 888], rax
 jmp xchain00036_n29_α
 xchain00036_n33_β:
 add rsp, 16
 jmp xchain00036_n26_af
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "@"
# IR_SCAN_UPTO
 xchain00036_n34_α:
 mov qword ptr [rbp + 1056], r14
.Lx00056_0:
 mov rax, qword ptr [rbp + 1056]
 cmp rax, r15
 jge xchain00036_n26_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00056_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00056_1
 mov qword ptr [rbp + 1040], 6
 add rax, 1
 mov qword ptr [rbp + 1048], rax
 jmp xchain00036_n36_α
.Lx00056_1:
 inc qword ptr [rbp + 1056]
 jmp .Lx00056_0
 xchain00036_n34_β:
 inc qword ptr [rbp + 1056]
 jmp .Lx00056_0
.Lx00056_2:
 .quad .Lx00056_2_s
.Lx00056_2_s:
 .string "@"
# IR_SCAN_MANY
 xchain00036_n35_α:
 mov eax, r14d
.Lx00057_0:
 cmp eax, r15d
 jge .Lx00057_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00057_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00057_1
 add eax, 1
 jmp .Lx00057_0
.Lx00057_1:
 cmp eax, r14d
 je xchain00036_n40_α
 mov qword ptr [rbp + 736], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 744], rcx
 jmp xchain00036_n37_α
 xchain00036_n35_β:
 jmp xchain00036_n40_α
.Lx00057_2:
 .quad .Lx00057_2_s
.Lx00057_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00036_n36_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00036_n38_α
 xchain00036_n36_β:
 jmp xchain00036_n26_af
.Lx00058_0:
 .quad 1
# IR_SCAN_TAB
 xchain00036_n37_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 744]
 cmp rax, 1
 jge .Lx00059_0
 add rax, r15
 add rax, 1
.Lx00059_0:
 cmp rax, 1
 jge .Lx00059_239
 add rsp, 16
 jmp xchain00036_n40_α
.Lx00059_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00059_240
 add rsp, 16
 jmp xchain00036_n40_α
.Lx00059_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00036_n39_α
 xchain00036_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00036_n40_α
# IR_COERCE_NUMERIC
 xchain00036_n38_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 7
 je .Lx00060_1
 cmp eax, 6
 jne .Lx00060_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00060_0
.Lx00060_1:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
 jmp .Lx00060_2
.Lx00060_0:
 lea rdi, [rbp + 1040]
 lea rsi, [rbp + 1104]
 lea rdx, [rbp + 1008]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00060_2:
 jmp xchain00036_n41_α
 xchain00036_n38_β:
 jmp xchain00036_n26_af
# IR_MOVE_LABEL
 xchain00036_n39_α:
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + xchain00036_n40_α]
 mov qword ptr [rbp + 688], rax
 jmp xchain00036_n40_α
 xchain00036_n39_β:
 jmp xchain00036_n40_α
# IR_VAR
 xchain00036_n40_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00036_n43_α
 xchain00036_n40_β:
 jmp proc_gedscan_ω
 xchain00036_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 6
 jne .Lx00061_2
.Lx00061_1:
 mov rax, qword ptr [rbp + 1016]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 976], 6
 mov qword ptr [rbp + 984], rax
 jmp xchain00036_n31_α
.Lx00061_0:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 0
 lea r9, [rbp + 976]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00061_3
.Lx00061_2:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00036_n26_af
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
.Lx00061_3:
 jmp xchain00036_n31_α
 xchain00036_n41_β:
 jmp xchain00036_n26_af
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00036_n42_α:
 jmp qword ptr [rbp + 688]
 xchain00036_n42_β:
 jmp xchain00036_n40_α
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00036_n43_α:
 mov eax, r14d
.Lx00062_0:
 cmp eax, r15d
 jge .Lx00062_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 648]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00062_1
 add eax, 1
 jmp .Lx00062_0
.Lx00062_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [rbp + 608], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 616], rcx
 jmp xchain00036_n44_α
 xchain00036_n43_β:
 jmp proc_gedscan_ω
# IR_SCAN_TAB
 xchain00036_n44_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 616]
 cmp rax, 1
 jge .Lx00063_0
 add rax, r15
 add rax, 1
.Lx00063_0:
 cmp rax, 1
 jge .Lx00063_239
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00063_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00063_240
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00063_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00036_n45_α
 xchain00036_n44_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedscan_ω
# IR_MOVE_LABEL
 xchain00036_n45_α:
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [rbp + 560], rax
 jmp xchain00036_n46_α
 xchain00036_n45_β:
 jmp xchain00036_n48_α
 xchain00036_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00036_n48_α
 xchain00036_n46_β:
 jmp xchain00036_n48_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00036_n47_α:
 jmp qword ptr [rbp + 560]
 xchain00036_n47_β:
 jmp xchain00036_n48_α
# IR_LIT_CHARSET
 xchain00036_n48_α:
 mov qword ptr [rbp + 496], 1
 mov dword ptr [rbp + 500], -1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00036_n49_α
 xchain00036_n48_β:
 jmp xchain00036_n51_α
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "\t\n "
# IR_SCAN_MANY
 xchain00036_n49_α:
 mov eax, r14d
.Lx00065_0:
 cmp eax, r15d
 jge .Lx00065_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00065_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00065_1
 add eax, 1
 jmp .Lx00065_0
.Lx00065_1:
 cmp eax, r14d
 je xchain00036_n51_α
 mov qword ptr [rbp + 464], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 472], rcx
 jmp xchain00036_n50_α
 xchain00036_n49_β:
 jmp xchain00036_n51_α
.Lx00065_2:
 .quad .Lx00065_2_s
.Lx00065_2_s:
 .string "\t\n "
# IR_SCAN_TAB
 xchain00036_n50_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 472]
 cmp rax, 1
 jge .Lx00066_0
 add rax, r15
 add rax, 1
.Lx00066_0:
 cmp rax, 1
 jge .Lx00066_239
 add rsp, 16
 jmp xchain00036_n51_α
.Lx00066_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00066_240
 add rsp, 16
 jmp xchain00036_n51_α
.Lx00066_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00036_n51_α
 xchain00036_n50_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00036_n51_α
# IR_LIT_INTEGER
 xchain00036_n51_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00036_n52_α
 xchain00036_n51_β:
 jmp xchain00036_n54_α
.Lx00067_0:
 .quad 0
# IR_SCAN_TAB
 xchain00036_n52_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00068_0
 add rax, r15
 add rax, 1
.Lx00068_0:
 cmp rax, 1
 jge .Lx00068_239
 add rsp, 16
 jmp xchain00036_n54_α
.Lx00068_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00068_240
 add rsp, 16
 jmp xchain00036_n54_α
.Lx00068_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00036_n53_α
 xchain00036_n52_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00036_n54_α
 xchain00036_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00036_n54_α
 xchain00036_n53_β:
 jmp xchain00036_n54_α
# IR_VAR
 xchain00036_n54_α:
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 232], rax
 jmp xchain00036_n55_α
 xchain00036_n54_β:
 jmp proc_gedscan_ω
# IR_VAR
 xchain00036_n55_α:
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 264], rax
 jmp xchain00036_n56_α
 xchain00036_n55_β:
 jmp proc_gedscan_ω
# IR_VAR
 xchain00036_n56_α:
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 296], rax
 jmp xchain00036_n57_α
 xchain00036_n56_β:
 jmp proc_gedscan_ω
# IR_VAR
 xchain00036_n57_α:
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 328], rax
 jmp xchain00036_n58_α
 xchain00036_n57_β:
 jmp proc_gedscan_ω
 xchain00036_n58_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+160]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 168], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+176]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 184], rax
# marshal arg3 = producer-box slot [zr+320] -> [zr+192]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn339: .string "gednode"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn339]
 lea rsi, [rbp + 144]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_gedscan_ω
 jmp xchain00036_n59_α
 xchain00036_n58_β:
 jmp proc_gedscan_ω
# IR_RETURN
 xchain00036_n59_α:
 mov rax, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedscan_γ
proc_gedscan_res:
add rsp, 8
pop rbp
proc_gedscan_β:
jmp proc_gedscan_ω
proc_gedscan_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1912]
lea rsp, [rbp + 1936]
mov rbp, [rbp + 1928]
jmp rax
proc_gedscan_ω:
mov rax, [rbp + 1920]
lea rsp, [rbp + 1936]
mov rbp, [rbp + 1928]
jmp rax
  .globl proc_gedwalk_α
proc_gedwalk_α:
#=======================================================================================================================
    .global proc_gedwalk_α
    .global proc_gedwalk_β
    .global proc_gedwalk_γ
    .global proc_gedwalk_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 232], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  cmp esi, 0
  jne proc_gedwalk_β
proc_gedwalk_α_body:
lea rax, [rip + xchain00069_n3_β]
mov qword ptr [rbp + 208], rax
# IR_VAR
 xchain00069_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00069_n1_α
 xchain00069_n0_β:
 jmp xchain00069_n2_α
# IR_MOVE_LABEL
 xchain00069_n1_α:
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain00069_n2_α]
 mov qword ptr [rbp + 48], rax
 jmp xchain00069_n3_α
 xchain00069_n1_β:
 jmp proc_gedwalk_ω
# IR_VAR
 xchain00069_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 152], rax
 jmp xchain00069_n5_α
 xchain00069_n2_β:
 jmp proc_gedwalk_ω
# IR_SUSPEND yield+resume
 xchain00069_n3_α:
 lea rax, [rip + xchain00069_n3_β]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedwalk_γ
 xchain00069_n3_β:
 jmp xchain00069_n4_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00069_n4_α:
 jmp qword ptr [rbp + 48]
 xchain00069_n4_β:
 jmp proc_gedwalk_ω
# IR_FIELD_GET
 xchain00069_n5_α:
 mov rdi, qword ptr [rip + .Lx00070_0]
 mov rsi, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedwalk_ω
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain00069_n6_α
 xchain00069_n5_β:
 jmp proc_gedwalk_ω
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00069_n6_α:
 mov qword ptr [rbp + 96], 0
.Lx00071_0:
 mov rdi, qword ptr [rbp + 112]
 mov rsi, qword ptr [rbp + 120]
 mov rdx, qword ptr [rbp + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp rax, 99
 je proc_gedwalk_ω
 jmp xchain00069_n7_α
 xchain00069_n6_β:
 inc qword ptr [rbp + 96]
 jmp .Lx00071_0
 xchain00069_n7_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
  .section .rodata
  .Lcall00072_pname: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00072_pname]
 mov esi, 1
 lea rdx, [rbp + 96]
 call rt_proc_call_gen_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00069_n6_β
 jmp xchain00069_n8_α
xchain00069_n7_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 96]
 call rt_proc_resume_frame_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00069_n6_β
 jmp xchain00069_n8_α
# IR_MOVE_LABEL
 xchain00069_n8_α:
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain00069_n7_β]
 mov qword ptr [rbp + 48], rax
 jmp xchain00069_n3_α
 xchain00069_n8_β:
 jmp proc_gedwalk_ω
proc_gedwalk_β:
jmp qword ptr [rbp + 208]
proc_gedwalk_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 232]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
proc_gedwalk_ω:
mov rsp, qword ptr [rsp + 232]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
  .globl proc_gedsub_α
proc_gedsub_α:
#=======================================================================================================================
    .global proc_gedsub_α
    .global proc_gedsub_β
    .global proc_gedsub_γ
    .global proc_gedsub_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 888], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  cmp esi, 0
  jne proc_gedsub_β
proc_gedsub_α_body:
lea rax, [rip + xchain00073_n17_β]
mov qword ptr [rbp + 864], rax
# IR_VAR
 xchain00073_n0_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 840], rax
 jmp xchain00073_n1_α
 xchain00073_n0_β:
 jmp proc_gedsub_ω
 xchain00073_n1_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn362: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn362]
 lea rsi, [rbp + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je proc_gedsub_ω
 jmp xchain00073_n2_α
 xchain00073_n1_β:
 jmp proc_gedsub_ω
# IR_MOVE_LABEL
 xchain00073_n2_α:
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [rbp + 768], rax
 jmp xchain00073_n3_α
 xchain00073_n2_β:
 jmp xchain00073_n5_α
 xchain00073_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00073_n5_α
 xchain00073_n3_β:
 jmp xchain00073_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00073_n4_α:
 jmp qword ptr [rbp + 768]
 xchain00073_n4_β:
 jmp xchain00073_n5_α
# IR_VAR
 xchain00073_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00073_n6_α
 xchain00073_n5_β:
 jmp proc_gedsub_ω
# IR_FIELD_GET
 xchain00073_n6_α:
 mov rdi, qword ptr [rip + .Lx00074_0]
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedsub_ω
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00073_n7_α
 xchain00073_n6_β:
 jmp proc_gedsub_ω
.Lx00074_0:
 .quad .Lx00074_0_s
.Lx00074_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00073_n7_α:
 mov qword ptr [rbp + 80], 0
.Lx00075_0:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 80]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp rax, 99
 je proc_gedsub_ω
 jmp xchain00073_n8_α
 xchain00073_n7_β:
 inc qword ptr [rbp + 80]
 jmp .Lx00075_0
 xchain00073_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00073_n9_α
 xchain00073_n8_β:
 jmp proc_gedsub_ω
# IR_VAR
 xchain00073_n9_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 680], rax
 jmp xchain00073_n10_α
 xchain00073_n9_β:
 jmp xchain00073_n7_β
# IR_FIELD_GET
 xchain00073_n10_α:
 mov rdi, qword ptr [rip + .Lx00076_0]
 mov rsi, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00073_n7_β
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00073_n11_α
 xchain00073_n10_β:
 jmp xchain00073_n7_β
.Lx00076_0:
 .quad .Lx00076_0_s
.Lx00076_0_s:
 .string "tag"
# IR_VAR
 xchain00073_n11_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 712], rax
 jmp xchain00073_n12_α
 xchain00073_n11_β:
 jmp xchain00073_n7_β
 xchain00073_n12_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00073_n7_β
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00073_n13_α
 xchain00073_n12_β:
 jmp xchain00073_n7_β
# IR_VAR
 xchain00073_n13_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 552], rax
 jmp xchain00073_n14_α
 xchain00073_n13_β:
 jmp xchain00073_n15_α
# IR_UNOP
 xchain00073_n14_α:
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 call rt_size_d@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00073_n16_α
 xchain00073_n14_β:
 jmp xchain00073_n15_α
# IR_VAR
 xchain00073_n15_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 456], rax
 jmp xchain00073_n17_α
 xchain00073_n15_β:
 jmp xchain00073_n7_β
# IR_LIT_INTEGER
 xchain00073_n16_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00073_n18_α
 xchain00073_n16_β:
 jmp xchain00073_n15_α
.Lx00077_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain00073_n17_α:
 lea rax, [rip + xchain00073_n17_β]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00073_n17_β:
 jmp xchain00073_n19_α
 xchain00073_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 512]
 cmp eax, 100
 je .Lx00078_0
 mov eax, dword ptr [rbp + 576]
 cmp eax, 100
 je .Lx00078_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00078_2
 mov eax, dword ptr [rbp + 576]
 cmp eax, 6
 jne .Lx00078_2
.Lx00078_1:
 mov rax, qword ptr [rbp + 520]
 mov rcx, qword ptr [rbp + 584]
 cmp rax, rcx
 jle xchain00073_n15_α
 mov rcx, qword ptr [rbp + 576]
 mov qword ptr [rbp + 480], rcx
 mov rcx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 488], rcx
 jmp xchain00073_n20_α
.Lx00078_0:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 7
 lea r9, [rbp + 480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00078_1
 cmp eax, 1
 je xchain00073_n15_α
 jmp xchain00073_n20_α
.Lx00078_2:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00073_n15_α
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 488], rax
 jmp xchain00073_n20_α
 xchain00073_n18_β:
 jmp xchain00073_n15_α
# IR_MOVE_LABEL
 xchain00073_n19_α:
 lea rax, [rip + xchain00073_n7_β]
 mov qword ptr [rbp + 208], rax
 jmp xchain00073_n21_α
 xchain00073_n19_β:
 jmp xchain00073_n7_β
# IR_LIT_STRING
 xchain00073_n20_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00073_n23_α
 xchain00073_n20_β:
 jmp xchain00073_n7_β
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "gedsub"
# IR_MOVE_LABEL
 xchain00073_n21_α:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 lea rax, [rip + xchain00073_n22_α]
 mov qword ptr [rbp + 176], rax
 jmp xchain00073_n7_β
 xchain00073_n21_β:
 jmp xchain00073_n7_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00073_n22_α:
 jmp qword ptr [rbp + 208]
 xchain00073_n22_β:
 jmp xchain00073_n7_β
# IR_VAR
 xchain00073_n23_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 392], rax
 jmp xchain00073_n25_α
 xchain00073_n23_β:
 jmp xchain00073_n7_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00073_n24_α:
 jmp qword ptr [rbp + 176]
 xchain00073_n24_β:
 jmp xchain00073_n7_β
# IR_VAR
 xchain00073_n25_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 424], rax
 jmp xchain00073_n26_α
 xchain00073_n25_β:
 jmp xchain00073_n7_β
 xchain00073_n26_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn403: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn403]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00073_n7_β
 jmp xchain00073_n27_α
 xchain00073_n26_β:
 jmp xchain00073_n7_β
 xchain00073_n27_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn405: .string "__apply__"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn405]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00073_n7_β
 jmp xchain00073_n28_α
 xchain00073_n27_β:
 jmp xchain00073_n7_β
# IR_SUSPEND yield+resume
 xchain00073_n28_α:
 lea rax, [rip + xchain00073_n28_β]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00073_n28_β:
 jmp xchain00073_n29_α
# IR_MOVE_LABEL
 xchain00073_n29_α:
 lea rax, [rip + xchain00073_n7_β]
 mov qword ptr [rbp + 208], rax
 jmp xchain00073_n21_α
 xchain00073_n29_β:
 jmp xchain00073_n7_β
proc_gedsub_β:
jmp qword ptr [rbp + 864]
proc_gedsub_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 888]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
proc_gedsub_ω:
mov rsp, qword ptr [rsp + 888]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
  .globl proc_gedval_α
proc_gedval_α:
#=======================================================================================================================
    .global proc_gedval_α
    .global proc_gedval_β
    .global proc_gedval_γ
    .global proc_gedval_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 216], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  cmp esi, 0
  jne proc_gedval_β
proc_gedval_α_body:
lea rax, [rip + xchain00080_n4_β]
mov qword ptr [rbp + 192], rax
# IR_LIT_STRING
 xchain00080_n0_α:
 mov qword ptr [rbp + 128], 1
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00080_n1_α
 xchain00080_n0_β:
 jmp proc_gedval_ω
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "gedsub"
# IR_VAR
 xchain00080_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 168], rax
 jmp xchain00080_n2_α
 xchain00080_n1_β:
 jmp proc_gedval_ω
 xchain00080_n2_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 88], rax
# marshal arg1 = producer-box slot [zr+160] -> [zr+96]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn415: .string "__apply__"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn415]
 lea rsi, [rbp + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_gedval_ω
 jmp xchain00080_n3_α
 xchain00080_n2_β:
 jmp proc_gedval_ω
# IR_FIELD_GET
 xchain00080_n3_α:
 mov rdi, qword ptr [rip + .Lx00082_0]
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedval_ω
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00080_n4_α
 xchain00080_n3_β:
 jmp proc_gedval_ω
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "data"
# IR_SUSPEND yield+resume
 xchain00080_n4_α:
 lea rax, [rip + xchain00080_n4_β]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedval_γ
 xchain00080_n4_β:
 jmp proc_gedval_ω
proc_gedval_β:
jmp qword ptr [rbp + 192]
proc_gedval_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 216]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
proc_gedval_ω:
mov rsp, qword ptr [rsp + 216]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
  .globl proc_gedref_α
proc_gedref_α:
#=======================================================================================================================
    .global proc_gedref_α
    .global proc_gedref_β
    .global proc_gedref_γ
    .global proc_gedref_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  cmp esi, 0
  jne proc_gedref_β
proc_gedref_α_body:
lea rax, [rip + xchain00083_n5_β]
mov qword ptr [rbp + 224], rax
# IR_LIT_STRING
 xchain00083_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00083_n1_α
 xchain00083_n0_β:
 jmp proc_gedref_ω
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "gedsub"
# IR_VAR
 xchain00083_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 200], rax
 jmp xchain00083_n2_α
 xchain00083_n1_β:
 jmp proc_gedref_ω
 xchain00083_n2_α:
# BOX IR_CALL __apply__(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn424: .string "__apply__"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn424]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_gedref_ω
 jmp xchain00083_n3_α
 xchain00083_n2_β:
 jmp proc_gedref_ω
# IR_FIELD_GET
 xchain00083_n3_α:
 mov rdi, qword ptr [rip + .Lx00085_0]
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedref_ω
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00083_n4_α
 xchain00083_n3_β:
 jmp proc_gedref_ω
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "ref"
# IR_UNOP
 xchain00083_n4_α:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 99
 je proc_gedref_ω
 cmp eax, 0
 je proc_gedref_ω
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
 jmp xchain00083_n5_α
 xchain00083_n4_β:
 jmp proc_gedref_ω
# IR_SUSPEND yield+resume
 xchain00083_n5_α:
 lea rax, [rip + xchain00083_n5_β]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedref_γ
 xchain00083_n5_β:
 jmp proc_gedref_ω
proc_gedref_β:
jmp qword ptr [rbp + 224]
proc_gedref_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 248]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
proc_gedref_ω:
mov rsp, qword ptr [rsp + 248]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
  .globl proc_gedfnf_α
proc_gedfnf_α:
#=======================================================================================================================
    .global proc_gedfnf_α
    .global proc_gedfnf_β
    .global proc_gedfnf_γ
    .global proc_gedfnf_ω
  sub rsp, 1552
  mov [rsp + 1528], rcx
  mov [rsp + 1536], rdx
  mov [rsp + 1544], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1520
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1464], rsp
  mov rdi, rsp
  mov esi, 1520
  call rt_jmp_frame_lexprep@PLT
proc_gedfnf_α_body:
# IR_VAR
 xchain00086_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1400], rax
 jmp xchain00086_n1_α
 xchain00086_n0_β:
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00086_n1_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00086_n2_α
 xchain00086_n1_β:
 jmp proc_gedfnf_ω
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "NAME"
 xchain00086_n2_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
  .section .rodata
  .Lcall00088_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1424]
 mov rdx, qword ptr [rbp + 1432]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00088_pname]
 mov esi, 2
 lea rdx, [rbp + 1408]
 call rt_proc_call_gen_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00086_n3_α
xchain00086_n2_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 1408]
 call rt_proc_resume_frame_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00086_n3_α
# IR_MOVE_LABEL
 xchain00086_n3_α:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1336], rax
 lea rax, [rip + xchain00086_n2_β]
 mov qword ptr [rbp + 1344], rax
 jmp xchain00086_n4_α
 xchain00086_n3_β:
 jmp xchain00086_n6_α
 xchain00086_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1328]
 mov rdx, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00086_n6_α
 xchain00086_n4_β:
 jmp xchain00086_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00086_n5_α:
 jmp qword ptr [rbp + 1344]
 xchain00086_n5_β:
 jmp xchain00086_n6_α
# IR_VAR
 xchain00086_n6_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00086_n7_α
 xchain00086_n6_β:
 jmp xchain00086_n8_α
# IR_GEN_SCAN
 xchain00086_n7_α:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00086_n9_α
 xchain00086_n7_β:
 jmp xchain00086_n8_α
# IR_VAR
 xchain00086_n8_α:
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 632], rax
 jmp xchain00086_n10_α
 xchain00086_n8_β:
 jmp xchain00086_n11_α
# IR_LIT_CHARSET
 xchain00086_n9_α:
 mov qword ptr [rbp + 1248], 1
 mov dword ptr [rbp + 1252], -1
 mov rax, qword ptr [rip + .Lx00089_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00086_n12_α
 xchain00086_n9_β:
 jmp xchain00086_n22_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "/"
# IR_UNOP
 xchain00086_n10_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 call rt_size_d@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00086_n13_α
 xchain00086_n10_β:
 jmp xchain00086_n11_α
# IR_VAR
 xchain00086_n11_α:
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 536], rax
 jmp xchain00086_n14_α
 xchain00086_n11_β:
 jmp xchain00086_n15_α
# IR_SCAN_UPTO
 xchain00086_n12_α:
 mov qword ptr [rbp + 1232], r14
.Lx00090_0:
 mov rax, qword ptr [rbp + 1232]
 cmp rax, r15
 jge xchain00086_n22_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00090_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00090_1
 mov qword ptr [rbp + 1216], 6
 add rax, 1
 mov qword ptr [rbp + 1224], rax
 jmp xchain00086_n16_α
.Lx00090_1:
 inc qword ptr [rbp + 1232]
 jmp .Lx00090_0
 xchain00086_n12_β:
 inc qword ptr [rbp + 1232]
 jmp .Lx00090_0
.Lx00090_2:
 .quad .Lx00090_2_s
.Lx00090_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00086_n13_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00086_n17_α
 xchain00086_n13_β:
 jmp xchain00086_n11_α
.Lx00091_0:
 .quad 0
 xchain00086_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00086_n18_α
 xchain00086_n14_β:
 jmp xchain00086_n15_α
# IR_VAR
 xchain00086_n15_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 120], rax
 jmp xchain00086_n19_α
 xchain00086_n15_β:
 jmp xchain00086_n20_α
# IR_SCAN_TAB
 xchain00086_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1224]
 cmp rax, 1
 jge .Lx00092_0
 add rax, r15
 add rax, 1
.Lx00092_0:
 cmp rax, 1
 jge .Lx00092_239
 add rsp, 16
 jmp xchain00086_n22_α
.Lx00092_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00092_240
 add rsp, 16
 jmp xchain00086_n22_α
.Lx00092_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00086_n21_α
 xchain00086_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00086_n22_α
 xchain00086_n17_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 592]
 cmp eax, 100
 je .Lx00093_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 100
 je .Lx00093_0
 mov eax, dword ptr [rbp + 592]
 cmp eax, 6
 jne .Lx00093_2
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00093_2
.Lx00093_1:
 mov rax, qword ptr [rbp + 600]
 mov rcx, qword ptr [rbp + 664]
 cmp rax, rcx
 jle xchain00086_n11_α
 mov rcx, qword ptr [rbp + 656]
 mov qword ptr [rbp + 560], rcx
 mov rcx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 568], rcx
 jmp xchain00086_n23_α
.Lx00093_0:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 7
 lea r9, [rbp + 560]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00093_1
 cmp eax, 1
 je xchain00086_n11_α
 jmp xchain00086_n23_α
.Lx00093_2:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00086_n11_α
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 568], rax
 jmp xchain00086_n23_α
 xchain00086_n17_β:
 jmp xchain00086_n11_α
# IR_MOVE_LABEL
 xchain00086_n18_α:
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 312], rax
 lea rax, [rip + xchain00086_n15_α]
 mov qword ptr [rbp + 320], rax
 jmp xchain00086_n15_α
 xchain00086_n18_β:
 jmp xchain00086_n15_α
# IR_LIT_STRING
 xchain00086_n19_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00086_n25_α
 xchain00086_n19_β:
 jmp xchain00086_n20_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string " "
# IR_VAR
 xchain00086_n20_α:
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 40], rax
 jmp xchain00086_n26_α
 xchain00086_n20_β:
 jmp proc_gedfnf_ω
 xchain00086_n21_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1160], rax
  .section .rodata
  .Lrkfn464: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn464]
 lea rsi, [rbp + 1152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain00086_n22_α
 jmp xchain00086_n27_α
 xchain00086_n21_β:
 jmp xchain00086_n22_α
# IR_LIT_INTEGER
 xchain00086_n22_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00086_n28_α
 xchain00086_n22_β:
 jmp proc_gedfnf_ω
.Lx00095_0:
 .quad 0
# IR_VAR
 xchain00086_n23_α:
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 424], rax
 jmp xchain00086_n29_α
 xchain00086_n23_β:
 jmp xchain00086_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00086_n24_α:
 jmp qword ptr [rbp + 320]
 xchain00086_n24_β:
 jmp xchain00086_n15_α
# IR_VAR
 xchain00086_n25_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 248], rax
 jmp xchain00086_n30_α
 xchain00086_n25_β:
 jmp xchain00086_n20_α
# IR_RETURN
 xchain00086_n26_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
# IR_MOVE_LABEL
 xchain00086_n27_α:
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 984], rax
 lea rax, [rip + xchain00086_n22_α]
 mov qword ptr [rbp + 992], rax
 jmp xchain00086_n31_α
 xchain00086_n27_β:
 jmp xchain00086_n36_α
# IR_SCAN_TAB
 xchain00086_n28_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00096_0
 add rax, r15
 add rax, 1
.Lx00096_0:
 cmp rax, 1
 jge .Lx00096_239
 add rsp, 16
 jmp proc_gedfnf_ω
.Lx00096_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00096_240
 add rsp, 16
 jmp proc_gedfnf_ω
.Lx00096_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain00086_n33_α
 xchain00086_n28_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00086_n29_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain00086_n34_α
 xchain00086_n29_β:
 jmp xchain00086_n15_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string " "
# IR_LIT_STRING
 xchain00086_n30_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00086_n35_α
 xchain00086_n30_β:
 jmp xchain00086_n20_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string "TITL"
 xchain00086_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain00086_n36_α
 xchain00086_n31_β:
 jmp xchain00086_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00086_n32_α:
 jmp qword ptr [rbp + 992]
 xchain00086_n32_β:
 jmp xchain00086_n36_α
# IR_LIT_STRING
 xchain00086_n33_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00086_n37_α
 xchain00086_n33_β:
 jmp proc_gedfnf_ω
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "/"
 xchain00086_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call str_concat_d@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00086_n38_α
 xchain00086_n34_β:
 jmp xchain00086_n15_α
 xchain00086_n35_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
  .section .rodata
  .Lcall00061_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00061_pname]
 mov esi, 2
 lea rdx, [rbp + 256]
 call rt_proc_call_gen_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00086_n20_α
 jmp xchain00086_n39_α
xchain00086_n35_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 256]
 call rt_proc_resume_frame_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00086_n20_α
 jmp xchain00086_n39_α
# IR_LIT_CHARSET
 xchain00086_n36_α:
 mov qword ptr [rbp + 928], 1
 mov dword ptr [rbp + 932], -1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain00086_n40_α
 xchain00086_n36_β:
 jmp xchain00086_n48_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "/"
 xchain00086_n37_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 100
 je .Lx00101_0
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 6
 jne .Lx00101_2
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00101_2
.Lx00101_1:
 mov rax, qword ptr [rbp + 1048]
 mov rcx, qword ptr [rbp + 1112]
 cmp rax, rcx
 jne proc_gedfnf_ω
 mov rcx, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1008], rcx
 mov rcx, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1016], rcx
 jmp xchain00086_n41_α
.Lx00101_0:
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 9
 lea r9, [rbp + 1008]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00101_1
 cmp eax, 1
 je proc_gedfnf_ω
 jmp xchain00086_n41_α
.Lx00101_2:
 mov rdi, qword ptr [rbp + 1040]
 mov rsi, qword ptr [rbp + 1048]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedfnf_ω
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00086_n41_α
 xchain00086_n37_β:
 jmp proc_gedfnf_ω
# IR_VAR
 xchain00086_n38_α:
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 488], rax
 jmp xchain00086_n42_α
 xchain00086_n38_β:
 jmp xchain00086_n15_α
 xchain00086_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00086_n43_α
 xchain00086_n39_β:
 jmp xchain00086_n20_α
# IR_SCAN_UPTO
 xchain00086_n40_α:
 mov qword ptr [rbp + 912], r14
.Lx00102_0:
 mov rax, qword ptr [rbp + 912]
 cmp rax, r15
 jge xchain00086_n48_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00102_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00102_1
 mov qword ptr [rbp + 896], 6
 add rax, 1
 mov qword ptr [rbp + 904], rax
 jmp xchain00086_n44_α
.Lx00102_1:
 inc qword ptr [rbp + 912]
 jmp .Lx00102_0
 xchain00086_n40_β:
 inc qword ptr [rbp + 912]
 jmp .Lx00102_0
.Lx00102_2:
 .quad .Lx00102_2_s
.Lx00102_2_s:
 .string "/"
# IR_RETURN
 xchain00086_n41_α:
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
 xchain00086_n42_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 384]
 mov rsi, qword ptr [rbp + 392]
 mov rdx, qword ptr [rbp + 1504]
 mov rcx, qword ptr [rbp + 1512]
 call str_concat_d@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00086_n45_α
 xchain00086_n42_β:
 jmp xchain00086_n15_α
 xchain00086_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00086_n46_α
 xchain00086_n43_β:
 jmp xchain00086_n20_α
# IR_MOVE_LABEL
 xchain00086_n44_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
 lea rax, [rip + xchain00086_n48_α]
 mov qword ptr [rbp + 848], rax
 jmp xchain00086_n47_α
 xchain00086_n44_β:
 jmp xchain00086_n55_α
 xchain00086_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain00086_n50_α
 xchain00086_n45_β:
 jmp xchain00086_n15_α
 xchain00086_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00086_n20_α
 xchain00086_n46_β:
 jmp xchain00086_n20_α
# IR_SCAN_TAB
 xchain00086_n47_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 840]
 cmp rax, 1
 jge .Lx00103_0
 add rax, r15
 add rax, 1
.Lx00103_0:
 cmp rax, 1
 jge .Lx00103_239
 add rsp, 16
 jmp xchain00086_n55_α
.Lx00103_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00103_240
 add rsp, 16
 jmp xchain00086_n55_α
.Lx00103_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00086_n51_α
 xchain00086_n47_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00086_n55_α
# IR_LIT_INTEGER
 xchain00086_n48_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00086_n53_α
 xchain00086_n48_β:
 jmp xchain00086_n55_α
.Lx00104_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00086_n49_α:
 jmp qword ptr [rbp + 848]
 xchain00086_n49_β:
 jmp xchain00086_n55_α
# IR_MOVE_LABEL
 xchain00086_n50_α:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
 lea rax, [rip + xchain00086_n15_α]
 mov qword ptr [rbp + 320], rax
 jmp xchain00086_n15_α
 xchain00086_n50_β:
 jmp xchain00086_n15_α
 xchain00086_n51_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain00086_n54_α
 xchain00086_n51_β:
 jmp xchain00086_n55_α
 xchain00086_n52_α:
 jmp xchain00086_n55_α
xchain00086_n52_β:
 jmp xchain00086_n55_α
# IR_MOVE_LABEL
 xchain00086_n53_α:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 lea rax, [rip + xchain00086_n52_α]
 mov qword ptr [rbp + 848], rax
 jmp xchain00086_n47_α
 xchain00086_n53_β:
 jmp xchain00086_n55_α
 xchain00086_n54_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 776], rax
 jmp xchain00086_n56_α
xchain00086_n54_β:
 jmp xchain00086_n55_α
# IR_GEN_SCAN
 xchain00086_n55_α:
 lea rdi, [rbp + 704]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 704]
 mov r14, qword ptr [rbp + 712]
 mov r15, qword ptr [rbp + 720]
 jmp xchain00086_n8_α
 xchain00086_n55_β:
 jmp xchain00086_n8_α
# IR_GEN_SCAN
 xchain00086_n56_α:
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 744], rax
 lea rdi, [rbp + 704]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 704]
 mov r14, qword ptr [rbp + 712]
 mov r15, qword ptr [rbp + 720]
 jmp xchain00086_n8_α
 xchain00086_n56_β:
 jmp xchain00086_n8_α
proc_gedfnf_res:
add rsp, 8
pop rbp
proc_gedfnf_β:
jmp proc_gedfnf_ω
proc_gedfnf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1528]
lea rsp, [rbp + 1552]
mov rbp, [rbp + 1544]
jmp rax
proc_gedfnf_ω:
mov rax, [rbp + 1536]
lea rsp, [rbp + 1552]
mov rbp, [rbp + 1544]
jmp rax
  .globl proc_gedlnf_α
proc_gedlnf_α:
#=======================================================================================================================
    .global proc_gedlnf_α
    .global proc_gedlnf_β
    .global proc_gedlnf_γ
    .global proc_gedlnf_ω
  sub rsp, 1344
  mov [rsp + 1320], rcx
  mov [rsp + 1328], rdx
  mov [rsp + 1336], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1312
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1256], rsp
  mov rdi, rsp
  mov esi, 1312
  call rt_jmp_frame_lexprep@PLT
proc_gedlnf_α_body:
# IR_VAR
 xchain00105_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00105_n1_α
 xchain00105_n0_β:
 jmp proc_gedlnf_ω
# IR_LIT_STRING
 xchain00105_n1_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain00105_n2_α
 xchain00105_n1_β:
 jmp proc_gedlnf_ω
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string "NAME"
 xchain00105_n2_α:
  .section .rodata
  .Lcall00107_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 1184]
 mov rdx, qword ptr [rbp + 1192]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00107_pname]
 mov esi, 2
 lea rdx, [rbp + 1200]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00105_n3_α
xchain00105_n2_β:
 lea rdi, [rbp + 1200]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00105_n3_α
# IR_MOVE_LABEL
 xchain00105_n3_α:
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
 lea rax, [rip + xchain00105_n2_β]
 mov qword ptr [rbp + 1136], rax
 jmp xchain00105_n4_α
 xchain00105_n3_β:
 jmp xchain00105_n6_α
 xchain00105_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00105_n6_α
 xchain00105_n4_β:
 jmp xchain00105_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00105_n5_α:
 jmp qword ptr [rbp + 1136]
 xchain00105_n5_β:
 jmp xchain00105_n6_α
# IR_VAR
 xchain00105_n6_α:
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00105_n7_α
 xchain00105_n6_β:
 jmp xchain00105_n8_α
# IR_GEN_SCAN
 xchain00105_n7_α:
 mov rdi, qword ptr [rbp + 1072]
 mov rsi, qword ptr [rbp + 1080]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00105_n9_α
 xchain00105_n7_β:
 jmp xchain00105_n8_α
# IR_VAR
 xchain00105_n8_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 392], rax
 jmp xchain00105_n10_α
 xchain00105_n8_β:
 jmp xchain00105_n11_α
# IR_LIT_CHARSET
 xchain00105_n9_α:
 mov qword ptr [rbp + 1040], 1
 mov dword ptr [rbp + 1044], -1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00105_n12_α
 xchain00105_n9_β:
 jmp xchain00105_n21_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "/"
# IR_LIT_STRING
 xchain00105_n10_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00105_n13_α
 xchain00105_n10_β:
 jmp xchain00105_n11_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string ", "
# IR_VAR
 xchain00105_n11_α:
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 120], rax
 jmp xchain00105_n14_α
 xchain00105_n11_β:
 jmp xchain00105_n15_α
# IR_SCAN_UPTO
 xchain00105_n12_α:
 mov qword ptr [rbp + 1024], r14
.Lx00110_0:
 mov rax, qword ptr [rbp + 1024]
 cmp rax, r15
 jge xchain00105_n21_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00110_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00110_1
 mov qword ptr [rbp + 1008], 6
 add rax, 1
 mov qword ptr [rbp + 1016], rax
 jmp xchain00105_n16_α
.Lx00110_1:
 inc qword ptr [rbp + 1024]
 jmp .Lx00110_0
 xchain00105_n12_β:
 inc qword ptr [rbp + 1024]
 jmp .Lx00110_0
.Lx00110_2:
 .quad .Lx00110_2_s
.Lx00110_2_s:
 .string "/"
 xchain00105_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 call str_concat_d@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00105_n17_α
 xchain00105_n13_β:
 jmp xchain00105_n11_α
# IR_LIT_STRING
 xchain00105_n14_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00105_n18_α
 xchain00105_n14_β:
 jmp xchain00105_n15_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string " "
# IR_VAR
 xchain00105_n15_α:
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 40], rax
 jmp xchain00105_n19_α
 xchain00105_n15_β:
 jmp proc_gedlnf_ω
# IR_SCAN_TAB
 xchain00105_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1016]
 cmp rax, 1
 jge .Lx00112_0
 add rax, r15
 add rax, 1
.Lx00112_0:
 cmp rax, 1
 jge .Lx00112_239
 add rsp, 16
 jmp xchain00105_n21_α
.Lx00112_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00112_240
 add rsp, 16
 jmp xchain00105_n21_α
.Lx00112_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00105_n20_α
 xchain00105_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00105_n21_α
# IR_VAR
 xchain00105_n17_α:
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 456], rax
 jmp xchain00105_n22_α
 xchain00105_n17_β:
 jmp xchain00105_n11_α
# IR_VAR
 xchain00105_n18_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 248], rax
 jmp xchain00105_n23_α
 xchain00105_n18_β:
 jmp xchain00105_n15_α
# IR_RETURN
 xchain00105_n19_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
 xchain00105_n20_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 952], rax
  .section .rodata
  .Lrkfn549: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn549]
 lea rsi, [rbp + 944]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain00105_n21_α
 jmp xchain00105_n24_α
 xchain00105_n20_β:
 jmp xchain00105_n21_α
# IR_LIT_INTEGER
 xchain00105_n21_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00105_n25_α
 xchain00105_n21_β:
 jmp proc_gedlnf_ω
.Lx00113_0:
 .quad 0
 xchain00105_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 1296]
 mov rcx, qword ptr [rbp + 1304]
 call str_concat_d@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain00105_n26_α
 xchain00105_n22_β:
 jmp xchain00105_n11_α
# IR_LIT_STRING
 xchain00105_n23_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00105_n27_α
 xchain00105_n23_β:
 jmp xchain00105_n15_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "TITL"
# IR_MOVE_LABEL
 xchain00105_n24_α:
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 776], rax
 lea rax, [rip + xchain00105_n21_α]
 mov qword ptr [rbp + 784], rax
 jmp xchain00105_n28_α
 xchain00105_n24_β:
 jmp xchain00105_n32_α
# IR_SCAN_TAB
 xchain00105_n25_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00115_0
 add rax, r15
 add rax, 1
.Lx00115_0:
 cmp rax, 1
 jge .Lx00115_239
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00115_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00115_240
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00115_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00105_n30_α
 xchain00105_n25_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedlnf_ω
 xchain00105_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00105_n11_α
 xchain00105_n26_β:
 jmp xchain00105_n11_α
 xchain00105_n27_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
  .section .rodata
  .Lcall00073_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00073_pname]
 mov esi, 2
 lea rdx, [rbp + 256]
 call rt_proc_call_gen_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00105_n15_α
 jmp xchain00105_n31_α
xchain00105_n27_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 256]
 call rt_proc_resume_frame_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00105_n15_α
 jmp xchain00105_n31_α
 xchain00105_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00105_n32_α
 xchain00105_n28_β:
 jmp xchain00105_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00105_n29_α:
 jmp qword ptr [rbp + 784]
 xchain00105_n29_β:
 jmp xchain00105_n32_α
# IR_LIT_STRING
 xchain00105_n30_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain00105_n33_α
 xchain00105_n30_β:
 jmp proc_gedlnf_ω
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "/"
 xchain00105_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00105_n34_α
 xchain00105_n31_β:
 jmp xchain00105_n15_α
# IR_LIT_CHARSET
 xchain00105_n32_α:
 mov qword ptr [rbp + 720], 1
 mov dword ptr [rbp + 724], -1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00105_n35_α
 xchain00105_n32_β:
 jmp xchain00105_n40_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "/"
 xchain00105_n33_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 832]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [rbp + 896]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [rbp + 832]
 cmp eax, 6
 jne .Lx00118_2
 mov eax, dword ptr [rbp + 896]
 cmp eax, 6
 jne .Lx00118_2
.Lx00118_1:
 mov rax, qword ptr [rbp + 840]
 mov rcx, qword ptr [rbp + 904]
 cmp rax, rcx
 jne proc_gedlnf_ω
 mov rcx, qword ptr [rbp + 896]
 mov qword ptr [rbp + 800], rcx
 mov rcx, qword ptr [rbp + 904]
 mov qword ptr [rbp + 808], rcx
 jmp xchain00105_n36_α
.Lx00118_0:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 9
 lea r9, [rbp + 800]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00118_1
 cmp eax, 1
 je proc_gedlnf_ω
 jmp xchain00105_n36_α
.Lx00118_2:
 mov rdi, qword ptr [rbp + 832]
 mov rsi, qword ptr [rbp + 840]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedlnf_ω
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 808], rax
 jmp xchain00105_n36_α
 xchain00105_n33_β:
 jmp proc_gedlnf_ω
 xchain00105_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00105_n37_α
 xchain00105_n34_β:
 jmp xchain00105_n15_α
# IR_SCAN_UPTO
 xchain00105_n35_α:
 mov qword ptr [rbp + 704], r14
.Lx00119_0:
 mov rax, qword ptr [rbp + 704]
 cmp rax, r15
 jge xchain00105_n40_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00119_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00119_1
 mov qword ptr [rbp + 688], 6
 add rax, 1
 mov qword ptr [rbp + 696], rax
 jmp xchain00105_n38_α
.Lx00119_1:
 inc qword ptr [rbp + 704]
 jmp .Lx00119_0
 xchain00105_n35_β:
 inc qword ptr [rbp + 704]
 jmp .Lx00119_0
.Lx00119_2:
 .quad .Lx00119_2_s
.Lx00119_2_s:
 .string "/"
# IR_RETURN
 xchain00105_n36_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
 xchain00105_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00105_n15_α
 xchain00105_n37_β:
 jmp xchain00105_n15_α
# IR_MOVE_LABEL
 xchain00105_n38_α:
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
 lea rax, [rip + xchain00105_n40_α]
 mov qword ptr [rbp + 640], rax
 jmp xchain00105_n39_α
 xchain00105_n38_β:
 jmp xchain00105_n46_α
# IR_SCAN_TAB
 xchain00105_n39_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 632]
 cmp rax, 1
 jge .Lx00120_0
 add rax, r15
 add rax, 1
.Lx00120_0:
 cmp rax, 1
 jge .Lx00120_239
 add rsp, 16
 jmp xchain00105_n46_α
.Lx00120_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00120_240
 add rsp, 16
 jmp xchain00105_n46_α
.Lx00120_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00105_n42_α
 xchain00105_n39_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00105_n46_α
# IR_LIT_INTEGER
 xchain00105_n40_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00105_n44_α
 xchain00105_n40_β:
 jmp xchain00105_n46_α
.Lx00121_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00105_n41_α:
 jmp qword ptr [rbp + 640]
 xchain00105_n41_β:
 jmp xchain00105_n46_α
 xchain00105_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00105_n45_α
 xchain00105_n42_β:
 jmp xchain00105_n46_α
 xchain00105_n43_α:
 jmp xchain00105_n46_α
xchain00105_n43_β:
 jmp xchain00105_n46_α
# IR_MOVE_LABEL
 xchain00105_n44_α:
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
 lea rax, [rip + xchain00105_n43_α]
 mov qword ptr [rbp + 640], rax
 jmp xchain00105_n39_α
 xchain00105_n44_β:
 jmp xchain00105_n46_α
 xchain00105_n45_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 568], rax
 jmp xchain00105_n47_α
xchain00105_n45_β:
 jmp xchain00105_n46_α
# IR_GEN_SCAN
 xchain00105_n46_α:
 lea rdi, [rbp + 496]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 496]
 mov r14, qword ptr [rbp + 504]
 mov r15, qword ptr [rbp + 512]
 jmp xchain00105_n8_α
 xchain00105_n46_β:
 jmp xchain00105_n8_α
# IR_GEN_SCAN
 xchain00105_n47_α:
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
 lea rdi, [rbp + 496]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 496]
 mov r14, qword ptr [rbp + 504]
 mov r15, qword ptr [rbp + 512]
 jmp xchain00105_n8_α
 xchain00105_n47_β:
 jmp xchain00105_n8_α
proc_gedlnf_res:
add rsp, 8
pop rbp
proc_gedlnf_β:
jmp proc_gedlnf_ω
proc_gedlnf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1320]
lea rsp, [rbp + 1344]
mov rbp, [rbp + 1336]
jmp rax
proc_gedlnf_ω:
mov rax, [rbp + 1328]
lea rsp, [rbp + 1344]
mov rbp, [rbp + 1336]
jmp rax
  .globl proc_geddate_α
proc_geddate_α:
#=======================================================================================================================
    .global proc_geddate_α
    .global proc_geddate_β
    .global proc_geddate_γ
    .global proc_geddate_ω
  sub rsp, 4336
  mov [rsp + 4312], rcx
  mov [rsp + 4320], rdx
  mov [rsp + 4328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 4304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 4248], rsp
  mov rdi, rsp
  mov esi, 4304
  call rt_jmp_frame_lexprep@PLT
proc_geddate_α_body:
# IR_VAR_REF
 xchain00122_n0_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain00122_n1_α
 xchain00122_n0_β:
 jmp xchain00122_n3_α
# IR_NULLTEST_VAR
 xchain00122_n1_α:
 mov eax, dword ptr [rbp + 4128]
 cmp eax, 99
 je xchain00122_n3_α
 mov rdi, qword ptr [rbp + 4128]
 mov rsi, qword ptr [rbp + 4136]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00122_n3_α
 cmp eax, 0
 jne xchain00122_n3_α
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4168], rax
 jmp xchain00122_n2_α
 xchain00122_n1_β:
 jmp xchain00122_n3_α
# IR_LIT_INTEGER
 xchain00122_n2_α:
 mov qword ptr [rbp + 4208], 6
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain00122_n4_α
 xchain00122_n2_β:
 jmp xchain00122_n3_α
.Lx00123_0:
 .quad 1
# IR_VAR
 xchain00122_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00122_n5_α
 xchain00122_n3_β:
 jmp proc_geddate_ω
# IR_ASSIGN_VAR
 xchain00122_n4_α:
 mov rdi, qword ptr [rbp + 4160]
 mov rsi, qword ptr [rbp + 4168]
 mov rdx, qword ptr [rbp + 4208]
 mov rcx, qword ptr [rbp + 4216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n3_α
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain00122_n6_α
 xchain00122_n4_β:
 jmp xchain00122_n3_α
# IR_LIT_STRING
 xchain00122_n5_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00122_n7_α
 xchain00122_n5_β:
 jmp proc_geddate_ω
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "DATE"
 xchain00122_n6_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn597: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn597]
 lea rsi, [rbp + 4112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain00122_n9_α
 jmp xchain00122_n8_α
 xchain00122_n6_β:
 jmp xchain00122_n9_α
 xchain00122_n7_α:
  .section .rodata
  .Lcall00125_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 1488]
 mov rdx, qword ptr [rbp + 1496]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00125_pname]
 mov esi, 2
 lea rdx, [rbp + 1504]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00122_n10_α
xchain00122_n7_β:
 lea rdi, [rbp + 1504]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00122_n10_α
# IR_ASSIGN gva
 xchain00122_n8_α:
 mov rax, qword ptr [rbp + 4096]
 mov rdx, qword ptr [rbp + 4104]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00122_n9_α
 xchain00122_n8_β:
 jmp xchain00122_n9_α
# IR_VAR_REF
 xchain00122_n9_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain00122_n11_α
 xchain00122_n9_β:
 jmp xchain00122_n16_α
# IR_LIT_CHARSET
 xchain00122_n10_α:
 mov qword ptr [rbp + 1552], 1
 mov dword ptr [rbp + 1556], -1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00122_n12_α
 xchain00122_n10_β:
 jmp xchain00122_n7_β
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "\t\n "
# IR_LIT_STRING
 xchain00122_n11_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain00122_n13_α
 xchain00122_n11_β:
 jmp xchain00122_n16_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "JAN"
 xchain00122_n12_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1408]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1424]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1432], rax
  .section .rodata
  .Lrkfn605: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn605]
 lea rsi, [rbp + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00122_n14_α
 xchain00122_n12_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00122_n13_α:
 mov rdi, qword ptr [rbp + 3936]
 mov rsi, qword ptr [rbp + 3944]
 mov rdx, qword ptr [rbp + 3968]
 mov rcx, qword ptr [rbp + 3976]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n16_α
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00122_n15_α
 xchain00122_n13_β:
 jmp xchain00122_n16_α
# IR_MOVE_LABEL
 xchain00122_n14_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 lea rax, [rip + xchain00122_n7_β]
 mov qword ptr [rbp + 1376], rax
 jmp xchain00122_n17_α
 xchain00122_n14_β:
 jmp xchain00122_n21_α
# IR_LIT_STRING
 xchain00122_n15_α:
 mov qword ptr [rbp + 4048], 1
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain00122_n19_α
 xchain00122_n15_β:
 jmp xchain00122_n16_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "Jan"
# IR_VAR_REF
 xchain00122_n16_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00122_n20_α
 xchain00122_n16_β:
 jmp xchain00122_n25_α
 xchain00122_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00122_n21_α
 xchain00122_n17_β:
 jmp xchain00122_n21_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00122_n18_α:
 jmp qword ptr [rbp + 1376]
 xchain00122_n18_β:
 jmp xchain00122_n21_α
# IR_ASSIGN_VAR
 xchain00122_n19_α:
 mov rdi, qword ptr [rbp + 4000]
 mov rsi, qword ptr [rbp + 4008]
 mov rdx, qword ptr [rbp + 4048]
 mov rcx, qword ptr [rbp + 4056]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n16_α
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 jmp xchain00122_n16_α
 xchain00122_n19_β:
 jmp xchain00122_n16_α
# IR_LIT_STRING
 xchain00122_n20_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain00122_n22_α
 xchain00122_n20_β:
 jmp xchain00122_n25_α
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "FEB"
# IR_LIT_STRING
 xchain00122_n21_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00122_n23_α
 xchain00122_n21_β:
 jmp xchain00122_n26_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string ""
# IR_SUBSCRIPT x[i] variable
 xchain00122_n22_α:
 mov rdi, qword ptr [rbp + 3792]
 mov rsi, qword ptr [rbp + 3800]
 mov rdx, qword ptr [rbp + 3824]
 mov rcx, qword ptr [rbp + 3832]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n25_α
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain00122_n24_α
 xchain00122_n22_β:
 jmp xchain00122_n25_α
 xchain00122_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain00122_n26_α
 xchain00122_n23_β:
 jmp xchain00122_n26_α
# IR_LIT_STRING
 xchain00122_n24_α:
 mov qword ptr [rbp + 3904], 1
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain00122_n27_α
 xchain00122_n24_β:
 jmp xchain00122_n25_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string "Feb"
# IR_VAR_REF
 xchain00122_n25_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain00122_n28_α
 xchain00122_n25_β:
 jmp xchain00122_n36_α
# IR_VAR
 xchain00122_n26_α:
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00122_n29_α
 xchain00122_n26_β:
 jmp xchain00122_n30_α
# IR_ASSIGN_VAR
 xchain00122_n27_α:
 mov rdi, qword ptr [rbp + 3856]
 mov rsi, qword ptr [rbp + 3864]
 mov rdx, qword ptr [rbp + 3904]
 mov rcx, qword ptr [rbp + 3912]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n25_α
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain00122_n25_α
 xchain00122_n27_β:
 jmp xchain00122_n25_α
# IR_LIT_STRING
 xchain00122_n28_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain00122_n31_α
 xchain00122_n28_β:
 jmp xchain00122_n36_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "MAR"
# IR_GEN_SCAN
 xchain00122_n29_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00122_n32_α
 xchain00122_n29_β:
 jmp xchain00122_n30_α
# IR_VAR
 xchain00122_n30_α:
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 392], rax
 jmp xchain00122_n33_α
 xchain00122_n30_β:
 jmp xchain00122_n34_α
# IR_SUBSCRIPT x[i] variable
 xchain00122_n31_α:
 mov rdi, qword ptr [rbp + 3648]
 mov rsi, qword ptr [rbp + 3656]
 mov rdx, qword ptr [rbp + 3680]
 mov rcx, qword ptr [rbp + 3688]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n36_α
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain00122_n35_α
 xchain00122_n31_β:
 jmp xchain00122_n36_α
# IR_LIT_INTEGER
 xchain00122_n32_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00122_n37_α
 xchain00122_n32_β:
 jmp xchain00122_n43_α
.Lx00133_0:
 .quad 0
# IR_UNOP
 xchain00122_n33_α:
 mov rdi, qword ptr [rbp + 4256]
 mov rsi, qword ptr [rbp + 4264]
 call rt_size_d@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00122_n38_α
 xchain00122_n33_β:
 jmp xchain00122_n34_α
# IR_VAR
 xchain00122_n34_α:
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 264], rax
 jmp xchain00122_n39_α
 xchain00122_n34_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00122_n35_α:
 mov qword ptr [rbp + 3760], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 3768], rax
 jmp xchain00122_n40_α
 xchain00122_n35_β:
 jmp xchain00122_n36_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "Mar"
# IR_VAR_REF
 xchain00122_n36_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain00122_n41_α
 xchain00122_n36_β:
 jmp xchain00122_n51_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00122_n37_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00135_0
 add rax, r15
 add rax, 1
.Lx00135_0:
 cmp rax, 1
 jl xchain00122_n43_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00122_n43_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00122_n43_α
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
 jmp xchain00122_n42_α
 xchain00122_n37_β:
 jmp xchain00122_n43_α
# IR_LIT_INTEGER
 xchain00122_n38_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00122_n44_α
 xchain00122_n38_β:
 jmp xchain00122_n34_α
.Lx00136_0:
 .quad 13
# IR_LIT_INTEGER
 xchain00122_n39_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00122_n45_α
 xchain00122_n39_β:
 jmp proc_geddate_ω
.Lx00137_0:
 .quad 12
# IR_ASSIGN_VAR
 xchain00122_n40_α:
 mov rdi, qword ptr [rbp + 3712]
 mov rsi, qword ptr [rbp + 3720]
 mov rdx, qword ptr [rbp + 3760]
 mov rcx, qword ptr [rbp + 3768]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n36_α
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 jmp xchain00122_n36_α
 xchain00122_n40_β:
 jmp xchain00122_n36_α
# IR_LIT_STRING
 xchain00122_n41_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain00122_n46_α
 xchain00122_n41_β:
 jmp xchain00122_n51_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "APR"
# IR_GEN_SCAN
 xchain00122_n42_α:
 lea rdi, [rbp + 464]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 464]
 mov r14, qword ptr [rbp + 472]
 mov r15, qword ptr [rbp + 480]
 jmp xchain00122_n30_α
 xchain00122_n42_β:
 jmp xchain00122_n30_α
# KEYWORD_null
 xchain00122_n43_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 jmp xchain00122_n47_α
 xchain00122_n43_β:
 jmp xchain00122_n42_α
 xchain00122_n44_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 352]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00139_0
 mov eax, dword ptr [rbp + 352]
 cmp eax, 6
 jne .Lx00139_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00139_2
.Lx00139_1:
 mov rax, qword ptr [rbp + 360]
 mov rcx, qword ptr [rbp + 424]
 cmp rax, rcx
 jle xchain00122_n34_α
 mov rcx, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rcx
 mov rcx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rcx
 jmp xchain00122_n48_α
.Lx00139_0:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 7
 lea r9, [rbp + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00139_1
 cmp eax, 1
 je xchain00122_n34_α
 jmp xchain00122_n48_α
.Lx00139_2:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00122_n34_α
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rax
 jmp xchain00122_n48_α
 xchain00122_n44_β:
 jmp xchain00122_n34_α
 xchain00122_n45_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 216], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+224]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn650: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn650]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00122_n49_α
 xchain00122_n45_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00122_n46_α:
 mov rdi, qword ptr [rbp + 3504]
 mov rsi, qword ptr [rbp + 3512]
 mov rdx, qword ptr [rbp + 3536]
 mov rcx, qword ptr [rbp + 3544]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n51_α
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 jmp xchain00122_n50_α
 xchain00122_n46_β:
 jmp xchain00122_n51_α
# IR_LIT_CHARSET
 xchain00122_n47_α:
 mov qword ptr [rbp + 1232], 1
 mov dword ptr [rbp + 1236], -1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00122_n52_α
 xchain00122_n47_β:
 jmp xchain00122_n59_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "\t\n "
# IR_VAR
 xchain00122_n48_α:
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 104], rax
 jmp xchain00122_n53_α
 xchain00122_n48_β:
 jmp proc_geddate_ω
# IR_RETURN
 xchain00122_n49_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_LIT_STRING
 xchain00122_n50_α:
 mov qword ptr [rbp + 3616], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 3624], rax
 jmp xchain00122_n54_α
 xchain00122_n50_β:
 jmp xchain00122_n51_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "Apr"
# IR_VAR_REF
 xchain00122_n51_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00122_n55_α
 xchain00122_n51_β:
 jmp xchain00122_n62_α
# IR_SCAN_MANY
 xchain00122_n52_α:
 mov eax, r14d
.Lx00142_0:
 cmp eax, r15d
 jge .Lx00142_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00142_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00142_1
 add eax, 1
 jmp .Lx00142_0
.Lx00142_1:
 cmp eax, r14d
 je xchain00122_n59_α
 mov qword ptr [rbp + 1200], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1208], rcx
 jmp xchain00122_n56_α
 xchain00122_n52_β:
 jmp xchain00122_n59_α
.Lx00142_2:
 .quad .Lx00142_2_s
.Lx00142_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00122_n53_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00122_n57_α
 xchain00122_n53_β:
 jmp proc_geddate_ω
.Lx00143_0:
 .quad 2
# IR_ASSIGN_VAR
 xchain00122_n54_α:
 mov rdi, qword ptr [rbp + 3568]
 mov rsi, qword ptr [rbp + 3576]
 mov rdx, qword ptr [rbp + 3616]
 mov rcx, qword ptr [rbp + 3624]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n51_α
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 jmp xchain00122_n51_α
 xchain00122_n54_β:
 jmp xchain00122_n51_α
# IR_LIT_STRING
 xchain00122_n55_α:
 mov qword ptr [rbp + 3392], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 3400], rax
 jmp xchain00122_n58_α
 xchain00122_n55_β:
 jmp xchain00122_n62_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "MAY"
# IR_SCAN_TAB
 xchain00122_n56_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1208]
 cmp rax, 1
 jge .Lx00145_0
 add rax, r15
 add rax, 1
.Lx00145_0:
 cmp rax, 1
 jge .Lx00145_239
 add rsp, 16
 jmp xchain00122_n59_α
.Lx00145_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00145_240
 add rsp, 16
 jmp xchain00122_n59_α
.Lx00145_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00122_n59_α
 xchain00122_n56_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00122_n59_α
# IR_LIT_INTEGER
 xchain00122_n57_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00122_n60_α
 xchain00122_n57_β:
 jmp proc_geddate_ω
.Lx00146_0:
 .quad 0
# IR_SUBSCRIPT x[i] variable
 xchain00122_n58_α:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 3392]
 mov rcx, qword ptr [rbp + 3400]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n62_α
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain00122_n61_α
 xchain00122_n58_β:
 jmp xchain00122_n62_α
# IR_LIT_CHARSET
 xchain00122_n59_α:
 mov qword ptr [rbp + 1136], 1
 mov dword ptr [rbp + 1140], -1
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00122_n63_α
 xchain00122_n59_β:
 jmp xchain00122_n70_α
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "\t\n "
# IR_SUBSCRIPT section
 xchain00122_n60_α:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 128]
 mov rcx, qword ptr [rbp + 136]
 mov r8, qword ptr [rbp + 160]
 mov r9, qword ptr [rbp + 168]
 call subscript_get2@PLT
 cmp eax, 99
 je proc_geddate_ω
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00122_n64_α
 xchain00122_n60_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00122_n61_α:
 mov qword ptr [rbp + 3472], 1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [rbp + 3480], rax
 jmp xchain00122_n65_α
 xchain00122_n61_β:
 jmp xchain00122_n62_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "May"
# IR_VAR_REF
 xchain00122_n62_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00122_n66_α
 xchain00122_n62_β:
 jmp xchain00122_n73_α
# IR_SCAN_UPTO
 xchain00122_n63_α:
 mov qword ptr [rbp + 1120], r14
.Lx00149_0:
 mov rax, qword ptr [rbp + 1120]
 cmp rax, r15
 jge xchain00122_n70_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00149_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00149_1
 mov qword ptr [rbp + 1104], 6
 add rax, 1
 mov qword ptr [rbp + 1112], rax
 jmp xchain00122_n67_α
.Lx00149_1:
 inc qword ptr [rbp + 1120]
 jmp .Lx00149_0
 xchain00122_n63_β:
 inc qword ptr [rbp + 1120]
 jmp .Lx00149_0
.Lx00149_2:
 .quad .Lx00149_2_s
.Lx00149_2_s:
 .string "\t\n "
# IR_RETURN
 xchain00122_n64_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_ASSIGN_VAR
 xchain00122_n65_α:
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 mov rdx, qword ptr [rbp + 3472]
 mov rcx, qword ptr [rbp + 3480]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n62_α
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain00122_n62_α
 xchain00122_n65_β:
 jmp xchain00122_n62_α
# IR_LIT_STRING
 xchain00122_n66_α:
 mov qword ptr [rbp + 3248], 1
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00122_n68_α
 xchain00122_n66_β:
 jmp xchain00122_n73_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "JUN"
# IR_MOVE_LABEL
 xchain00122_n67_α:
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00122_n70_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00122_n69_α
 xchain00122_n67_β:
 jmp xchain00122_n75_α
# IR_SUBSCRIPT x[i] variable
 xchain00122_n68_α:
 mov rdi, qword ptr [rbp + 3216]
 mov rsi, qword ptr [rbp + 3224]
 mov rdx, qword ptr [rbp + 3248]
 mov rcx, qword ptr [rbp + 3256]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n73_α
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain00122_n72_α
 xchain00122_n68_β:
 jmp xchain00122_n73_α
# IR_SCAN_TAB
 xchain00122_n69_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1048]
 cmp rax, 1
 jge .Lx00151_0
 add rax, r15
 add rax, 1
.Lx00151_0:
 cmp rax, 1
 jge .Lx00151_239
 add rsp, 16
 jmp xchain00122_n75_α
.Lx00151_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00151_240
 add rsp, 16
 jmp xchain00122_n75_α
.Lx00151_240:
 mov qword ptr [rsp + 0], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00122_n74_α
 xchain00122_n69_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00122_n75_α
# IR_LIT_INTEGER
 xchain00122_n70_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00122_n76_α
 xchain00122_n70_β:
 jmp xchain00122_n75_α
.Lx00152_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00122_n71_α:
 jmp qword ptr [rbp + 1056]
 xchain00122_n71_β:
 jmp xchain00122_n75_α
# IR_LIT_STRING
 xchain00122_n72_α:
 mov qword ptr [rbp + 3328], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 3336], rax
 jmp xchain00122_n77_α
 xchain00122_n72_β:
 jmp xchain00122_n73_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "Jun"
# IR_VAR_REF
 xchain00122_n73_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00122_n78_α
 xchain00122_n73_β:
 jmp xchain00122_n83_α
 xchain00122_n74_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00122_n75_α
 xchain00122_n74_β:
 jmp xchain00122_n75_α
# IR_VAR
 xchain00122_n75_α:
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 696], rax
 jmp xchain00122_n79_α
 xchain00122_n75_β:
 jmp xchain00122_n32_α
# IR_MOVE_LABEL
 xchain00122_n76_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00122_n75_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00122_n69_α
 xchain00122_n76_β:
 jmp xchain00122_n75_α
# IR_ASSIGN_VAR
 xchain00122_n77_α:
 mov rdi, qword ptr [rbp + 3280]
 mov rsi, qword ptr [rbp + 3288]
 mov rdx, qword ptr [rbp + 3328]
 mov rcx, qword ptr [rbp + 3336]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n73_α
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain00122_n73_α
 xchain00122_n77_β:
 jmp xchain00122_n73_α
# IR_LIT_STRING
 xchain00122_n78_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00122_n80_α
 xchain00122_n78_β:
 jmp xchain00122_n83_α
.Lx00154_0:
 .quad .Lx00154_0_s
.Lx00154_0_s:
 .string "JUL"
# IR_LIT_STRING
 xchain00122_n79_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00122_n81_α
 xchain00122_n79_β:
 jmp xchain00122_n32_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string " "
# IR_SUBSCRIPT x[i] variable
 xchain00122_n80_α:
 mov rdi, qword ptr [rbp + 3072]
 mov rsi, qword ptr [rbp + 3080]
 mov rdx, qword ptr [rbp + 3104]
 mov rcx, qword ptr [rbp + 3112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n83_α
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain00122_n82_α
 xchain00122_n80_β:
 jmp xchain00122_n83_α
# IR_VAR_REF
 xchain00122_n81_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00122_n84_α
 xchain00122_n81_β:
 jmp xchain00122_n88_α
# IR_LIT_STRING
 xchain00122_n82_α:
 mov qword ptr [rbp + 3184], 1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00122_n85_α
 xchain00122_n82_β:
 jmp xchain00122_n83_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "Jul"
# IR_VAR_REF
 xchain00122_n83_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain00122_n86_α
 xchain00122_n83_β:
 jmp xchain00122_n93_α
# IR_VAR
 xchain00122_n84_α:
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 920], rax
 jmp xchain00122_n87_α
 xchain00122_n84_β:
 jmp xchain00122_n88_α
# IR_ASSIGN_VAR
 xchain00122_n85_α:
 mov rdi, qword ptr [rbp + 3136]
 mov rsi, qword ptr [rbp + 3144]
 mov rdx, qword ptr [rbp + 3184]
 mov rcx, qword ptr [rbp + 3192]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n83_α
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain00122_n83_α
 xchain00122_n85_β:
 jmp xchain00122_n83_α
# IR_LIT_STRING
 xchain00122_n86_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain00122_n89_α
 xchain00122_n86_β:
 jmp xchain00122_n93_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string "AUG"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n87_α:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n88_α
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00122_n90_α
 xchain00122_n87_β:
 jmp xchain00122_n88_α
# IR_VAR
 xchain00122_n88_α:
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 824], rax
 jmp xchain00122_n91_α
 xchain00122_n88_β:
 jmp xchain00122_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00122_n89_α:
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n93_α
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain00122_n92_α
 xchain00122_n89_β:
 jmp xchain00122_n93_α
# IR_DEREF variable -> value
 xchain00122_n90_α:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00122_n88_α
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00122_n94_α
 xchain00122_n90_β:
 jmp xchain00122_n88_α
# IR_MOVE_LABEL
 xchain00122_n91_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00122_n32_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00122_n95_α
 xchain00122_n91_β:
 jmp xchain00122_n32_α
# IR_LIT_STRING
 xchain00122_n92_α:
 mov qword ptr [rbp + 3040], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 3048], rax
 jmp xchain00122_n97_α
 xchain00122_n92_β:
 jmp xchain00122_n93_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "Aug"
# IR_VAR_REF
 xchain00122_n93_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00122_n98_α
 xchain00122_n93_β:
 jmp xchain00122_n00029_α
# IR_UNOP
 xchain00122_n94_α:
 mov eax, dword ptr [rbp + 976]
 cmp eax, 99
 je xchain00122_n88_α
 cmp eax, 0
 je xchain00122_n88_α
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 856], rax
 jmp xchain00122_n99_α
 xchain00122_n94_β:
 jmp xchain00122_n88_α
 xchain00122_n95_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 call str_concat_d@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00122_n00024_α
 xchain00122_n95_β:
 jmp xchain00122_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00122_n96_α:
 jmp qword ptr [rbp + 800]
 xchain00122_n96_β:
 jmp xchain00122_n32_α
# IR_ASSIGN_VAR
 xchain00122_n97_α:
 mov rdi, qword ptr [rbp + 2992]
 mov rsi, qword ptr [rbp + 3000]
 mov rdx, qword ptr [rbp + 3040]
 mov rcx, qword ptr [rbp + 3048]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n93_α
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain00122_n93_α
 xchain00122_n97_β:
 jmp xchain00122_n93_α
# IR_LIT_STRING
 xchain00122_n98_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00122_n00025_α
 xchain00122_n98_β:
 jmp xchain00122_n00029_α
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "SEP"
# IR_MOVE_LABEL
 xchain00122_n99_α:
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00122_n88_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00122_n95_α
 xchain00122_n99_β:
 jmp xchain00122_n32_α
 xchain00122_n00024_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4256]
 mov rsi, qword ptr [rbp + 4264]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00122_n00027_α
 xchain00122_n00024_β:
 jmp xchain00122_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00025_α:
 mov rdi, qword ptr [rbp + 2784]
 mov rsi, qword ptr [rbp + 2792]
 mov rdx, qword ptr [rbp + 2816]
 mov rcx, qword ptr [rbp + 2824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00029_α
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain00122_n00028_α
 xchain00122_n00025_β:
 jmp xchain00122_n00029_α
 xchain00122_n00027_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00122_n00030_α
 xchain00122_n00027_β:
 jmp xchain00122_n32_α
# IR_LIT_STRING
 xchain00122_n00028_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00122_n00031_α
 xchain00122_n00028_β:
 jmp xchain00122_n00029_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "Sep"
# IR_VAR_REF
 xchain00122_n00029_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00122_n00032_α
 xchain00122_n00029_β:
 jmp xchain00122_n00035_α
 xchain00122_n00030_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 632], rax
 jmp xchain00122_n32_α
xchain00122_n00030_β:
 jmp xchain00122_n32_α
# IR_ASSIGN_VAR
 xchain00122_n00031_α:
 mov rdi, qword ptr [rbp + 2848]
 mov rsi, qword ptr [rbp + 2856]
 mov rdx, qword ptr [rbp + 2896]
 mov rcx, qword ptr [rbp + 2904]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00029_α
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00122_n00029_α
 xchain00122_n00031_β:
 jmp xchain00122_n00029_α
# IR_LIT_STRING
 xchain00122_n00032_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain00122_n00033_α
 xchain00122_n00032_β:
 jmp xchain00122_n00035_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "OCT"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00033_α:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2672]
 mov rcx, qword ptr [rbp + 2680]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00035_α
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain00122_n00034_α
 xchain00122_n00033_β:
 jmp xchain00122_n00035_α
# IR_LIT_STRING
 xchain00122_n00034_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00122_n00163_α
 xchain00122_n00034_β:
 jmp xchain00122_n00035_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "Oct"
# IR_VAR_REF
 xchain00122_n00035_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00122_n00164_α
 xchain00122_n00035_β:
 jmp xchain00122_n00165_α
# IR_ASSIGN_VAR
 xchain00122_n00163_α:
 mov rdi, qword ptr [rbp + 2704]
 mov rsi, qword ptr [rbp + 2712]
 mov rdx, qword ptr [rbp + 2752]
 mov rcx, qword ptr [rbp + 2760]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00035_α
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain00122_n00035_α
 xchain00122_n00163_β:
 jmp xchain00122_n00035_α
# IR_LIT_STRING
 xchain00122_n00164_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain00122_n00001_α
 xchain00122_n00164_β:
 jmp xchain00122_n00165_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "NOV"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00001_α:
 mov rdi, qword ptr [rbp + 2496]
 mov rsi, qword ptr [rbp + 2504]
 mov rdx, qword ptr [rbp + 2528]
 mov rcx, qword ptr [rbp + 2536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00165_α
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain00122_n00167_α
 xchain00122_n00001_β:
 jmp xchain00122_n00165_α
# IR_LIT_STRING
 xchain00122_n00167_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00122_n00169_α
 xchain00122_n00167_β:
 jmp xchain00122_n00165_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "Nov"
# IR_VAR_REF
 xchain00122_n00165_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00122_n00170_α
 xchain00122_n00165_β:
 jmp xchain00122_n00171_α
# IR_ASSIGN_VAR
 xchain00122_n00169_α:
 mov rdi, qword ptr [rbp + 2560]
 mov rsi, qword ptr [rbp + 2568]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00165_α
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain00122_n00165_α
 xchain00122_n00169_β:
 jmp xchain00122_n00165_α
# IR_LIT_STRING
 xchain00122_n00170_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain00122_n00173_α
 xchain00122_n00170_β:
 jmp xchain00122_n00171_α
.Lx00172_0:
 .quad .Lx00172_0_s
.Lx00172_0_s:
 .string "DEC"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00173_α:
 mov rdi, qword ptr [rbp + 2352]
 mov rsi, qword ptr [rbp + 2360]
 mov rdx, qword ptr [rbp + 2384]
 mov rcx, qword ptr [rbp + 2392]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00171_α
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain00122_n00174_α
 xchain00122_n00173_β:
 jmp xchain00122_n00171_α
# IR_LIT_STRING
 xchain00122_n00174_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00122_n00176_α
 xchain00122_n00174_β:
 jmp xchain00122_n00171_α
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "Dec"
# IR_VAR_REF
 xchain00122_n00171_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00122_n00177_α
 xchain00122_n00171_β:
 jmp xchain00122_n00178_α
# IR_ASSIGN_VAR
 xchain00122_n00176_α:
 mov rdi, qword ptr [rbp + 2416]
 mov rsi, qword ptr [rbp + 2424]
 mov rdx, qword ptr [rbp + 2464]
 mov rcx, qword ptr [rbp + 2472]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00171_α
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain00122_n00171_α
 xchain00122_n00176_β:
 jmp xchain00122_n00171_α
# IR_LIT_STRING
 xchain00122_n00177_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain00122_n00180_α
 xchain00122_n00177_β:
 jmp xchain00122_n00178_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "ABT"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00180_α:
 mov rdi, qword ptr [rbp + 2208]
 mov rsi, qword ptr [rbp + 2216]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00178_α
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain00122_n00181_α
 xchain00122_n00180_β:
 jmp xchain00122_n00178_α
# IR_LIT_STRING
 xchain00122_n00181_α:
 mov qword ptr [rbp + 2320], 1
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain00122_n00183_α
 xchain00122_n00181_β:
 jmp xchain00122_n00178_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "abt"
# IR_VAR_REF
 xchain00122_n00178_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain00122_n00184_α
 xchain00122_n00178_β:
 jmp xchain00122_n00185_α
# IR_ASSIGN_VAR
 xchain00122_n00183_α:
 mov rdi, qword ptr [rbp + 2272]
 mov rsi, qword ptr [rbp + 2280]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00178_α
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain00122_n00178_α
 xchain00122_n00183_β:
 jmp xchain00122_n00178_α
# IR_LIT_STRING
 xchain00122_n00184_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain00122_n00187_α
 xchain00122_n00184_β:
 jmp xchain00122_n00185_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "BEF"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00187_α:
 mov rdi, qword ptr [rbp + 2064]
 mov rsi, qword ptr [rbp + 2072]
 mov rdx, qword ptr [rbp + 2096]
 mov rcx, qword ptr [rbp + 2104]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00185_α
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain00122_n00002_α
 xchain00122_n00187_β:
 jmp xchain00122_n00185_α
# IR_LIT_STRING
 xchain00122_n00002_α:
 mov qword ptr [rbp + 2176], 1
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 2184], rax
 jmp xchain00122_n00189_α
 xchain00122_n00002_β:
 jmp xchain00122_n00185_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "bef"
# IR_VAR_REF
 xchain00122_n00185_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00122_n00003_α
 xchain00122_n00185_β:
 jmp xchain00122_n00190_α
# IR_ASSIGN_VAR
 xchain00122_n00189_α:
 mov rdi, qword ptr [rbp + 2128]
 mov rsi, qword ptr [rbp + 2136]
 mov rdx, qword ptr [rbp + 2176]
 mov rcx, qword ptr [rbp + 2184]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00185_α
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain00122_n00185_α
 xchain00122_n00189_β:
 jmp xchain00122_n00185_α
# IR_LIT_STRING
 xchain00122_n00003_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain00122_n00192_α
 xchain00122_n00003_β:
 jmp xchain00122_n00190_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "AFT"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00192_α:
 mov rdi, qword ptr [rbp + 1920]
 mov rsi, qword ptr [rbp + 1928]
 mov rdx, qword ptr [rbp + 1952]
 mov rcx, qword ptr [rbp + 1960]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00190_α
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain00122_n00193_α
 xchain00122_n00192_β:
 jmp xchain00122_n00190_α
# IR_LIT_STRING
 xchain00122_n00193_α:
 mov qword ptr [rbp + 2032], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [rbp + 2040], rax
 jmp xchain00122_n00195_α
 xchain00122_n00193_β:
 jmp xchain00122_n00190_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "aft"
# IR_VAR_REF
 xchain00122_n00190_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00122_n00196_α
 xchain00122_n00190_β:
 jmp xchain00122_n00004_α
# IR_ASSIGN_VAR
 xchain00122_n00195_α:
 mov rdi, qword ptr [rbp + 1984]
 mov rsi, qword ptr [rbp + 1992]
 mov rdx, qword ptr [rbp + 2032]
 mov rcx, qword ptr [rbp + 2040]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00190_α
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain00122_n00190_α
 xchain00122_n00195_β:
 jmp xchain00122_n00190_α
# IR_LIT_STRING
 xchain00122_n00196_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx00197_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00122_n00198_α
 xchain00122_n00196_β:
 jmp xchain00122_n00004_α
.Lx00197_0:
 .quad .Lx00197_0_s
.Lx00197_0_s:
 .string "CAL"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00198_α:
 mov rdi, qword ptr [rbp + 1776]
 mov rsi, qword ptr [rbp + 1784]
 mov rdx, qword ptr [rbp + 1808]
 mov rcx, qword ptr [rbp + 1816]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n00004_α
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain00122_n00199_α
 xchain00122_n00198_β:
 jmp xchain00122_n00004_α
# IR_LIT_STRING
 xchain00122_n00199_α:
 mov qword ptr [rbp + 1888], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain00122_n00201_α
 xchain00122_n00199_β:
 jmp xchain00122_n00004_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "cal"
# IR_VAR_REF
 xchain00122_n00004_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain00122_n00202_α
 xchain00122_n00004_β:
 jmp xchain00122_n3_α
# IR_ASSIGN_VAR
 xchain00122_n00201_α:
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1888]
 mov rcx, qword ptr [rbp + 1896]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n00004_α
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00122_n00004_α
 xchain00122_n00201_β:
 jmp xchain00122_n00004_α
# IR_LIT_STRING
 xchain00122_n00202_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00122_n00204_α
 xchain00122_n00202_β:
 jmp xchain00122_n3_α
.Lx00203_0:
 .quad .Lx00203_0_s
.Lx00203_0_s:
 .string "EST"
# IR_SUBSCRIPT x[i] variable
 xchain00122_n00204_α:
 mov rdi, qword ptr [rbp + 1632]
 mov rsi, qword ptr [rbp + 1640]
 mov rdx, qword ptr [rbp + 1664]
 mov rcx, qword ptr [rbp + 1672]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00122_n3_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain00122_n00205_α
 xchain00122_n00204_β:
 jmp xchain00122_n3_α
# IR_LIT_STRING
 xchain00122_n00205_α:
 mov qword ptr [rbp + 1744], 1
 mov rax, qword ptr [rip + .Lx00206_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00122_n00207_α
 xchain00122_n00205_β:
 jmp xchain00122_n3_α
.Lx00206_0:
 .quad .Lx00206_0_s
.Lx00206_0_s:
 .string "est"
# IR_ASSIGN_VAR
 xchain00122_n00207_α:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1744]
 mov rcx, qword ptr [rbp + 1752]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00122_n3_α
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00122_n00208_α
 xchain00122_n00207_β:
 jmp xchain00122_n3_α
 xchain00122_n00208_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00122_n00005_α
xchain00122_n00208_β:
 jmp xchain00122_n3_α
# IR_MOVE_LABEL
 xchain00122_n00005_α:
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1592], rax
 lea rax, [rip + xchain00122_n3_α]
 mov qword ptr [rbp + 1600], rax
 jmp xchain00122_n3_α
 xchain00122_n00005_β:
 jmp xchain00122_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00122_n00006_α:
 jmp qword ptr [rbp + 1600]
 xchain00122_n00006_β:
 jmp xchain00122_n3_α
proc_geddate_res:
add rsp, 8
pop rbp
proc_geddate_β:
jmp proc_geddate_ω
proc_geddate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 4312]
lea rsp, [rbp + 4336]
mov rbp, [rbp + 4328]
jmp rax
proc_geddate_ω:
mov rax, [rbp + 4320]
lea rsp, [rbp + 4336]
mov rbp, [rbp + 4328]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lclassspec0: .string "person(n,k,r)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lclassspec1: .string "gedcom(tree,id,fam,ind)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec1]
  call record_register@PLT
  .section .rodata
  .Lclassspec2: .string "gednode(level,id,tag,data,lnum,parent,ref,sub)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec2]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "event"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_event_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1200
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "refto"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_refto_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 544
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "sortkey"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_sortkey_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "gedload"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_gedload_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3808
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "gedscan"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_gedscan_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1904
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "gedwalk"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_gedwalk_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 0
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname6: .string "gedsub"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_gedsub_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 928
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname7: .string "gedval"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_gedval_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 0
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname8: .string "gedref"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_gedref_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname9: .string "gedfnf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_gedfnf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1520
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname10: .string "gedlnf"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_gedlnf_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1312
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname11: .string "geddate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_geddate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 4304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "ptab"
  .Lgvan1: .string "gedscan__STATIC__alnum"
  .Lgvan2: .string "gedscan__INITFLAG__0"
  .Lgvan3: .string "geddate__STATIC__ftab"
  .Lgvan4: .string "geddate__INITFLAG__0"
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
  # R12-ERAD FENCE: main(args) stuffing pending under RSP self-alloc
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
  mov qword ptr [rsp + 5976], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_VAR
 xchain00209_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 5912], rax
 jmp xchain00209_n1_α
 xchain00209_n0_β:
 jmp xchain00209_n2_α
# IR_UNOP
 xchain00209_n1_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 jmp xchain00209_n3_α
 xchain00209_n1_β:
 jmp xchain00209_n2_α
# KEYWORD_read
 xchain00209_n2_α:
 mov rdi, qword ptr [rip + .Lx00210_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 5808], rax
 mov qword ptr [rbp + 5816], rdx
 jmp xchain00209_n4_α
 xchain00209_n2_β:
 jmp xchain00209_n8_α
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "&input"
# IR_LIT_INTEGER
 xchain00209_n3_α:
 mov qword ptr [rbp + 5936], 6
 mov rax, qword ptr [rip + .Lx00211_0]
 mov qword ptr [rbp + 5944], rax
 jmp xchain00209_n5_α
 xchain00209_n3_β:
 jmp xchain00209_n2_α
.Lx00211_0:
 .quad 0
 xchain00209_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5808]
 mov rdx, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain00209_n6_α
 xchain00209_n4_β:
 jmp xchain00209_n8_α
 xchain00209_n5_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 5872]
 cmp eax, 100
 je .Lx00212_0
 mov eax, dword ptr [rbp + 5936]
 cmp eax, 100
 je .Lx00212_0
 mov eax, dword ptr [rbp + 5872]
 cmp eax, 6
 jne .Lx00212_2
 mov eax, dword ptr [rbp + 5936]
 cmp eax, 6
 jne .Lx00212_2
.Lx00212_1:
 mov rax, qword ptr [rbp + 5880]
 mov rcx, qword ptr [rbp + 5944]
 cmp rax, rcx
 jle xchain00209_n2_α
 mov rcx, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 5840], rcx
 mov rcx, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 5848], rcx
 jmp xchain00209_n7_α
.Lx00212_0:
 mov rdi, qword ptr [rbp + 5872]
 mov rsi, qword ptr [rbp + 5880]
 mov rdx, qword ptr [rbp + 5936]
 mov rcx, qword ptr [rbp + 5944]
 mov r8d, 7
 lea r9, [rbp + 5840]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00212_1
 cmp eax, 1
 je xchain00209_n2_α
 jmp xchain00209_n7_α
.Lx00212_2:
 mov rdi, qword ptr [rbp + 5872]
 mov rsi, qword ptr [rbp + 5880]
 mov rdx, qword ptr [rbp + 5936]
 mov rcx, qword ptr [rbp + 5944]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00209_n2_α
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 5848], rax
 jmp xchain00209_n7_α
 xchain00209_n5_β:
 jmp xchain00209_n2_α
# IR_MOVE_LABEL
 xchain00209_n6_α:
 mov rax, qword ptr [rbp + 5792]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5800]
 mov qword ptr [rbp + 5352], rax
 lea rax, [rip + xchain00209_n8_α]
 mov qword ptr [rbp + 5360], rax
 jmp xchain00209_n8_α
 xchain00209_n6_β:
 jmp xchain00209_n8_α
# IR_VAR_REF
 xchain00209_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain00209_n10_α
 xchain00209_n7_β:
 jmp xchain00209_n18_α
# IR_VAR
 xchain00209_n8_α:
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 5312], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 5320], rax
 jmp xchain00209_n11_α
 xchain00209_n8_β:
 jmp xchain00209_n12_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00209_n9_α:
 jmp qword ptr [rbp + 5360]
 xchain00209_n9_β:
 jmp xchain00209_n8_α
# IR_LIT_INTEGER
 xchain00209_n10_α:
 mov qword ptr [rbp + 5712], 6
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain00209_n13_α
 xchain00209_n10_β:
 jmp xchain00209_n18_α
.Lx00213_0:
 .quad 1
 xchain00209_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5312]
 mov rdx, qword ptr [rbp + 5320]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00214_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00214_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00214_3]
 lea rdx, [rip + .Lx00214_4]
 jmp rax
.Lx00214_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00214_2
.Lx00214_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00214_2
.Lx00214_1:
 call rt_faildescr@PLT
.Lx00214_2:
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp eax, 99
 je xchain00209_n12_α
 jmp xchain00209_n14_α
 xchain00209_n11_β:
 jmp xchain00209_n12_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "gedload"
# IR_VAR
 xchain00209_n12_α:
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 5216], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 5224], rax
 jmp xchain00209_n15_α
 xchain00209_n12_β:
 jmp xchain00209_n16_α
# IR_SUBSCRIPT x[i] variable
 xchain00209_n13_α:
 mov rdi, qword ptr [rbp + 5680]
 mov rsi, qword ptr [rbp + 5688]
 mov rdx, qword ptr [rbp + 5712]
 mov rcx, qword ptr [rbp + 5720]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00209_n18_α
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
 jmp xchain00209_n17_α
 xchain00209_n13_β:
 jmp xchain00209_n18_α
 xchain00209_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5264]
 mov rdx, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 jmp xchain00209_n12_α
 xchain00209_n14_β:
 jmp xchain00209_n12_α
 xchain00209_n15_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5184]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5192], rax
  .section .rodata
  .Lrkfn808: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn808]
 lea rsi, [rbp + 5184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 cmp eax, 99
 je xchain00209_n16_α
 jmp xchain00209_n16_α
 xchain00209_n15_β:
 jmp xchain00209_n16_α
# IR_MAKE_LIST
 xchain00209_n16_α:
 lea rdi, [rbp + 5168]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 jmp xchain00209_n19_α
 xchain00209_n16_β:
 jmp xchain00209_n22_α
# IR_DEREF variable -> value
 xchain00209_n17_α:
 mov rdi, qword ptr [rbp + 5744]
 mov rsi, qword ptr [rbp + 5752]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n18_α
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 jmp xchain00209_n20_α
 xchain00209_n17_β:
 jmp xchain00209_n18_α
# IR_LIT_STRING
 xchain00209_n18_α:
 mov qword ptr [rbp + 5488], 1
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [rbp + 5496], rax
 jmp xchain00209_n21_α
 xchain00209_n18_β:
 jmp xchain00209_n8_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "can't open "
 xchain00209_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5152]
 mov rdx, qword ptr [rbp + 5160]
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 jmp xchain00209_n22_α
 xchain00209_n19_β:
 jmp xchain00209_n22_α
 xchain00209_n20_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5776] -> [zr+5648]
 mov rax, qword ptr [rbp + 5776]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 5656], rax
  .section .rodata
  .Lrkfn815: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn815]
 lea rsi, [rbp + 5648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je xchain00209_n18_α
 jmp xchain00209_n23_α
 xchain00209_n20_β:
 jmp xchain00209_n18_α
# IR_VAR_REF
 xchain00209_n21_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5520], rax
 mov qword ptr [rbp + 5528], rdx
 jmp xchain00209_n24_α
 xchain00209_n21_β:
 jmp xchain00209_n8_α
 xchain00209_n22_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn819: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn819]
 lea rsi, [rbp + 5120]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 cmp eax, 99
 je xchain00209_n26_α
 jmp xchain00209_n25_α
 xchain00209_n22_β:
 jmp xchain00209_n26_α
# IR_MOVE_LABEL
 xchain00209_n23_α:
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5400], rax
 lea rax, [rip + xchain00209_n18_α]
 mov qword ptr [rbp + 5408], rax
 jmp xchain00209_n27_α
 xchain00209_n23_β:
 jmp xchain00209_n8_α
# IR_LIT_INTEGER
 xchain00209_n24_α:
 mov qword ptr [rbp + 5552], 6
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain00209_n29_α
 xchain00209_n24_β:
 jmp xchain00209_n8_α
.Lx00216_0:
 .quad 1
# IR_ASSIGN gva
 xchain00209_n25_α:
 mov rax, qword ptr [rbp + 5104]
 mov rdx, qword ptr [rbp + 5112]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 jmp xchain00209_n26_α
 xchain00209_n25_β:
 jmp xchain00209_n26_α
# IR_VAR
 xchain00209_n26_α:
 mov rax, qword ptr [rbp + 6080]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 6088]
 mov qword ptr [rbp + 4632], rax
 jmp xchain00209_n30_α
 xchain00209_n26_β:
 jmp xchain00209_n31_α
 xchain00209_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5392]
 mov rdx, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain00209_n32_α
 xchain00209_n27_β:
 jmp xchain00209_n8_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00209_n28_α:
 jmp qword ptr [rbp + 5408]
 xchain00209_n28_β:
 jmp xchain00209_n8_α
# IR_SUBSCRIPT x[i] variable
 xchain00209_n29_α:
 mov rdi, qword ptr [rbp + 5520]
 mov rsi, qword ptr [rbp + 5528]
 mov rdx, qword ptr [rbp + 5552]
 mov rcx, qword ptr [rbp + 5560]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00209_n8_α
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain00209_n33_α
 xchain00209_n29_β:
 jmp xchain00209_n8_α
# IR_FIELD_GET
 xchain00209_n30_α:
 mov rdi, qword ptr [rip + .Lx00217_0]
 mov rsi, qword ptr [rbp + 4624]
 mov rdx, qword ptr [rbp + 4632]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n31_α
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 jmp xchain00209_n34_α
 xchain00209_n30_β:
 jmp xchain00209_n31_α
.Lx00217_0:
 .quad .Lx00217_0_s
.Lx00217_0_s:
 .string "ind"
# IR_VAR
 xchain00209_n31_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 4488], rax
 jmp xchain00209_n35_α
 xchain00209_n31_β:
 jmp xchain00209_n36_α
# IR_MOVE_LABEL
 xchain00209_n32_α:
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5352], rax
 lea rax, [rip + xchain00209_n28_α]
 mov qword ptr [rbp + 5360], rax
 jmp xchain00209_n8_α
 xchain00209_n32_β:
 jmp xchain00209_n8_α
# IR_DEREF variable -> value
 xchain00209_n33_α:
 mov rdi, qword ptr [rbp + 5584]
 mov rsi, qword ptr [rbp + 5592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00209_n8_α
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 jmp xchain00209_n37_α
 xchain00209_n33_β:
 jmp xchain00209_n8_α
# IR_LIST_BANG
 xchain00209_n34_α:
 mov qword ptr [rbp + 4576], 0
.Lx00218_0:
 mov rdi, qword ptr [rbp + 4592]
 mov rsi, qword ptr [rbp + 4600]
 mov rdx, qword ptr [rbp + 4576]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 cmp rax, 99
 je xchain00209_n31_α
 jmp xchain00209_n38_α
 xchain00209_n34_β:
 inc qword ptr [rbp + 4576]
 jmp .Lx00218_0
# IR_LIT_INTEGER
 xchain00209_n35_α:
 mov qword ptr [rbp + 4512], 6
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [rbp + 4520], rax
 jmp xchain00209_n39_α
 xchain00209_n35_β:
 jmp xchain00209_n36_α
.Lx00219_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00209_n36_α:
 mov qword ptr [rbp + 4368], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00209_n40_α
 xchain00209_n36_β:
 jmp xchain00209_n44_α
.Lx00220_0:
 .quad 0
 xchain00209_n37_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5488] -> [zr+5440]
 mov rax, qword ptr [rbp + 5488]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5496]
 mov qword ptr [rbp + 5448], rax
# marshal arg1 = producer-box slot [zr+5616] -> [zr+5456]
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 5464], rax
  .section .rodata
  .Lrkfn841: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn841]
 lea rsi, [rbp + 5440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 cmp eax, 99
 je xchain00209_n8_α
 jmp xchain00209_n41_α
 xchain00209_n37_β:
 jmp xchain00209_n8_α
 xchain00209_n38_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 jmp xchain00209_n42_α
 xchain00209_n38_β:
 jmp xchain00209_n31_α
 xchain00209_n39_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4480] -> [zr+4432]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4432], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4440], rax
# marshal arg1 = producer-box slot [zr+4512] -> [zr+4448]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4456], rax
  .section .rodata
  .Lrkfn844: .string "sortf"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn844]
 lea rsi, [rbp + 4432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 cmp eax, 99
 je xchain00209_n36_α
 jmp xchain00209_n43_α
 xchain00209_n39_β:
 jmp xchain00209_n36_α
 xchain00209_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4368]
 mov rdx, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 jmp xchain00209_n44_α
 xchain00209_n40_β:
 jmp xchain00209_n44_α
# IR_MOVE_LABEL
 xchain00209_n41_α:
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5400], rax
 lea rax, [rip + xchain00209_n8_α]
 mov qword ptr [rbp + 5408], rax
 jmp xchain00209_n27_α
 xchain00209_n41_β:
 jmp xchain00209_n8_α
# IR_VAR
 xchain00209_n42_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 4728], rax
 jmp xchain00209_n45_α
 xchain00209_n42_β:
 jmp xchain00209_n34_β
 xchain00209_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4416]
 mov rdx, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain00209_n36_α
 xchain00209_n43_β:
 jmp xchain00209_n36_α
# IR_VAR
 xchain00209_n44_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 4168], rax
 jmp xchain00209_n46_α
 xchain00209_n44_β:
 jmp xchain00209_n47_α
# IR_VAR_REF
 xchain00209_n45_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain00209_n48_α
 xchain00209_n45_β:
 jmp xchain00209_n34_β
# IR_LIST_BANG
 xchain00209_n46_α:
 mov qword ptr [rbp + 4144], 0
.Lx00221_0:
 mov rdi, qword ptr [rbp + 4160]
 mov rsi, qword ptr [rbp + 4168]
 mov rdx, qword ptr [rbp + 4144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 cmp rax, 99
 je xchain00209_n47_α
 jmp xchain00209_n49_α
 xchain00209_n46_β:
 inc qword ptr [rbp + 4144]
 jmp .Lx00221_0
# IR_VAR
 xchain00209_n47_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 88], rax
 jmp xchain00209_n50_α
 xchain00209_n47_β:
 jmp main_ω
# IR_VAR
 xchain00209_n48_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 4792], rax
 jmp xchain00209_n51_α
 xchain00209_n48_β:
 jmp xchain00209_n34_β
# IR_FIELD_GET lv
 xchain00209_n49_α:
 mov rdi, qword ptr [rip + .Lx00222_0]
 mov rsi, qword ptr [rbp + 4128]
 mov rdx, qword ptr [rbp + 4136]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00209_n47_α
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain00209_n52_α
 xchain00209_n49_β:
 jmp xchain00209_n47_α
.Lx00222_0:
 .quad .Lx00222_0_s
.Lx00222_0_s:
 .string "n"
# IR_LIST_BANG
 xchain00209_n50_α:
 mov qword ptr [rbp + 64], 0
.Lx00223_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 64]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp rax, 99
 je main_ω
 jmp xchain00209_n53_α
 xchain00209_n50_β:
 inc qword ptr [rbp + 64]
 jmp .Lx00223_0
# IR_SUBSCRIPT x[i] variable
 xchain00209_n51_α:
 mov rdi, qword ptr [rbp + 4752]
 mov rsi, qword ptr [rbp + 4760]
 mov rdx, qword ptr [rbp + 4784]
 mov rcx, qword ptr [rbp + 4792]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00209_n34_β
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain00209_n54_α
 xchain00209_n51_β:
 jmp xchain00209_n34_β
# IR_VAR
 xchain00209_n52_α:
 mov rax, qword ptr [rbp + 6064]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 6072]
 mov qword ptr [rbp + 4296], rax
 jmp xchain00209_n55_α
 xchain00209_n52_β:
 jmp xchain00209_n46_β
 xchain00209_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00209_n56_α
 xchain00209_n53_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain00209_n54_α:
 mov qword ptr [rbp + 4944], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [rbp + 4952], rax
 jmp xchain00209_n57_α
 xchain00209_n54_β:
 jmp xchain00209_n34_β
.Lx00224_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00209_n55_α:
 mov qword ptr [rbp + 4320], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 4328], rax
 jmp xchain00209_n58_α
 xchain00209_n55_β:
 jmp xchain00209_n46_β
.Lx00225_0:
 .quad 1
 xchain00209_n56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn871: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn871]
 lea rsi, [rbp + 4080]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 cmp eax, 99
 je xchain00209_n59_α
 jmp xchain00209_n59_α
 xchain00209_n56_β:
 jmp xchain00209_n59_α
# IR_VAR
 xchain00209_n57_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 5032], rax
 jmp xchain00209_n60_α
 xchain00209_n57_β:
 jmp xchain00209_n34_β
# IR_COERCE_NUMERIC
 xchain00209_n58_α:
 mov eax, dword ptr [rbp + 6064]
 cmp eax, 7
 je .Lx00226_1
 cmp eax, 6
 jne .Lx00226_0
 mov eax, dword ptr [rbp + 4320]
 cmp eax, 6
 jne .Lx00226_0
.Lx00226_1:
 mov rax, qword ptr [rbp + 6064]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 6072]
 mov qword ptr [rbp + 4264], rax
 jmp .Lx00226_2
.Lx00226_0:
 lea rdi, [rbp + 6064]
 lea rsi, [rbp + 4320]
 lea rdx, [rbp + 4256]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00226_2:
 jmp xchain00209_n61_α
 xchain00209_n58_β:
 jmp xchain00209_n46_β
# IR_LIT_STRING
 xchain00209_n59_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx00227_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain00209_n62_α
 xchain00209_n59_β:
 jmp xchain00209_n66_α
.Lx00227_0:
 .quad .Lx00227_0_s
.Lx00227_0_s:
 .string "["
 xchain00209_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5024]
 mov rdx, qword ptr [rbp + 5032]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00228_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00228_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00228_3]
 lea rdx, [rip + .Lx00228_4]
 jmp rax
.Lx00228_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00228_2
.Lx00228_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00228_2
.Lx00228_1:
 call rt_faildescr@PLT
.Lx00228_2:
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je xchain00209_n34_β
 jmp xchain00209_n63_α
 xchain00209_n60_β:
 jmp xchain00209_n34_β
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "sortkey"
 xchain00209_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4256]
 cmp eax, 100
 je .Lx00229_0
 mov eax, dword ptr [rbp + 4256]
 cmp eax, 6
 jne .Lx00229_2
.Lx00229_1:
 mov rax, qword ptr [rbp + 4264]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 4224], 6
 mov qword ptr [rbp + 4232], rax
 jmp xchain00209_n64_α
.Lx00229_0:
 mov rdi, qword ptr [rbp + 4256]
 mov rsi, qword ptr [rbp + 4264]
 mov rdx, qword ptr [rbp + 4320]
 mov rcx, qword ptr [rbp + 4328]
 mov r8d, 0
 lea r9, [rbp + 4224]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00229_3
.Lx00229_2:
 mov rdi, qword ptr [rbp + 4256]
 mov rsi, qword ptr [rbp + 4264]
 mov rdx, qword ptr [rbp + 4320]
 mov rcx, qword ptr [rbp + 4328]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00209_n46_β
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
.Lx00229_3:
 jmp xchain00209_n64_α
 xchain00209_n61_β:
 jmp xchain00209_n46_β
# IR_VAR
 xchain00209_n62_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 3888], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 3896], rax
 jmp xchain00209_n65_α
 xchain00209_n62_β:
 jmp xchain00209_n66_α
# IR_VAR
 xchain00209_n63_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 5064], rax
 jmp xchain00209_n67_α
 xchain00209_n63_β:
 jmp xchain00209_n34_β
 xchain00209_n64_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4224]
 mov rdx, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain00209_n68_α
 xchain00209_n64_β:
 jmp xchain00209_n46_β
# IR_FIELD_GET
 xchain00209_n65_α:
 mov rdi, qword ptr [rip + .Lx00230_0]
 mov rsi, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n66_α
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain00209_n69_α
 xchain00209_n65_β:
 jmp xchain00209_n66_α
.Lx00230_0:
 .quad .Lx00230_0_s
.Lx00230_0_s:
 .string "n"
# IR_VAR
 xchain00209_n66_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00209_n70_α
 xchain00209_n66_β:
 jmp xchain00209_n71_α
 xchain00209_n67_α:
# BOX IR_CALL person(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4880]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4888], rax
# marshal arg1 = producer-box slot [zr+4976] -> [zr+4896]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4904], rax
# marshal arg2 = producer-box slot [zr+5056] -> [zr+4912]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 4920], rax
  .section .rodata
  .Lrkfn889: .string "person"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn889]
 lea rsi, [rbp + 4880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 cmp eax, 99
 je xchain00209_n34_β
 jmp xchain00209_n72_α
 xchain00209_n67_β:
 jmp xchain00209_n34_β
# IR_ASSIGN_VAR
 xchain00209_n68_α:
 mov rdi, qword ptr [rbp + 4096]
 mov rsi, qword ptr [rbp + 4104]
 mov rdx, qword ptr [rbp + 4208]
 mov rcx, qword ptr [rbp + 4216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00209_n47_α
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain00209_n46_β
 xchain00209_n68_β:
 jmp xchain00209_n47_α
# IR_LIT_STRING
 xchain00209_n69_α:
 mov qword ptr [rbp + 3920], 1
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 3928], rax
 jmp xchain00209_n73_α
 xchain00209_n69_β:
 jmp xchain00209_n66_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "] "
# IR_FIELD_GET
 xchain00209_n70_α:
 mov rdi, qword ptr [rip + .Lx00232_0]
 mov rsi, qword ptr [rbp + 3664]
 mov rdx, qword ptr [rbp + 3672]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n71_α
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain00209_n74_α
 xchain00209_n70_β:
 jmp xchain00209_n71_α
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00209_n71_α:
 mov qword ptr [rbp + 2992], 1
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain00209_n75_α
 xchain00209_n71_β:
 jmp xchain00209_n80_α
.Lx00233_0:
 .quad .Lx00233_0_s
.Lx00233_0_s:
 .string "b."
# IR_ASSIGN_VAR
 xchain00209_n72_α:
 mov rdi, qword ptr [rbp + 4816]
 mov rsi, qword ptr [rbp + 4824]
 mov rdx, qword ptr [rbp + 4864]
 mov rcx, qword ptr [rbp + 4872]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00209_n34_β
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain00209_n76_α
 xchain00209_n72_β:
 jmp xchain00209_n34_β
# IR_VAR
 xchain00209_n73_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 4040], rax
 jmp xchain00209_n77_α
 xchain00209_n73_β:
 jmp xchain00209_n66_α
# IR_LIT_STRING
 xchain00209_n74_α:
 mov qword ptr [rbp + 3696], 1
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain00209_n78_α
 xchain00209_n74_β:
 jmp xchain00209_n71_α
.Lx00234_0:
 .quad .Lx00234_0_s
.Lx00234_0_s:
 .string "FAMC"
# IR_VAR
 xchain00209_n75_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00209_n79_α
 xchain00209_n75_β:
 jmp xchain00209_n80_α
 xchain00209_n76_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4720] -> [zr+4672]
 mov rax, qword ptr [rbp + 4720]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 4728]
 mov qword ptr [rbp + 4680], rax
# marshal arg1 = producer-box slot [zr+4848] -> [zr+4688]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4696], rax
  .section .rodata
  .Lrkfn901: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn901]
 lea rsi, [rbp + 4672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 cmp eax, 99
 je xchain00209_n34_β
 jmp xchain00209_n34_β
 xchain00209_n76_β:
 jmp xchain00209_n34_β
# IR_FIELD_GET
 xchain00209_n77_α:
 mov rdi, qword ptr [rip + .Lx00235_0]
 mov rsi, qword ptr [rbp + 4032]
 mov rdx, qword ptr [rbp + 4040]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n66_α
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain00209_n81_α
 xchain00209_n77_β:
 jmp xchain00209_n66_α
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "r"
 xchain00209_n78_α:
  .section .rodata
  .Lcall00236_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 3632]
 mov rdx, qword ptr [rbp + 3640]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3696]
 mov rdx, qword ptr [rbp + 3704]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00236_pname]
 mov esi, 2
 lea rdx, [rbp + 3648]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain00209_n71_α
 jmp xchain00209_n82_α
xchain00209_n78_β:
 lea rdi, [rbp + 3648]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 3600], rax
 mov qword ptr [rbp + 3608], rdx
 cmp eax, 99
 je xchain00209_n71_α
 jmp xchain00209_n82_α
# IR_FIELD_GET
 xchain00209_n79_α:
 mov rdi, qword ptr [rip + .Lx00237_0]
 mov rsi, qword ptr [rbp + 3088]
 mov rdx, qword ptr [rbp + 3096]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n80_α
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain00209_n83_α
 xchain00209_n79_β:
 jmp xchain00209_n80_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "r"
# KEYWORD_null
 xchain00209_n80_α:
 mov qword ptr [rbp + 2896], 0
 mov qword ptr [rbp + 2904], 0
 jmp xchain00209_n84_α
 xchain00209_n80_β:
 jmp xchain00209_n88_α
 xchain00209_n81_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4000]
 mov rdx, qword ptr [rbp + 4008]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00238_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00238_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00238_3]
 lea rdx, [rip + .Lx00238_4]
 jmp rax
.Lx00238_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00238_2
.Lx00238_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00238_2
.Lx00238_1:
 call rt_faildescr@PLT
.Lx00238_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain00209_n66_α
 jmp xchain00209_n85_α
 xchain00209_n81_β:
 jmp xchain00209_n66_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "gedlnf"
 xchain00209_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain00209_n86_α
 xchain00209_n82_β:
 jmp xchain00209_n71_α
# IR_LIT_STRING
 xchain00209_n83_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain00209_n87_α
 xchain00209_n83_β:
 jmp xchain00209_n80_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "BIRT"
 xchain00209_n84_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain00209_n88_α
 xchain00209_n84_β:
 jmp xchain00209_n88_α
 xchain00209_n85_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3824] -> [zr+3744]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3752], rax
# marshal arg1 = producer-box slot [zr+3856] -> [zr+3760]
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 3768], rax
# marshal arg2 = producer-box slot [zr+3920] -> [zr+3776]
 mov rax, qword ptr [rbp + 3920]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 3784], rax
# marshal arg3 = producer-box slot [zr+3952] -> [zr+3792]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 3792], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 3800], rax
  .section .rodata
  .Lrkfn912: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn912]
 lea rsi, [rbp + 3744]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 cmp eax, 99
 je xchain00209_n66_α
 jmp xchain00209_n66_α
 xchain00209_n85_β:
 jmp xchain00209_n66_α
# IR_LIT_STRING
 xchain00209_n86_α:
 mov qword ptr [rbp + 3456], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 3464], rax
 jmp xchain00209_n89_α
 xchain00209_n86_β:
 jmp xchain00209_n94_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "father"
 xchain00209_n87_α:
  .section .rodata
  .Lcall00241_pname: .string "gedsub"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 3056]
 mov rdx, qword ptr [rbp + 3064]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00241_pname]
 mov esi, 2
 lea rdx, [rbp + 3072]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain00209_n80_α
 jmp xchain00209_n90_α
xchain00209_n87_β:
 lea rdi, [rbp + 3072]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain00209_n80_α
 jmp xchain00209_n90_α
# IR_VAR
 xchain00209_n88_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 440], rax
 jmp xchain00209_n91_α
 xchain00209_n88_β:
 jmp xchain00209_n92_α
# IR_VAR
 xchain00209_n89_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 3528], rax
 jmp xchain00209_n93_α
 xchain00209_n89_β:
 jmp xchain00209_n94_α
 xchain00209_n90_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00242_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00242_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00242_3]
 lea rdx, [rip + .Lx00242_4]
 jmp rax
.Lx00242_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00242_2
.Lx00242_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00242_2
.Lx00242_1:
 call rt_faildescr@PLT
.Lx00242_2:
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp eax, 99
 je xchain00209_n80_α
 jmp xchain00209_n80_α
 xchain00209_n90_β:
 jmp xchain00209_n80_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00209_n91_α:
 mov rdi, qword ptr [rip + .Lx00243_0]
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n92_α
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00209_n95_α
 xchain00209_n91_β:
 jmp xchain00209_n92_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00209_n92_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00209_n96_α
 xchain00209_n92_β:
 jmp xchain00209_n50_β
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "d."
# IR_LIT_STRING
 xchain00209_n93_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain00209_n97_α
 xchain00209_n93_β:
 jmp xchain00209_n94_α
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "HUSB"
# IR_LIT_STRING
 xchain00209_n94_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain00209_n98_α
 xchain00209_n94_β:
 jmp xchain00209_n71_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "mother"
# IR_LIT_STRING
 xchain00209_n95_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00247_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00209_n99_α
 xchain00209_n95_β:
 jmp xchain00209_n92_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "FAMS"
# IR_VAR
 xchain00209_n96_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 296], rax
 jmp xchain00209_n00024_α
 xchain00209_n96_β:
 jmp xchain00209_n50_β
 xchain00209_n97_α:
  .section .rodata
  .Lcall00248_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 3520]
 mov rdx, qword ptr [rbp + 3528]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3552]
 mov rdx, qword ptr [rbp + 3560]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00248_pname]
 mov esi, 2
 lea rdx, [rbp + 3536]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 cmp eax, 99
 je xchain00209_n94_α
 jmp xchain00209_n00025_α
xchain00209_n97_β:
 lea rdi, [rbp + 3536]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 cmp eax, 99
 je xchain00209_n94_α
 jmp xchain00209_n00025_α
# IR_VAR
 xchain00209_n98_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 3336], rax
 jmp xchain00209_n00027_α
 xchain00209_n98_β:
 jmp xchain00209_n71_α
 xchain00209_n99_α:
  .section .rodata
  .Lcall00249_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00249_pname]
 mov esi, 2
 lea rdx, [rbp + 416]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00209_n92_α
 jmp xchain00209_n00028_α
xchain00209_n99_β:
 lea rdi, [rbp + 416]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain00209_n92_α
 jmp xchain00209_n00028_α
# IR_FIELD_GET
 xchain00209_n00024_α:
 mov rdi, qword ptr [rip + .Lx00250_0]
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n50_β
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00209_n00029_α
 xchain00209_n00024_β:
 jmp xchain00209_n50_β
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "r"
 xchain00209_n00025_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3456]
 mov rdx, qword ptr [rbp + 3464]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3488]
 mov rdx, qword ptr [rbp + 3496]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00251_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00251_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00251_3]
 lea rdx, [rip + .Lx00251_4]
 jmp rax
.Lx00251_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00251_2
.Lx00251_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00251_2
.Lx00251_1:
 call rt_faildescr@PLT
.Lx00251_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00209_n94_α
 jmp xchain00209_n94_α
 xchain00209_n00025_β:
 jmp xchain00209_n94_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00209_n00027_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx00252_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00209_n00030_α
 xchain00209_n00027_β:
 jmp xchain00209_n71_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "WIFE"
 xchain00209_n00028_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00209_n00031_α
 xchain00209_n00028_β:
 jmp xchain00209_n92_α
# IR_LIT_STRING
 xchain00209_n00029_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00209_n00032_α
 xchain00209_n00029_β:
 jmp xchain00209_n50_β
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "DEAT"
 xchain00209_n00030_α:
  .section .rodata
  .Lcall00254_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 3328]
 mov rdx, qword ptr [rbp + 3336]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00254_pname]
 mov esi, 2
 lea rdx, [rbp + 3344]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain00209_n71_α
 jmp xchain00209_n00033_α
xchain00209_n00030_β:
 lea rdi, [rbp + 3344]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain00209_n71_α
 jmp xchain00209_n00033_α
# IR_LIT_STRING
 xchain00209_n00031_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00209_n00034_α
 xchain00209_n00031_β:
 jmp xchain00209_n00001_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "m."
 xchain00209_n00032_α:
  .section .rodata
  .Lcall00256_pname: .string "gedsub"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00256_pname]
 mov esi, 2
 lea rdx, [rbp + 272]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00209_n50_β
 jmp xchain00209_n00035_α
xchain00209_n00032_β:
 lea rdi, [rbp + 272]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00209_n50_β
 jmp xchain00209_n00035_α
 xchain00209_n00033_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3264]
 mov rdx, qword ptr [rbp + 3272]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3296]
 mov rdx, qword ptr [rbp + 3304]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00257_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00257_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00257_3]
 lea rdx, [rip + .Lx00257_4]
 jmp rax
.Lx00257_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00257_2
.Lx00257_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00257_2
.Lx00257_1:
 call rt_faildescr@PLT
.Lx00257_2:
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain00209_n71_α
 jmp xchain00209_n00163_α
 xchain00209_n00033_β:
 jmp xchain00209_n71_α
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "refto"
# IR_VAR
 xchain00209_n00034_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00209_n00164_α
 xchain00209_n00034_β:
 jmp xchain00209_n00001_α
 xchain00209_n00035_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00258_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00258_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00258_3]
 lea rdx, [rip + .Lx00258_4]
 jmp rax
.Lx00258_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00258_2
.Lx00258_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00258_2
.Lx00258_1:
 call rt_faildescr@PLT
.Lx00258_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00209_n50_β
 jmp xchain00209_n00167_α
 xchain00209_n00035_β:
 jmp xchain00209_n50_β
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "event"
 xchain00209_n00163_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00209_n00165_α
xchain00209_n00163_β:
 jmp xchain00209_n71_α
# IR_LIT_STRING
 xchain00209_n00164_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain00209_n00169_α
 xchain00209_n00164_β:
 jmp xchain00209_n00001_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "MARR"
# IR_LIT_STRING
 xchain00209_n00001_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx00260_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain00209_n00170_α
 xchain00209_n00001_β:
 jmp xchain00209_n00178_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "  husb"
 xchain00209_n00167_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 120], rax
 jmp xchain00209_n50_β
xchain00209_n00167_β:
 jmp xchain00209_n50_β
# IR_MOVE_LABEL
 xchain00209_n00165_α:
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3160], rax
 lea rax, [rip + xchain00209_n00030_β]
 mov qword ptr [rbp + 3168], rax
 jmp xchain00209_n71_α
 xchain00209_n00165_β:
 jmp xchain00209_n71_α
 xchain00209_n00169_α:
  .section .rodata
  .Lcall00138_pname: .string "gedsub"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 2816]
 mov rdx, qword ptr [rbp + 2824]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2848]
 mov rdx, qword ptr [rbp + 2856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00138_pname]
 mov esi, 2
 lea rdx, [rbp + 2832]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain00209_n00001_α
 jmp xchain00209_n00174_α
xchain00209_n00169_β:
 lea rdi, [rbp + 2832]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je xchain00209_n00001_α
 jmp xchain00209_n00174_α
# IR_VAR
 xchain00209_n00170_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00209_n00171_α
 xchain00209_n00170_β:
 jmp xchain00209_n00176_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00209_n00173_α:
 jmp qword ptr [rbp + 3168]
 xchain00209_n00173_β:
 jmp xchain00209_n71_α
 xchain00209_n00174_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2752]
 mov rdx, qword ptr [rbp + 2760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2784]
 mov rdx, qword ptr [rbp + 2792]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00261_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00261_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00261_3]
 lea rdx, [rip + .Lx00261_4]
 jmp rax
.Lx00261_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00261_2
.Lx00261_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00261_2
.Lx00261_1:
 call rt_faildescr@PLT
.Lx00261_2:
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain00209_n00001_α
 jmp xchain00209_n00177_α
 xchain00209_n00174_β:
 jmp xchain00209_n00001_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00209_n00171_α:
 mov rdi, qword ptr [rip + .Lx00262_0]
 mov rsi, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n00176_α
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain00209_n00180_α
 xchain00209_n00171_β:
 jmp xchain00209_n00176_α
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "r"
# KEYWORD_null
 xchain00209_n00176_α:
 mov qword ptr [rbp + 2448], 0
 mov qword ptr [rbp + 2456], 0
 jmp xchain00209_n00181_α
 xchain00209_n00176_β:
 jmp xchain00209_n00178_α
 xchain00209_n00177_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2688]
 mov rdx, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain00209_n00001_α
 xchain00209_n00177_β:
 jmp xchain00209_n00001_α
# IR_VAR
 xchain00209_n00180_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00209_n00183_α
 xchain00209_n00180_β:
 jmp xchain00209_n00176_α
 xchain00209_n00181_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2416]
 mov rdx, qword ptr [rbp + 2424]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2448]
 mov rdx, qword ptr [rbp + 2456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00263_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00263_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00263_3]
 lea rdx, [rip + .Lx00263_4]
 jmp rax
.Lx00263_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00263_2
.Lx00263_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00263_2
.Lx00263_1:
 call rt_faildescr@PLT
.Lx00263_2:
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 cmp eax, 99
 je xchain00209_n00178_α
 jmp xchain00209_n00184_α
 xchain00209_n00181_β:
 jmp xchain00209_n00178_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00209_n00178_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00209_n00187_α
 xchain00209_n00178_β:
 jmp xchain00209_n00190_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "  wife"
# IR_LIT_STRING
 xchain00209_n00183_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00209_n00002_α
 xchain00209_n00183_β:
 jmp xchain00209_n00176_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "HUSB"
 xchain00209_n00184_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2352]
 mov rdx, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain00209_n00178_α
 xchain00209_n00184_β:
 jmp xchain00209_n00178_α
# IR_VAR
 xchain00209_n00187_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 2216], rax
 jmp xchain00209_n00185_α
 xchain00209_n00187_β:
 jmp xchain00209_n00189_α
 xchain00209_n00002_α:
  .section .rodata
  .Lcall00266_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2640]
 mov rdx, qword ptr [rbp + 2648]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00266_pname]
 mov esi, 2
 lea rdx, [rbp + 2624]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain00209_n00176_α
 jmp xchain00209_n00003_α
xchain00209_n00002_β:
 lea rdi, [rbp + 2624]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 cmp eax, 99
 je xchain00209_n00176_α
 jmp xchain00209_n00003_α
# IR_FIELD_GET
 xchain00209_n00185_α:
 mov rdi, qword ptr [rip + .Lx00267_0]
 mov rsi, qword ptr [rbp + 2208]
 mov rdx, qword ptr [rbp + 2216]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n00189_α
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00209_n00192_α
 xchain00209_n00185_β:
 jmp xchain00209_n00189_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "r"
# KEYWORD_null
 xchain00209_n00189_α:
 mov qword ptr [rbp + 2112], 0
 mov qword ptr [rbp + 2120], 0
 jmp xchain00209_n00193_α
 xchain00209_n00189_β:
 jmp xchain00209_n00190_α
 xchain00209_n00003_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2512]
 mov rsi, qword ptr [rbp + 2520]
 mov rdx, qword ptr [rbp + 2576]
 mov rcx, qword ptr [rbp + 2584]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00209_n00002_β
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2488], rax
 jmp xchain00209_n00178_α
 xchain00209_n00003_β:
 jmp xchain00209_n00002_β
# IR_VAR
 xchain00209_n00192_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 2280], rax
 jmp xchain00209_n00195_α
 xchain00209_n00192_β:
 jmp xchain00209_n00189_α
 xchain00209_n00193_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2112]
 mov rdx, qword ptr [rbp + 2120]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00268_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00268_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00268_3]
 lea rdx, [rip + .Lx00268_4]
 jmp rax
.Lx00268_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00268_2
.Lx00268_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00268_2
.Lx00268_1:
 call rt_faildescr@PLT
.Lx00268_2:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain00209_n00190_α
 jmp xchain00209_n00196_α
 xchain00209_n00193_β:
 jmp xchain00209_n00190_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "refto"
# IR_VAR
 xchain00209_n00190_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 1976], rax
 jmp xchain00209_n00198_α
 xchain00209_n00190_β:
 jmp xchain00209_n00199_α
# IR_LIT_STRING
 xchain00209_n00195_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain00209_n00004_α
 xchain00209_n00195_β:
 jmp xchain00209_n00189_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "WIFE"
 xchain00209_n00196_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain00209_n00190_α
 xchain00209_n00196_β:
 jmp xchain00209_n00190_α
# IR_UNOP
 xchain00209_n00198_α:
 mov eax, dword ptr [rbp + 6032]
 cmp eax, 99
 je xchain00209_n00199_α
 cmp eax, 0
 je xchain00209_n00199_α
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00209_n00201_α
 xchain00209_n00198_β:
 jmp xchain00209_n00199_α
# IR_VAR
 xchain00209_n00199_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 1704], rax
 jmp xchain00209_n00202_α
 xchain00209_n00199_β:
 jmp xchain00209_n00204_α
 xchain00209_n00004_α:
  .section .rodata
  .Lcall00147_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 2272]
 mov rdx, qword ptr [rbp + 2280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2304]
 mov rdx, qword ptr [rbp + 2312]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00147_pname]
 mov esi, 2
 lea rdx, [rbp + 2288]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain00209_n00189_α
 jmp xchain00209_n00205_α
xchain00209_n00004_β:
 lea rdi, [rbp + 2288]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain00209_n00189_α
 jmp xchain00209_n00205_α
# IR_LIT_STRING
 xchain00209_n00201_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00209_n00207_α
 xchain00209_n00201_β:
 jmp xchain00209_n00199_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "   m."
# IR_FIELD_GET
 xchain00209_n00202_α:
 mov rdi, qword ptr [rip + .Lx00271_0]
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00209_n00204_α
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain00209_n00208_α
 xchain00209_n00202_β:
 jmp xchain00209_n00204_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "r"
# IR_VAR
 xchain00209_n00204_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00209_n00005_α
 xchain00209_n00204_β:
 jmp xchain00209_n00006_α
 xchain00209_n00205_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 mov rdx, qword ptr [rbp + 2240]
 mov rcx, qword ptr [rbp + 2248]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00209_n00004_β
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00209_n00190_α
 xchain00209_n00205_β:
 jmp xchain00209_n00004_β
 xchain00209_n00207_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1872]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1880], rax
  .section .rodata
  .Lrkfn994: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn994]
 lea rsi, [rbp + 1872]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain00209_n00199_α
 jmp xchain00209_n00272_α
 xchain00209_n00207_β:
 jmp xchain00209_n00199_α
# IR_VAR
 xchain00209_n00208_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 1768], rax
 jmp xchain00209_n00007_α
 xchain00209_n00208_β:
 jmp xchain00209_n00204_α
# IR_LIT_STRING
 xchain00209_n00005_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00209_n00274_α
 xchain00209_n00005_β:
 jmp xchain00209_n00006_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "HUSB"
# KEYWORD_null
 xchain00209_n00006_α:
 mov qword ptr [rbp + 1504], 0
 mov qword ptr [rbp + 1512], 0
 jmp xchain00209_n00008_α
 xchain00209_n00006_β:
 jmp xchain00209_n99_β
# IR_MOVE_LABEL
 xchain00209_n00272_α:
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1832], rax
 lea rax, [rip + xchain00209_n00199_α]
 mov qword ptr [rbp + 1840], rax
 jmp xchain00209_n00199_α
 xchain00209_n00272_β:
 jmp xchain00209_n00199_α
# IR_LIT_STRING
 xchain00209_n00007_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx00275_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00209_n00009_α
 xchain00209_n00007_β:
 jmp xchain00209_n00204_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "HUSB"
 xchain00209_n00274_α:
  .section .rodata
  .Lcall00276_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00276_pname]
 mov esi, 2
 lea rdx, [rbp + 1584]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain00209_n00006_α
 jmp xchain00209_n99_β
xchain00209_n00274_β:
 lea rdi, [rbp + 1584]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain00209_n00006_α
 jmp xchain00209_n99_β
# IR_MOVE_LABEL
 xchain00209_n00008_α:
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
 lea rax, [rip + xchain00209_n99_β]
 mov qword ptr [rbp + 1488], rax
 jmp xchain00209_n00277_α
 xchain00209_n00008_β:
 jmp xchain00209_n99_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00209_n00278_α:
 jmp qword ptr [rbp + 1840]
 xchain00209_n00278_β:
 jmp xchain00209_n00199_α
 xchain00209_n00009_α:
  .section .rodata
  .Lcall00151_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00151_pname]
 mov esi, 2
 lea rdx, [rbp + 1776]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain00209_n00204_α
 jmp xchain00209_n00279_α
xchain00209_n00009_β:
 lea rdi, [rbp + 1776]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain00209_n00204_α
 jmp xchain00209_n00279_α
# IR_VAR
 xchain00209_n00277_α:
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 600], rax
 jmp xchain00209_n00280_α
 xchain00209_n00277_β:
 jmp xchain00209_n99_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00209_n00010_α:
 jmp qword ptr [rbp + 1488]
 xchain00209_n00010_β:
 jmp xchain00209_n99_β
 xchain00209_n00279_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1664]
 mov rsi, qword ptr [rbp + 1672]
 mov rdx, qword ptr [rbp + 1728]
 mov rcx, qword ptr [rbp + 1736]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00209_n00009_β
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1640], rax
 jmp xchain00209_n00281_α
 xchain00209_n00279_β:
 jmp xchain00209_n00009_β
# IR_LIT_STRING
 xchain00209_n00280_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain00209_n00283_α
 xchain00209_n00280_β:
 jmp xchain00209_n99_β
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "CHIL"
# IR_MOVE_LABEL
 xchain00209_n00281_α:
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1480], rax
 lea rax, [rip + xchain00209_n00009_β]
 mov qword ptr [rbp + 1488], rax
 jmp xchain00209_n00277_α
 xchain00209_n00281_β:
 jmp xchain00209_n99_β
 xchain00209_n00283_α:
  .section .rodata
  .Lcall00284_pname: .string "gedref"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00284_pname]
 mov esi, 2
 lea rdx, [rbp + 608]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain00209_n99_β
 jmp xchain00209_n00011_α
xchain00209_n00283_β:
 lea rdi, [rbp + 608]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain00209_n99_β
 jmp xchain00209_n00011_α
 xchain00209_n00011_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00209_n00012_α
 xchain00209_n00011_β:
 jmp xchain00209_n99_β
# IR_VAR
 xchain00209_n00012_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 792], rax
 jmp xchain00209_n00285_α
 xchain00209_n00012_β:
 jmp xchain00209_n00286_α
# IR_LIT_STRING
 xchain00209_n00285_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain00209_n00288_α
 xchain00209_n00285_β:
 jmp xchain00209_n00286_α
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "SEX"
# IR_LIT_STRING
 xchain00209_n00286_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx00289_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain00209_n00290_α
 xchain00209_n00286_β:
 jmp xchain00209_n00283_β
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string ""
 xchain00209_n00288_α:
  .section .rodata
  .Lcall00291_pname: .string "gedval"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00291_pname]
 mov esi, 2
 lea rdx, [rbp + 800]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00209_n00286_α
 jmp xchain00209_n00292_α
xchain00209_n00288_β:
 lea rdi, [rbp + 800]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00209_n00286_α
 jmp xchain00209_n00292_α
# IR_MOVE_LABEL
 xchain00209_n00290_α:
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
 lea rax, [rip + xchain00209_n00283_β]
 mov qword ptr [rbp + 704], rax
 jmp xchain00209_n00293_α
 xchain00209_n00290_β:
 jmp xchain00209_n00283_β
# IR_MOVE_LABEL
 xchain00209_n00292_α:
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
 lea rax, [rip + xchain00209_n00288_β]
 mov qword ptr [rbp + 704], rax
 jmp xchain00209_n00293_α
 xchain00209_n00292_β:
 jmp xchain00209_n00283_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00209_n00294_α:
 jmp qword ptr [rbp + 704]
 xchain00209_n00294_β:
 jmp xchain00209_n00283_β
# IR_LIT_STRING
 xchain00209_n00293_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx00295_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00209_n00013_α
 xchain00209_n00293_β:
 jmp xchain00209_n00283_β
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "M"
 xchain00209_n00013_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+1424]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1440]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1448], rax
  .section .rodata
  .Lrkfn1031: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1031]
 lea rsi, [rbp + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain00209_n00296_α
 jmp xchain00209_n00297_α
 xchain00209_n00013_β:
 jmp xchain00209_n00296_α
# IR_LIT_STRING
 xchain00209_n00297_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00209_n00299_α
 xchain00209_n00297_β:
 jmp xchain00209_n00283_β
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string "   son"
# IR_LIT_STRING
 xchain00209_n00296_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain00209_n00014_α
 xchain00209_n00296_β:
 jmp xchain00209_n00283_β
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "F"
# IR_VAR
 xchain00209_n00299_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00209_n00301_α
 xchain00209_n00299_β:
 jmp xchain00209_n00283_β
 xchain00209_n00014_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+1184]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+1200]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn1037: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1037]
 lea rsi, [rbp + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain00209_n00302_α
 jmp xchain00209_n00303_α
 xchain00209_n00014_β:
 jmp xchain00209_n00302_α
 xchain00209_n00301_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1328]
 mov rdx, qword ptr [rbp + 1336]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00304_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00304_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00304_3]
 lea rdx, [rip + .Lx00304_4]
 jmp rax
.Lx00304_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00304_2
.Lx00304_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00304_2
.Lx00304_1:
 call rt_faildescr@PLT
.Lx00304_2:
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain00209_n00283_β
 jmp xchain00209_n00305_α
 xchain00209_n00301_β:
 jmp xchain00209_n00283_β
.Lx00304_0:
 .quad .Lx00304_0_s
.Lx00304_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00209_n00303_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx00306_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00209_n00015_α
 xchain00209_n00303_β:
 jmp xchain00209_n00283_β
.Lx00306_0:
 .quad .Lx00306_0_s
.Lx00306_0_s:
 .string "   dau"
# IR_LIT_STRING
 xchain00209_n00302_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00209_n00308_α
 xchain00209_n00302_β:
 jmp xchain00209_n00283_β
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string " child"
 xchain00209_n00305_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1264]
 mov rdx, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00209_n00309_α
 xchain00209_n00305_β:
 jmp xchain00209_n00283_β
# IR_VAR
 xchain00209_n00015_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00209_n00310_α
 xchain00209_n00015_β:
 jmp xchain00209_n00283_β
# IR_VAR
 xchain00209_n00308_α:
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 952], rax
 jmp xchain00209_n00311_α
 xchain00209_n00308_β:
 jmp xchain00209_n00283_β
# IR_VAR
 xchain00209_n00309_α:
 mov rax, qword ptr [rbp + 6048]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 6056]
 mov qword ptr [rbp + 664], rax
 jmp xchain00209_n00283_β
 xchain00209_n00309_β:
 jmp xchain00209_n00283_β
 xchain00209_n00310_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00312_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00312_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00312_3]
 lea rdx, [rip + .Lx00312_4]
 jmp rax
.Lx00312_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00312_2
.Lx00312_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00312_2
.Lx00312_1:
 call rt_faildescr@PLT
.Lx00312_2:
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain00209_n00283_β
 jmp xchain00209_n00313_α
 xchain00209_n00310_β:
 jmp xchain00209_n00283_β
.Lx00312_0:
 .quad .Lx00312_0_s
.Lx00312_0_s:
 .string "refto"
 xchain00209_n00311_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00314_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00314_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00314_3]
 lea rdx, [rip + .Lx00314_4]
 jmp rax
.Lx00314_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00314_2
.Lx00314_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00314_2
.Lx00314_1:
 call rt_faildescr@PLT
.Lx00314_2:
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00209_n00283_β
 jmp xchain00209_n00315_α
 xchain00209_n00311_β:
 jmp xchain00209_n00283_β
.Lx00314_0:
 .quad .Lx00314_0_s
.Lx00314_0_s:
 .string "refto"
 xchain00209_n00313_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00209_n00309_α
 xchain00209_n00313_β:
 jmp xchain00209_n00283_β
 xchain00209_n00315_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00209_n00309_α
 xchain00209_n00315_β:
 jmp xchain00209_n00283_β
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 5976]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 5976]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
