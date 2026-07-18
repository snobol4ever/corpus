  .intel_syntax noprefix
  .text
  .globl proc_event_α
proc_event_α:
#=======================================================================================================================
    .global proc_event_α
    .global proc_event_β
    .global proc_event_γ
    .global proc_event_ω
  sub rsp, 1280
  mov [rsp + 1256], rcx
  mov [rsp + 1264], rdx
  mov [rsp + 1272], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1248
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1248
  call rt_jmp_frame_lexprep@PLT
proc_event_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [rbp + 1096], rax
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
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 1176], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
 xchain0_n2_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
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
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
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
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 mov rdx, qword ptr [rbp + 1120]
 mov rcx, qword ptr [rbp + 1128]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n3_α
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 984], rax
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n8_α
 xchain0_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n3_α
 xchain0_n6_β:
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n8_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "PLAC"
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n11_α
 xchain0_n9_α:
 mov qword ptr [rbp + 944], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx15_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx15_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx15_3]
 lea rdx, [rip + .Lx15_4]
 jmp rax
.Lx15_3:
 mov qword ptr [rbp + 952], rsp
 mov rax, qword ptr [rbp + 944]
 test rax, rax
 jne .Lx15_5
 mov qword ptr [rbp + 944], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx15_2
.Lx15_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx15_2
.Lx15_4:
 mov rax, qword ptr [rbp + 944]
 test rax, rax
 jne .Lx15_6
 mov qword ptr [rbp + 944], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx15_2
.Lx15_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx15_2
.Lx15_1:
 call rt_faildescr@PLT
.Lx15_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n12_α
 xchain0_n9_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 952]
 jmp qword ptr [rsp]
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "gedval"
# IR_UNOP
 xchain0_n10_α:
 mov eax, dword ptr [rbp + 1232]
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
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain0_n14_α
 xchain0_n11_β:
 jmp xchain0_n18_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
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
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n18_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
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
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
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
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n18_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string " "
# IR_RETURN
 xchain0_n18_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_event_γ
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n18_α
.Lx27_0:
 .quad .Lx27_0_s
.Lx27_0_s:
 .string " "
# IR_VAR
 xchain0_n20_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 664], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n18_α
# IR_UNOP
 xchain0_n22_α:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 99
 je xchain0_n23_α
 cmp eax, 0
 je xchain0_n23_α
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n23_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n18_α
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "            "
# IR_UNOP
 xchain0_n24_α:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 99
 je xchain0_n18_α
 cmp eax, 0
 je xchain0_n18_α
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 1224]
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
  .Lrkfn40: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn40]
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
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n28_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "  "
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n31_α:
 jmp qword ptr [rbp + 64]
 xchain0_n31_β:
 jmp xchain0_n18_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 1240]
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
  .Lrkfn51: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn51]
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
mov rax, [rbp + 1256]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
jmp rax
proc_event_ω:
mov rax, [rbp + 1264]
lea rsp, [rbp + 1280]
mov rbp, [rbp + 1272]
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
 xchain54_n0_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain54_n1_α
 xchain54_n0_β:
 jmp xchain54_n3_α
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "   "
# IR_VAR
 xchain54_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain54_n2_α
 xchain54_n1_β:
 jmp xchain54_n3_α
# IR_LIT_STRING
 xchain54_n2_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain54_n4_α
 xchain54_n2_β:
 jmp xchain54_n3_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string " ["
# IR_RETURN
 xchain54_n3_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_refto_γ
# IR_VAR_REF
 xchain54_n4_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain54_n5_α
 xchain54_n4_β:
 jmp xchain54_n3_α
# IR_VAR
 xchain54_n5_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 344], rax
 jmp xchain54_n6_α
 xchain54_n5_β:
 jmp xchain54_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain54_n6_α:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain54_n3_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain54_n7_α
 xchain54_n6_β:
 jmp xchain54_n3_α
# IR_DEREF variable -> value
 xchain54_n7_α:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain54_n3_α
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain54_n8_α
 xchain54_n7_β:
 jmp xchain54_n3_α
# IR_FIELD_GET
 xchain54_n8_α:
 mov rdi, qword ptr [rip + .Lx66_0]
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain54_n3_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain54_n9_α
 xchain54_n8_β:
 jmp xchain54_n3_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "n"
# IR_LIT_STRING
 xchain54_n9_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain54_n10_α
 xchain54_n9_β:
 jmp xchain54_n3_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "] "
# IR_VAR
 xchain54_n10_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 504], rax
 jmp xchain54_n11_α
 xchain54_n10_β:
 jmp xchain54_n3_α
 xchain54_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx71_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx71_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx71_3]
 lea rdx, [rip + .Lx71_4]
 jmp rax
.Lx71_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx71_2
.Lx71_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx71_2
.Lx71_1:
 call rt_faildescr@PLT
.Lx71_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain54_n3_α
 jmp xchain54_n12_α
 xchain54_n11_β:
 jmp xchain54_n3_α
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "gedfnf"
 xchain54_n12_α:
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
  .Lrkfn73: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn73]
 lea rsi, [rbp + 64]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain54_n3_α
 jmp xchain54_n3_α
 xchain54_n12_β:
 jmp xchain54_n3_α
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
 xchain74_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain74_n1_α
 xchain74_n0_β:
 jmp proc_sortkey_ω
 xchain74_n1_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx78_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx78_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx78_3]
 lea rdx, [rip + .Lx78_4]
 jmp rax
.Lx78_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx78_2
.Lx78_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx78_2
.Lx78_1:
 call rt_faildescr@PLT
.Lx78_2:
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain74_n2_α
 xchain74_n1_β:
 jmp proc_sortkey_ω
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "gedlnf"
 xchain74_n2_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn80: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn80]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain74_n3_α
 xchain74_n2_β:
 jmp proc_sortkey_ω
# IR_RETURN
 xchain74_n3_α:
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
  sub rsp, 3888
  mov [rsp + 3864], rcx
  mov [rsp + 3872], rdx
  mov [rsp + 3880], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3856
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3704], rsp
  mov rdi, rsp
  mov esi, 3856
  call rt_jmp_frame_lexprep@PLT
proc_gedload_α_body:
# IR_LIT_INTEGER
 xchain82_n0_α:
 mov qword ptr [rbp + 3664], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain82_n1_α
 xchain82_n0_β:
 jmp xchain82_n2_α
.Lx83_0:
 .quad 0
 xchain82_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3664]
 mov rdx, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain82_n2_α
 xchain82_n1_β:
 jmp xchain82_n2_α
# IR_LIT_INTEGER
 xchain82_n2_α:
 mov qword ptr [rbp + 3408], 6
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain82_n3_α
 xchain82_n2_β:
 jmp xchain82_n8_α
.Lx85_0:
 .quad 18446744073709551615
# KEYWORD_null
 xchain82_n3_α:
 mov qword ptr [rbp + 3440], 0
 mov qword ptr [rbp + 3448], 0
 jmp xchain82_n4_α
 xchain82_n3_β:
 jmp xchain82_n8_α
# IR_LIT_STRING
 xchain82_n4_α:
 mov qword ptr [rbp + 3472], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 3480], rax
 jmp xchain82_n5_α
 xchain82_n4_β:
 jmp xchain82_n8_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "ROOT"
# IR_LIT_STRING
 xchain82_n5_α:
 mov qword ptr [rbp + 3504], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain82_n6_α
 xchain82_n5_β:
 jmp xchain82_n8_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string ""
# IR_VAR
 xchain82_n6_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3536], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3544], rax
 jmp xchain82_n7_α
 xchain82_n6_β:
 jmp xchain82_n8_α
# KEYWORD_null
 xchain82_n7_α:
 mov qword ptr [rbp + 3568], 0
 mov qword ptr [rbp + 3576], 0
 jmp xchain82_n9_α
 xchain82_n7_β:
 jmp xchain82_n8_α
 xchain82_n8_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn93: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 3200]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain82_n11_α
 jmp xchain82_n10_α
 xchain82_n8_β:
 jmp xchain82_n11_α
# KEYWORD_null
 xchain82_n9_α:
 mov qword ptr [rbp + 3600], 0
 mov qword ptr [rbp + 3608], 0
 jmp xchain82_n12_α
 xchain82_n9_β:
 jmp xchain82_n8_α
 xchain82_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3184]
 mov rdx, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain82_n11_α
 xchain82_n10_β:
 jmp xchain82_n11_α
# IR_MAKE_LIST
 xchain82_n11_α:
 lea rdi, [rbp + 3168]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain82_n13_α
 xchain82_n11_β:
 jmp xchain82_n15_α
# IR_MAKE_LIST
 xchain82_n12_α:
 lea rdi, [rbp + 3648]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain82_n14_α
 xchain82_n12_β:
 jmp xchain82_n8_α
 xchain82_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3152]
 mov rdx, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain82_n15_α
 xchain82_n13_β:
 jmp xchain82_n15_α
 xchain82_n14_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3264]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3272], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3280]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3288], rax
# marshal arg2 = producer-box slot [zr+3472] -> [zr+3296]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3304], rax
# marshal arg3 = producer-box slot [zr+3504] -> [zr+3312]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3320], rax
# marshal arg4 = producer-box slot [zr+3536] -> [zr+3328]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3336], rax
# marshal arg5 = producer-box slot [zr+3568] -> [zr+3344]
 mov rax, qword ptr [rbp + 3568]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3576]
 mov qword ptr [rbp + 3352], rax
# marshal arg6 = producer-box slot [zr+3600] -> [zr+3360]
 mov rax, qword ptr [rbp + 3600]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3608]
 mov qword ptr [rbp + 3368], rax
# marshal arg7 = producer-box slot [zr+3632] -> [zr+3376]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3384], rax
  .section .rodata
  .Lrkfn102: .string "gednode"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn102]
 lea rsi, [rbp + 3264]
 mov edx, 8
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain82_n8_α
 jmp xchain82_n16_α
 xchain82_n14_β:
 jmp xchain82_n8_α
# IR_MAKE_LIST
 xchain82_n15_α:
 lea rdi, [rbp + 3136]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain82_n17_α
 xchain82_n15_β:
 jmp xchain82_n19_α
 xchain82_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain82_n18_α
 xchain82_n16_β:
 jmp xchain82_n8_α
 xchain82_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain82_n19_α
 xchain82_n17_β:
 jmp xchain82_n19_α
 xchain82_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3232]
 mov rdx, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain82_n8_α
 xchain82_n18_β:
 jmp xchain82_n8_α
# IR_VAR
 xchain82_n19_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 728], rax
 jmp xchain82_n20_α
 xchain82_n19_β:
 jmp xchain82_n21_α
 xchain82_n20_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn111: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn111]
 lea rsi, [rbp + 688]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain82_n21_α
 jmp xchain82_n22_α
 xchain82_n20_β:
 jmp xchain82_n21_α
# IR_VAR
 xchain82_n21_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 344], rax
 jmp xchain82_n23_α
 xchain82_n21_β:
 jmp xchain82_n24_α
# IR_LIT_CHARSET
 xchain82_n22_α:
 mov qword ptr [rbp + 752], 1
 mov dword ptr [rbp + 756], -1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain82_n25_α
 xchain82_n22_β:
 jmp xchain82_n21_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "\t\n "
 xchain82_n23_α:
 mov qword ptr [rbp + 304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00002_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00002_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00002_3]
 lea rdx, [rip + .Lx00002_4]
 jmp rax
.Lx00002_3:
 mov qword ptr [rbp + 312], rsp
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx00002_5
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00002_2
.Lx00002_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00002_2
.Lx00002_4:
 mov rax, qword ptr [rbp + 304]
 test rax, rax
 jne .Lx00002_6
 mov qword ptr [rbp + 304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00002_2
.Lx00002_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00002_2
.Lx00002_1:
 call rt_faildescr@PLT
.Lx00002_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain82_n24_α
 jmp xchain82_n26_α
 xchain82_n23_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "gedwalk"
# IR_VAR
 xchain82_n24_α:
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 136], rax
 jmp xchain82_n27_α
 xchain82_n24_β:
 jmp proc_gedload_ω
 xchain82_n25_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+640]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn120: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn120]
 lea rsi, [rbp + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain82_n21_α
 jmp xchain82_n28_α
 xchain82_n25_β:
 jmp xchain82_n21_α
 xchain82_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain82_n29_α
 xchain82_n26_β:
 jmp xchain82_n24_α
# IR_VAR
 xchain82_n27_α:
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 168], rax
 jmp xchain82_n30_α
 xchain82_n27_β:
 jmp proc_gedload_ω
 xchain82_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain82_n31_α
 xchain82_n28_β:
 jmp xchain82_n21_α
# IR_VAR
 xchain82_n29_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 408], rax
 jmp xchain82_n32_α
 xchain82_n29_β:
 jmp xchain82_n23_β
# IR_VAR
 xchain82_n30_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 200], rax
 jmp xchain82_n33_α
 xchain82_n30_β:
 jmp proc_gedload_ω
# IR_VAR
 xchain82_n31_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3048], rax
 jmp xchain82_n34_α
 xchain82_n31_β:
 jmp xchain82_n35_α
# IR_FIELD_GET lv
 xchain82_n32_α:
 mov rdi, qword ptr [rip + .Lx00003_0]
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain82_n23_β
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain82_n36_α
 xchain82_n32_β:
 jmp xchain82_n23_β
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "ref"
# IR_VAR
 xchain82_n33_α:
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 232], rax
 jmp xchain82_n37_α
 xchain82_n33_β:
 jmp proc_gedload_ω
# IR_LIT_INTEGER
 xchain82_n34_α:
 mov qword ptr [rbp + 3072], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain82_n38_α
 xchain82_n34_β:
 jmp xchain82_n35_α
.Lx00004_0:
 .quad 1
# IR_VAR
 xchain82_n35_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2904], rax
 jmp xchain82_n39_α
 xchain82_n35_β:
 jmp xchain82_n40_α
# IR_VAR_REF
 xchain82_n36_α:
 lea rdi, [rbp + 3728]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain82_n41_α
 xchain82_n36_β:
 jmp xchain82_n23_β
 xchain82_n37_α:
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
  .Lrkfn140: .string "gedcom"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn140]
 lea rsi, [rbp + 48]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_gedload_ω
 jmp xchain82_n42_α
 xchain82_n37_β:
 jmp proc_gedload_ω
# IR_COERCE_NUMERIC
 xchain82_n38_α:
 mov eax, dword ptr [rbp + 3840]
 cmp eax, 7
 je .Lx00005_1
 cmp eax, 6
 jne .Lx00005_0
 mov eax, dword ptr [rbp + 3072]
 cmp eax, 6
 jne .Lx00005_0
.Lx00005_1:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3016], rax
 jmp .Lx00005_2
.Lx00005_0:
 lea rdi, [rbp + 3840]
 lea rsi, [rbp + 3072]
 lea rdx, [rbp + 3008]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00005_2:
 jmp xchain82_n43_α
 xchain82_n38_β:
 jmp xchain82_n35_α
# IR_UNOP
 xchain82_n39_α:
 mov rdi, qword ptr [rbp + 3792]
 mov rsi, qword ptr [rbp + 3800]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain82_n44_α
 xchain82_n39_β:
 jmp xchain82_n40_α
# IR_VAR
 xchain82_n40_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2776], rax
 jmp xchain82_n45_α
 xchain82_n40_β:
 jmp xchain82_n46_α
# IR_VAR
 xchain82_n41_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 520], rax
 jmp xchain82_n47_α
 xchain82_n41_β:
 jmp xchain82_n23_β
# IR_RETURN
 xchain82_n42_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedload_γ
 xchain82_n43_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3008]
 cmp eax, 100
 je .Lx00006_0
 mov eax, dword ptr [rbp + 3008]
 cmp eax, 6
 jne .Lx00006_2
.Lx00006_1:
 mov rax, qword ptr [rbp + 3016]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2976], 6
 mov qword ptr [rbp + 2984], rax
 jmp xchain82_n48_α
.Lx00006_0:
 mov rdi, qword ptr [rbp + 3008]
 mov rsi, qword ptr [rbp + 3016]
 mov rdx, qword ptr [rbp + 3072]
 mov rcx, qword ptr [rbp + 3080]
 mov r8d, 0
 lea r9, [rbp + 2976]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00006_3
.Lx00006_2:
 mov rdi, qword ptr [rbp + 3008]
 mov rsi, qword ptr [rbp + 3016]
 mov rdx, qword ptr [rbp + 3072]
 mov rcx, qword ptr [rbp + 3080]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain82_n35_α
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
.Lx00006_3:
 jmp xchain82_n48_α
 xchain82_n43_β:
 jmp xchain82_n35_α
# IR_LIT_INTEGER
 xchain82_n44_α:
 mov qword ptr [rbp + 2928], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [rbp + 2936], rax
 jmp xchain82_n49_α
 xchain82_n44_β:
 jmp xchain82_n40_α
.Lx00007_0:
 .quad 0
 xchain82_n45_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2768]
 mov rdx, qword ptr [rbp + 2776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00008_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00008_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00008_3]
 lea rdx, [rip + .Lx00008_4]
 jmp rax
.Lx00008_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00008_2
.Lx00008_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00008_2
.Lx00008_1:
 call rt_faildescr@PLT
.Lx00008_2:
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je xchain82_n46_α
 jmp xchain82_n50_α
 xchain82_n45_β:
 jmp xchain82_n46_α
.Lx00008_0:
 .quad .Lx00008_0_s
.Lx00008_0_s:
 .string "gedscan"
# KEYWORD_null
 xchain82_n46_α:
 mov qword ptr [rbp + 2672], 0
 mov qword ptr [rbp + 2680], 0
 jmp xchain82_n51_α
 xchain82_n46_β:
 jmp xchain82_n52_α
# IR_FIELD_GET
 xchain82_n47_α:
 mov rdi, qword ptr [rip + .Lx00009_0]
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain82_n23_β
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain82_n53_α
 xchain82_n47_β:
 jmp xchain82_n23_β
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "data"
 xchain82_n48_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2976]
 mov rdx, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain82_n35_α
 xchain82_n48_β:
 jmp xchain82_n35_α
 xchain82_n49_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 100
 je .Lx00010_0
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 6
 jne .Lx00010_2
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 6
 jne .Lx00010_2
.Lx00010_1:
 mov rax, qword ptr [rbp + 2872]
 mov rcx, qword ptr [rbp + 2936]
 cmp rax, rcx
 jne xchain82_n40_α
 mov rcx, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2832], rcx
 mov rcx, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2840], rcx
 jmp xchain82_n19_α
.Lx00010_0:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2928]
 mov rcx, qword ptr [rbp + 2936]
 mov r8d, 9
 lea r9, [rbp + 2832]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00010_1
 cmp eax, 1
 je xchain82_n40_α
 jmp xchain82_n19_α
.Lx00010_2:
 mov rdi, qword ptr [rbp + 2864]
 mov rsi, qword ptr [rbp + 2872]
 mov rdx, qword ptr [rbp + 2928]
 mov rcx, qword ptr [rbp + 2936]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain82_n40_α
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2840], rax
 jmp xchain82_n19_α
 xchain82_n49_β:
 jmp xchain82_n40_α
 xchain82_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain82_n52_α
 xchain82_n50_β:
 jmp xchain82_n46_α
# KEYWORD_read
 xchain82_n51_α:
 mov rdi, qword ptr [rip + .Lx00011_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain82_n55_α
 xchain82_n51_β:
 jmp xchain82_n19_α
.Lx00011_0:
 .quad .Lx00011_0_s
.Lx00011_0_s:
 .string "&errout"
# IR_VAR
 xchain82_n52_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 2280], rax
 jmp xchain82_n56_α
 xchain82_n52_β:
 jmp xchain82_n57_α
# IR_SUBSCRIPT x[i] variable
 xchain82_n53_α:
 mov rdi, qword ptr [rbp + 448]
 mov rsi, qword ptr [rbp + 456]
 mov rdx, qword ptr [rbp + 480]
 mov rcx, qword ptr [rbp + 488]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain82_n23_β
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain82_n58_α
 xchain82_n53_β:
 jmp xchain82_n23_β
 xchain82_n54_α:
 jmp xchain82_n19_α
xchain82_n54_β:
 jmp xchain82_n19_α
# IR_LIT_STRING
 xchain82_n55_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain82_n59_α
 xchain82_n55_β:
 jmp xchain82_n19_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "ERR, line "
# IR_FIELD_GET lv
 xchain82_n56_α:
 mov rdi, qword ptr [rip + .Lx00013_0]
 mov rsi, qword ptr [rbp + 2272]
 mov rdx, qword ptr [rbp + 2280]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain82_n57_α
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain82_n60_α
 xchain82_n56_β:
 jmp xchain82_n57_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "lnum"
# IR_VAR
 xchain82_n57_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 2184], rax
 jmp xchain82_n61_α
 xchain82_n57_β:
 jmp xchain82_n62_α
# IR_DEREF variable -> value
 xchain82_n58_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain82_n23_β
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain82_n63_α
 xchain82_n58_β:
 jmp xchain82_n23_β
# IR_VAR
 xchain82_n59_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 2584], rax
 jmp xchain82_n64_α
 xchain82_n59_β:
 jmp xchain82_n19_α
# IR_VAR
 xchain82_n60_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 2328], rax
 jmp xchain82_n66_α
 xchain82_n60_β:
 jmp xchain82_n57_α
# IR_FIELD_GET lv
 xchain82_n61_α:
 mov rdi, qword ptr [rip + .Lx00014_0]
 mov rsi, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain82_n62_α
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain82_n67_α
 xchain82_n61_β:
 jmp xchain82_n62_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "sub"
# IR_VAR
 xchain82_n62_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1976], rax
 jmp xchain82_n68_α
 xchain82_n62_β:
 jmp xchain82_n69_α
# IR_ASSIGN_VAR
 xchain82_n63_α:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain82_n23_β
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain82_n23_β
 xchain82_n63_β:
 jmp xchain82_n23_β
# IR_LIT_STRING
 xchain82_n64_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain82_n70_α
 xchain82_n64_β:
 jmp xchain82_n19_α
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string ": "
 xchain82_n65_α:
 jmp xchain82_n19_α
xchain82_n65_β:
 jmp xchain82_n19_α
# IR_ASSIGN_VAR
 xchain82_n66_α:
 mov rdi, qword ptr [rbp + 2240]
 mov rsi, qword ptr [rbp + 2248]
 mov rdx, qword ptr [rbp + 2320]
 mov rcx, qword ptr [rbp + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain82_n57_α
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain82_n57_α
 xchain82_n66_β:
 jmp xchain82_n57_α
# IR_MAKE_LIST
 xchain82_n67_α:
 lea rdi, [rbp + 2240]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain82_n71_α
 xchain82_n67_β:
 jmp xchain82_n62_α
# IR_FIELD_GET
 xchain82_n68_α:
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov rsi, qword ptr [rbp + 1968]
 mov rdx, qword ptr [rbp + 1976]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain82_n69_α
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain82_n72_α
 xchain82_n68_β:
 jmp xchain82_n69_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "level"
# IR_VAR
 xchain82_n69_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1848], rax
 jmp xchain82_n73_α
 xchain82_n69_β:
 jmp xchain82_n74_α
# IR_VAR
 xchain82_n70_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2648], rax
 jmp xchain82_n75_α
 xchain82_n70_β:
 jmp xchain82_n19_α
# IR_ASSIGN_VAR
 xchain82_n71_α:
 mov rdi, qword ptr [rbp + 2144]
 mov rsi, qword ptr [rbp + 2152]
 mov rdx, qword ptr [rbp + 2224]
 mov rcx, qword ptr [rbp + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain82_n62_α
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain82_n62_α
 xchain82_n71_β:
 jmp xchain82_n62_α
# IR_VAR
 xchain82_n72_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 2040], rax
 jmp xchain82_n76_α
 xchain82_n72_β:
 jmp xchain82_n69_α
# IR_FIELD_GET
 xchain82_n73_α:
 mov rdi, qword ptr [rip + .Lx00017_0]
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain82_n74_α
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain82_n77_α
 xchain82_n73_β:
 jmp xchain82_n74_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "sub"
# IR_VAR
 xchain82_n74_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1672], rax
 jmp xchain82_n78_α
 xchain82_n74_β:
 jmp xchain82_n79_α
 xchain82_n75_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2512] -> [zr+2416]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2424], rax
# marshal arg1 = producer-box slot [zr+2544] -> [zr+2432]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2440], rax
# marshal arg2 = producer-box slot [zr+2576] -> [zr+2448]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2456], rax
# marshal arg3 = producer-box slot [zr+2608] -> [zr+2464]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2472], rax
# marshal arg4 = producer-box slot [zr+2640] -> [zr+2480]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2488], rax
  .section .rodata
  .Lrkfn193: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn193]
 lea rsi, [rbp + 2416]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain82_n19_α
 jmp xchain82_n19_α
 xchain82_n75_β:
 jmp xchain82_n19_α
# IR_FIELD_GET
 xchain82_n76_α:
 mov rdi, qword ptr [rip + .Lx00018_0]
 mov rsi, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain82_n69_α
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain82_n80_α
 xchain82_n76_β:
 jmp xchain82_n69_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "level"
# IR_VAR
 xchain82_n77_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1880], rax
 jmp xchain82_n81_α
 xchain82_n77_β:
 jmp xchain82_n74_α
# IR_FIELD_GET lv
 xchain82_n78_α:
 mov rdi, qword ptr [rip + .Lx00019_0]
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain82_n79_α
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain82_n82_α
 xchain82_n78_β:
 jmp xchain82_n79_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "parent"
# IR_VAR
 xchain82_n79_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1608], rax
 jmp xchain82_n83_α
 xchain82_n79_β:
 jmp xchain82_n84_α
 xchain82_n80_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1936]
 cmp eax, 100
 je .Lx00020_0
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 100
 je .Lx00020_0
 mov eax, dword ptr [rbp + 1936]
 cmp eax, 6
 jne .Lx00020_2
 mov eax, dword ptr [rbp + 2000]
 cmp eax, 6
 jne .Lx00020_2
.Lx00020_1:
 mov rax, qword ptr [rbp + 1944]
 mov rcx, qword ptr [rbp + 2008]
 cmp rax, rcx
 jl xchain82_n69_α
 mov rcx, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1904], rcx
 mov rcx, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1912], rcx
 jmp xchain82_n85_α
.Lx00020_0:
 mov rdi, qword ptr [rbp + 1936]
 mov rsi, qword ptr [rbp + 1944]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 mov r8d, 8
 lea r9, [rbp + 1904]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00020_1
 cmp eax, 1
 je xchain82_n69_α
 jmp xchain82_n85_α
.Lx00020_2:
 mov rdi, qword ptr [rbp + 1936]
 mov rsi, qword ptr [rbp + 1944]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain82_n69_α
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1912], rax
 jmp xchain82_n85_α
 xchain82_n80_β:
 jmp xchain82_n69_α
 xchain82_n81_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1776]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1784], rax
  .section .rodata
  .Lrkfn202: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn202]
 lea rsi, [rbp + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain82_n74_α
 jmp xchain82_n74_α
 xchain82_n81_β:
 jmp xchain82_n74_α
# IR_VAR
 xchain82_n82_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1720], rax
 jmp xchain82_n86_α
 xchain82_n82_β:
 jmp xchain82_n79_α
 xchain82_n83_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain82_n84_α
 xchain82_n83_β:
 jmp xchain82_n84_α
# IR_VAR_REF
 xchain82_n84_α:
 lea rdi, [rbp + 3728]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain82_n87_α
 xchain82_n84_β:
 jmp xchain82_n90_α
# IR_VAR
 xchain82_n85_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 2120], rax
 jmp xchain82_n88_α
 xchain82_n85_β:
 jmp xchain82_n62_α
# IR_ASSIGN_VAR
 xchain82_n86_α:
 mov rdi, qword ptr [rbp + 1632]
 mov rsi, qword ptr [rbp + 1640]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain82_n79_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain82_n79_α
 xchain82_n86_β:
 jmp xchain82_n79_α
# IR_VAR
 xchain82_n87_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1480], rax
 jmp xchain82_n89_α
 xchain82_n87_β:
 jmp xchain82_n90_α
# IR_FIELD_GET
 xchain82_n88_α:
 mov rdi, qword ptr [rip + .Lx00021_0]
 mov rsi, qword ptr [rbp + 2112]
 mov rdx, qword ptr [rbp + 2120]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain82_n62_α
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain82_n91_α
 xchain82_n88_β:
 jmp xchain82_n62_α
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string "parent"
# IR_FIELD_GET
 xchain82_n89_α:
 mov rdi, qword ptr [rip + .Lx00022_0]
 mov rsi, qword ptr [rbp + 1472]
 mov rdx, qword ptr [rbp + 1480]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain82_n90_α
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain82_n92_α
 xchain82_n89_β:
 jmp xchain82_n90_α
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string "id"
# IR_VAR
 xchain82_n90_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 872], rax
 jmp xchain82_n93_α
 xchain82_n90_β:
 jmp xchain82_n19_α
 xchain82_n91_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain82_n62_α
 xchain82_n91_β:
 jmp xchain82_n62_α
# IR_UNOP
 xchain82_n92_α:
 mov eax, dword ptr [rbp + 1440]
 cmp eax, 99
 je xchain82_n90_α
 cmp eax, 0
 je xchain82_n90_α
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1416], rax
 jmp xchain82_n94_α
 xchain82_n92_β:
 jmp xchain82_n90_α
# IR_FIELD_GET
 xchain82_n93_α:
 mov rdi, qword ptr [rip + .Lx00023_0]
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain82_n19_α
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain82_n95_α
 xchain82_n93_β:
 jmp xchain82_n19_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "tag"
# IR_SUBSCRIPT x[i] variable
 xchain82_n94_α:
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1408]
 mov rcx, qword ptr [rbp + 1416]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain82_n90_α
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain82_n96_α
 xchain82_n94_β:
 jmp xchain82_n90_α
# IR_LIT_STRING
 xchain82_n95_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain82_n97_α
 xchain82_n95_β:
 jmp xchain82_n19_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "FAM"
# IR_VAR
 xchain82_n96_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1560], rax
 jmp xchain82_n98_α
 xchain82_n96_β:
 jmp xchain82_n90_α
 xchain82_n97_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+1328]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1344]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn225: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn225]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain82_n00025_α
 jmp xchain82_n99_α
 xchain82_n97_β:
 jmp xchain82_n00025_α
# IR_ASSIGN_VAR
 xchain82_n98_α:
 mov rdi, qword ptr [rbp + 1504]
 mov rsi, qword ptr [rbp + 1512]
 mov rdx, qword ptr [rbp + 1552]
 mov rcx, qword ptr [rbp + 1560]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain82_n90_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain82_n90_α
 xchain82_n98_β:
 jmp xchain82_n90_α
# IR_VAR
 xchain82_n99_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 1240], rax
 jmp xchain82_n00026_α
 xchain82_n99_β:
 jmp xchain82_n19_α
# IR_LIT_STRING
 xchain82_n00025_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain82_n00028_α
 xchain82_n00025_β:
 jmp xchain82_n19_α
.Lx00027_0:
 .quad .Lx00027_0_s
.Lx00027_0_s:
 .string "INDI"
# IR_VAR
 xchain82_n00026_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1272], rax
 jmp xchain82_n00029_α
 xchain82_n00026_β:
 jmp xchain82_n19_α
 xchain82_n00028_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+1088]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+1104]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lrkfn233: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn233]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain82_n19_α
 jmp xchain82_n00030_α
 xchain82_n00028_β:
 jmp xchain82_n19_α
 xchain82_n00029_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn235: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn235]
 lea rsi, [rbp + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain82_n19_α
 jmp xchain82_n00031_α
 xchain82_n00029_β:
 jmp xchain82_n19_α
# IR_VAR
 xchain82_n00030_α:
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 1000], rax
 jmp xchain82_n00032_α
 xchain82_n00030_β:
 jmp xchain82_n19_α
 xchain82_n00031_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain82_n00033_α
 xchain82_n00031_β:
 jmp xchain82_n19_α
# IR_VAR
 xchain82_n00032_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 1032], rax
 jmp xchain82_n00034_α
 xchain82_n00032_β:
 jmp xchain82_n19_α
# IR_VAR
 xchain82_n00033_α:
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 808], rax
 jmp xchain82_n00035_α
 xchain82_n00033_β:
 jmp xchain82_n19_α
 xchain82_n00034_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+944]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
  .section .rodata
  .Lrkfn244: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn244]
 lea rsi, [rbp + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain82_n19_α
 jmp xchain82_n00036_α
 xchain82_n00034_β:
 jmp xchain82_n19_α
 xchain82_n00035_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 792], rax
 jmp xchain82_n19_α
xchain82_n00035_β:
 jmp xchain82_n19_α
 xchain82_n00036_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain82_n00033_α
 xchain82_n00036_β:
 jmp xchain82_n19_α
proc_gedload_res:
add rsp, 8
pop rbp
proc_gedload_β:
jmp proc_gedload_ω
proc_gedload_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3864]
lea rsp, [rbp + 3888]
mov rbp, [rbp + 3880]
jmp rax
proc_gedload_ω:
mov rax, [rbp + 3872]
lea rsp, [rbp + 3888]
mov rbp, [rbp + 3880]
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
 xchain00037_n0_α:
 mov rdi, 1879052320
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00037_n1_α
 xchain00037_n0_β:
 jmp xchain00037_n3_α
# IR_NULLTEST_VAR
 xchain00037_n1_α:
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 99
 je xchain00037_n3_α
 mov rdi, qword ptr [rbp + 1712]
 mov rsi, qword ptr [rbp + 1720]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00037_n3_α
 cmp eax, 0
 jne xchain00037_n3_α
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00037_n2_α
 xchain00037_n1_β:
 jmp xchain00037_n3_α
# IR_LIT_INTEGER
 xchain00037_n2_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00037_n4_α
 xchain00037_n2_β:
 jmp xchain00037_n3_α
.Lx00038_0:
 .quad 1
# IR_VAR
 xchain00037_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00037_n5_α
 xchain00037_n3_β:
 jmp proc_gedscan_ω
# IR_ASSIGN_VAR
 xchain00037_n4_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00037_n3_α
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00037_n6_α
 xchain00037_n4_β:
 jmp xchain00037_n3_α
# IR_GEN_SCAN
 xchain00037_n5_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00037_n7_α
 xchain00037_n5_β:
 jmp proc_gedscan_ω
# IR_LIT_CHARSET
 xchain00037_n6_α:
 mov qword ptr [rbp + 1616], 1
 mov dword ptr [rbp + 1620], -1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00037_n8_α
 xchain00037_n6_β:
 jmp xchain00037_n3_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_LIT_CHARSET
 xchain00037_n7_α:
 mov qword ptr [rbp + 1440], 1
 mov dword ptr [rbp + 1444], -1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00037_n9_α
 xchain00037_n7_β:
 jmp xchain00037_n13_α
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "\t\n "
# IR_LIT_CHARSET
 xchain00037_n8_α:
 mov qword ptr [rbp + 1648], 1
 mov dword ptr [rbp + 1652], -1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00037_n10_α
 xchain00037_n8_β:
 jmp xchain00037_n3_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "0123456789"
# IR_SCAN_MANY
 xchain00037_n9_α:
 mov eax, r14d
.Lx00042_0:
 cmp eax, r15d
 jge .Lx00042_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00042_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00042_1
 add eax, 1
 jmp .Lx00042_0
.Lx00042_1:
 cmp eax, r14d
 je xchain00037_n13_α
 mov qword ptr [rbp + 1408], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1416], rcx
 jmp xchain00037_n11_α
 xchain00037_n9_β:
 jmp xchain00037_n13_α
.Lx00042_2:
 .quad .Lx00042_2_s
.Lx00042_2_s:
 .string "\t\n "
 xchain00037_n10_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00037_n3_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00037_n12_α
 xchain00037_n10_β:
 jmp xchain00037_n3_α
# IR_SCAN_TAB
 xchain00037_n11_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1416]
 cmp rax, 1
 jge .Lx00043_0
 add rax, r15
 add rax, 1
.Lx00043_0:
 cmp rax, 1
 jge .Lx00043_239
 add rsp, 16
 jmp xchain00037_n13_α
.Lx00043_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00043_240
 add rsp, 16
 jmp xchain00037_n13_α
.Lx00043_240:
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
 jmp xchain00037_n13_α
 xchain00037_n11_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00037_n13_α
# IR_LIT_CHARSET
 xchain00037_n12_α:
 mov qword ptr [rbp + 1680], 1
 mov dword ptr [rbp + 1684], -1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00037_n14_α
 xchain00037_n12_β:
 jmp xchain00037_n3_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "_"
# IR_LIT_CHARSET
 xchain00037_n13_α:
 mov qword ptr [rbp + 1344], 1
 mov dword ptr [rbp + 1348], -1
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00037_n15_α
 xchain00037_n13_β:
 jmp proc_gedscan_ω
.Lx00045_0:
 .quad .Lx00045_0_s
.Lx00045_0_s:
 .string "0123456789"
 xchain00037_n14_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1680]
 mov rcx, qword ptr [rbp + 1688]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00037_n3_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00037_n16_α
 xchain00037_n14_β:
 jmp xchain00037_n3_α
# IR_SCAN_MANY
 xchain00037_n15_α:
 mov eax, r14d
.Lx00046_0:
 cmp eax, r15d
 jge .Lx00046_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00046_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00046_1
 add eax, 1
 jmp .Lx00046_0
.Lx00046_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [rbp + 1312], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1320], rcx
 jmp xchain00037_n17_α
 xchain00037_n15_β:
 jmp proc_gedscan_ω
.Lx00046_2:
 .quad .Lx00046_2_s
.Lx00046_2_s:
 .string "0123456789"
# IR_ASSIGN gva
 xchain00037_n16_α:
 mov rax, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00037_n18_α
 xchain00037_n16_β:
 jmp xchain00037_n3_α
# IR_SCAN_TAB
 xchain00037_n17_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1320]
 cmp rax, 1
 jge .Lx00047_0
 add rax, r15
 add rax, 1
.Lx00047_0:
 cmp rax, 1
 jge .Lx00047_239
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00047_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00047_240
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00047_240:
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
 jmp xchain00037_n19_α
 xchain00037_n17_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedscan_ω
# IR_MOVE_LABEL
 xchain00037_n18_α:
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1512], rax
 lea rax, [rip + xchain00037_n3_α]
 mov qword ptr [rbp + 1520], rax
 jmp xchain00037_n3_α
 xchain00037_n18_β:
 jmp xchain00037_n3_α
# IR_MOVE_LABEL
 xchain00037_n19_α:
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [rbp + 1264], rax
 jmp xchain00037_n21_α
 xchain00037_n19_β:
 jmp xchain00037_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00037_n20_α:
 jmp qword ptr [rbp + 1520]
 xchain00037_n20_β:
 jmp xchain00037_n3_α
 xchain00037_n21_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00037_n23_α
 xchain00037_n21_β:
 jmp xchain00037_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00037_n22_α:
 jmp qword ptr [rbp + 1264]
 xchain00037_n22_β:
 jmp xchain00037_n23_α
# IR_LIT_CHARSET
 xchain00037_n23_α:
 mov qword ptr [rbp + 1200], 1
 mov dword ptr [rbp + 1204], -1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00037_n24_α
 xchain00037_n23_β:
 jmp xchain00037_n26_α
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "\t\n "
# IR_SCAN_MANY
 xchain00037_n24_α:
 mov eax, r14d
.Lx00049_0:
 cmp eax, r15d
 jge .Lx00049_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00049_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00049_1
 add eax, 1
 jmp .Lx00049_0
.Lx00049_1:
 cmp eax, r14d
 je xchain00037_n26_α
 mov qword ptr [rbp + 1168], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00037_n25_α
 xchain00037_n24_β:
 jmp xchain00037_n26_α
.Lx00049_2:
 .quad .Lx00049_2_s
.Lx00049_2_s:
 .string "\t\n "
# IR_SCAN_TAB
 xchain00037_n25_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1176]
 cmp rax, 1
 jge .Lx00050_0
 add rax, r15
 add rax, 1
.Lx00050_0:
 cmp rax, 1
 jge .Lx00050_239
 add rsp, 16
 jmp xchain00037_n26_α
.Lx00050_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00050_240
 add rsp, 16
 jmp xchain00037_n26_α
.Lx00050_240:
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
 jmp xchain00037_n26_α
 xchain00037_n25_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00037_n26_α
# IR_SCAN_SEQ_NARY
 xchain00037_n26_α:
 mov dword ptr [rbp + 832], r14d
 mov dword ptr [rbp + 836], 0
 jmp xchain00037_n28_α
xchain00037_n26_as:
 mov eax, dword ptr [rbp + 836]
 add eax, 1
 mov dword ptr [rbp + 836], eax
 cmp eax, 1
 je xchain00037_n30_α
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
 jmp xchain00037_n27_α
 xchain00037_n26_β:
 mov dword ptr [rbp + 836], 2
xchain00037_n26_af:
 mov eax, dword ptr [rbp + 836]
 sub eax, 1
 mov dword ptr [rbp + 836], eax
 cmp eax, 0
 je xchain00037_n29_β
 cmp eax, 1
 je xchain00037_n31_β
 jmp xchain00037_n40_α
 xchain00037_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00037_n32_α
 xchain00037_n27_β:
 jmp xchain00037_n40_α
# IR_LIT_STRING
 xchain00037_n28_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00037_n33_α
 xchain00037_n28_β:
 jmp xchain00037_n26_af
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00037_n29_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 888]
 cmp rax, 1
 jge .Lx00052_0
 add rax, r15
 add rax, 1
.Lx00052_0:
 cmp rax, 1
 jge .Lx00052_239
 add rsp, 16
 jmp xchain00037_n26_af
.Lx00052_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00052_240
 add rsp, 16
 jmp xchain00037_n26_af
.Lx00052_240:
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
 jmp xchain00037_n26_as
 xchain00037_n29_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00037_n26_af
# IR_LIT_CHARSET
 xchain00037_n30_α:
 mov qword ptr [rbp + 1072], 1
 mov dword ptr [rbp + 1076], -1
 mov rax, qword ptr [rip + .Lx00053_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00037_n34_α
 xchain00037_n30_β:
 jmp xchain00037_n26_af
.Lx00053_0:
 .quad .Lx00053_0_s
.Lx00053_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00037_n31_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 984]
 cmp rax, 1
 jge .Lx00054_0
 add rax, r15
 add rax, 1
.Lx00054_0:
 cmp rax, 1
 jge .Lx00054_239
 add rsp, 16
 jmp xchain00037_n26_af
.Lx00054_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00054_240
 add rsp, 16
 jmp xchain00037_n26_af
.Lx00054_240:
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
 jmp xchain00037_n26_as
 xchain00037_n31_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00037_n26_af
# IR_LIT_CHARSET
 xchain00037_n32_α:
 mov qword ptr [rbp + 768], 1
 mov dword ptr [rbp + 772], -1
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00037_n35_α
 xchain00037_n32_β:
 jmp xchain00037_n40_α
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string "\t\n "
# IR_SCAN_MATCH
 xchain00037_n33_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00056_239
 add rsp, 16
 jmp xchain00037_n26_af
.Lx00056_239:
 mov rdi, qword ptr [rip + .Lx00056_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00056_240
 add rsp, 16
 jmp xchain00037_n26_af
.Lx00056_240:
 mov qword ptr [rbp + 880], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 888], rax
 jmp xchain00037_n29_α
 xchain00037_n33_β:
 add rsp, 16
 jmp xchain00037_n26_af
.Lx00056_0:
 .quad .Lx00056_0_s
.Lx00056_0_s:
 .string "@"
# IR_SCAN_UPTO
 xchain00037_n34_α:
 mov qword ptr [rbp + 1056], r14
.Lx00057_0:
 mov rax, qword ptr [rbp + 1056]
 cmp rax, r15
 jge xchain00037_n26_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00057_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00057_1
 mov qword ptr [rbp + 1040], 6
 add rax, 1
 mov qword ptr [rbp + 1048], rax
 jmp xchain00037_n36_α
.Lx00057_1:
 inc qword ptr [rbp + 1056]
 jmp .Lx00057_0
 xchain00037_n34_β:
 inc qword ptr [rbp + 1056]
 jmp .Lx00057_0
.Lx00057_2:
 .quad .Lx00057_2_s
.Lx00057_2_s:
 .string "@"
# IR_SCAN_MANY
 xchain00037_n35_α:
 mov eax, r14d
.Lx00058_0:
 cmp eax, r15d
 jge .Lx00058_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00058_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00058_1
 add eax, 1
 jmp .Lx00058_0
.Lx00058_1:
 cmp eax, r14d
 je xchain00037_n40_α
 mov qword ptr [rbp + 736], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 744], rcx
 jmp xchain00037_n37_α
 xchain00037_n35_β:
 jmp xchain00037_n40_α
.Lx00058_2:
 .quad .Lx00058_2_s
.Lx00058_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00037_n36_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00037_n38_α
 xchain00037_n36_β:
 jmp xchain00037_n26_af
.Lx00059_0:
 .quad 1
# IR_SCAN_TAB
 xchain00037_n37_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 744]
 cmp rax, 1
 jge .Lx00060_0
 add rax, r15
 add rax, 1
.Lx00060_0:
 cmp rax, 1
 jge .Lx00060_239
 add rsp, 16
 jmp xchain00037_n40_α
.Lx00060_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00060_240
 add rsp, 16
 jmp xchain00037_n40_α
.Lx00060_240:
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
 jmp xchain00037_n39_α
 xchain00037_n37_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00037_n40_α
# IR_COERCE_NUMERIC
 xchain00037_n38_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 7
 je .Lx00061_1
 cmp eax, 6
 jne .Lx00061_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00061_0
.Lx00061_1:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
 jmp .Lx00061_2
.Lx00061_0:
 lea rdi, [rbp + 1040]
 lea rsi, [rbp + 1104]
 lea rdx, [rbp + 1008]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00061_2:
 jmp xchain00037_n41_α
 xchain00037_n38_β:
 jmp xchain00037_n26_af
# IR_MOVE_LABEL
 xchain00037_n39_α:
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + xchain00037_n40_α]
 mov qword ptr [rbp + 688], rax
 jmp xchain00037_n40_α
 xchain00037_n39_β:
 jmp xchain00037_n40_α
# IR_VAR
 xchain00037_n40_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00037_n43_α
 xchain00037_n40_β:
 jmp proc_gedscan_ω
 xchain00037_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 100
 je .Lx00062_0
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 6
 jne .Lx00062_2
.Lx00062_1:
 mov rax, qword ptr [rbp + 1016]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 976], 6
 mov qword ptr [rbp + 984], rax
 jmp xchain00037_n31_α
.Lx00062_0:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 0
 lea r9, [rbp + 976]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00062_3
.Lx00062_2:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00037_n26_af
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
.Lx00062_3:
 jmp xchain00037_n31_α
 xchain00037_n41_β:
 jmp xchain00037_n26_af
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00037_n42_α:
 jmp qword ptr [rbp + 688]
 xchain00037_n42_β:
 jmp xchain00037_n40_α
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00037_n43_α:
 mov eax, r14d
.Lx00063_0:
 cmp eax, r15d
 jge .Lx00063_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 648]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00063_1
 add eax, 1
 jmp .Lx00063_0
.Lx00063_1:
 cmp eax, r14d
 je proc_gedscan_ω
 mov qword ptr [rbp + 608], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 616], rcx
 jmp xchain00037_n44_α
 xchain00037_n43_β:
 jmp proc_gedscan_ω
# IR_SCAN_TAB
 xchain00037_n44_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 616]
 cmp rax, 1
 jge .Lx00064_0
 add rax, r15
 add rax, 1
.Lx00064_0:
 cmp rax, 1
 jge .Lx00064_239
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00064_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00064_240
 add rsp, 16
 jmp proc_gedscan_ω
.Lx00064_240:
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
 jmp xchain00037_n45_α
 xchain00037_n44_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedscan_ω
# IR_MOVE_LABEL
 xchain00037_n45_α:
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
 lea rax, [rip + proc_gedscan_ω]
 mov qword ptr [rbp + 560], rax
 jmp xchain00037_n46_α
 xchain00037_n45_β:
 jmp xchain00037_n48_α
 xchain00037_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00037_n48_α
 xchain00037_n46_β:
 jmp xchain00037_n48_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00037_n47_α:
 jmp qword ptr [rbp + 560]
 xchain00037_n47_β:
 jmp xchain00037_n48_α
# IR_LIT_CHARSET
 xchain00037_n48_α:
 mov qword ptr [rbp + 496], 1
 mov dword ptr [rbp + 500], -1
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00037_n49_α
 xchain00037_n48_β:
 jmp xchain00037_n51_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "\t\n "
# IR_SCAN_MANY
 xchain00037_n49_α:
 mov eax, r14d
.Lx00066_0:
 cmp eax, r15d
 jge .Lx00066_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00066_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00066_1
 add eax, 1
 jmp .Lx00066_0
.Lx00066_1:
 cmp eax, r14d
 je xchain00037_n51_α
 mov qword ptr [rbp + 464], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 472], rcx
 jmp xchain00037_n50_α
 xchain00037_n49_β:
 jmp xchain00037_n51_α
.Lx00066_2:
 .quad .Lx00066_2_s
.Lx00066_2_s:
 .string "\t\n "
# IR_SCAN_TAB
 xchain00037_n50_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 472]
 cmp rax, 1
 jge .Lx00067_0
 add rax, r15
 add rax, 1
.Lx00067_0:
 cmp rax, 1
 jge .Lx00067_239
 add rsp, 16
 jmp xchain00037_n51_α
.Lx00067_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00067_240
 add rsp, 16
 jmp xchain00037_n51_α
.Lx00067_240:
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
 jmp xchain00037_n51_α
 xchain00037_n50_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00037_n51_α
# IR_LIT_INTEGER
 xchain00037_n51_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00068_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00037_n52_α
 xchain00037_n51_β:
 jmp xchain00037_n54_α
.Lx00068_0:
 .quad 0
# IR_SCAN_TAB
 xchain00037_n52_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00069_0
 add rax, r15
 add rax, 1
.Lx00069_0:
 cmp rax, 1
 jge .Lx00069_239
 add rsp, 16
 jmp xchain00037_n54_α
.Lx00069_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00069_240
 add rsp, 16
 jmp xchain00037_n54_α
.Lx00069_240:
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
 jmp xchain00037_n53_α
 xchain00037_n52_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00037_n54_α
 xchain00037_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00037_n54_α
 xchain00037_n53_β:
 jmp xchain00037_n54_α
# IR_VAR
 xchain00037_n54_α:
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 232], rax
 jmp xchain00037_n55_α
 xchain00037_n54_β:
 jmp proc_gedscan_ω
# IR_VAR
 xchain00037_n55_α:
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 264], rax
 jmp xchain00037_n56_α
 xchain00037_n55_β:
 jmp proc_gedscan_ω
# IR_VAR
 xchain00037_n56_α:
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 296], rax
 jmp xchain00037_n57_α
 xchain00037_n56_β:
 jmp proc_gedscan_ω
# IR_VAR
 xchain00037_n57_α:
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 328], rax
 jmp xchain00037_n58_α
 xchain00037_n57_β:
 jmp proc_gedscan_ω
 xchain00037_n58_α:
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
  .Lrkfn341: .string "gednode"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn341]
 lea rsi, [rbp + 144]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_gedscan_ω
 jmp xchain00037_n59_α
 xchain00037_n58_β:
 jmp proc_gedscan_ω
# IR_RETURN
 xchain00037_n59_α:
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
  sub rsp, 320
  mov [rsp + 296], rcx
  mov [rsp + 304], rdx
  mov [rsp + 312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 280], rsp
  mov rdi, rsp
  mov esi, 288
  call rt_jmp_frame_lexprep@PLT
proc_gedwalk_α_body:
lea rax, [rip + xchain00070_n3_β]
mov qword ptr [rbp + 256], rax
# IR_VAR
 xchain00070_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 232], rax
 jmp xchain00070_n1_α
 xchain00070_n0_β:
 jmp xchain00070_n2_α
# IR_MOVE_LABEL
 xchain00070_n1_α:
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain00070_n2_α]
 mov qword ptr [rbp + 48], rax
 jmp xchain00070_n3_α
 xchain00070_n1_β:
 jmp proc_gedwalk_ω
# IR_VAR
 xchain00070_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 200], rax
 jmp xchain00070_n5_α
 xchain00070_n2_β:
 jmp proc_gedwalk_ω
# IR_SUSPEND yield+resume
 xchain00070_n3_α:
 lea rax, [rip + xchain00070_n3_β]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedwalk_γ
 xchain00070_n3_β:
 jmp xchain00070_n4_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00070_n4_α:
 jmp qword ptr [rbp + 48]
 xchain00070_n4_β:
 jmp proc_gedwalk_ω
# IR_FIELD_GET
 xchain00070_n5_α:
 mov rdi, qword ptr [rip + .Lx00071_0]
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedwalk_ω
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain00070_n6_α
 xchain00070_n5_β:
 jmp proc_gedwalk_ω
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00070_n6_α:
 mov qword ptr [rbp + 144], 0
.Lx00072_0:
 mov rdi, qword ptr [rbp + 160]
 mov rsi, qword ptr [rbp + 168]
 mov rdx, qword ptr [rbp + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp rax, 99
 je proc_gedwalk_ω
 jmp xchain00070_n7_α
 xchain00070_n6_β:
 inc qword ptr [rbp + 144]
 jmp .Lx00072_0
 xchain00070_n7_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 96], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00073_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00073_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00073_3]
 lea rdx, [rip + .Lx00073_4]
 jmp rax
.Lx00073_3:
 mov qword ptr [rbp + 104], rsp
 mov rax, qword ptr [rbp + 96]
 test rax, rax
 jne .Lx00073_5
 mov qword ptr [rbp + 96], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00073_2
.Lx00073_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00073_2
.Lx00073_4:
 mov rax, qword ptr [rbp + 96]
 test rax, rax
 jne .Lx00073_6
 mov qword ptr [rbp + 96], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00073_2
.Lx00073_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00073_2
.Lx00073_1:
 call rt_faildescr@PLT
.Lx00073_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je xchain00070_n6_β
 jmp xchain00070_n8_α
 xchain00070_n7_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 104]
 jmp qword ptr [rsp]
.Lx00073_0:
 .quad .Lx00073_0_s
.Lx00073_0_s:
 .string "gedwalk"
# IR_MOVE_LABEL
 xchain00070_n8_α:
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
 lea rax, [rip + xchain00070_n7_β]
 mov qword ptr [rbp + 48], rax
 jmp xchain00070_n3_α
 xchain00070_n8_β:
 jmp proc_gedwalk_ω
proc_gedwalk_res:
add rsp, 8
pop rbp
proc_gedwalk_β:
jmp qword ptr [rbp + 256]
proc_gedwalk_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedwalk_res]
push rax
mov rax, [rbp + 296]
mov rbp, [rbp + 312]
jmp rax
proc_gedwalk_ω:
mov rax, [rbp + 304]
lea rsp, [rbp + 320]
mov rbp, [rbp + 312]
jmp rax
  .globl proc_gedsub_α
proc_gedsub_α:
#=======================================================================================================================
    .global proc_gedsub_α
    .global proc_gedsub_β
    .global proc_gedsub_γ
    .global proc_gedsub_ω
  sub rsp, 976
  mov [rsp + 952], rcx
  mov [rsp + 960], rdx
  mov [rsp + 968], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 944
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 904], rsp
  mov rdi, rsp
  mov esi, 944
  call rt_jmp_frame_lexprep@PLT
proc_gedsub_α_body:
lea rax, [rip + xchain00074_n17_β]
mov qword ptr [rbp + 880], rax
# IR_VAR
 xchain00074_n0_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 856], rax
 jmp xchain00074_n1_α
 xchain00074_n0_β:
 jmp proc_gedsub_ω
 xchain00074_n1_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn365: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn365]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_gedsub_ω
 jmp xchain00074_n2_α
 xchain00074_n1_β:
 jmp proc_gedsub_ω
# IR_MOVE_LABEL
 xchain00074_n2_α:
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 776], rax
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [rbp + 784], rax
 jmp xchain00074_n3_α
 xchain00074_n2_β:
 jmp xchain00074_n5_α
 xchain00074_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain00074_n5_α
 xchain00074_n3_β:
 jmp xchain00074_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00074_n4_α:
 jmp qword ptr [rbp + 784]
 xchain00074_n4_β:
 jmp xchain00074_n5_α
# IR_VAR
 xchain00074_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00074_n6_α
 xchain00074_n5_β:
 jmp proc_gedsub_ω
# IR_FIELD_GET
 xchain00074_n6_α:
 mov rdi, qword ptr [rip + .Lx00075_0]
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedsub_ω
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00074_n7_α
 xchain00074_n6_β:
 jmp proc_gedsub_ω
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00074_n7_α:
 mov qword ptr [rbp + 80], 0
.Lx00076_0:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 80]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp rax, 99
 je proc_gedsub_ω
 jmp xchain00074_n8_α
 xchain00074_n7_β:
 inc qword ptr [rbp + 80]
 jmp .Lx00076_0
 xchain00074_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00074_n9_α
 xchain00074_n8_β:
 jmp proc_gedsub_ω
# IR_VAR
 xchain00074_n9_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 696], rax
 jmp xchain00074_n10_α
 xchain00074_n9_β:
 jmp xchain00074_n7_β
# IR_FIELD_GET
 xchain00074_n10_α:
 mov rdi, qword ptr [rip + .Lx00077_0]
 mov rsi, qword ptr [rbp + 688]
 mov rdx, qword ptr [rbp + 696]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00074_n7_β
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00074_n11_α
 xchain00074_n10_β:
 jmp xchain00074_n7_β
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "tag"
# IR_VAR
 xchain00074_n11_α:
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 728], rax
 jmp xchain00074_n12_α
 xchain00074_n11_β:
 jmp xchain00074_n7_β
 xchain00074_n12_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00074_n7_β
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00074_n13_α
 xchain00074_n12_β:
 jmp xchain00074_n7_β
# IR_VAR
 xchain00074_n13_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 568], rax
 jmp xchain00074_n14_α
 xchain00074_n13_β:
 jmp xchain00074_n15_α
# IR_UNOP
 xchain00074_n14_α:
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 call rt_size_d@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00074_n16_α
 xchain00074_n14_β:
 jmp xchain00074_n15_α
# IR_VAR
 xchain00074_n15_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 472], rax
 jmp xchain00074_n17_α
 xchain00074_n15_β:
 jmp xchain00074_n7_β
# IR_LIT_INTEGER
 xchain00074_n16_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00074_n18_α
 xchain00074_n16_β:
 jmp xchain00074_n15_α
.Lx00078_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain00074_n17_α:
 lea rax, [rip + xchain00074_n17_β]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00074_n17_β:
 jmp xchain00074_n19_α
 xchain00074_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 528]
 cmp eax, 100
 je .Lx00079_0
 mov eax, dword ptr [rbp + 592]
 cmp eax, 100
 je .Lx00079_0
 mov eax, dword ptr [rbp + 528]
 cmp eax, 6
 jne .Lx00079_2
 mov eax, dword ptr [rbp + 592]
 cmp eax, 6
 jne .Lx00079_2
.Lx00079_1:
 mov rax, qword ptr [rbp + 536]
 mov rcx, qword ptr [rbp + 600]
 cmp rax, rcx
 jle xchain00074_n15_α
 mov rcx, qword ptr [rbp + 592]
 mov qword ptr [rbp + 496], rcx
 mov rcx, qword ptr [rbp + 600]
 mov qword ptr [rbp + 504], rcx
 jmp xchain00074_n20_α
.Lx00079_0:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 mov r8d, 7
 lea r9, [rbp + 496]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00079_1
 cmp eax, 1
 je xchain00074_n15_α
 jmp xchain00074_n20_α
.Lx00079_2:
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00074_n15_α
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 504], rax
 jmp xchain00074_n20_α
 xchain00074_n18_β:
 jmp xchain00074_n15_α
# IR_MOVE_LABEL
 xchain00074_n19_α:
 lea rax, [rip + xchain00074_n7_β]
 mov qword ptr [rbp + 208], rax
 jmp xchain00074_n21_α
 xchain00074_n19_β:
 jmp xchain00074_n7_β
# IR_LIT_STRING
 xchain00074_n20_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain00074_n23_α
 xchain00074_n20_β:
 jmp xchain00074_n7_β
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "gedsub"
# IR_MOVE_LABEL
 xchain00074_n21_α:
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 168], rax
 lea rax, [rip + xchain00074_n22_α]
 mov qword ptr [rbp + 176], rax
 jmp xchain00074_n7_β
 xchain00074_n21_β:
 jmp xchain00074_n7_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00074_n22_α:
 jmp qword ptr [rbp + 208]
 xchain00074_n22_β:
 jmp xchain00074_n7_β
# IR_VAR
 xchain00074_n23_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 408], rax
 jmp xchain00074_n25_α
 xchain00074_n23_β:
 jmp xchain00074_n7_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00074_n24_α:
 jmp qword ptr [rbp + 176]
 xchain00074_n24_β:
 jmp xchain00074_n7_β
# IR_VAR
 xchain00074_n25_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 440], rax
 jmp xchain00074_n26_α
 xchain00074_n25_β:
 jmp xchain00074_n7_β
 xchain00074_n26_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn406: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn406]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain00074_n7_β
 jmp xchain00074_n27_α
 xchain00074_n26_β:
 jmp xchain00074_n7_β
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00074_n27_α:
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 288], 0
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 call rt_call_apply_spine_prep@PLT
 test rax, rax
 je .Lx00081_7
 lea rcx, [rip + .Lx00081_3]
 lea rdx, [rip + .Lx00081_4]
 jmp rax
.Lx00081_3:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx00081_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00081_2
.Lx00081_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00081_2
.Lx00081_4:
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx00081_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00081_2
.Lx00081_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00081_2
.Lx00081_7:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 272]
 mov rcx, qword ptr [rbp + 280]
 lea r8, [rbp + 288]
 call rt_call_apply_gen_h@PLT
.Lx00081_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain00074_n7_β
 jmp xchain00074_n28_α
 xchain00074_n27_β:
 mov rax, qword ptr [rbp + 288]
 cmp rax, 1
 jne .Lx00081_8
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx00081_8:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 288]
 call rt_call_value_resume_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 cmp eax, 99
 je xchain00074_n7_β
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain00074_n28_α
 jmp xchain00074_n7_β
# IR_SUSPEND yield+resume
 xchain00074_n28_α:
 lea rax, [rip + xchain00074_n28_β]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00074_n28_β:
 jmp xchain00074_n27_β
proc_gedsub_res:
add rsp, 8
pop rbp
proc_gedsub_β:
jmp qword ptr [rbp + 880]
proc_gedsub_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedsub_res]
push rax
mov rax, [rbp + 952]
mov rbp, [rbp + 968]
jmp rax
proc_gedsub_ω:
mov rax, [rbp + 960]
lea rsp, [rbp + 976]
mov rbp, [rbp + 968]
jmp rax
  .globl proc_gedval_α
proc_gedval_α:
#=======================================================================================================================
    .global proc_gedval_α
    .global proc_gedval_β
    .global proc_gedval_γ
    .global proc_gedval_ω
  sub rsp, 272
  mov [rsp + 248], rcx
  mov [rsp + 256], rdx
  mov [rsp + 264], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 240
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 232], rsp
  mov rdi, rsp
  mov esi, 240
  call rt_jmp_frame_lexprep@PLT
proc_gedval_α_body:
lea rax, [rip + xchain00082_n4_β]
mov qword ptr [rbp + 208], rax
# IR_LIT_STRING
 xchain00082_n0_α:
 mov qword ptr [rbp + 64], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00082_n1_α
 xchain00082_n0_β:
 jmp proc_gedval_ω
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "gedsub"
# IR_VAR
 xchain00082_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00082_n2_α
 xchain00082_n1_β:
 jmp proc_gedval_ω
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00082_n2_α:
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 120], rax
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 128], 0
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 mov rdx, qword ptr [rbp + 112]
 mov rcx, qword ptr [rbp + 120]
 call rt_call_apply_spine_prep@PLT
 test rax, rax
 je .Lx00084_7
 lea rcx, [rip + .Lx00084_3]
 lea rdx, [rip + .Lx00084_4]
 jmp rax
.Lx00084_3:
 mov qword ptr [rbp + 136], rsp
 mov rax, qword ptr [rbp + 128]
 test rax, rax
 jne .Lx00084_5
 mov qword ptr [rbp + 128], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00084_2
.Lx00084_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00084_2
.Lx00084_4:
 mov qword ptr [rbp + 136], rsp
 mov rax, qword ptr [rbp + 128]
 test rax, rax
 jne .Lx00084_6
 mov qword ptr [rbp + 128], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00084_2
.Lx00084_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00084_2
.Lx00084_7:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 mov rdx, qword ptr [rbp + 112]
 mov rcx, qword ptr [rbp + 120]
 lea r8, [rbp + 128]
 call rt_call_apply_gen_h@PLT
.Lx00084_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_gedval_ω
 jmp xchain00082_n3_α
 xchain00082_n2_β:
 mov rax, qword ptr [rbp + 128]
 cmp rax, 1
 jne .Lx00084_8
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 136]
 jmp qword ptr [rsp]
.Lx00084_8:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 128]
 call rt_call_value_resume_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 cmp eax, 99
 je proc_gedval_ω
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00082_n3_α
 jmp proc_gedval_ω
# IR_FIELD_GET
 xchain00082_n3_α:
 mov rdi, qword ptr [rip + .Lx00085_0]
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedval_ω
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00082_n4_α
 xchain00082_n3_β:
 jmp proc_gedval_ω
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "data"
# IR_SUSPEND yield+resume
 xchain00082_n4_α:
 lea rax, [rip + xchain00082_n4_β]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedval_γ
 xchain00082_n4_β:
 jmp xchain00082_n2_β
proc_gedval_res:
add rsp, 8
pop rbp
proc_gedval_β:
jmp qword ptr [rbp + 208]
proc_gedval_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedval_res]
push rax
mov rax, [rbp + 248]
mov rbp, [rbp + 264]
jmp rax
proc_gedval_ω:
mov rax, [rbp + 256]
lea rsp, [rbp + 272]
mov rbp, [rbp + 264]
jmp rax
  .globl proc_gedref_α
proc_gedref_α:
#=======================================================================================================================
    .global proc_gedref_α
    .global proc_gedref_β
    .global proc_gedref_γ
    .global proc_gedref_ω
  sub rsp, 304
  mov [rsp + 280], rcx
  mov [rsp + 288], rdx
  mov [rsp + 296], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 272
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 264], rsp
  mov rdi, rsp
  mov esi, 272
  call rt_jmp_frame_lexprep@PLT
proc_gedref_α_body:
lea rax, [rip + xchain00086_n5_β]
mov qword ptr [rbp + 240], rax
# IR_LIT_STRING
 xchain00086_n0_α:
 mov qword ptr [rbp + 96], 1
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [rbp + 104], rax
 jmp xchain00086_n1_α
 xchain00086_n0_β:
 jmp proc_gedref_ω
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "gedsub"
# IR_VAR
 xchain00086_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain00086_n2_α
 xchain00086_n1_β:
 jmp proc_gedref_ω
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00086_n2_α:
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 152], rax
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 160], 0
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call rt_call_apply_spine_prep@PLT
 test rax, rax
 je .Lx00088_7
 lea rcx, [rip + .Lx00088_3]
 lea rdx, [rip + .Lx00088_4]
 jmp rax
.Lx00088_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00088_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00088_2
.Lx00088_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00088_2
.Lx00088_4:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00088_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00088_2
.Lx00088_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00088_2
.Lx00088_7:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 lea r8, [rbp + 160]
 call rt_call_apply_gen_h@PLT
.Lx00088_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_gedref_ω
 jmp xchain00086_n3_α
 xchain00086_n2_β:
 mov rax, qword ptr [rbp + 160]
 cmp rax, 1
 jne .Lx00088_8
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx00088_8:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 160]
 call rt_call_value_resume_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 cmp eax, 99
 je proc_gedref_ω
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain00086_n3_α
 jmp proc_gedref_ω
# IR_FIELD_GET
 xchain00086_n3_α:
 mov rdi, qword ptr [rip + .Lx00089_0]
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedref_ω
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00086_n4_α
 xchain00086_n3_β:
 jmp proc_gedref_ω
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "ref"
# IR_UNOP
 xchain00086_n4_α:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 99
 je proc_gedref_ω
 cmp eax, 0
 je proc_gedref_ω
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
 jmp xchain00086_n5_α
 xchain00086_n4_β:
 jmp proc_gedref_ω
# IR_SUSPEND yield+resume
 xchain00086_n5_α:
 lea rax, [rip + xchain00086_n5_β]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedref_γ
 xchain00086_n5_β:
 jmp xchain00086_n2_β
proc_gedref_res:
add rsp, 8
pop rbp
proc_gedref_β:
jmp qword ptr [rbp + 240]
proc_gedref_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedref_res]
push rax
mov rax, [rbp + 280]
mov rbp, [rbp + 296]
jmp rax
proc_gedref_ω:
mov rax, [rbp + 288]
lea rsp, [rbp + 304]
mov rbp, [rbp + 296]
jmp rax
  .globl proc_gedfnf_α
proc_gedfnf_α:
#=======================================================================================================================
    .global proc_gedfnf_α
    .global proc_gedfnf_β
    .global proc_gedfnf_γ
    .global proc_gedfnf_ω
  sub rsp, 1680
  mov [rsp + 1656], rcx
  mov [rsp + 1664], rdx
  mov [rsp + 1672], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1648
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1592], rsp
  mov rdi, rsp
  mov esi, 1648
  call rt_jmp_frame_lexprep@PLT
proc_gedfnf_α_body:
# IR_VAR
 xchain00090_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00090_n1_α
 xchain00090_n0_β:
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00090_n1_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00090_n2_α
 xchain00090_n1_β:
 jmp proc_gedfnf_ω
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "NAME"
 xchain00090_n2_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 1488], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00092_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00092_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00092_3]
 lea rdx, [rip + .Lx00092_4]
 jmp rax
.Lx00092_3:
 mov qword ptr [rbp + 1496], rsp
 mov rax, qword ptr [rbp + 1488]
 test rax, rax
 jne .Lx00092_5
 mov qword ptr [rbp + 1488], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00092_2
.Lx00092_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00092_2
.Lx00092_4:
 mov rax, qword ptr [rbp + 1488]
 test rax, rax
 jne .Lx00092_6
 mov qword ptr [rbp + 1488], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00092_2
.Lx00092_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00092_2
.Lx00092_1:
 call rt_faildescr@PLT
.Lx00092_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00090_n3_α
 xchain00090_n2_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1496]
 jmp qword ptr [rsp]
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "gedval"
# IR_MOVE_LABEL
 xchain00090_n3_α:
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1416], rax
 lea rax, [rip + xchain00090_n2_β]
 mov qword ptr [rbp + 1424], rax
 jmp xchain00090_n4_α
 xchain00090_n3_β:
 jmp xchain00090_n6_α
 xchain00090_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00090_n6_α
 xchain00090_n4_β:
 jmp xchain00090_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00090_n5_α:
 jmp qword ptr [rbp + 1424]
 xchain00090_n5_β:
 jmp xchain00090_n6_α
# IR_VAR
 xchain00090_n6_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00090_n7_α
 xchain00090_n6_β:
 jmp xchain00090_n8_α
# IR_GEN_SCAN
 xchain00090_n7_α:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00090_n9_α
 xchain00090_n7_β:
 jmp xchain00090_n8_α
# IR_VAR
 xchain00090_n8_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 680], rax
 jmp xchain00090_n10_α
 xchain00090_n8_β:
 jmp xchain00090_n11_α
# IR_LIT_CHARSET
 xchain00090_n9_α:
 mov qword ptr [rbp + 1328], 1
 mov dword ptr [rbp + 1332], -1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00090_n12_α
 xchain00090_n9_β:
 jmp xchain00090_n22_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "/"
# IR_UNOP
 xchain00090_n10_α:
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 call rt_size_d@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00090_n13_α
 xchain00090_n10_β:
 jmp xchain00090_n11_α
# IR_VAR
 xchain00090_n11_α:
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 584], rax
 jmp xchain00090_n14_α
 xchain00090_n11_β:
 jmp xchain00090_n15_α
# IR_SCAN_UPTO
 xchain00090_n12_α:
 mov qword ptr [rbp + 1312], r14
.Lx00094_0:
 mov rax, qword ptr [rbp + 1312]
 cmp rax, r15
 jge xchain00090_n22_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00094_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00094_1
 mov qword ptr [rbp + 1296], 6
 add rax, 1
 mov qword ptr [rbp + 1304], rax
 jmp xchain00090_n16_α
.Lx00094_1:
 inc qword ptr [rbp + 1312]
 jmp .Lx00094_0
 xchain00090_n12_β:
 inc qword ptr [rbp + 1312]
 jmp .Lx00094_0
.Lx00094_2:
 .quad .Lx00094_2_s
.Lx00094_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00090_n13_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00090_n17_α
 xchain00090_n13_β:
 jmp xchain00090_n11_α
.Lx00095_0:
 .quad 0
 xchain00090_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00090_n18_α
 xchain00090_n14_β:
 jmp xchain00090_n15_α
# IR_VAR
 xchain00090_n15_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 120], rax
 jmp xchain00090_n19_α
 xchain00090_n15_β:
 jmp xchain00090_n20_α
# IR_SCAN_TAB
 xchain00090_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1304]
 cmp rax, 1
 jge .Lx00096_0
 add rax, r15
 add rax, 1
.Lx00096_0:
 cmp rax, 1
 jge .Lx00096_239
 add rsp, 16
 jmp xchain00090_n22_α
.Lx00096_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00096_240
 add rsp, 16
 jmp xchain00090_n22_α
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
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain00090_n21_α
 xchain00090_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00090_n22_α
 xchain00090_n17_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx00097_0
 mov eax, dword ptr [rbp + 704]
 cmp eax, 100
 je .Lx00097_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx00097_2
 mov eax, dword ptr [rbp + 704]
 cmp eax, 6
 jne .Lx00097_2
.Lx00097_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, qword ptr [rbp + 712]
 cmp rax, rcx
 jle xchain00090_n11_α
 mov rcx, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rcx
 mov rcx, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rcx
 jmp xchain00090_n23_α
.Lx00097_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 mov r8d, 7
 lea r9, [rbp + 608]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00097_1
 cmp eax, 1
 je xchain00090_n11_α
 jmp xchain00090_n23_α
.Lx00097_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00090_n11_α
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rax
 jmp xchain00090_n23_α
 xchain00090_n17_β:
 jmp xchain00090_n11_α
# IR_MOVE_LABEL
 xchain00090_n18_α:
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 360], rax
 lea rax, [rip + xchain00090_n15_α]
 mov qword ptr [rbp + 368], rax
 jmp xchain00090_n15_α
 xchain00090_n18_β:
 jmp xchain00090_n15_α
# IR_LIT_STRING
 xchain00090_n19_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00090_n25_α
 xchain00090_n19_β:
 jmp xchain00090_n20_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string " "
# IR_VAR
 xchain00090_n20_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 40], rax
 jmp xchain00090_n26_α
 xchain00090_n20_β:
 jmp proc_gedfnf_ω
 xchain00090_n21_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn466: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn466]
 lea rsi, [rbp + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain00090_n22_α
 jmp xchain00090_n27_α
 xchain00090_n21_β:
 jmp xchain00090_n22_α
# IR_LIT_INTEGER
 xchain00090_n22_α:
 mov qword ptr [rbp + 1184], 6
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00090_n28_α
 xchain00090_n22_β:
 jmp proc_gedfnf_ω
.Lx00099_0:
 .quad 0
# IR_VAR
 xchain00090_n23_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 472], rax
 jmp xchain00090_n29_α
 xchain00090_n23_β:
 jmp xchain00090_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00090_n24_α:
 jmp qword ptr [rbp + 368]
 xchain00090_n24_β:
 jmp xchain00090_n15_α
# IR_VAR
 xchain00090_n25_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00090_n30_α
 xchain00090_n25_β:
 jmp xchain00090_n20_α
# IR_RETURN
 xchain00090_n26_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
# IR_MOVE_LABEL
 xchain00090_n27_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1128], rax
 lea rax, [rip + xchain00090_n22_α]
 mov qword ptr [rbp + 1136], rax
 jmp xchain00090_n31_α
 xchain00090_n27_β:
 jmp xchain00090_n36_α
# IR_SCAN_TAB
 xchain00090_n28_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00100_0
 add rax, r15
 add rax, 1
.Lx00100_0:
 cmp rax, 1
 jge .Lx00100_239
 add rsp, 16
 jmp proc_gedfnf_ω
.Lx00100_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00100_240
 add rsp, 16
 jmp proc_gedfnf_ω
.Lx00100_240:
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
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00090_n33_α
 xchain00090_n28_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00090_n29_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00090_n34_α
 xchain00090_n29_β:
 jmp xchain00090_n15_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string " "
# IR_LIT_STRING
 xchain00090_n30_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00090_n35_α
 xchain00090_n30_β:
 jmp xchain00090_n20_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "TITL"
 xchain00090_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00090_n36_α
 xchain00090_n31_β:
 jmp xchain00090_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00090_n32_α:
 jmp qword ptr [rbp + 1136]
 xchain00090_n32_β:
 jmp xchain00090_n36_α
# IR_RETURN
 xchain00090_n33_α:
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
 xchain00090_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call str_concat_d@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00090_n37_α
 xchain00090_n34_β:
 jmp xchain00090_n15_α
 xchain00090_n35_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 256], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00103_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00103_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00103_3]
 lea rdx, [rip + .Lx00103_4]
 jmp rax
.Lx00103_3:
 mov qword ptr [rbp + 264], rsp
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00103_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00103_2
.Lx00103_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00103_2
.Lx00103_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00103_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00103_2
.Lx00103_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00103_2
.Lx00103_1:
 call rt_faildescr@PLT
.Lx00103_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00090_n20_α
 jmp xchain00090_n38_α
 xchain00090_n35_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 264]
 jmp qword ptr [rsp]
.Lx00103_0:
 .quad .Lx00103_0_s
.Lx00103_0_s:
 .string "gedval"
# IR_LIT_STRING
 xchain00090_n36_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00090_n39_α
 xchain00090_n36_β:
 jmp xchain00090_n43_α
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "/"
# IR_VAR
 xchain00090_n37_α:
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 536], rax
 jmp xchain00090_n40_α
 xchain00090_n37_β:
 jmp xchain00090_n15_α
 xchain00090_n38_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00090_n41_α
 xchain00090_n38_β:
 jmp xchain00090_n20_α
# IR_SCAN_MATCH
 xchain00090_n39_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00105_239
 add rsp, 16
 jmp xchain00090_n43_α
.Lx00105_239:
 mov rdi, qword ptr [rip + .Lx00105_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00105_240
 add rsp, 16
 jmp xchain00090_n43_α
.Lx00105_240:
 mov qword ptr [rbp + 1040], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 1048], rax
 jmp xchain00090_n42_α
 xchain00090_n39_β:
 add rsp, 16
 jmp xchain00090_n43_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "/"
 xchain00090_n40_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 1632]
 mov rcx, qword ptr [rbp + 1640]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00090_n44_α
 xchain00090_n40_β:
 jmp xchain00090_n15_α
 xchain00090_n41_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00090_n45_α
 xchain00090_n41_β:
 jmp xchain00090_n20_α
# IR_SCAN_TAB
 xchain00090_n42_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1048]
 cmp rax, 1
 jge .Lx00106_0
 add rax, r15
 add rax, 1
.Lx00106_0:
 cmp rax, 1
 jge .Lx00106_239
 add rsp, 16
 jmp xchain00090_n43_α
.Lx00106_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00106_240
 add rsp, 16
 jmp xchain00090_n43_α
.Lx00106_240:
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
 jmp xchain00090_n43_α
 xchain00090_n42_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00090_n43_α
# IR_LIT_CHARSET
 xchain00090_n43_α:
 mov qword ptr [rbp + 976], 1
 mov dword ptr [rbp + 980], -1
 mov rax, qword ptr [rip + .Lx00107_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00090_n46_α
 xchain00090_n43_β:
 jmp xchain00090_n50_α
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "/"
 xchain00090_n44_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00090_n47_α
 xchain00090_n44_β:
 jmp xchain00090_n15_α
 xchain00090_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00090_n20_α
 xchain00090_n45_β:
 jmp xchain00090_n20_α
# IR_SCAN_UPTO
 xchain00090_n46_α:
 mov qword ptr [rbp + 960], r14
.Lx00108_0:
 mov rax, qword ptr [rbp + 960]
 cmp rax, r15
 jge xchain00090_n50_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00108_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00108_1
 mov qword ptr [rbp + 944], 6
 add rax, 1
 mov qword ptr [rbp + 952], rax
 jmp xchain00090_n48_α
.Lx00108_1:
 inc qword ptr [rbp + 960]
 jmp .Lx00108_0
 xchain00090_n46_β:
 inc qword ptr [rbp + 960]
 jmp .Lx00108_0
.Lx00108_2:
 .quad .Lx00108_2_s
.Lx00108_2_s:
 .string "/"
# IR_MOVE_LABEL
 xchain00090_n47_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
 lea rax, [rip + xchain00090_n15_α]
 mov qword ptr [rbp + 368], rax
 jmp xchain00090_n15_α
 xchain00090_n47_β:
 jmp xchain00090_n15_α
# IR_MOVE_LABEL
 xchain00090_n48_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
 lea rax, [rip + xchain00090_n50_α]
 mov qword ptr [rbp + 896], rax
 jmp xchain00090_n49_α
 xchain00090_n48_β:
 jmp xchain00090_n56_α
# IR_SCAN_TAB
 xchain00090_n49_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 888]
 cmp rax, 1
 jge .Lx00109_0
 add rax, r15
 add rax, 1
.Lx00109_0:
 cmp rax, 1
 jge .Lx00109_239
 add rsp, 16
 jmp xchain00090_n56_α
.Lx00109_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00109_240
 add rsp, 16
 jmp xchain00090_n56_α
.Lx00109_240:
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
 jmp xchain00090_n52_α
 xchain00090_n49_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00090_n56_α
# IR_LIT_INTEGER
 xchain00090_n50_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00090_n54_α
 xchain00090_n50_β:
 jmp xchain00090_n56_α
.Lx00110_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00090_n51_α:
 jmp qword ptr [rbp + 896]
 xchain00090_n51_β:
 jmp xchain00090_n56_α
 xchain00090_n52_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00090_n55_α
 xchain00090_n52_β:
 jmp xchain00090_n56_α
 xchain00090_n53_α:
 jmp xchain00090_n56_α
xchain00090_n53_β:
 jmp xchain00090_n56_α
# IR_MOVE_LABEL
 xchain00090_n54_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
 lea rax, [rip + xchain00090_n53_α]
 mov qword ptr [rbp + 896], rax
 jmp xchain00090_n49_α
 xchain00090_n54_β:
 jmp xchain00090_n56_α
 xchain00090_n55_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 824], rax
 jmp xchain00090_n57_α
xchain00090_n55_β:
 jmp xchain00090_n56_α
# IR_GEN_SCAN
 xchain00090_n56_α:
 lea rdi, [rbp + 752]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 752]
 mov r14, qword ptr [rbp + 760]
 mov r15, qword ptr [rbp + 768]
 jmp xchain00090_n8_α
 xchain00090_n56_β:
 jmp xchain00090_n8_α
# IR_GEN_SCAN
 xchain00090_n57_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rdi, [rbp + 752]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 752]
 mov r14, qword ptr [rbp + 760]
 mov r15, qword ptr [rbp + 768]
 jmp xchain00090_n8_α
 xchain00090_n57_β:
 jmp xchain00090_n8_α
proc_gedfnf_res:
add rsp, 8
pop rbp
proc_gedfnf_β:
jmp proc_gedfnf_ω
proc_gedfnf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1656]
lea rsp, [rbp + 1680]
mov rbp, [rbp + 1672]
jmp rax
proc_gedfnf_ω:
mov rax, [rbp + 1664]
lea rsp, [rbp + 1680]
mov rbp, [rbp + 1672]
jmp rax
  .globl proc_gedlnf_α
proc_gedlnf_α:
#=======================================================================================================================
    .global proc_gedlnf_α
    .global proc_gedlnf_β
    .global proc_gedlnf_γ
    .global proc_gedlnf_ω
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
proc_gedlnf_α_body:
# IR_VAR
 xchain00111_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00111_n1_α
 xchain00111_n0_β:
 jmp proc_gedlnf_ω
# IR_LIT_STRING
 xchain00111_n1_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00111_n2_α
 xchain00111_n1_β:
 jmp proc_gedlnf_ω
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "NAME"
 xchain00111_n2_α:
 mov qword ptr [rbp + 1280], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00113_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00113_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00113_3]
 lea rdx, [rip + .Lx00113_4]
 jmp rax
.Lx00113_3:
 mov qword ptr [rbp + 1288], rsp
 mov rax, qword ptr [rbp + 1280]
 test rax, rax
 jne .Lx00113_5
 mov qword ptr [rbp + 1280], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00113_2
.Lx00113_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00113_2
.Lx00113_4:
 mov rax, qword ptr [rbp + 1280]
 test rax, rax
 jne .Lx00113_6
 mov qword ptr [rbp + 1280], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00113_2
.Lx00113_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00113_2
.Lx00113_1:
 call rt_faildescr@PLT
.Lx00113_2:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00111_n3_α
 xchain00111_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1288]
 jmp qword ptr [rsp]
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "gedval"
# IR_MOVE_LABEL
 xchain00111_n3_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
 lea rax, [rip + xchain00111_n2_β]
 mov qword ptr [rbp + 1216], rax
 jmp xchain00111_n4_α
 xchain00111_n3_β:
 jmp xchain00111_n6_α
 xchain00111_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00111_n6_α
 xchain00111_n4_β:
 jmp xchain00111_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00111_n5_α:
 jmp qword ptr [rbp + 1216]
 xchain00111_n5_β:
 jmp xchain00111_n6_α
# IR_VAR
 xchain00111_n6_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00111_n7_α
 xchain00111_n6_β:
 jmp xchain00111_n8_α
# IR_GEN_SCAN
 xchain00111_n7_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00111_n9_α
 xchain00111_n7_β:
 jmp xchain00111_n8_α
# IR_VAR
 xchain00111_n8_α:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 440], rax
 jmp xchain00111_n10_α
 xchain00111_n8_β:
 jmp xchain00111_n11_α
# IR_LIT_CHARSET
 xchain00111_n9_α:
 mov qword ptr [rbp + 1120], 1
 mov dword ptr [rbp + 1124], -1
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00111_n12_α
 xchain00111_n9_β:
 jmp xchain00111_n21_α
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "/"
# IR_LIT_STRING
 xchain00111_n10_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00111_n13_α
 xchain00111_n10_β:
 jmp xchain00111_n11_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string ", "
# IR_VAR
 xchain00111_n11_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 120], rax
 jmp xchain00111_n14_α
 xchain00111_n11_β:
 jmp xchain00111_n15_α
# IR_SCAN_UPTO
 xchain00111_n12_α:
 mov qword ptr [rbp + 1104], r14
.Lx00116_0:
 mov rax, qword ptr [rbp + 1104]
 cmp rax, r15
 jge xchain00111_n21_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00116_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00116_1
 mov qword ptr [rbp + 1088], 6
 add rax, 1
 mov qword ptr [rbp + 1096], rax
 jmp xchain00111_n16_α
.Lx00116_1:
 inc qword ptr [rbp + 1104]
 jmp .Lx00116_0
 xchain00111_n12_β:
 inc qword ptr [rbp + 1104]
 jmp .Lx00116_0
.Lx00116_2:
 .quad .Lx00116_2_s
.Lx00116_2_s:
 .string "/"
 xchain00111_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1408]
 mov rsi, qword ptr [rbp + 1416]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00111_n17_α
 xchain00111_n13_β:
 jmp xchain00111_n11_α
# IR_LIT_STRING
 xchain00111_n14_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00111_n18_α
 xchain00111_n14_β:
 jmp xchain00111_n15_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string " "
# IR_VAR
 xchain00111_n15_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 40], rax
 jmp xchain00111_n19_α
 xchain00111_n15_β:
 jmp proc_gedlnf_ω
# IR_SCAN_TAB
 xchain00111_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1096]
 cmp rax, 1
 jge .Lx00118_0
 add rax, r15
 add rax, 1
.Lx00118_0:
 cmp rax, 1
 jge .Lx00118_239
 add rsp, 16
 jmp xchain00111_n21_α
.Lx00118_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00118_240
 add rsp, 16
 jmp xchain00111_n21_α
.Lx00118_240:
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
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain00111_n20_α
 xchain00111_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00111_n21_α
# IR_VAR
 xchain00111_n17_α:
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 504], rax
 jmp xchain00111_n22_α
 xchain00111_n17_β:
 jmp xchain00111_n11_α
# IR_VAR
 xchain00111_n18_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00111_n23_α
 xchain00111_n18_β:
 jmp xchain00111_n15_α
# IR_RETURN
 xchain00111_n19_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
 xchain00111_n20_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1032], rax
  .section .rodata
  .Lrkfn556: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn556]
 lea rsi, [rbp + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain00111_n21_α
 jmp xchain00111_n24_α
 xchain00111_n20_β:
 jmp xchain00111_n21_α
# IR_LIT_INTEGER
 xchain00111_n21_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00111_n25_α
 xchain00111_n21_β:
 jmp proc_gedlnf_ω
.Lx00119_0:
 .quad 0
 xchain00111_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 call str_concat_d@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00111_n26_α
 xchain00111_n22_β:
 jmp xchain00111_n11_α
# IR_LIT_STRING
 xchain00111_n23_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00111_n27_α
 xchain00111_n23_β:
 jmp xchain00111_n15_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "TITL"
# IR_MOVE_LABEL
 xchain00111_n24_α:
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 920], rax
 lea rax, [rip + xchain00111_n21_α]
 mov qword ptr [rbp + 928], rax
 jmp xchain00111_n28_α
 xchain00111_n24_β:
 jmp xchain00111_n32_α
# IR_SCAN_TAB
 xchain00111_n25_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00121_0
 add rax, r15
 add rax, 1
.Lx00121_0:
 cmp rax, 1
 jge .Lx00121_239
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00121_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00121_240
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00121_240:
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
 jmp xchain00111_n30_α
 xchain00111_n25_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedlnf_ω
 xchain00111_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00111_n11_α
 xchain00111_n26_β:
 jmp xchain00111_n11_α
 xchain00111_n27_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 256], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00122_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00122_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00122_3]
 lea rdx, [rip + .Lx00122_4]
 jmp rax
.Lx00122_3:
 mov qword ptr [rbp + 264], rsp
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00122_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00122_2
.Lx00122_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00122_2
.Lx00122_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00122_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00122_2
.Lx00122_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00122_2
.Lx00122_1:
 call rt_faildescr@PLT
.Lx00122_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00111_n15_α
 jmp xchain00111_n31_α
 xchain00111_n27_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 264]
 jmp qword ptr [rsp]
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "gedval"
 xchain00111_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00111_n32_α
 xchain00111_n28_β:
 jmp xchain00111_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00111_n29_α:
 jmp qword ptr [rbp + 928]
 xchain00111_n29_β:
 jmp xchain00111_n32_α
# IR_RETURN
 xchain00111_n30_α:
 mov rax, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
 xchain00111_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00111_n33_α
 xchain00111_n31_β:
 jmp xchain00111_n15_α
# IR_LIT_STRING
 xchain00111_n32_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00111_n34_α
 xchain00111_n32_β:
 jmp xchain00111_n37_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "/"
 xchain00111_n33_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00111_n35_α
 xchain00111_n33_β:
 jmp xchain00111_n15_α
# IR_SCAN_MATCH
 xchain00111_n34_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00124_239
 add rsp, 16
 jmp xchain00111_n37_α
.Lx00124_239:
 mov rdi, qword ptr [rip + .Lx00124_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00124_240
 add rsp, 16
 jmp xchain00111_n37_α
.Lx00124_240:
 mov qword ptr [rbp + 832], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 840], rax
 jmp xchain00111_n36_α
 xchain00111_n34_β:
 add rsp, 16
 jmp xchain00111_n37_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "/"
 xchain00111_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00111_n15_α
 xchain00111_n35_β:
 jmp xchain00111_n15_α
# IR_SCAN_TAB
 xchain00111_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 840]
 cmp rax, 1
 jge .Lx00125_0
 add rax, r15
 add rax, 1
.Lx00125_0:
 cmp rax, 1
 jge .Lx00125_239
 add rsp, 16
 jmp xchain00111_n37_α
.Lx00125_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00125_240
 add rsp, 16
 jmp xchain00111_n37_α
.Lx00125_240:
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
 jmp xchain00111_n37_α
 xchain00111_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00111_n37_α
# IR_LIT_CHARSET
 xchain00111_n37_α:
 mov qword ptr [rbp + 768], 1
 mov dword ptr [rbp + 772], -1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00111_n38_α
 xchain00111_n37_β:
 jmp xchain00111_n41_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string "/"
# IR_SCAN_UPTO
 xchain00111_n38_α:
 mov qword ptr [rbp + 752], r14
.Lx00127_0:
 mov rax, qword ptr [rbp + 752]
 cmp rax, r15
 jge xchain00111_n41_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00127_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00127_1
 mov qword ptr [rbp + 736], 6
 add rax, 1
 mov qword ptr [rbp + 744], rax
 jmp xchain00111_n39_α
.Lx00127_1:
 inc qword ptr [rbp + 752]
 jmp .Lx00127_0
 xchain00111_n38_β:
 inc qword ptr [rbp + 752]
 jmp .Lx00127_0
.Lx00127_2:
 .quad .Lx00127_2_s
.Lx00127_2_s:
 .string "/"
# IR_MOVE_LABEL
 xchain00111_n39_α:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + xchain00111_n41_α]
 mov qword ptr [rbp + 688], rax
 jmp xchain00111_n40_α
 xchain00111_n39_β:
 jmp xchain00111_n47_α
# IR_SCAN_TAB
 xchain00111_n40_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 680]
 cmp rax, 1
 jge .Lx00128_0
 add rax, r15
 add rax, 1
.Lx00128_0:
 cmp rax, 1
 jge .Lx00128_239
 add rsp, 16
 jmp xchain00111_n47_α
.Lx00128_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00128_240
 add rsp, 16
 jmp xchain00111_n47_α
.Lx00128_240:
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
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00111_n43_α
 xchain00111_n40_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00111_n47_α
# IR_LIT_INTEGER
 xchain00111_n41_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00111_n45_α
 xchain00111_n41_β:
 jmp xchain00111_n47_α
.Lx00129_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00111_n42_α:
 jmp qword ptr [rbp + 688]
 xchain00111_n42_β:
 jmp xchain00111_n47_α
 xchain00111_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00111_n46_α
 xchain00111_n43_β:
 jmp xchain00111_n47_α
 xchain00111_n44_α:
 jmp xchain00111_n47_α
xchain00111_n44_β:
 jmp xchain00111_n47_α
# IR_MOVE_LABEL
 xchain00111_n45_α:
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + xchain00111_n44_α]
 mov qword ptr [rbp + 688], rax
 jmp xchain00111_n40_α
 xchain00111_n45_β:
 jmp xchain00111_n47_α
 xchain00111_n46_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 616], rax
 jmp xchain00111_n48_α
xchain00111_n46_β:
 jmp xchain00111_n47_α
# IR_GEN_SCAN
 xchain00111_n47_α:
 lea rdi, [rbp + 544]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 544]
 mov r14, qword ptr [rbp + 552]
 mov r15, qword ptr [rbp + 560]
 jmp xchain00111_n8_α
 xchain00111_n47_β:
 jmp xchain00111_n8_α
# IR_GEN_SCAN
 xchain00111_n48_α:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
 lea rdi, [rbp + 544]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 544]
 mov r14, qword ptr [rbp + 552]
 mov r15, qword ptr [rbp + 560]
 jmp xchain00111_n8_α
 xchain00111_n48_β:
 jmp xchain00111_n8_α
proc_gedlnf_res:
add rsp, 8
pop rbp
proc_gedlnf_β:
jmp proc_gedlnf_ω
proc_gedlnf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1448]
lea rsp, [rbp + 1472]
mov rbp, [rbp + 1464]
jmp rax
proc_gedlnf_ω:
mov rax, [rbp + 1456]
lea rsp, [rbp + 1472]
mov rbp, [rbp + 1464]
jmp rax
  .globl proc_geddate_α
proc_geddate_α:
#=======================================================================================================================
    .global proc_geddate_α
    .global proc_geddate_β
    .global proc_geddate_γ
    .global proc_geddate_ω
  sub rsp, 4384
  mov [rsp + 4360], rcx
  mov [rsp + 4368], rdx
  mov [rsp + 4376], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 4352
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 4296], rsp
  mov rdi, rsp
  mov esi, 4352
  call rt_jmp_frame_lexprep@PLT
proc_geddate_α_body:
# IR_VAR_REF
 xchain00130_n0_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain00130_n1_α
 xchain00130_n0_β:
 jmp xchain00130_n3_α
# IR_NULLTEST_VAR
 xchain00130_n1_α:
 mov eax, dword ptr [rbp + 4176]
 cmp eax, 99
 je xchain00130_n3_α
 mov rdi, qword ptr [rbp + 4176]
 mov rsi, qword ptr [rbp + 4184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00130_n3_α
 cmp eax, 0
 jne xchain00130_n3_α
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4216], rax
 jmp xchain00130_n2_α
 xchain00130_n1_β:
 jmp xchain00130_n3_α
# IR_LIT_INTEGER
 xchain00130_n2_α:
 mov qword ptr [rbp + 4256], 6
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain00130_n4_α
 xchain00130_n2_β:
 jmp xchain00130_n3_α
.Lx00131_0:
 .quad 1
# IR_VAR
 xchain00130_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1544], rax
 jmp xchain00130_n5_α
 xchain00130_n3_β:
 jmp proc_geddate_ω
# IR_ASSIGN_VAR
 xchain00130_n4_α:
 mov rdi, qword ptr [rbp + 4208]
 mov rsi, qword ptr [rbp + 4216]
 mov rdx, qword ptr [rbp + 4256]
 mov rcx, qword ptr [rbp + 4264]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n3_α
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00130_n6_α
 xchain00130_n4_β:
 jmp xchain00130_n3_α
# IR_LIT_STRING
 xchain00130_n5_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00130_n7_α
 xchain00130_n5_β:
 jmp proc_geddate_ω
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "DATE"
 xchain00130_n6_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn608: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn608]
 lea rsi, [rbp + 4160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 cmp eax, 99
 je xchain00130_n9_α
 jmp xchain00130_n8_α
 xchain00130_n6_β:
 jmp xchain00130_n9_α
 xchain00130_n7_α:
 mov qword ptr [rbp + 1504], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1536]
 mov rdx, qword ptr [rbp + 1544]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00133_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00133_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00133_3]
 lea rdx, [rip + .Lx00133_4]
 jmp rax
.Lx00133_3:
 mov qword ptr [rbp + 1512], rsp
 mov rax, qword ptr [rbp + 1504]
 test rax, rax
 jne .Lx00133_5
 mov qword ptr [rbp + 1504], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00133_2
.Lx00133_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00133_2
.Lx00133_4:
 mov rax, qword ptr [rbp + 1504]
 test rax, rax
 jne .Lx00133_6
 mov qword ptr [rbp + 1504], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00133_2
.Lx00133_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00133_2
.Lx00133_1:
 call rt_faildescr@PLT
.Lx00133_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00130_n10_α
 xchain00130_n7_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1512]
 jmp qword ptr [rsp]
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "gedval"
# IR_ASSIGN gva
 xchain00130_n8_α:
 mov rax, qword ptr [rbp + 4144]
 mov rdx, qword ptr [rbp + 4152]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain00130_n9_α
 xchain00130_n8_β:
 jmp xchain00130_n9_α
# IR_VAR_REF
 xchain00130_n9_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 jmp xchain00130_n11_α
 xchain00130_n9_β:
 jmp xchain00130_n16_α
# IR_LIT_CHARSET
 xchain00130_n10_α:
 mov qword ptr [rbp + 1600], 1
 mov dword ptr [rbp + 1604], -1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00130_n12_α
 xchain00130_n10_β:
 jmp xchain00130_n7_β
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "\t\n "
# IR_LIT_STRING
 xchain00130_n11_α:
 mov qword ptr [rbp + 4016], 1
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [rbp + 4024], rax
 jmp xchain00130_n13_α
 xchain00130_n11_β:
 jmp xchain00130_n16_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "JAN"
 xchain00130_n12_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1408]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1424]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1432], rax
  .section .rodata
  .Lrkfn617: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn617]
 lea rsi, [rbp + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00130_n14_α
 xchain00130_n12_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00130_n13_α:
 mov rdi, qword ptr [rbp + 3984]
 mov rsi, qword ptr [rbp + 3992]
 mov rdx, qword ptr [rbp + 4016]
 mov rcx, qword ptr [rbp + 4024]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n16_α
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp xchain00130_n15_α
 xchain00130_n13_β:
 jmp xchain00130_n16_α
# IR_MOVE_LABEL
 xchain00130_n14_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 lea rax, [rip + xchain00130_n7_β]
 mov qword ptr [rbp + 1376], rax
 jmp xchain00130_n17_α
 xchain00130_n14_β:
 jmp xchain00130_n21_α
# IR_LIT_STRING
 xchain00130_n15_α:
 mov qword ptr [rbp + 4096], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 4104], rax
 jmp xchain00130_n19_α
 xchain00130_n15_β:
 jmp xchain00130_n16_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string "Jan"
# IR_VAR_REF
 xchain00130_n16_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00130_n20_α
 xchain00130_n16_β:
 jmp xchain00130_n25_α
 xchain00130_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00130_n21_α
 xchain00130_n17_β:
 jmp xchain00130_n21_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00130_n18_α:
 jmp qword ptr [rbp + 1376]
 xchain00130_n18_β:
 jmp xchain00130_n21_α
# IR_ASSIGN_VAR
 xchain00130_n19_α:
 mov rdi, qword ptr [rbp + 4048]
 mov rsi, qword ptr [rbp + 4056]
 mov rdx, qword ptr [rbp + 4096]
 mov rcx, qword ptr [rbp + 4104]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n16_α
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00130_n16_α
 xchain00130_n19_β:
 jmp xchain00130_n16_α
# IR_LIT_STRING
 xchain00130_n20_α:
 mov qword ptr [rbp + 3872], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00130_n22_α
 xchain00130_n20_β:
 jmp xchain00130_n25_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "FEB"
# IR_LIT_STRING
 xchain00130_n21_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00130_n23_α
 xchain00130_n21_β:
 jmp xchain00130_n26_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string ""
# IR_SUBSCRIPT x[i] variable
 xchain00130_n22_α:
 mov rdi, qword ptr [rbp + 3840]
 mov rsi, qword ptr [rbp + 3848]
 mov rdx, qword ptr [rbp + 3872]
 mov rcx, qword ptr [rbp + 3880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n25_α
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00130_n24_α
 xchain00130_n22_β:
 jmp xchain00130_n25_α
 xchain00130_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain00130_n26_α
 xchain00130_n23_β:
 jmp xchain00130_n26_α
# IR_LIT_STRING
 xchain00130_n24_α:
 mov qword ptr [rbp + 3952], 1
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [rbp + 3960], rax
 jmp xchain00130_n27_α
 xchain00130_n24_β:
 jmp xchain00130_n25_α
.Lx00139_0:
 .quad .Lx00139_0_s
.Lx00139_0_s:
 .string "Feb"
# IR_VAR_REF
 xchain00130_n25_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00130_n28_α
 xchain00130_n25_β:
 jmp xchain00130_n36_α
# IR_VAR
 xchain00130_n26_α:
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00130_n29_α
 xchain00130_n26_β:
 jmp xchain00130_n30_α
# IR_ASSIGN_VAR
 xchain00130_n27_α:
 mov rdi, qword ptr [rbp + 3904]
 mov rsi, qword ptr [rbp + 3912]
 mov rdx, qword ptr [rbp + 3952]
 mov rcx, qword ptr [rbp + 3960]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n25_α
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain00130_n25_α
 xchain00130_n27_β:
 jmp xchain00130_n25_α
# IR_LIT_STRING
 xchain00130_n28_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00130_n31_α
 xchain00130_n28_β:
 jmp xchain00130_n36_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "MAR"
# IR_GEN_SCAN
 xchain00130_n29_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00130_n32_α
 xchain00130_n29_β:
 jmp xchain00130_n30_α
# IR_VAR
 xchain00130_n30_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 392], rax
 jmp xchain00130_n33_α
 xchain00130_n30_β:
 jmp xchain00130_n34_α
# IR_SUBSCRIPT x[i] variable
 xchain00130_n31_α:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3728]
 mov rcx, qword ptr [rbp + 3736]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n36_α
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00130_n35_α
 xchain00130_n31_β:
 jmp xchain00130_n36_α
# IR_LIT_INTEGER
 xchain00130_n32_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00130_n37_α
 xchain00130_n32_β:
 jmp xchain00130_n43_α
.Lx00141_0:
 .quad 0
# IR_UNOP
 xchain00130_n33_α:
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 call rt_size_d@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00130_n38_α
 xchain00130_n33_β:
 jmp xchain00130_n34_α
# IR_VAR
 xchain00130_n34_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 264], rax
 jmp xchain00130_n39_α
 xchain00130_n34_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00130_n35_α:
 mov qword ptr [rbp + 3808], 1
 mov rax, qword ptr [rip + .Lx00142_0]
 mov qword ptr [rbp + 3816], rax
 jmp xchain00130_n40_α
 xchain00130_n35_β:
 jmp xchain00130_n36_α
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "Mar"
# IR_VAR_REF
 xchain00130_n36_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00130_n41_α
 xchain00130_n36_β:
 jmp xchain00130_n51_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00130_n37_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00143_0
 add rax, r15
 add rax, 1
.Lx00143_0:
 cmp rax, 1
 jl xchain00130_n43_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00130_n43_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00130_n43_α
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
 jmp xchain00130_n42_α
 xchain00130_n37_β:
 jmp xchain00130_n43_α
# IR_LIT_INTEGER
 xchain00130_n38_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00130_n44_α
 xchain00130_n38_β:
 jmp xchain00130_n34_α
.Lx00144_0:
 .quad 13
# IR_LIT_INTEGER
 xchain00130_n39_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00130_n45_α
 xchain00130_n39_β:
 jmp proc_geddate_ω
.Lx00145_0:
 .quad 12
# IR_ASSIGN_VAR
 xchain00130_n40_α:
 mov rdi, qword ptr [rbp + 3760]
 mov rsi, qword ptr [rbp + 3768]
 mov rdx, qword ptr [rbp + 3808]
 mov rcx, qword ptr [rbp + 3816]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n36_α
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00130_n36_α
 xchain00130_n40_β:
 jmp xchain00130_n36_α
# IR_LIT_STRING
 xchain00130_n41_α:
 mov qword ptr [rbp + 3584], 1
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 3592], rax
 jmp xchain00130_n46_α
 xchain00130_n41_β:
 jmp xchain00130_n51_α
.Lx00146_0:
 .quad .Lx00146_0_s
.Lx00146_0_s:
 .string "APR"
# IR_GEN_SCAN
 xchain00130_n42_α:
 lea rdi, [rbp + 464]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 464]
 mov r14, qword ptr [rbp + 472]
 mov r15, qword ptr [rbp + 480]
 jmp xchain00130_n30_α
 xchain00130_n42_β:
 jmp xchain00130_n30_α
# KEYWORD_null
 xchain00130_n43_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 jmp xchain00130_n47_α
 xchain00130_n43_β:
 jmp xchain00130_n42_α
 xchain00130_n44_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 352]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00147_0
 mov eax, dword ptr [rbp + 352]
 cmp eax, 6
 jne .Lx00147_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00147_2
.Lx00147_1:
 mov rax, qword ptr [rbp + 360]
 mov rcx, qword ptr [rbp + 424]
 cmp rax, rcx
 jle xchain00130_n34_α
 mov rcx, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rcx
 mov rcx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rcx
 jmp xchain00130_n48_α
.Lx00147_0:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 7
 lea r9, [rbp + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00147_1
 cmp eax, 1
 je xchain00130_n34_α
 jmp xchain00130_n48_α
.Lx00147_2:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00130_n34_α
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rax
 jmp xchain00130_n48_α
 xchain00130_n44_β:
 jmp xchain00130_n34_α
 xchain00130_n45_α:
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
  .Lrkfn662: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn662]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00130_n49_α
 xchain00130_n45_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00130_n46_α:
 mov rdi, qword ptr [rbp + 3552]
 mov rsi, qword ptr [rbp + 3560]
 mov rdx, qword ptr [rbp + 3584]
 mov rcx, qword ptr [rbp + 3592]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n51_α
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain00130_n50_α
 xchain00130_n46_β:
 jmp xchain00130_n51_α
# IR_LIT_CHARSET
 xchain00130_n47_α:
 mov qword ptr [rbp + 1232], 1
 mov dword ptr [rbp + 1236], -1
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00130_n52_α
 xchain00130_n47_β:
 jmp xchain00130_n59_α
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "\t\n "
# IR_VAR
 xchain00130_n48_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 104], rax
 jmp xchain00130_n53_α
 xchain00130_n48_β:
 jmp proc_geddate_ω
# IR_RETURN
 xchain00130_n49_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_LIT_STRING
 xchain00130_n50_α:
 mov qword ptr [rbp + 3664], 1
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00130_n54_α
 xchain00130_n50_β:
 jmp xchain00130_n51_α
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "Apr"
# IR_VAR_REF
 xchain00130_n51_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain00130_n55_α
 xchain00130_n51_β:
 jmp xchain00130_n62_α
# IR_SCAN_MANY
 xchain00130_n52_α:
 mov eax, r14d
.Lx00150_0:
 cmp eax, r15d
 jge .Lx00150_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00150_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00150_1
 add eax, 1
 jmp .Lx00150_0
.Lx00150_1:
 cmp eax, r14d
 je xchain00130_n59_α
 mov qword ptr [rbp + 1200], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1208], rcx
 jmp xchain00130_n56_α
 xchain00130_n52_β:
 jmp xchain00130_n59_α
.Lx00150_2:
 .quad .Lx00150_2_s
.Lx00150_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00130_n53_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00130_n57_α
 xchain00130_n53_β:
 jmp proc_geddate_ω
.Lx00151_0:
 .quad 2
# IR_ASSIGN_VAR
 xchain00130_n54_α:
 mov rdi, qword ptr [rbp + 3616]
 mov rsi, qword ptr [rbp + 3624]
 mov rdx, qword ptr [rbp + 3664]
 mov rcx, qword ptr [rbp + 3672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n51_α
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain00130_n51_α
 xchain00130_n54_β:
 jmp xchain00130_n51_α
# IR_LIT_STRING
 xchain00130_n55_α:
 mov qword ptr [rbp + 3440], 1
 mov rax, qword ptr [rip + .Lx00152_0]
 mov qword ptr [rbp + 3448], rax
 jmp xchain00130_n58_α
 xchain00130_n55_β:
 jmp xchain00130_n62_α
.Lx00152_0:
 .quad .Lx00152_0_s
.Lx00152_0_s:
 .string "MAY"
# IR_SCAN_TAB
 xchain00130_n56_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1208]
 cmp rax, 1
 jge .Lx00153_0
 add rax, r15
 add rax, 1
.Lx00153_0:
 cmp rax, 1
 jge .Lx00153_239
 add rsp, 16
 jmp xchain00130_n59_α
.Lx00153_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00153_240
 add rsp, 16
 jmp xchain00130_n59_α
.Lx00153_240:
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
 jmp xchain00130_n59_α
 xchain00130_n56_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00130_n59_α
# IR_LIT_INTEGER
 xchain00130_n57_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00130_n60_α
 xchain00130_n57_β:
 jmp proc_geddate_ω
.Lx00154_0:
 .quad 0
# IR_SUBSCRIPT x[i] variable
 xchain00130_n58_α:
 mov rdi, qword ptr [rbp + 3408]
 mov rsi, qword ptr [rbp + 3416]
 mov rdx, qword ptr [rbp + 3440]
 mov rcx, qword ptr [rbp + 3448]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n62_α
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain00130_n61_α
 xchain00130_n58_β:
 jmp xchain00130_n62_α
# IR_LIT_CHARSET
 xchain00130_n59_α:
 mov qword ptr [rbp + 1136], 1
 mov dword ptr [rbp + 1140], -1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00130_n63_α
 xchain00130_n59_β:
 jmp xchain00130_n70_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "\t\n "
# IR_SUBSCRIPT section
 xchain00130_n60_α:
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
 jmp xchain00130_n64_α
 xchain00130_n60_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00130_n61_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain00130_n65_α
 xchain00130_n61_β:
 jmp xchain00130_n62_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "May"
# IR_VAR_REF
 xchain00130_n62_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain00130_n66_α
 xchain00130_n62_β:
 jmp xchain00130_n73_α
# IR_SCAN_UPTO
 xchain00130_n63_α:
 mov qword ptr [rbp + 1120], r14
.Lx00157_0:
 mov rax, qword ptr [rbp + 1120]
 cmp rax, r15
 jge xchain00130_n70_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00157_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00157_1
 mov qword ptr [rbp + 1104], 6
 add rax, 1
 mov qword ptr [rbp + 1112], rax
 jmp xchain00130_n67_α
.Lx00157_1:
 inc qword ptr [rbp + 1120]
 jmp .Lx00157_0
 xchain00130_n63_β:
 inc qword ptr [rbp + 1120]
 jmp .Lx00157_0
.Lx00157_2:
 .quad .Lx00157_2_s
.Lx00157_2_s:
 .string "\t\n "
# IR_RETURN
 xchain00130_n64_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_ASSIGN_VAR
 xchain00130_n65_α:
 mov rdi, qword ptr [rbp + 3472]
 mov rsi, qword ptr [rbp + 3480]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n62_α
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain00130_n62_α
 xchain00130_n65_β:
 jmp xchain00130_n62_α
# IR_LIT_STRING
 xchain00130_n66_α:
 mov qword ptr [rbp + 3296], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00130_n68_α
 xchain00130_n66_β:
 jmp xchain00130_n73_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string "JUN"
# IR_MOVE_LABEL
 xchain00130_n67_α:
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00130_n70_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00130_n69_α
 xchain00130_n67_β:
 jmp xchain00130_n75_α
# IR_SUBSCRIPT x[i] variable
 xchain00130_n68_α:
 mov rdi, qword ptr [rbp + 3264]
 mov rsi, qword ptr [rbp + 3272]
 mov rdx, qword ptr [rbp + 3296]
 mov rcx, qword ptr [rbp + 3304]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n73_α
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain00130_n72_α
 xchain00130_n68_β:
 jmp xchain00130_n73_α
# IR_SCAN_TAB
 xchain00130_n69_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1048]
 cmp rax, 1
 jge .Lx00159_0
 add rax, r15
 add rax, 1
.Lx00159_0:
 cmp rax, 1
 jge .Lx00159_239
 add rsp, 16
 jmp xchain00130_n75_α
.Lx00159_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00159_240
 add rsp, 16
 jmp xchain00130_n75_α
.Lx00159_240:
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
 jmp xchain00130_n74_α
 xchain00130_n69_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00130_n75_α
# IR_LIT_INTEGER
 xchain00130_n70_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00130_n76_α
 xchain00130_n70_β:
 jmp xchain00130_n75_α
.Lx00160_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00130_n71_α:
 jmp qword ptr [rbp + 1056]
 xchain00130_n71_β:
 jmp xchain00130_n75_α
# IR_LIT_STRING
 xchain00130_n72_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain00130_n77_α
 xchain00130_n72_β:
 jmp xchain00130_n73_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "Jun"
# IR_VAR_REF
 xchain00130_n73_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00130_n78_α
 xchain00130_n73_β:
 jmp xchain00130_n83_α
 xchain00130_n74_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00130_n75_α
 xchain00130_n74_β:
 jmp xchain00130_n75_α
# IR_VAR
 xchain00130_n75_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 696], rax
 jmp xchain00130_n79_α
 xchain00130_n75_β:
 jmp xchain00130_n32_α
# IR_MOVE_LABEL
 xchain00130_n76_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00130_n75_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00130_n69_α
 xchain00130_n76_β:
 jmp xchain00130_n75_α
# IR_ASSIGN_VAR
 xchain00130_n77_α:
 mov rdi, qword ptr [rbp + 3328]
 mov rsi, qword ptr [rbp + 3336]
 mov rdx, qword ptr [rbp + 3376]
 mov rcx, qword ptr [rbp + 3384]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n73_α
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00130_n73_α
 xchain00130_n77_β:
 jmp xchain00130_n73_α
# IR_LIT_STRING
 xchain00130_n78_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00130_n80_α
 xchain00130_n78_β:
 jmp xchain00130_n83_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "JUL"
# IR_LIT_STRING
 xchain00130_n79_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00130_n81_α
 xchain00130_n79_β:
 jmp xchain00130_n32_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string " "
# IR_SUBSCRIPT x[i] variable
 xchain00130_n80_α:
 mov rdi, qword ptr [rbp + 3120]
 mov rsi, qword ptr [rbp + 3128]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n83_α
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00130_n82_α
 xchain00130_n80_β:
 jmp xchain00130_n83_α
# IR_VAR_REF
 xchain00130_n81_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00130_n84_α
 xchain00130_n81_β:
 jmp xchain00130_n88_α
# IR_LIT_STRING
 xchain00130_n82_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00130_n85_α
 xchain00130_n82_β:
 jmp xchain00130_n83_α
.Lx00164_0:
 .quad .Lx00164_0_s
.Lx00164_0_s:
 .string "Jul"
# IR_VAR_REF
 xchain00130_n83_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00130_n86_α
 xchain00130_n83_β:
 jmp xchain00130_n93_α
# IR_VAR
 xchain00130_n84_α:
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 920], rax
 jmp xchain00130_n87_α
 xchain00130_n84_β:
 jmp xchain00130_n88_α
# IR_ASSIGN_VAR
 xchain00130_n85_α:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 mov rdx, qword ptr [rbp + 3232]
 mov rcx, qword ptr [rbp + 3240]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n83_α
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00130_n83_α
 xchain00130_n85_β:
 jmp xchain00130_n83_α
# IR_LIT_STRING
 xchain00130_n86_α:
 mov qword ptr [rbp + 3008], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain00130_n89_α
 xchain00130_n86_β:
 jmp xchain00130_n93_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "AUG"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n87_α:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n88_α
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00130_n90_α
 xchain00130_n87_β:
 jmp xchain00130_n88_α
# IR_VAR
 xchain00130_n88_α:
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 824], rax
 jmp xchain00130_n91_α
 xchain00130_n88_β:
 jmp xchain00130_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00130_n89_α:
 mov rdi, qword ptr [rbp + 2976]
 mov rsi, qword ptr [rbp + 2984]
 mov rdx, qword ptr [rbp + 3008]
 mov rcx, qword ptr [rbp + 3016]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n93_α
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00130_n92_α
 xchain00130_n89_β:
 jmp xchain00130_n93_α
# IR_DEREF variable -> value
 xchain00130_n90_α:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00130_n88_α
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00130_n94_α
 xchain00130_n90_β:
 jmp xchain00130_n88_α
# IR_MOVE_LABEL
 xchain00130_n91_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00130_n32_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00130_n95_α
 xchain00130_n91_β:
 jmp xchain00130_n32_α
# IR_LIT_STRING
 xchain00130_n92_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00130_n97_α
 xchain00130_n92_β:
 jmp xchain00130_n93_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "Aug"
# IR_VAR_REF
 xchain00130_n93_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain00130_n98_α
 xchain00130_n93_β:
 jmp xchain00130_n00030_α
# IR_UNOP
 xchain00130_n94_α:
 mov eax, dword ptr [rbp + 976]
 cmp eax, 99
 je xchain00130_n88_α
 cmp eax, 0
 je xchain00130_n88_α
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 856], rax
 jmp xchain00130_n99_α
 xchain00130_n94_β:
 jmp xchain00130_n88_α
 xchain00130_n95_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 call str_concat_d@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00130_n00025_α
 xchain00130_n95_β:
 jmp xchain00130_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00130_n96_α:
 jmp qword ptr [rbp + 800]
 xchain00130_n96_β:
 jmp xchain00130_n32_α
# IR_ASSIGN_VAR
 xchain00130_n97_α:
 mov rdi, qword ptr [rbp + 3040]
 mov rsi, qword ptr [rbp + 3048]
 mov rdx, qword ptr [rbp + 3088]
 mov rcx, qword ptr [rbp + 3096]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n93_α
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00130_n93_α
 xchain00130_n97_β:
 jmp xchain00130_n93_α
# IR_LIT_STRING
 xchain00130_n98_α:
 mov qword ptr [rbp + 2864], 1
 mov rax, qword ptr [rip + .Lx00167_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain00130_n00026_α
 xchain00130_n98_β:
 jmp xchain00130_n00030_α
.Lx00167_0:
 .quad .Lx00167_0_s
.Lx00167_0_s:
 .string "SEP"
# IR_MOVE_LABEL
 xchain00130_n99_α:
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00130_n88_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00130_n95_α
 xchain00130_n99_β:
 jmp xchain00130_n32_α
 xchain00130_n00025_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00130_n00028_α
 xchain00130_n00025_β:
 jmp xchain00130_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00026_α:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 2864]
 mov rcx, qword ptr [rbp + 2872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00030_α
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain00130_n00029_α
 xchain00130_n00026_β:
 jmp xchain00130_n00030_α
 xchain00130_n00028_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00130_n00031_α
 xchain00130_n00028_β:
 jmp xchain00130_n32_α
# IR_LIT_STRING
 xchain00130_n00029_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00168_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00130_n00032_α
 xchain00130_n00029_β:
 jmp xchain00130_n00030_α
.Lx00168_0:
 .quad .Lx00168_0_s
.Lx00168_0_s:
 .string "Sep"
# IR_VAR_REF
 xchain00130_n00030_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00130_n00033_α
 xchain00130_n00030_β:
 jmp xchain00130_n00036_α
 xchain00130_n00031_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 632], rax
 jmp xchain00130_n32_α
xchain00130_n00031_β:
 jmp xchain00130_n32_α
# IR_ASSIGN_VAR
 xchain00130_n00032_α:
 mov rdi, qword ptr [rbp + 2896]
 mov rsi, qword ptr [rbp + 2904]
 mov rdx, qword ptr [rbp + 2944]
 mov rcx, qword ptr [rbp + 2952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00030_α
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain00130_n00030_α
 xchain00130_n00032_β:
 jmp xchain00130_n00030_α
# IR_LIT_STRING
 xchain00130_n00033_α:
 mov qword ptr [rbp + 2720], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00130_n00034_α
 xchain00130_n00033_β:
 jmp xchain00130_n00036_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "OCT"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00034_α:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00036_α
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain00130_n00035_α
 xchain00130_n00034_β:
 jmp xchain00130_n00036_α
# IR_LIT_STRING
 xchain00130_n00035_α:
 mov qword ptr [rbp + 2800], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00130_n00171_α
 xchain00130_n00035_β:
 jmp xchain00130_n00036_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string "Oct"
# IR_VAR_REF
 xchain00130_n00036_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain00130_n00172_α
 xchain00130_n00036_β:
 jmp xchain00130_n00173_α
# IR_ASSIGN_VAR
 xchain00130_n00171_α:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2800]
 mov rcx, qword ptr [rbp + 2808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00036_α
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00130_n00036_α
 xchain00130_n00171_β:
 jmp xchain00130_n00036_α
# IR_LIT_STRING
 xchain00130_n00172_α:
 mov qword ptr [rbp + 2576], 1
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00130_n00175_α
 xchain00130_n00172_β:
 jmp xchain00130_n00173_α
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string "NOV"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00175_α:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2576]
 mov rcx, qword ptr [rbp + 2584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00173_α
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00130_n00001_α
 xchain00130_n00175_β:
 jmp xchain00130_n00173_α
# IR_LIT_STRING
 xchain00130_n00001_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx00176_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00130_n00002_α
 xchain00130_n00001_β:
 jmp xchain00130_n00173_α
.Lx00176_0:
 .quad .Lx00176_0_s
.Lx00176_0_s:
 .string "Nov"
# IR_VAR_REF
 xchain00130_n00173_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00130_n00177_α
 xchain00130_n00173_β:
 jmp xchain00130_n00178_α
# IR_ASSIGN_VAR
 xchain00130_n00002_α:
 mov rdi, qword ptr [rbp + 2608]
 mov rsi, qword ptr [rbp + 2616]
 mov rdx, qword ptr [rbp + 2656]
 mov rcx, qword ptr [rbp + 2664]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00173_α
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00130_n00173_α
 xchain00130_n00002_β:
 jmp xchain00130_n00173_α
# IR_LIT_STRING
 xchain00130_n00177_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain00130_n00180_α
 xchain00130_n00177_β:
 jmp xchain00130_n00178_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "DEC"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00180_α:
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 mov rdx, qword ptr [rbp + 2432]
 mov rcx, qword ptr [rbp + 2440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00178_α
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00130_n00181_α
 xchain00130_n00180_β:
 jmp xchain00130_n00178_α
# IR_LIT_STRING
 xchain00130_n00181_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain00130_n00183_α
 xchain00130_n00181_β:
 jmp xchain00130_n00178_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "Dec"
# IR_VAR_REF
 xchain00130_n00178_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00130_n00184_α
 xchain00130_n00178_β:
 jmp xchain00130_n00185_α
# IR_ASSIGN_VAR
 xchain00130_n00183_α:
 mov rdi, qword ptr [rbp + 2464]
 mov rsi, qword ptr [rbp + 2472]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00178_α
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00130_n00178_α
 xchain00130_n00183_β:
 jmp xchain00130_n00178_α
# IR_LIT_STRING
 xchain00130_n00184_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00130_n00187_α
 xchain00130_n00184_β:
 jmp xchain00130_n00185_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "ABT"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00187_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00185_α
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00130_n00188_α
 xchain00130_n00187_β:
 jmp xchain00130_n00185_α
# IR_LIT_STRING
 xchain00130_n00188_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00130_n00190_α
 xchain00130_n00188_β:
 jmp xchain00130_n00185_α
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "abt"
# IR_VAR_REF
 xchain00130_n00185_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain00130_n00191_α
 xchain00130_n00185_β:
 jmp xchain00130_n00192_α
# IR_ASSIGN_VAR
 xchain00130_n00190_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00185_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00130_n00185_α
 xchain00130_n00190_β:
 jmp xchain00130_n00185_α
# IR_LIT_STRING
 xchain00130_n00191_α:
 mov qword ptr [rbp + 2144], 1
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00130_n00194_α
 xchain00130_n00191_β:
 jmp xchain00130_n00192_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "BEF"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00194_α:
 mov rdi, qword ptr [rbp + 2112]
 mov rsi, qword ptr [rbp + 2120]
 mov rdx, qword ptr [rbp + 2144]
 mov rcx, qword ptr [rbp + 2152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00192_α
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00130_n00195_α
 xchain00130_n00194_β:
 jmp xchain00130_n00192_α
# IR_LIT_STRING
 xchain00130_n00195_α:
 mov qword ptr [rbp + 2224], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00130_n00003_α
 xchain00130_n00195_β:
 jmp xchain00130_n00192_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "bef"
# IR_VAR_REF
 xchain00130_n00192_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00130_n00197_α
 xchain00130_n00192_β:
 jmp xchain00130_n00198_α
# IR_ASSIGN_VAR
 xchain00130_n00003_α:
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 mov rdx, qword ptr [rbp + 2224]
 mov rcx, qword ptr [rbp + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00192_α
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00130_n00192_α
 xchain00130_n00003_β:
 jmp xchain00130_n00192_α
# IR_LIT_STRING
 xchain00130_n00197_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx00199_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain00130_n00200_α
 xchain00130_n00197_β:
 jmp xchain00130_n00198_α
.Lx00199_0:
 .quad .Lx00199_0_s
.Lx00199_0_s:
 .string "AFT"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00200_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00198_α
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain00130_n00004_α
 xchain00130_n00200_β:
 jmp xchain00130_n00198_α
# IR_LIT_STRING
 xchain00130_n00004_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00201_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00130_n00202_α
 xchain00130_n00004_β:
 jmp xchain00130_n00198_α
.Lx00201_0:
 .quad .Lx00201_0_s
.Lx00201_0_s:
 .string "aft"
# IR_VAR_REF
 xchain00130_n00198_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain00130_n00203_α
 xchain00130_n00198_β:
 jmp xchain00130_n00204_α
# IR_ASSIGN_VAR
 xchain00130_n00202_α:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00198_α
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain00130_n00198_α
 xchain00130_n00202_β:
 jmp xchain00130_n00198_α
# IR_LIT_STRING
 xchain00130_n00203_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00130_n00206_α
 xchain00130_n00203_β:
 jmp xchain00130_n00204_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "CAL"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00206_α:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n00204_α
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00130_n00207_α
 xchain00130_n00206_β:
 jmp xchain00130_n00204_α
# IR_LIT_STRING
 xchain00130_n00207_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00130_n00209_α
 xchain00130_n00207_β:
 jmp xchain00130_n00204_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "cal"
# IR_VAR_REF
 xchain00130_n00204_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00130_n00005_α
 xchain00130_n00204_β:
 jmp xchain00130_n3_α
# IR_ASSIGN_VAR
 xchain00130_n00209_α:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1936]
 mov rcx, qword ptr [rbp + 1944]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n00204_α
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00130_n00204_α
 xchain00130_n00209_β:
 jmp xchain00130_n00204_α
# IR_LIT_STRING
 xchain00130_n00005_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx00210_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00130_n00211_α
 xchain00130_n00005_β:
 jmp xchain00130_n3_α
.Lx00210_0:
 .quad .Lx00210_0_s
.Lx00210_0_s:
 .string "EST"
# IR_SUBSCRIPT x[i] variable
 xchain00130_n00211_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00130_n3_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00130_n00212_α
 xchain00130_n00211_β:
 jmp xchain00130_n3_α
# IR_LIT_STRING
 xchain00130_n00212_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx00213_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00130_n00214_α
 xchain00130_n00212_β:
 jmp xchain00130_n3_α
.Lx00213_0:
 .quad .Lx00213_0_s
.Lx00213_0_s:
 .string "est"
# IR_ASSIGN_VAR
 xchain00130_n00214_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00130_n3_α
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00130_n00215_α
 xchain00130_n00214_β:
 jmp xchain00130_n3_α
 xchain00130_n00215_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00130_n00216_α
xchain00130_n00215_β:
 jmp xchain00130_n3_α
# IR_MOVE_LABEL
 xchain00130_n00216_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1640], rax
 lea rax, [rip + xchain00130_n3_α]
 mov qword ptr [rbp + 1648], rax
 jmp xchain00130_n3_α
 xchain00130_n00216_β:
 jmp xchain00130_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00130_n00217_α:
 jmp qword ptr [rbp + 1648]
 xchain00130_n00217_β:
 jmp xchain00130_n3_α
proc_geddate_res:
add rsp, 8
pop rbp
proc_geddate_β:
jmp proc_geddate_ω
proc_geddate_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 4360]
lea rsp, [rbp + 4384]
mov rbp, [rbp + 4376]
jmp rax
proc_geddate_ω:
mov rax, [rbp + 4368]
lea rsp, [rbp + 4384]
mov rbp, [rbp + 4376]
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
  mov esi, 1248
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
  mov esi, 3856
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
  mov esi, 288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 944
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_variadic@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 1648
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
  mov esi, 1440
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
  mov esi, 4352
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
  mov rdi, qword ptr [rsp]
  add rdi, 8
  mov esi, dword ptr [rsp + 8]
  sub esi, 1
  call rt_main_args_stage@PLT
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
  mov qword ptr [rsp + 6536], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
  push rsi
  sub rsp, 8
  call rt_main_args_fetch@PLT
  add rsp, 8
  pop rsi
  mov [rbp + 16], rax
  mov [rbp + 24], rdx
main_α_body:
# IR_VAR
 xchain00218_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 6472], rax
 jmp xchain00218_n1_α
 xchain00218_n0_β:
 jmp xchain00218_n2_α
# IR_UNOP
 xchain00218_n1_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain00218_n3_α
 xchain00218_n1_β:
 jmp xchain00218_n2_α
# KEYWORD_read
 xchain00218_n2_α:
 mov rdi, qword ptr [rip + .Lx00219_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain00218_n4_α
 xchain00218_n2_β:
 jmp xchain00218_n8_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "&input"
# IR_LIT_INTEGER
 xchain00218_n3_α:
 mov qword ptr [rbp + 6496], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 6504], rax
 jmp xchain00218_n5_α
 xchain00218_n3_β:
 jmp xchain00218_n2_α
.Lx00220_0:
 .quad 0
 xchain00218_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 6368]
 mov rdx, qword ptr [rbp + 6376]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 jmp xchain00218_n6_α
 xchain00218_n4_β:
 jmp xchain00218_n8_α
 xchain00218_n5_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 6432]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [rbp + 6496]
 cmp eax, 100
 je .Lx00221_0
 mov eax, dword ptr [rbp + 6432]
 cmp eax, 6
 jne .Lx00221_2
 mov eax, dword ptr [rbp + 6496]
 cmp eax, 6
 jne .Lx00221_2
.Lx00221_1:
 mov rax, qword ptr [rbp + 6440]
 mov rcx, qword ptr [rbp + 6504]
 cmp rax, rcx
 jle xchain00218_n2_α
 mov rcx, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 6400], rcx
 mov rcx, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 6408], rcx
 jmp xchain00218_n7_α
.Lx00221_0:
 mov rdi, qword ptr [rbp + 6432]
 mov rsi, qword ptr [rbp + 6440]
 mov rdx, qword ptr [rbp + 6496]
 mov rcx, qword ptr [rbp + 6504]
 mov r8d, 7
 lea r9, [rbp + 6400]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00221_1
 cmp eax, 1
 je xchain00218_n2_α
 jmp xchain00218_n7_α
.Lx00221_2:
 mov rdi, qword ptr [rbp + 6432]
 mov rsi, qword ptr [rbp + 6440]
 mov rdx, qword ptr [rbp + 6496]
 mov rcx, qword ptr [rbp + 6504]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00218_n2_α
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 6408], rax
 jmp xchain00218_n7_α
 xchain00218_n5_β:
 jmp xchain00218_n2_α
# IR_MOVE_LABEL
 xchain00218_n6_α:
 mov rax, qword ptr [rbp + 6352]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 6360]
 mov qword ptr [rbp + 5912], rax
 lea rax, [rip + xchain00218_n8_α]
 mov qword ptr [rbp + 5920], rax
 jmp xchain00218_n8_α
 xchain00218_n6_β:
 jmp xchain00218_n8_α
# IR_VAR_REF
 xchain00218_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain00218_n10_α
 xchain00218_n7_β:
 jmp xchain00218_n18_α
# IR_VAR
 xchain00218_n8_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 5880], rax
 jmp xchain00218_n11_α
 xchain00218_n8_β:
 jmp xchain00218_n12_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00218_n9_α:
 jmp qword ptr [rbp + 5920]
 xchain00218_n9_β:
 jmp xchain00218_n8_α
# IR_LIT_INTEGER
 xchain00218_n10_α:
 mov qword ptr [rbp + 6272], 6
 mov rax, qword ptr [rip + .Lx00222_0]
 mov qword ptr [rbp + 6280], rax
 jmp xchain00218_n13_α
 xchain00218_n10_β:
 jmp xchain00218_n18_α
.Lx00222_0:
 .quad 1
 xchain00218_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5872]
 mov rdx, qword ptr [rbp + 5880]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00223_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00223_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00223_3]
 lea rdx, [rip + .Lx00223_4]
 jmp rax
.Lx00223_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00223_2
.Lx00223_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00223_2
.Lx00223_1:
 call rt_faildescr@PLT
.Lx00223_2:
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 cmp eax, 99
 je xchain00218_n12_α
 jmp xchain00218_n14_α
 xchain00218_n11_β:
 jmp xchain00218_n12_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "gedload"
# IR_VAR
 xchain00218_n12_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 5784], rax
 jmp xchain00218_n15_α
 xchain00218_n12_β:
 jmp xchain00218_n16_α
# IR_SUBSCRIPT x[i] variable
 xchain00218_n13_α:
 mov rdi, qword ptr [rbp + 6240]
 mov rsi, qword ptr [rbp + 6248]
 mov rdx, qword ptr [rbp + 6272]
 mov rcx, qword ptr [rbp + 6280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00218_n18_α
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain00218_n17_α
 xchain00218_n13_β:
 jmp xchain00218_n18_α
 xchain00218_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5824]
 mov rdx, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 mov qword ptr [rbp + 5808], rax
 mov qword ptr [rbp + 5816], rdx
 jmp xchain00218_n12_α
 xchain00218_n14_β:
 jmp xchain00218_n12_α
 xchain00218_n15_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5776] -> [zr+5744]
 mov rax, qword ptr [rbp + 5776]
 mov qword ptr [rbp + 5744], rax
 mov rax, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 5752], rax
  .section .rodata
  .Lrkfn820: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn820]
 lea rsi, [rbp + 5744]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je xchain00218_n16_α
 jmp xchain00218_n16_α
 xchain00218_n15_β:
 jmp xchain00218_n16_α
# IR_MAKE_LIST
 xchain00218_n16_α:
 lea rdi, [rbp + 5728]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 jmp xchain00218_n19_α
 xchain00218_n16_β:
 jmp xchain00218_n22_α
# IR_DEREF variable -> value
 xchain00218_n17_α:
 mov rdi, qword ptr [rbp + 6304]
 mov rsi, qword ptr [rbp + 6312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00218_n18_α
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain00218_n20_α
 xchain00218_n17_β:
 jmp xchain00218_n18_α
# IR_LIT_STRING
 xchain00218_n18_α:
 mov qword ptr [rbp + 6048], 1
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [rbp + 6056], rax
 jmp xchain00218_n21_α
 xchain00218_n18_β:
 jmp xchain00218_n8_α
.Lx00224_0:
 .quad .Lx00224_0_s
.Lx00224_0_s:
 .string "can't open "
 xchain00218_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5712]
 mov rdx, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain00218_n22_α
 xchain00218_n19_β:
 jmp xchain00218_n22_α
 xchain00218_n20_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6336] -> [zr+6208]
 mov rax, qword ptr [rbp + 6336]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6344]
 mov qword ptr [rbp + 6216], rax
  .section .rodata
  .Lrkfn827: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn827]
 lea rsi, [rbp + 6208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain00218_n18_α
 jmp xchain00218_n23_α
 xchain00218_n20_β:
 jmp xchain00218_n18_α
# IR_VAR_REF
 xchain00218_n21_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain00218_n24_α
 xchain00218_n21_β:
 jmp xchain00218_n8_α
 xchain00218_n22_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn831: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn831]
 lea rsi, [rbp + 5680]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5664], rax
 mov qword ptr [rbp + 5672], rdx
 cmp eax, 99
 je xchain00218_n26_α
 jmp xchain00218_n25_α
 xchain00218_n22_β:
 jmp xchain00218_n26_α
# IR_MOVE_LABEL
 xchain00218_n23_α:
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 5960], rax
 lea rax, [rip + xchain00218_n18_α]
 mov qword ptr [rbp + 5968], rax
 jmp xchain00218_n27_α
 xchain00218_n23_β:
 jmp xchain00218_n8_α
# IR_LIT_INTEGER
 xchain00218_n24_α:
 mov qword ptr [rbp + 6112], 6
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 6120], rax
 jmp xchain00218_n29_α
 xchain00218_n24_β:
 jmp xchain00218_n8_α
.Lx00225_0:
 .quad 1
# IR_ASSIGN gva
 xchain00218_n25_α:
 mov rax, qword ptr [rbp + 5664]
 mov rdx, qword ptr [rbp + 5672]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain00218_n26_α
 xchain00218_n25_β:
 jmp xchain00218_n26_α
# IR_VAR
 xchain00218_n26_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 5192], rax
 jmp xchain00218_n30_α
 xchain00218_n26_β:
 jmp xchain00218_n31_α
 xchain00218_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5952]
 mov rdx, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain00218_n32_α
 xchain00218_n27_β:
 jmp xchain00218_n8_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00218_n28_α:
 jmp qword ptr [rbp + 5968]
 xchain00218_n28_β:
 jmp xchain00218_n8_α
# IR_SUBSCRIPT x[i] variable
 xchain00218_n29_α:
 mov rdi, qword ptr [rbp + 6080]
 mov rsi, qword ptr [rbp + 6088]
 mov rdx, qword ptr [rbp + 6112]
 mov rcx, qword ptr [rbp + 6120]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00218_n8_α
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain00218_n33_α
 xchain00218_n29_β:
 jmp xchain00218_n8_α
# IR_FIELD_GET
 xchain00218_n30_α:
 mov rdi, qword ptr [rip + .Lx00226_0]
 mov rsi, qword ptr [rbp + 5184]
 mov rdx, qword ptr [rbp + 5192]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n31_α
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 jmp xchain00218_n34_α
 xchain00218_n30_β:
 jmp xchain00218_n31_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "ind"
# IR_VAR
 xchain00218_n31_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 5048], rax
 jmp xchain00218_n35_α
 xchain00218_n31_β:
 jmp xchain00218_n36_α
# IR_MOVE_LABEL
 xchain00218_n32_α:
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 5912], rax
 lea rax, [rip + xchain00218_n28_α]
 mov qword ptr [rbp + 5920], rax
 jmp xchain00218_n8_α
 xchain00218_n32_β:
 jmp xchain00218_n8_α
# IR_DEREF variable -> value
 xchain00218_n33_α:
 mov rdi, qword ptr [rbp + 6144]
 mov rsi, qword ptr [rbp + 6152]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00218_n8_α
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 jmp xchain00218_n37_α
 xchain00218_n33_β:
 jmp xchain00218_n8_α
# IR_LIST_BANG
 xchain00218_n34_α:
 mov qword ptr [rbp + 5136], 0
.Lx00227_0:
 mov rdi, qword ptr [rbp + 5152]
 mov rsi, qword ptr [rbp + 5160]
 mov rdx, qword ptr [rbp + 5136]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp rax, 99
 je xchain00218_n31_α
 jmp xchain00218_n38_α
 xchain00218_n34_β:
 inc qword ptr [rbp + 5136]
 jmp .Lx00227_0
# IR_LIT_INTEGER
 xchain00218_n35_α:
 mov qword ptr [rbp + 5072], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 5080], rax
 jmp xchain00218_n39_α
 xchain00218_n35_β:
 jmp xchain00218_n36_α
.Lx00228_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00218_n36_α:
 mov qword ptr [rbp + 4928], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 4936], rax
 jmp xchain00218_n40_α
 xchain00218_n36_β:
 jmp xchain00218_n44_α
.Lx00229_0:
 .quad 0
 xchain00218_n37_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6048] -> [zr+6000]
 mov rax, qword ptr [rbp + 6048]
 mov qword ptr [rbp + 6000], rax
 mov rax, qword ptr [rbp + 6056]
 mov qword ptr [rbp + 6008], rax
# marshal arg1 = producer-box slot [zr+6176] -> [zr+6016]
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6024], rax
  .section .rodata
  .Lrkfn853: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn853]
 lea rsi, [rbp + 6000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 cmp eax, 99
 je xchain00218_n8_α
 jmp xchain00218_n41_α
 xchain00218_n37_β:
 jmp xchain00218_n8_α
 xchain00218_n38_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain00218_n42_α
 xchain00218_n38_β:
 jmp xchain00218_n31_α
 xchain00218_n39_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+4992]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 5000], rax
# marshal arg1 = producer-box slot [zr+5072] -> [zr+5008]
 mov rax, qword ptr [rbp + 5072]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 5016], rax
  .section .rodata
  .Lrkfn856: .string "sortf"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn856]
 lea rsi, [rbp + 4992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je xchain00218_n36_α
 jmp xchain00218_n43_α
 xchain00218_n39_β:
 jmp xchain00218_n36_α
 xchain00218_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4928]
 mov rdx, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain00218_n44_α
 xchain00218_n40_β:
 jmp xchain00218_n44_α
# IR_MOVE_LABEL
 xchain00218_n41_α:
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5960], rax
 lea rax, [rip + xchain00218_n8_α]
 mov qword ptr [rbp + 5968], rax
 jmp xchain00218_n27_α
 xchain00218_n41_β:
 jmp xchain00218_n8_α
# IR_VAR
 xchain00218_n42_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 5288], rax
 jmp xchain00218_n45_α
 xchain00218_n42_β:
 jmp xchain00218_n34_β
 xchain00218_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4976]
 mov rdx, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain00218_n36_α
 xchain00218_n43_β:
 jmp xchain00218_n36_α
# IR_VAR
 xchain00218_n44_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 4728], rax
 jmp xchain00218_n46_α
 xchain00218_n44_β:
 jmp xchain00218_n47_α
# IR_VAR_REF
 xchain00218_n45_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 jmp xchain00218_n48_α
 xchain00218_n45_β:
 jmp xchain00218_n34_β
# IR_LIST_BANG
 xchain00218_n46_α:
 mov qword ptr [rbp + 4704], 0
.Lx00230_0:
 mov rdi, qword ptr [rbp + 4720]
 mov rsi, qword ptr [rbp + 4728]
 mov rdx, qword ptr [rbp + 4704]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp rax, 99
 je xchain00218_n47_α
 jmp xchain00218_n49_α
 xchain00218_n46_β:
 inc qword ptr [rbp + 4704]
 jmp .Lx00230_0
# IR_VAR
 xchain00218_n47_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 88], rax
 jmp xchain00218_n50_α
 xchain00218_n47_β:
 jmp main_ω
# IR_VAR
 xchain00218_n48_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 5352], rax
 jmp xchain00218_n51_α
 xchain00218_n48_β:
 jmp xchain00218_n34_β
# IR_FIELD_GET lv
 xchain00218_n49_α:
 mov rdi, qword ptr [rip + .Lx00231_0]
 mov rsi, qword ptr [rbp + 4688]
 mov rdx, qword ptr [rbp + 4696]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00218_n47_α
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain00218_n52_α
 xchain00218_n49_β:
 jmp xchain00218_n47_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "n"
# IR_LIST_BANG
 xchain00218_n50_α:
 mov qword ptr [rbp + 64], 0
.Lx00232_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 64]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp rax, 99
 je main_ω
 jmp xchain00218_n53_α
 xchain00218_n50_β:
 inc qword ptr [rbp + 64]
 jmp .Lx00232_0
# IR_SUBSCRIPT x[i] variable
 xchain00218_n51_α:
 mov rdi, qword ptr [rbp + 5312]
 mov rsi, qword ptr [rbp + 5320]
 mov rdx, qword ptr [rbp + 5344]
 mov rcx, qword ptr [rbp + 5352]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00218_n34_β
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain00218_n54_α
 xchain00218_n51_β:
 jmp xchain00218_n34_β
# IR_VAR
 xchain00218_n52_α:
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 4848], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 4856], rax
 jmp xchain00218_n55_α
 xchain00218_n52_β:
 jmp xchain00218_n46_β
 xchain00218_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00218_n56_α
 xchain00218_n53_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain00218_n54_α:
 mov qword ptr [rbp + 5504], 6
 mov rax, qword ptr [rip + .Lx00233_0]
 mov qword ptr [rbp + 5512], rax
 jmp xchain00218_n57_α
 xchain00218_n54_β:
 jmp xchain00218_n34_β
.Lx00233_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00218_n55_α:
 mov qword ptr [rbp + 4880], 6
 mov rax, qword ptr [rip + .Lx00234_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain00218_n58_α
 xchain00218_n55_β:
 jmp xchain00218_n46_β
.Lx00234_0:
 .quad 1
 xchain00218_n56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn883: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn883]
 lea rsi, [rbp + 4640]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain00218_n59_α
 jmp xchain00218_n59_α
 xchain00218_n56_β:
 jmp xchain00218_n59_α
# IR_VAR
 xchain00218_n57_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 5584], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 5592], rax
 jmp xchain00218_n60_α
 xchain00218_n57_β:
 jmp xchain00218_n34_β
# IR_COERCE_NUMERIC
 xchain00218_n58_α:
 mov eax, dword ptr [rbp + 6624]
 cmp eax, 7
 je .Lx00235_1
 cmp eax, 6
 jne .Lx00235_0
 mov eax, dword ptr [rbp + 4880]
 cmp eax, 6
 jne .Lx00235_0
.Lx00235_1:
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 4816], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 4824], rax
 jmp .Lx00235_2
.Lx00235_0:
 lea rdi, [rbp + 6624]
 lea rsi, [rbp + 4880]
 lea rdx, [rbp + 4816]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00235_2:
 jmp xchain00218_n61_α
 xchain00218_n58_β:
 jmp xchain00218_n46_β
# IR_LIT_STRING
 xchain00218_n59_α:
 mov qword ptr [rbp + 4384], 1
 mov rax, qword ptr [rip + .Lx00236_0]
 mov qword ptr [rbp + 4392], rax
 jmp xchain00218_n62_α
 xchain00218_n59_β:
 jmp xchain00218_n66_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "["
 xchain00218_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5584]
 mov rdx, qword ptr [rbp + 5592]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00237_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00237_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00237_3]
 lea rdx, [rip + .Lx00237_4]
 jmp rax
.Lx00237_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00237_2
.Lx00237_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00237_2
.Lx00237_1:
 call rt_faildescr@PLT
.Lx00237_2:
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 cmp eax, 99
 je xchain00218_n34_β
 jmp xchain00218_n63_α
 xchain00218_n60_β:
 jmp xchain00218_n34_β
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "sortkey"
 xchain00218_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4816]
 cmp eax, 100
 je .Lx00238_0
 mov eax, dword ptr [rbp + 4816]
 cmp eax, 6
 jne .Lx00238_2
.Lx00238_1:
 mov rax, qword ptr [rbp + 4824]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 4784], 6
 mov qword ptr [rbp + 4792], rax
 jmp xchain00218_n64_α
.Lx00238_0:
 mov rdi, qword ptr [rbp + 4816]
 mov rsi, qword ptr [rbp + 4824]
 mov rdx, qword ptr [rbp + 4880]
 mov rcx, qword ptr [rbp + 4888]
 mov r8d, 0
 lea r9, [rbp + 4784]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00238_3
.Lx00238_2:
 mov rdi, qword ptr [rbp + 4816]
 mov rsi, qword ptr [rbp + 4824]
 mov rdx, qword ptr [rbp + 4880]
 mov rcx, qword ptr [rbp + 4888]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00218_n46_β
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
.Lx00238_3:
 jmp xchain00218_n64_α
 xchain00218_n61_β:
 jmp xchain00218_n46_β
# IR_VAR
 xchain00218_n62_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 4456], rax
 jmp xchain00218_n65_α
 xchain00218_n62_β:
 jmp xchain00218_n66_α
# IR_VAR
 xchain00218_n63_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 5624], rax
 jmp xchain00218_n67_α
 xchain00218_n63_β:
 jmp xchain00218_n34_β
 xchain00218_n64_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4784]
 mov rdx, qword ptr [rbp + 4792]
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain00218_n68_α
 xchain00218_n64_β:
 jmp xchain00218_n46_β
# IR_FIELD_GET
 xchain00218_n65_α:
 mov rdi, qword ptr [rip + .Lx00239_0]
 mov rsi, qword ptr [rbp + 4448]
 mov rdx, qword ptr [rbp + 4456]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n66_α
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 jmp xchain00218_n69_α
 xchain00218_n65_β:
 jmp xchain00218_n66_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "n"
# IR_VAR
 xchain00218_n66_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 4232], rax
 jmp xchain00218_n70_α
 xchain00218_n66_β:
 jmp xchain00218_n71_α
 xchain00218_n67_α:
# BOX IR_CALL person(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5504] -> [zr+5440]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5448], rax
# marshal arg1 = producer-box slot [zr+5536] -> [zr+5456]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5464], rax
# marshal arg2 = producer-box slot [zr+5616] -> [zr+5472]
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 5480], rax
  .section .rodata
  .Lrkfn901: .string "person"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn901]
 lea rsi, [rbp + 5440]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 cmp eax, 99
 je xchain00218_n34_β
 jmp xchain00218_n72_α
 xchain00218_n67_β:
 jmp xchain00218_n34_β
# IR_ASSIGN_VAR
 xchain00218_n68_α:
 mov rdi, qword ptr [rbp + 4656]
 mov rsi, qword ptr [rbp + 4664]
 mov rdx, qword ptr [rbp + 4768]
 mov rcx, qword ptr [rbp + 4776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00218_n47_α
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain00218_n46_β
 xchain00218_n68_β:
 jmp xchain00218_n47_α
# IR_LIT_STRING
 xchain00218_n69_α:
 mov qword ptr [rbp + 4480], 1
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 4488], rax
 jmp xchain00218_n73_α
 xchain00218_n69_β:
 jmp xchain00218_n66_α
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "] "
# IR_FIELD_GET
 xchain00218_n70_α:
 mov rdi, qword ptr [rip + .Lx00241_0]
 mov rsi, qword ptr [rbp + 4224]
 mov rdx, qword ptr [rbp + 4232]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n71_α
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain00218_n74_α
 xchain00218_n70_β:
 jmp xchain00218_n71_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00218_n71_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00218_n75_α
 xchain00218_n71_β:
 jmp xchain00218_n80_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "b."
# IR_ASSIGN_VAR
 xchain00218_n72_α:
 mov rdi, qword ptr [rbp + 5376]
 mov rsi, qword ptr [rbp + 5384]
 mov rdx, qword ptr [rbp + 5424]
 mov rcx, qword ptr [rbp + 5432]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00218_n34_β
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain00218_n76_α
 xchain00218_n72_β:
 jmp xchain00218_n34_β
# IR_VAR
 xchain00218_n73_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 4600], rax
 jmp xchain00218_n77_α
 xchain00218_n73_β:
 jmp xchain00218_n66_α
# IR_LIT_STRING
 xchain00218_n74_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain00218_n78_α
 xchain00218_n74_β:
 jmp xchain00218_n71_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "FAMC"
# IR_VAR
 xchain00218_n75_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 3512], rax
 jmp xchain00218_n79_α
 xchain00218_n75_β:
 jmp xchain00218_n80_α
 xchain00218_n76_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5232]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5240], rax
# marshal arg1 = producer-box slot [zr+5408] -> [zr+5248]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5256], rax
  .section .rodata
  .Lrkfn913: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn913]
 lea rsi, [rbp + 5232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 cmp eax, 99
 je xchain00218_n34_β
 jmp xchain00218_n34_β
 xchain00218_n76_β:
 jmp xchain00218_n34_β
# IR_FIELD_GET
 xchain00218_n77_α:
 mov rdi, qword ptr [rip + .Lx00244_0]
 mov rsi, qword ptr [rbp + 4592]
 mov rdx, qword ptr [rbp + 4600]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n66_α
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00218_n81_α
 xchain00218_n77_β:
 jmp xchain00218_n66_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "r"
 xchain00218_n78_α:
 mov qword ptr [rbp + 4160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4192]
 mov rdx, qword ptr [rbp + 4200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4256]
 mov rdx, qword ptr [rbp + 4264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00245_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00245_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00245_3]
 lea rdx, [rip + .Lx00245_4]
 jmp rax
.Lx00245_3:
 mov qword ptr [rbp + 4168], rsp
 mov rax, qword ptr [rbp + 4160]
 test rax, rax
 jne .Lx00245_5
 mov qword ptr [rbp + 4160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00245_2
.Lx00245_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00245_2
.Lx00245_4:
 mov rax, qword ptr [rbp + 4160]
 test rax, rax
 jne .Lx00245_6
 mov qword ptr [rbp + 4160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00245_2
.Lx00245_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00245_2
.Lx00245_1:
 call rt_faildescr@PLT
.Lx00245_2:
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain00218_n71_α
 jmp xchain00218_n82_α
 xchain00218_n78_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4168]
 jmp qword ptr [rsp]
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "gedref"
# IR_FIELD_GET
 xchain00218_n79_α:
 mov rdi, qword ptr [rip + .Lx00246_0]
 mov rsi, qword ptr [rbp + 3504]
 mov rdx, qword ptr [rbp + 3512]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n80_α
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain00218_n83_α
 xchain00218_n79_β:
 jmp xchain00218_n80_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "r"
# KEYWORD_null
 xchain00218_n80_α:
 mov qword ptr [rbp + 3264], 0
 mov qword ptr [rbp + 3272], 0
 jmp xchain00218_n84_α
 xchain00218_n80_β:
 jmp xchain00218_n88_α
 xchain00218_n81_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4560]
 mov rdx, qword ptr [rbp + 4568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00247_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00247_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00247_3]
 lea rdx, [rip + .Lx00247_4]
 jmp rax
.Lx00247_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00247_2
.Lx00247_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00247_2
.Lx00247_1:
 call rt_faildescr@PLT
.Lx00247_2:
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain00218_n66_α
 jmp xchain00218_n85_α
 xchain00218_n81_β:
 jmp xchain00218_n66_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "gedlnf"
 xchain00218_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4112]
 mov rdx, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 jmp xchain00218_n86_α
 xchain00218_n82_β:
 jmp xchain00218_n71_α
# IR_LIT_STRING
 xchain00218_n83_α:
 mov qword ptr [rbp + 3536], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain00218_n87_α
 xchain00218_n83_β:
 jmp xchain00218_n80_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "BIRT"
 xchain00218_n84_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3264]
 mov rdx, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain00218_n88_α
 xchain00218_n84_β:
 jmp xchain00218_n88_α
 xchain00218_n85_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4384] -> [zr+4304]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4312], rax
# marshal arg1 = producer-box slot [zr+4416] -> [zr+4320]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4328], rax
# marshal arg2 = producer-box slot [zr+4480] -> [zr+4336]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4344], rax
# marshal arg3 = producer-box slot [zr+4512] -> [zr+4352]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4360], rax
  .section .rodata
  .Lrkfn925: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn925]
 lea rsi, [rbp + 4304]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain00218_n66_α
 jmp xchain00218_n66_α
 xchain00218_n85_β:
 jmp xchain00218_n66_α
# IR_LIT_STRING
 xchain00218_n86_α:
 mov qword ptr [rbp + 3920], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [rbp + 3928], rax
 jmp xchain00218_n89_α
 xchain00218_n86_β:
 jmp xchain00218_n94_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "father"
 xchain00218_n87_α:
 mov qword ptr [rbp + 3440], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3472]
 mov rdx, qword ptr [rbp + 3480]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00250_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00250_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00250_3]
 lea rdx, [rip + .Lx00250_4]
 jmp rax
.Lx00250_3:
 mov qword ptr [rbp + 3448], rsp
 mov rax, qword ptr [rbp + 3440]
 test rax, rax
 jne .Lx00250_5
 mov qword ptr [rbp + 3440], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00250_2
.Lx00250_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00250_2
.Lx00250_4:
 mov rax, qword ptr [rbp + 3440]
 test rax, rax
 jne .Lx00250_6
 mov qword ptr [rbp + 3440], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00250_2
.Lx00250_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00250_2
.Lx00250_1:
 call rt_faildescr@PLT
.Lx00250_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain00218_n80_α
 jmp xchain00218_n90_α
 xchain00218_n87_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3448]
 jmp qword ptr [rsp]
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "gedsub"
# IR_VAR
 xchain00218_n88_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 536], rax
 jmp xchain00218_n91_α
 xchain00218_n88_β:
 jmp xchain00218_n92_α
# IR_VAR
 xchain00218_n89_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4040], rax
 jmp xchain00218_n93_α
 xchain00218_n89_β:
 jmp xchain00218_n94_α
 xchain00218_n90_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
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
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain00218_n80_α
 jmp xchain00218_n80_α
 xchain00218_n90_β:
 jmp xchain00218_n80_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00218_n91_α:
 mov rdi, qword ptr [rip + .Lx00252_0]
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n92_α
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00218_n95_α
 xchain00218_n91_β:
 jmp xchain00218_n92_α
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00218_n92_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00253_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00218_n96_α
 xchain00218_n92_β:
 jmp xchain00218_n50_β
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "d."
# IR_LIT_STRING
 xchain00218_n93_α:
 mov qword ptr [rbp + 4064], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 4072], rax
 jmp xchain00218_n97_α
 xchain00218_n93_β:
 jmp xchain00218_n94_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "HUSB"
# IR_LIT_STRING
 xchain00218_n94_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx00255_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain00218_n98_α
 xchain00218_n94_β:
 jmp xchain00218_n71_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "mother"
# IR_LIT_STRING
 xchain00218_n95_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00218_n99_α
 xchain00218_n95_β:
 jmp xchain00218_n92_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "FAMS"
# IR_VAR
 xchain00218_n96_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 344], rax
 jmp xchain00218_n00025_α
 xchain00218_n96_β:
 jmp xchain00218_n50_β
 xchain00218_n97_α:
 mov qword ptr [rbp + 4000], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4032]
 mov rdx, qword ptr [rbp + 4040]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4064]
 mov rdx, qword ptr [rbp + 4072]
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
 mov qword ptr [rbp + 4008], rsp
 mov rax, qword ptr [rbp + 4000]
 test rax, rax
 jne .Lx00257_5
 mov qword ptr [rbp + 4000], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00257_2
.Lx00257_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00257_2
.Lx00257_4:
 mov rax, qword ptr [rbp + 4000]
 test rax, rax
 jne .Lx00257_6
 mov qword ptr [rbp + 4000], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00257_2
.Lx00257_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00257_2
.Lx00257_1:
 call rt_faildescr@PLT
.Lx00257_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain00218_n94_α
 jmp xchain00218_n00026_α
 xchain00218_n97_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4008]
 jmp qword ptr [rsp]
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "gedref"
# IR_VAR
 xchain00218_n98_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 3792], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 3800], rax
 jmp xchain00218_n00028_α
 xchain00218_n98_β:
 jmp xchain00218_n71_α
 xchain00218_n99_α:
 mov qword ptr [rbp + 464], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
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
 mov qword ptr [rbp + 472], rsp
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx00258_5
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00258_2
.Lx00258_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00258_2
.Lx00258_4:
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx00258_6
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00258_2
.Lx00258_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00258_2
.Lx00258_1:
 call rt_faildescr@PLT
.Lx00258_2:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00218_n92_α
 jmp xchain00218_n00029_α
 xchain00218_n99_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 472]
 jmp qword ptr [rsp]
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "gedref"
# IR_FIELD_GET
 xchain00218_n00025_α:
 mov rdi, qword ptr [rip + .Lx00259_0]
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n50_β
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00218_n00030_α
 xchain00218_n00025_β:
 jmp xchain00218_n50_β
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "r"
 xchain00218_n00026_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3952]
 mov rdx, qword ptr [rbp + 3960]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00260_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00260_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00260_3]
 lea rdx, [rip + .Lx00260_4]
 jmp rax
.Lx00260_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00260_2
.Lx00260_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00260_2
.Lx00260_1:
 call rt_faildescr@PLT
.Lx00260_2:
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 cmp eax, 99
 je xchain00218_n94_α
 jmp xchain00218_n94_α
 xchain00218_n00026_β:
 jmp xchain00218_n94_α
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00218_n00028_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx00261_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain00218_n00031_α
 xchain00218_n00028_β:
 jmp xchain00218_n71_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "WIFE"
 xchain00218_n00029_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00218_n00032_α
 xchain00218_n00029_β:
 jmp xchain00218_n92_α
# IR_LIT_STRING
 xchain00218_n00030_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00262_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00218_n00033_α
 xchain00218_n00030_β:
 jmp xchain00218_n50_β
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "DEAT"
 xchain00218_n00031_α:
 mov qword ptr [rbp + 3760], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3792]
 mov rdx, qword ptr [rbp + 3800]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3824]
 mov rdx, qword ptr [rbp + 3832]
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
 mov qword ptr [rbp + 3768], rsp
 mov rax, qword ptr [rbp + 3760]
 test rax, rax
 jne .Lx00263_5
 mov qword ptr [rbp + 3760], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00263_2
.Lx00263_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00263_2
.Lx00263_4:
 mov rax, qword ptr [rbp + 3760]
 test rax, rax
 jne .Lx00263_6
 mov qword ptr [rbp + 3760], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00263_2
.Lx00263_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00263_2
.Lx00263_1:
 call rt_faildescr@PLT
.Lx00263_2:
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain00218_n71_α
 jmp xchain00218_n00034_α
 xchain00218_n00031_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3768]
 jmp qword ptr [rsp]
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "gedref"
# IR_LIT_STRING
 xchain00218_n00032_α:
 mov qword ptr [rbp + 3072], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00218_n00035_α
 xchain00218_n00032_β:
 jmp xchain00218_n00175_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "m."
 xchain00218_n00033_α:
 mov qword ptr [rbp + 272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00265_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00265_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00265_3]
 lea rdx, [rip + .Lx00265_4]
 jmp rax
.Lx00265_3:
 mov qword ptr [rbp + 280], rsp
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx00265_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00265_2
.Lx00265_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00265_2
.Lx00265_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx00265_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00265_2
.Lx00265_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00265_2
.Lx00265_1:
 call rt_faildescr@PLT
.Lx00265_2:
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00218_n50_β
 jmp xchain00218_n00036_α
 xchain00218_n00033_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 280]
 jmp qword ptr [rsp]
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "gedsub"
 xchain00218_n00034_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3712]
 mov rdx, qword ptr [rbp + 3720]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00266_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00266_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00266_3]
 lea rdx, [rip + .Lx00266_4]
 jmp rax
.Lx00266_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00266_2
.Lx00266_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00266_2
.Lx00266_1:
 call rt_faildescr@PLT
.Lx00266_2:
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 cmp eax, 99
 je xchain00218_n71_α
 jmp xchain00218_n00171_α
 xchain00218_n00034_β:
 jmp xchain00218_n71_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "refto"
# IR_VAR
 xchain00218_n00035_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 3192], rax
 jmp xchain00218_n00172_α
 xchain00218_n00035_β:
 jmp xchain00218_n00175_α
 xchain00218_n00036_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00267_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00267_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00267_3]
 lea rdx, [rip + .Lx00267_4]
 jmp rax
.Lx00267_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00267_2
.Lx00267_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00267_2
.Lx00267_1:
 call rt_faildescr@PLT
.Lx00267_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00218_n50_β
 jmp xchain00218_n00001_α
 xchain00218_n00036_β:
 jmp xchain00218_n50_β
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "event"
 xchain00218_n00171_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3608], rax
 jmp xchain00218_n00173_α
xchain00218_n00171_β:
 jmp xchain00218_n71_α
# IR_LIT_STRING
 xchain00218_n00172_α:
 mov qword ptr [rbp + 3216], 1
 mov rax, qword ptr [rip + .Lx00268_0]
 mov qword ptr [rbp + 3224], rax
 jmp xchain00218_n00002_α
 xchain00218_n00172_β:
 jmp xchain00218_n00175_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "MARR"
# IR_LIT_STRING
 xchain00218_n00175_α:
 mov qword ptr [rbp + 2720], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00218_n00177_α
 xchain00218_n00175_β:
 jmp xchain00218_n00183_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "  husb"
 xchain00218_n00001_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 120], rax
 jmp xchain00218_n50_β
xchain00218_n00001_β:
 jmp xchain00218_n50_β
# IR_MOVE_LABEL
 xchain00218_n00173_α:
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3576], rax
 lea rax, [rip + xchain00218_n00031_β]
 mov qword ptr [rbp + 3584], rax
 jmp xchain00218_n71_α
 xchain00218_n00173_β:
 jmp xchain00218_n71_α
 xchain00218_n00002_α:
 mov qword ptr [rbp + 3152], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3184]
 mov rdx, qword ptr [rbp + 3192]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3216]
 mov rdx, qword ptr [rbp + 3224]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00270_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00270_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00270_3]
 lea rdx, [rip + .Lx00270_4]
 jmp rax
.Lx00270_3:
 mov qword ptr [rbp + 3160], rsp
 mov rax, qword ptr [rbp + 3152]
 test rax, rax
 jne .Lx00270_5
 mov qword ptr [rbp + 3152], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00270_2
.Lx00270_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00270_2
.Lx00270_4:
 mov rax, qword ptr [rbp + 3152]
 test rax, rax
 jne .Lx00270_6
 mov qword ptr [rbp + 3152], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00270_2
.Lx00270_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00270_2
.Lx00270_1:
 call rt_faildescr@PLT
.Lx00270_2:
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain00218_n00175_α
 jmp xchain00218_n00181_α
 xchain00218_n00002_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3160]
 jmp qword ptr [rsp]
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "gedsub"
# IR_VAR
 xchain00218_n00177_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00218_n00178_α
 xchain00218_n00177_β:
 jmp xchain00218_n00183_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00218_n00180_α:
 jmp qword ptr [rbp + 3584]
 xchain00218_n00180_β:
 jmp xchain00218_n71_α
 xchain00218_n00181_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3104]
 mov rdx, qword ptr [rbp + 3112]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00271_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00271_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00271_3]
 lea rdx, [rip + .Lx00271_4]
 jmp rax
.Lx00271_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00271_2
.Lx00271_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00271_2
.Lx00271_1:
 call rt_faildescr@PLT
.Lx00271_2:
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain00218_n00175_α
 jmp xchain00218_n00184_α
 xchain00218_n00181_β:
 jmp xchain00218_n00175_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00218_n00178_α:
 mov rdi, qword ptr [rip + .Lx00272_0]
 mov rsi, qword ptr [rbp + 2816]
 mov rdx, qword ptr [rbp + 2824]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n00183_α
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00218_n00187_α
 xchain00218_n00178_β:
 jmp xchain00218_n00183_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00218_n00183_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00218_n00188_α
 xchain00218_n00183_β:
 jmp xchain00218_n00191_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "  wife"
 xchain00218_n00184_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3008]
 mov rdx, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain00218_n00175_α
 xchain00218_n00184_β:
 jmp xchain00218_n00175_α
# IR_VAR
 xchain00218_n00187_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 2936], rax
 jmp xchain00218_n00185_α
 xchain00218_n00187_β:
 jmp xchain00218_n00183_α
# IR_VAR
 xchain00218_n00188_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 2472], rax
 jmp xchain00218_n00190_α
 xchain00218_n00188_β:
 jmp xchain00218_n00191_α
# IR_LIT_STRING
 xchain00218_n00185_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain00218_n00194_α
 xchain00218_n00185_β:
 jmp xchain00218_n00183_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "HUSB"
# IR_FIELD_GET
 xchain00218_n00190_α:
 mov rdi, qword ptr [rip + .Lx00275_0]
 mov rsi, qword ptr [rbp + 2464]
 mov rdx, qword ptr [rbp + 2472]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n00191_α
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain00218_n00195_α
 xchain00218_n00190_β:
 jmp xchain00218_n00191_α
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "r"
# IR_VAR
 xchain00218_n00191_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 2264], rax
 jmp xchain00218_n00192_α
 xchain00218_n00191_β:
 jmp xchain00218_n00003_α
 xchain00218_n00194_α:
 mov qword ptr [rbp + 2896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2928]
 mov rdx, qword ptr [rbp + 2936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00276_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00276_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00276_3]
 lea rdx, [rip + .Lx00276_4]
 jmp rax
.Lx00276_3:
 mov qword ptr [rbp + 2904], rsp
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx00276_5
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00276_2
.Lx00276_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00276_2
.Lx00276_4:
 mov rax, qword ptr [rbp + 2896]
 test rax, rax
 jne .Lx00276_6
 mov qword ptr [rbp + 2896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00276_2
.Lx00276_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00276_2
.Lx00276_1:
 call rt_faildescr@PLT
.Lx00276_2:
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je xchain00218_n00183_α
 jmp xchain00218_n00197_α
 xchain00218_n00194_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2904]
 jmp qword ptr [rsp]
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "gedref"
# IR_VAR
 xchain00218_n00195_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00218_n00200_α
 xchain00218_n00195_β:
 jmp xchain00218_n00191_α
# IR_UNOP
 xchain00218_n00192_α:
 mov eax, dword ptr [rbp + 6592]
 cmp eax, 99
 je xchain00218_n00003_α
 cmp eax, 0
 je xchain00218_n00003_α
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00218_n00004_α
 xchain00218_n00192_β:
 jmp xchain00218_n00003_α
# IR_VAR
 xchain00218_n00003_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00218_n00198_α
 xchain00218_n00003_β:
 jmp xchain00218_n00202_α
 xchain00218_n00197_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2784]
 mov rsi, qword ptr [rbp + 2792]
 mov rdx, qword ptr [rbp + 2848]
 mov rcx, qword ptr [rbp + 2856]
 mov r8d, 23
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00218_n00194_β
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00218_n00203_α
 xchain00218_n00197_β:
 jmp xchain00218_n00194_β
# IR_LIT_STRING
 xchain00218_n00200_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00218_n00206_α
 xchain00218_n00200_β:
 jmp xchain00218_n00191_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "WIFE"
# IR_LIT_STRING
 xchain00218_n00004_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain00218_n00207_α
 xchain00218_n00004_β:
 jmp xchain00218_n00003_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "   m."
# IR_FIELD_GET
 xchain00218_n00198_α:
 mov rdi, qword ptr [rip + .Lx00279_0]
 mov rsi, qword ptr [rbp + 1936]
 mov rdx, qword ptr [rbp + 1944]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00218_n00202_α
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00218_n00204_α
 xchain00218_n00198_β:
 jmp xchain00218_n00202_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "r"
# IR_VAR
 xchain00218_n00202_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00218_n00209_α
 xchain00218_n00202_β:
 jmp xchain00218_n00005_α
 xchain00218_n00203_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2752]
 mov rdx, qword ptr [rbp + 2760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00280_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00280_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00280_3]
 lea rdx, [rip + .Lx00280_4]
 jmp rax
.Lx00280_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00280_2
.Lx00280_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00280_2
.Lx00280_1:
 call rt_faildescr@PLT
.Lx00280_2:
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain00218_n00183_α
 jmp xchain00218_n00211_α
 xchain00218_n00203_β:
 jmp xchain00218_n00183_α
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "refto"
 xchain00218_n00206_α:
 mov qword ptr [rbp + 2544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2576]
 mov rdx, qword ptr [rbp + 2584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00281_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00281_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00281_3]
 lea rdx, [rip + .Lx00281_4]
 jmp rax
.Lx00281_3:
 mov qword ptr [rbp + 2552], rsp
 mov rax, qword ptr [rbp + 2544]
 test rax, rax
 jne .Lx00281_5
 mov qword ptr [rbp + 2544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00281_2
.Lx00281_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00281_2
.Lx00281_4:
 mov rax, qword ptr [rbp + 2544]
 test rax, rax
 jne .Lx00281_6
 mov qword ptr [rbp + 2544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00281_2
.Lx00281_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00281_2
.Lx00281_1:
 call rt_faildescr@PLT
.Lx00281_2:
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain00218_n00191_α
 jmp xchain00218_n00212_α
 xchain00218_n00206_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2552]
 jmp qword ptr [rsp]
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "gedref"
 xchain00218_n00207_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2168], rax
  .section .rodata
  .Lrkfn1008: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1008]
 lea rsi, [rbp + 2160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain00218_n00003_α
 jmp xchain00218_n00214_α
 xchain00218_n00207_β:
 jmp xchain00218_n00003_α
# IR_VAR
 xchain00218_n00204_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00218_n00215_α
 xchain00218_n00204_β:
 jmp xchain00218_n00202_α
# IR_LIT_STRING
 xchain00218_n00209_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00282_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00218_n00216_α
 xchain00218_n00209_β:
 jmp xchain00218_n00005_α
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "HUSB"
# KEYWORD_null
 xchain00218_n00005_α:
 mov qword ptr [rbp + 1696], 0
 mov qword ptr [rbp + 1704], 0
 jmp xchain00218_n00217_α
 xchain00218_n00005_β:
 jmp xchain00218_n99_β
 xchain00218_n00211_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2656]
 mov rdx, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00218_n00183_α
 xchain00218_n00211_β:
 jmp xchain00218_n00183_α
 xchain00218_n00212_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2432]
 mov rsi, qword ptr [rbp + 2440]
 mov rdx, qword ptr [rbp + 2496]
 mov rcx, qword ptr [rbp + 2504]
 mov r8d, 23
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00218_n00206_β
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2408], rax
 jmp xchain00218_n00006_α
 xchain00218_n00212_β:
 jmp xchain00218_n00206_β
# IR_MOVE_LABEL
 xchain00218_n00214_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2120], rax
 lea rax, [rip + xchain00218_n00003_α]
 mov qword ptr [rbp + 2128], rax
 jmp xchain00218_n00003_α
 xchain00218_n00214_β:
 jmp xchain00218_n00003_α
# IR_LIT_STRING
 xchain00218_n00215_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00218_n00284_α
 xchain00218_n00215_β:
 jmp xchain00218_n00202_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "HUSB"
 xchain00218_n00216_α:
 mov qword ptr [rbp + 1776], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1808]
 mov rdx, qword ptr [rbp + 1816]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00285_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00285_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00285_3]
 lea rdx, [rip + .Lx00285_4]
 jmp rax
.Lx00285_3:
 mov qword ptr [rbp + 1784], rsp
 mov rax, qword ptr [rbp + 1776]
 test rax, rax
 jne .Lx00285_5
 mov qword ptr [rbp + 1776], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00285_2
.Lx00285_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00285_2
.Lx00285_4:
 mov rax, qword ptr [rbp + 1776]
 test rax, rax
 jne .Lx00285_6
 mov qword ptr [rbp + 1776], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00285_2
.Lx00285_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00285_2
.Lx00285_1:
 call rt_faildescr@PLT
.Lx00285_2:
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain00218_n00005_α
 jmp xchain00218_n99_β
 xchain00218_n00216_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1784]
 jmp qword ptr [rsp]
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "gedref"
# IR_MOVE_LABEL
 xchain00218_n00217_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1672], rax
 lea rax, [rip + xchain00218_n99_β]
 mov qword ptr [rbp + 1680], rax
 jmp xchain00218_n00008_α
 xchain00218_n00217_β:
 jmp xchain00218_n99_β
 xchain00218_n00006_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00286_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00286_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00286_3]
 lea rdx, [rip + .Lx00286_4]
 jmp rax
.Lx00286_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00286_2
.Lx00286_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00286_2
.Lx00286_1:
 call rt_faildescr@PLT
.Lx00286_2:
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain00218_n00191_α
 jmp xchain00218_n00009_α
 xchain00218_n00006_β:
 jmp xchain00218_n00191_α
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "refto"
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00218_n00007_α:
 jmp qword ptr [rbp + 2128]
 xchain00218_n00007_β:
 jmp xchain00218_n00003_α
 xchain00218_n00284_α:
 mov qword ptr [rbp + 2016], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00287_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00287_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00287_3]
 lea rdx, [rip + .Lx00287_4]
 jmp rax
.Lx00287_3:
 mov qword ptr [rbp + 2024], rsp
 mov rax, qword ptr [rbp + 2016]
 test rax, rax
 jne .Lx00287_5
 mov qword ptr [rbp + 2016], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00287_2
.Lx00287_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00287_2
.Lx00287_4:
 mov rax, qword ptr [rbp + 2016]
 test rax, rax
 jne .Lx00287_6
 mov qword ptr [rbp + 2016], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00287_2
.Lx00287_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00287_2
.Lx00287_1:
 call rt_faildescr@PLT
.Lx00287_2:
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain00218_n00202_α
 jmp xchain00218_n00288_α
 xchain00218_n00284_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2024]
 jmp qword ptr [rsp]
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "gedref"
# IR_VAR
 xchain00218_n00008_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 744], rax
 jmp xchain00218_n00010_α
 xchain00218_n00008_β:
 jmp xchain00218_n99_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00218_n00289_α:
 jmp qword ptr [rbp + 1680]
 xchain00218_n00289_β:
 jmp xchain00218_n99_β
 xchain00218_n00009_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2304]
 mov rdx, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00218_n00191_α
 xchain00218_n00009_β:
 jmp xchain00218_n00191_α
 xchain00218_n00288_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1904]
 mov rsi, qword ptr [rbp + 1912]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00218_n00284_β
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00218_n00290_α
 xchain00218_n00288_β:
 jmp xchain00218_n00284_β
# IR_LIT_STRING
 xchain00218_n00010_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00218_n00011_α
 xchain00218_n00010_β:
 jmp xchain00218_n99_β
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "CHIL"
# IR_MOVE_LABEL
 xchain00218_n00290_α:
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1672], rax
 lea rax, [rip + xchain00218_n00284_β]
 mov qword ptr [rbp + 1680], rax
 jmp xchain00218_n00008_α
 xchain00218_n00290_β:
 jmp xchain00218_n99_β
 xchain00218_n00011_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00292_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00292_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00292_3]
 lea rdx, [rip + .Lx00292_4]
 jmp rax
.Lx00292_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx00292_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00292_2
.Lx00292_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00292_2
.Lx00292_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx00292_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00292_2
.Lx00292_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00292_2
.Lx00292_1:
 call rt_faildescr@PLT
.Lx00292_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain00218_n99_β
 jmp xchain00218_n00293_α
 xchain00218_n00011_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "gedref"
 xchain00218_n00293_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00218_n00294_α
 xchain00218_n00293_β:
 jmp xchain00218_n99_β
# IR_VAR
 xchain00218_n00294_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 984], rax
 jmp xchain00218_n00295_α
 xchain00218_n00294_β:
 jmp xchain00218_n00296_α
# IR_LIT_STRING
 xchain00218_n00295_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00218_n00012_α
 xchain00218_n00295_β:
 jmp xchain00218_n00296_α
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "SEX"
# IR_LIT_STRING
 xchain00218_n00296_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00298_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00218_n00013_α
 xchain00218_n00296_β:
 jmp xchain00218_n00011_β
.Lx00298_0:
 .quad .Lx00298_0_s
.Lx00298_0_s:
 .string ""
 xchain00218_n00012_α:
 mov qword ptr [rbp + 944], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00299_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00299_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00299_3]
 lea rdx, [rip + .Lx00299_4]
 jmp rax
.Lx00299_3:
 mov qword ptr [rbp + 952], rsp
 mov rax, qword ptr [rbp + 944]
 test rax, rax
 jne .Lx00299_5
 mov qword ptr [rbp + 944], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00299_2
.Lx00299_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00299_2
.Lx00299_4:
 mov rax, qword ptr [rbp + 944]
 test rax, rax
 jne .Lx00299_6
 mov qword ptr [rbp + 944], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00299_2
.Lx00299_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00299_2
.Lx00299_1:
 call rt_faildescr@PLT
.Lx00299_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain00218_n00296_α
 jmp xchain00218_n00300_α
 xchain00218_n00012_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 952]
 jmp qword ptr [rsp]
.Lx00299_0:
 .quad .Lx00299_0_s
.Lx00299_0_s:
 .string "gedval"
# IR_MOVE_LABEL
 xchain00218_n00013_α:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 lea rax, [rip + xchain00218_n00011_β]
 mov qword ptr [rbp + 848], rax
 jmp xchain00218_n00301_α
 xchain00218_n00013_β:
 jmp xchain00218_n00011_β
# IR_MOVE_LABEL
 xchain00218_n00300_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
 lea rax, [rip + xchain00218_n00012_β]
 mov qword ptr [rbp + 848], rax
 jmp xchain00218_n00301_α
 xchain00218_n00300_β:
 jmp xchain00218_n00011_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00218_n00302_α:
 jmp qword ptr [rbp + 848]
 xchain00218_n00302_β:
 jmp xchain00218_n00011_β
# IR_LIT_STRING
 xchain00218_n00301_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00218_n00304_α
 xchain00218_n00301_β:
 jmp xchain00218_n00011_β
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "M"
 xchain00218_n00304_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+1616]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1632]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1640], rax
  .section .rodata
  .Lrkfn1054: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1054]
 lea rsi, [rbp + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain00218_n00305_α
 jmp xchain00218_n00306_α
 xchain00218_n00304_β:
 jmp xchain00218_n00305_α
# IR_LIT_STRING
 xchain00218_n00306_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx00307_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00218_n00308_α
 xchain00218_n00306_β:
 jmp xchain00218_n00011_β
.Lx00307_0:
 .quad .Lx00307_0_s
.Lx00307_0_s:
 .string "   son"
# IR_LIT_STRING
 xchain00218_n00305_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx00309_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00218_n00014_α
 xchain00218_n00305_β:
 jmp xchain00218_n00011_β
.Lx00309_0:
 .quad .Lx00309_0_s
.Lx00309_0_s:
 .string "F"
# IR_VAR
 xchain00218_n00308_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00218_n00310_α
 xchain00218_n00308_β:
 jmp xchain00218_n00011_β
 xchain00218_n00014_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+1376]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1392]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn1060: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1060]
 lea rsi, [rbp + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00218_n00311_α
 jmp xchain00218_n00312_α
 xchain00218_n00014_β:
 jmp xchain00218_n00311_α
 xchain00218_n00310_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00313_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00313_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00313_3]
 lea rdx, [rip + .Lx00313_4]
 jmp rax
.Lx00313_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00313_2
.Lx00313_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00313_2
.Lx00313_1:
 call rt_faildescr@PLT
.Lx00313_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00218_n00011_β
 jmp xchain00218_n00015_α
 xchain00218_n00310_β:
 jmp xchain00218_n00011_β
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00218_n00312_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx00314_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00218_n00315_α
 xchain00218_n00312_β:
 jmp xchain00218_n00011_β
.Lx00314_0:
 .quad .Lx00314_0_s
.Lx00314_0_s:
 .string "   dau"
# IR_LIT_STRING
 xchain00218_n00311_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00316_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00218_n00317_α
 xchain00218_n00311_β:
 jmp xchain00218_n00011_β
.Lx00316_0:
 .quad .Lx00316_0_s
.Lx00316_0_s:
 .string " child"
 xchain00218_n00015_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00218_n00318_α
 xchain00218_n00015_β:
 jmp xchain00218_n00011_β
# IR_VAR
 xchain00218_n00315_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00218_n00319_α
 xchain00218_n00315_β:
 jmp xchain00218_n00011_β
# IR_VAR
 xchain00218_n00317_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00218_n00016_α
 xchain00218_n00317_β:
 jmp xchain00218_n00011_β
# IR_VAR
 xchain00218_n00318_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 808], rax
 jmp xchain00218_n00011_β
 xchain00218_n00318_β:
 jmp xchain00218_n00011_β
 xchain00218_n00319_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00320_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00320_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00320_3]
 lea rdx, [rip + .Lx00320_4]
 jmp rax
.Lx00320_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00320_2
.Lx00320_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00320_2
.Lx00320_1:
 call rt_faildescr@PLT
.Lx00320_2:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain00218_n00011_β
 jmp xchain00218_n00321_α
 xchain00218_n00319_β:
 jmp xchain00218_n00011_β
.Lx00320_0:
 .quad .Lx00320_0_s
.Lx00320_0_s:
 .string "refto"
 xchain00218_n00016_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00322_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00322_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00322_3]
 lea rdx, [rip + .Lx00322_4]
 jmp rax
.Lx00322_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00322_2
.Lx00322_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00322_2
.Lx00322_1:
 call rt_faildescr@PLT
.Lx00322_2:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain00218_n00011_β
 jmp xchain00218_n00323_α
 xchain00218_n00016_β:
 jmp xchain00218_n00011_β
.Lx00322_0:
 .quad .Lx00322_0_s
.Lx00322_0_s:
 .string "refto"
 xchain00218_n00321_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00218_n00318_α
 xchain00218_n00321_β:
 jmp xchain00218_n00011_β
 xchain00218_n00323_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00218_n00318_α
 xchain00218_n00323_β:
 jmp xchain00218_n00011_β
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 6536]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 6536]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
