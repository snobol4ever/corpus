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
  sub rsp, 960
  mov [rsp + 936], rcx
  mov [rsp + 944], rdx
  mov [rsp + 952], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 928
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 888], rsp
  mov rdi, rsp
  mov esi, 928
  call rt_jmp_frame_lexprep@PLT
proc_gedsub_α_body:
lea rax, [rip + xchain00074_n17_β]
mov qword ptr [rbp + 864], rax
# IR_VAR
 xchain00074_n0_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 840], rax
 jmp xchain00074_n1_α
 xchain00074_n0_β:
 jmp proc_gedsub_ω
 xchain00074_n1_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn365: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn365]
 lea rsi, [rbp + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je proc_gedsub_ω
 jmp xchain00074_n2_α
 xchain00074_n1_β:
 jmp proc_gedsub_ω
# IR_MOVE_LABEL
 xchain00074_n2_α:
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 760], rax
 lea rax, [rip + proc_gedsub_ω]
 mov qword ptr [rbp + 768], rax
 jmp xchain00074_n3_α
 xchain00074_n2_β:
 jmp xchain00074_n5_α
 xchain00074_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00074_n5_α
 xchain00074_n3_β:
 jmp xchain00074_n5_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00074_n4_α:
 jmp qword ptr [rbp + 768]
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
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00074_n9_α
 xchain00074_n8_β:
 jmp proc_gedsub_ω
# IR_VAR
 xchain00074_n9_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 680], rax
 jmp xchain00074_n10_α
 xchain00074_n9_β:
 jmp xchain00074_n7_β
# IR_FIELD_GET
 xchain00074_n10_α:
 mov rdi, qword ptr [rip + .Lx00077_0]
 mov rsi, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00074_n7_β
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00074_n11_α
 xchain00074_n10_β:
 jmp xchain00074_n7_β
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "tag"
# IR_VAR
 xchain00074_n11_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 712], rax
 jmp xchain00074_n12_α
 xchain00074_n11_β:
 jmp xchain00074_n7_β
 xchain00074_n12_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00074_n7_β
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain00074_n13_α
 xchain00074_n12_β:
 jmp xchain00074_n7_β
# IR_VAR
 xchain00074_n13_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 552], rax
 jmp xchain00074_n14_α
 xchain00074_n13_β:
 jmp xchain00074_n15_α
# IR_UNOP
 xchain00074_n14_α:
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 call rt_size_d@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain00074_n16_α
 xchain00074_n14_β:
 jmp xchain00074_n15_α
# IR_VAR
 xchain00074_n15_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 456], rax
 jmp xchain00074_n17_α
 xchain00074_n15_β:
 jmp xchain00074_n7_β
# IR_LIT_INTEGER
 xchain00074_n16_α:
 mov qword ptr [rbp + 576], 6
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain00074_n18_α
 xchain00074_n16_β:
 jmp xchain00074_n15_α
.Lx00078_0:
 .quad 0
# IR_SUSPEND yield+resume
 xchain00074_n17_α:
 lea rax, [rip + xchain00074_n17_β]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00074_n17_β:
 jmp xchain00074_n19_α
 xchain00074_n18_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 512]
 cmp eax, 100
 je .Lx00079_0
 mov eax, dword ptr [rbp + 576]
 cmp eax, 100
 je .Lx00079_0
 mov eax, dword ptr [rbp + 512]
 cmp eax, 6
 jne .Lx00079_2
 mov eax, dword ptr [rbp + 576]
 cmp eax, 6
 jne .Lx00079_2
.Lx00079_1:
 mov rax, qword ptr [rbp + 520]
 mov rcx, qword ptr [rbp + 584]
 cmp rax, rcx
 jle xchain00074_n15_α
 mov rcx, qword ptr [rbp + 576]
 mov qword ptr [rbp + 480], rcx
 mov rcx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 488], rcx
 jmp xchain00074_n20_α
.Lx00079_0:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 7
 lea r9, [rbp + 480]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00079_1
 cmp eax, 1
 je xchain00074_n15_α
 jmp xchain00074_n20_α
.Lx00079_2:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 576]
 mov rcx, qword ptr [rbp + 584]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00074_n15_α
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 488], rax
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
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [rbp + 296], rax
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
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 392], rax
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
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 424], rax
 jmp xchain00074_n26_α
 xchain00074_n25_β:
 jmp xchain00074_n7_β
 xchain00074_n26_α:
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
  .Lrkfn406: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn406]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain00074_n7_β
 jmp xchain00074_n27_α
 xchain00074_n26_β:
 jmp xchain00074_n7_β
 xchain00074_n27_α:
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
  .Lrkfn408: .string "__apply__"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn408]
 lea rsi, [rbp + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00074_n7_β
 jmp xchain00074_n28_α
 xchain00074_n27_β:
 jmp xchain00074_n7_β
# IR_SUSPEND yield+resume
 xchain00074_n28_α:
 lea rax, [rip + xchain00074_n28_β]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00074_n28_β:
 jmp xchain00074_n29_α
# IR_MOVE_LABEL
 xchain00074_n29_α:
 lea rax, [rip + xchain00074_n7_β]
 mov qword ptr [rbp + 208], rax
 jmp xchain00074_n21_α
 xchain00074_n29_β:
 jmp xchain00074_n7_β
proc_gedsub_res:
add rsp, 8
pop rbp
proc_gedsub_β:
jmp qword ptr [rbp + 864]
proc_gedsub_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedsub_res]
push rax
mov rax, [rbp + 936]
mov rbp, [rbp + 952]
jmp rax
proc_gedsub_ω:
mov rax, [rbp + 944]
lea rsp, [rbp + 960]
mov rbp, [rbp + 952]
jmp rax
  .globl proc_gedval_α
proc_gedval_α:
#=======================================================================================================================
    .global proc_gedval_α
    .global proc_gedval_β
    .global proc_gedval_γ
    .global proc_gedval_ω
  sub rsp, 256
  mov [rsp + 232], rcx
  mov [rsp + 240], rdx
  mov [rsp + 248], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 224
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 216], rsp
  mov rdi, rsp
  mov esi, 224
  call rt_jmp_frame_lexprep@PLT
proc_gedval_α_body:
lea rax, [rip + xchain00081_n4_β]
mov qword ptr [rbp + 192], rax
# IR_LIT_STRING
 xchain00081_n0_α:
 mov qword ptr [rbp + 128], 1
 mov rax, qword ptr [rip + .Lx00082_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00081_n1_α
 xchain00081_n0_β:
 jmp proc_gedval_ω
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "gedsub"
# IR_VAR
 xchain00081_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 168], rax
 jmp xchain00081_n2_α
 xchain00081_n1_β:
 jmp proc_gedval_ω
 xchain00081_n2_α:
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
  .Lrkfn418: .string "__apply__"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn418]
 lea rsi, [rbp + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_gedval_ω
 jmp xchain00081_n3_α
 xchain00081_n2_β:
 jmp proc_gedval_ω
# IR_FIELD_GET
 xchain00081_n3_α:
 mov rdi, qword ptr [rip + .Lx00083_0]
 mov rsi, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedval_ω
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00081_n4_α
 xchain00081_n3_β:
 jmp proc_gedval_ω
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "data"
# IR_SUSPEND yield+resume
 xchain00081_n4_α:
 lea rax, [rip + xchain00081_n4_β]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedval_γ
 xchain00081_n4_β:
 jmp proc_gedval_ω
proc_gedval_res:
add rsp, 8
pop rbp
proc_gedval_β:
jmp qword ptr [rbp + 192]
proc_gedval_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedval_res]
push rax
mov rax, [rbp + 232]
mov rbp, [rbp + 248]
jmp rax
proc_gedval_ω:
mov rax, [rbp + 240]
lea rsp, [rbp + 256]
mov rbp, [rbp + 248]
jmp rax
  .globl proc_gedref_α
proc_gedref_α:
#=======================================================================================================================
    .global proc_gedref_α
    .global proc_gedref_β
    .global proc_gedref_γ
    .global proc_gedref_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
  mov rdi, rsp
  mov esi, 256
  call rt_jmp_frame_lexprep@PLT
proc_gedref_α_body:
lea rax, [rip + xchain00084_n5_β]
mov qword ptr [rbp + 224], rax
# IR_LIT_STRING
 xchain00084_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00084_n1_α
 xchain00084_n0_β:
 jmp proc_gedref_ω
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "gedsub"
# IR_VAR
 xchain00084_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 200], rax
 jmp xchain00084_n2_α
 xchain00084_n1_β:
 jmp proc_gedref_ω
 xchain00084_n2_α:
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
  .Lrkfn427: .string "__apply__"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn427]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_gedref_ω
 jmp xchain00084_n3_α
 xchain00084_n2_β:
 jmp proc_gedref_ω
# IR_FIELD_GET
 xchain00084_n3_α:
 mov rdi, qword ptr [rip + .Lx00086_0]
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedref_ω
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00084_n4_α
 xchain00084_n3_β:
 jmp proc_gedref_ω
.Lx00086_0:
 .quad .Lx00086_0_s
.Lx00086_0_s:
 .string "ref"
# IR_UNOP
 xchain00084_n4_α:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 99
 je proc_gedref_ω
 cmp eax, 0
 je proc_gedref_ω
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
 jmp xchain00084_n5_α
 xchain00084_n4_β:
 jmp proc_gedref_ω
# IR_SUSPEND yield+resume
 xchain00084_n5_α:
 lea rax, [rip + xchain00084_n5_β]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedref_γ
 xchain00084_n5_β:
 jmp proc_gedref_ω
proc_gedref_res:
add rsp, 8
pop rbp
proc_gedref_β:
jmp qword ptr [rbp + 224]
proc_gedref_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedref_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_gedref_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_gedfnf_α
proc_gedfnf_α:
#=======================================================================================================================
    .global proc_gedfnf_α
    .global proc_gedfnf_β
    .global proc_gedfnf_γ
    .global proc_gedfnf_ω
  sub rsp, 1648
  mov [rsp + 1624], rcx
  mov [rsp + 1632], rdx
  mov [rsp + 1640], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1616
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1560], rsp
  mov rdi, rsp
  mov esi, 1616
  call rt_jmp_frame_lexprep@PLT
proc_gedfnf_α_body:
# IR_VAR
 xchain00087_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1496], rax
 jmp xchain00087_n1_α
 xchain00087_n0_β:
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00087_n1_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00087_n2_α
 xchain00087_n1_β:
 jmp proc_gedfnf_ω
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "NAME"
 xchain00087_n2_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 1456], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1488]
 mov rdx, qword ptr [rbp + 1496]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00089_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00089_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00089_3]
 lea rdx, [rip + .Lx00089_4]
 jmp rax
.Lx00089_3:
 mov rax, qword ptr [rbp + 1456]
 test rax, rax
 jne .Lx00089_5
 mov qword ptr [rbp + 1456], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00089_2
.Lx00089_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00089_2
.Lx00089_4:
 mov rax, qword ptr [rbp + 1456]
 test rax, rax
 jne .Lx00089_6
 mov qword ptr [rbp + 1456], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00089_2
.Lx00089_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00089_2
.Lx00089_1:
 call rt_faildescr@PLT
.Lx00089_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_gedfnf_ω
 jmp xchain00087_n3_α
 xchain00087_n2_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "gedval"
# IR_MOVE_LABEL
 xchain00087_n3_α:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
 lea rax, [rip + xchain00087_n2_β]
 mov qword ptr [rbp + 1392], rax
 jmp xchain00087_n4_α
 xchain00087_n3_β:
 jmp xchain00087_n6_α
 xchain00087_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1376]
 mov rdx, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain00087_n6_α
 xchain00087_n4_β:
 jmp xchain00087_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00087_n5_α:
 jmp qword ptr [rbp + 1392]
 xchain00087_n5_β:
 jmp xchain00087_n6_α
# IR_VAR
 xchain00087_n6_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00087_n7_α
 xchain00087_n6_β:
 jmp xchain00087_n8_α
# IR_GEN_SCAN
 xchain00087_n7_α:
 mov rdi, qword ptr [rbp + 1328]
 mov rsi, qword ptr [rbp + 1336]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00087_n9_α
 xchain00087_n7_β:
 jmp xchain00087_n8_α
# IR_VAR
 xchain00087_n8_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 680], rax
 jmp xchain00087_n10_α
 xchain00087_n8_β:
 jmp xchain00087_n11_α
# IR_LIT_CHARSET
 xchain00087_n9_α:
 mov qword ptr [rbp + 1296], 1
 mov dword ptr [rbp + 1300], -1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain00087_n12_α
 xchain00087_n9_β:
 jmp xchain00087_n22_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "/"
# IR_UNOP
 xchain00087_n10_α:
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 call rt_size_d@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00087_n13_α
 xchain00087_n10_β:
 jmp xchain00087_n11_α
# IR_VAR
 xchain00087_n11_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 584], rax
 jmp xchain00087_n14_α
 xchain00087_n11_β:
 jmp xchain00087_n15_α
# IR_SCAN_UPTO
 xchain00087_n12_α:
 mov qword ptr [rbp + 1280], r14
.Lx00091_0:
 mov rax, qword ptr [rbp + 1280]
 cmp rax, r15
 jge xchain00087_n22_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00091_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00091_1
 mov qword ptr [rbp + 1264], 6
 add rax, 1
 mov qword ptr [rbp + 1272], rax
 jmp xchain00087_n16_α
.Lx00091_1:
 inc qword ptr [rbp + 1280]
 jmp .Lx00091_0
 xchain00087_n12_β:
 inc qword ptr [rbp + 1280]
 jmp .Lx00091_0
.Lx00091_2:
 .quad .Lx00091_2_s
.Lx00091_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00087_n13_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00087_n17_α
 xchain00087_n13_β:
 jmp xchain00087_n11_α
.Lx00092_0:
 .quad 0
 xchain00087_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain00087_n18_α
 xchain00087_n14_β:
 jmp xchain00087_n15_α
# IR_VAR
 xchain00087_n15_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 120], rax
 jmp xchain00087_n19_α
 xchain00087_n15_β:
 jmp xchain00087_n20_α
# IR_SCAN_TAB
 xchain00087_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1272]
 cmp rax, 1
 jge .Lx00093_0
 add rax, r15
 add rax, 1
.Lx00093_0:
 cmp rax, 1
 jge .Lx00093_239
 add rsp, 16
 jmp xchain00087_n22_α
.Lx00093_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00093_240
 add rsp, 16
 jmp xchain00087_n22_α
.Lx00093_240:
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
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00087_n21_α
 xchain00087_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00087_n22_α
 xchain00087_n17_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx00094_0
 mov eax, dword ptr [rbp + 704]
 cmp eax, 100
 je .Lx00094_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx00094_2
 mov eax, dword ptr [rbp + 704]
 cmp eax, 6
 jne .Lx00094_2
.Lx00094_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, qword ptr [rbp + 712]
 cmp rax, rcx
 jle xchain00087_n11_α
 mov rcx, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rcx
 mov rcx, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rcx
 jmp xchain00087_n23_α
.Lx00094_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 mov r8d, 7
 lea r9, [rbp + 608]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00094_1
 cmp eax, 1
 je xchain00087_n11_α
 jmp xchain00087_n23_α
.Lx00094_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 704]
 mov rcx, qword ptr [rbp + 712]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00087_n11_α
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rax
 jmp xchain00087_n23_α
 xchain00087_n17_β:
 jmp xchain00087_n11_α
# IR_MOVE_LABEL
 xchain00087_n18_α:
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 360], rax
 lea rax, [rip + xchain00087_n15_α]
 mov qword ptr [rbp + 368], rax
 jmp xchain00087_n15_α
 xchain00087_n18_β:
 jmp xchain00087_n15_α
# IR_LIT_STRING
 xchain00087_n19_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00087_n25_α
 xchain00087_n19_β:
 jmp xchain00087_n20_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string " "
# IR_VAR
 xchain00087_n20_α:
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 40], rax
 jmp xchain00087_n26_α
 xchain00087_n20_β:
 jmp proc_gedfnf_ω
 xchain00087_n21_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn468: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn468]
 lea rsi, [rbp + 1200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain00087_n22_α
 jmp xchain00087_n27_α
 xchain00087_n21_β:
 jmp xchain00087_n22_α
# IR_LIT_INTEGER
 xchain00087_n22_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00087_n28_α
 xchain00087_n22_β:
 jmp proc_gedfnf_ω
.Lx00096_0:
 .quad 0
# IR_VAR
 xchain00087_n23_α:
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 472], rax
 jmp xchain00087_n29_α
 xchain00087_n23_β:
 jmp xchain00087_n15_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00087_n24_α:
 jmp qword ptr [rbp + 368]
 xchain00087_n24_β:
 jmp xchain00087_n15_α
# IR_VAR
 xchain00087_n25_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00087_n30_α
 xchain00087_n25_β:
 jmp xchain00087_n20_α
# IR_RETURN
 xchain00087_n26_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
# IR_MOVE_LABEL
 xchain00087_n27_α:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1032], rax
 lea rax, [rip + xchain00087_n22_α]
 mov qword ptr [rbp + 1040], rax
 jmp xchain00087_n31_α
 xchain00087_n27_β:
 jmp xchain00087_n36_α
# IR_SCAN_TAB
 xchain00087_n28_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00097_0
 add rax, r15
 add rax, 1
.Lx00097_0:
 cmp rax, 1
 jge .Lx00097_239
 add rsp, 16
 jmp proc_gedfnf_ω
.Lx00097_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00097_240
 add rsp, 16
 jmp proc_gedfnf_ω
.Lx00097_240:
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
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain00087_n33_α
 xchain00087_n28_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedfnf_ω
# IR_LIT_STRING
 xchain00087_n29_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00087_n34_α
 xchain00087_n29_β:
 jmp xchain00087_n15_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string " "
# IR_LIT_STRING
 xchain00087_n30_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00087_n35_α
 xchain00087_n30_β:
 jmp xchain00087_n20_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "TITL"
 xchain00087_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain00087_n36_α
 xchain00087_n31_β:
 jmp xchain00087_n36_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00087_n32_α:
 jmp qword ptr [rbp + 1040]
 xchain00087_n32_β:
 jmp xchain00087_n36_α
# IR_LIT_STRING
 xchain00087_n33_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx00100_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00087_n37_α
 xchain00087_n33_β:
 jmp proc_gedfnf_ω
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "/"
 xchain00087_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call str_concat_d@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00087_n38_α
 xchain00087_n34_β:
 jmp xchain00087_n15_α
 xchain00087_n35_α:
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
 mov rdi, qword ptr [rip + .Lx00101_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00101_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00101_3]
 lea rdx, [rip + .Lx00101_4]
 jmp rax
.Lx00101_3:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00101_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00101_2
.Lx00101_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00101_2
.Lx00101_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00101_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00101_2
.Lx00101_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00101_2
.Lx00101_1:
 call rt_faildescr@PLT
.Lx00101_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00087_n20_α
 jmp xchain00087_n39_α
 xchain00087_n35_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "gedval"
# IR_LIT_CHARSET
 xchain00087_n36_α:
 mov qword ptr [rbp + 976], 1
 mov dword ptr [rbp + 980], -1
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00087_n40_α
 xchain00087_n36_β:
 jmp xchain00087_n48_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "/"
 xchain00087_n37_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [rbp + 1152]
 cmp eax, 100
 je .Lx00103_0
 mov eax, dword ptr [rbp + 1088]
 cmp eax, 6
 jne .Lx00103_2
 mov eax, dword ptr [rbp + 1152]
 cmp eax, 6
 jne .Lx00103_2
.Lx00103_1:
 mov rax, qword ptr [rbp + 1096]
 mov rcx, qword ptr [rbp + 1160]
 cmp rax, rcx
 jne proc_gedfnf_ω
 mov rcx, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1056], rcx
 mov rcx, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1064], rcx
 jmp xchain00087_n41_α
.Lx00103_0:
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 mov r8d, 9
 lea r9, [rbp + 1056]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00103_1
 cmp eax, 1
 je proc_gedfnf_ω
 jmp xchain00087_n41_α
.Lx00103_2:
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 mov rdx, qword ptr [rbp + 1152]
 mov rcx, qword ptr [rbp + 1160]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedfnf_ω
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00087_n41_α
 xchain00087_n37_β:
 jmp proc_gedfnf_ω
# IR_VAR
 xchain00087_n38_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 536], rax
 jmp xchain00087_n42_α
 xchain00087_n38_β:
 jmp xchain00087_n15_α
 xchain00087_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00087_n43_α
 xchain00087_n39_β:
 jmp xchain00087_n20_α
# IR_SCAN_UPTO
 xchain00087_n40_α:
 mov qword ptr [rbp + 960], r14
.Lx00104_0:
 mov rax, qword ptr [rbp + 960]
 cmp rax, r15
 jge xchain00087_n48_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00104_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00104_1
 mov qword ptr [rbp + 944], 6
 add rax, 1
 mov qword ptr [rbp + 952], rax
 jmp xchain00087_n44_α
.Lx00104_1:
 inc qword ptr [rbp + 960]
 jmp .Lx00104_0
 xchain00087_n40_β:
 inc qword ptr [rbp + 960]
 jmp .Lx00104_0
.Lx00104_2:
 .quad .Lx00104_2_s
.Lx00104_2_s:
 .string "/"
# IR_RETURN
 xchain00087_n41_α:
 mov rax, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
 xchain00087_n42_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 1600]
 mov rcx, qword ptr [rbp + 1608]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00087_n45_α
 xchain00087_n42_β:
 jmp xchain00087_n15_α
 xchain00087_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1568]
 mov rsi, qword ptr [rbp + 1576]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00087_n46_α
 xchain00087_n43_β:
 jmp xchain00087_n20_α
# IR_MOVE_LABEL
 xchain00087_n44_α:
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
 lea rax, [rip + xchain00087_n48_α]
 mov qword ptr [rbp + 896], rax
 jmp xchain00087_n47_α
 xchain00087_n44_β:
 jmp xchain00087_n55_α
 xchain00087_n45_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00087_n50_α
 xchain00087_n45_β:
 jmp xchain00087_n15_α
 xchain00087_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00087_n20_α
 xchain00087_n46_β:
 jmp xchain00087_n20_α
# IR_SCAN_TAB
 xchain00087_n47_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 888]
 cmp rax, 1
 jge .Lx00105_0
 add rax, r15
 add rax, 1
.Lx00105_0:
 cmp rax, 1
 jge .Lx00105_239
 add rsp, 16
 jmp xchain00087_n55_α
.Lx00105_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00105_240
 add rsp, 16
 jmp xchain00087_n55_α
.Lx00105_240:
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
 jmp xchain00087_n51_α
 xchain00087_n47_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00087_n55_α
# IR_LIT_INTEGER
 xchain00087_n48_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00087_n53_α
 xchain00087_n48_β:
 jmp xchain00087_n55_α
.Lx00106_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00087_n49_α:
 jmp qword ptr [rbp + 896]
 xchain00087_n49_β:
 jmp xchain00087_n55_α
# IR_MOVE_LABEL
 xchain00087_n50_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
 lea rax, [rip + xchain00087_n15_α]
 mov qword ptr [rbp + 368], rax
 jmp xchain00087_n15_α
 xchain00087_n50_β:
 jmp xchain00087_n15_α
 xchain00087_n51_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00087_n54_α
 xchain00087_n51_β:
 jmp xchain00087_n55_α
 xchain00087_n52_α:
 jmp xchain00087_n55_α
xchain00087_n52_β:
 jmp xchain00087_n55_α
# IR_MOVE_LABEL
 xchain00087_n53_α:
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
 lea rax, [rip + xchain00087_n52_α]
 mov qword ptr [rbp + 896], rax
 jmp xchain00087_n47_α
 xchain00087_n53_β:
 jmp xchain00087_n55_α
 xchain00087_n54_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 824], rax
 jmp xchain00087_n56_α
xchain00087_n54_β:
 jmp xchain00087_n55_α
# IR_GEN_SCAN
 xchain00087_n55_α:
 lea rdi, [rbp + 752]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 752]
 mov r14, qword ptr [rbp + 760]
 mov r15, qword ptr [rbp + 768]
 jmp xchain00087_n8_α
 xchain00087_n55_β:
 jmp xchain00087_n8_α
# IR_GEN_SCAN
 xchain00087_n56_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rdi, [rbp + 752]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 752]
 mov r14, qword ptr [rbp + 760]
 mov r15, qword ptr [rbp + 768]
 jmp xchain00087_n8_α
 xchain00087_n56_β:
 jmp xchain00087_n8_α
proc_gedfnf_res:
add rsp, 8
pop rbp
proc_gedfnf_β:
jmp proc_gedfnf_ω
proc_gedfnf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1624]
lea rsp, [rbp + 1648]
mov rbp, [rbp + 1640]
jmp rax
proc_gedfnf_ω:
mov rax, [rbp + 1632]
lea rsp, [rbp + 1648]
mov rbp, [rbp + 1640]
jmp rax
  .globl proc_gedlnf_α
proc_gedlnf_α:
#=======================================================================================================================
    .global proc_gedlnf_α
    .global proc_gedlnf_β
    .global proc_gedlnf_γ
    .global proc_gedlnf_ω
  sub rsp, 1440
  mov [rsp + 1416], rcx
  mov [rsp + 1424], rdx
  mov [rsp + 1432], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1408
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1352], rsp
  mov rdi, rsp
  mov esi, 1408
  call rt_jmp_frame_lexprep@PLT
proc_gedlnf_α_body:
# IR_VAR
 xchain00107_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00107_n1_α
 xchain00107_n0_β:
 jmp proc_gedlnf_ω
# IR_LIT_STRING
 xchain00107_n1_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00107_n2_α
 xchain00107_n1_β:
 jmp proc_gedlnf_ω
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "NAME"
 xchain00107_n2_α:
 mov qword ptr [rbp + 1248], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00109_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00109_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00109_3]
 lea rdx, [rip + .Lx00109_4]
 jmp rax
.Lx00109_3:
 mov rax, qword ptr [rbp + 1248]
 test rax, rax
 jne .Lx00109_5
 mov qword ptr [rbp + 1248], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00109_2
.Lx00109_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00109_2
.Lx00109_4:
 mov rax, qword ptr [rbp + 1248]
 test rax, rax
 jne .Lx00109_6
 mov qword ptr [rbp + 1248], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00109_2
.Lx00109_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00109_2
.Lx00109_1:
 call rt_faildescr@PLT
.Lx00109_2:
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_gedlnf_ω
 jmp xchain00107_n3_α
 xchain00107_n2_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "gedval"
# IR_MOVE_LABEL
 xchain00107_n3_α:
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1176], rax
 lea rax, [rip + xchain00107_n2_β]
 mov qword ptr [rbp + 1184], rax
 jmp xchain00107_n4_α
 xchain00107_n3_β:
 jmp xchain00107_n6_α
 xchain00107_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain00107_n6_α
 xchain00107_n4_β:
 jmp xchain00107_n6_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00107_n5_α:
 jmp qword ptr [rbp + 1184]
 xchain00107_n5_β:
 jmp xchain00107_n6_α
# IR_VAR
 xchain00107_n6_α:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00107_n7_α
 xchain00107_n6_β:
 jmp xchain00107_n8_α
# IR_GEN_SCAN
 xchain00107_n7_α:
 mov rdi, qword ptr [rbp + 1120]
 mov rsi, qword ptr [rbp + 1128]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00107_n9_α
 xchain00107_n7_β:
 jmp xchain00107_n8_α
# IR_VAR
 xchain00107_n8_α:
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 440], rax
 jmp xchain00107_n10_α
 xchain00107_n8_β:
 jmp xchain00107_n11_α
# IR_LIT_CHARSET
 xchain00107_n9_α:
 mov qword ptr [rbp + 1088], 1
 mov dword ptr [rbp + 1092], -1
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00107_n12_α
 xchain00107_n9_β:
 jmp xchain00107_n21_α
.Lx00110_0:
 .quad .Lx00110_0_s
.Lx00110_0_s:
 .string "/"
# IR_LIT_STRING
 xchain00107_n10_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00107_n13_α
 xchain00107_n10_β:
 jmp xchain00107_n11_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string ", "
# IR_VAR
 xchain00107_n11_α:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 120], rax
 jmp xchain00107_n14_α
 xchain00107_n11_β:
 jmp xchain00107_n15_α
# IR_SCAN_UPTO
 xchain00107_n12_α:
 mov qword ptr [rbp + 1072], r14
.Lx00112_0:
 mov rax, qword ptr [rbp + 1072]
 cmp rax, r15
 jge xchain00107_n21_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00112_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00112_1
 mov qword ptr [rbp + 1056], 6
 add rax, 1
 mov qword ptr [rbp + 1064], rax
 jmp xchain00107_n16_α
.Lx00112_1:
 inc qword ptr [rbp + 1072]
 jmp .Lx00112_0
 xchain00107_n12_β:
 inc qword ptr [rbp + 1072]
 jmp .Lx00112_0
.Lx00112_2:
 .quad .Lx00112_2_s
.Lx00112_2_s:
 .string "/"
 xchain00107_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00107_n17_α
 xchain00107_n13_β:
 jmp xchain00107_n11_α
# IR_LIT_STRING
 xchain00107_n14_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00107_n18_α
 xchain00107_n14_β:
 jmp xchain00107_n15_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string " "
# IR_VAR
 xchain00107_n15_α:
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 40], rax
 jmp xchain00107_n19_α
 xchain00107_n15_β:
 jmp proc_gedlnf_ω
# IR_SCAN_TAB
 xchain00107_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1064]
 cmp rax, 1
 jge .Lx00114_0
 add rax, r15
 add rax, 1
.Lx00114_0:
 cmp rax, 1
 jge .Lx00114_239
 add rsp, 16
 jmp xchain00107_n21_α
.Lx00114_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00114_240
 add rsp, 16
 jmp xchain00107_n21_α
.Lx00114_240:
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
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain00107_n20_α
 xchain00107_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00107_n21_α
# IR_VAR
 xchain00107_n17_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 504], rax
 jmp xchain00107_n22_α
 xchain00107_n17_β:
 jmp xchain00107_n11_α
# IR_VAR
 xchain00107_n18_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00107_n23_α
 xchain00107_n18_β:
 jmp xchain00107_n15_α
# IR_RETURN
 xchain00107_n19_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
 xchain00107_n20_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
  .section .rodata
  .Lrkfn555: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn555]
 lea rsi, [rbp + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain00107_n21_α
 jmp xchain00107_n24_α
 xchain00107_n20_β:
 jmp xchain00107_n21_α
# IR_LIT_INTEGER
 xchain00107_n21_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00107_n25_α
 xchain00107_n21_β:
 jmp proc_gedlnf_ω
.Lx00115_0:
 .quad 0
 xchain00107_n22_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 1392]
 mov rcx, qword ptr [rbp + 1400]
 call str_concat_d@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00107_n26_α
 xchain00107_n22_β:
 jmp xchain00107_n11_α
# IR_LIT_STRING
 xchain00107_n23_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00107_n27_α
 xchain00107_n23_β:
 jmp xchain00107_n15_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "TITL"
# IR_MOVE_LABEL
 xchain00107_n24_α:
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 824], rax
 lea rax, [rip + xchain00107_n21_α]
 mov qword ptr [rbp + 832], rax
 jmp xchain00107_n28_α
 xchain00107_n24_β:
 jmp xchain00107_n32_α
# IR_SCAN_TAB
 xchain00107_n25_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00117_0
 add rax, r15
 add rax, 1
.Lx00117_0:
 cmp rax, 1
 jge .Lx00117_239
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00117_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00117_240
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00117_240:
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
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00107_n30_α
 xchain00107_n25_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedlnf_ω
 xchain00107_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00107_n11_α
 xchain00107_n26_β:
 jmp xchain00107_n11_α
 xchain00107_n27_α:
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
 mov rdi, qword ptr [rip + .Lx00118_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00118_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00118_3]
 lea rdx, [rip + .Lx00118_4]
 jmp rax
.Lx00118_3:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00118_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00118_2
.Lx00118_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00118_2
.Lx00118_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00118_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00118_2
.Lx00118_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00118_2
.Lx00118_1:
 call rt_faildescr@PLT
.Lx00118_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00107_n15_α
 jmp xchain00107_n31_α
 xchain00107_n27_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00118_0:
 .quad .Lx00118_0_s
.Lx00118_0_s:
 .string "gedval"
 xchain00107_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00107_n32_α
 xchain00107_n28_β:
 jmp xchain00107_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00107_n29_α:
 jmp qword ptr [rbp + 832]
 xchain00107_n29_β:
 jmp xchain00107_n32_α
# IR_LIT_STRING
 xchain00107_n30_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00107_n33_α
 xchain00107_n30_β:
 jmp proc_gedlnf_ω
.Lx00119_0:
 .quad .Lx00119_0_s
.Lx00119_0_s:
 .string "/"
 xchain00107_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00107_n34_α
 xchain00107_n31_β:
 jmp xchain00107_n15_α
# IR_LIT_CHARSET
 xchain00107_n32_α:
 mov qword ptr [rbp + 768], 1
 mov dword ptr [rbp + 772], -1
 mov rax, qword ptr [rip + .Lx00120_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00107_n35_α
 xchain00107_n32_β:
 jmp xchain00107_n40_α
.Lx00120_0:
 .quad .Lx00120_0_s
.Lx00120_0_s:
 .string "/"
 xchain00107_n33_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 880]
 cmp eax, 100
 je .Lx00121_0
 mov eax, dword ptr [rbp + 944]
 cmp eax, 100
 je .Lx00121_0
 mov eax, dword ptr [rbp + 880]
 cmp eax, 6
 jne .Lx00121_2
 mov eax, dword ptr [rbp + 944]
 cmp eax, 6
 jne .Lx00121_2
.Lx00121_1:
 mov rax, qword ptr [rbp + 888]
 mov rcx, qword ptr [rbp + 952]
 cmp rax, rcx
 jne proc_gedlnf_ω
 mov rcx, qword ptr [rbp + 944]
 mov qword ptr [rbp + 848], rcx
 mov rcx, qword ptr [rbp + 952]
 mov qword ptr [rbp + 856], rcx
 jmp xchain00107_n36_α
.Lx00121_0:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 9
 lea r9, [rbp + 848]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00121_1
 cmp eax, 1
 je proc_gedlnf_ω
 jmp xchain00107_n36_α
.Lx00121_2:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz proc_gedlnf_ω
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 856], rax
 jmp xchain00107_n36_α
 xchain00107_n33_β:
 jmp proc_gedlnf_ω
 xchain00107_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00107_n37_α
 xchain00107_n34_β:
 jmp xchain00107_n15_α
# IR_SCAN_UPTO
 xchain00107_n35_α:
 mov qword ptr [rbp + 752], r14
.Lx00122_0:
 mov rax, qword ptr [rbp + 752]
 cmp rax, r15
 jge xchain00107_n40_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00122_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00122_1
 mov qword ptr [rbp + 736], 6
 add rax, 1
 mov qword ptr [rbp + 744], rax
 jmp xchain00107_n38_α
.Lx00122_1:
 inc qword ptr [rbp + 752]
 jmp .Lx00122_0
 xchain00107_n35_β:
 inc qword ptr [rbp + 752]
 jmp .Lx00122_0
.Lx00122_2:
 .quad .Lx00122_2_s
.Lx00122_2_s:
 .string "/"
# IR_RETURN
 xchain00107_n36_α:
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
 xchain00107_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00107_n15_α
 xchain00107_n37_β:
 jmp xchain00107_n15_α
# IR_MOVE_LABEL
 xchain00107_n38_α:
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + xchain00107_n40_α]
 mov qword ptr [rbp + 688], rax
 jmp xchain00107_n39_α
 xchain00107_n38_β:
 jmp xchain00107_n46_α
# IR_SCAN_TAB
 xchain00107_n39_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 680]
 cmp rax, 1
 jge .Lx00123_0
 add rax, r15
 add rax, 1
.Lx00123_0:
 cmp rax, 1
 jge .Lx00123_239
 add rsp, 16
 jmp xchain00107_n46_α
.Lx00123_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00123_240
 add rsp, 16
 jmp xchain00107_n46_α
.Lx00123_240:
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
 jmp xchain00107_n42_α
 xchain00107_n39_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00107_n46_α
# IR_LIT_INTEGER
 xchain00107_n40_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain00107_n44_α
 xchain00107_n40_β:
 jmp xchain00107_n46_α
.Lx00124_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00107_n41_α:
 jmp qword ptr [rbp + 688]
 xchain00107_n41_β:
 jmp xchain00107_n46_α
 xchain00107_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00107_n45_α
 xchain00107_n42_β:
 jmp xchain00107_n46_α
 xchain00107_n43_α:
 jmp xchain00107_n46_α
xchain00107_n43_β:
 jmp xchain00107_n46_α
# IR_MOVE_LABEL
 xchain00107_n44_α:
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
 lea rax, [rip + xchain00107_n43_α]
 mov qword ptr [rbp + 688], rax
 jmp xchain00107_n39_α
 xchain00107_n44_β:
 jmp xchain00107_n46_α
 xchain00107_n45_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 616], rax
 jmp xchain00107_n47_α
xchain00107_n45_β:
 jmp xchain00107_n46_α
# IR_GEN_SCAN
 xchain00107_n46_α:
 lea rdi, [rbp + 544]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 544]
 mov r14, qword ptr [rbp + 552]
 mov r15, qword ptr [rbp + 560]
 jmp xchain00107_n8_α
 xchain00107_n46_β:
 jmp xchain00107_n8_α
# IR_GEN_SCAN
 xchain00107_n47_α:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
 lea rdi, [rbp + 544]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 544]
 mov r14, qword ptr [rbp + 552]
 mov r15, qword ptr [rbp + 560]
 jmp xchain00107_n8_α
 xchain00107_n47_β:
 jmp xchain00107_n8_α
proc_gedlnf_res:
add rsp, 8
pop rbp
proc_gedlnf_β:
jmp proc_gedlnf_ω
proc_gedlnf_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1416]
lea rsp, [rbp + 1440]
mov rbp, [rbp + 1432]
jmp rax
proc_gedlnf_ω:
mov rax, [rbp + 1424]
lea rsp, [rbp + 1440]
mov rbp, [rbp + 1432]
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
 xchain00125_n0_α:
 mov rdi, 1879052352
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain00125_n1_α
 xchain00125_n0_β:
 jmp xchain00125_n3_α
# IR_NULLTEST_VAR
 xchain00125_n1_α:
 mov eax, dword ptr [rbp + 4176]
 cmp eax, 99
 je xchain00125_n3_α
 mov rdi, qword ptr [rbp + 4176]
 mov rsi, qword ptr [rbp + 4184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00125_n3_α
 cmp eax, 0
 jne xchain00125_n3_α
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4216], rax
 jmp xchain00125_n2_α
 xchain00125_n1_β:
 jmp xchain00125_n3_α
# IR_LIT_INTEGER
 xchain00125_n2_α:
 mov qword ptr [rbp + 4256], 6
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain00125_n4_α
 xchain00125_n2_β:
 jmp xchain00125_n3_α
.Lx00126_0:
 .quad 1
# IR_VAR
 xchain00125_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1544], rax
 jmp xchain00125_n5_α
 xchain00125_n3_β:
 jmp proc_geddate_ω
# IR_ASSIGN_VAR
 xchain00125_n4_α:
 mov rdi, qword ptr [rbp + 4208]
 mov rsi, qword ptr [rbp + 4216]
 mov rdx, qword ptr [rbp + 4256]
 mov rcx, qword ptr [rbp + 4264]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n3_α
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00125_n6_α
 xchain00125_n4_β:
 jmp xchain00125_n3_α
# IR_LIT_STRING
 xchain00125_n5_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00125_n7_α
 xchain00125_n5_β:
 jmp proc_geddate_ω
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string "DATE"
 xchain00125_n6_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn604: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn604]
 lea rsi, [rbp + 4160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 cmp eax, 99
 je xchain00125_n9_α
 jmp xchain00125_n8_α
 xchain00125_n6_β:
 jmp xchain00125_n9_α
 xchain00125_n7_α:
 mov qword ptr [rbp + 1504], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1536]
 mov rdx, qword ptr [rbp + 1544]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00128_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00128_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00128_3]
 lea rdx, [rip + .Lx00128_4]
 jmp rax
.Lx00128_3:
 mov rax, qword ptr [rbp + 1504]
 test rax, rax
 jne .Lx00128_5
 mov qword ptr [rbp + 1504], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00128_2
.Lx00128_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00128_2
.Lx00128_4:
 mov rax, qword ptr [rbp + 1504]
 test rax, rax
 jne .Lx00128_6
 mov qword ptr [rbp + 1504], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00128_2
.Lx00128_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00128_2
.Lx00128_1:
 call rt_faildescr@PLT
.Lx00128_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00125_n10_α
 xchain00125_n7_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "gedval"
# IR_ASSIGN gva
 xchain00125_n8_α:
 mov rax, qword ptr [rbp + 4144]
 mov rdx, qword ptr [rbp + 4152]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain00125_n9_α
 xchain00125_n8_β:
 jmp xchain00125_n9_α
# IR_VAR_REF
 xchain00125_n9_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 jmp xchain00125_n11_α
 xchain00125_n9_β:
 jmp xchain00125_n16_α
# IR_LIT_CHARSET
 xchain00125_n10_α:
 mov qword ptr [rbp + 1600], 1
 mov dword ptr [rbp + 1604], -1
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00125_n12_α
 xchain00125_n10_β:
 jmp xchain00125_n7_β
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "\t\n "
# IR_LIT_STRING
 xchain00125_n11_α:
 mov qword ptr [rbp + 4016], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 4024], rax
 jmp xchain00125_n13_α
 xchain00125_n11_β:
 jmp xchain00125_n16_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "JAN"
 xchain00125_n12_α:
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
  .Lrkfn613: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn613]
 lea rsi, [rbp + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00125_n14_α
 xchain00125_n12_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00125_n13_α:
 mov rdi, qword ptr [rbp + 3984]
 mov rsi, qword ptr [rbp + 3992]
 mov rdx, qword ptr [rbp + 4016]
 mov rcx, qword ptr [rbp + 4024]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n16_α
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp xchain00125_n15_α
 xchain00125_n13_β:
 jmp xchain00125_n16_α
# IR_MOVE_LABEL
 xchain00125_n14_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 lea rax, [rip + xchain00125_n7_β]
 mov qword ptr [rbp + 1376], rax
 jmp xchain00125_n17_α
 xchain00125_n14_β:
 jmp xchain00125_n21_α
# IR_LIT_STRING
 xchain00125_n15_α:
 mov qword ptr [rbp + 4096], 1
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [rbp + 4104], rax
 jmp xchain00125_n19_α
 xchain00125_n15_β:
 jmp xchain00125_n16_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string "Jan"
# IR_VAR_REF
 xchain00125_n16_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00125_n20_α
 xchain00125_n16_β:
 jmp xchain00125_n25_α
 xchain00125_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00125_n21_α
 xchain00125_n17_β:
 jmp xchain00125_n21_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00125_n18_α:
 jmp qword ptr [rbp + 1376]
 xchain00125_n18_β:
 jmp xchain00125_n21_α
# IR_ASSIGN_VAR
 xchain00125_n19_α:
 mov rdi, qword ptr [rbp + 4048]
 mov rsi, qword ptr [rbp + 4056]
 mov rdx, qword ptr [rbp + 4096]
 mov rcx, qword ptr [rbp + 4104]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n16_α
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00125_n16_α
 xchain00125_n19_β:
 jmp xchain00125_n16_α
# IR_LIT_STRING
 xchain00125_n20_α:
 mov qword ptr [rbp + 3872], 1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00125_n22_α
 xchain00125_n20_β:
 jmp xchain00125_n25_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "FEB"
# IR_LIT_STRING
 xchain00125_n21_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00125_n23_α
 xchain00125_n21_β:
 jmp xchain00125_n26_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string ""
# IR_SUBSCRIPT x[i] variable
 xchain00125_n22_α:
 mov rdi, qword ptr [rbp + 3840]
 mov rsi, qword ptr [rbp + 3848]
 mov rdx, qword ptr [rbp + 3872]
 mov rcx, qword ptr [rbp + 3880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n25_α
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00125_n24_α
 xchain00125_n22_β:
 jmp xchain00125_n25_α
 xchain00125_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain00125_n26_α
 xchain00125_n23_β:
 jmp xchain00125_n26_α
# IR_LIT_STRING
 xchain00125_n24_α:
 mov qword ptr [rbp + 3952], 1
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [rbp + 3960], rax
 jmp xchain00125_n27_α
 xchain00125_n24_β:
 jmp xchain00125_n25_α
.Lx00134_0:
 .quad .Lx00134_0_s
.Lx00134_0_s:
 .string "Feb"
# IR_VAR_REF
 xchain00125_n25_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00125_n28_α
 xchain00125_n25_β:
 jmp xchain00125_n36_α
# IR_VAR
 xchain00125_n26_α:
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00125_n29_α
 xchain00125_n26_β:
 jmp xchain00125_n30_α
# IR_ASSIGN_VAR
 xchain00125_n27_α:
 mov rdi, qword ptr [rbp + 3904]
 mov rsi, qword ptr [rbp + 3912]
 mov rdx, qword ptr [rbp + 3952]
 mov rcx, qword ptr [rbp + 3960]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n25_α
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain00125_n25_α
 xchain00125_n27_β:
 jmp xchain00125_n25_α
# IR_LIT_STRING
 xchain00125_n28_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00125_n31_α
 xchain00125_n28_β:
 jmp xchain00125_n36_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "MAR"
# IR_GEN_SCAN
 xchain00125_n29_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00125_n32_α
 xchain00125_n29_β:
 jmp xchain00125_n30_α
# IR_VAR
 xchain00125_n30_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 392], rax
 jmp xchain00125_n33_α
 xchain00125_n30_β:
 jmp xchain00125_n34_α
# IR_SUBSCRIPT x[i] variable
 xchain00125_n31_α:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3728]
 mov rcx, qword ptr [rbp + 3736]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n36_α
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00125_n35_α
 xchain00125_n31_β:
 jmp xchain00125_n36_α
# IR_LIT_INTEGER
 xchain00125_n32_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00125_n37_α
 xchain00125_n32_β:
 jmp xchain00125_n43_α
.Lx00136_0:
 .quad 0
# IR_UNOP
 xchain00125_n33_α:
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 call rt_size_d@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00125_n38_α
 xchain00125_n33_β:
 jmp xchain00125_n34_α
# IR_VAR
 xchain00125_n34_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 264], rax
 jmp xchain00125_n39_α
 xchain00125_n34_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00125_n35_α:
 mov qword ptr [rbp + 3808], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 3816], rax
 jmp xchain00125_n40_α
 xchain00125_n35_β:
 jmp xchain00125_n36_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "Mar"
# IR_VAR_REF
 xchain00125_n36_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00125_n41_α
 xchain00125_n36_β:
 jmp xchain00125_n51_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00125_n37_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00138_0
 add rax, r15
 add rax, 1
.Lx00138_0:
 cmp rax, 1
 jl xchain00125_n43_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00125_n43_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00125_n43_α
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
 jmp xchain00125_n42_α
 xchain00125_n37_β:
 jmp xchain00125_n43_α
# IR_LIT_INTEGER
 xchain00125_n38_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00125_n44_α
 xchain00125_n38_β:
 jmp xchain00125_n34_α
.Lx00139_0:
 .quad 13
# IR_LIT_INTEGER
 xchain00125_n39_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00140_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00125_n45_α
 xchain00125_n39_β:
 jmp proc_geddate_ω
.Lx00140_0:
 .quad 12
# IR_ASSIGN_VAR
 xchain00125_n40_α:
 mov rdi, qword ptr [rbp + 3760]
 mov rsi, qword ptr [rbp + 3768]
 mov rdx, qword ptr [rbp + 3808]
 mov rcx, qword ptr [rbp + 3816]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n36_α
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00125_n36_α
 xchain00125_n40_β:
 jmp xchain00125_n36_α
# IR_LIT_STRING
 xchain00125_n41_α:
 mov qword ptr [rbp + 3584], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 3592], rax
 jmp xchain00125_n46_α
 xchain00125_n41_β:
 jmp xchain00125_n51_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "APR"
# IR_GEN_SCAN
 xchain00125_n42_α:
 lea rdi, [rbp + 464]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 464]
 mov r14, qword ptr [rbp + 472]
 mov r15, qword ptr [rbp + 480]
 jmp xchain00125_n30_α
 xchain00125_n42_β:
 jmp xchain00125_n30_α
# KEYWORD_null
 xchain00125_n43_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 jmp xchain00125_n47_α
 xchain00125_n43_β:
 jmp xchain00125_n42_α
 xchain00125_n44_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 352]
 cmp eax, 100
 je .Lx00142_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx00142_0
 mov eax, dword ptr [rbp + 352]
 cmp eax, 6
 jne .Lx00142_2
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx00142_2
.Lx00142_1:
 mov rax, qword ptr [rbp + 360]
 mov rcx, qword ptr [rbp + 424]
 cmp rax, rcx
 jle xchain00125_n34_α
 mov rcx, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rcx
 mov rcx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rcx
 jmp xchain00125_n48_α
.Lx00142_0:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 7
 lea r9, [rbp + 320]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00142_1
 cmp eax, 1
 je xchain00125_n34_α
 jmp xchain00125_n48_α
.Lx00142_2:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 416]
 mov rcx, qword ptr [rbp + 424]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00125_n34_α
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 328], rax
 jmp xchain00125_n48_α
 xchain00125_n44_β:
 jmp xchain00125_n34_α
 xchain00125_n45_α:
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
  .Lrkfn658: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn658]
 lea rsi, [rbp + 208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00125_n49_α
 xchain00125_n45_β:
 jmp proc_geddate_ω
# IR_SUBSCRIPT x[i] variable
 xchain00125_n46_α:
 mov rdi, qword ptr [rbp + 3552]
 mov rsi, qword ptr [rbp + 3560]
 mov rdx, qword ptr [rbp + 3584]
 mov rcx, qword ptr [rbp + 3592]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n51_α
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain00125_n50_α
 xchain00125_n46_β:
 jmp xchain00125_n51_α
# IR_LIT_CHARSET
 xchain00125_n47_α:
 mov qword ptr [rbp + 1232], 1
 mov dword ptr [rbp + 1236], -1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00125_n52_α
 xchain00125_n47_β:
 jmp xchain00125_n59_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "\t\n "
# IR_VAR
 xchain00125_n48_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 104], rax
 jmp xchain00125_n53_α
 xchain00125_n48_β:
 jmp proc_geddate_ω
# IR_RETURN
 xchain00125_n49_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_LIT_STRING
 xchain00125_n50_α:
 mov qword ptr [rbp + 3664], 1
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00125_n54_α
 xchain00125_n50_β:
 jmp xchain00125_n51_α
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "Apr"
# IR_VAR_REF
 xchain00125_n51_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain00125_n55_α
 xchain00125_n51_β:
 jmp xchain00125_n62_α
# IR_SCAN_MANY
 xchain00125_n52_α:
 mov eax, r14d
.Lx00145_0:
 cmp eax, r15d
 jge .Lx00145_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00145_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00145_1
 add eax, 1
 jmp .Lx00145_0
.Lx00145_1:
 cmp eax, r14d
 je xchain00125_n59_α
 mov qword ptr [rbp + 1200], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1208], rcx
 jmp xchain00125_n56_α
 xchain00125_n52_β:
 jmp xchain00125_n59_α
.Lx00145_2:
 .quad .Lx00145_2_s
.Lx00145_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00125_n53_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00125_n57_α
 xchain00125_n53_β:
 jmp proc_geddate_ω
.Lx00146_0:
 .quad 2
# IR_ASSIGN_VAR
 xchain00125_n54_α:
 mov rdi, qword ptr [rbp + 3616]
 mov rsi, qword ptr [rbp + 3624]
 mov rdx, qword ptr [rbp + 3664]
 mov rcx, qword ptr [rbp + 3672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n51_α
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain00125_n51_α
 xchain00125_n54_β:
 jmp xchain00125_n51_α
# IR_LIT_STRING
 xchain00125_n55_α:
 mov qword ptr [rbp + 3440], 1
 mov rax, qword ptr [rip + .Lx00147_0]
 mov qword ptr [rbp + 3448], rax
 jmp xchain00125_n58_α
 xchain00125_n55_β:
 jmp xchain00125_n62_α
.Lx00147_0:
 .quad .Lx00147_0_s
.Lx00147_0_s:
 .string "MAY"
# IR_SCAN_TAB
 xchain00125_n56_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1208]
 cmp rax, 1
 jge .Lx00148_0
 add rax, r15
 add rax, 1
.Lx00148_0:
 cmp rax, 1
 jge .Lx00148_239
 add rsp, 16
 jmp xchain00125_n59_α
.Lx00148_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00148_240
 add rsp, 16
 jmp xchain00125_n59_α
.Lx00148_240:
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
 jmp xchain00125_n59_α
 xchain00125_n56_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00125_n59_α
# IR_LIT_INTEGER
 xchain00125_n57_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00149_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00125_n60_α
 xchain00125_n57_β:
 jmp proc_geddate_ω
.Lx00149_0:
 .quad 0
# IR_SUBSCRIPT x[i] variable
 xchain00125_n58_α:
 mov rdi, qword ptr [rbp + 3408]
 mov rsi, qword ptr [rbp + 3416]
 mov rdx, qword ptr [rbp + 3440]
 mov rcx, qword ptr [rbp + 3448]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n62_α
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain00125_n61_α
 xchain00125_n58_β:
 jmp xchain00125_n62_α
# IR_LIT_CHARSET
 xchain00125_n59_α:
 mov qword ptr [rbp + 1136], 1
 mov dword ptr [rbp + 1140], -1
 mov rax, qword ptr [rip + .Lx00150_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00125_n63_α
 xchain00125_n59_β:
 jmp xchain00125_n70_α
.Lx00150_0:
 .quad .Lx00150_0_s
.Lx00150_0_s:
 .string "\t\n "
# IR_SUBSCRIPT section
 xchain00125_n60_α:
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
 jmp xchain00125_n64_α
 xchain00125_n60_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00125_n61_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx00151_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain00125_n65_α
 xchain00125_n61_β:
 jmp xchain00125_n62_α
.Lx00151_0:
 .quad .Lx00151_0_s
.Lx00151_0_s:
 .string "May"
# IR_VAR_REF
 xchain00125_n62_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain00125_n66_α
 xchain00125_n62_β:
 jmp xchain00125_n73_α
# IR_SCAN_UPTO
 xchain00125_n63_α:
 mov qword ptr [rbp + 1120], r14
.Lx00152_0:
 mov rax, qword ptr [rbp + 1120]
 cmp rax, r15
 jge xchain00125_n70_α
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00152_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00152_1
 mov qword ptr [rbp + 1104], 6
 add rax, 1
 mov qword ptr [rbp + 1112], rax
 jmp xchain00125_n67_α
.Lx00152_1:
 inc qword ptr [rbp + 1120]
 jmp .Lx00152_0
 xchain00125_n63_β:
 inc qword ptr [rbp + 1120]
 jmp .Lx00152_0
.Lx00152_2:
 .quad .Lx00152_2_s
.Lx00152_2_s:
 .string "\t\n "
# IR_RETURN
 xchain00125_n64_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_ASSIGN_VAR
 xchain00125_n65_α:
 mov rdi, qword ptr [rbp + 3472]
 mov rsi, qword ptr [rbp + 3480]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n62_α
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain00125_n62_α
 xchain00125_n65_β:
 jmp xchain00125_n62_α
# IR_LIT_STRING
 xchain00125_n66_α:
 mov qword ptr [rbp + 3296], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00125_n68_α
 xchain00125_n66_β:
 jmp xchain00125_n73_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string "JUN"
# IR_MOVE_LABEL
 xchain00125_n67_α:
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00125_n70_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00125_n69_α
 xchain00125_n67_β:
 jmp xchain00125_n75_α
# IR_SUBSCRIPT x[i] variable
 xchain00125_n68_α:
 mov rdi, qword ptr [rbp + 3264]
 mov rsi, qword ptr [rbp + 3272]
 mov rdx, qword ptr [rbp + 3296]
 mov rcx, qword ptr [rbp + 3304]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n73_α
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain00125_n72_α
 xchain00125_n68_β:
 jmp xchain00125_n73_α
# IR_SCAN_TAB
 xchain00125_n69_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1048]
 cmp rax, 1
 jge .Lx00154_0
 add rax, r15
 add rax, 1
.Lx00154_0:
 cmp rax, 1
 jge .Lx00154_239
 add rsp, 16
 jmp xchain00125_n75_α
.Lx00154_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00154_240
 add rsp, 16
 jmp xchain00125_n75_α
.Lx00154_240:
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
 jmp xchain00125_n74_α
 xchain00125_n69_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00125_n75_α
# IR_LIT_INTEGER
 xchain00125_n70_α:
 mov qword ptr [rbp + 1072], 6
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00125_n76_α
 xchain00125_n70_β:
 jmp xchain00125_n75_α
.Lx00155_0:
 .quad 0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00125_n71_α:
 jmp qword ptr [rbp + 1056]
 xchain00125_n71_β:
 jmp xchain00125_n75_α
# IR_LIT_STRING
 xchain00125_n72_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain00125_n77_α
 xchain00125_n72_β:
 jmp xchain00125_n73_α
.Lx00156_0:
 .quad .Lx00156_0_s
.Lx00156_0_s:
 .string "Jun"
# IR_VAR_REF
 xchain00125_n73_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00125_n78_α
 xchain00125_n73_β:
 jmp xchain00125_n83_α
 xchain00125_n74_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00125_n75_α
 xchain00125_n74_β:
 jmp xchain00125_n75_α
# IR_VAR
 xchain00125_n75_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 696], rax
 jmp xchain00125_n79_α
 xchain00125_n75_β:
 jmp xchain00125_n32_α
# IR_MOVE_LABEL
 xchain00125_n76_α:
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 lea rax, [rip + xchain00125_n75_α]
 mov qword ptr [rbp + 1056], rax
 jmp xchain00125_n69_α
 xchain00125_n76_β:
 jmp xchain00125_n75_α
# IR_ASSIGN_VAR
 xchain00125_n77_α:
 mov rdi, qword ptr [rbp + 3328]
 mov rsi, qword ptr [rbp + 3336]
 mov rdx, qword ptr [rbp + 3376]
 mov rcx, qword ptr [rbp + 3384]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n73_α
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00125_n73_α
 xchain00125_n77_β:
 jmp xchain00125_n73_α
# IR_LIT_STRING
 xchain00125_n78_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00157_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00125_n80_α
 xchain00125_n78_β:
 jmp xchain00125_n83_α
.Lx00157_0:
 .quad .Lx00157_0_s
.Lx00157_0_s:
 .string "JUL"
# IR_LIT_STRING
 xchain00125_n79_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00125_n81_α
 xchain00125_n79_β:
 jmp xchain00125_n32_α
.Lx00158_0:
 .quad .Lx00158_0_s
.Lx00158_0_s:
 .string " "
# IR_SUBSCRIPT x[i] variable
 xchain00125_n80_α:
 mov rdi, qword ptr [rbp + 3120]
 mov rsi, qword ptr [rbp + 3128]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n83_α
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00125_n82_α
 xchain00125_n80_β:
 jmp xchain00125_n83_α
# IR_VAR_REF
 xchain00125_n81_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain00125_n84_α
 xchain00125_n81_β:
 jmp xchain00125_n88_α
# IR_LIT_STRING
 xchain00125_n82_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00125_n85_α
 xchain00125_n82_β:
 jmp xchain00125_n83_α
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "Jul"
# IR_VAR_REF
 xchain00125_n83_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00125_n86_α
 xchain00125_n83_β:
 jmp xchain00125_n93_α
# IR_VAR
 xchain00125_n84_α:
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 920], rax
 jmp xchain00125_n87_α
 xchain00125_n84_β:
 jmp xchain00125_n88_α
# IR_ASSIGN_VAR
 xchain00125_n85_α:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 mov rdx, qword ptr [rbp + 3232]
 mov rcx, qword ptr [rbp + 3240]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n83_α
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00125_n83_α
 xchain00125_n85_β:
 jmp xchain00125_n83_α
# IR_LIT_STRING
 xchain00125_n86_α:
 mov qword ptr [rbp + 3008], 1
 mov rax, qword ptr [rip + .Lx00160_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain00125_n89_α
 xchain00125_n86_β:
 jmp xchain00125_n93_α
.Lx00160_0:
 .quad .Lx00160_0_s
.Lx00160_0_s:
 .string "AUG"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n87_α:
 mov rdi, qword ptr [rbp + 880]
 mov rsi, qword ptr [rbp + 888]
 mov rdx, qword ptr [rbp + 912]
 mov rcx, qword ptr [rbp + 920]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n88_α
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00125_n90_α
 xchain00125_n87_β:
 jmp xchain00125_n88_α
# IR_VAR
 xchain00125_n88_α:
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 824], rax
 jmp xchain00125_n91_α
 xchain00125_n88_β:
 jmp xchain00125_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00125_n89_α:
 mov rdi, qword ptr [rbp + 2976]
 mov rsi, qword ptr [rbp + 2984]
 mov rdx, qword ptr [rbp + 3008]
 mov rcx, qword ptr [rbp + 3016]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n93_α
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00125_n92_α
 xchain00125_n89_β:
 jmp xchain00125_n93_α
# IR_DEREF variable -> value
 xchain00125_n90_α:
 mov rdi, qword ptr [rbp + 944]
 mov rsi, qword ptr [rbp + 952]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00125_n88_α
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00125_n94_α
 xchain00125_n90_β:
 jmp xchain00125_n88_α
# IR_MOVE_LABEL
 xchain00125_n91_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00125_n32_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00125_n95_α
 xchain00125_n91_β:
 jmp xchain00125_n32_α
# IR_LIT_STRING
 xchain00125_n92_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00125_n97_α
 xchain00125_n92_β:
 jmp xchain00125_n93_α
.Lx00161_0:
 .quad .Lx00161_0_s
.Lx00161_0_s:
 .string "Aug"
# IR_VAR_REF
 xchain00125_n93_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain00125_n98_α
 xchain00125_n93_β:
 jmp xchain00125_n00030_α
# IR_UNOP
 xchain00125_n94_α:
 mov eax, dword ptr [rbp + 976]
 cmp eax, 99
 je xchain00125_n88_α
 cmp eax, 0
 je xchain00125_n88_α
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 856], rax
 jmp xchain00125_n99_α
 xchain00125_n94_β:
 jmp xchain00125_n88_α
 xchain00125_n95_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 call str_concat_d@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00125_n00025_α
 xchain00125_n95_β:
 jmp xchain00125_n32_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00125_n96_α:
 jmp qword ptr [rbp + 800]
 xchain00125_n96_β:
 jmp xchain00125_n32_α
# IR_ASSIGN_VAR
 xchain00125_n97_α:
 mov rdi, qword ptr [rbp + 3040]
 mov rsi, qword ptr [rbp + 3048]
 mov rdx, qword ptr [rbp + 3088]
 mov rcx, qword ptr [rbp + 3096]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n93_α
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00125_n93_α
 xchain00125_n97_β:
 jmp xchain00125_n93_α
# IR_LIT_STRING
 xchain00125_n98_α:
 mov qword ptr [rbp + 2864], 1
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain00125_n00026_α
 xchain00125_n98_β:
 jmp xchain00125_n00030_α
.Lx00162_0:
 .quad .Lx00162_0_s
.Lx00162_0_s:
 .string "SEP"
# IR_MOVE_LABEL
 xchain00125_n99_α:
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
 lea rax, [rip + xchain00125_n88_α]
 mov qword ptr [rbp + 800], rax
 jmp xchain00125_n95_α
 xchain00125_n99_β:
 jmp xchain00125_n32_α
 xchain00125_n00025_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00125_n00028_α
 xchain00125_n00025_β:
 jmp xchain00125_n32_α
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00026_α:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 2864]
 mov rcx, qword ptr [rbp + 2872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00030_α
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain00125_n00029_α
 xchain00125_n00026_β:
 jmp xchain00125_n00030_α
 xchain00125_n00028_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00125_n00031_α
 xchain00125_n00028_β:
 jmp xchain00125_n32_α
# IR_LIT_STRING
 xchain00125_n00029_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00125_n00032_α
 xchain00125_n00029_β:
 jmp xchain00125_n00030_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "Sep"
# IR_VAR_REF
 xchain00125_n00030_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00125_n00033_α
 xchain00125_n00030_β:
 jmp xchain00125_n00036_α
 xchain00125_n00031_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 632], rax
 jmp xchain00125_n32_α
xchain00125_n00031_β:
 jmp xchain00125_n32_α
# IR_ASSIGN_VAR
 xchain00125_n00032_α:
 mov rdi, qword ptr [rbp + 2896]
 mov rsi, qword ptr [rbp + 2904]
 mov rdx, qword ptr [rbp + 2944]
 mov rcx, qword ptr [rbp + 2952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00030_α
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain00125_n00030_α
 xchain00125_n00032_β:
 jmp xchain00125_n00030_α
# IR_LIT_STRING
 xchain00125_n00033_α:
 mov qword ptr [rbp + 2720], 1
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00125_n00034_α
 xchain00125_n00033_β:
 jmp xchain00125_n00036_α
.Lx00164_0:
 .quad .Lx00164_0_s
.Lx00164_0_s:
 .string "OCT"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00034_α:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00036_α
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain00125_n00035_α
 xchain00125_n00034_β:
 jmp xchain00125_n00036_α
# IR_LIT_STRING
 xchain00125_n00035_α:
 mov qword ptr [rbp + 2800], 1
 mov rax, qword ptr [rip + .Lx00165_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00125_n00166_α
 xchain00125_n00035_β:
 jmp xchain00125_n00036_α
.Lx00165_0:
 .quad .Lx00165_0_s
.Lx00165_0_s:
 .string "Oct"
# IR_VAR_REF
 xchain00125_n00036_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain00125_n00167_α
 xchain00125_n00036_β:
 jmp xchain00125_n00168_α
# IR_ASSIGN_VAR
 xchain00125_n00166_α:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2800]
 mov rcx, qword ptr [rbp + 2808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00036_α
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00125_n00036_α
 xchain00125_n00166_β:
 jmp xchain00125_n00036_α
# IR_LIT_STRING
 xchain00125_n00167_α:
 mov qword ptr [rbp + 2576], 1
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00125_n00170_α
 xchain00125_n00167_β:
 jmp xchain00125_n00168_α
.Lx00169_0:
 .quad .Lx00169_0_s
.Lx00169_0_s:
 .string "NOV"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00170_α:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2576]
 mov rcx, qword ptr [rbp + 2584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00168_α
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00125_n00001_α
 xchain00125_n00170_β:
 jmp xchain00125_n00168_α
# IR_LIT_STRING
 xchain00125_n00001_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx00171_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00125_n00002_α
 xchain00125_n00001_β:
 jmp xchain00125_n00168_α
.Lx00171_0:
 .quad .Lx00171_0_s
.Lx00171_0_s:
 .string "Nov"
# IR_VAR_REF
 xchain00125_n00168_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00125_n00172_α
 xchain00125_n00168_β:
 jmp xchain00125_n00173_α
# IR_ASSIGN_VAR
 xchain00125_n00002_α:
 mov rdi, qword ptr [rbp + 2608]
 mov rsi, qword ptr [rbp + 2616]
 mov rdx, qword ptr [rbp + 2656]
 mov rcx, qword ptr [rbp + 2664]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00168_α
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00125_n00168_α
 xchain00125_n00002_β:
 jmp xchain00125_n00168_α
# IR_LIT_STRING
 xchain00125_n00172_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx00174_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain00125_n00175_α
 xchain00125_n00172_β:
 jmp xchain00125_n00173_α
.Lx00174_0:
 .quad .Lx00174_0_s
.Lx00174_0_s:
 .string "DEC"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00175_α:
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 mov rdx, qword ptr [rbp + 2432]
 mov rcx, qword ptr [rbp + 2440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00173_α
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00125_n00176_α
 xchain00125_n00175_β:
 jmp xchain00125_n00173_α
# IR_LIT_STRING
 xchain00125_n00176_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain00125_n00178_α
 xchain00125_n00176_β:
 jmp xchain00125_n00173_α
.Lx00177_0:
 .quad .Lx00177_0_s
.Lx00177_0_s:
 .string "Dec"
# IR_VAR_REF
 xchain00125_n00173_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00125_n00179_α
 xchain00125_n00173_β:
 jmp xchain00125_n00180_α
# IR_ASSIGN_VAR
 xchain00125_n00178_α:
 mov rdi, qword ptr [rbp + 2464]
 mov rsi, qword ptr [rbp + 2472]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00173_α
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00125_n00173_α
 xchain00125_n00178_β:
 jmp xchain00125_n00173_α
# IR_LIT_STRING
 xchain00125_n00179_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx00181_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00125_n00182_α
 xchain00125_n00179_β:
 jmp xchain00125_n00180_α
.Lx00181_0:
 .quad .Lx00181_0_s
.Lx00181_0_s:
 .string "ABT"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00182_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00180_α
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00125_n00183_α
 xchain00125_n00182_β:
 jmp xchain00125_n00180_α
# IR_LIT_STRING
 xchain00125_n00183_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00125_n00185_α
 xchain00125_n00183_β:
 jmp xchain00125_n00180_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "abt"
# IR_VAR_REF
 xchain00125_n00180_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain00125_n00186_α
 xchain00125_n00180_β:
 jmp xchain00125_n00187_α
# IR_ASSIGN_VAR
 xchain00125_n00185_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00180_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00125_n00180_α
 xchain00125_n00185_β:
 jmp xchain00125_n00180_α
# IR_LIT_STRING
 xchain00125_n00186_α:
 mov qword ptr [rbp + 2144], 1
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00125_n00189_α
 xchain00125_n00186_β:
 jmp xchain00125_n00187_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "BEF"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00189_α:
 mov rdi, qword ptr [rbp + 2112]
 mov rsi, qword ptr [rbp + 2120]
 mov rdx, qword ptr [rbp + 2144]
 mov rcx, qword ptr [rbp + 2152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00187_α
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00125_n00190_α
 xchain00125_n00189_β:
 jmp xchain00125_n00187_α
# IR_LIT_STRING
 xchain00125_n00190_α:
 mov qword ptr [rbp + 2224], 1
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00125_n00003_α
 xchain00125_n00190_β:
 jmp xchain00125_n00187_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "bef"
# IR_VAR_REF
 xchain00125_n00187_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00125_n00192_α
 xchain00125_n00187_β:
 jmp xchain00125_n00193_α
# IR_ASSIGN_VAR
 xchain00125_n00003_α:
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 mov rdx, qword ptr [rbp + 2224]
 mov rcx, qword ptr [rbp + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00187_α
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00125_n00187_α
 xchain00125_n00003_β:
 jmp xchain00125_n00187_α
# IR_LIT_STRING
 xchain00125_n00192_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain00125_n00195_α
 xchain00125_n00192_β:
 jmp xchain00125_n00193_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "AFT"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00195_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00193_α
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain00125_n00004_α
 xchain00125_n00195_β:
 jmp xchain00125_n00193_α
# IR_LIT_STRING
 xchain00125_n00004_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00125_n00197_α
 xchain00125_n00004_β:
 jmp xchain00125_n00193_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "aft"
# IR_VAR_REF
 xchain00125_n00193_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain00125_n00198_α
 xchain00125_n00193_β:
 jmp xchain00125_n00199_α
# IR_ASSIGN_VAR
 xchain00125_n00197_α:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00193_α
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain00125_n00193_α
 xchain00125_n00197_β:
 jmp xchain00125_n00193_α
# IR_LIT_STRING
 xchain00125_n00198_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx00200_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00125_n00201_α
 xchain00125_n00198_β:
 jmp xchain00125_n00199_α
.Lx00200_0:
 .quad .Lx00200_0_s
.Lx00200_0_s:
 .string "CAL"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00201_α:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n00199_α
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00125_n00202_α
 xchain00125_n00201_β:
 jmp xchain00125_n00199_α
# IR_LIT_STRING
 xchain00125_n00202_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx00203_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00125_n00204_α
 xchain00125_n00202_β:
 jmp xchain00125_n00199_α
.Lx00203_0:
 .quad .Lx00203_0_s
.Lx00203_0_s:
 .string "cal"
# IR_VAR_REF
 xchain00125_n00199_α:
 mov rdi, 1879052336
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00125_n00005_α
 xchain00125_n00199_β:
 jmp xchain00125_n3_α
# IR_ASSIGN_VAR
 xchain00125_n00204_α:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1936]
 mov rcx, qword ptr [rbp + 1944]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n00199_α
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00125_n00199_α
 xchain00125_n00204_β:
 jmp xchain00125_n00199_α
# IR_LIT_STRING
 xchain00125_n00005_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00125_n00206_α
 xchain00125_n00005_β:
 jmp xchain00125_n3_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "EST"
# IR_SUBSCRIPT x[i] variable
 xchain00125_n00206_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00125_n3_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00125_n00207_α
 xchain00125_n00206_β:
 jmp xchain00125_n3_α
# IR_LIT_STRING
 xchain00125_n00207_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx00208_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00125_n00209_α
 xchain00125_n00207_β:
 jmp xchain00125_n3_α
.Lx00208_0:
 .quad .Lx00208_0_s
.Lx00208_0_s:
 .string "est"
# IR_ASSIGN_VAR
 xchain00125_n00209_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00125_n3_α
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00125_n00210_α
 xchain00125_n00209_β:
 jmp xchain00125_n3_α
 xchain00125_n00210_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00125_n00211_α
xchain00125_n00210_β:
 jmp xchain00125_n3_α
# IR_MOVE_LABEL
 xchain00125_n00211_α:
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1640], rax
 lea rax, [rip + xchain00125_n3_α]
 mov qword ptr [rbp + 1648], rax
 jmp xchain00125_n3_α
 xchain00125_n00211_β:
 jmp xchain00125_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00125_n00212_α:
 jmp qword ptr [rbp + 1648]
 xchain00125_n00212_β:
 jmp xchain00125_n3_α
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
  mov esi, 928
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
  mov esi, 224
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
  mov esi, 256
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
  mov esi, 1616
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
  mov esi, 1408
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
  mov qword ptr [rsp + 6600], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_VAR
 xchain00213_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 6536], rax
 jmp xchain00213_n1_α
 xchain00213_n0_β:
 jmp xchain00213_n2_α
# IR_UNOP
 xchain00213_n1_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 jmp xchain00213_n3_α
 xchain00213_n1_β:
 jmp xchain00213_n2_α
# KEYWORD_read
 xchain00213_n2_α:
 mov rdi, qword ptr [rip + .Lx00214_0]
 call rt_keyword_read@PLT
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain00213_n4_α
 xchain00213_n2_β:
 jmp xchain00213_n8_α
.Lx00214_0:
 .quad .Lx00214_0_s
.Lx00214_0_s:
 .string "&input"
# IR_LIT_INTEGER
 xchain00213_n3_α:
 mov qword ptr [rbp + 6560], 6
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [rbp + 6568], rax
 jmp xchain00213_n5_α
 xchain00213_n3_β:
 jmp xchain00213_n2_α
.Lx00215_0:
 .quad 0
 xchain00213_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 6432]
 mov rdx, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp xchain00213_n6_α
 xchain00213_n4_β:
 jmp xchain00213_n8_α
 xchain00213_n5_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 6496]
 cmp eax, 100
 je .Lx00216_0
 mov eax, dword ptr [rbp + 6560]
 cmp eax, 100
 je .Lx00216_0
 mov eax, dword ptr [rbp + 6496]
 cmp eax, 6
 jne .Lx00216_2
 mov eax, dword ptr [rbp + 6560]
 cmp eax, 6
 jne .Lx00216_2
.Lx00216_1:
 mov rax, qword ptr [rbp + 6504]
 mov rcx, qword ptr [rbp + 6568]
 cmp rax, rcx
 jle xchain00213_n2_α
 mov rcx, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 6464], rcx
 mov rcx, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 6472], rcx
 jmp xchain00213_n7_α
.Lx00216_0:
 mov rdi, qword ptr [rbp + 6496]
 mov rsi, qword ptr [rbp + 6504]
 mov rdx, qword ptr [rbp + 6560]
 mov rcx, qword ptr [rbp + 6568]
 mov r8d, 7
 lea r9, [rbp + 6464]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00216_1
 cmp eax, 1
 je xchain00213_n2_α
 jmp xchain00213_n7_α
.Lx00216_2:
 mov rdi, qword ptr [rbp + 6496]
 mov rsi, qword ptr [rbp + 6504]
 mov rdx, qword ptr [rbp + 6560]
 mov rcx, qword ptr [rbp + 6568]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00213_n2_α
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 6472], rax
 jmp xchain00213_n7_α
 xchain00213_n5_β:
 jmp xchain00213_n2_α
# IR_MOVE_LABEL
 xchain00213_n6_α:
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 5976], rax
 lea rax, [rip + xchain00213_n8_α]
 mov qword ptr [rbp + 5984], rax
 jmp xchain00213_n8_α
 xchain00213_n6_β:
 jmp xchain00213_n8_α
# IR_VAR_REF
 xchain00213_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain00213_n10_α
 xchain00213_n7_β:
 jmp xchain00213_n18_α
# IR_VAR
 xchain00213_n8_α:
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 5944], rax
 jmp xchain00213_n11_α
 xchain00213_n8_β:
 jmp xchain00213_n12_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00213_n9_α:
 jmp qword ptr [rbp + 5984]
 xchain00213_n9_β:
 jmp xchain00213_n8_α
# IR_LIT_INTEGER
 xchain00213_n10_α:
 mov qword ptr [rbp + 6336], 6
 mov rax, qword ptr [rip + .Lx00217_0]
 mov qword ptr [rbp + 6344], rax
 jmp xchain00213_n13_α
 xchain00213_n10_β:
 jmp xchain00213_n18_α
.Lx00217_0:
 .quad 1
 xchain00213_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5936]
 mov rdx, qword ptr [rbp + 5944]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00218_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00218_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00218_3]
 lea rdx, [rip + .Lx00218_4]
 jmp rax
.Lx00218_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00218_2
.Lx00218_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00218_2
.Lx00218_1:
 call rt_faildescr@PLT
.Lx00218_2:
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 cmp eax, 99
 je xchain00213_n12_α
 jmp xchain00213_n14_α
 xchain00213_n11_β:
 jmp xchain00213_n12_α
.Lx00218_0:
 .quad .Lx00218_0_s
.Lx00218_0_s:
 .string "gedload"
# IR_VAR
 xchain00213_n12_α:
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 5848], rax
 jmp xchain00213_n15_α
 xchain00213_n12_β:
 jmp xchain00213_n16_α
# IR_SUBSCRIPT x[i] variable
 xchain00213_n13_α:
 mov rdi, qword ptr [rbp + 6304]
 mov rsi, qword ptr [rbp + 6312]
 mov rdx, qword ptr [rbp + 6336]
 mov rcx, qword ptr [rbp + 6344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00213_n18_α
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain00213_n17_α
 xchain00213_n13_β:
 jmp xchain00213_n18_α
 xchain00213_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5888]
 mov rdx, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 jmp xchain00213_n12_α
 xchain00213_n14_β:
 jmp xchain00213_n12_α
 xchain00213_n15_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5840] -> [zr+5808]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5816], rax
  .section .rodata
  .Lrkfn816: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn816]
 lea rsi, [rbp + 5808]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain00213_n16_α
 jmp xchain00213_n16_α
 xchain00213_n15_β:
 jmp xchain00213_n16_α
# IR_MAKE_LIST
 xchain00213_n16_α:
 lea rdi, [rbp + 5792]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 jmp xchain00213_n19_α
 xchain00213_n16_β:
 jmp xchain00213_n22_α
# IR_DEREF variable -> value
 xchain00213_n17_α:
 mov rdi, qword ptr [rbp + 6368]
 mov rsi, qword ptr [rbp + 6376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00213_n18_α
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain00213_n20_α
 xchain00213_n17_β:
 jmp xchain00213_n18_α
# IR_LIT_STRING
 xchain00213_n18_α:
 mov qword ptr [rbp + 6112], 1
 mov rax, qword ptr [rip + .Lx00219_0]
 mov qword ptr [rbp + 6120], rax
 jmp xchain00213_n21_α
 xchain00213_n18_β:
 jmp xchain00213_n8_α
.Lx00219_0:
 .quad .Lx00219_0_s
.Lx00219_0_s:
 .string "can't open "
 xchain00213_n19_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5776]
 mov rdx, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain00213_n22_α
 xchain00213_n19_β:
 jmp xchain00213_n22_α
 xchain00213_n20_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6400] -> [zr+6272]
 mov rax, qword ptr [rbp + 6400]
 mov qword ptr [rbp + 6272], rax
 mov rax, qword ptr [rbp + 6408]
 mov qword ptr [rbp + 6280], rax
  .section .rodata
  .Lrkfn823: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn823]
 lea rsi, [rbp + 6272]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 cmp eax, 99
 je xchain00213_n18_α
 jmp xchain00213_n23_α
 xchain00213_n20_β:
 jmp xchain00213_n18_α
# IR_VAR_REF
 xchain00213_n21_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain00213_n24_α
 xchain00213_n21_β:
 jmp xchain00213_n8_α
 xchain00213_n22_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn827: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn827]
 lea rsi, [rbp + 5744]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je xchain00213_n26_α
 jmp xchain00213_n25_α
 xchain00213_n22_β:
 jmp xchain00213_n26_α
# IR_MOVE_LABEL
 xchain00213_n23_α:
 mov rax, qword ptr [rbp + 6256]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 6264]
 mov qword ptr [rbp + 6024], rax
 lea rax, [rip + xchain00213_n18_α]
 mov qword ptr [rbp + 6032], rax
 jmp xchain00213_n27_α
 xchain00213_n23_β:
 jmp xchain00213_n8_α
# IR_LIT_INTEGER
 xchain00213_n24_α:
 mov qword ptr [rbp + 6176], 6
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain00213_n29_α
 xchain00213_n24_β:
 jmp xchain00213_n8_α
.Lx00220_0:
 .quad 1
# IR_ASSIGN gva
 xchain00213_n25_α:
 mov rax, qword ptr [rbp + 5728]
 mov rdx, qword ptr [rbp + 5736]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 jmp xchain00213_n26_α
 xchain00213_n25_β:
 jmp xchain00213_n26_α
# IR_VAR
 xchain00213_n26_α:
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 5256], rax
 jmp xchain00213_n30_α
 xchain00213_n26_β:
 jmp xchain00213_n31_α
 xchain00213_n27_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 6016]
 mov rdx, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain00213_n32_α
 xchain00213_n27_β:
 jmp xchain00213_n8_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00213_n28_α:
 jmp qword ptr [rbp + 6032]
 xchain00213_n28_β:
 jmp xchain00213_n8_α
# IR_SUBSCRIPT x[i] variable
 xchain00213_n29_α:
 mov rdi, qword ptr [rbp + 6144]
 mov rsi, qword ptr [rbp + 6152]
 mov rdx, qword ptr [rbp + 6176]
 mov rcx, qword ptr [rbp + 6184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00213_n8_α
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 jmp xchain00213_n33_α
 xchain00213_n29_β:
 jmp xchain00213_n8_α
# IR_FIELD_GET
 xchain00213_n30_α:
 mov rdi, qword ptr [rip + .Lx00221_0]
 mov rsi, qword ptr [rbp + 5248]
 mov rdx, qword ptr [rbp + 5256]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n31_α
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain00213_n34_α
 xchain00213_n30_β:
 jmp xchain00213_n31_α
.Lx00221_0:
 .quad .Lx00221_0_s
.Lx00221_0_s:
 .string "ind"
# IR_VAR
 xchain00213_n31_α:
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 5112], rax
 jmp xchain00213_n35_α
 xchain00213_n31_β:
 jmp xchain00213_n36_α
# IR_MOVE_LABEL
 xchain00213_n32_α:
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5976], rax
 lea rax, [rip + xchain00213_n28_α]
 mov qword ptr [rbp + 5984], rax
 jmp xchain00213_n8_α
 xchain00213_n32_β:
 jmp xchain00213_n8_α
# IR_DEREF variable -> value
 xchain00213_n33_α:
 mov rdi, qword ptr [rbp + 6208]
 mov rsi, qword ptr [rbp + 6216]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00213_n8_α
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain00213_n37_α
 xchain00213_n33_β:
 jmp xchain00213_n8_α
# IR_LIST_BANG
 xchain00213_n34_α:
 mov qword ptr [rbp + 5200], 0
.Lx00222_0:
 mov rdi, qword ptr [rbp + 5216]
 mov rsi, qword ptr [rbp + 5224]
 mov rdx, qword ptr [rbp + 5200]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 cmp rax, 99
 je xchain00213_n31_α
 jmp xchain00213_n38_α
 xchain00213_n34_β:
 inc qword ptr [rbp + 5200]
 jmp .Lx00222_0
# IR_LIT_INTEGER
 xchain00213_n35_α:
 mov qword ptr [rbp + 5136], 6
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain00213_n39_α
 xchain00213_n35_β:
 jmp xchain00213_n36_α
.Lx00223_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00213_n36_α:
 mov qword ptr [rbp + 4992], 6
 mov rax, qword ptr [rip + .Lx00224_0]
 mov qword ptr [rbp + 5000], rax
 jmp xchain00213_n40_α
 xchain00213_n36_β:
 jmp xchain00213_n44_α
.Lx00224_0:
 .quad 0
 xchain00213_n37_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# marshal arg1 = producer-box slot [zr+6240] -> [zr+6080]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6088], rax
  .section .rodata
  .Lrkfn849: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn849]
 lea rsi, [rbp + 6064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain00213_n8_α
 jmp xchain00213_n41_α
 xchain00213_n37_β:
 jmp xchain00213_n8_α
 xchain00213_n38_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5184]
 mov rdx, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 jmp xchain00213_n42_α
 xchain00213_n38_β:
 jmp xchain00213_n31_α
 xchain00213_n39_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5056]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5064], rax
# marshal arg1 = producer-box slot [zr+5136] -> [zr+5072]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rax
  .section .rodata
  .Lrkfn852: .string "sortf"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn852]
 lea rsi, [rbp + 5056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 cmp eax, 99
 je xchain00213_n36_α
 jmp xchain00213_n43_α
 xchain00213_n39_β:
 jmp xchain00213_n36_α
 xchain00213_n40_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4992]
 mov rdx, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain00213_n44_α
 xchain00213_n40_β:
 jmp xchain00213_n44_α
# IR_MOVE_LABEL
 xchain00213_n41_α:
 mov rax, qword ptr [rbp + 6048]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 6056]
 mov qword ptr [rbp + 6024], rax
 lea rax, [rip + xchain00213_n8_α]
 mov qword ptr [rbp + 6032], rax
 jmp xchain00213_n27_α
 xchain00213_n41_β:
 jmp xchain00213_n8_α
# IR_VAR
 xchain00213_n42_α:
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 5352], rax
 jmp xchain00213_n45_α
 xchain00213_n42_β:
 jmp xchain00213_n34_β
 xchain00213_n43_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5040]
 mov rdx, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain00213_n36_α
 xchain00213_n43_β:
 jmp xchain00213_n36_α
# IR_VAR
 xchain00213_n44_α:
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 4792], rax
 jmp xchain00213_n46_α
 xchain00213_n44_β:
 jmp xchain00213_n47_α
# IR_VAR_REF
 xchain00213_n45_α:
 mov rdi, 1879052288
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain00213_n48_α
 xchain00213_n45_β:
 jmp xchain00213_n34_β
# IR_LIST_BANG
 xchain00213_n46_α:
 mov qword ptr [rbp + 4768], 0
.Lx00225_0:
 mov rdi, qword ptr [rbp + 4784]
 mov rsi, qword ptr [rbp + 4792]
 mov rdx, qword ptr [rbp + 4768]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp rax, 99
 je xchain00213_n47_α
 jmp xchain00213_n49_α
 xchain00213_n46_β:
 inc qword ptr [rbp + 4768]
 jmp .Lx00225_0
# IR_VAR
 xchain00213_n47_α:
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 88], rax
 jmp xchain00213_n50_α
 xchain00213_n47_β:
 jmp main_ω
# IR_VAR
 xchain00213_n48_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 5408], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 5416], rax
 jmp xchain00213_n51_α
 xchain00213_n48_β:
 jmp xchain00213_n34_β
# IR_FIELD_GET lv
 xchain00213_n49_α:
 mov rdi, qword ptr [rip + .Lx00226_0]
 mov rsi, qword ptr [rbp + 4752]
 mov rdx, qword ptr [rbp + 4760]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00213_n47_α
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain00213_n52_α
 xchain00213_n49_β:
 jmp xchain00213_n47_α
.Lx00226_0:
 .quad .Lx00226_0_s
.Lx00226_0_s:
 .string "n"
# IR_LIST_BANG
 xchain00213_n50_α:
 mov qword ptr [rbp + 64], 0
.Lx00227_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 64]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp rax, 99
 je main_ω
 jmp xchain00213_n53_α
 xchain00213_n50_β:
 inc qword ptr [rbp + 64]
 jmp .Lx00227_0
# IR_SUBSCRIPT x[i] variable
 xchain00213_n51_α:
 mov rdi, qword ptr [rbp + 5376]
 mov rsi, qword ptr [rbp + 5384]
 mov rdx, qword ptr [rbp + 5408]
 mov rcx, qword ptr [rbp + 5416]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00213_n34_β
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain00213_n54_α
 xchain00213_n51_β:
 jmp xchain00213_n34_β
# IR_VAR
 xchain00213_n52_α:
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 4920], rax
 jmp xchain00213_n55_α
 xchain00213_n52_β:
 jmp xchain00213_n46_β
 xchain00213_n53_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00213_n56_α
 xchain00213_n53_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain00213_n54_α:
 mov qword ptr [rbp + 5568], 6
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain00213_n57_α
 xchain00213_n54_β:
 jmp xchain00213_n34_β
.Lx00228_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00213_n55_α:
 mov qword ptr [rbp + 4944], 6
 mov rax, qword ptr [rip + .Lx00229_0]
 mov qword ptr [rbp + 4952], rax
 jmp xchain00213_n58_α
 xchain00213_n55_β:
 jmp xchain00213_n46_β
.Lx00229_0:
 .quad 1
 xchain00213_n56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn879: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn879]
 lea rsi, [rbp + 4704]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 cmp eax, 99
 je xchain00213_n59_α
 jmp xchain00213_n59_α
 xchain00213_n56_β:
 jmp xchain00213_n59_α
# IR_VAR
 xchain00213_n57_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 5656], rax
 jmp xchain00213_n60_α
 xchain00213_n57_β:
 jmp xchain00213_n34_β
# IR_COERCE_NUMERIC
 xchain00213_n58_α:
 mov eax, dword ptr [rbp + 6688]
 cmp eax, 7
 je .Lx00230_1
 cmp eax, 6
 jne .Lx00230_0
 mov eax, dword ptr [rbp + 4944]
 cmp eax, 6
 jne .Lx00230_0
.Lx00230_1:
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [rbp + 4880], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 4888], rax
 jmp .Lx00230_2
.Lx00230_0:
 lea rdi, [rbp + 6688]
 lea rsi, [rbp + 4944]
 lea rdx, [rbp + 4880]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00230_2:
 jmp xchain00213_n61_α
 xchain00213_n58_β:
 jmp xchain00213_n46_β
# IR_LIT_STRING
 xchain00213_n59_α:
 mov qword ptr [rbp + 4448], 1
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain00213_n62_α
 xchain00213_n59_β:
 jmp xchain00213_n66_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "["
 xchain00213_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5648]
 mov rdx, qword ptr [rbp + 5656]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00232_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00232_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00232_3]
 lea rdx, [rip + .Lx00232_4]
 jmp rax
.Lx00232_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00232_2
.Lx00232_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00232_2
.Lx00232_1:
 call rt_faildescr@PLT
.Lx00232_2:
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 cmp eax, 99
 je xchain00213_n34_β
 jmp xchain00213_n63_α
 xchain00213_n60_β:
 jmp xchain00213_n34_β
.Lx00232_0:
 .quad .Lx00232_0_s
.Lx00232_0_s:
 .string "sortkey"
 xchain00213_n61_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4880]
 cmp eax, 100
 je .Lx00233_0
 mov eax, dword ptr [rbp + 4880]
 cmp eax, 6
 jne .Lx00233_2
.Lx00233_1:
 mov rax, qword ptr [rbp + 4888]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 4848], 6
 mov qword ptr [rbp + 4856], rax
 jmp xchain00213_n64_α
.Lx00233_0:
 mov rdi, qword ptr [rbp + 4880]
 mov rsi, qword ptr [rbp + 4888]
 mov rdx, qword ptr [rbp + 4944]
 mov rcx, qword ptr [rbp + 4952]
 mov r8d, 0
 lea r9, [rbp + 4848]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00233_3
.Lx00233_2:
 mov rdi, qword ptr [rbp + 4880]
 mov rsi, qword ptr [rbp + 4888]
 mov rdx, qword ptr [rbp + 4944]
 mov rcx, qword ptr [rbp + 4952]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00213_n46_β
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
.Lx00233_3:
 jmp xchain00213_n64_α
 xchain00213_n61_β:
 jmp xchain00213_n46_β
# IR_VAR
 xchain00213_n62_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 4520], rax
 jmp xchain00213_n65_α
 xchain00213_n62_β:
 jmp xchain00213_n66_α
# IR_VAR
 xchain00213_n63_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 5688], rax
 jmp xchain00213_n67_α
 xchain00213_n63_β:
 jmp xchain00213_n34_β
 xchain00213_n64_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4848]
 mov rdx, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 jmp xchain00213_n68_α
 xchain00213_n64_β:
 jmp xchain00213_n46_β
# IR_FIELD_GET
 xchain00213_n65_α:
 mov rdi, qword ptr [rip + .Lx00234_0]
 mov rsi, qword ptr [rbp + 4512]
 mov rdx, qword ptr [rbp + 4520]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n66_α
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain00213_n69_α
 xchain00213_n65_β:
 jmp xchain00213_n66_α
.Lx00234_0:
 .quad .Lx00234_0_s
.Lx00234_0_s:
 .string "n"
# IR_VAR
 xchain00213_n66_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 4296], rax
 jmp xchain00213_n70_α
 xchain00213_n66_β:
 jmp xchain00213_n71_α
 xchain00213_n67_α:
# BOX IR_CALL person(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5568] -> [zr+5504]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5512], rax
# marshal arg1 = producer-box slot [zr+5600] -> [zr+5520]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5528], rax
# marshal arg2 = producer-box slot [zr+5680] -> [zr+5536]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5536], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5544], rax
  .section .rodata
  .Lrkfn897: .string "person"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn897]
 lea rsi, [rbp + 5504]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 cmp eax, 99
 je xchain00213_n34_β
 jmp xchain00213_n72_α
 xchain00213_n67_β:
 jmp xchain00213_n34_β
# IR_ASSIGN_VAR
 xchain00213_n68_α:
 mov rdi, qword ptr [rbp + 4720]
 mov rsi, qword ptr [rbp + 4728]
 mov rdx, qword ptr [rbp + 4832]
 mov rcx, qword ptr [rbp + 4840]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00213_n47_α
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain00213_n46_β
 xchain00213_n68_β:
 jmp xchain00213_n47_α
# IR_LIT_STRING
 xchain00213_n69_α:
 mov qword ptr [rbp + 4544], 1
 mov rax, qword ptr [rip + .Lx00235_0]
 mov qword ptr [rbp + 4552], rax
 jmp xchain00213_n73_α
 xchain00213_n69_β:
 jmp xchain00213_n66_α
.Lx00235_0:
 .quad .Lx00235_0_s
.Lx00235_0_s:
 .string "] "
# IR_FIELD_GET
 xchain00213_n70_α:
 mov rdi, qword ptr [rip + .Lx00236_0]
 mov rsi, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n71_α
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain00213_n74_α
 xchain00213_n70_β:
 jmp xchain00213_n71_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00213_n71_α:
 mov qword ptr [rbp + 3424], 1
 mov rax, qword ptr [rip + .Lx00237_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain00213_n75_α
 xchain00213_n71_β:
 jmp xchain00213_n80_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "b."
# IR_ASSIGN_VAR
 xchain00213_n72_α:
 mov rdi, qword ptr [rbp + 5440]
 mov rsi, qword ptr [rbp + 5448]
 mov rdx, qword ptr [rbp + 5488]
 mov rcx, qword ptr [rbp + 5496]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00213_n34_β
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain00213_n76_α
 xchain00213_n72_β:
 jmp xchain00213_n34_β
# IR_VAR
 xchain00213_n73_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 4656], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 4664], rax
 jmp xchain00213_n77_α
 xchain00213_n73_β:
 jmp xchain00213_n66_α
# IR_LIT_STRING
 xchain00213_n74_α:
 mov qword ptr [rbp + 4320], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [rbp + 4328], rax
 jmp xchain00213_n78_α
 xchain00213_n74_β:
 jmp xchain00213_n71_α
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "FAMC"
# IR_VAR
 xchain00213_n75_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 3576], rax
 jmp xchain00213_n79_α
 xchain00213_n75_β:
 jmp xchain00213_n80_α
 xchain00213_n76_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5344] -> [zr+5296]
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 5304], rax
# marshal arg1 = producer-box slot [zr+5472] -> [zr+5312]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5312], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5320], rax
  .section .rodata
  .Lrkfn909: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn909]
 lea rsi, [rbp + 5296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 cmp eax, 99
 je xchain00213_n34_β
 jmp xchain00213_n34_β
 xchain00213_n76_β:
 jmp xchain00213_n34_β
# IR_FIELD_GET
 xchain00213_n77_α:
 mov rdi, qword ptr [rip + .Lx00239_0]
 mov rsi, qword ptr [rbp + 4656]
 mov rdx, qword ptr [rbp + 4664]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n66_α
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 jmp xchain00213_n81_α
 xchain00213_n77_β:
 jmp xchain00213_n66_α
.Lx00239_0:
 .quad .Lx00239_0_s
.Lx00239_0_s:
 .string "r"
 xchain00213_n78_α:
 mov qword ptr [rbp + 4224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4256]
 mov rdx, qword ptr [rbp + 4264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4320]
 mov rdx, qword ptr [rbp + 4328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00240_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00240_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00240_3]
 lea rdx, [rip + .Lx00240_4]
 jmp rax
.Lx00240_3:
 mov rax, qword ptr [rbp + 4224]
 test rax, rax
 jne .Lx00240_5
 mov qword ptr [rbp + 4224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00240_2
.Lx00240_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00240_2
.Lx00240_4:
 mov rax, qword ptr [rbp + 4224]
 test rax, rax
 jne .Lx00240_6
 mov qword ptr [rbp + 4224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00240_2
.Lx00240_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00240_2
.Lx00240_1:
 call rt_faildescr@PLT
.Lx00240_2:
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 cmp eax, 99
 je xchain00213_n71_α
 jmp xchain00213_n82_α
 xchain00213_n78_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00240_0:
 .quad .Lx00240_0_s
.Lx00240_0_s:
 .string "gedref"
# IR_FIELD_GET
 xchain00213_n79_α:
 mov rdi, qword ptr [rip + .Lx00241_0]
 mov rsi, qword ptr [rbp + 3568]
 mov rdx, qword ptr [rbp + 3576]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n80_α
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain00213_n83_α
 xchain00213_n79_β:
 jmp xchain00213_n80_α
.Lx00241_0:
 .quad .Lx00241_0_s
.Lx00241_0_s:
 .string "r"
# KEYWORD_null
 xchain00213_n80_α:
 mov qword ptr [rbp + 3328], 0
 mov qword ptr [rbp + 3336], 0
 jmp xchain00213_n84_α
 xchain00213_n80_β:
 jmp xchain00213_n88_α
 xchain00213_n81_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4624]
 mov rdx, qword ptr [rbp + 4632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00242_0]
 mov esi, 1
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
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain00213_n66_α
 jmp xchain00213_n85_α
 xchain00213_n81_β:
 jmp xchain00213_n66_α
.Lx00242_0:
 .quad .Lx00242_0_s
.Lx00242_0_s:
 .string "gedlnf"
 xchain00213_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4176]
 mov rdx, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain00213_n86_α
 xchain00213_n82_β:
 jmp xchain00213_n71_α
# IR_LIT_STRING
 xchain00213_n83_α:
 mov qword ptr [rbp + 3600], 1
 mov rax, qword ptr [rip + .Lx00243_0]
 mov qword ptr [rbp + 3608], rax
 jmp xchain00213_n87_α
 xchain00213_n83_β:
 jmp xchain00213_n80_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "BIRT"
 xchain00213_n84_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3328]
 mov rdx, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain00213_n88_α
 xchain00213_n84_β:
 jmp xchain00213_n88_α
 xchain00213_n85_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4448] -> [zr+4368]
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4376], rax
# marshal arg1 = producer-box slot [zr+4480] -> [zr+4384]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4392], rax
# marshal arg2 = producer-box slot [zr+4544] -> [zr+4400]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4408], rax
# marshal arg3 = producer-box slot [zr+4576] -> [zr+4416]
 mov rax, qword ptr [rbp + 4576]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 4424], rax
  .section .rodata
  .Lrkfn921: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn921]
 lea rsi, [rbp + 4368]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je xchain00213_n66_α
 jmp xchain00213_n66_α
 xchain00213_n85_β:
 jmp xchain00213_n66_α
# IR_LIT_STRING
 xchain00213_n86_α:
 mov qword ptr [rbp + 3984], 1
 mov rax, qword ptr [rip + .Lx00244_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain00213_n89_α
 xchain00213_n86_β:
 jmp xchain00213_n94_α
.Lx00244_0:
 .quad .Lx00244_0_s
.Lx00244_0_s:
 .string "father"
 xchain00213_n87_α:
 mov qword ptr [rbp + 3504], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3600]
 mov rdx, qword ptr [rbp + 3608]
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
 mov rax, qword ptr [rbp + 3504]
 test rax, rax
 jne .Lx00245_5
 mov qword ptr [rbp + 3504], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00245_2
.Lx00245_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00245_2
.Lx00245_4:
 mov rax, qword ptr [rbp + 3504]
 test rax, rax
 jne .Lx00245_6
 mov qword ptr [rbp + 3504], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00245_2
.Lx00245_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00245_2
.Lx00245_1:
 call rt_faildescr@PLT
.Lx00245_2:
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je xchain00213_n80_α
 jmp xchain00213_n90_α
 xchain00213_n87_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00245_0:
 .quad .Lx00245_0_s
.Lx00245_0_s:
 .string "gedsub"
# IR_VAR
 xchain00213_n88_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 536], rax
 jmp xchain00213_n91_α
 xchain00213_n88_β:
 jmp xchain00213_n92_α
# IR_VAR
 xchain00213_n89_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 4104], rax
 jmp xchain00213_n93_α
 xchain00213_n89_β:
 jmp xchain00213_n94_α
 xchain00213_n90_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3424]
 mov rdx, qword ptr [rbp + 3432]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3456]
 mov rdx, qword ptr [rbp + 3464]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00246_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00246_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00246_3]
 lea rdx, [rip + .Lx00246_4]
 jmp rax
.Lx00246_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00246_2
.Lx00246_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00246_2
.Lx00246_1:
 call rt_faildescr@PLT
.Lx00246_2:
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 cmp eax, 99
 je xchain00213_n80_α
 jmp xchain00213_n80_α
 xchain00213_n90_β:
 jmp xchain00213_n80_α
.Lx00246_0:
 .quad .Lx00246_0_s
.Lx00246_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00213_n91_α:
 mov rdi, qword ptr [rip + .Lx00247_0]
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n92_α
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain00213_n95_α
 xchain00213_n91_β:
 jmp xchain00213_n92_α
.Lx00247_0:
 .quad .Lx00247_0_s
.Lx00247_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00213_n92_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx00248_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain00213_n96_α
 xchain00213_n92_β:
 jmp xchain00213_n50_β
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "d."
# IR_LIT_STRING
 xchain00213_n93_α:
 mov qword ptr [rbp + 4128], 1
 mov rax, qword ptr [rip + .Lx00249_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain00213_n97_α
 xchain00213_n93_β:
 jmp xchain00213_n94_α
.Lx00249_0:
 .quad .Lx00249_0_s
.Lx00249_0_s:
 .string "HUSB"
# IR_LIT_STRING
 xchain00213_n94_α:
 mov qword ptr [rbp + 3744], 1
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [rbp + 3752], rax
 jmp xchain00213_n98_α
 xchain00213_n94_β:
 jmp xchain00213_n71_α
.Lx00250_0:
 .quad .Lx00250_0_s
.Lx00250_0_s:
 .string "mother"
# IR_LIT_STRING
 xchain00213_n95_α:
 mov qword ptr [rbp + 560], 1
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain00213_n99_α
 xchain00213_n95_β:
 jmp xchain00213_n92_α
.Lx00251_0:
 .quad .Lx00251_0_s
.Lx00251_0_s:
 .string "FAMS"
# IR_VAR
 xchain00213_n96_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 344], rax
 jmp xchain00213_n00025_α
 xchain00213_n96_β:
 jmp xchain00213_n50_β
 xchain00213_n97_α:
 mov qword ptr [rbp + 4064], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4096]
 mov rdx, qword ptr [rbp + 4104]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4128]
 mov rdx, qword ptr [rbp + 4136]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00252_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00252_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00252_3]
 lea rdx, [rip + .Lx00252_4]
 jmp rax
.Lx00252_3:
 mov rax, qword ptr [rbp + 4064]
 test rax, rax
 jne .Lx00252_5
 mov qword ptr [rbp + 4064], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00252_2
.Lx00252_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00252_2
.Lx00252_4:
 mov rax, qword ptr [rbp + 4064]
 test rax, rax
 jne .Lx00252_6
 mov qword ptr [rbp + 4064], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00252_2
.Lx00252_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00252_2
.Lx00252_1:
 call rt_faildescr@PLT
.Lx00252_2:
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 cmp eax, 99
 je xchain00213_n94_α
 jmp xchain00213_n00026_α
 xchain00213_n97_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00252_0:
 .quad .Lx00252_0_s
.Lx00252_0_s:
 .string "gedref"
# IR_VAR
 xchain00213_n98_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 3864], rax
 jmp xchain00213_n00028_α
 xchain00213_n98_β:
 jmp xchain00213_n71_α
 xchain00213_n99_α:
 mov qword ptr [rbp + 464], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00253_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00253_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00253_3]
 lea rdx, [rip + .Lx00253_4]
 jmp rax
.Lx00253_3:
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx00253_5
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00253_2
.Lx00253_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00253_2
.Lx00253_4:
 mov rax, qword ptr [rbp + 464]
 test rax, rax
 jne .Lx00253_6
 mov qword ptr [rbp + 464], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00253_2
.Lx00253_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00253_2
.Lx00253_1:
 call rt_faildescr@PLT
.Lx00253_2:
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain00213_n92_α
 jmp xchain00213_n00029_α
 xchain00213_n99_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00253_0:
 .quad .Lx00253_0_s
.Lx00253_0_s:
 .string "gedref"
# IR_FIELD_GET
 xchain00213_n00025_α:
 mov rdi, qword ptr [rip + .Lx00254_0]
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n50_β
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00213_n00030_α
 xchain00213_n00025_β:
 jmp xchain00213_n50_β
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "r"
 xchain00213_n00026_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3984]
 mov rdx, qword ptr [rbp + 3992]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4016]
 mov rdx, qword ptr [rbp + 4024]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00255_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00255_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00255_3]
 lea rdx, [rip + .Lx00255_4]
 jmp rax
.Lx00255_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00255_2
.Lx00255_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00255_2
.Lx00255_1:
 call rt_faildescr@PLT
.Lx00255_2:
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 cmp eax, 99
 je xchain00213_n94_α
 jmp xchain00213_n94_α
 xchain00213_n00026_β:
 jmp xchain00213_n94_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00213_n00028_α:
 mov qword ptr [rbp + 3888], 1
 mov rax, qword ptr [rip + .Lx00256_0]
 mov qword ptr [rbp + 3896], rax
 jmp xchain00213_n00031_α
 xchain00213_n00028_β:
 jmp xchain00213_n71_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "WIFE"
 xchain00213_n00029_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00213_n00032_α
 xchain00213_n00029_β:
 jmp xchain00213_n92_α
# IR_LIT_STRING
 xchain00213_n00030_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx00257_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain00213_n00033_α
 xchain00213_n00030_β:
 jmp xchain00213_n50_β
.Lx00257_0:
 .quad .Lx00257_0_s
.Lx00257_0_s:
 .string "DEAT"
 xchain00213_n00031_α:
 mov qword ptr [rbp + 3824], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3856]
 mov rdx, qword ptr [rbp + 3864]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3888]
 mov rdx, qword ptr [rbp + 3896]
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
 mov rax, qword ptr [rbp + 3824]
 test rax, rax
 jne .Lx00258_5
 mov qword ptr [rbp + 3824], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00258_2
.Lx00258_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00258_2
.Lx00258_4:
 mov rax, qword ptr [rbp + 3824]
 test rax, rax
 jne .Lx00258_6
 mov qword ptr [rbp + 3824], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00258_2
.Lx00258_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00258_2
.Lx00258_1:
 call rt_faildescr@PLT
.Lx00258_2:
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 cmp eax, 99
 je xchain00213_n71_α
 jmp xchain00213_n00034_α
 xchain00213_n00031_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "gedref"
# IR_LIT_STRING
 xchain00213_n00032_α:
 mov qword ptr [rbp + 3136], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain00213_n00035_α
 xchain00213_n00032_β:
 jmp xchain00213_n00170_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "m."
 xchain00213_n00033_α:
 mov qword ptr [rbp + 272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
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
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx00260_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00260_2
.Lx00260_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00260_2
.Lx00260_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx00260_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00260_2
.Lx00260_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00260_2
.Lx00260_1:
 call rt_faildescr@PLT
.Lx00260_2:
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je xchain00213_n50_β
 jmp xchain00213_n00036_α
 xchain00213_n00033_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "gedsub"
 xchain00213_n00034_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3744]
 mov rdx, qword ptr [rbp + 3752]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3776]
 mov rdx, qword ptr [rbp + 3784]
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
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 cmp eax, 99
 je xchain00213_n71_α
 jmp xchain00213_n00166_α
 xchain00213_n00034_β:
 jmp xchain00213_n71_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "refto"
# IR_VAR
 xchain00213_n00035_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 3256], rax
 jmp xchain00213_n00167_α
 xchain00213_n00035_β:
 jmp xchain00213_n00170_α
 xchain00213_n00036_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00262_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00262_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00262_3]
 lea rdx, [rip + .Lx00262_4]
 jmp rax
.Lx00262_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00262_2
.Lx00262_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00262_2
.Lx00262_1:
 call rt_faildescr@PLT
.Lx00262_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain00213_n50_β
 jmp xchain00213_n00001_α
 xchain00213_n00036_β:
 jmp xchain00213_n50_β
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "event"
 xchain00213_n00166_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00213_n00168_α
xchain00213_n00166_β:
 jmp xchain00213_n71_α
# IR_LIT_STRING
 xchain00213_n00167_α:
 mov qword ptr [rbp + 3280], 1
 mov rax, qword ptr [rip + .Lx00263_0]
 mov qword ptr [rbp + 3288], rax
 jmp xchain00213_n00002_α
 xchain00213_n00167_β:
 jmp xchain00213_n00170_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "MARR"
# IR_LIT_STRING
 xchain00213_n00170_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx00264_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00213_n00172_α
 xchain00213_n00170_β:
 jmp xchain00213_n00180_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "  husb"
 xchain00213_n00001_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 120], rax
 jmp xchain00213_n50_β
xchain00213_n00001_β:
 jmp xchain00213_n50_β
# IR_MOVE_LABEL
 xchain00213_n00168_α:
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3640], rax
 lea rax, [rip + xchain00213_n00031_β]
 mov qword ptr [rbp + 3648], rax
 jmp xchain00213_n71_α
 xchain00213_n00168_β:
 jmp xchain00213_n71_α
 xchain00213_n00002_α:
 mov qword ptr [rbp + 3216], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
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
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx00265_5
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00265_2
.Lx00265_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00265_2
.Lx00265_4:
 mov rax, qword ptr [rbp + 3216]
 test rax, rax
 jne .Lx00265_6
 mov qword ptr [rbp + 3216], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00265_2
.Lx00265_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00265_2
.Lx00265_1:
 call rt_faildescr@PLT
.Lx00265_2:
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je xchain00213_n00170_α
 jmp xchain00213_n00176_α
 xchain00213_n00002_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "gedsub"
# IR_VAR
 xchain00213_n00172_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 2888], rax
 jmp xchain00213_n00173_α
 xchain00213_n00172_β:
 jmp xchain00213_n00178_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00213_n00175_α:
 jmp qword ptr [rbp + 3648]
 xchain00213_n00175_β:
 jmp xchain00213_n71_α
 xchain00213_n00176_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3168]
 mov rdx, qword ptr [rbp + 3176]
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
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain00213_n00170_α
 jmp xchain00213_n00179_α
 xchain00213_n00176_β:
 jmp xchain00213_n00170_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00213_n00173_α:
 mov rdi, qword ptr [rip + .Lx00267_0]
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n00178_α
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain00213_n00182_α
 xchain00213_n00173_β:
 jmp xchain00213_n00178_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "r"
# KEYWORD_null
 xchain00213_n00178_α:
 mov qword ptr [rbp + 2784], 0
 mov qword ptr [rbp + 2792], 0
 jmp xchain00213_n00183_α
 xchain00213_n00178_β:
 jmp xchain00213_n00180_α
 xchain00213_n00179_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain00213_n00170_α
 xchain00213_n00179_β:
 jmp xchain00213_n00170_α
# IR_VAR
 xchain00213_n00182_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 3000], rax
 jmp xchain00213_n00185_α
 xchain00213_n00182_β:
 jmp xchain00213_n00178_α
 xchain00213_n00183_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2752]
 mov rdx, qword ptr [rbp + 2760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2784]
 mov rdx, qword ptr [rbp + 2792]
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
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain00213_n00180_α
 jmp xchain00213_n00186_α
 xchain00213_n00183_β:
 jmp xchain00213_n00180_α
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00213_n00180_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx00269_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00213_n00189_α
 xchain00213_n00180_β:
 jmp xchain00213_n00193_α
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "  wife"
# IR_LIT_STRING
 xchain00213_n00185_α:
 mov qword ptr [rbp + 3024], 1
 mov rax, qword ptr [rip + .Lx00270_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain00213_n00190_α
 xchain00213_n00185_β:
 jmp xchain00213_n00178_α
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "HUSB"
 xchain00213_n00186_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2688]
 mov rdx, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain00213_n00180_α
 xchain00213_n00186_β:
 jmp xchain00213_n00180_α
# IR_VAR
 xchain00213_n00189_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 2504], rax
 jmp xchain00213_n00187_α
 xchain00213_n00189_β:
 jmp xchain00213_n00003_α
 xchain00213_n00190_α:
 mov qword ptr [rbp + 2960], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
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
 mov rax, qword ptr [rbp + 2960]
 test rax, rax
 jne .Lx00271_5
 mov qword ptr [rbp + 2960], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00271_2
.Lx00271_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00271_2
.Lx00271_4:
 mov rax, qword ptr [rbp + 2960]
 test rax, rax
 jne .Lx00271_6
 mov qword ptr [rbp + 2960], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00271_2
.Lx00271_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00271_2
.Lx00271_1:
 call rt_faildescr@PLT
.Lx00271_2:
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 cmp eax, 99
 je xchain00213_n00178_α
 jmp xchain00213_n00192_α
 xchain00213_n00190_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "gedref"
# IR_FIELD_GET
 xchain00213_n00187_α:
 mov rdi, qword ptr [rip + .Lx00272_0]
 mov rsi, qword ptr [rbp + 2496]
 mov rdx, qword ptr [rbp + 2504]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n00003_α
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00213_n00195_α
 xchain00213_n00187_β:
 jmp xchain00213_n00003_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "r"
# KEYWORD_null
 xchain00213_n00003_α:
 mov qword ptr [rbp + 2400], 0
 mov qword ptr [rbp + 2408], 0
 jmp xchain00213_n00004_α
 xchain00213_n00003_β:
 jmp xchain00213_n00193_α
 xchain00213_n00192_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2848]
 mov rsi, qword ptr [rbp + 2856]
 mov rdx, qword ptr [rbp + 2912]
 mov rcx, qword ptr [rbp + 2920]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00213_n00190_β
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2824], rax
 jmp xchain00213_n00180_α
 xchain00213_n00192_β:
 jmp xchain00213_n00190_β
# IR_VAR
 xchain00213_n00195_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00213_n00197_α
 xchain00213_n00195_β:
 jmp xchain00213_n00003_α
 xchain00213_n00004_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00273_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00273_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00273_3]
 lea rdx, [rip + .Lx00273_4]
 jmp rax
.Lx00273_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00273_2
.Lx00273_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00273_2
.Lx00273_1:
 call rt_faildescr@PLT
.Lx00273_2:
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain00213_n00193_α
 jmp xchain00213_n00198_α
 xchain00213_n00004_β:
 jmp xchain00213_n00193_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "refto"
# IR_VAR
 xchain00213_n00193_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 2264], rax
 jmp xchain00213_n00201_α
 xchain00213_n00193_β:
 jmp xchain00213_n00202_α
# IR_LIT_STRING
 xchain00213_n00197_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain00213_n00199_α
 xchain00213_n00197_β:
 jmp xchain00213_n00003_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "WIFE"
 xchain00213_n00198_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2304]
 mov rdx, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain00213_n00193_α
 xchain00213_n00198_β:
 jmp xchain00213_n00193_α
# IR_UNOP
 xchain00213_n00201_α:
 mov eax, dword ptr [rbp + 6656]
 cmp eax, 99
 je xchain00213_n00202_α
 cmp eax, 0
 je xchain00213_n00202_α
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00213_n00204_α
 xchain00213_n00201_β:
 jmp xchain00213_n00202_α
# IR_VAR
 xchain00213_n00202_α:
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00213_n00005_α
 xchain00213_n00202_β:
 jmp xchain00213_n00206_α
 xchain00213_n00199_α:
 mov qword ptr [rbp + 2576], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2640]
 mov rdx, qword ptr [rbp + 2648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00275_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00275_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00275_3]
 lea rdx, [rip + .Lx00275_4]
 jmp rax
.Lx00275_3:
 mov rax, qword ptr [rbp + 2576]
 test rax, rax
 jne .Lx00275_5
 mov qword ptr [rbp + 2576], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00275_2
.Lx00275_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00275_2
.Lx00275_4:
 mov rax, qword ptr [rbp + 2576]
 test rax, rax
 jne .Lx00275_6
 mov qword ptr [rbp + 2576], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00275_2
.Lx00275_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00275_2
.Lx00275_1:
 call rt_faildescr@PLT
.Lx00275_2:
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain00213_n00003_α
 jmp xchain00213_n00207_α
 xchain00213_n00199_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "gedref"
# IR_LIT_STRING
 xchain00213_n00204_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx00276_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain00213_n00209_α
 xchain00213_n00204_β:
 jmp xchain00213_n00202_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "   m."
# IR_FIELD_GET
 xchain00213_n00005_α:
 mov rdi, qword ptr [rip + .Lx00277_0]
 mov rsi, qword ptr [rbp + 1936]
 mov rdx, qword ptr [rbp + 1944]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00213_n00206_α
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain00213_n00210_α
 xchain00213_n00005_β:
 jmp xchain00213_n00206_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "r"
# IR_VAR
 xchain00213_n00206_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00213_n00211_α
 xchain00213_n00206_β:
 jmp xchain00213_n00212_α
 xchain00213_n00207_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2464]
 mov rsi, qword ptr [rbp + 2472]
 mov rdx, qword ptr [rbp + 2528]
 mov rcx, qword ptr [rbp + 2536]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00213_n00199_β
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2440], rax
 jmp xchain00213_n00193_α
 xchain00213_n00207_β:
 jmp xchain00213_n00199_β
 xchain00213_n00209_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2168], rax
  .section .rodata
  .Lrkfn1011: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1011]
 lea rsi, [rbp + 2160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain00213_n00202_α
 jmp xchain00213_n00006_α
 xchain00213_n00209_β:
 jmp xchain00213_n00202_α
# IR_VAR
 xchain00213_n00210_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00213_n00007_α
 xchain00213_n00210_β:
 jmp xchain00213_n00206_α
# IR_LIT_STRING
 xchain00213_n00211_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00213_n00279_α
 xchain00213_n00211_β:
 jmp xchain00213_n00212_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "HUSB"
# KEYWORD_null
 xchain00213_n00212_α:
 mov qword ptr [rbp + 1696], 0
 mov qword ptr [rbp + 1704], 0
 jmp xchain00213_n00008_α
 xchain00213_n00212_β:
 jmp xchain00213_n99_β
# IR_MOVE_LABEL
 xchain00213_n00006_α:
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2120], rax
 lea rax, [rip + xchain00213_n00202_α]
 mov qword ptr [rbp + 2128], rax
 jmp xchain00213_n00202_α
 xchain00213_n00006_β:
 jmp xchain00213_n00202_α
# IR_LIT_STRING
 xchain00213_n00007_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00280_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00213_n00009_α
 xchain00213_n00007_β:
 jmp xchain00213_n00206_α
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "HUSB"
 xchain00213_n00279_α:
 mov qword ptr [rbp + 1776], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1808]
 mov rdx, qword ptr [rbp + 1816]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
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
 mov rax, qword ptr [rbp + 1776]
 test rax, rax
 jne .Lx00281_5
 mov qword ptr [rbp + 1776], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00281_2
.Lx00281_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00281_2
.Lx00281_4:
 mov rax, qword ptr [rbp + 1776]
 test rax, rax
 jne .Lx00281_6
 mov qword ptr [rbp + 1776], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00281_2
.Lx00281_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00281_2
.Lx00281_1:
 call rt_faildescr@PLT
.Lx00281_2:
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain00213_n00212_α
 jmp xchain00213_n99_β
 xchain00213_n00279_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "gedref"
# IR_MOVE_LABEL
 xchain00213_n00008_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1672], rax
 lea rax, [rip + xchain00213_n99_β]
 mov qword ptr [rbp + 1680], rax
 jmp xchain00213_n00282_α
 xchain00213_n00008_β:
 jmp xchain00213_n99_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00213_n00283_α:
 jmp qword ptr [rbp + 2128]
 xchain00213_n00283_β:
 jmp xchain00213_n00202_α
 xchain00213_n00009_α:
 mov qword ptr [rbp + 2016], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00284_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00284_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00284_3]
 lea rdx, [rip + .Lx00284_4]
 jmp rax
.Lx00284_3:
 mov rax, qword ptr [rbp + 2016]
 test rax, rax
 jne .Lx00284_5
 mov qword ptr [rbp + 2016], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00284_2
.Lx00284_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00284_2
.Lx00284_4:
 mov rax, qword ptr [rbp + 2016]
 test rax, rax
 jne .Lx00284_6
 mov qword ptr [rbp + 2016], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00284_2
.Lx00284_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00284_2
.Lx00284_1:
 call rt_faildescr@PLT
.Lx00284_2:
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain00213_n00206_α
 jmp xchain00213_n00285_α
 xchain00213_n00009_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string "gedref"
# IR_VAR
 xchain00213_n00282_α:
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 744], rax
 jmp xchain00213_n00011_α
 xchain00213_n00282_β:
 jmp xchain00213_n99_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00213_n00010_α:
 jmp qword ptr [rbp + 1680]
 xchain00213_n00010_β:
 jmp xchain00213_n99_β
 xchain00213_n00285_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1904]
 mov rsi, qword ptr [rbp + 1912]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00213_n00009_β
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1880], rax
 jmp xchain00213_n00286_α
 xchain00213_n00285_β:
 jmp xchain00213_n00009_β
# IR_LIT_STRING
 xchain00213_n00011_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00213_n00288_α
 xchain00213_n00011_β:
 jmp xchain00213_n99_β
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "CHIL"
# IR_MOVE_LABEL
 xchain00213_n00286_α:
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1672], rax
 lea rax, [rip + xchain00213_n00009_β]
 mov qword ptr [rbp + 1680], rax
 jmp xchain00213_n00282_α
 xchain00213_n00286_β:
 jmp xchain00213_n99_β
 xchain00213_n00288_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00289_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00289_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00289_3]
 lea rdx, [rip + .Lx00289_4]
 jmp rax
.Lx00289_3:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx00289_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00289_2
.Lx00289_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00289_2
.Lx00289_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx00289_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00289_2
.Lx00289_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00289_2
.Lx00289_1:
 call rt_faildescr@PLT
.Lx00289_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain00213_n99_β
 jmp xchain00213_n00290_α
 xchain00213_n00288_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "gedref"
 xchain00213_n00290_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00213_n00291_α
 xchain00213_n00290_β:
 jmp xchain00213_n99_β
# IR_VAR
 xchain00213_n00291_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 984], rax
 jmp xchain00213_n00012_α
 xchain00213_n00291_β:
 jmp xchain00213_n00013_α
# IR_LIT_STRING
 xchain00213_n00012_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00213_n00293_α
 xchain00213_n00012_β:
 jmp xchain00213_n00013_α
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "SEX"
# IR_LIT_STRING
 xchain00213_n00013_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00294_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00213_n00295_α
 xchain00213_n00013_β:
 jmp xchain00213_n00288_β
.Lx00294_0:
 .quad .Lx00294_0_s
.Lx00294_0_s:
 .string ""
 xchain00213_n00293_α:
 mov qword ptr [rbp + 944], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00296_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00296_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00296_3]
 lea rdx, [rip + .Lx00296_4]
 jmp rax
.Lx00296_3:
 mov rax, qword ptr [rbp + 944]
 test rax, rax
 jne .Lx00296_5
 mov qword ptr [rbp + 944], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00296_2
.Lx00296_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00296_2
.Lx00296_4:
 mov rax, qword ptr [rbp + 944]
 test rax, rax
 jne .Lx00296_6
 mov qword ptr [rbp + 944], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00296_2
.Lx00296_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00296_2
.Lx00296_1:
 call rt_faildescr@PLT
.Lx00296_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain00213_n00013_α
 jmp xchain00213_n00297_α
 xchain00213_n00293_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx00296_0:
 .quad .Lx00296_0_s
.Lx00296_0_s:
 .string "gedval"
# IR_MOVE_LABEL
 xchain00213_n00295_α:
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
 lea rax, [rip + xchain00213_n00288_β]
 mov qword ptr [rbp + 848], rax
 jmp xchain00213_n00298_α
 xchain00213_n00295_β:
 jmp xchain00213_n00288_β
# IR_MOVE_LABEL
 xchain00213_n00297_α:
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
 lea rax, [rip + xchain00213_n00293_β]
 mov qword ptr [rbp + 848], rax
 jmp xchain00213_n00298_α
 xchain00213_n00297_β:
 jmp xchain00213_n00288_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00213_n00299_α:
 jmp qword ptr [rbp + 848]
 xchain00213_n00299_β:
 jmp xchain00213_n00288_β
# IR_LIT_STRING
 xchain00213_n00298_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00300_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00213_n00301_α
 xchain00213_n00298_β:
 jmp xchain00213_n00288_β
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "M"
 xchain00213_n00301_α:
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
  .Lrkfn1052: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1052]
 lea rsi, [rbp + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain00213_n00014_α
 jmp xchain00213_n00302_α
 xchain00213_n00301_β:
 jmp xchain00213_n00014_α
# IR_LIT_STRING
 xchain00213_n00302_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx00303_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00213_n00304_α
 xchain00213_n00302_β:
 jmp xchain00213_n00288_β
.Lx00303_0:
 .quad .Lx00303_0_s
.Lx00303_0_s:
 .string "   son"
# IR_LIT_STRING
 xchain00213_n00014_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx00305_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain00213_n00306_α
 xchain00213_n00014_β:
 jmp xchain00213_n00288_β
.Lx00305_0:
 .quad .Lx00305_0_s
.Lx00305_0_s:
 .string "F"
# IR_VAR
 xchain00213_n00304_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00213_n00307_α
 xchain00213_n00304_β:
 jmp xchain00213_n00288_β
 xchain00213_n00306_α:
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
  .Lrkfn1058: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1058]
 lea rsi, [rbp + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00213_n00308_α
 jmp xchain00213_n00015_α
 xchain00213_n00306_β:
 jmp xchain00213_n00308_α
 xchain00213_n00307_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00309_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00309_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00309_3]
 lea rdx, [rip + .Lx00309_4]
 jmp rax
.Lx00309_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00309_2
.Lx00309_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00309_2
.Lx00309_1:
 call rt_faildescr@PLT
.Lx00309_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00213_n00288_β
 jmp xchain00213_n00310_α
 xchain00213_n00307_β:
 jmp xchain00213_n00288_β
.Lx00309_0:
 .quad .Lx00309_0_s
.Lx00309_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00213_n00015_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx00311_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00213_n00312_α
 xchain00213_n00015_β:
 jmp xchain00213_n00288_β
.Lx00311_0:
 .quad .Lx00311_0_s
.Lx00311_0_s:
 .string "   dau"
# IR_LIT_STRING
 xchain00213_n00308_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx00313_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00213_n00314_α
 xchain00213_n00308_β:
 jmp xchain00213_n00288_β
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string " child"
 xchain00213_n00310_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00213_n00016_α
 xchain00213_n00310_β:
 jmp xchain00213_n00288_β
# IR_VAR
 xchain00213_n00312_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00213_n00315_α
 xchain00213_n00312_β:
 jmp xchain00213_n00288_β
# IR_VAR
 xchain00213_n00314_α:
 mov rax, qword ptr [rbp + 6656]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 6664]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00213_n00316_α
 xchain00213_n00314_β:
 jmp xchain00213_n00288_β
# IR_VAR
 xchain00213_n00016_α:
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 808], rax
 jmp xchain00213_n00288_β
 xchain00213_n00016_β:
 jmp xchain00213_n00288_β
 xchain00213_n00315_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00317_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00317_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00317_3]
 lea rdx, [rip + .Lx00317_4]
 jmp rax
.Lx00317_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00317_2
.Lx00317_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00317_2
.Lx00317_1:
 call rt_faildescr@PLT
.Lx00317_2:
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain00213_n00288_β
 jmp xchain00213_n00318_α
 xchain00213_n00315_β:
 jmp xchain00213_n00288_β
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string "refto"
 xchain00213_n00316_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00319_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00319_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00319_3]
 lea rdx, [rip + .Lx00319_4]
 jmp rax
.Lx00319_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00319_2
.Lx00319_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00319_2
.Lx00319_1:
 call rt_faildescr@PLT
.Lx00319_2:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain00213_n00288_β
 jmp xchain00213_n00320_α
 xchain00213_n00316_β:
 jmp xchain00213_n00288_β
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "refto"
 xchain00213_n00318_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00213_n00016_α
 xchain00213_n00318_β:
 jmp xchain00213_n00288_β
 xchain00213_n00320_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain00213_n00016_α
 xchain00213_n00320_β:
 jmp xchain00213_n00288_β
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 6600]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 6600]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
