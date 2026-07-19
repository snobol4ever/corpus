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
 xchain0_n2_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 call rt_arg_stage@PLT
 mov edi, 11
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx5_1
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
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 984], rax
 jmp xchain0_n7_α
 xchain0_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n3_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n9_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "PLAC"
# IR_DISJUNCTION_NARY
 xchain0_n8_α:
 mov qword ptr [rbp + 48], 0
 mov qword ptr [rbp + 56], 0
 mov dword ptr [rbp + 64], 0
 jmp xchain0_n11_α
xchain0_n8_as:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 0
 jne .Lx13_0
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
 jmp xchain0_n10_α
.Lx13_0:
 cmp eax, 1
 jne .Lx13_1
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 56], rax
 jmp xchain0_n10_α
.Lx13_1:
 jmp xchain0_n10_α
 xchain0_n8_β:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 0
 je xchain0_n10_α
 jmp xchain0_n13_β
xchain0_n8_af:
 add dword ptr [rbp + 64], 1
 mov eax, dword ptr [rbp + 64]
 cmp eax, 1
 je xchain0_n12_α
 jmp xchain0_n10_α
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
 jmp xchain0_n16_α
 xchain0_n9_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 952]
 jmp qword ptr [rsp]
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "gedval"
# IR_RETURN
 xchain0_n10_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_event_γ
# IR_VAR
 xchain0_n11_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n17_α
 xchain0_n11_β:
 jmp xchain0_n8_af
# IR_LIT_STRING
 xchain0_n12_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n18_α
 xchain0_n12_β:
 jmp xchain0_n10_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "   "
# IR_DISJUNCTION_NARY
 xchain0_n13_α:
 mov qword ptr [rbp + 624], 0
 mov qword ptr [rbp + 632], 0
 mov dword ptr [rbp + 640], 0
 jmp xchain0_n20_α
xchain0_n13_as:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 0
 jne .Lx21_0
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n19_α
.Lx21_0:
 cmp eax, 1
 jne .Lx21_1
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n19_α
.Lx21_1:
 jmp xchain0_n19_α
 xchain0_n13_β:
 mov eax, dword ptr [rbp + 640]
 cmp eax, 0
 je xchain0_n13_af
 jmp xchain0_n13_af
xchain0_n13_af:
 add dword ptr [rbp + 640], 1
 mov eax, dword ptr [rbp + 640]
 cmp eax, 1
 je xchain0_n21_α
 jmp xchain0_n10_α
 xchain0_n14_α:
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
  .Lrkfn23: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn23]
 lea rsi, [rbp + 96]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n8_as
 xchain0_n14_β:
 jmp xchain0_n10_α
 xchain0_n15_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+416]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+432]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+448]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 456], rax
# marshal arg3 = producer-box slot [zr+624] -> [zr+464]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 472], rax
# marshal arg4 = producer-box slot [zr+752] -> [zr+480]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 488], rax
# marshal arg5 = producer-box slot [zr+784] -> [zr+496]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn25: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn25]
 lea rsi, [rbp + 416]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n8_as
 xchain0_n15_β:
 jmp xchain0_n10_α
 xchain0_n16_α:
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
 jmp xchain0_n23_α
# IR_UNOP
 xchain0_n17_α:
 mov eax, dword ptr [rbp + 1232]
 cmp eax, 99
 je xchain0_n8_af
 cmp eax, 0
 jne xchain0_n8_af
 mov qword ptr [rbp + 336], 0
 mov qword ptr [rbp + 344], 0
 jmp xchain0_n24_α
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n25_α
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n26_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "  "
# IR_VAR
 xchain0_n20_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n13_af
# IR_LIT_STRING
 xchain0_n21_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n13_as
 xchain0_n21_β:
 jmp xchain0_n13_af
.Lx33_0:
 .quad .Lx33_0_s
.Lx33_0_s:
 .string "            "
# IR_UNOP
 xchain0_n22_α:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 99
 je xchain0_n13_af
 cmp eax, 0
 je xchain0_n13_af
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 664], rax
 jmp xchain0_n13_as
 xchain0_n22_β:
 jmp xchain0_n13_af
 xchain0_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain0_n8_α
# IR_LIT_STRING
 xchain0_n24_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain0_n27_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "   "
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n13_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string " "
# IR_VAR
 xchain0_n26_α:
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n27_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n28_α
# IR_LIT_STRING
 xchain0_n28_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n29_α
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string " "
# IR_VAR
 xchain0_n29_α:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n30_α
# IR_UNOP
 xchain0_n30_α:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 99
 je xchain0_n10_α
 cmp eax, 0
 je xchain0_n10_α
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 280], rax
 jmp xchain0_n14_α
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
 xchain46_n0_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain46_n1_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "   "
# IR_VAR
 xchain46_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain46_n2_α
# IR_LIT_STRING
 xchain46_n2_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain46_n4_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string " ["
# IR_RETURN
 xchain46_n3_α:
 mov qword ptr [rbp + 0], 0
 mov qword ptr [rbp + 8], 0
 jmp proc_refto_γ
# IR_VAR_REF
 xchain46_n4_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain46_n5_α
# IR_VAR
 xchain46_n5_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 344], rax
 jmp xchain46_n6_α
# IR_SUBSCRIPT x[i] variable
 xchain46_n6_α:
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 336]
 mov rcx, qword ptr [rbp + 344]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain46_n3_α
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain46_n7_α
# IR_DEREF variable -> value
 xchain46_n7_α:
 mov rdi, qword ptr [rbp + 368]
 mov rsi, qword ptr [rbp + 376]
 call rt_deref@PLT
 cmp eax, 99
 je xchain46_n3_α
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain46_n8_α
# IR_FIELD_GET
 xchain46_n8_α:
 mov rdi, qword ptr [rip + .Lx58_0]
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain46_n3_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain46_n9_α
.Lx58_0:
 .quad .Lx58_0_s
.Lx58_0_s:
 .string "n"
# IR_LIT_STRING
 xchain46_n9_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain46_n10_α
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "] "
# IR_VAR
 xchain46_n10_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 504], rax
 jmp xchain46_n11_α
 xchain46_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 9
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx63_1
 lea rcx, [rip + .Lx63_3]
 lea rdx, [rip + .Lx63_4]
 jmp rax
.Lx63_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx63_2
.Lx63_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx63_2
.Lx63_1:
 call rt_faildescr@PLT
.Lx63_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain46_n3_α
 jmp xchain46_n12_α
 xchain46_n11_β:
 jmp xchain46_n3_α
.Lx63_0:
 .quad .Lx63_0_s
.Lx63_0_s:
 .string "gedfnf"
 xchain46_n12_α:
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
  .Lrkfn65: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn65]
 lea rsi, [rbp + 64]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je xchain46_n3_α
 jmp xchain46_n3_α
 xchain46_n12_β:
 jmp xchain46_n3_α
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
 xchain66_n0_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain66_n1_α
 xchain66_n1_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call rt_arg_stage@PLT
 mov edi, 10
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx70_1
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
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain66_n2_α
 xchain66_n1_β:
 jmp proc_sortkey_ω
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "gedlnf"
 xchain66_n2_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+48]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 48], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 56], rax
  .section .rodata
  .Lrkfn72: .string "map"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 48]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_sortkey_ω
 jmp xchain66_n3_α
 xchain66_n2_β:
 jmp proc_sortkey_ω
# IR_RETURN
 xchain66_n3_α:
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
  sub rsp, 3936
  mov [rsp + 3912], rcx
  mov [rsp + 3920], rdx
  mov [rsp + 3928], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3904
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3752], rsp
  mov rdi, rsp
  mov esi, 3904
  call rt_jmp_frame_lexprep@PLT
proc_gedload_α_body:
# IR_LIT_INTEGER
 xchain74_n0_α:
 mov qword ptr [rbp + 3712], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain74_n1_α
.Lx75_0:
 .quad 0
 xchain74_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3712]
 mov rdx, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain74_n2_α
# IR_LIT_INTEGER
 xchain74_n2_α:
 mov qword ptr [rbp + 3456], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 3464], rax
 jmp xchain74_n3_α
.Lx77_0:
 .quad 18446744073709551615
# KEYWORD_null
 xchain74_n3_α:
 mov qword ptr [rbp + 3488], 0
 mov qword ptr [rbp + 3496], 0
 jmp xchain74_n4_α
 xchain74_n3_β:
 jmp xchain74_n8_α
# IR_LIT_STRING
 xchain74_n4_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain74_n5_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "ROOT"
# IR_LIT_STRING
 xchain74_n5_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain74_n6_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string ""
# IR_VAR
 xchain74_n6_α:
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3592], rax
 jmp xchain74_n7_α
# KEYWORD_null
 xchain74_n7_α:
 mov qword ptr [rbp + 3616], 0
 mov qword ptr [rbp + 3624], 0
 jmp xchain74_n9_α
 xchain74_n7_β:
 jmp xchain74_n8_α
 xchain74_n8_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn85: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn85]
 lea rsi, [rbp + 3248]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain74_n11_α
 jmp xchain74_n10_α
 xchain74_n8_β:
 jmp xchain74_n11_α
# KEYWORD_null
 xchain74_n9_α:
 mov qword ptr [rbp + 3648], 0
 mov qword ptr [rbp + 3656], 0
 jmp xchain74_n12_α
 xchain74_n9_β:
 jmp xchain74_n8_α
 xchain74_n10_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3232]
 mov rdx, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain74_n11_α
# IR_MAKE_LIST
 xchain74_n11_α:
 lea rdi, [rbp + 3216]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain74_n13_α
# IR_MAKE_LIST
 xchain74_n12_α:
 lea rdi, [rbp + 3696]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain74_n14_α
 xchain74_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain74_n15_α
 xchain74_n14_α:
# BOX IR_CALL gednode(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3456] -> [zr+3312]
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3320], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3328]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3336], rax
# marshal arg2 = producer-box slot [zr+3520] -> [zr+3344]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3352], rax
# marshal arg3 = producer-box slot [zr+3552] -> [zr+3360]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3368], rax
# marshal arg4 = producer-box slot [zr+3584] -> [zr+3376]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3384], rax
# marshal arg5 = producer-box slot [zr+3616] -> [zr+3392]
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3400], rax
# marshal arg6 = producer-box slot [zr+3648] -> [zr+3408]
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3416], rax
# marshal arg7 = producer-box slot [zr+3680] -> [zr+3424]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3432], rax
  .section .rodata
  .Lrkfn94: .string "gednode"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn94]
 lea rsi, [rbp + 3312]
 mov edx, 8
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain74_n8_α
 jmp xchain74_n16_α
 xchain74_n14_β:
 jmp xchain74_n8_α
# IR_MAKE_LIST
 xchain74_n15_α:
 lea rdi, [rbp + 3184]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain74_n17_α
 xchain74_n16_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3296]
 mov rdx, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain74_n18_α
 xchain74_n17_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3168]
 mov rdx, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain74_n19_α
 xchain74_n18_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain74_n8_α
# IR_VAR
 xchain74_n19_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 776], rax
 jmp xchain74_n20_α
 xchain74_n20_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+736]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 744], rax
  .section .rodata
  .Lrkfn103: .string "read"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn103]
 lea rsi, [rbp + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain74_n21_α
 jmp xchain74_n22_α
 xchain74_n20_β:
 jmp xchain74_n21_α
# IR_VAR
 xchain74_n21_α:
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 344], rax
 jmp xchain74_n23_α
# IR_LIT_CHARSET
 xchain74_n22_α:
 mov qword ptr [rbp + 800], 1
 mov dword ptr [rbp + 804], -1
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain74_n25_α
.Lx00001_0:
 .quad .Lx00001_0_s
.Lx00001_0_s:
 .string "\t\n "
 xchain74_n23_α:
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
 je xchain74_n24_α
 jmp xchain74_n26_α
 xchain74_n23_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 312]
 jmp qword ptr [rsp]
.Lx00002_0:
 .quad .Lx00002_0_s
.Lx00002_0_s:
 .string "gedwalk"
# IR_VAR
 xchain74_n24_α:
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 136], rax
 jmp xchain74_n27_α
 xchain74_n25_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+688]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn112: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn112]
 lea rsi, [rbp + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain74_n21_α
 jmp xchain74_n28_α
 xchain74_n25_β:
 jmp xchain74_n21_α
 xchain74_n26_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain74_n29_α
# IR_VAR
 xchain74_n27_α:
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 168], rax
 jmp xchain74_n30_α
 xchain74_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain74_n31_α
# IR_BOUND
 xchain74_n29_α:
 mov qword ptr [rbp + 368], rsp
 jmp xchain74_n32_α
# IR_VAR
 xchain74_n30_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 200], rax
 jmp xchain74_n33_α
# IR_VAR
 xchain74_n31_α:
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3096], rax
 jmp xchain74_n34_α
# IR_VAR
 xchain74_n32_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 456], rax
 jmp xchain74_n36_α
# IR_VAR
 xchain74_n33_α:
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 232], rax
 jmp xchain74_n38_α
# IR_LIT_INTEGER
 xchain74_n34_α:
 mov qword ptr [rbp + 3120], 6
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain74_n39_α
.Lx00003_0:
 .quad 1
# IR_DISJUNCTION_NARY
 xchain74_n35_α:
 mov qword ptr [rbp + 2848], 0
 mov qword ptr [rbp + 2856], 0
 mov dword ptr [rbp + 2864], 0
 jmp xchain74_n41_α
xchain74_n35_as:
 mov eax, dword ptr [rbp + 2864]
 cmp eax, 0
 jne .Lx00004_0
 jmp xchain74_n40_α
.Lx00004_0:
 jmp xchain74_n40_α
 xchain74_n35_β:
 mov eax, dword ptr [rbp + 2864]
 jmp xchain74_n40_α
xchain74_n35_af:
 add dword ptr [rbp + 2864], 1
 mov eax, dword ptr [rbp + 2864]
 jmp xchain74_n40_α
# IR_FIELD_GET lv
 xchain74_n36_α:
 mov rdi, qword ptr [rip + .Lx00005_0]
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain74_n37_α
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain74_n42_α
.Lx00005_0:
 .quad .Lx00005_0_s
.Lx00005_0_s:
 .string "ref"
# IR_UNMARK
 xchain74_n37_α:
 mov rsp, qword ptr [rbp + 368]
 jmp xchain74_n23_β
 xchain74_n38_α:
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
  .Lrkfn134: .string "gedcom"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn134]
 lea rsi, [rbp + 48]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_gedload_ω
 jmp xchain74_n43_α
 xchain74_n38_β:
 jmp proc_gedload_ω
# IR_COERCE_NUMERIC
 xchain74_n39_α:
 mov eax, dword ptr [rbp + 3888]
 cmp eax, 7
 je .Lx00006_1
 cmp eax, 6
 jne .Lx00006_0
 mov eax, dword ptr [rbp + 3120]
 cmp eax, 6
 jne .Lx00006_0
.Lx00006_1:
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3064], rax
 jmp xchain74_n44_α
.Lx00006_0:
 lea rdi, [rbp + 3888]
 lea rsi, [rbp + 3120]
 lea rdx, [rbp + 3056]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain74_n44_α
# IR_DISJUNCTION_NARY
 xchain74_n40_α:
 mov qword ptr [rbp + 2400], 0
 mov qword ptr [rbp + 2408], 0
 mov dword ptr [rbp + 2416], 0
 jmp xchain74_n46_α
xchain74_n40_as:
 mov eax, dword ptr [rbp + 2416]
 cmp eax, 0
 jne .Lx00007_0
 jmp xchain74_n45_α
.Lx00007_0:
 jmp xchain74_n45_α
 xchain74_n40_β:
 mov eax, dword ptr [rbp + 2416]
 jmp xchain74_n45_α
xchain74_n40_af:
 add dword ptr [rbp + 2416], 1
 mov eax, dword ptr [rbp + 2416]
 jmp xchain74_n45_α
# IR_VAR
 xchain74_n41_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 2952], rax
 jmp xchain74_n48_α
 xchain74_n41_β:
 jmp xchain74_n35_af
# IR_VAR_REF
 xchain74_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain74_n49_α
# IR_RETURN
 xchain74_n43_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedload_γ
 xchain74_n44_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3056]
 cmp eax, 100
 je .Lx00008_0
 mov eax, dword ptr [rbp + 3056]
 cmp eax, 6
 jne .Lx00008_2
.Lx00008_1:
 mov rax, qword ptr [rbp + 3064]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 3024], 6
 mov qword ptr [rbp + 3032], rax
 jmp xchain74_n50_α
.Lx00008_0:
 mov rdi, qword ptr [rbp + 3056]
 mov rsi, qword ptr [rbp + 3064]
 mov rdx, qword ptr [rbp + 3120]
 mov rcx, qword ptr [rbp + 3128]
 mov r8d, 0
 lea r9, [rbp + 3024]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain74_n50_α
.Lx00008_2:
 mov rdi, qword ptr [rbp + 3056]
 mov rsi, qword ptr [rbp + 3064]
 mov rdx, qword ptr [rbp + 3120]
 mov rcx, qword ptr [rbp + 3128]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain74_n35_α
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain74_n50_α
 xchain74_n44_β:
 jmp xchain74_n35_α
# IR_VAR
 xchain74_n45_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 2328], rax
 jmp xchain74_n51_α
# IR_VAR
 xchain74_n46_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 2824], rax
 jmp xchain74_n53_α
 xchain74_n46_β:
 jmp xchain74_n54_α
 xchain74_n47_α:
 jmp xchain74_n40_as
xchain74_n47_β:
 jmp xchain74_n45_α
# IR_UNOP
 xchain74_n48_α:
 mov rdi, qword ptr [rbp + 3840]
 mov rsi, qword ptr [rbp + 3848]
 call rt_size_d@PLT
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain74_n55_α
# IR_VAR
 xchain74_n49_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 568], rax
 jmp xchain74_n56_α
 xchain74_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 jmp xchain74_n35_α
# IR_FIELD_GET lv
 xchain74_n51_α:
 mov rdi, qword ptr [rip + .Lx00009_0]
 mov rsi, qword ptr [rbp + 2320]
 mov rdx, qword ptr [rbp + 2328]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain74_n52_α
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain74_n57_α
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "lnum"
# IR_VAR
 xchain74_n52_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 2232], rax
 jmp xchain74_n58_α
 xchain74_n53_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2816]
 mov rdx, qword ptr [rbp + 2824]
 call rt_arg_stage@PLT
 mov edi, 4
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00010_1
 lea rcx, [rip + .Lx00010_3]
 lea rdx, [rip + .Lx00010_4]
 jmp rax
.Lx00010_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00010_2
.Lx00010_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00010_2
.Lx00010_1:
 call rt_faildescr@PLT
.Lx00010_2:
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain74_n54_α
 jmp xchain74_n60_α
 xchain74_n53_β:
 jmp xchain74_n54_α
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "gedscan"
# KEYWORD_null
 xchain74_n54_α:
 mov qword ptr [rbp + 2720], 0
 mov qword ptr [rbp + 2728], 0
 jmp xchain74_n61_α
 xchain74_n54_β:
 jmp xchain74_n40_af
# IR_LIT_INTEGER
 xchain74_n55_α:
 mov qword ptr [rbp + 2976], 6
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [rbp + 2984], rax
 jmp xchain74_n62_α
.Lx00011_0:
 .quad 0
# IR_FIELD_GET
 xchain74_n56_α:
 mov rdi, qword ptr [rip + .Lx00012_0]
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain74_n37_α
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain74_n63_α
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "data"
# IR_VAR
 xchain74_n57_α:
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 2376], rax
 jmp xchain74_n64_α
# IR_FIELD_GET lv
 xchain74_n58_α:
 mov rdi, qword ptr [rip + .Lx00013_0]
 mov rsi, qword ptr [rbp + 2224]
 mov rdx, qword ptr [rbp + 2232]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain74_n59_α
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain74_n65_α
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "sub"
# IR_VAR
 xchain74_n59_α:
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 2024], rax
 jmp xchain74_n66_α
 xchain74_n60_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2768]
 mov rdx, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain74_n40_as
# KEYWORD_read
 xchain74_n61_α:
 mov rdi, qword ptr [rip + .Lx00014_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain74_n19_α
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain74_n68_α
 xchain74_n61_β:
 jmp xchain74_n19_α
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "&errout"
 xchain74_n62_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 2912]
 cmp eax, 100
 je .Lx00015_0
 mov eax, dword ptr [rbp + 2976]
 cmp eax, 100
 je .Lx00015_0
 mov eax, dword ptr [rbp + 2912]
 cmp eax, 6
 jne .Lx00015_2
 mov eax, dword ptr [rbp + 2976]
 cmp eax, 6
 jne .Lx00015_2
.Lx00015_1:
 mov rax, qword ptr [rbp + 2920]
 mov rcx, qword ptr [rbp + 2984]
 cmp rax, rcx
 jne xchain74_n35_af
 mov rcx, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 2880], rcx
 mov rcx, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 2888], rcx
 jmp xchain74_n19_α
.Lx00015_0:
 mov rdi, qword ptr [rbp + 2912]
 mov rsi, qword ptr [rbp + 2920]
 mov rdx, qword ptr [rbp + 2976]
 mov rcx, qword ptr [rbp + 2984]
 mov r8d, 9
 lea r9, [rbp + 2880]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00015_1
 cmp eax, 1
 je xchain74_n35_af
 jmp xchain74_n19_α
.Lx00015_2:
 mov rdi, qword ptr [rbp + 2912]
 mov rsi, qword ptr [rbp + 2920]
 mov rdx, qword ptr [rbp + 2976]
 mov rcx, qword ptr [rbp + 2984]
 mov r8d, 9
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain74_n35_af
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 2888], rax
 jmp xchain74_n19_α
# IR_SUBSCRIPT x[i] variable
 xchain74_n63_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain74_n37_α
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain74_n69_α
# IR_ASSIGN_VAR
 xchain74_n64_α:
 mov rdi, qword ptr [rbp + 2288]
 mov rsi, qword ptr [rbp + 2296]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain74_n52_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain74_n52_α
# IR_MAKE_LIST
 xchain74_n65_α:
 lea rdi, [rbp + 2288]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain74_n70_α
# IR_FIELD_GET
 xchain74_n66_α:
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov rsi, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain74_n67_α
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain74_n71_α
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "level"
# IR_VAR
 xchain74_n67_α:
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 1896], rax
 jmp xchain74_n72_α
# IR_LIT_STRING
 xchain74_n68_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [rbp + 2600], rax
 jmp xchain74_n74_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "ERR, line "
# IR_DEREF variable -> value
 xchain74_n69_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain74_n37_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain74_n75_α
# IR_ASSIGN_VAR
 xchain74_n70_α:
 mov rdi, qword ptr [rbp + 2192]
 mov rsi, qword ptr [rbp + 2200]
 mov rdx, qword ptr [rbp + 2272]
 mov rcx, qword ptr [rbp + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain74_n59_α
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain74_n59_α
# IR_VAR
 xchain74_n71_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 2088], rax
 jmp xchain74_n76_α
# IR_FIELD_GET
 xchain74_n72_α:
 mov rdi, qword ptr [rip + .Lx00018_0]
 mov rsi, qword ptr [rbp + 1888]
 mov rdx, qword ptr [rbp + 1896]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain74_n73_α
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain74_n77_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "sub"
# IR_VAR
 xchain74_n73_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1720], rax
 jmp xchain74_n78_α
# IR_VAR
 xchain74_n74_α:
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 2632], rax
 jmp xchain74_n80_α
# IR_ASSIGN_VAR
 xchain74_n75_α:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain74_n37_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain74_n37_α
# IR_FIELD_GET
 xchain74_n76_α:
 mov rdi, qword ptr [rip + .Lx00019_0]
 mov rsi, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain74_n67_α
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain74_n82_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "level"
# IR_VAR
 xchain74_n77_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1928], rax
 jmp xchain74_n83_α
# IR_FIELD_GET lv
 xchain74_n78_α:
 mov rdi, qword ptr [rip + .Lx00020_0]
 mov rsi, qword ptr [rbp + 1712]
 mov rdx, qword ptr [rbp + 1720]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain74_n79_α
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain74_n84_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "parent"
# IR_VAR
 xchain74_n79_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1656], rax
 jmp xchain74_n85_α
# IR_LIT_STRING
 xchain74_n80_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain74_n87_α
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string ": "
 xchain74_n81_α:
 jmp xchain74_n19_α
xchain74_n81_β:
 jmp xchain74_n19_α
 xchain74_n82_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 100
 je .Lx00022_0
 mov eax, dword ptr [rbp + 1984]
 cmp eax, 6
 jne .Lx00022_2
 mov eax, dword ptr [rbp + 2048]
 cmp eax, 6
 jne .Lx00022_2
.Lx00022_1:
 mov rax, qword ptr [rbp + 1992]
 mov rcx, qword ptr [rbp + 2056]
 cmp rax, rcx
 jl xchain74_n67_α
 mov rcx, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1952], rcx
 mov rcx, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1960], rcx
 jmp xchain74_n88_α
.Lx00022_0:
 mov rdi, qword ptr [rbp + 1984]
 mov rsi, qword ptr [rbp + 1992]
 mov rdx, qword ptr [rbp + 2048]
 mov rcx, qword ptr [rbp + 2056]
 mov r8d, 8
 lea r9, [rbp + 1952]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00022_1
 cmp eax, 1
 je xchain74_n67_α
 jmp xchain74_n88_α
.Lx00022_2:
 mov rdi, qword ptr [rbp + 1984]
 mov rsi, qword ptr [rbp + 1992]
 mov rdx, qword ptr [rbp + 2048]
 mov rcx, qword ptr [rbp + 2056]
 mov r8d, 8
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain74_n67_α
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1960], rax
 jmp xchain74_n88_α
 xchain74_n83_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1808]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1816], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1824]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1832], rax
  .section .rodata
  .Lrkfn198: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn198]
 lea rsi, [rbp + 1808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain74_n73_α
 jmp xchain74_n73_α
 xchain74_n83_β:
 jmp xchain74_n73_α
# IR_VAR
 xchain74_n84_α:
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 1768], rax
 jmp xchain74_n89_α
 xchain74_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1648]
 mov rdx, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain74_n86_α
# IR_VAR_REF
 xchain74_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain74_n90_α
# IR_VAR
 xchain74_n87_α:
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 2696], rax
 jmp xchain74_n91_α
# IR_VAR
 xchain74_n88_α:
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 2168], rax
 jmp xchain74_n92_α
# IR_ASSIGN_VAR
 xchain74_n89_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 mov rdx, qword ptr [rbp + 1760]
 mov rcx, qword ptr [rbp + 1768]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain74_n79_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain74_n79_α
# IR_VAR
 xchain74_n90_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1528], rax
 jmp xchain74_n93_α
 xchain74_n91_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2464]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2480]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2488], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2496]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2504], rax
# marshal arg3 = producer-box slot [zr+2656] -> [zr+2512]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2520], rax
# marshal arg4 = producer-box slot [zr+2688] -> [zr+2528]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2536], rax
  .section .rodata
  .Lrkfn212: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn212]
 lea rsi, [rbp + 2464]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain74_n19_α
 jmp xchain74_n19_α
 xchain74_n91_β:
 jmp xchain74_n19_α
# IR_FIELD_GET
 xchain74_n92_α:
 mov rdi, qword ptr [rip + .Lx00023_0]
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain74_n59_α
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain74_n95_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "parent"
# IR_FIELD_GET
 xchain74_n93_α:
 mov rdi, qword ptr [rip + .Lx00024_0]
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain74_n94_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain74_n96_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "id"
# IR_VAR
 xchain74_n94_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 920], rax
 jmp xchain74_n97_α
 xchain74_n95_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2128]
 mov rdx, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain74_n59_α
# IR_UNOP
 xchain74_n96_α:
 mov eax, dword ptr [rbp + 1488]
 cmp eax, 99
 je xchain74_n94_α
 cmp eax, 0
 je xchain74_n94_α
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
 jmp xchain74_n98_α
# IR_FIELD_GET
 xchain74_n97_α:
 mov rdi, qword ptr [rip + .Lx00025_0]
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain74_n19_α
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain74_n99_α
.Lx00025_0:
 .quad .Lx00025_0_s
.Lx00025_0_s:
 .string "tag"
# IR_SUBSCRIPT x[i] variable
 xchain74_n98_α:
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1456]
 mov rcx, qword ptr [rbp + 1464]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain74_n94_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain74_n00026_α
# IR_LIT_STRING
 xchain74_n99_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain74_n00028_α
.Lx00027_0:
 .quad .Lx00027_0_s
.Lx00027_0_s:
 .string "FAM"
# IR_VAR
 xchain74_n00026_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1608], rax
 jmp xchain74_n00029_α
 xchain74_n00028_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+1376]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1392]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1400], rax
  .section .rodata
  .Lrkfn225: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn225]
 lea rsi, [rbp + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain74_n00030_α
 jmp xchain74_n00031_α
 xchain74_n00028_β:
 jmp xchain74_n00030_α
# IR_ASSIGN_VAR
 xchain74_n00029_α:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 mov rdx, qword ptr [rbp + 1600]
 mov rcx, qword ptr [rbp + 1608]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain74_n94_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain74_n94_α
# IR_VAR
 xchain74_n00031_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 1288], rax
 jmp xchain74_n00032_α
# IR_LIT_STRING
 xchain74_n00030_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain74_n00001_α
.Lx00033_0:
 .quad .Lx00033_0_s
.Lx00033_0_s:
 .string "INDI"
# IR_VAR
 xchain74_n00032_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1320], rax
 jmp xchain74_n00034_α
 xchain74_n00001_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+1136]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+1152]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1160], rax
  .section .rodata
  .Lrkfn233: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn233]
 lea rsi, [rbp + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain74_n19_α
 jmp xchain74_n00002_α
 xchain74_n00001_β:
 jmp xchain74_n19_α
 xchain74_n00034_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn235: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn235]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain74_n19_α
 jmp xchain74_n00035_α
 xchain74_n00034_β:
 jmp xchain74_n19_α
# IR_VAR
 xchain74_n00002_α:
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 1048], rax
 jmp xchain74_n00036_α
 xchain74_n00035_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain74_n00037_α
# IR_VAR
 xchain74_n00036_α:
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 1080], rax
 jmp xchain74_n00038_α
# IR_VAR
 xchain74_n00037_α:
 mov rax, qword ptr [rbp + 3856]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 3864]
 mov qword ptr [rbp + 856], rax
 jmp xchain74_n00039_α
 xchain74_n00038_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
  .section .rodata
  .Lrkfn244: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn244]
 lea rsi, [rbp + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain74_n19_α
 jmp xchain74_n00040_α
 xchain74_n00038_β:
 jmp xchain74_n19_α
 xchain74_n00039_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 840], rax
 jmp xchain74_n19_α
xchain74_n00039_β:
 jmp xchain74_n19_α
 xchain74_n00040_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain74_n00037_α
proc_gedload_res:
add rsp, 8
pop rbp
proc_gedload_β:
jmp proc_gedload_ω
proc_gedload_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 3912]
lea rsp, [rbp + 3936]
mov rbp, [rbp + 3928]
jmp rax
proc_gedload_ω:
mov rax, [rbp + 3920]
lea rsp, [rbp + 3936]
mov rbp, [rbp + 3928]
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
# IR_DISJUNCTION_NARY
 xchain00041_n0_α:
 mov qword ptr [rbp + 1504], 0
 mov qword ptr [rbp + 1512], 0
 mov dword ptr [rbp + 1520], 0
 jmp xchain00041_n2_α
xchain00041_n0_as:
 mov eax, dword ptr [rbp + 1520]
 cmp eax, 0
 jne .Lx00042_0
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1512], rax
 jmp xchain00041_n1_α
.Lx00042_0:
 jmp xchain00041_n1_α
 xchain00041_n0_β:
 mov eax, dword ptr [rbp + 1520]
 jmp xchain00041_n1_α
xchain00041_n0_af:
 add dword ptr [rbp + 1520], 1
 mov eax, dword ptr [rbp + 1520]
 jmp xchain00041_n1_α
# IR_VAR
 xchain00041_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1480], rax
 jmp xchain00041_n4_α
# IR_VAR_REF
 xchain00041_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052320
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain00041_n5_α
 xchain00041_n2_β:
 jmp xchain00041_n0_af
# IR_ASSIGN gva
 xchain00041_n3_α:
 mov rax, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain00041_n0_as
 xchain00041_n3_β:
 jmp xchain00041_n1_α
# IR_GEN_SCAN
 xchain00041_n4_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00041_n6_α
# IR_NULLTEST_VAR
 xchain00041_n5_α:
 mov eax, dword ptr [rbp + 1712]
 cmp eax, 99
 je xchain00041_n0_af
 mov rdi, qword ptr [rbp + 1712]
 mov rsi, qword ptr [rbp + 1720]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00041_n0_af
 cmp eax, 0
 jne xchain00041_n0_af
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1752], rax
 jmp xchain00041_n7_α
# IR_LIT_CHARSET
 xchain00041_n6_α:
 mov qword ptr [rbp + 1440], 1
 mov dword ptr [rbp + 1444], -1
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain00041_n8_α
.Lx00043_0:
 .quad .Lx00043_0_s
.Lx00043_0_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00041_n7_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00041_n9_α
.Lx00044_0:
 .quad 1
# IR_SCAN_MANY
 xchain00041_n8_α:
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
 je xchain00041_n12_α
 mov qword ptr [rbp + 1408], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1416], rcx
 jmp xchain00041_n10_α
 xchain00041_n8_β:
 jmp xchain00041_n12_α
.Lx00045_2:
 .quad .Lx00045_2_s
.Lx00045_2_s:
 .string "\t\n "
# IR_ASSIGN_VAR
 xchain00041_n9_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00041_n0_af
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00041_n11_α
# IR_SCAN_TAB
 xchain00041_n10_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1416]
 cmp rax, 1
 jge .Lx00046_0
 add rax, r15
 add rax, 1
.Lx00046_0:
 cmp rax, 1
 jge .Lx00046_239
 add rsp, 16
 jmp xchain00041_n12_α
.Lx00046_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00046_240
 add rsp, 16
 jmp xchain00041_n12_α
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
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain00041_n12_α
 xchain00041_n10_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n12_α
# IR_LIT_CHARSET
 xchain00041_n11_α:
 mov qword ptr [rbp + 1616], 1
 mov dword ptr [rbp + 1620], -1
 mov rax, qword ptr [rip + .Lx00047_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain00041_n13_α
.Lx00047_0:
 .quad .Lx00047_0_s
.Lx00047_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
# IR_DISJUNCTION_NARY
 xchain00041_n12_α:
 mov qword ptr [rbp + 1248], 0
 mov qword ptr [rbp + 1256], 0
 mov dword ptr [rbp + 1264], 0
 jmp xchain00041_n15_α
xchain00041_n12_as:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 jne .Lx00048_0
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00041_n14_α
.Lx00048_0:
 cmp eax, 1
 jne .Lx00048_1
 jmp xchain00041_n14_α
.Lx00048_1:
 jmp xchain00041_n14_α
 xchain00041_n12_β:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 0
 je xchain00041_n12_af
 jmp xchain00041_n12_af
xchain00041_n12_af:
 add dword ptr [rbp + 1264], 1
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 1
 je proc_gedscan_ω
 jmp xchain00041_n18_α
# IR_LIT_CHARSET
 xchain00041_n13_α:
 mov qword ptr [rbp + 1648], 1
 mov dword ptr [rbp + 1652], -1
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain00041_n17_α
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string "0123456789"
 xchain00041_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain00041_n18_α
# IR_LIT_CHARSET
 xchain00041_n15_α:
 mov qword ptr [rbp + 1344], 1
 mov dword ptr [rbp + 1348], -1
 mov rax, qword ptr [rip + .Lx00050_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00041_n19_α
 xchain00041_n15_β:
 jmp xchain00041_n12_af
.Lx00050_0:
 .quad .Lx00050_0_s
.Lx00050_0_s:
 .string "0123456789"
# IR_SCAN_TAB
 xchain00041_n16_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1320]
 cmp rax, 1
 jge .Lx00051_0
 add rax, r15
 add rax, 1
.Lx00051_0:
 cmp rax, 1
 jge .Lx00051_239
 add rsp, 16
 jmp xchain00041_n12_af
.Lx00051_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00051_240
 add rsp, 16
 jmp xchain00041_n12_af
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
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain00041_n12_as
 xchain00041_n16_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n12_af
 xchain00041_n17_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00041_n1_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain00041_n20_α
# IR_LIT_CHARSET
 xchain00041_n18_α:
 mov qword ptr [rbp + 1200], 1
 mov dword ptr [rbp + 1204], -1
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00041_n21_α
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string "\t\n "
# IR_SCAN_MANY
 xchain00041_n19_α:
 mov eax, r14d
.Lx00053_0:
 cmp eax, r15d
 jge .Lx00053_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00053_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00053_1
 add eax, 1
 jmp .Lx00053_0
.Lx00053_1:
 cmp eax, r14d
 je xchain00041_n12_af
 mov qword ptr [rbp + 1312], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1320], rcx
 jmp xchain00041_n16_α
 xchain00041_n19_β:
 jmp xchain00041_n12_af
.Lx00053_2:
 .quad .Lx00053_2_s
.Lx00053_2_s:
 .string "0123456789"
# IR_LIT_CHARSET
 xchain00041_n20_α:
 mov qword ptr [rbp + 1680], 1
 mov dword ptr [rbp + 1684], -1
 mov rax, qword ptr [rip + .Lx00054_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain00041_n22_α
.Lx00054_0:
 .quad .Lx00054_0_s
.Lx00054_0_s:
 .string "_"
# IR_SCAN_MANY
 xchain00041_n21_α:
 mov eax, r14d
.Lx00055_0:
 cmp eax, r15d
 jge .Lx00055_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00055_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00055_1
 add eax, 1
 jmp .Lx00055_0
.Lx00055_1:
 cmp eax, r14d
 je xchain00041_n24_α
 mov qword ptr [rbp + 1168], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1176], rcx
 jmp xchain00041_n23_α
 xchain00041_n21_β:
 jmp xchain00041_n24_α
.Lx00055_2:
 .quad .Lx00055_2_s
.Lx00055_2_s:
 .string "\t\n "
 xchain00041_n22_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [rbp + 1584]
 mov rsi, qword ptr [rbp + 1592]
 mov rdx, qword ptr [rbp + 1680]
 mov rcx, qword ptr [rbp + 1688]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00041_n1_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain00041_n3_α
# IR_SCAN_TAB
 xchain00041_n23_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1176]
 cmp rax, 1
 jge .Lx00056_0
 add rax, r15
 add rax, 1
.Lx00056_0:
 cmp rax, 1
 jge .Lx00056_239
 add rsp, 16
 jmp xchain00041_n24_α
.Lx00056_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00056_240
 add rsp, 16
 jmp xchain00041_n24_α
.Lx00056_240:
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
 jmp xchain00041_n24_α
 xchain00041_n23_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n24_α
# IR_DISJUNCTION_NARY
 xchain00041_n24_α:
 mov qword ptr [rbp + 672], 0
 mov qword ptr [rbp + 680], 0
 mov dword ptr [rbp + 688], 0
 jmp xchain00041_n26_α
xchain00041_n24_as:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 0
 jne .Lx00057_0
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
 jmp xchain00041_n25_α
.Lx00057_0:
 jmp xchain00041_n25_α
 xchain00041_n24_β:
 mov eax, dword ptr [rbp + 688]
 jmp xchain00041_n25_α
xchain00041_n24_af:
 add dword ptr [rbp + 688], 1
 mov eax, dword ptr [rbp + 688]
 jmp xchain00041_n25_α
# IR_DISJUNCTION_NARY
 xchain00041_n25_α:
 mov qword ptr [rbp + 544], 0
 mov qword ptr [rbp + 552], 0
 mov dword ptr [rbp + 560], 0
 jmp xchain00041_n29_α
xchain00041_n25_as:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 0
 jne .Lx00058_0
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
 jmp xchain00041_n28_α
.Lx00058_0:
 cmp eax, 1
 jne .Lx00058_1
 jmp xchain00041_n28_α
.Lx00058_1:
 jmp xchain00041_n28_α
 xchain00041_n25_β:
 mov eax, dword ptr [rbp + 560]
 cmp eax, 0
 je xchain00041_n25_af
 jmp xchain00041_n25_af
xchain00041_n25_af:
 add dword ptr [rbp + 560], 1
 mov eax, dword ptr [rbp + 560]
 cmp eax, 1
 je proc_gedscan_ω
 jmp xchain00041_n36_α
# IR_SCAN_SEQ_NARY
 xchain00041_n26_α:
 mov dword ptr [rbp + 832], r14d
 mov dword ptr [rbp + 836], 0
 jmp xchain00041_n32_α
xchain00041_n26_as:
 mov eax, dword ptr [rbp + 836]
 add eax, 1
 mov dword ptr [rbp + 836], eax
 cmp eax, 1
 je xchain00041_n34_α
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
 jmp xchain00041_n31_α
 xchain00041_n26_β:
 mov dword ptr [rbp + 836], 2
xchain00041_n26_af:
 mov eax, dword ptr [rbp + 836]
 sub eax, 1
 mov dword ptr [rbp + 836], eax
 cmp eax, 0
 je xchain00041_n33_β
 cmp eax, 1
 je xchain00041_n35_β
 jmp xchain00041_n24_af
# IR_SCAN_TAB
 xchain00041_n27_α:
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
 jmp xchain00041_n25_α
.Lx00059_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00059_240
 add rsp, 16
 jmp xchain00041_n25_α
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
 jmp xchain00041_n24_as
 xchain00041_n27_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n25_α
 xchain00041_n28_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain00041_n36_α
# IR_VAR
 xchain00041_n29_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00041_n37_α
 xchain00041_n29_β:
 jmp xchain00041_n25_af
# IR_SCAN_TAB
 xchain00041_n30_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 616]
 cmp rax, 1
 jge .Lx00060_0
 add rax, r15
 add rax, 1
.Lx00060_0:
 cmp rax, 1
 jge .Lx00060_239
 add rsp, 16
 jmp xchain00041_n25_af
.Lx00060_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00060_240
 add rsp, 16
 jmp xchain00041_n25_af
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
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain00041_n25_as
 xchain00041_n30_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n25_af
 xchain00041_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00041_n38_α
# IR_LIT_STRING
 xchain00041_n32_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx00061_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain00041_n39_α
 xchain00041_n32_β:
 jmp xchain00041_n26_af
.Lx00061_0:
 .quad .Lx00061_0_s
.Lx00061_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00041_n33_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 888]
 cmp rax, 1
 jge .Lx00062_0
 add rax, r15
 add rax, 1
.Lx00062_0:
 cmp rax, 1
 jge .Lx00062_239
 add rsp, 16
 jmp xchain00041_n26_af
.Lx00062_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00062_240
 add rsp, 16
 jmp xchain00041_n26_af
.Lx00062_240:
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
 jmp xchain00041_n26_as
 xchain00041_n33_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n26_af
# IR_LIT_CHARSET
 xchain00041_n34_α:
 mov qword ptr [rbp + 1072], 1
 mov dword ptr [rbp + 1076], -1
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00041_n40_α
 xchain00041_n34_β:
 jmp xchain00041_n26_af
.Lx00063_0:
 .quad .Lx00063_0_s
.Lx00063_0_s:
 .string "@"
# IR_SCAN_TAB
 xchain00041_n35_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 984]
 cmp rax, 1
 jge .Lx00064_0
 add rax, r15
 add rax, 1
.Lx00064_0:
 cmp rax, 1
 jge .Lx00064_239
 add rsp, 16
 jmp xchain00041_n40_β
.Lx00064_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00064_240
 add rsp, 16
 jmp xchain00041_n40_β
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
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00041_n26_as
 xchain00041_n35_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n40_β
# IR_LIT_CHARSET
 xchain00041_n36_α:
 mov qword ptr [rbp + 496], 1
 mov dword ptr [rbp + 500], -1
 mov rax, qword ptr [rip + .Lx00065_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00041_n41_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "\t\n "
# IR_SCAN_MANY (var cset) [fstranl.r many: advance while s[i] in cset-descr@slot; fail if none consumed]
 xchain00041_n37_α:
 mov eax, r14d
.Lx00066_0:
 cmp eax, r15d
 jge .Lx00066_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 648]
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
 je xchain00041_n25_af
 mov qword ptr [rbp + 608], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 616], rcx
 jmp xchain00041_n30_α
 xchain00041_n37_β:
 jmp xchain00041_n25_af
# IR_LIT_CHARSET
 xchain00041_n38_α:
 mov qword ptr [rbp + 768], 1
 mov dword ptr [rbp + 772], -1
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00041_n42_α
.Lx00067_0:
 .quad .Lx00067_0_s
.Lx00067_0_s:
 .string "\t\n "
# IR_SCAN_MATCH
 xchain00041_n39_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00068_239
 add rsp, 16
 jmp xchain00041_n26_af
.Lx00068_239:
 mov rdi, qword ptr [rip + .Lx00068_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00068_240
 add rsp, 16
 jmp xchain00041_n26_af
.Lx00068_240:
 mov qword ptr [rbp + 880], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 888], rax
 jmp xchain00041_n33_α
.Lx00068_0:
 .quad .Lx00068_0_s
.Lx00068_0_s:
 .string "@"
# IR_SCAN_UPTO
 xchain00041_n40_α:
 mov qword ptr [rbp + 1056], r14
.Lx00069_0:
 mov rax, qword ptr [rbp + 1056]
 cmp rax, r15
 jge xchain00041_n26_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00069_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00069_1
 mov qword ptr [rbp + 1040], 6
 add rax, 1
 mov qword ptr [rbp + 1048], rax
 jmp xchain00041_n43_α
.Lx00069_1:
 inc qword ptr [rbp + 1056]
 jmp .Lx00069_0
 xchain00041_n40_β:
 inc qword ptr [rbp + 1056]
 jmp .Lx00069_0
.Lx00069_2:
 .quad .Lx00069_2_s
.Lx00069_2_s:
 .string "@"
# IR_SCAN_MANY
 xchain00041_n41_α:
 mov eax, r14d
.Lx00070_0:
 cmp eax, r15d
 jge .Lx00070_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00070_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00070_1
 add eax, 1
 jmp .Lx00070_0
.Lx00070_1:
 cmp eax, r14d
 je xchain00041_n46_α
 mov qword ptr [rbp + 464], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 472], rcx
 jmp xchain00041_n44_α
 xchain00041_n41_β:
 jmp xchain00041_n46_α
.Lx00070_2:
 .quad .Lx00070_2_s
.Lx00070_2_s:
 .string "\t\n "
# IR_SCAN_MANY
 xchain00041_n42_α:
 mov eax, r14d
.Lx00071_0:
 cmp eax, r15d
 jge .Lx00071_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00071_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00071_1
 add eax, 1
 jmp .Lx00071_0
.Lx00071_1:
 cmp eax, r14d
 je xchain00041_n25_α
 mov qword ptr [rbp + 736], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 744], rcx
 jmp xchain00041_n27_α
 xchain00041_n42_β:
 jmp xchain00041_n25_α
.Lx00071_2:
 .quad .Lx00071_2_s
.Lx00071_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00041_n43_α:
 mov qword ptr [rbp + 1104], 6
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00041_n45_α
.Lx00072_0:
 .quad 1
# IR_SCAN_TAB
 xchain00041_n44_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 472]
 cmp rax, 1
 jge .Lx00073_0
 add rax, r15
 add rax, 1
.Lx00073_0:
 cmp rax, 1
 jge .Lx00073_239
 add rsp, 16
 jmp xchain00041_n46_α
.Lx00073_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00073_240
 add rsp, 16
 jmp xchain00041_n46_α
.Lx00073_240:
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
 jmp xchain00041_n46_α
 xchain00041_n44_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n46_α
# IR_COERCE_NUMERIC
 xchain00041_n45_α:
 mov eax, dword ptr [rbp + 1040]
 cmp eax, 7
 je .Lx00074_1
 cmp eax, 6
 jne .Lx00074_0
 mov eax, dword ptr [rbp + 1104]
 cmp eax, 6
 jne .Lx00074_0
.Lx00074_1:
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
 jmp xchain00041_n47_α
.Lx00074_0:
 lea rdi, [rbp + 1040]
 lea rsi, [rbp + 1104]
 lea rdx, [rbp + 1008]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00041_n47_α
# IR_LIT_INTEGER
 xchain00041_n46_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx00075_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain00041_n48_α
.Lx00075_0:
 .quad 0
 xchain00041_n47_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 100
 je .Lx00076_0
 mov eax, dword ptr [rbp + 1008]
 cmp eax, 6
 jne .Lx00076_2
.Lx00076_1:
 mov rax, qword ptr [rbp + 1016]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 976], 6
 mov qword ptr [rbp + 984], rax
 jmp xchain00041_n35_α
.Lx00076_0:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 0
 lea r9, [rbp + 976]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00041_n35_α
.Lx00076_2:
 mov rdi, qword ptr [rbp + 1008]
 mov rsi, qword ptr [rbp + 1016]
 mov rdx, qword ptr [rbp + 1104]
 mov rcx, qword ptr [rbp + 1112]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00041_n26_af
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain00041_n35_α
 xchain00041_n47_β:
 jmp xchain00041_n26_af
# IR_SCAN_TAB
 xchain00041_n48_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00077_0
 add rax, r15
 add rax, 1
.Lx00077_0:
 cmp rax, 1
 jge .Lx00077_239
 add rsp, 16
 jmp xchain00041_n50_α
.Lx00077_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00077_240
 add rsp, 16
 jmp xchain00041_n50_α
.Lx00077_240:
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
 jmp xchain00041_n49_α
 xchain00041_n48_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00041_n50_α
 xchain00041_n49_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00041_n50_α
# IR_VAR
 xchain00041_n50_α:
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 232], rax
 jmp xchain00041_n51_α
# IR_VAR
 xchain00041_n51_α:
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 264], rax
 jmp xchain00041_n52_α
# IR_VAR
 xchain00041_n52_α:
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 296], rax
 jmp xchain00041_n53_α
# IR_VAR
 xchain00041_n53_α:
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 328], rax
 jmp xchain00041_n54_α
 xchain00041_n54_α:
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
  .Lrkfn333: .string "gednode"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 144]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_gedscan_ω
 jmp xchain00041_n55_α
 xchain00041_n54_β:
 jmp proc_gedscan_ω
# IR_RETURN
 xchain00041_n55_α:
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
lea rax, [rip + xchain00078_n1_β]
mov qword ptr [rbp + 256], rax
# IR_DISJUNCTION_NARY
 xchain00078_n0_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00078_n2_α
xchain00078_n0_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00079_0
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 40], rax
 jmp xchain00078_n1_α
.Lx00079_0:
 cmp eax, 1
 jne .Lx00079_1
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 40], rax
 jmp xchain00078_n1_α
.Lx00079_1:
 jmp xchain00078_n1_α
 xchain00078_n0_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je xchain00078_n0_af
 jmp xchain00078_n4_β
xchain00078_n0_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain00078_n3_α
 jmp proc_gedwalk_ω
# IR_SUSPEND yield+resume
 xchain00078_n1_α:
 lea rax, [rip + xchain00078_n1_β]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedwalk_γ
 xchain00078_n1_β:
 jmp xchain00078_n0_β
# IR_VAR
 xchain00078_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
 jmp xchain00078_n0_as
 xchain00078_n2_β:
 jmp xchain00078_n0_af
# IR_VAR
 xchain00078_n3_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 232], rax
 jmp xchain00078_n5_α
 xchain00078_n3_β:
 jmp xchain00078_n0_af
 xchain00078_n4_α:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 128], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00080_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00080_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00080_3]
 lea rdx, [rip + .Lx00080_4]
 jmp rax
.Lx00080_3:
 mov qword ptr [rbp + 136], rsp
 mov rax, qword ptr [rbp + 128]
 test rax, rax
 jne .Lx00080_5
 mov qword ptr [rbp + 128], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00080_2
.Lx00080_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00080_2
.Lx00080_4:
 mov rax, qword ptr [rbp + 128]
 test rax, rax
 jne .Lx00080_6
 mov qword ptr [rbp + 128], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00080_2
.Lx00080_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00080_2
.Lx00080_1:
 call rt_faildescr@PLT
.Lx00080_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain00078_n6_β
 jmp xchain00078_n0_as
 xchain00078_n4_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 136]
 jmp qword ptr [rsp]
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "gedwalk"
# IR_FIELD_GET
 xchain00078_n5_α:
 mov rdi, qword ptr [rip + .Lx00081_0]
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00078_n0_af
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain00078_n6_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00078_n6_α:
 mov qword ptr [rbp + 176], 0
.Lx00082_0:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 176]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp rax, 99
 je xchain00078_n0_af
 jmp xchain00078_n4_α
 xchain00078_n6_β:
 inc qword ptr [rbp + 176]
 jmp .Lx00082_0
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
  sub rsp, 1024
  mov [rsp + 1000], rcx
  mov [rsp + 1008], rdx
  mov [rsp + 1016], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 992
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 952], rsp
  mov rdi, rsp
  mov esi, 992
  call rt_jmp_frame_lexprep@PLT
proc_gedsub_α_body:
lea rax, [rip + xchain00083_n19_β]
mov qword ptr [rbp + 928], rax
# IR_DISJUNCTION_NARY
 xchain00083_n0_α:
 mov qword ptr [rbp + 816], 0
 mov qword ptr [rbp + 824], 0
 mov dword ptr [rbp + 832], 0
 jmp xchain00083_n2_α
xchain00083_n0_as:
 mov eax, dword ptr [rbp + 832]
 cmp eax, 0
 jne .Lx00084_0
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
 jmp xchain00083_n1_α
.Lx00084_0:
 cmp eax, 1
 jne .Lx00084_1
 jmp xchain00083_n1_α
.Lx00084_1:
 jmp xchain00083_n1_α
 xchain00083_n0_β:
 mov eax, dword ptr [rbp + 832]
 cmp eax, 0
 je xchain00083_n0_af
 jmp xchain00083_n0_af
xchain00083_n0_af:
 add dword ptr [rbp + 832], 1
 mov eax, dword ptr [rbp + 832]
 cmp eax, 1
 je proc_gedsub_ω
 jmp xchain00083_n4_α
 xchain00083_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain00083_n4_α
# IR_VAR
 xchain00083_n2_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 904], rax
 jmp xchain00083_n3_α
 xchain00083_n2_β:
 jmp xchain00083_n0_af
 xchain00083_n3_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn356: .string "get"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn356]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain00083_n0_af
 jmp xchain00083_n0_as
 xchain00083_n3_β:
 jmp xchain00083_n0_af
# IR_VAR
 xchain00083_n4_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 136], rax
 jmp xchain00083_n5_α
# IR_FIELD_GET
 xchain00083_n5_α:
 mov rdi, qword ptr [rip + .Lx00085_0]
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedsub_ω
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain00083_n6_α
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "sub"
# IR_LIST_BANG
 xchain00083_n6_α:
 mov qword ptr [rbp + 80], 0
.Lx00086_0:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 80]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp rax, 99
 je proc_gedsub_ω
 jmp xchain00083_n7_α
 xchain00083_n6_β:
 inc qword ptr [rbp + 80]
 jmp .Lx00086_0
 xchain00083_n7_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 jmp xchain00083_n8_α
# IR_BOUND
 xchain00083_n8_α:
 mov qword ptr [rbp + 160], rsp
 jmp xchain00083_n9_α
# IR_DISJUNCTION_NARY
 xchain00083_n9_α:
 mov qword ptr [rbp + 208], 0
 mov qword ptr [rbp + 216], 0
 mov dword ptr [rbp + 224], 0
 jmp xchain00083_n11_α
xchain00083_n9_as:
 mov eax, dword ptr [rbp + 224]
 cmp eax, 0
 jne .Lx00087_0
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 216], rax
 jmp xchain00083_n10_α
.Lx00087_0:
 jmp xchain00083_n10_α
 xchain00083_n9_β:
 mov eax, dword ptr [rbp + 224]
 jmp xchain00083_n12_β
xchain00083_n9_af:
 add dword ptr [rbp + 224], 1
 mov eax, dword ptr [rbp + 224]
 jmp xchain00083_n10_α
# IR_UNMARK
 xchain00083_n10_α:
 mov rsp, qword ptr [rbp + 160]
 jmp xchain00083_n6_β
# IR_VAR
 xchain00083_n11_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 744], rax
 jmp xchain00083_n13_α
 xchain00083_n11_β:
 jmp xchain00083_n9_af
# IR_DISJUNCTION_NARY
 xchain00083_n12_α:
 mov qword ptr [rbp + 240], 0
 mov qword ptr [rbp + 248], 0
 mov dword ptr [rbp + 256], 0
 jmp xchain00083_n14_α
xchain00083_n12_as:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 jne .Lx00088_0
 jmp xchain00083_n9_as
.Lx00088_0:
 cmp eax, 1
 jne .Lx00088_1
 jmp xchain00083_n9_as
.Lx00088_1:
 jmp xchain00083_n9_as
 xchain00083_n12_β:
 mov eax, dword ptr [rbp + 256]
 cmp eax, 0
 je xchain00083_n15_β
 jmp xchain00083_n10_α
xchain00083_n12_af:
 add dword ptr [rbp + 256], 1
 mov eax, dword ptr [rbp + 256]
 cmp eax, 1
 je xchain00083_n16_α
 jmp xchain00083_n10_α
# IR_FIELD_GET
 xchain00083_n13_α:
 mov rdi, qword ptr [rip + .Lx00089_0]
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00083_n9_af
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain00083_n17_α
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "tag"
# IR_VAR
 xchain00083_n14_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 584], rax
 jmp xchain00083_n18_α
 xchain00083_n14_β:
 jmp xchain00083_n12_af
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00083_n15_α:
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
 mov rdi, r14
 call rt_scan_sync_out@PLT
 mov qword ptr [rbp + 336], 0
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 320]
 mov rcx, qword ptr [rbp + 328]
 call rt_call_apply_spine_prep@PLT
 test rax, rax
 je .Lx00090_7
 lea rcx, [rip + .Lx00090_3]
 lea rdx, [rip + .Lx00090_4]
 jmp rax
.Lx00090_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx00090_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00090_2
.Lx00090_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00090_2
.Lx00090_4:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx00090_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00090_2
.Lx00090_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00090_2
.Lx00090_7:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 320]
 mov rcx, qword ptr [rbp + 328]
 lea r8, [rbp + 336]
 call rt_call_apply_gen_h@PLT
.Lx00090_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain00083_n10_α
 jmp xchain00083_n19_α
 xchain00083_n15_β:
 mov rax, qword ptr [rbp + 336]
 cmp rax, 1
 jne .Lx00090_8
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx00090_8:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 lea rdi, [rbp + 336]
 call rt_call_value_resume_h@PLT
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 cmp eax, 99
 je xchain00083_n10_α
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain00083_n19_α
 jmp xchain00083_n10_α
# IR_VAR
 xchain00083_n16_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 648], rax
 jmp xchain00083_n20_α
 xchain00083_n16_β:
 jmp xchain00083_n10_α
# IR_VAR
 xchain00083_n17_α:
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 776], rax
 jmp xchain00083_n21_α
# IR_UNOP
 xchain00083_n18_α:
 mov rdi, qword ptr [rbp + 32]
 mov rsi, qword ptr [rbp + 40]
 call rt_size_d@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00083_n22_α
# IR_SUSPEND yield+resume
 xchain00083_n19_α:
 lea rax, [rip + xchain00083_n19_β]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00083_n19_β:
 jmp xchain00083_n15_β
# IR_SUSPEND yield+resume
 xchain00083_n20_α:
 lea rax, [rip + xchain00083_n20_β]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedsub_γ
 xchain00083_n20_β:
 jmp xchain00083_n12_β
 xchain00083_n21_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 976]
 mov rcx, qword ptr [rbp + 984]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00083_n9_af
 mov rdi, qword ptr [rbp + 976]
 mov rsi, qword ptr [rbp + 984]
 call rt_str_coerce@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain00083_n12_α
# IR_LIT_INTEGER
 xchain00083_n22_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00083_n23_α
.Lx00091_0:
 .quad 0
 xchain00083_n23_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 544]
 cmp eax, 100
 je .Lx00092_0
 mov eax, dword ptr [rbp + 608]
 cmp eax, 100
 je .Lx00092_0
 mov eax, dword ptr [rbp + 544]
 cmp eax, 6
 jne .Lx00092_2
 mov eax, dword ptr [rbp + 608]
 cmp eax, 6
 jne .Lx00092_2
.Lx00092_1:
 mov rax, qword ptr [rbp + 552]
 mov rcx, qword ptr [rbp + 616]
 cmp rax, rcx
 jle xchain00083_n12_af
 mov rcx, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rcx
 mov rcx, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rcx
 jmp xchain00083_n24_α
.Lx00092_0:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 7
 lea r9, [rbp + 512]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00092_1
 cmp eax, 1
 je xchain00083_n12_af
 jmp xchain00083_n24_α
.Lx00092_2:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00083_n12_af
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 520], rax
 jmp xchain00083_n24_α
# IR_LIT_STRING
 xchain00083_n24_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain00083_n25_α
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "gedsub"
# IR_VAR
 xchain00083_n25_α:
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 456], rax
 jmp xchain00083_n26_α
# IR_VAR
 xchain00083_n26_α:
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 488], rax
 jmp xchain00083_n27_α
 xchain00083_n27_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
  .section .rodata
  .Lrkfn396: .string "push"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn396]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain00083_n10_α
 jmp xchain00083_n15_α
 xchain00083_n27_β:
 jmp xchain00083_n10_α
proc_gedsub_res:
add rsp, 8
pop rbp
proc_gedsub_β:
jmp qword ptr [rbp + 928]
proc_gedsub_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_gedsub_res]
push rax
mov rax, [rbp + 1000]
mov rbp, [rbp + 1016]
jmp rax
proc_gedsub_ω:
mov rax, [rbp + 1008]
lea rsp, [rbp + 1024]
mov rbp, [rbp + 1016]
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
lea rax, [rip + xchain00094_n4_β]
mov qword ptr [rbp + 208], rax
# IR_LIT_STRING
 xchain00094_n0_α:
 mov qword ptr [rbp + 64], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain00094_n1_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "gedsub"
# IR_VAR
 xchain00094_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 184], rax
 jmp xchain00094_n2_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00094_n2_α:
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
 je .Lx00096_7
 lea rcx, [rip + .Lx00096_3]
 lea rdx, [rip + .Lx00096_4]
 jmp rax
.Lx00096_3:
 mov qword ptr [rbp + 136], rsp
 mov rax, qword ptr [rbp + 128]
 test rax, rax
 jne .Lx00096_5
 mov qword ptr [rbp + 128], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00096_2
.Lx00096_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00096_2
.Lx00096_4:
 mov qword ptr [rbp + 136], rsp
 mov rax, qword ptr [rbp + 128]
 test rax, rax
 jne .Lx00096_6
 mov qword ptr [rbp + 128], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00096_2
.Lx00096_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00096_2
.Lx00096_7:
 mov rdi, qword ptr [rbp + 64]
 mov rsi, qword ptr [rbp + 72]
 mov rdx, qword ptr [rbp + 112]
 mov rcx, qword ptr [rbp + 120]
 lea r8, [rbp + 128]
 call rt_call_apply_gen_h@PLT
.Lx00096_2:
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
 jmp xchain00094_n3_α
 xchain00094_n2_β:
 mov rax, qword ptr [rbp + 128]
 cmp rax, 1
 jne .Lx00096_8
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 136]
 jmp qword ptr [rsp]
.Lx00096_8:
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
 jmp xchain00094_n3_α
 jmp proc_gedval_ω
# IR_FIELD_GET
 xchain00094_n3_α:
 mov rdi, qword ptr [rip + .Lx00097_0]
 mov rsi, qword ptr [rbp + 96]
 mov rdx, qword ptr [rbp + 104]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedval_ω
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00094_n4_α
.Lx00097_0:
 .quad .Lx00097_0_s
.Lx00097_0_s:
 .string "data"
# IR_SUSPEND yield+resume
 xchain00094_n4_α:
 lea rax, [rip + xchain00094_n4_β]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedval_γ
 xchain00094_n4_β:
 jmp xchain00094_n2_β
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
lea rax, [rip + xchain00098_n5_β]
mov qword ptr [rbp + 240], rax
# IR_LIT_STRING
 xchain00098_n0_α:
 mov qword ptr [rbp + 96], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [rbp + 104], rax
 jmp xchain00098_n1_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "gedsub"
# IR_VAR
 xchain00098_n1_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 216], rax
 jmp xchain00098_n2_α
# IR_CALL_VALUE invoke through a runtime callee value (proc/string/int); a jmp-entry GENERATOR callee takes the SPINE transfer (bcps_spine_gen_arm contract: prep resolves+stages+opens, wires in rcx/rdx, once-flag in the granted handle cell [zeta+off+16+n*16], beta resumes jmp [rsp]); det/builtin/unresolved callees fall back to the one-shot C window whose handle parks in the same cell (values 0/ptr, disjoint from the spine flag 1)
 xchain00098_n2_α:
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
 je .Lx00100_7
 lea rcx, [rip + .Lx00100_3]
 lea rdx, [rip + .Lx00100_4]
 jmp rax
.Lx00100_3:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00100_5
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00100_2
.Lx00100_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00100_2
.Lx00100_4:
 mov qword ptr [rbp + 168], rsp
 mov rax, qword ptr [rbp + 160]
 test rax, rax
 jne .Lx00100_6
 mov qword ptr [rbp + 160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00100_2
.Lx00100_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00100_2
.Lx00100_7:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 lea r8, [rbp + 160]
 call rt_call_apply_gen_h@PLT
.Lx00100_2:
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
 jmp xchain00098_n3_α
 xchain00098_n2_β:
 mov rax, qword ptr [rbp + 160]
 cmp rax, 1
 jne .Lx00100_8
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 168]
 jmp qword ptr [rsp]
.Lx00100_8:
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
 jmp xchain00098_n3_α
 jmp proc_gedref_ω
# IR_FIELD_GET
 xchain00098_n3_α:
 mov rdi, qword ptr [rip + .Lx00101_0]
 mov rsi, qword ptr [rbp + 128]
 mov rdx, qword ptr [rbp + 136]
 call dat_field_get@PLT
 cmp eax, 99
 je proc_gedref_ω
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00098_n4_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "ref"
# IR_UNOP
 xchain00098_n4_α:
 mov eax, dword ptr [rbp + 64]
 cmp eax, 99
 je proc_gedref_ω
 cmp eax, 0
 je proc_gedref_ω
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 40], rax
 jmp xchain00098_n5_α
# IR_SUSPEND yield+resume
 xchain00098_n5_α:
 lea rax, [rip + xchain00098_n5_β]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 32]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 40]
 mov qword ptr [rbp + 8], rax
 jmp proc_gedref_γ
 xchain00098_n5_β:
 jmp xchain00098_n2_β
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
# IR_DISJUNCTION_NARY
 xchain00102_n0_α:
 mov qword ptr [rbp + 1408], 0
 mov qword ptr [rbp + 1416], 0
 mov dword ptr [rbp + 1424], 0
 jmp xchain00102_n2_α
xchain00102_n0_as:
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 0
 jne .Lx00103_0
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1416], rax
 jmp xchain00102_n1_α
.Lx00103_0:
 cmp eax, 1
 jne .Lx00103_1
 jmp xchain00102_n1_α
.Lx00103_1:
 jmp xchain00102_n1_α
 xchain00102_n0_β:
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 0
 je xchain00102_n3_β
 jmp xchain00102_n0_af
xchain00102_n0_af:
 add dword ptr [rbp + 1424], 1
 mov eax, dword ptr [rbp + 1424]
 cmp eax, 1
 je proc_gedfnf_ω
 jmp xchain00102_n4_α
 xchain00102_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain00102_n4_α
# IR_VAR
 xchain00102_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1528], rax
 jmp xchain00102_n5_α
 xchain00102_n2_β:
 jmp xchain00102_n0_af
 xchain00102_n3_α:
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
 mov rdi, qword ptr [rip + .Lx00104_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00104_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00104_3]
 lea rdx, [rip + .Lx00104_4]
 jmp rax
.Lx00104_3:
 mov qword ptr [rbp + 1496], rsp
 mov rax, qword ptr [rbp + 1488]
 test rax, rax
 jne .Lx00104_5
 mov qword ptr [rbp + 1488], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00104_2
.Lx00104_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00104_2
.Lx00104_4:
 mov rax, qword ptr [rbp + 1488]
 test rax, rax
 jne .Lx00104_6
 mov qword ptr [rbp + 1488], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00104_2
.Lx00104_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00104_2
.Lx00104_1:
 call rt_faildescr@PLT
.Lx00104_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain00102_n0_af
 jmp xchain00102_n0_as
 xchain00102_n3_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1496]
 jmp qword ptr [rsp]
.Lx00104_0:
 .quad .Lx00104_0_s
.Lx00104_0_s:
 .string "gedval"
# IR_VAR
 xchain00102_n4_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00102_n6_α
# IR_LIT_STRING
 xchain00102_n5_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain00102_n3_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "NAME"
# IR_GEN_SCAN
 xchain00102_n6_α:
 mov rdi, qword ptr [rbp + 1360]
 mov rsi, qword ptr [rbp + 1368]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00102_n8_α
# IR_DISJUNCTION_NARY
 xchain00102_n7_α:
 mov qword ptr [rbp + 352], 0
 mov qword ptr [rbp + 360], 0
 mov dword ptr [rbp + 368], 0
 jmp xchain00102_n10_α
xchain00102_n7_as:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 jne .Lx00106_0
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
 jmp xchain00102_n9_α
.Lx00106_0:
 cmp eax, 1
 jne .Lx00106_1
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 360], rax
 jmp xchain00102_n9_α
.Lx00106_1:
 jmp xchain00102_n9_α
 xchain00102_n7_β:
 mov eax, dword ptr [rbp + 368]
 cmp eax, 0
 je xchain00102_n9_α
 jmp xchain00102_n9_α
xchain00102_n7_af:
 add dword ptr [rbp + 368], 1
 mov eax, dword ptr [rbp + 368]
 cmp eax, 1
 je xchain00102_n11_α
 jmp xchain00102_n9_α
# IR_DISJUNCTION_NARY
 xchain00102_n8_α:
 mov qword ptr [rbp + 1120], 0
 mov qword ptr [rbp + 1128], 0
 mov dword ptr [rbp + 1136], 0
 jmp xchain00102_n15_α
xchain00102_n8_as:
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 0
 jne .Lx00107_0
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00102_n14_α
.Lx00107_0:
 cmp eax, 1
 jne .Lx00107_1
 jmp xchain00102_n14_α
.Lx00107_1:
 jmp xchain00102_n14_α
 xchain00102_n8_β:
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 0
 je xchain00102_n16_β
 jmp xchain00102_n8_af
xchain00102_n8_af:
 add dword ptr [rbp + 1136], 1
 mov eax, dword ptr [rbp + 1136]
 cmp eax, 1
 je xchain00102_n17_α
 jmp xchain00102_n22_α
# IR_VAR
 xchain00102_n9_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 120], rax
 jmp xchain00102_n19_α
# IR_VAR
 xchain00102_n10_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 632], rax
 jmp xchain00102_n21_α
 xchain00102_n10_β:
 jmp xchain00102_n7_af
# IR_VAR
 xchain00102_n11_α:
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 712], rax
 jmp xchain00102_n13_α
 xchain00102_n11_β:
 jmp xchain00102_n9_α
 xchain00102_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain00102_n7_as
 xchain00102_n12_β:
 jmp xchain00102_n9_α
 xchain00102_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain00102_n7_as
 xchain00102_n13_β:
 jmp xchain00102_n9_α
 xchain00102_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain00102_n22_α
# IR_LIT_CHARSET
 xchain00102_n15_α:
 mov qword ptr [rbp + 1264], 1
 mov dword ptr [rbp + 1268], -1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00102_n16_α
 xchain00102_n15_β:
 jmp xchain00102_n8_af
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "/"
# IR_SCAN_UPTO
 xchain00102_n16_α:
 mov qword ptr [rbp + 1248], r14
.Lx00109_0:
 mov rax, qword ptr [rbp + 1248]
 cmp rax, r15
 jge xchain00102_n8_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00109_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00109_1
 mov qword ptr [rbp + 1232], 6
 add rax, 1
 mov qword ptr [rbp + 1240], rax
 jmp xchain00102_n23_α
.Lx00109_1:
 inc qword ptr [rbp + 1248]
 jmp .Lx00109_0
 xchain00102_n16_β:
 inc qword ptr [rbp + 1248]
 jmp .Lx00109_0
.Lx00109_2:
 .quad .Lx00109_2_s
.Lx00109_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00102_n17_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00102_n24_α
 xchain00102_n17_β:
 jmp proc_gedfnf_ω
.Lx00110_0:
 .quad 0
 xchain00102_n18_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1168]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1176], rax
  .section .rodata
  .Lrkfn447: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn447]
 lea rsi, [rbp + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain00102_n8_af
 jmp xchain00102_n8_as
 xchain00102_n18_β:
 jmp xchain00102_n8_af
# IR_LIT_STRING
 xchain00102_n19_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00102_n25_α
.Lx00111_0:
 .quad .Lx00111_0_s
.Lx00111_0_s:
 .string " "
# IR_VAR
 xchain00102_n20_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 40], rax
 jmp xchain00102_n26_α
# IR_UNOP
 xchain00102_n21_α:
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 call rt_size_d@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain00102_n27_α
# IR_LIT_STRING
 xchain00102_n22_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain00102_n28_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "/"
# IR_SCAN_TAB
 xchain00102_n23_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1240]
 cmp rax, 1
 jge .Lx00113_0
 add rax, r15
 add rax, 1
.Lx00113_0:
 cmp rax, 1
 jge .Lx00113_239
 add rsp, 16
 jmp xchain00102_n8_af
.Lx00113_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00113_240
 add rsp, 16
 jmp xchain00102_n8_af
.Lx00113_240:
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
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain00102_n18_α
 xchain00102_n23_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00102_n8_af
# IR_SCAN_TAB
 xchain00102_n24_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00114_0
 add rax, r15
 add rax, 1
.Lx00114_0:
 cmp rax, 1
 jge .Lx00114_239
 add rsp, 16
 jmp proc_gedfnf_ω
.Lx00114_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00114_240
 add rsp, 16
 jmp proc_gedfnf_ω
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
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain00102_n29_α
 xchain00102_n24_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedfnf_ω
# IR_VAR
 xchain00102_n25_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00102_n30_α
# IR_RETURN
 xchain00102_n26_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
# IR_LIT_INTEGER
 xchain00102_n27_α:
 mov qword ptr [rbp + 656], 6
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain00102_n31_α
.Lx00115_0:
 .quad 0
# IR_SCAN_MATCH
 xchain00102_n28_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00116_239
 add rsp, 16
 jmp xchain00102_n33_α
.Lx00116_239:
 mov rdi, qword ptr [rip + .Lx00116_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00116_240
 add rsp, 16
 jmp xchain00102_n33_α
.Lx00116_240:
 mov qword ptr [rbp + 1040], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 1048], rax
 jmp xchain00102_n32_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "/"
# IR_RETURN
 xchain00102_n29_α:
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedfnf_γ
# IR_LIT_STRING
 xchain00102_n30_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00102_n34_α
.Lx00117_0:
 .quad .Lx00117_0_s
.Lx00117_0_s:
 .string "TITL"
 xchain00102_n31_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 592]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [rbp + 656]
 cmp eax, 100
 je .Lx00118_0
 mov eax, dword ptr [rbp + 592]
 cmp eax, 6
 jne .Lx00118_2
 mov eax, dword ptr [rbp + 656]
 cmp eax, 6
 jne .Lx00118_2
.Lx00118_1:
 mov rax, qword ptr [rbp + 600]
 mov rcx, qword ptr [rbp + 664]
 cmp rax, rcx
 jle xchain00102_n7_af
 mov rcx, qword ptr [rbp + 656]
 mov qword ptr [rbp + 560], rcx
 mov rcx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 568], rcx
 jmp xchain00102_n35_α
.Lx00118_0:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 7
 lea r9, [rbp + 560]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00118_1
 cmp eax, 1
 je xchain00102_n7_af
 jmp xchain00102_n35_α
.Lx00118_2:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00102_n7_af
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 568], rax
 jmp xchain00102_n35_α
# IR_SCAN_TAB
 xchain00102_n32_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1048]
 cmp rax, 1
 jge .Lx00119_0
 add rax, r15
 add rax, 1
.Lx00119_0:
 cmp rax, 1
 jge .Lx00119_239
 add rsp, 16
 jmp xchain00102_n33_α
.Lx00119_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00119_240
 add rsp, 16
 jmp xchain00102_n33_α
.Lx00119_240:
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
 jmp xchain00102_n33_α
 xchain00102_n32_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00102_n33_α
# IR_DISJUNCTION_NARY
 xchain00102_n33_α:
 mov qword ptr [rbp + 880], 0
 mov qword ptr [rbp + 888], 0
 mov dword ptr [rbp + 896], 0
 jmp xchain00102_n37_α
xchain00102_n33_as:
 mov eax, dword ptr [rbp + 896]
 cmp eax, 0
 jne .Lx00120_0
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
 jmp xchain00102_n36_α
.Lx00120_0:
 cmp eax, 1
 jne .Lx00120_1
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 888], rax
 jmp xchain00102_n36_α
.Lx00120_1:
 jmp xchain00102_n36_α
 xchain00102_n33_β:
 mov eax, dword ptr [rbp + 896]
 cmp eax, 0
 je xchain00102_n38_β
 jmp xchain00102_n33_af
xchain00102_n33_af:
 add dword ptr [rbp + 896], 1
 mov eax, dword ptr [rbp + 896]
 cmp eax, 1
 je xchain00102_n39_α
 jmp xchain00102_n50_α
 xchain00102_n34_α:
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
 mov rdi, qword ptr [rip + .Lx00121_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00121_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00121_3]
 lea rdx, [rip + .Lx00121_4]
 jmp rax
.Lx00121_3:
 mov qword ptr [rbp + 264], rsp
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00121_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00121_2
.Lx00121_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00121_2
.Lx00121_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00121_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00121_2
.Lx00121_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00121_2
.Lx00121_1:
 call rt_faildescr@PLT
.Lx00121_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00102_n20_α
 jmp xchain00102_n40_α
 xchain00102_n34_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 264]
 jmp qword ptr [rsp]
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "gedval"
# IR_VAR
 xchain00102_n35_α:
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 472], rax
 jmp xchain00102_n41_α
# IR_SCAN_TAB
 xchain00102_n36_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 888]
 cmp rax, 1
 jge .Lx00122_0
 add rax, r15
 add rax, 1
.Lx00122_0:
 cmp rax, 1
 jge .Lx00122_239
 add rsp, 16
 jmp xchain00102_n33_β
.Lx00122_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00122_240
 add rsp, 16
 jmp xchain00102_n33_β
.Lx00122_240:
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
 jmp xchain00102_n42_α
 xchain00102_n36_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00102_n33_β
# IR_LIT_CHARSET
 xchain00102_n37_α:
 mov qword ptr [rbp + 944], 1
 mov dword ptr [rbp + 948], -1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain00102_n38_α
 xchain00102_n37_β:
 jmp xchain00102_n33_af
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "/"
# IR_SCAN_UPTO
 xchain00102_n38_α:
 mov qword ptr [rbp + 928], r14
.Lx00124_0:
 mov rax, qword ptr [rbp + 928]
 cmp rax, r15
 jge xchain00102_n33_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00124_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00124_1
 mov qword ptr [rbp + 912], 6
 add rax, 1
 mov qword ptr [rbp + 920], rax
 jmp xchain00102_n33_as
.Lx00124_1:
 inc qword ptr [rbp + 928]
 jmp .Lx00124_0
 xchain00102_n38_β:
 inc qword ptr [rbp + 928]
 jmp .Lx00124_0
.Lx00124_2:
 .quad .Lx00124_2_s
.Lx00124_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00102_n39_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain00102_n33_as
 xchain00102_n39_β:
 jmp xchain00102_n33_af
.Lx00125_0:
 .quad 0
 xchain00102_n40_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00102_n43_α
# IR_LIT_STRING
 xchain00102_n41_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx00126_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain00102_n44_α
.Lx00126_0:
 .quad .Lx00126_0_s
.Lx00126_0_s:
 .string " "
 xchain00102_n42_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain00102_n45_α
 xchain00102_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00102_n46_α
 xchain00102_n44_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call str_concat_d@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain00102_n47_α
 xchain00102_n45_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 824], rax
 jmp xchain00102_n48_α
xchain00102_n45_β:
 jmp xchain00102_n50_α
 xchain00102_n46_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00102_n20_α
# IR_VAR
 xchain00102_n47_α:
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 536], rax
 jmp xchain00102_n49_α
# IR_GEN_SCAN
 xchain00102_n48_α:
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 lea rdi, [rbp + 752]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 752]
 mov r14, qword ptr [rbp + 760]
 mov r15, qword ptr [rbp + 768]
 jmp xchain00102_n7_α
 xchain00102_n48_β:
 jmp xchain00102_n7_α
 xchain00102_n49_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 1632]
 mov rcx, qword ptr [rbp + 1640]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00102_n12_α
# IR_GEN_SCAN
 xchain00102_n50_α:
 lea rdi, [rbp + 752]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 752]
 mov r14, qword ptr [rbp + 760]
 mov r15, qword ptr [rbp + 768]
 jmp xchain00102_n7_α
 xchain00102_n50_β:
 jmp xchain00102_n7_α
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
# IR_DISJUNCTION_NARY
 xchain00127_n0_α:
 mov qword ptr [rbp + 1200], 0
 mov qword ptr [rbp + 1208], 0
 mov dword ptr [rbp + 1216], 0
 jmp xchain00127_n2_α
xchain00127_n0_as:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 0
 jne .Lx00128_0
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
 jmp xchain00127_n1_α
.Lx00128_0:
 cmp eax, 1
 jne .Lx00128_1
 jmp xchain00127_n1_α
.Lx00128_1:
 jmp xchain00127_n1_α
 xchain00127_n0_β:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 0
 je xchain00127_n3_β
 jmp xchain00127_n0_af
xchain00127_n0_af:
 add dword ptr [rbp + 1216], 1
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 1
 je proc_gedlnf_ω
 jmp xchain00127_n4_α
 xchain00127_n1_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain00127_n4_α
# IR_VAR
 xchain00127_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00127_n5_α
 xchain00127_n2_β:
 jmp xchain00127_n0_af
 xchain00127_n3_α:
 mov qword ptr [rbp + 1280], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00129_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00129_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00129_3]
 lea rdx, [rip + .Lx00129_4]
 jmp rax
.Lx00129_3:
 mov qword ptr [rbp + 1288], rsp
 mov rax, qword ptr [rbp + 1280]
 test rax, rax
 jne .Lx00129_5
 mov qword ptr [rbp + 1280], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00129_2
.Lx00129_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00129_2
.Lx00129_4:
 mov rax, qword ptr [rbp + 1280]
 test rax, rax
 jne .Lx00129_6
 mov qword ptr [rbp + 1280], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00129_2
.Lx00129_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00129_2
.Lx00129_1:
 call rt_faildescr@PLT
.Lx00129_2:
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain00127_n0_af
 jmp xchain00127_n0_as
 xchain00127_n3_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1288]
 jmp qword ptr [rsp]
.Lx00129_0:
 .quad .Lx00129_0_s
.Lx00129_0_s:
 .string "gedval"
# IR_VAR
 xchain00127_n4_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00127_n6_α
# IR_LIT_STRING
 xchain00127_n5_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain00127_n3_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "NAME"
# IR_GEN_SCAN
 xchain00127_n6_α:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00127_n8_α
# IR_VAR
 xchain00127_n7_α:
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 440], rax
 jmp xchain00127_n9_α
# IR_DISJUNCTION_NARY
 xchain00127_n8_α:
 mov qword ptr [rbp + 912], 0
 mov qword ptr [rbp + 920], 0
 mov dword ptr [rbp + 928], 0
 jmp xchain00127_n12_α
xchain00127_n8_as:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 0
 jne .Lx00131_0
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 920], rax
 jmp xchain00127_n11_α
.Lx00131_0:
 cmp eax, 1
 jne .Lx00131_1
 jmp xchain00127_n11_α
.Lx00131_1:
 jmp xchain00127_n11_α
 xchain00127_n8_β:
 mov eax, dword ptr [rbp + 928]
 cmp eax, 0
 je xchain00127_n13_β
 jmp xchain00127_n8_af
xchain00127_n8_af:
 add dword ptr [rbp + 928], 1
 mov eax, dword ptr [rbp + 928]
 cmp eax, 1
 je xchain00127_n14_α
 jmp xchain00127_n19_α
# IR_LIT_STRING
 xchain00127_n9_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain00127_n16_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string ", "
# IR_VAR
 xchain00127_n10_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 120], rax
 jmp xchain00127_n17_α
 xchain00127_n11_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain00127_n19_α
# IR_LIT_CHARSET
 xchain00127_n12_α:
 mov qword ptr [rbp + 1056], 1
 mov dword ptr [rbp + 1060], -1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain00127_n13_α
 xchain00127_n12_β:
 jmp xchain00127_n8_af
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "/"
# IR_SCAN_UPTO
 xchain00127_n13_α:
 mov qword ptr [rbp + 1040], r14
.Lx00134_0:
 mov rax, qword ptr [rbp + 1040]
 cmp rax, r15
 jge xchain00127_n8_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00134_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00134_1
 mov qword ptr [rbp + 1024], 6
 add rax, 1
 mov qword ptr [rbp + 1032], rax
 jmp xchain00127_n20_α
.Lx00134_1:
 inc qword ptr [rbp + 1040]
 jmp .Lx00134_0
 xchain00127_n13_β:
 inc qword ptr [rbp + 1040]
 jmp .Lx00134_0
.Lx00134_2:
 .quad .Lx00134_2_s
.Lx00134_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00127_n14_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00127_n21_α
 xchain00127_n14_β:
 jmp proc_gedlnf_ω
.Lx00135_0:
 .quad 0
 xchain00127_n15_α:
# BOX IR_CALL trim(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 968], rax
  .section .rodata
  .Lrkfn520: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn520]
 lea rsi, [rbp + 960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain00127_n8_af
 jmp xchain00127_n8_as
 xchain00127_n15_β:
 jmp xchain00127_n8_af
 xchain00127_n16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1408]
 mov rsi, qword ptr [rbp + 1416]
 mov rdx, qword ptr [rbp + 464]
 mov rcx, qword ptr [rbp + 472]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain00127_n22_α
# IR_LIT_STRING
 xchain00127_n17_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain00127_n23_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string " "
# IR_VAR
 xchain00127_n18_α:
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 32], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 40], rax
 jmp xchain00127_n24_α
# IR_LIT_STRING
 xchain00127_n19_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00137_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00127_n25_α
.Lx00137_0:
 .quad .Lx00137_0_s
.Lx00137_0_s:
 .string "/"
# IR_SCAN_TAB
 xchain00127_n20_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1032]
 cmp rax, 1
 jge .Lx00138_0
 add rax, r15
 add rax, 1
.Lx00138_0:
 cmp rax, 1
 jge .Lx00138_239
 add rsp, 16
 jmp xchain00127_n8_af
.Lx00138_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00138_240
 add rsp, 16
 jmp xchain00127_n8_af
.Lx00138_240:
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
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00127_n15_α
 xchain00127_n20_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00127_n8_af
# IR_SCAN_TAB
 xchain00127_n21_α:
 sub rsp, 16
 mov rax, 0
 cmp rax, 1
 jge .Lx00139_0
 add rax, r15
 add rax, 1
.Lx00139_0:
 cmp rax, 1
 jge .Lx00139_239
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00139_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00139_240
 add rsp, 16
 jmp proc_gedlnf_ω
.Lx00139_240:
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
 jmp xchain00127_n26_α
 xchain00127_n21_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp proc_gedlnf_ω
# IR_VAR
 xchain00127_n22_α:
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 504], rax
 jmp xchain00127_n27_α
# IR_VAR
 xchain00127_n23_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 296], rax
 jmp xchain00127_n28_α
# IR_RETURN
 xchain00127_n24_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
# IR_SCAN_MATCH
 xchain00127_n25_α:
 sub rsp, 16
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jge .Lx00140_239
 add rsp, 16
 jmp xchain00127_n30_α
.Lx00140_239:
 mov rdi, qword ptr [rip + .Lx00140_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 je .Lx00140_240
 add rsp, 16
 jmp xchain00127_n30_α
.Lx00140_240:
 mov qword ptr [rbp + 832], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [rbp + 840], rax
 jmp xchain00127_n29_α
.Lx00140_0:
 .quad .Lx00140_0_s
.Lx00140_0_s:
 .string "/"
# IR_RETURN
 xchain00127_n26_α:
 mov rax, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_gedlnf_γ
 xchain00127_n27_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 1424]
 mov rcx, qword ptr [rbp + 1432]
 call str_concat_d@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain00127_n31_α
# IR_LIT_STRING
 xchain00127_n28_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain00127_n32_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "TITL"
# IR_SCAN_TAB
 xchain00127_n29_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 840]
 cmp rax, 1
 jge .Lx00142_0
 add rax, r15
 add rax, 1
.Lx00142_0:
 cmp rax, 1
 jge .Lx00142_239
 add rsp, 16
 jmp xchain00127_n30_α
.Lx00142_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00142_240
 add rsp, 16
 jmp xchain00127_n30_α
.Lx00142_240:
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
 jmp xchain00127_n30_α
 xchain00127_n29_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00127_n30_α
# IR_DISJUNCTION_NARY
 xchain00127_n30_α:
 mov qword ptr [rbp + 672], 0
 mov qword ptr [rbp + 680], 0
 mov dword ptr [rbp + 688], 0
 jmp xchain00127_n34_α
xchain00127_n30_as:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 0
 jne .Lx00143_0
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
 jmp xchain00127_n33_α
.Lx00143_0:
 cmp eax, 1
 jne .Lx00143_1
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 680], rax
 jmp xchain00127_n33_α
.Lx00143_1:
 jmp xchain00127_n33_α
 xchain00127_n30_β:
 mov eax, dword ptr [rbp + 688]
 cmp eax, 0
 je xchain00127_n35_β
 jmp xchain00127_n30_af
xchain00127_n30_af:
 add dword ptr [rbp + 688], 1
 mov eax, dword ptr [rbp + 688]
 cmp eax, 1
 je xchain00127_n36_α
 jmp xchain00127_n43_α
 xchain00127_n31_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00127_n10_α
 xchain00127_n32_α:
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
 mov rdi, qword ptr [rip + .Lx00144_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00144_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00144_3]
 lea rdx, [rip + .Lx00144_4]
 jmp rax
.Lx00144_3:
 mov qword ptr [rbp + 264], rsp
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00144_5
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00144_2
.Lx00144_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00144_2
.Lx00144_4:
 mov rax, qword ptr [rbp + 256]
 test rax, rax
 jne .Lx00144_6
 mov qword ptr [rbp + 256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00144_2
.Lx00144_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00144_2
.Lx00144_1:
 call rt_faildescr@PLT
.Lx00144_2:
 push rax
 push rdx
 call rt_scan_sync_in@PLT
 mov r14, rax
 pop rdx
 pop rax
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain00127_n18_α
 jmp xchain00127_n37_α
 xchain00127_n32_β:
 mov rdi, r14
 call rt_scan_sync_out@PLT
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 264]
 jmp qword ptr [rsp]
.Lx00144_0:
 .quad .Lx00144_0_s
.Lx00144_0_s:
 .string "gedval"
# IR_SCAN_TAB
 xchain00127_n33_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 680]
 cmp rax, 1
 jge .Lx00145_0
 add rax, r15
 add rax, 1
.Lx00145_0:
 cmp rax, 1
 jge .Lx00145_239
 add rsp, 16
 jmp xchain00127_n30_β
.Lx00145_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00145_240
 add rsp, 16
 jmp xchain00127_n30_β
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
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00127_n38_α
 xchain00127_n33_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00127_n30_β
# IR_LIT_CHARSET
 xchain00127_n34_α:
 mov qword ptr [rbp + 736], 1
 mov dword ptr [rbp + 740], -1
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain00127_n35_α
 xchain00127_n34_β:
 jmp xchain00127_n30_af
.Lx00146_0:
 .quad .Lx00146_0_s
.Lx00146_0_s:
 .string "/"
# IR_SCAN_UPTO
 xchain00127_n35_α:
 mov qword ptr [rbp + 720], r14
.Lx00147_0:
 mov rax, qword ptr [rbp + 720]
 cmp rax, r15
 jge xchain00127_n30_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00147_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00147_1
 mov qword ptr [rbp + 704], 6
 add rax, 1
 mov qword ptr [rbp + 712], rax
 jmp xchain00127_n30_as
.Lx00147_1:
 inc qword ptr [rbp + 720]
 jmp .Lx00147_0
 xchain00127_n35_β:
 inc qword ptr [rbp + 720]
 jmp .Lx00147_0
.Lx00147_2:
 .quad .Lx00147_2_s
.Lx00147_2_s:
 .string "/"
# IR_LIT_INTEGER
 xchain00127_n36_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx00148_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain00127_n30_as
 xchain00127_n36_β:
 jmp xchain00127_n30_af
.Lx00148_0:
 .quad 0
 xchain00127_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 176]
 mov rsi, qword ptr [rbp + 184]
 mov rdx, qword ptr [rbp + 208]
 mov rcx, qword ptr [rbp + 216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain00127_n39_α
 xchain00127_n38_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain00127_n40_α
 xchain00127_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 144]
 mov rcx, qword ptr [rbp + 152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain00127_n41_α
 xchain00127_n40_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 616], rax
 jmp xchain00127_n42_α
xchain00127_n40_β:
 jmp xchain00127_n43_α
 xchain00127_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 80]
 mov rdx, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 jmp xchain00127_n18_α
# IR_GEN_SCAN
 xchain00127_n42_α:
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
 lea rdi, [rbp + 544]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 544]
 mov r14, qword ptr [rbp + 552]
 mov r15, qword ptr [rbp + 560]
 jmp xchain00127_n7_α
 xchain00127_n42_β:
 jmp xchain00127_n7_α
# IR_GEN_SCAN
 xchain00127_n43_α:
 lea rdi, [rbp + 544]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 544]
 mov r14, qword ptr [rbp + 552]
 mov r15, qword ptr [rbp + 560]
 jmp xchain00127_n7_α
 xchain00127_n43_β:
 jmp xchain00127_n7_α
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
# IR_DISJUNCTION_NARY
 xchain00149_n0_α:
 mov qword ptr [rbp + 1632], 0
 mov qword ptr [rbp + 1640], 0
 mov dword ptr [rbp + 1648], 0
 jmp xchain00149_n2_α
xchain00149_n0_as:
 mov eax, dword ptr [rbp + 1648]
 cmp eax, 0
 jne .Lx00150_0
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1640], rax
 jmp xchain00149_n1_α
.Lx00150_0:
 jmp xchain00149_n1_α
 xchain00149_n0_β:
 mov eax, dword ptr [rbp + 1648]
 jmp xchain00149_n1_α
xchain00149_n0_af:
 add dword ptr [rbp + 1648], 1
 mov eax, dword ptr [rbp + 1648]
 jmp xchain00149_n1_α
# IR_DISJUNCTION_NARY
 xchain00149_n1_α:
 mov qword ptr [rbp + 1360], 0
 mov qword ptr [rbp + 1368], 0
 mov dword ptr [rbp + 1376], 0
 jmp xchain00149_n5_α
xchain00149_n1_as:
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 0
 jne .Lx00151_0
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1368], rax
 jmp xchain00149_n4_α
.Lx00151_0:
 cmp eax, 1
 jne .Lx00151_1
 jmp xchain00149_n4_α
.Lx00151_1:
 jmp xchain00149_n4_α
 xchain00149_n1_β:
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 0
 je xchain00149_n6_β
 jmp xchain00149_n1_af
xchain00149_n1_af:
 add dword ptr [rbp + 1376], 1
 mov eax, dword ptr [rbp + 1376]
 cmp eax, 1
 je proc_geddate_ω
 jmp xchain00149_n9_α
# IR_VAR_REF
 xchain00149_n2_α:
 mov rax, 4294967305
 mov rdx, 1879052352
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain00149_n8_α
 xchain00149_n2_β:
 jmp xchain00149_n0_af
 xchain00149_n3_α:
 jmp xchain00149_n0_as
xchain00149_n3_β:
 jmp xchain00149_n1_α
 xchain00149_n4_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain00149_n9_α
# IR_VAR
 xchain00149_n5_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 1544], rax
 jmp xchain00149_n10_α
 xchain00149_n5_β:
 jmp xchain00149_n1_af
 xchain00149_n6_α:
 mov qword ptr [rbp + 1504], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1536]
 mov rdx, qword ptr [rbp + 1544]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00152_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00152_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00152_3]
 lea rdx, [rip + .Lx00152_4]
 jmp rax
.Lx00152_3:
 mov qword ptr [rbp + 1512], rsp
 mov rax, qword ptr [rbp + 1504]
 test rax, rax
 jne .Lx00152_5
 mov qword ptr [rbp + 1504], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00152_2
.Lx00152_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00152_2
.Lx00152_4:
 mov rax, qword ptr [rbp + 1504]
 test rax, rax
 jne .Lx00152_6
 mov qword ptr [rbp + 1504], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00152_2
.Lx00152_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00152_2
.Lx00152_1:
 call rt_faildescr@PLT
.Lx00152_2:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain00149_n1_af
 jmp xchain00149_n11_α
 xchain00149_n6_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1512]
 jmp qword ptr [rsp]
.Lx00152_0:
 .quad .Lx00152_0_s
.Lx00152_0_s:
 .string "gedval"
 xchain00149_n7_α:
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
  .Lrkfn576: .string "trim"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn576]
 lea rsi, [rbp + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain00149_n1_af
 jmp xchain00149_n1_as
 xchain00149_n7_β:
 jmp xchain00149_n1_af
# IR_NULLTEST_VAR
 xchain00149_n8_α:
 mov eax, dword ptr [rbp + 4176]
 cmp eax, 99
 je xchain00149_n0_af
 mov rdi, qword ptr [rbp + 4176]
 mov rsi, qword ptr [rbp + 4184]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00149_n0_af
 cmp eax, 0
 jne xchain00149_n0_af
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4216], rax
 jmp xchain00149_n12_α
# IR_LIT_STRING
 xchain00149_n9_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx00153_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain00149_n13_α
.Lx00153_0:
 .quad .Lx00153_0_s
.Lx00153_0_s:
 .string ""
# IR_LIT_STRING
 xchain00149_n10_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx00154_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00149_n6_α
.Lx00154_0:
 .quad .Lx00154_0_s
.Lx00154_0_s:
 .string "DATE"
# IR_LIT_CHARSET
 xchain00149_n11_α:
 mov qword ptr [rbp + 1600], 1
 mov dword ptr [rbp + 1604], -1
 mov rax, qword ptr [rip + .Lx00155_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain00149_n7_α
.Lx00155_0:
 .quad .Lx00155_0_s
.Lx00155_0_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00149_n12_α:
 mov qword ptr [rbp + 4256], 6
 mov rax, qword ptr [rip + .Lx00156_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain00149_n14_α
.Lx00156_0:
 .quad 1
 xchain00149_n13_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain00149_n15_α
# IR_ASSIGN_VAR
 xchain00149_n14_α:
 mov rdi, qword ptr [rbp + 4208]
 mov rsi, qword ptr [rbp + 4216]
 mov rdx, qword ptr [rbp + 4256]
 mov rcx, qword ptr [rbp + 4264]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n0_af
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00149_n16_α
# IR_VAR
 xchain00149_n15_α:
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 1272], rax
 jmp xchain00149_n17_α
 xchain00149_n16_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn587: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn587]
 lea rsi, [rbp + 4160]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 cmp eax, 99
 je xchain00149_n20_α
 jmp xchain00149_n19_α
 xchain00149_n16_β:
 jmp xchain00149_n20_α
# IR_GEN_SCAN
 xchain00149_n17_α:
 mov rdi, qword ptr [rbp + 1264]
 mov rsi, qword ptr [rbp + 1272]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00149_n21_α
# IR_DISJUNCTION_NARY
 xchain00149_n18_α:
 mov qword ptr [rbp + 32], 0
 mov qword ptr [rbp + 40], 0
 mov dword ptr [rbp + 48], 0
 jmp xchain00149_n22_α
xchain00149_n18_as:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 jne .Lx00157_0
 jmp proc_geddate_ω
.Lx00157_0:
 cmp eax, 1
 jne .Lx00157_1
 jmp proc_geddate_ω
.Lx00157_1:
 jmp proc_geddate_ω
 xchain00149_n18_β:
 mov eax, dword ptr [rbp + 48]
 cmp eax, 0
 je proc_geddate_ω
 jmp proc_geddate_ω
xchain00149_n18_af:
 add dword ptr [rbp + 48], 1
 mov eax, dword ptr [rbp + 48]
 cmp eax, 1
 je xchain00149_n23_α
 jmp proc_geddate_ω
# IR_ASSIGN gva
 xchain00149_n19_α:
 mov rax, qword ptr [rbp + 4144]
 mov rdx, qword ptr [rbp + 4152]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain00149_n20_α
# IR_VAR_REF
 xchain00149_n20_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 jmp xchain00149_n24_α
# IR_LIT_INTEGER
 xchain00149_n21_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx00158_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain00149_n25_α
.Lx00158_0:
 .quad 0
# IR_VAR
 xchain00149_n22_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 264], rax
 jmp xchain00149_n26_α
 xchain00149_n22_β:
 jmp xchain00149_n18_af
# IR_VAR
 xchain00149_n23_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 392], rax
 jmp xchain00149_n27_α
 xchain00149_n23_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00149_n24_α:
 mov qword ptr [rbp + 4016], 1
 mov rax, qword ptr [rip + .Lx00159_0]
 mov qword ptr [rbp + 4024], rax
 jmp xchain00149_n28_α
.Lx00159_0:
 .quad .Lx00159_0_s
.Lx00159_0_s:
 .string "JAN"
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00149_n25_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00160_0
 add rax, r15
 add rax, 1
.Lx00160_0:
 cmp rax, 1
 jl xchain00149_n30_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00149_n30_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00149_n30_α
 mov qword ptr [rbp + 560], 6
 mov qword ptr [rbp + 568], rax
 jmp xchain00149_n29_α
# IR_UNOP
 xchain00149_n26_α:
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 call rt_size_d@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain00149_n31_α
# IR_LIT_INTEGER
 xchain00149_n27_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx00161_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00149_n32_α
.Lx00161_0:
 .quad 12
# IR_SUBSCRIPT x[i] variable
 xchain00149_n28_α:
 mov rdi, qword ptr [rbp + 3984]
 mov rsi, qword ptr [rbp + 3992]
 mov rdx, qword ptr [rbp + 4016]
 mov rcx, qword ptr [rbp + 4024]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n34_α
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp xchain00149_n33_α
# IR_GEN_SCAN
 xchain00149_n29_α:
 lea rdi, [rbp + 464]
 call rt_scan_leave@PLT
 mov r13, qword ptr [rbp + 464]
 mov r14, qword ptr [rbp + 472]
 mov r15, qword ptr [rbp + 480]
 jmp xchain00149_n18_α
 xchain00149_n29_β:
 jmp xchain00149_n18_α
# KEYWORD_null
 xchain00149_n30_α:
 mov qword ptr [rbp + 528], 0
 mov qword ptr [rbp + 536], 0
 jmp xchain00149_n35_α
 xchain00149_n30_β:
 jmp xchain00149_n29_α
# IR_LIT_INTEGER
 xchain00149_n31_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx00162_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain00149_n36_α
.Lx00162_0:
 .quad 13
 xchain00149_n32_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn611: .string "right"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn611]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je proc_geddate_ω
 jmp xchain00149_n37_α
 xchain00149_n32_β:
 jmp proc_geddate_ω
# IR_LIT_STRING
 xchain00149_n33_α:
 mov qword ptr [rbp + 4096], 1
 mov rax, qword ptr [rip + .Lx00163_0]
 mov qword ptr [rbp + 4104], rax
 jmp xchain00149_n38_α
.Lx00163_0:
 .quad .Lx00163_0_s
.Lx00163_0_s:
 .string "Jan"
# IR_VAR_REF
 xchain00149_n34_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain00149_n39_α
# IR_LIT_CHARSET
 xchain00149_n35_α:
 mov qword ptr [rbp + 1232], 1
 mov dword ptr [rbp + 1236], -1
 mov rax, qword ptr [rip + .Lx00164_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain00149_n40_α
.Lx00164_0:
 .quad .Lx00164_0_s
.Lx00164_0_s:
 .string "\t\n "
 xchain00149_n36_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 224]
 cmp eax, 100
 je .Lx00165_0
 mov eax, dword ptr [rbp + 288]
 cmp eax, 100
 je .Lx00165_0
 mov eax, dword ptr [rbp + 224]
 cmp eax, 6
 jne .Lx00165_2
 mov eax, dword ptr [rbp + 288]
 cmp eax, 6
 jne .Lx00165_2
.Lx00165_1:
 mov rax, qword ptr [rbp + 232]
 mov rcx, qword ptr [rbp + 296]
 cmp rax, rcx
 jle xchain00149_n18_af
 mov rcx, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rcx
 mov rcx, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rcx
 jmp xchain00149_n41_α
.Lx00165_0:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 mov r8d, 7
 lea r9, [rbp + 192]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00165_1
 cmp eax, 1
 je xchain00149_n18_af
 jmp xchain00149_n41_α
.Lx00165_2:
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00149_n18_af
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 200], rax
 jmp xchain00149_n41_α
# IR_RETURN
 xchain00149_n37_α:
 mov rax, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_ASSIGN_VAR
 xchain00149_n38_α:
 mov rdi, qword ptr [rbp + 4048]
 mov rsi, qword ptr [rbp + 4056]
 mov rdx, qword ptr [rbp + 4096]
 mov rcx, qword ptr [rbp + 4104]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n34_α
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp xchain00149_n34_α
# IR_LIT_STRING
 xchain00149_n39_α:
 mov qword ptr [rbp + 3872], 1
 mov rax, qword ptr [rip + .Lx00166_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain00149_n42_α
.Lx00166_0:
 .quad .Lx00166_0_s
.Lx00166_0_s:
 .string "FEB"
# IR_SCAN_MANY
 xchain00149_n40_α:
 mov eax, r14d
.Lx00167_0:
 cmp eax, r15d
 jge .Lx00167_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00167_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00167_1
 add eax, 1
 jmp .Lx00167_0
.Lx00167_1:
 cmp eax, r14d
 je xchain00149_n47_α
 mov qword ptr [rbp + 1200], 6
 movsxd rcx, eax
 add rcx, 1
 mov qword ptr [rbp + 1208], rcx
 jmp xchain00149_n43_α
 xchain00149_n40_β:
 jmp xchain00149_n47_α
.Lx00167_2:
 .quad .Lx00167_2_s
.Lx00167_2_s:
 .string "\t\n "
# IR_VAR
 xchain00149_n41_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 104], rax
 jmp xchain00149_n44_α
# IR_SUBSCRIPT x[i] variable
 xchain00149_n42_α:
 mov rdi, qword ptr [rbp + 3840]
 mov rsi, qword ptr [rbp + 3848]
 mov rdx, qword ptr [rbp + 3872]
 mov rcx, qword ptr [rbp + 3880]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n46_α
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain00149_n45_α
# IR_SCAN_TAB
 xchain00149_n43_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1208]
 cmp rax, 1
 jge .Lx00168_0
 add rax, r15
 add rax, 1
.Lx00168_0:
 cmp rax, 1
 jge .Lx00168_239
 add rsp, 16
 jmp xchain00149_n47_α
.Lx00168_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00168_240
 add rsp, 16
 jmp xchain00149_n47_α
.Lx00168_240:
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
 jmp xchain00149_n47_α
 xchain00149_n43_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00149_n47_α
# IR_LIT_INTEGER
 xchain00149_n44_α:
 mov qword ptr [rbp + 128], 6
 mov rax, qword ptr [rip + .Lx00169_0]
 mov qword ptr [rbp + 136], rax
 jmp xchain00149_n48_α
.Lx00169_0:
 .quad 2
# IR_LIT_STRING
 xchain00149_n45_α:
 mov qword ptr [rbp + 3952], 1
 mov rax, qword ptr [rip + .Lx00170_0]
 mov qword ptr [rbp + 3960], rax
 jmp xchain00149_n49_α
.Lx00170_0:
 .quad .Lx00170_0_s
.Lx00170_0_s:
 .string "Feb"
# IR_VAR_REF
 xchain00149_n46_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain00149_n50_α
# IR_DISJUNCTION_NARY
 xchain00149_n47_α:
 mov qword ptr [rbp + 1040], 0
 mov qword ptr [rbp + 1048], 0
 mov dword ptr [rbp + 1056], 0
 jmp xchain00149_n52_α
xchain00149_n47_as:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 0
 jne .Lx00171_0
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00149_n51_α
.Lx00171_0:
 cmp eax, 1
 jne .Lx00171_1
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1048], rax
 jmp xchain00149_n51_α
.Lx00171_1:
 jmp xchain00149_n51_α
 xchain00149_n47_β:
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 0
 je xchain00149_n53_β
 jmp xchain00149_n47_af
xchain00149_n47_af:
 add dword ptr [rbp + 1056], 1
 mov eax, dword ptr [rbp + 1056]
 cmp eax, 1
 je xchain00149_n54_α
 jmp xchain00149_n61_α
# IR_LIT_INTEGER
 xchain00149_n48_α:
 mov qword ptr [rbp + 160], 6
 mov rax, qword ptr [rip + .Lx00172_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain00149_n55_α
.Lx00172_0:
 .quad 0
# IR_ASSIGN_VAR
 xchain00149_n49_α:
 mov rdi, qword ptr [rbp + 3904]
 mov rsi, qword ptr [rbp + 3912]
 mov rdx, qword ptr [rbp + 3952]
 mov rcx, qword ptr [rbp + 3960]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n46_α
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain00149_n46_α
# IR_LIT_STRING
 xchain00149_n50_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx00173_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain00149_n56_α
.Lx00173_0:
 .quad .Lx00173_0_s
.Lx00173_0_s:
 .string "MAR"
# IR_SCAN_TAB
 xchain00149_n51_α:
 sub rsp, 16
 mov rax, qword ptr [rbp + 1048]
 cmp rax, 1
 jge .Lx00174_0
 add rax, r15
 add rax, 1
.Lx00174_0:
 cmp rax, 1
 jge .Lx00174_239
 add rsp, 16
 jmp xchain00149_n47_β
.Lx00174_239:
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jle .Lx00174_240
 add rsp, 16
 jmp xchain00149_n47_β
.Lx00174_240:
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
 jmp xchain00149_n57_α
 xchain00149_n51_β:
 mov r14, qword ptr [rsp + 0]
 add rsp, 16
 jmp xchain00149_n47_β
# IR_LIT_CHARSET
 xchain00149_n52_α:
 mov qword ptr [rbp + 1104], 1
 mov dword ptr [rbp + 1108], -1
 mov rax, qword ptr [rip + .Lx00175_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain00149_n53_α
 xchain00149_n52_β:
 jmp xchain00149_n47_af
.Lx00175_0:
 .quad .Lx00175_0_s
.Lx00175_0_s:
 .string "\t\n "
# IR_SCAN_UPTO
 xchain00149_n53_α:
 mov qword ptr [rbp + 1088], r14
.Lx00176_0:
 mov rax, qword ptr [rbp + 1088]
 cmp rax, r15
 jge xchain00149_n47_af
 mov rcx, rax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rip + .Lx00176_2]
 push rax
 push r10
 call strchr@PLT
 pop r10
 test rax, rax
 pop rax
 je .Lx00176_1
 mov qword ptr [rbp + 1072], 6
 add rax, 1
 mov qword ptr [rbp + 1080], rax
 jmp xchain00149_n47_as
.Lx00176_1:
 inc qword ptr [rbp + 1088]
 jmp .Lx00176_0
 xchain00149_n53_β:
 inc qword ptr [rbp + 1088]
 jmp .Lx00176_0
.Lx00176_2:
 .quad .Lx00176_2_s
.Lx00176_2_s:
 .string "\t\n "
# IR_LIT_INTEGER
 xchain00149_n54_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx00177_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain00149_n47_as
 xchain00149_n54_β:
 jmp xchain00149_n47_af
.Lx00177_0:
 .quad 0
# IR_SUBSCRIPT section
 xchain00149_n55_α:
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
 jmp xchain00149_n58_α
# IR_SUBSCRIPT x[i] variable
 xchain00149_n56_α:
 mov rdi, qword ptr [rbp + 3696]
 mov rsi, qword ptr [rbp + 3704]
 mov rdx, qword ptr [rbp + 3728]
 mov rcx, qword ptr [rbp + 3736]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n60_α
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain00149_n59_α
 xchain00149_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain00149_n61_α
# IR_RETURN
 xchain00149_n58_α:
 mov rax, qword ptr [rbp + 64]
 mov rdx, qword ptr [rbp + 72]
 mov qword ptr [rbp + 0], rax
 mov qword ptr [rbp + 8], rdx
 jmp proc_geddate_γ
# IR_LIT_STRING
 xchain00149_n59_α:
 mov qword ptr [rbp + 3808], 1
 mov rax, qword ptr [rip + .Lx00178_0]
 mov qword ptr [rbp + 3816], rax
 jmp xchain00149_n62_α
.Lx00178_0:
 .quad .Lx00178_0_s
.Lx00178_0_s:
 .string "Mar"
# IR_VAR_REF
 xchain00149_n60_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain00149_n63_α
# IR_VAR
 xchain00149_n61_α:
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 696], rax
 jmp xchain00149_n64_α
# IR_ASSIGN_VAR
 xchain00149_n62_α:
 mov rdi, qword ptr [rbp + 3760]
 mov rsi, qword ptr [rbp + 3768]
 mov rdx, qword ptr [rbp + 3808]
 mov rcx, qword ptr [rbp + 3816]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n60_α
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain00149_n60_α
# IR_LIT_STRING
 xchain00149_n63_α:
 mov qword ptr [rbp + 3584], 1
 mov rax, qword ptr [rip + .Lx00179_0]
 mov qword ptr [rbp + 3592], rax
 jmp xchain00149_n65_α
.Lx00179_0:
 .quad .Lx00179_0_s
.Lx00179_0_s:
 .string "APR"
# IR_LIT_STRING
 xchain00149_n64_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx00180_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain00149_n66_α
.Lx00180_0:
 .quad .Lx00180_0_s
.Lx00180_0_s:
 .string " "
# IR_SUBSCRIPT x[i] variable
 xchain00149_n65_α:
 mov rdi, qword ptr [rbp + 3552]
 mov rsi, qword ptr [rbp + 3560]
 mov rdx, qword ptr [rbp + 3584]
 mov rcx, qword ptr [rbp + 3592]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n68_α
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain00149_n67_α
# IR_DISJUNCTION_NARY
 xchain00149_n66_α:
 mov qword ptr [rbp + 784], 0
 mov qword ptr [rbp + 792], 0
 mov dword ptr [rbp + 800], 0
 jmp xchain00149_n70_α
xchain00149_n66_as:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 0
 jne .Lx00181_0
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
 jmp xchain00149_n69_α
.Lx00181_0:
 cmp eax, 1
 jne .Lx00181_1
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 792], rax
 jmp xchain00149_n69_α
.Lx00181_1:
 jmp xchain00149_n69_α
 xchain00149_n66_β:
 mov eax, dword ptr [rbp + 800]
 cmp eax, 0
 je xchain00149_n66_af
 jmp xchain00149_n66_af
xchain00149_n66_af:
 add dword ptr [rbp + 800], 1
 mov eax, dword ptr [rbp + 800]
 cmp eax, 1
 je xchain00149_n71_α
 jmp xchain00149_n21_α
# IR_LIT_STRING
 xchain00149_n67_α:
 mov qword ptr [rbp + 3664], 1
 mov rax, qword ptr [rip + .Lx00182_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain00149_n73_α
.Lx00182_0:
 .quad .Lx00182_0_s
.Lx00182_0_s:
 .string "Apr"
# IR_VAR_REF
 xchain00149_n68_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain00149_n74_α
 xchain00149_n69_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 752]
 mov rsi, qword ptr [rbp + 760]
 mov rdx, qword ptr [rbp + 784]
 mov rcx, qword ptr [rbp + 792]
 call str_concat_d@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain00149_n75_α
# IR_VAR_REF
 xchain00149_n70_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain00149_n76_α
 xchain00149_n70_β:
 jmp xchain00149_n66_af
# IR_VAR
 xchain00149_n71_α:
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 968], rax
 jmp xchain00149_n66_as
 xchain00149_n71_β:
 jmp xchain00149_n66_af
# IR_UNOP
 xchain00149_n72_α:
 mov eax, dword ptr [rbp + 944]
 cmp eax, 99
 je xchain00149_n66_af
 cmp eax, 0
 je xchain00149_n66_af
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 824], rax
 jmp xchain00149_n66_as
 xchain00149_n72_β:
 jmp xchain00149_n66_af
# IR_ASSIGN_VAR
 xchain00149_n73_α:
 mov rdi, qword ptr [rbp + 3616]
 mov rsi, qword ptr [rbp + 3624]
 mov rdx, qword ptr [rbp + 3664]
 mov rcx, qword ptr [rbp + 3672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n68_α
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain00149_n68_α
# IR_LIT_STRING
 xchain00149_n74_α:
 mov qword ptr [rbp + 3440], 1
 mov rax, qword ptr [rip + .Lx00183_0]
 mov qword ptr [rbp + 3448], rax
 jmp xchain00149_n77_α
.Lx00183_0:
 .quad .Lx00183_0_s
.Lx00183_0_s:
 .string "MAY"
 xchain00149_n75_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4304]
 mov rsi, qword ptr [rbp + 4312]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain00149_n78_α
# IR_VAR
 xchain00149_n76_α:
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 888], rax
 jmp xchain00149_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain00149_n77_α:
 mov rdi, qword ptr [rbp + 3408]
 mov rsi, qword ptr [rbp + 3416]
 mov rdx, qword ptr [rbp + 3440]
 mov rcx, qword ptr [rbp + 3448]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n81_α
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain00149_n80_α
 xchain00149_n78_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain00149_n82_α
# IR_SUBSCRIPT x[i] variable
 xchain00149_n79_α:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n66_af
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain00149_n83_α
# IR_LIT_STRING
 xchain00149_n80_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx00184_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain00149_n84_α
.Lx00184_0:
 .quad .Lx00184_0_s
.Lx00184_0_s:
 .string "May"
# IR_VAR_REF
 xchain00149_n81_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain00149_n85_α
 xchain00149_n82_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 632], rax
 jmp xchain00149_n21_α
xchain00149_n82_β:
 jmp xchain00149_n21_α
# IR_DEREF variable -> value
 xchain00149_n83_α:
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00149_n66_af
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain00149_n72_α
# IR_ASSIGN_VAR
 xchain00149_n84_α:
 mov rdi, qword ptr [rbp + 3472]
 mov rsi, qword ptr [rbp + 3480]
 mov rdx, qword ptr [rbp + 3520]
 mov rcx, qword ptr [rbp + 3528]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n81_α
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain00149_n81_α
# IR_LIT_STRING
 xchain00149_n85_α:
 mov qword ptr [rbp + 3296], 1
 mov rax, qword ptr [rip + .Lx00185_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain00149_n86_α
.Lx00185_0:
 .quad .Lx00185_0_s
.Lx00185_0_s:
 .string "JUN"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n86_α:
 mov rdi, qword ptr [rbp + 3264]
 mov rsi, qword ptr [rbp + 3272]
 mov rdx, qword ptr [rbp + 3296]
 mov rcx, qword ptr [rbp + 3304]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n88_α
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain00149_n87_α
# IR_LIT_STRING
 xchain00149_n87_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx00186_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain00149_n89_α
.Lx00186_0:
 .quad .Lx00186_0_s
.Lx00186_0_s:
 .string "Jun"
# IR_VAR_REF
 xchain00149_n88_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain00149_n90_α
# IR_ASSIGN_VAR
 xchain00149_n89_α:
 mov rdi, qword ptr [rbp + 3328]
 mov rsi, qword ptr [rbp + 3336]
 mov rdx, qword ptr [rbp + 3376]
 mov rcx, qword ptr [rbp + 3384]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n88_α
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain00149_n88_α
# IR_LIT_STRING
 xchain00149_n90_α:
 mov qword ptr [rbp + 3152], 1
 mov rax, qword ptr [rip + .Lx00187_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain00149_n91_α
.Lx00187_0:
 .quad .Lx00187_0_s
.Lx00187_0_s:
 .string "JUL"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n91_α:
 mov rdi, qword ptr [rbp + 3120]
 mov rsi, qword ptr [rbp + 3128]
 mov rdx, qword ptr [rbp + 3152]
 mov rcx, qword ptr [rbp + 3160]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n93_α
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain00149_n92_α
# IR_LIT_STRING
 xchain00149_n92_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx00188_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain00149_n94_α
.Lx00188_0:
 .quad .Lx00188_0_s
.Lx00188_0_s:
 .string "Jul"
# IR_VAR_REF
 xchain00149_n93_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain00149_n95_α
# IR_ASSIGN_VAR
 xchain00149_n94_α:
 mov rdi, qword ptr [rbp + 3184]
 mov rsi, qword ptr [rbp + 3192]
 mov rdx, qword ptr [rbp + 3232]
 mov rcx, qword ptr [rbp + 3240]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n93_α
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain00149_n93_α
# IR_LIT_STRING
 xchain00149_n95_α:
 mov qword ptr [rbp + 3008], 1
 mov rax, qword ptr [rip + .Lx00189_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain00149_n96_α
.Lx00189_0:
 .quad .Lx00189_0_s
.Lx00189_0_s:
 .string "AUG"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n96_α:
 mov rdi, qword ptr [rbp + 2976]
 mov rsi, qword ptr [rbp + 2984]
 mov rdx, qword ptr [rbp + 3008]
 mov rcx, qword ptr [rbp + 3016]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n98_α
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain00149_n97_α
# IR_LIT_STRING
 xchain00149_n97_α:
 mov qword ptr [rbp + 3088], 1
 mov rax, qword ptr [rip + .Lx00190_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain00149_n99_α
.Lx00190_0:
 .quad .Lx00190_0_s
.Lx00190_0_s:
 .string "Aug"
# IR_VAR_REF
 xchain00149_n98_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain00149_n00026_α
# IR_ASSIGN_VAR
 xchain00149_n99_α:
 mov rdi, qword ptr [rbp + 3040]
 mov rsi, qword ptr [rbp + 3048]
 mov rdx, qword ptr [rbp + 3088]
 mov rcx, qword ptr [rbp + 3096]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n98_α
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain00149_n98_α
# IR_LIT_STRING
 xchain00149_n00026_α:
 mov qword ptr [rbp + 2864], 1
 mov rax, qword ptr [rip + .Lx00191_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain00149_n00028_α
.Lx00191_0:
 .quad .Lx00191_0_s
.Lx00191_0_s:
 .string "SEP"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00028_α:
 mov rdi, qword ptr [rbp + 2832]
 mov rsi, qword ptr [rbp + 2840]
 mov rdx, qword ptr [rbp + 2864]
 mov rcx, qword ptr [rbp + 2872]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00031_α
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain00149_n00029_α
# IR_LIT_STRING
 xchain00149_n00029_α:
 mov qword ptr [rbp + 2944], 1
 mov rax, qword ptr [rip + .Lx00192_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain00149_n00030_α
.Lx00192_0:
 .quad .Lx00192_0_s
.Lx00192_0_s:
 .string "Sep"
# IR_VAR_REF
 xchain00149_n00031_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 jmp xchain00149_n00032_α
# IR_ASSIGN_VAR
 xchain00149_n00030_α:
 mov rdi, qword ptr [rbp + 2896]
 mov rsi, qword ptr [rbp + 2904]
 mov rdx, qword ptr [rbp + 2944]
 mov rcx, qword ptr [rbp + 2952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00031_α
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain00149_n00031_α
# IR_LIT_STRING
 xchain00149_n00032_α:
 mov qword ptr [rbp + 2720], 1
 mov rax, qword ptr [rip + .Lx00193_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00149_n00001_α
.Lx00193_0:
 .quad .Lx00193_0_s
.Lx00193_0_s:
 .string "OCT"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00001_α:
 mov rdi, qword ptr [rbp + 2688]
 mov rsi, qword ptr [rbp + 2696]
 mov rdx, qword ptr [rbp + 2720]
 mov rcx, qword ptr [rbp + 2728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00002_α
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain00149_n00034_α
# IR_LIT_STRING
 xchain00149_n00034_α:
 mov qword ptr [rbp + 2800], 1
 mov rax, qword ptr [rip + .Lx00194_0]
 mov qword ptr [rbp + 2808], rax
 jmp xchain00149_n00035_α
.Lx00194_0:
 .quad .Lx00194_0_s
.Lx00194_0_s:
 .string "Oct"
# IR_VAR_REF
 xchain00149_n00002_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 jmp xchain00149_n00036_α
# IR_ASSIGN_VAR
 xchain00149_n00035_α:
 mov rdi, qword ptr [rbp + 2752]
 mov rsi, qword ptr [rbp + 2760]
 mov rdx, qword ptr [rbp + 2800]
 mov rcx, qword ptr [rbp + 2808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00002_α
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00149_n00002_α
# IR_LIT_STRING
 xchain00149_n00036_α:
 mov qword ptr [rbp + 2576], 1
 mov rax, qword ptr [rip + .Lx00195_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain00149_n00037_α
.Lx00195_0:
 .quad .Lx00195_0_s
.Lx00195_0_s:
 .string "NOV"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00037_α:
 mov rdi, qword ptr [rbp + 2544]
 mov rsi, qword ptr [rbp + 2552]
 mov rdx, qword ptr [rbp + 2576]
 mov rcx, qword ptr [rbp + 2584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00039_α
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain00149_n00038_α
# IR_LIT_STRING
 xchain00149_n00038_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx00196_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain00149_n00040_α
.Lx00196_0:
 .quad .Lx00196_0_s
.Lx00196_0_s:
 .string "Nov"
# IR_VAR_REF
 xchain00149_n00039_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain00149_n00197_α
# IR_ASSIGN_VAR
 xchain00149_n00040_α:
 mov rdi, qword ptr [rbp + 2608]
 mov rsi, qword ptr [rbp + 2616]
 mov rdx, qword ptr [rbp + 2656]
 mov rcx, qword ptr [rbp + 2664]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00039_α
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain00149_n00039_α
# IR_LIT_STRING
 xchain00149_n00197_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx00198_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain00149_n00199_α
.Lx00198_0:
 .quad .Lx00198_0_s
.Lx00198_0_s:
 .string "DEC"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00199_α:
 mov rdi, qword ptr [rbp + 2400]
 mov rsi, qword ptr [rbp + 2408]
 mov rdx, qword ptr [rbp + 2432]
 mov rcx, qword ptr [rbp + 2440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00200_α
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain00149_n00201_α
# IR_LIT_STRING
 xchain00149_n00201_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx00202_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain00149_n00203_α
.Lx00202_0:
 .quad .Lx00202_0_s
.Lx00202_0_s:
 .string "Dec"
# IR_VAR_REF
 xchain00149_n00200_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain00149_n00204_α
# IR_ASSIGN_VAR
 xchain00149_n00203_α:
 mov rdi, qword ptr [rbp + 2464]
 mov rsi, qword ptr [rbp + 2472]
 mov rdx, qword ptr [rbp + 2512]
 mov rcx, qword ptr [rbp + 2520]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00200_α
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain00149_n00200_α
# IR_LIT_STRING
 xchain00149_n00204_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx00205_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain00149_n00206_α
.Lx00205_0:
 .quad .Lx00205_0_s
.Lx00205_0_s:
 .string "ABT"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00206_α:
 mov rdi, qword ptr [rbp + 2256]
 mov rsi, qword ptr [rbp + 2264]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00207_α
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain00149_n00208_α
# IR_LIT_STRING
 xchain00149_n00208_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx00209_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00149_n00210_α
.Lx00209_0:
 .quad .Lx00209_0_s
.Lx00209_0_s:
 .string "abt"
# IR_VAR_REF
 xchain00149_n00207_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain00149_n00211_α
# IR_ASSIGN_VAR
 xchain00149_n00210_α:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 2368]
 mov rcx, qword ptr [rbp + 2376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00207_α
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain00149_n00207_α
# IR_LIT_STRING
 xchain00149_n00211_α:
 mov qword ptr [rbp + 2144], 1
 mov rax, qword ptr [rip + .Lx00212_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain00149_n00213_α
.Lx00212_0:
 .quad .Lx00212_0_s
.Lx00212_0_s:
 .string "BEF"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00213_α:
 mov rdi, qword ptr [rbp + 2112]
 mov rsi, qword ptr [rbp + 2120]
 mov rdx, qword ptr [rbp + 2144]
 mov rcx, qword ptr [rbp + 2152]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00214_α
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain00149_n00003_α
# IR_LIT_STRING
 xchain00149_n00003_α:
 mov qword ptr [rbp + 2224], 1
 mov rax, qword ptr [rip + .Lx00215_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00149_n00004_α
.Lx00215_0:
 .quad .Lx00215_0_s
.Lx00215_0_s:
 .string "bef"
# IR_VAR_REF
 xchain00149_n00214_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain00149_n00005_α
# IR_ASSIGN_VAR
 xchain00149_n00004_α:
 mov rdi, qword ptr [rbp + 2176]
 mov rsi, qword ptr [rbp + 2184]
 mov rdx, qword ptr [rbp + 2224]
 mov rcx, qword ptr [rbp + 2232]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00214_α
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain00149_n00214_α
# IR_LIT_STRING
 xchain00149_n00005_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx00216_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain00149_n00217_α
.Lx00216_0:
 .quad .Lx00216_0_s
.Lx00216_0_s:
 .string "AFT"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00217_α:
 mov rdi, qword ptr [rbp + 1968]
 mov rsi, qword ptr [rbp + 1976]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00218_α
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain00149_n00219_α
# IR_LIT_STRING
 xchain00149_n00219_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx00220_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain00149_n00221_α
.Lx00220_0:
 .quad .Lx00220_0_s
.Lx00220_0_s:
 .string "aft"
# IR_VAR_REF
 xchain00149_n00218_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain00149_n00222_α
# IR_ASSIGN_VAR
 xchain00149_n00221_α:
 mov rdi, qword ptr [rbp + 2032]
 mov rsi, qword ptr [rbp + 2040]
 mov rdx, qword ptr [rbp + 2080]
 mov rcx, qword ptr [rbp + 2088]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00218_α
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain00149_n00218_α
# IR_LIT_STRING
 xchain00149_n00222_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx00223_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain00149_n00006_α
.Lx00223_0:
 .quad .Lx00223_0_s
.Lx00223_0_s:
 .string "CAL"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00006_α:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n00007_α
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain00149_n00224_α
# IR_LIT_STRING
 xchain00149_n00224_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx00225_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain00149_n00226_α
.Lx00225_0:
 .quad .Lx00225_0_s
.Lx00225_0_s:
 .string "cal"
# IR_VAR_REF
 xchain00149_n00007_α:
 mov rax, 4294967305
 mov rdx, 1879052336
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain00149_n00227_α
# IR_ASSIGN_VAR
 xchain00149_n00226_α:
 mov rdi, qword ptr [rbp + 1888]
 mov rsi, qword ptr [rbp + 1896]
 mov rdx, qword ptr [rbp + 1936]
 mov rcx, qword ptr [rbp + 1944]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n00007_α
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain00149_n00007_α
# IR_LIT_STRING
 xchain00149_n00227_α:
 mov qword ptr [rbp + 1712], 1
 mov rax, qword ptr [rip + .Lx00228_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain00149_n00229_α
.Lx00228_0:
 .quad .Lx00228_0_s
.Lx00228_0_s:
 .string "EST"
# IR_SUBSCRIPT x[i] variable
 xchain00149_n00229_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00149_n1_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain00149_n00230_α
# IR_LIT_STRING
 xchain00149_n00230_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx00231_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain00149_n00232_α
.Lx00231_0:
 .quad .Lx00231_0_s
.Lx00231_0_s:
 .string "est"
# IR_ASSIGN_VAR
 xchain00149_n00232_α:
 mov rdi, qword ptr [rbp + 1744]
 mov rsi, qword ptr [rbp + 1752]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00149_n1_α
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain00149_n3_α
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
  mov esi, 3904
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
  mov esi, 992
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
  mov qword ptr [rsp + 6728], rsp
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
# IR_DISJUNCTION_NARY
 xchain00233_n0_α:
 mov qword ptr [rbp + 6096], 0
 mov qword ptr [rbp + 6104], 0
 mov dword ptr [rbp + 6112], 0
 jmp xchain00233_n2_α
xchain00233_n0_as:
 mov eax, dword ptr [rbp + 6112]
 cmp eax, 0
 jne .Lx00234_0
 mov rax, qword ptr [rbp + 6128]
 mov qword ptr [rbp + 6096], rax
 mov rax, qword ptr [rbp + 6136]
 mov qword ptr [rbp + 6104], rax
 jmp xchain00233_n1_α
.Lx00234_0:
 cmp eax, 1
 jne .Lx00234_1
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 6096], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 6104], rax
 jmp xchain00233_n1_α
.Lx00234_1:
 jmp xchain00233_n1_α
 xchain00233_n0_β:
 mov eax, dword ptr [rbp + 6112]
 cmp eax, 0
 je xchain00233_n3_β
 jmp xchain00233_n1_α
xchain00233_n0_af:
 add dword ptr [rbp + 6112], 1
 mov eax, dword ptr [rbp + 6112]
 cmp eax, 1
 je xchain00233_n4_α
 jmp xchain00233_n1_α
# IR_VAR
 xchain00233_n1_α:
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6072], rax
 jmp xchain00233_n7_α
# IR_VAR
 xchain00233_n2_α:
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 6608], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 6616], rax
 jmp xchain00233_n9_α
 xchain00233_n2_β:
 jmp xchain00233_n0_af
# IR_DISJUNCTION_NARY
 xchain00233_n3_α:
 mov qword ptr [rbp + 6144], 0
 mov qword ptr [rbp + 6152], 0
 mov dword ptr [rbp + 6160], 0
 jmp xchain00233_n10_α
xchain00233_n3_as:
 mov eax, dword ptr [rbp + 6160]
 cmp eax, 0
 jne .Lx00235_0
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6152], rax
 jmp xchain00233_n5_α
.Lx00235_0:
 cmp eax, 1
 jne .Lx00235_1
 mov rax, qword ptr [rbp + 6336]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 6344]
 mov qword ptr [rbp + 6152], rax
 jmp xchain00233_n5_α
.Lx00235_1:
 jmp xchain00233_n5_α
 xchain00233_n3_β:
 mov eax, dword ptr [rbp + 6160]
 cmp eax, 0
 je xchain00233_n3_af
 jmp xchain00233_n3_af
xchain00233_n3_af:
 add dword ptr [rbp + 6160], 1
 mov eax, dword ptr [rbp + 6160]
 cmp eax, 1
 je xchain00233_n11_α
 jmp xchain00233_n1_α
# KEYWORD_read
 xchain00233_n4_α:
 mov rdi, qword ptr [rip + .Lx00236_0]
 call rt_keyword_read@PLT
 cmp eax, 99
 je xchain00233_n1_α
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 jmp xchain00233_n6_α
 xchain00233_n4_β:
 jmp xchain00233_n1_α
.Lx00236_0:
 .quad .Lx00236_0_s
.Lx00236_0_s:
 .string "&input"
 xchain00233_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 6144]
 mov rdx, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 mov qword ptr [rbp + 6128], rax
 mov qword ptr [rbp + 6136], rdx
 jmp xchain00233_n0_as
 xchain00233_n5_β:
 jmp xchain00233_n1_α
 xchain00233_n6_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 6688]
 mov rdx, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain00233_n0_as
 xchain00233_n6_β:
 jmp xchain00233_n1_α
 xchain00233_n7_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 6064]
 mov rdx, qword ptr [rbp + 6072]
 call rt_arg_stage@PLT
 mov edi, 3
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00237_1
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
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 cmp eax, 99
 je xchain00233_n8_α
 jmp xchain00233_n14_α
 xchain00233_n7_β:
 jmp xchain00233_n8_α
.Lx00237_0:
 .quad .Lx00237_0_s
.Lx00237_0_s:
 .string "gedload"
# IR_VAR
 xchain00233_n8_α:
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 5976], rax
 jmp xchain00233_n15_α
# IR_UNOP
 xchain00233_n9_α:
 mov rdi, qword ptr [rbp + 16]
 mov rsi, qword ptr [rbp + 24]
 call rt_size_d@PLT
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 jmp xchain00233_n17_α
# IR_VAR_REF
 xchain00233_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain00233_n18_α
 xchain00233_n10_β:
 jmp xchain00233_n3_af
# IR_LIT_STRING
 xchain00233_n11_α:
 mov qword ptr [rbp + 6400], 1
 mov rax, qword ptr [rip + .Lx00238_0]
 mov qword ptr [rbp + 6408], rax
 jmp xchain00233_n19_α
 xchain00233_n11_β:
 jmp xchain00233_n3_af
.Lx00238_0:
 .quad .Lx00238_0_s
.Lx00238_0_s:
 .string "can't open "
 xchain00233_n12_α:
# BOX IR_CALL open(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6320] -> [zr+6192]
 mov rax, qword ptr [rbp + 6320]
 mov qword ptr [rbp + 6192], rax
 mov rax, qword ptr [rbp + 6328]
 mov qword ptr [rbp + 6200], rax
  .section .rodata
  .Lrkfn771: .string "open"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn771]
 lea rsi, [rbp + 6192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain00233_n3_af
 jmp xchain00233_n3_as
 xchain00233_n12_β:
 jmp xchain00233_n3_af
 xchain00233_n13_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6400] -> [zr+6352]
 mov rax, qword ptr [rbp + 6400]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6408]
 mov qword ptr [rbp + 6360], rax
# marshal arg1 = producer-box slot [zr+6528] -> [zr+6368]
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 6376], rax
  .section .rodata
  .Lrkfn773: .string "stop"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn773]
 lea rsi, [rbp + 6352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 cmp eax, 99
 je xchain00233_n3_af
 jmp xchain00233_n3_as
 xchain00233_n13_β:
 jmp xchain00233_n3_af
 xchain00233_n14_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 6016]
 mov rdx, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 6832], rax
 mov qword ptr [rbp + 6840], rdx
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain00233_n8_α
 xchain00233_n15_α:
# BOX IR_CALL close(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5968] -> [zr+5936]
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 5944], rax
  .section .rodata
  .Lrkfn776: .string "close"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn776]
 lea rsi, [rbp + 5936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain00233_n16_α
 jmp xchain00233_n16_α
 xchain00233_n15_β:
 jmp xchain00233_n16_α
# IR_MAKE_LIST
 xchain00233_n16_α:
 lea rdi, [rbp + 5920]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [rbp + 5904], rax
 mov qword ptr [rbp + 5912], rdx
 jmp xchain00233_n20_α
# IR_LIT_INTEGER
 xchain00233_n17_α:
 mov qword ptr [rbp + 6640], 6
 mov rax, qword ptr [rip + .Lx00239_0]
 mov qword ptr [rbp + 6648], rax
 jmp xchain00233_n21_α
.Lx00239_0:
 .quad 0
# IR_LIT_INTEGER
 xchain00233_n18_α:
 mov qword ptr [rbp + 6256], 6
 mov rax, qword ptr [rip + .Lx00240_0]
 mov qword ptr [rbp + 6264], rax
 jmp xchain00233_n22_α
.Lx00240_0:
 .quad 1
# IR_VAR_REF
 xchain00233_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain00233_n23_α
 xchain00233_n20_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5904]
 mov rdx, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 jmp xchain00233_n24_α
 xchain00233_n21_α:
# IR_BINOP_TEST
 mov eax, dword ptr [rbp + 6576]
 cmp eax, 100
 je .Lx00241_0
 mov eax, dword ptr [rbp + 6640]
 cmp eax, 100
 je .Lx00241_0
 mov eax, dword ptr [rbp + 6576]
 cmp eax, 6
 jne .Lx00241_2
 mov eax, dword ptr [rbp + 6640]
 cmp eax, 6
 jne .Lx00241_2
.Lx00241_1:
 mov rax, qword ptr [rbp + 6584]
 mov rcx, qword ptr [rbp + 6648]
 cmp rax, rcx
 jle xchain00233_n0_af
 mov rcx, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6544], rcx
 mov rcx, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6552], rcx
 jmp xchain00233_n3_α
.Lx00241_0:
 mov rdi, qword ptr [rbp + 6576]
 mov rsi, qword ptr [rbp + 6584]
 mov rdx, qword ptr [rbp + 6640]
 mov rcx, qword ptr [rbp + 6648]
 mov r8d, 7
 lea r9, [rbp + 6544]
 call rt_relop_overload@PLT
 test eax, eax
 je .Lx00241_1
 cmp eax, 1
 je xchain00233_n0_af
 jmp xchain00233_n3_α
.Lx00241_2:
 mov rdi, qword ptr [rbp + 6576]
 mov rsi, qword ptr [rbp + 6584]
 mov rdx, qword ptr [rbp + 6640]
 mov rcx, qword ptr [rbp + 6648]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00233_n0_af
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6552], rax
 jmp xchain00233_n3_α
# IR_SUBSCRIPT x[i] variable
 xchain00233_n22_α:
 mov rdi, qword ptr [rbp + 6224]
 mov rsi, qword ptr [rbp + 6232]
 mov rdx, qword ptr [rbp + 6256]
 mov rcx, qword ptr [rbp + 6264]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00233_n3_af
 mov qword ptr [rbp + 6288], rax
 mov qword ptr [rbp + 6296], rdx
 jmp xchain00233_n25_α
# IR_LIT_INTEGER
 xchain00233_n23_α:
 mov qword ptr [rbp + 6464], 6
 mov rax, qword ptr [rip + .Lx00242_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain00233_n26_α
.Lx00242_0:
 .quad 1
 xchain00233_n24_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn788: .string "table"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn788]
 lea rsi, [rbp + 5872]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 cmp eax, 99
 je xchain00233_n28_α
 jmp xchain00233_n27_α
 xchain00233_n24_β:
 jmp xchain00233_n28_α
# IR_DEREF variable -> value
 xchain00233_n25_α:
 mov rdi, qword ptr [rbp + 6288]
 mov rsi, qword ptr [rbp + 6296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00233_n3_af
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain00233_n12_α
# IR_SUBSCRIPT x[i] variable
 xchain00233_n26_α:
 mov rdi, qword ptr [rbp + 6432]
 mov rsi, qword ptr [rbp + 6440]
 mov rdx, qword ptr [rbp + 6464]
 mov rcx, qword ptr [rbp + 6472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00233_n3_af
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 jmp xchain00233_n29_α
# IR_ASSIGN gva
 xchain00233_n27_α:
 mov rax, qword ptr [rbp + 5856]
 mov rdx, qword ptr [rbp + 5864]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain00233_n28_α
# IR_VAR
 xchain00233_n28_α:
 mov rax, qword ptr [rbp + 6832]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 6840]
 mov qword ptr [rbp + 5336], rax
 jmp xchain00233_n30_α
# IR_DEREF variable -> value
 xchain00233_n29_α:
 mov rdi, qword ptr [rbp + 6496]
 mov rsi, qword ptr [rbp + 6504]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00233_n3_af
 mov qword ptr [rbp + 6528], rax
 mov qword ptr [rbp + 6536], rdx
 jmp xchain00233_n13_α
# IR_FIELD_GET
 xchain00233_n30_α:
 mov rdi, qword ptr [rip + .Lx00243_0]
 mov rsi, qword ptr [rbp + 5328]
 mov rdx, qword ptr [rbp + 5336]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n31_α
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 jmp xchain00233_n32_α
.Lx00243_0:
 .quad .Lx00243_0_s
.Lx00243_0_s:
 .string "ind"
# IR_VAR
 xchain00233_n31_α:
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 5192], rax
 jmp xchain00233_n33_α
# IR_LIST_BANG
 xchain00233_n32_α:
 mov qword ptr [rbp + 5280], 0
.Lx00244_0:
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 5280]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp rax, 99
 je xchain00233_n31_α
 jmp xchain00233_n35_α
 xchain00233_n32_β:
 inc qword ptr [rbp + 5280]
 jmp .Lx00244_0
# IR_LIT_INTEGER
 xchain00233_n33_α:
 mov qword ptr [rbp + 5216], 6
 mov rax, qword ptr [rip + .Lx00245_0]
 mov qword ptr [rbp + 5224], rax
 jmp xchain00233_n36_α
.Lx00245_0:
 .quad 2
# IR_LIT_INTEGER
 xchain00233_n34_α:
 mov qword ptr [rbp + 5072], 6
 mov rax, qword ptr [rip + .Lx00246_0]
 mov qword ptr [rbp + 5080], rax
 jmp xchain00233_n37_α
.Lx00246_0:
 .quad 0
 xchain00233_n35_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5264]
 mov rdx, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 jmp xchain00233_n38_α
 xchain00233_n36_α:
# BOX IR_CALL sortf(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5136]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5144], rax
# marshal arg1 = producer-box slot [zr+5216] -> [zr+5152]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5160], rax
  .section .rodata
  .Lrkfn804: .string "sortf"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn804]
 lea rsi, [rbp + 5136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp eax, 99
 je xchain00233_n34_α
 jmp xchain00233_n39_α
 xchain00233_n36_β:
 jmp xchain00233_n34_α
 xchain00233_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5072]
 mov rdx, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain00233_n40_α
# IR_BOUND
 xchain00233_n38_α:
 mov qword ptr [rbp + 5360], rsp
 jmp xchain00233_n41_α
 xchain00233_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain00233_n34_α
# IR_VAR
 xchain00233_n40_α:
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 4864], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 4872], rax
 jmp xchain00233_n42_α
# IR_VAR
 xchain00233_n41_α:
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 5480], rax
 jmp xchain00233_n44_α
# IR_LIST_BANG
 xchain00233_n42_α:
 mov qword ptr [rbp + 4848], 0
.Lx00247_0:
 mov rdi, qword ptr [rbp + 4864]
 mov rsi, qword ptr [rbp + 4872]
 mov rdx, qword ptr [rbp + 4848]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 cmp rax, 99
 je xchain00233_n43_α
 jmp xchain00233_n46_α
 xchain00233_n42_β:
 inc qword ptr [rbp + 4848]
 jmp .Lx00247_0
# IR_VAR
 xchain00233_n43_α:
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 80], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 88], rax
 jmp xchain00233_n47_α
# IR_VAR_REF
 xchain00233_n44_α:
 mov rax, 4294967305
 mov rdx, 1879052288
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain00233_n48_α
# IR_UNMARK
 xchain00233_n45_α:
 mov rsp, qword ptr [rbp + 5360]
 jmp xchain00233_n32_β
# IR_FIELD_GET lv
 xchain00233_n46_α:
 mov rdi, qword ptr [rip + .Lx00248_0]
 mov rsi, qword ptr [rbp + 4832]
 mov rdx, qword ptr [rbp + 4840]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain00233_n43_α
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain00233_n49_α
.Lx00248_0:
 .quad .Lx00248_0_s
.Lx00248_0_s:
 .string "n"
# IR_LIST_BANG
 xchain00233_n47_α:
 mov qword ptr [rbp + 64], 0
.Lx00249_0:
 mov rdi, qword ptr [rbp + 80]
 mov rsi, qword ptr [rbp + 88]
 mov rdx, qword ptr [rbp + 64]
 call rt_list_bang_at@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp rax, 99
 je main_ω
 jmp xchain00233_n50_α
 xchain00233_n47_β:
 inc qword ptr [rbp + 64]
 jmp .Lx00249_0
# IR_VAR
 xchain00233_n48_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 5536], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 5544], rax
 jmp xchain00233_n51_α
# IR_VAR
 xchain00233_n49_α:
 mov rax, qword ptr [rbp + 6816]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 6824]
 mov qword ptr [rbp + 5000], rax
 jmp xchain00233_n52_α
 xchain00233_n50_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 48]
 mov rdx, qword ptr [rbp + 56]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain00233_n53_α
# IR_SUBSCRIPT x[i] variable
 xchain00233_n51_α:
 mov rdi, qword ptr [rbp + 5504]
 mov rsi, qword ptr [rbp + 5512]
 mov rdx, qword ptr [rbp + 5536]
 mov rcx, qword ptr [rbp + 5544]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00233_n45_α
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 jmp xchain00233_n54_α
# IR_LIT_INTEGER
 xchain00233_n52_α:
 mov qword ptr [rbp + 5024], 6
 mov rax, qword ptr [rip + .Lx00250_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain00233_n55_α
.Lx00250_0:
 .quad 1
# IR_BOUND
 xchain00233_n53_α:
 mov qword ptr [rbp + 112], rsp
 jmp xchain00233_n56_α
# IR_LIT_INTEGER
 xchain00233_n54_α:
 mov qword ptr [rbp + 5696], 6
 mov rax, qword ptr [rip + .Lx00251_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain00233_n57_α
.Lx00251_0:
 .quad 0
# IR_COERCE_NUMERIC
 xchain00233_n55_α:
 mov eax, dword ptr [rbp + 6816]
 cmp eax, 7
 je .Lx00252_1
 cmp eax, 6
 jne .Lx00252_0
 mov eax, dword ptr [rbp + 5024]
 cmp eax, 6
 jne .Lx00252_0
.Lx00252_1:
 mov rax, qword ptr [rbp + 6816]
 mov qword ptr [rbp + 4960], rax
 mov rax, qword ptr [rbp + 6824]
 mov qword ptr [rbp + 4968], rax
 jmp xchain00233_n58_α
.Lx00252_0:
 lea rdi, [rbp + 6816]
 lea rsi, [rbp + 5024]
 lea rdx, [rbp + 4960]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
 jmp xchain00233_n58_α
 xchain00233_n56_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn837: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn837]
 lea rsi, [rbp + 4784]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je xchain00233_n59_α
 jmp xchain00233_n59_α
 xchain00233_n56_β:
 jmp xchain00233_n59_α
# IR_VAR
 xchain00233_n57_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 5784], rax
 jmp xchain00233_n60_α
 xchain00233_n58_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 4960]
 cmp eax, 100
 je .Lx00253_0
 mov eax, dword ptr [rbp + 4960]
 cmp eax, 6
 jne .Lx00253_2
.Lx00253_1:
 mov rax, qword ptr [rbp + 4968]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 4928], 6
 mov qword ptr [rbp + 4936], rax
 jmp xchain00233_n61_α
.Lx00253_0:
 mov rdi, qword ptr [rbp + 4960]
 mov rsi, qword ptr [rbp + 4968]
 mov rdx, qword ptr [rbp + 5024]
 mov rcx, qword ptr [rbp + 5032]
 mov r8d, 0
 lea r9, [rbp + 4928]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain00233_n61_α
.Lx00253_2:
 mov rdi, qword ptr [rbp + 4960]
 mov rsi, qword ptr [rbp + 4968]
 mov rdx, qword ptr [rbp + 5024]
 mov rcx, qword ptr [rbp + 5032]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00233_n42_β
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain00233_n61_α
 xchain00233_n58_β:
 jmp xchain00233_n42_β
# IR_LIT_STRING
 xchain00233_n59_α:
 mov qword ptr [rbp + 4528], 1
 mov rax, qword ptr [rip + .Lx00254_0]
 mov qword ptr [rbp + 4536], rax
 jmp xchain00233_n62_α
.Lx00254_0:
 .quad .Lx00254_0_s
.Lx00254_0_s:
 .string "["
 xchain00233_n60_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5776]
 mov rdx, qword ptr [rbp + 5784]
 call rt_arg_stage@PLT
 mov edi, 2
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00255_1
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
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je xchain00233_n45_α
 jmp xchain00233_n63_α
 xchain00233_n60_β:
 jmp xchain00233_n45_α
.Lx00255_0:
 .quad .Lx00255_0_s
.Lx00255_0_s:
 .string "sortkey"
 xchain00233_n61_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4928]
 mov rdx, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain00233_n64_α
# IR_VAR
 xchain00233_n62_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 4600], rax
 jmp xchain00233_n65_α
# IR_VAR
 xchain00233_n63_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 5816], rax
 jmp xchain00233_n67_α
# IR_ASSIGN_VAR
 xchain00233_n64_α:
 mov rdi, qword ptr [rbp + 4800]
 mov rsi, qword ptr [rbp + 4808]
 mov rdx, qword ptr [rbp + 4912]
 mov rcx, qword ptr [rbp + 4920]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00233_n43_α
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 jmp xchain00233_n42_β
# IR_FIELD_GET
 xchain00233_n65_α:
 mov rdi, qword ptr [rip + .Lx00256_0]
 mov rsi, qword ptr [rbp + 4592]
 mov rdx, qword ptr [rbp + 4600]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n66_α
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain00233_n68_α
.Lx00256_0:
 .quad .Lx00256_0_s
.Lx00256_0_s:
 .string "n"
# IR_DISJUNCTION_NARY
 xchain00233_n66_α:
 mov qword ptr [rbp + 3712], 0
 mov qword ptr [rbp + 3720], 0
 mov dword ptr [rbp + 3728], 0
 jmp xchain00233_n70_α
xchain00233_n66_as:
 mov eax, dword ptr [rbp + 3728]
 cmp eax, 0
 jne .Lx00257_0
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3720], rax
 jmp xchain00233_n69_α
.Lx00257_0:
 jmp xchain00233_n69_α
 xchain00233_n66_β:
 mov eax, dword ptr [rbp + 3728]
 jmp xchain00233_n71_β
xchain00233_n66_af:
 add dword ptr [rbp + 3728], 1
 mov eax, dword ptr [rbp + 3728]
 jmp xchain00233_n69_α
 xchain00233_n67_α:
# BOX IR_CALL person(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5632]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5640], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5648]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5656], rax
# marshal arg2 = producer-box slot [zr+5808] -> [zr+5664]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5672], rax
  .section .rodata
  .Lrkfn854: .string "person"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn854]
 lea rsi, [rbp + 5632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je xchain00233_n45_α
 jmp xchain00233_n73_α
 xchain00233_n67_β:
 jmp xchain00233_n45_α
# IR_LIT_STRING
 xchain00233_n68_α:
 mov qword ptr [rbp + 4624], 1
 mov rax, qword ptr [rip + .Lx00258_0]
 mov qword ptr [rbp + 4632], rax
 jmp xchain00233_n74_α
.Lx00258_0:
 .quad .Lx00258_0_s
.Lx00258_0_s:
 .string "] "
# IR_LIT_STRING
 xchain00233_n69_α:
 mov qword ptr [rbp + 3504], 1
 mov rax, qword ptr [rip + .Lx00259_0]
 mov qword ptr [rbp + 3512], rax
 jmp xchain00233_n75_α
.Lx00259_0:
 .quad .Lx00259_0_s
.Lx00259_0_s:
 .string "b."
# IR_VAR
 xchain00233_n70_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 4376], rax
 jmp xchain00233_n76_α
 xchain00233_n70_β:
 jmp xchain00233_n66_af
 xchain00233_n71_α:
 mov qword ptr [rbp + 3904], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3936]
 mov rdx, qword ptr [rbp + 3944]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
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
 mov qword ptr [rbp + 3912], rsp
 mov rax, qword ptr [rbp + 3904]
 test rax, rax
 jne .Lx00260_5
 mov qword ptr [rbp + 3904], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00260_2
.Lx00260_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00260_2
.Lx00260_4:
 mov rax, qword ptr [rbp + 3904]
 test rax, rax
 jne .Lx00260_6
 mov qword ptr [rbp + 3904], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00260_2
.Lx00260_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00260_2
.Lx00260_1:
 call rt_faildescr@PLT
.Lx00260_2:
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 cmp eax, 99
 je xchain00233_n69_α
 jmp xchain00233_n77_α
 xchain00233_n71_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3912]
 jmp qword ptr [rsp]
.Lx00260_0:
 .quad .Lx00260_0_s
.Lx00260_0_s:
 .string "gedref"
 xchain00233_n72_α:
 jmp xchain00233_n66_as
xchain00233_n72_β:
 jmp xchain00233_n69_α
# IR_ASSIGN_VAR
 xchain00233_n73_α:
 mov rdi, qword ptr [rbp + 5568]
 mov rsi, qword ptr [rbp + 5576]
 mov rdx, qword ptr [rbp + 5616]
 mov rcx, qword ptr [rbp + 5624]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00233_n45_α
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain00233_n78_α
# IR_VAR
 xchain00233_n74_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 4736], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 4744], rax
 jmp xchain00233_n79_α
# IR_VAR
 xchain00233_n75_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 3656], rax
 jmp xchain00233_n80_α
# IR_FIELD_GET
 xchain00233_n76_α:
 mov rdi, qword ptr [rip + .Lx00261_0]
 mov rsi, qword ptr [rbp + 4368]
 mov rdx, qword ptr [rbp + 4376]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n66_af
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain00233_n82_α
.Lx00261_0:
 .quad .Lx00261_0_s
.Lx00261_0_s:
 .string "r"
 xchain00233_n77_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3824]
 mov rdx, qword ptr [rbp + 3832]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3856]
 mov rdx, qword ptr [rbp + 3864]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00262_1
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
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain00233_n71_β
 jmp xchain00233_n72_α
 xchain00233_n77_β:
 jmp xchain00233_n71_β
.Lx00262_0:
 .quad .Lx00262_0_s
.Lx00262_0_s:
 .string "refto"
 xchain00233_n78_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5472] -> [zr+5424]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5424], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5432], rax
# marshal arg1 = producer-box slot [zr+5600] -> [zr+5440]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5448], rax
  .section .rodata
  .Lrkfn871: .string "put"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn871]
 lea rsi, [rbp + 5424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 cmp eax, 99
 je xchain00233_n45_α
 jmp xchain00233_n45_α
 xchain00233_n78_β:
 jmp xchain00233_n45_α
# IR_FIELD_GET
 xchain00233_n79_α:
 mov rdi, qword ptr [rip + .Lx00263_0]
 mov rsi, qword ptr [rbp + 4736]
 mov rdx, qword ptr [rbp + 4744]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n66_α
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 jmp xchain00233_n83_α
.Lx00263_0:
 .quad .Lx00263_0_s
.Lx00263_0_s:
 .string "r"
# IR_FIELD_GET
 xchain00233_n80_α:
 mov rdi, qword ptr [rip + .Lx00264_0]
 mov rsi, qword ptr [rbp + 3648]
 mov rdx, qword ptr [rbp + 3656]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n81_α
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain00233_n84_α
.Lx00264_0:
 .quad .Lx00264_0_s
.Lx00264_0_s:
 .string "r"
# KEYWORD_null
 xchain00233_n81_α:
 mov qword ptr [rbp + 3408], 0
 mov qword ptr [rbp + 3416], 0
 jmp xchain00233_n85_α
 xchain00233_n81_β:
 jmp xchain00233_n89_α
# IR_LIT_STRING
 xchain00233_n82_α:
 mov qword ptr [rbp + 4400], 1
 mov rax, qword ptr [rip + .Lx00265_0]
 mov qword ptr [rbp + 4408], rax
 jmp xchain00233_n86_α
.Lx00265_0:
 .quad .Lx00265_0_s
.Lx00265_0_s:
 .string "FAMC"
 xchain00233_n83_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4704]
 mov rdx, qword ptr [rbp + 4712]
 call rt_arg_stage@PLT
 mov edi, 10
 mov esi, 1
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00266_1
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
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 cmp eax, 99
 je xchain00233_n66_α
 jmp xchain00233_n87_α
 xchain00233_n83_β:
 jmp xchain00233_n66_α
.Lx00266_0:
 .quad .Lx00266_0_s
.Lx00266_0_s:
 .string "gedlnf"
# IR_LIT_STRING
 xchain00233_n84_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx00267_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain00233_n88_α
.Lx00267_0:
 .quad .Lx00267_0_s
.Lx00267_0_s:
 .string "BIRT"
 xchain00233_n85_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3408]
 mov rdx, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain00233_n89_α
 xchain00233_n86_α:
 mov qword ptr [rbp + 4304], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4336]
 mov rdx, qword ptr [rbp + 4344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4400]
 mov rdx, qword ptr [rbp + 4408]
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
 mov qword ptr [rbp + 4312], rsp
 mov rax, qword ptr [rbp + 4304]
 test rax, rax
 jne .Lx00268_5
 mov qword ptr [rbp + 4304], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00268_2
.Lx00268_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00268_2
.Lx00268_4:
 mov rax, qword ptr [rbp + 4304]
 test rax, rax
 jne .Lx00268_6
 mov qword ptr [rbp + 4304], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00268_2
.Lx00268_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00268_2
.Lx00268_1:
 call rt_faildescr@PLT
.Lx00268_2:
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 cmp eax, 99
 je xchain00233_n66_af
 jmp xchain00233_n90_α
 xchain00233_n86_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4312]
 jmp qword ptr [rsp]
.Lx00268_0:
 .quad .Lx00268_0_s
.Lx00268_0_s:
 .string "gedref"
 xchain00233_n87_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4528] -> [zr+4448]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4456], rax
# marshal arg1 = producer-box slot [zr+4560] -> [zr+4464]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4472], rax
# marshal arg2 = producer-box slot [zr+4624] -> [zr+4480]
 mov rax, qword ptr [rbp + 4624]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4632]
 mov qword ptr [rbp + 4488], rax
# marshal arg3 = producer-box slot [zr+4656] -> [zr+4496]
 mov rax, qword ptr [rbp + 4656]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 4504], rax
  .section .rodata
  .Lrkfn883: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn883]
 lea rsi, [rbp + 4448]
 mov edx, 4
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je xchain00233_n66_α
 jmp xchain00233_n66_α
 xchain00233_n87_β:
 jmp xchain00233_n66_α
 xchain00233_n88_α:
 mov qword ptr [rbp + 3584], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3616]
 mov rdx, qword ptr [rbp + 3624]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00269_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00269_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00269_3]
 lea rdx, [rip + .Lx00269_4]
 jmp rax
.Lx00269_3:
 mov qword ptr [rbp + 3592], rsp
 mov rax, qword ptr [rbp + 3584]
 test rax, rax
 jne .Lx00269_5
 mov qword ptr [rbp + 3584], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00269_2
.Lx00269_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00269_2
.Lx00269_4:
 mov rax, qword ptr [rbp + 3584]
 test rax, rax
 jne .Lx00269_6
 mov qword ptr [rbp + 3584], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00269_2
.Lx00269_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00269_2
.Lx00269_1:
 call rt_faildescr@PLT
.Lx00269_2:
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 cmp eax, 99
 je xchain00233_n81_α
 jmp xchain00233_n91_α
 xchain00233_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3592]
 jmp qword ptr [rsp]
.Lx00269_0:
 .quad .Lx00269_0_s
.Lx00269_0_s:
 .string "gedsub"
# IR_VAR
 xchain00233_n89_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 584], rax
 jmp xchain00233_n92_α
 xchain00233_n90_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 4256]
 mov rdx, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain00233_n94_α
 xchain00233_n91_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3504]
 mov rdx, qword ptr [rbp + 3512]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00270_1
 lea rcx, [rip + .Lx00270_3]
 lea rdx, [rip + .Lx00270_4]
 jmp rax
.Lx00270_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00270_2
.Lx00270_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00270_2
.Lx00270_1:
 call rt_faildescr@PLT
.Lx00270_2:
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 cmp eax, 99
 je xchain00233_n88_β
 jmp xchain00233_n81_α
 xchain00233_n91_β:
 jmp xchain00233_n88_β
.Lx00270_0:
 .quad .Lx00270_0_s
.Lx00270_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00233_n92_α:
 mov rdi, qword ptr [rip + .Lx00271_0]
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n93_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain00233_n95_α
.Lx00271_0:
 .quad .Lx00271_0_s
.Lx00271_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00233_n93_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx00272_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain00233_n96_α
.Lx00272_0:
 .quad .Lx00272_0_s
.Lx00272_0_s:
 .string "d."
# IR_LIT_STRING
 xchain00233_n94_α:
 mov qword ptr [rbp + 4064], 1
 mov rax, qword ptr [rip + .Lx00273_0]
 mov qword ptr [rbp + 4072], rax
 jmp xchain00233_n97_α
.Lx00273_0:
 .quad .Lx00273_0_s
.Lx00273_0_s:
 .string "father"
# IR_LIT_STRING
 xchain00233_n95_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx00274_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain00233_n98_α
.Lx00274_0:
 .quad .Lx00274_0_s
.Lx00274_0_s:
 .string "FAMS"
# IR_VAR
 xchain00233_n96_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 392], rax
 jmp xchain00233_n99_α
# IR_VAR
 xchain00233_n97_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 4184], rax
 jmp xchain00233_n00028_α
 xchain00233_n98_α:
 mov qword ptr [rbp + 512], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 544]
 mov rdx, qword ptr [rbp + 552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
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
 mov qword ptr [rbp + 520], rsp
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx00275_5
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00275_2
.Lx00275_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00275_2
.Lx00275_4:
 mov rax, qword ptr [rbp + 512]
 test rax, rax
 jne .Lx00275_6
 mov qword ptr [rbp + 512], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00275_2
.Lx00275_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00275_2
.Lx00275_1:
 call rt_faildescr@PLT
.Lx00275_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain00233_n93_α
 jmp xchain00233_n00031_α
 xchain00233_n98_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 520]
 jmp qword ptr [rsp]
.Lx00275_0:
 .quad .Lx00275_0_s
.Lx00275_0_s:
 .string "gedref"
# IR_FIELD_GET
 xchain00233_n99_α:
 mov rdi, qword ptr [rip + .Lx00276_0]
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n00026_α
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain00233_n00030_α
.Lx00276_0:
 .quad .Lx00276_0_s
.Lx00276_0_s:
 .string "r"
# IR_UNMARK
 xchain00233_n00026_α:
 mov rsp, qword ptr [rbp + 112]
 jmp xchain00233_n47_β
# IR_LIT_STRING
 xchain00233_n00028_α:
 mov qword ptr [rbp + 4208], 1
 mov rax, qword ptr [rip + .Lx00277_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain00233_n00032_α
.Lx00277_0:
 .quad .Lx00277_0_s
.Lx00277_0_s:
 .string "HUSB"
# IR_LIT_STRING
 xchain00233_n00029_α:
 mov qword ptr [rbp + 3824], 1
 mov rax, qword ptr [rip + .Lx00278_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain00233_n00001_α
.Lx00278_0:
 .quad .Lx00278_0_s
.Lx00278_0_s:
 .string "mother"
 xchain00233_n00031_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain00233_n00034_α
# IR_LIT_STRING
 xchain00233_n00030_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx00279_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain00233_n00002_α
.Lx00279_0:
 .quad .Lx00279_0_s
.Lx00279_0_s:
 .string "DEAT"
 xchain00233_n00032_α:
 mov qword ptr [rbp + 4144], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4176]
 mov rdx, qword ptr [rbp + 4184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4208]
 mov rdx, qword ptr [rbp + 4216]
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
 mov qword ptr [rbp + 4152], rsp
 mov rax, qword ptr [rbp + 4144]
 test rax, rax
 jne .Lx00280_5
 mov qword ptr [rbp + 4144], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00280_2
.Lx00280_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00280_2
.Lx00280_4:
 mov rax, qword ptr [rbp + 4144]
 test rax, rax
 jne .Lx00280_6
 mov qword ptr [rbp + 4144], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00280_2
.Lx00280_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00280_2
.Lx00280_1:
 call rt_faildescr@PLT
.Lx00280_2:
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain00233_n00029_α
 jmp xchain00233_n00035_α
 xchain00233_n00032_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4152]
 jmp qword ptr [rsp]
.Lx00280_0:
 .quad .Lx00280_0_s
.Lx00280_0_s:
 .string "gedref"
# IR_VAR
 xchain00233_n00001_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 3944], rax
 jmp xchain00233_n00036_α
# IR_BOUND
 xchain00233_n00034_α:
 mov qword ptr [rbp + 640], rsp
 jmp xchain00233_n00037_α
 xchain00233_n00002_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
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
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx00281_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00281_2
.Lx00281_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00281_2
.Lx00281_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx00281_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00281_2
.Lx00281_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00281_2
.Lx00281_1:
 call rt_faildescr@PLT
.Lx00281_2:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain00233_n00026_α
 jmp xchain00233_n00038_α
 xchain00233_n00002_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx00281_0:
 .quad .Lx00281_0_s
.Lx00281_0_s:
 .string "gedsub"
 xchain00233_n00035_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 4064]
 mov rdx, qword ptr [rbp + 4072]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4096]
 mov rdx, qword ptr [rbp + 4104]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00282_1
 lea rcx, [rip + .Lx00282_3]
 lea rdx, [rip + .Lx00282_4]
 jmp rax
.Lx00282_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00282_2
.Lx00282_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00282_2
.Lx00282_1:
 call rt_faildescr@PLT
.Lx00282_2:
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je xchain00233_n00032_β
 jmp xchain00233_n00029_α
 xchain00233_n00035_β:
 jmp xchain00233_n00032_β
.Lx00282_0:
 .quad .Lx00282_0_s
.Lx00282_0_s:
 .string "refto"
# IR_LIT_STRING
 xchain00233_n00036_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx00283_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain00233_n71_α
.Lx00283_0:
 .quad .Lx00283_0_s
.Lx00283_0_s:
 .string "WIFE"
# IR_LIT_STRING
 xchain00233_n00037_α:
 mov qword ptr [rbp + 3216], 1
 mov rax, qword ptr [rip + .Lx00284_0]
 mov qword ptr [rbp + 3224], rax
 jmp xchain00233_n00039_α
.Lx00284_0:
 .quad .Lx00284_0_s
.Lx00284_0_s:
 .string "m."
 xchain00233_n00038_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00285_1
 lea rcx, [rip + .Lx00285_3]
 lea rdx, [rip + .Lx00285_4]
 jmp rax
.Lx00285_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00285_2
.Lx00285_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00285_2
.Lx00285_1:
 call rt_faildescr@PLT
.Lx00285_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain00233_n00002_β
 jmp xchain00233_n00040_α
 xchain00233_n00038_β:
 jmp xchain00233_n00002_β
.Lx00285_0:
 .quad .Lx00285_0_s
.Lx00285_0_s:
 .string "event"
# IR_VAR
 xchain00233_n00039_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 3336], rax
 jmp xchain00233_n00197_α
 xchain00233_n00040_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 168], rax
 jmp xchain00233_n00026_α
xchain00233_n00040_β:
 jmp xchain00233_n00026_α
# IR_LIT_STRING
 xchain00233_n00197_α:
 mov qword ptr [rbp + 3360], 1
 mov rax, qword ptr [rip + .Lx00286_0]
 mov qword ptr [rbp + 3368], rax
 jmp xchain00233_n00201_α
.Lx00286_0:
 .quad .Lx00286_0_s
.Lx00286_0_s:
 .string "MARR"
# IR_LIT_STRING
 xchain00233_n00199_α:
 mov qword ptr [rbp + 2864], 1
 mov rax, qword ptr [rip + .Lx00287_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain00233_n00200_α
.Lx00287_0:
 .quad .Lx00287_0_s
.Lx00287_0_s:
 .string "  husb"
 xchain00233_n00201_α:
 mov qword ptr [rbp + 3296], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3328]
 mov rdx, qword ptr [rbp + 3336]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00288_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00288_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00288_3]
 lea rdx, [rip + .Lx00288_4]
 jmp rax
.Lx00288_3:
 mov qword ptr [rbp + 3304], rsp
 mov rax, qword ptr [rbp + 3296]
 test rax, rax
 jne .Lx00288_5
 mov qword ptr [rbp + 3296], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00288_2
.Lx00288_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00288_2
.Lx00288_4:
 mov rax, qword ptr [rbp + 3296]
 test rax, rax
 jne .Lx00288_6
 mov qword ptr [rbp + 3296], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00288_2
.Lx00288_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00288_2
.Lx00288_1:
 call rt_faildescr@PLT
.Lx00288_2:
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain00233_n00199_α
 jmp xchain00233_n00203_α
 xchain00233_n00201_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3304]
 jmp qword ptr [rsp]
.Lx00288_0:
 .quad .Lx00288_0_s
.Lx00288_0_s:
 .string "gedsub"
# IR_VAR
 xchain00233_n00200_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 2968], rax
 jmp xchain00233_n00204_α
 xchain00233_n00203_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 3216]
 mov rdx, qword ptr [rbp + 3224]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3248]
 mov rdx, qword ptr [rbp + 3256]
 call rt_arg_stage@PLT
 mov edi, 0
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00289_1
 lea rcx, [rip + .Lx00289_3]
 lea rdx, [rip + .Lx00289_4]
 jmp rax
.Lx00289_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00289_2
.Lx00289_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00289_2
.Lx00289_1:
 call rt_faildescr@PLT
.Lx00289_2:
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je xchain00233_n00201_β
 jmp xchain00233_n00208_α
 xchain00233_n00203_β:
 jmp xchain00233_n00201_β
.Lx00289_0:
 .quad .Lx00289_0_s
.Lx00289_0_s:
 .string "event"
# IR_FIELD_GET
 xchain00233_n00204_α:
 mov rdi, qword ptr [rip + .Lx00290_0]
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n00206_α
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain00233_n00207_α
.Lx00290_0:
 .quad .Lx00290_0_s
.Lx00290_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00233_n00206_α:
 mov qword ptr [rbp + 2512], 1
 mov rax, qword ptr [rip + .Lx00291_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain00233_n00210_α
.Lx00291_0:
 .quad .Lx00291_0_s
.Lx00291_0_s:
 .string "  wife"
 xchain00233_n00208_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 3152]
 mov rdx, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain00233_n00199_α
# IR_VAR
 xchain00233_n00207_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 3080], rax
 jmp xchain00233_n00211_α
# IR_VAR
 xchain00233_n00210_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 2616], rax
 jmp xchain00233_n00213_α
# IR_LIT_STRING
 xchain00233_n00211_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx00292_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain00233_n00214_α
.Lx00292_0:
 .quad .Lx00292_0_s
.Lx00292_0_s:
 .string "HUSB"
# IR_FIELD_GET
 xchain00233_n00213_α:
 mov rdi, qword ptr [rip + .Lx00293_0]
 mov rsi, qword ptr [rbp + 2608]
 mov rdx, qword ptr [rbp + 2616]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n00003_α
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain00233_n00004_α
.Lx00293_0:
 .quad .Lx00293_0_s
.Lx00293_0_s:
 .string "r"
# IR_DISJUNCTION_NARY
 xchain00233_n00003_α:
 mov qword ptr [rbp + 2256], 0
 mov qword ptr [rbp + 2264], 0
 mov dword ptr [rbp + 2272], 0
 jmp xchain00233_n00217_α
xchain00233_n00003_as:
 mov eax, dword ptr [rbp + 2272]
 cmp eax, 0
 jne .Lx00294_0
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2264], rax
 jmp xchain00233_n00005_α
.Lx00294_0:
 jmp xchain00233_n00005_α
 xchain00233_n00003_β:
 mov eax, dword ptr [rbp + 2272]
 jmp xchain00233_n00005_α
xchain00233_n00003_af:
 add dword ptr [rbp + 2272], 1
 mov eax, dword ptr [rbp + 2272]
 jmp xchain00233_n00005_α
 xchain00233_n00214_α:
 mov qword ptr [rbp + 3040], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3072]
 mov rdx, qword ptr [rbp + 3080]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3104]
 mov rdx, qword ptr [rbp + 3112]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00295_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00295_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00295_3]
 lea rdx, [rip + .Lx00295_4]
 jmp rax
.Lx00295_3:
 mov qword ptr [rbp + 3048], rsp
 mov rax, qword ptr [rbp + 3040]
 test rax, rax
 jne .Lx00295_5
 mov qword ptr [rbp + 3040], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00295_2
.Lx00295_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00295_2
.Lx00295_4:
 mov rax, qword ptr [rbp + 3040]
 test rax, rax
 jne .Lx00295_6
 mov qword ptr [rbp + 3040], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00295_2
.Lx00295_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00295_2
.Lx00295_1:
 call rt_faildescr@PLT
.Lx00295_2:
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je xchain00233_n00206_α
 jmp xchain00233_n00218_α
 xchain00233_n00214_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3048]
 jmp qword ptr [rsp]
.Lx00295_0:
 .quad .Lx00295_0_s
.Lx00295_0_s:
 .string "gedref"
# IR_VAR
 xchain00233_n00004_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 2728], rax
 jmp xchain00233_n00221_α
# IR_DISJUNCTION_NARY
 xchain00233_n00005_α:
 mov qword ptr [rbp + 704], 0
 mov qword ptr [rbp + 712], 0
 mov dword ptr [rbp + 720], 0
 jmp xchain00233_n00006_α
xchain00233_n00005_as:
 mov eax, dword ptr [rbp + 720]
 cmp eax, 0
 jne .Lx00296_0
 jmp xchain00233_n00222_α
.Lx00296_0:
 jmp xchain00233_n00222_α
 xchain00233_n00005_β:
 mov eax, dword ptr [rbp + 720]
 jmp xchain00233_n00227_α
xchain00233_n00005_af:
 add dword ptr [rbp + 720], 1
 mov eax, dword ptr [rbp + 720]
 jmp xchain00233_n00227_α
# IR_VAR
 xchain00233_n00217_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 2408], rax
 jmp xchain00233_n00224_α
 xchain00233_n00217_β:
 jmp xchain00233_n00003_af
 xchain00233_n00219_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2304]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2312], rax
  .section .rodata
  .Lrkfn953: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn953]
 lea rsi, [rbp + 2304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain00233_n00005_α
 jmp xchain00233_n00003_as
 xchain00233_n00219_β:
 jmp xchain00233_n00005_α
 xchain00233_n00218_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2992]
 mov rcx, qword ptr [rbp + 3000]
 mov r8d, 23
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00233_n00214_β
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2904], rax
 jmp xchain00233_n00007_α
# IR_LIT_STRING
 xchain00233_n00221_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx00297_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain00233_n00226_α
.Lx00297_0:
 .quad .Lx00297_0_s
.Lx00297_0_s:
 .string "WIFE"
 xchain00233_n00222_α:
# IR_CONJUNCTION value-forward copy
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 696], rax
 jmp xchain00233_n00227_α
xchain00233_n00222_β:
 jmp xchain00233_n00227_α
# IR_DISJUNCTION_NARY
 xchain00233_n00006_α:
 mov qword ptr [rbp + 1808], 0
 mov qword ptr [rbp + 1816], 0
 mov dword ptr [rbp + 1824], 0
 jmp xchain00233_n00230_α
xchain00233_n00006_as:
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 0
 jne .Lx00298_0
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00233_n00229_α
.Lx00298_0:
 cmp eax, 1
 jne .Lx00298_1
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1816], rax
 jmp xchain00233_n00229_α
.Lx00298_1:
 jmp xchain00233_n00229_α
 xchain00233_n00006_β:
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 0
 je xchain00233_n00232_β
 jmp xchain00233_n00006_af
xchain00233_n00006_af:
 add dword ptr [rbp + 1824], 1
 mov eax, dword ptr [rbp + 1824]
 cmp eax, 1
 je xchain00233_n00008_α
 jmp xchain00233_n00005_af
# IR_UNOP
 xchain00233_n00224_α:
 mov eax, dword ptr [rbp + 6784]
 cmp eax, 99
 je xchain00233_n00003_af
 cmp eax, 0
 je xchain00233_n00003_af
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 2376], rax
 jmp xchain00233_n00299_α
 xchain00233_n00007_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2864]
 mov rdx, qword ptr [rbp + 2872]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00300_1
 lea rcx, [rip + .Lx00300_3]
 lea rdx, [rip + .Lx00300_4]
 jmp rax
.Lx00300_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00300_2
.Lx00300_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00300_2
.Lx00300_1:
 call rt_faildescr@PLT
.Lx00300_2:
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 cmp eax, 99
 je xchain00233_n00214_β
 jmp xchain00233_n00301_α
 xchain00233_n00007_β:
 jmp xchain00233_n00214_β
.Lx00300_0:
 .quad .Lx00300_0_s
.Lx00300_0_s:
 .string "refto"
 xchain00233_n00226_α:
 mov qword ptr [rbp + 2688], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2720]
 mov rdx, qword ptr [rbp + 2728]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2752]
 mov rdx, qword ptr [rbp + 2760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00302_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00302_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00302_3]
 lea rdx, [rip + .Lx00302_4]
 jmp rax
.Lx00302_3:
 mov qword ptr [rbp + 2696], rsp
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx00302_5
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00302_2
.Lx00302_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00302_2
.Lx00302_4:
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx00302_6
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00302_2
.Lx00302_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00302_2
.Lx00302_1:
 call rt_faildescr@PLT
.Lx00302_2:
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain00233_n00003_α
 jmp xchain00233_n00303_α
 xchain00233_n00226_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2696]
 jmp qword ptr [rsp]
.Lx00302_0:
 .quad .Lx00302_0_s
.Lx00302_0_s:
 .string "gedref"
# IR_UNMARK
 xchain00233_n00227_α:
 mov rsp, qword ptr [rbp + 640]
 jmp xchain00233_n98_β
# IR_VAR
 xchain00233_n00229_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 840], rax
 jmp xchain00233_n00304_α
# IR_VAR
 xchain00233_n00230_α:
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 1912], rax
 jmp xchain00233_n00305_α
 xchain00233_n00230_β:
 jmp xchain00233_n00006_af
 xchain00233_n00232_α:
 mov qword ptr [rbp + 1984], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00306_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00306_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00306_3]
 lea rdx, [rip + .Lx00306_4]
 jmp rax
.Lx00306_3:
 mov qword ptr [rbp + 1992], rsp
 mov rax, qword ptr [rbp + 1984]
 test rax, rax
 jne .Lx00306_5
 mov qword ptr [rbp + 1984], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00306_2
.Lx00306_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00306_2
.Lx00306_4:
 mov rax, qword ptr [rbp + 1984]
 test rax, rax
 jne .Lx00306_6
 mov qword ptr [rbp + 1984], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00306_2
.Lx00306_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00306_2
.Lx00306_1:
 call rt_faildescr@PLT
.Lx00306_2:
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain00233_n00006_af
 jmp xchain00233_n00307_α
 xchain00233_n00232_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1992]
 jmp qword ptr [rsp]
.Lx00306_0:
 .quad .Lx00306_0_s
.Lx00306_0_s:
 .string "gedref"
# IR_VAR
 xchain00233_n00008_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 2200], rax
 jmp xchain00233_n00308_α
 xchain00233_n00008_β:
 jmp xchain00233_n00309_α
 xchain00233_n00307_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1936]
 mov rcx, qword ptr [rbp + 1944]
 mov r8d, 22
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00233_n00232_β
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1848], rax
 jmp xchain00233_n00006_as
 xchain00233_n00307_β:
 jmp xchain00233_n00232_β
# KEYWORD_null
 xchain00233_n00309_α:
 mov qword ptr [rbp + 2080], 0
 mov qword ptr [rbp + 2088], 0
 jmp xchain00233_n00006_as
 xchain00233_n00309_β:
 jmp xchain00233_n00006_af
# IR_LIT_STRING
 xchain00233_n00299_α:
 mov qword ptr [rbp + 2336], 1
 mov rax, qword ptr [rip + .Lx00310_0]
 mov qword ptr [rbp + 2344], rax
 jmp xchain00233_n00219_α
.Lx00310_0:
 .quad .Lx00310_0_s
.Lx00310_0_s:
 .string "   m."
 xchain00233_n00301_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain00233_n00206_α
 xchain00233_n00303_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2640]
 mov rcx, qword ptr [rbp + 2648]
 mov r8d, 23
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00233_n00226_β
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2552], rax
 jmp xchain00233_n00311_α
# IR_LIT_STRING
 xchain00233_n00304_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx00312_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain00233_n00009_α
.Lx00312_0:
 .quad .Lx00312_0_s
.Lx00312_0_s:
 .string "CHIL"
# IR_FIELD_GET
 xchain00233_n00305_α:
 mov rdi, qword ptr [rip + .Lx00313_0]
 mov rsi, qword ptr [rbp + 1904]
 mov rdx, qword ptr [rbp + 1912]
 call dat_field_get@PLT
 cmp eax, 99
 je xchain00233_n00006_af
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain00233_n00314_α
.Lx00313_0:
 .quad .Lx00313_0_s
.Lx00313_0_s:
 .string "r"
# IR_LIT_STRING
 xchain00233_n00308_α:
 mov qword ptr [rbp + 2224], 1
 mov rax, qword ptr [rip + .Lx00315_0]
 mov qword ptr [rbp + 2232], rax
 jmp xchain00233_n00316_α
.Lx00315_0:
 .quad .Lx00315_0_s
.Lx00315_0_s:
 .string "HUSB"
 xchain00233_n00311_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2512]
 mov rdx, qword ptr [rbp + 2520]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2544]
 mov rdx, qword ptr [rbp + 2552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00317_1
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
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je xchain00233_n00226_β
 jmp xchain00233_n00318_α
 xchain00233_n00311_β:
 jmp xchain00233_n00226_β
.Lx00317_0:
 .quad .Lx00317_0_s
.Lx00317_0_s:
 .string "refto"
 xchain00233_n00009_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
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
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx00319_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00319_2
.Lx00319_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00319_2
.Lx00319_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx00319_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00319_2
.Lx00319_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00319_2
.Lx00319_1:
 call rt_faildescr@PLT
.Lx00319_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain00233_n00227_α
 jmp xchain00233_n00010_α
 xchain00233_n00009_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx00319_0:
 .quad .Lx00319_0_s
.Lx00319_0_s:
 .string "gedref"
# IR_VAR
 xchain00233_n00314_α:
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 2024], rax
 jmp xchain00233_n00320_α
 xchain00233_n00316_α:
 mov qword ptr [rbp + 2160], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2192]
 mov rdx, qword ptr [rbp + 2200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2224]
 mov rdx, qword ptr [rbp + 2232]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00321_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00321_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00321_3]
 lea rdx, [rip + .Lx00321_4]
 jmp rax
.Lx00321_3:
 mov qword ptr [rbp + 2168], rsp
 mov rax, qword ptr [rbp + 2160]
 test rax, rax
 jne .Lx00321_5
 mov qword ptr [rbp + 2160], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00321_2
.Lx00321_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00321_2
.Lx00321_4:
 mov rax, qword ptr [rbp + 2160]
 test rax, rax
 jne .Lx00321_6
 mov qword ptr [rbp + 2160], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00321_2
.Lx00321_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00321_2
.Lx00321_1:
 call rt_faildescr@PLT
.Lx00321_2:
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain00233_n00309_α
 jmp xchain00233_n00006_as
 xchain00233_n00316_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2168]
 jmp qword ptr [rsp]
.Lx00321_0:
 .quad .Lx00321_0_s
.Lx00321_0_s:
 .string "gedref"
 xchain00233_n00318_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 2448]
 mov rdx, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain00233_n00003_α
 xchain00233_n00010_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain00233_n00011_α
# IR_LIT_STRING
 xchain00233_n00320_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx00322_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain00233_n00232_α
.Lx00322_0:
 .quad .Lx00322_0_s
.Lx00322_0_s:
 .string "HUSB"
# IR_BOUND
 xchain00233_n00011_α:
 mov qword ptr [rbp + 896], rsp
 jmp xchain00233_n00012_α
# IR_DISJUNCTION_NARY
 xchain00233_n00012_α:
 mov qword ptr [rbp + 976], 0
 mov qword ptr [rbp + 984], 0
 mov dword ptr [rbp + 992], 0
 jmp xchain00233_n00323_α
xchain00233_n00012_as:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 0
 jne .Lx00324_0
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 984], rax
 jmp xchain00233_n00325_α
.Lx00324_0:
 cmp eax, 1
 jne .Lx00324_1
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 984], rax
 jmp xchain00233_n00325_α
.Lx00324_1:
 jmp xchain00233_n00325_α
 xchain00233_n00012_β:
 mov eax, dword ptr [rbp + 992]
 cmp eax, 0
 je xchain00233_n00013_β
 jmp xchain00233_n00012_af
xchain00233_n00012_af:
 add dword ptr [rbp + 992], 1
 mov eax, dword ptr [rbp + 992]
 cmp eax, 1
 je xchain00233_n00326_α
 jmp xchain00233_n00327_α
# IR_LIT_STRING
 xchain00233_n00325_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx00328_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain00233_n00329_α
.Lx00328_0:
 .quad .Lx00328_0_s
.Lx00328_0_s:
 .string "M"
# IR_VAR
 xchain00233_n00323_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 1096], rax
 jmp xchain00233_n00330_α
 xchain00233_n00323_β:
 jmp xchain00233_n00012_af
 xchain00233_n00013_α:
 mov qword ptr [rbp + 1056], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00331_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00331_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx00331_3]
 lea rdx, [rip + .Lx00331_4]
 jmp rax
.Lx00331_3:
 mov qword ptr [rbp + 1064], rsp
 mov rax, qword ptr [rbp + 1056]
 test rax, rax
 jne .Lx00331_5
 mov qword ptr [rbp + 1056], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00331_2
.Lx00331_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx00331_2
.Lx00331_4:
 mov rax, qword ptr [rbp + 1056]
 test rax, rax
 jne .Lx00331_6
 mov qword ptr [rbp + 1056], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00331_2
.Lx00331_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx00331_2
.Lx00331_1:
 call rt_faildescr@PLT
.Lx00331_2:
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain00233_n00012_af
 jmp xchain00233_n00012_as
 xchain00233_n00013_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1064]
 jmp qword ptr [rsp]
.Lx00331_0:
 .quad .Lx00331_0_s
.Lx00331_0_s:
 .string "gedval"
# IR_LIT_STRING
 xchain00233_n00326_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx00332_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain00233_n00012_as
 xchain00233_n00326_β:
 jmp xchain00233_n00012_af
.Lx00332_0:
 .quad .Lx00332_0_s
.Lx00332_0_s:
 .string ""
 xchain00233_n00329_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+1760]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1776]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1784], rax
  .section .rodata
  .Lrkfn1004: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1004]
 lea rsi, [rbp + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain00233_n00015_α
 jmp xchain00233_n00014_α
 xchain00233_n00329_β:
 jmp xchain00233_n00015_α
# IR_LIT_STRING
 xchain00233_n00330_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx00333_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain00233_n00013_α
.Lx00333_0:
 .quad .Lx00333_0_s
.Lx00333_0_s:
 .string "SEX"
# IR_LIT_STRING
 xchain00233_n00014_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx00334_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain00233_n00335_α
.Lx00334_0:
 .quad .Lx00334_0_s
.Lx00334_0_s:
 .string "   son"
# IR_LIT_STRING
 xchain00233_n00015_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx00336_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain00233_n00337_α
.Lx00336_0:
 .quad .Lx00336_0_s
.Lx00336_0_s:
 .string "F"
# IR_VAR
 xchain00233_n00335_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 1704], rax
 jmp xchain00233_n00338_α
 xchain00233_n00337_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+1520]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1536]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1544], rax
  .section .rodata
  .Lrkfn1011: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1011]
 lea rsi, [rbp + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain00233_n00339_α
 jmp xchain00233_n00016_α
 xchain00233_n00337_β:
 jmp xchain00233_n00339_α
 xchain00233_n00338_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00340_1
 lea rcx, [rip + .Lx00340_3]
 lea rdx, [rip + .Lx00340_4]
 jmp rax
.Lx00340_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00340_2
.Lx00340_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00340_2
.Lx00340_1:
 call rt_faildescr@PLT
.Lx00340_2:
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain00233_n00327_α
 jmp xchain00233_n00341_α
 xchain00233_n00338_β:
 jmp xchain00233_n00327_α
.Lx00340_0:
 .quad .Lx00340_0_s
.Lx00340_0_s:
 .string "refto"
# IR_UNMARK
 xchain00233_n00327_α:
 mov rsp, qword ptr [rbp + 896]
 jmp xchain00233_n00009_β
# IR_LIT_STRING
 xchain00233_n00016_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx00342_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain00233_n00017_α
.Lx00342_0:
 .quad .Lx00342_0_s
.Lx00342_0_s:
 .string "   dau"
# IR_LIT_STRING
 xchain00233_n00339_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx00343_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain00233_n00344_α
.Lx00343_0:
 .quad .Lx00343_0_s
.Lx00343_0_s:
 .string " child"
 xchain00233_n00341_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1600]
 mov rdx, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain00233_n00345_α
# IR_VAR
 xchain00233_n00017_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 1464], rax
 jmp xchain00233_n00346_α
# IR_VAR
 xchain00233_n00344_α:
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 1288], rax
 jmp xchain00233_n00347_α
# IR_VAR
 xchain00233_n00345_α:
 mov rax, qword ptr [rbp + 6800]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 6808]
 mov qword ptr [rbp + 952], rax
 jmp xchain00233_n00327_α
 xchain00233_n00346_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1424]
 mov rdx, qword ptr [rbp + 1432]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00348_1
 lea rcx, [rip + .Lx00348_3]
 lea rdx, [rip + .Lx00348_4]
 jmp rax
.Lx00348_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00348_2
.Lx00348_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00348_2
.Lx00348_1:
 call rt_faildescr@PLT
.Lx00348_2:
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain00233_n00327_α
 jmp xchain00233_n00018_α
 xchain00233_n00346_β:
 jmp xchain00233_n00327_α
.Lx00348_0:
 .quad .Lx00348_0_s
.Lx00348_0_s:
 .string "refto"
 xchain00233_n00347_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx00349_1
 lea rcx, [rip + .Lx00349_3]
 lea rdx, [rip + .Lx00349_4]
 jmp rax
.Lx00349_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx00349_2
.Lx00349_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx00349_2
.Lx00349_1:
 call rt_faildescr@PLT
.Lx00349_2:
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain00233_n00327_α
 jmp xchain00233_n00350_α
 xchain00233_n00347_β:
 jmp xchain00233_n00327_α
.Lx00349_0:
 .quad .Lx00349_0_s
.Lx00349_0_s:
 .string "refto"
 xchain00233_n00018_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain00233_n00345_α
 xchain00233_n00350_α:
# IR_ASSIGN local
 mov rax, qword ptr [rbp + 1184]
 mov rdx, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain00233_n00345_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 6728]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 6728]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
