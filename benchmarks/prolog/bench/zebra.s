  .intel_syntax noprefix
  .text
  .globl proc_zebra$2F1_α
proc_zebra$2F1_α:
#=======================================================================================================================
    .global proc_zebra$2F1_α
    .global proc_zebra$2F1_β
    .global proc_zebra$2F1_γ
    .global proc_zebra$2F1_ω
  sub rsp, 10592
  mov [rsp + 10568], rcx
  mov [rsp + 10576], rdx
  mov [rsp + 10584], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 9304], rsp
  mov rdi, rsp
  mov esi, 9280
  mov edx, 10560
  call rt_jmp_frame_lexprep2@PLT
proc_zebra$2F1_α_body:
lea rax, [rip + xchain0_n195_β]
mov qword ptr [rbp + 9280], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_zebra$2F1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_zebra$2F1_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9216], rax
 mov qword ptr [rbp + 9224], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9216] -> [zr+9184]
 mov rax, qword ptr [rbp + 9216]
 mov qword ptr [rbp + 9184], rax
 mov rax, qword ptr [rbp + 9224]
 mov qword ptr [rbp + 9192], rax
# marshal arg1 = producer-box slot [zr+9248] -> [zr+9200]
 mov rax, qword ptr [rbp + 9248]
 mov qword ptr [rbp + 9200], rax
 mov rax, qword ptr [rbp + 9256]
 mov qword ptr [rbp + 9208], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 9184]
 lea r8, [rbp + 9184]
.Lx6_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx6_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx6_41
 cmp esi, 1
 jne .Lx6_55
 mov r8, rax
 jmp .Lx6_40
.Lx6_55:
 cmp esi, 2
 jne .Lx6_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx6_41
 mov r8, rax
 jmp .Lx6_40
.Lx6_56:
 cmp eax, 13
 jne .Lx6_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx6_41
 cmp rax, r8
 je .Lx6_41
 mov r8, rax
 jmp .Lx6_40
.Lx6_41:
 lea r9, [rbp + 9200]
.Lx6_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx6_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx6_43
 cmp esi, 1
 jne .Lx6_57
 mov r9, rax
 jmp .Lx6_42
.Lx6_57:
 cmp esi, 2
 jne .Lx6_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx6_43
 mov r9, rax
 jmp .Lx6_42
.Lx6_58:
 cmp eax, 13
 jne .Lx6_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx6_43
 cmp rax, r9
 je .Lx6_43
 mov r9, rax
 jmp .Lx6_42
.Lx6_43:
 cmp r8, r9
 je .Lx6_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx6_44
 cmp eax, 99
 je .Lx6_44
 cmp eax, 13
 jne .Lx6_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx6_44
 jmp .Lx6_45
.Lx6_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx6_53
 cmp eax, 99
 je .Lx6_53
 cmp eax, 13
 jne .Lx6_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx6_53
 jmp .Lx6_46
.Lx6_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx6_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx6_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx6_51
.Lx6_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx6_47
 cmp eax, 99
 je .Lx6_47
 cmp eax, 13
 jne .Lx6_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx6_47
 jmp .Lx6_48
.Lx6_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx6_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx6_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx6_51
.Lx6_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx6_49
 cmp edx, 14
 je .Lx6_53
 jmp .Lx6_52
.Lx6_49:
 cmp edx, 14
 je .Lx6_52
 cmp ecx, 7
 je .Lx6_53
 cmp edx, 7
 je .Lx6_53
 cmp ecx, 6
 jne .Lx6_50
 cmp edx, 6
 jne .Lx6_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx6_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx6_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx6_51
 jmp .Lx6_52
.Lx6_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx6_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx6_53
.Lx6_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx6_54
.Lx6_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx6_54
.Lx6_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx6_54:
 mov qword ptr [rbp + 9168], rax
 mov qword ptr [rbp + 9176], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_zebra$2F1_ω
 jmp proc_zebra$2F1_ω
 xchain0_n5_β:
 jmp proc_zebra$2F1_ω
 xchain0_n6_α:
 lea rsi, [rbp + 9136]
 call proc_houses$2F1_dcα
 jmp .Lx11_2
.Lx11_2:
 mov qword ptr [rbp + 9088], rax
 mov qword ptr [rbp + 9096], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "houses/1"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 9024], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 9032], rax
 jmp xchain0_n8_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 8736], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 8744], rax
 jmp xchain0_n9_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "red"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 8768], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 8776], rax
 jmp xchain0_n10_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "english"
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10512]
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 jmp xchain0_n11_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10528]
 mov qword ptr [rbp + 8832], rax
 mov qword ptr [rbp + 8840], rdx
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10544]
 mov qword ptr [rbp + 8864], rax
 mov qword ptr [rbp + 8872], rdx
 jmp xchain0_n13_α
 xchain0_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9024] -> [zr+8912]
 mov rax, qword ptr [rbp + 9024]
 mov qword ptr [rbp + 8912], rax
 mov rax, qword ptr [rbp + 9032]
 mov qword ptr [rbp + 8920], rax
# marshal arg1 = producer-box slot [zr+8736] -> [zr+8928]
 mov rax, qword ptr [rbp + 8736]
 mov qword ptr [rbp + 8928], rax
 mov rax, qword ptr [rbp + 8744]
 mov qword ptr [rbp + 8936], rax
# marshal arg2 = producer-box slot [zr+8768] -> [zr+8944]
 mov rax, qword ptr [rbp + 8768]
 mov qword ptr [rbp + 8944], rax
 mov rax, qword ptr [rbp + 8776]
 mov qword ptr [rbp + 8952], rax
# marshal arg3 = producer-box slot [zr+8800] -> [zr+8960]
 mov rax, qword ptr [rbp + 8800]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 8808]
 mov qword ptr [rbp + 8968], rax
# marshal arg4 = producer-box slot [zr+8832] -> [zr+8976]
 mov rax, qword ptr [rbp + 8832]
 mov qword ptr [rbp + 8976], rax
 mov rax, qword ptr [rbp + 8840]
 mov qword ptr [rbp + 8984], rax
# marshal arg5 = producer-box slot [zr+8864] -> [zr+8992]
 mov rax, qword ptr [rbp + 8864]
 mov qword ptr [rbp + 8992], rax
 mov rax, qword ptr [rbp + 8872]
 mov qword ptr [rbp + 9000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8912]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 9056], rax
 mov qword ptr [rbp + 9064], rdx
 jmp xchain0_n15_α
 xchain0_n15_α:
 mov qword ptr [rbp + 8704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 8896]
 mov rdx, qword ptr [rbp + 8904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 9056]
 mov rdx, qword ptr [rbp + 9064]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx25_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx25_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx25_3]
 lea rdx, [rip + .Lx25_4]
 jmp rax
.Lx25_3:
 mov qword ptr [rbp + 8712], rsp
 mov rax, qword ptr [rbp + 8704]
 test rax, rax
 jne .Lx25_5
 mov qword ptr [rbp + 8704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx25_2
.Lx25_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx25_2
.Lx25_4:
 mov rax, qword ptr [rbp + 8704]
 test rax, rax
 jne .Lx25_6
 mov qword ptr [rbp + 8704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx25_2
.Lx25_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx25_2
.Lx25_1:
 call rt_faildescr@PLT
.Lx25_2:
 mov qword ptr [rbp + 8656], rax
 mov qword ptr [rbp + 8664], rdx
 cmp eax, 99
 je xchain0_n6_β
 jmp xchain0_n16_α
 xchain0_n15_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 8712]
 jmp qword ptr [rsp]
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 8592], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 8600], rax
 jmp xchain0_n17_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10464]
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 jmp xchain0_n18_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 8336], 1
 mov rax, qword ptr [rip + .Lx29_0]
 mov qword ptr [rbp + 8344], rax
 jmp xchain0_n19_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "spanish"
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rbp + 8368], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 8376], rax
 jmp xchain0_n20_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "dog"
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10480]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain0_n21_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10496]
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 jmp xchain0_n22_α
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8592] -> [zr+8480]
 mov rax, qword ptr [rbp + 8592]
 mov qword ptr [rbp + 8480], rax
 mov rax, qword ptr [rbp + 8600]
 mov qword ptr [rbp + 8488], rax
# marshal arg1 = producer-box slot [zr+8304] -> [zr+8496]
 mov rax, qword ptr [rbp + 8304]
 mov qword ptr [rbp + 8496], rax
 mov rax, qword ptr [rbp + 8312]
 mov qword ptr [rbp + 8504], rax
# marshal arg2 = producer-box slot [zr+8336] -> [zr+8512]
 mov rax, qword ptr [rbp + 8336]
 mov qword ptr [rbp + 8512], rax
 mov rax, qword ptr [rbp + 8344]
 mov qword ptr [rbp + 8520], rax
# marshal arg3 = producer-box slot [zr+8368] -> [zr+8528]
 mov rax, qword ptr [rbp + 8368]
 mov qword ptr [rbp + 8528], rax
 mov rax, qword ptr [rbp + 8376]
 mov qword ptr [rbp + 8536], rax
# marshal arg4 = producer-box slot [zr+8400] -> [zr+8544]
 mov rax, qword ptr [rbp + 8400]
 mov qword ptr [rbp + 8544], rax
 mov rax, qword ptr [rbp + 8408]
 mov qword ptr [rbp + 8552], rax
# marshal arg5 = producer-box slot [zr+8432] -> [zr+8560]
 mov rax, qword ptr [rbp + 8432]
 mov qword ptr [rbp + 8560], rax
 mov rax, qword ptr [rbp + 8440]
 mov qword ptr [rbp + 8568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8480]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8464], rax
 mov qword ptr [rbp + 8472], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 8624], rax
 mov qword ptr [rbp + 8632], rdx
 jmp xchain0_n24_α
 xchain0_n24_α:
 mov qword ptr [rbp + 8272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 8464]
 mov rdx, qword ptr [rbp + 8472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8624]
 mov rdx, qword ptr [rbp + 8632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx39_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx39_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx39_3]
 lea rdx, [rip + .Lx39_4]
 jmp rax
.Lx39_3:
 mov qword ptr [rbp + 8280], rsp
 mov rax, qword ptr [rbp + 8272]
 test rax, rax
 jne .Lx39_5
 mov qword ptr [rbp + 8272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx39_2
.Lx39_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx39_2
.Lx39_4:
 mov rax, qword ptr [rbp + 8272]
 test rax, rax
 jne .Lx39_6
 mov qword ptr [rbp + 8272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx39_2
.Lx39_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx39_2
.Lx39_1:
 call rt_faildescr@PLT
.Lx39_2:
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 cmp eax, 99
 je xchain0_n15_β
 jmp xchain0_n25_α
 xchain0_n24_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 8280]
 jmp qword ptr [rsp]
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 8160], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 8168], rax
 jmp xchain0_n26_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [rbp + 7872], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 7880], rax
 jmp xchain0_n27_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "green"
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10416]
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 jmp xchain0_n28_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10432]
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 jmp xchain0_n29_α
# IR_LIT_STRING
 xchain0_n29_α:
 mov qword ptr [rbp + 7968], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 7976], rax
 jmp xchain0_n30_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "coffee"
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10448]
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 jmp xchain0_n31_α
 xchain0_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8160] -> [zr+8048]
 mov rax, qword ptr [rbp + 8160]
 mov qword ptr [rbp + 8048], rax
 mov rax, qword ptr [rbp + 8168]
 mov qword ptr [rbp + 8056], rax
# marshal arg1 = producer-box slot [zr+7872] -> [zr+8064]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 8064], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 8072], rax
# marshal arg2 = producer-box slot [zr+7904] -> [zr+8080]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 8080], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 8088], rax
# marshal arg3 = producer-box slot [zr+7936] -> [zr+8096]
 mov rax, qword ptr [rbp + 7936]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 7944]
 mov qword ptr [rbp + 8104], rax
# marshal arg4 = producer-box slot [zr+7968] -> [zr+8112]
 mov rax, qword ptr [rbp + 7968]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 7976]
 mov qword ptr [rbp + 8120], rax
# marshal arg5 = producer-box slot [zr+8000] -> [zr+8128]
 mov rax, qword ptr [rbp + 8000]
 mov qword ptr [rbp + 8128], rax
 mov rax, qword ptr [rbp + 8008]
 mov qword ptr [rbp + 8136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8048]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 jmp xchain0_n33_α
 xchain0_n33_α:
 mov qword ptr [rbp + 7840], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 8032]
 mov rdx, qword ptr [rbp + 8040]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8192]
 mov rdx, qword ptr [rbp + 8200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx53_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx53_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx53_3]
 lea rdx, [rip + .Lx53_4]
 jmp rax
.Lx53_3:
 mov qword ptr [rbp + 7848], rsp
 mov rax, qword ptr [rbp + 7840]
 test rax, rax
 jne .Lx53_5
 mov qword ptr [rbp + 7840], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx53_2
.Lx53_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx53_2
.Lx53_4:
 mov rax, qword ptr [rbp + 7840]
 test rax, rax
 jne .Lx53_6
 mov qword ptr [rbp + 7840], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx53_2
.Lx53_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx53_2
.Lx53_1:
 call rt_faildescr@PLT
.Lx53_2:
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain0_n24_β
 jmp xchain0_n34_α
 xchain0_n33_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 7848]
 jmp qword ptr [rsp]
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n34_α:
 mov qword ptr [rbp + 7728], 1
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 7736], rax
 jmp xchain0_n35_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10368]
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain0_n36_α
# IR_LIT_STRING
 xchain0_n36_α:
 mov qword ptr [rbp + 7472], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 7480], rax
 jmp xchain0_n37_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "ukrainian"
# IR_VAR_REF
 xchain0_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10384]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain0_n38_α
# IR_LIT_STRING
 xchain0_n38_α:
 mov qword ptr [rbp + 7536], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 7544], rax
 jmp xchain0_n39_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "tea"
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10400]
 mov qword ptr [rbp + 7568], rax
 mov qword ptr [rbp + 7576], rdx
 jmp xchain0_n40_α
 xchain0_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7728] -> [zr+7616]
 mov rax, qword ptr [rbp + 7728]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7736]
 mov qword ptr [rbp + 7624], rax
# marshal arg1 = producer-box slot [zr+7440] -> [zr+7632]
 mov rax, qword ptr [rbp + 7440]
 mov qword ptr [rbp + 7632], rax
 mov rax, qword ptr [rbp + 7448]
 mov qword ptr [rbp + 7640], rax
# marshal arg2 = producer-box slot [zr+7472] -> [zr+7648]
 mov rax, qword ptr [rbp + 7472]
 mov qword ptr [rbp + 7648], rax
 mov rax, qword ptr [rbp + 7480]
 mov qword ptr [rbp + 7656], rax
# marshal arg3 = producer-box slot [zr+7504] -> [zr+7664]
 mov rax, qword ptr [rbp + 7504]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7512]
 mov qword ptr [rbp + 7672], rax
# marshal arg4 = producer-box slot [zr+7536] -> [zr+7680]
 mov rax, qword ptr [rbp + 7536]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7544]
 mov qword ptr [rbp + 7688], rax
# marshal arg5 = producer-box slot [zr+7568] -> [zr+7696]
 mov rax, qword ptr [rbp + 7568]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7576]
 mov qword ptr [rbp + 7704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7616]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain0_n42_α
 xchain0_n42_α:
 mov qword ptr [rbp + 7408], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 7600]
 mov rdx, qword ptr [rbp + 7608]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx67_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx67_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx67_3]
 lea rdx, [rip + .Lx67_4]
 jmp rax
.Lx67_3:
 mov qword ptr [rbp + 7416], rsp
 mov rax, qword ptr [rbp + 7408]
 test rax, rax
 jne .Lx67_5
 mov qword ptr [rbp + 7408], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx67_2
.Lx67_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx67_2
.Lx67_4:
 mov rax, qword ptr [rbp + 7408]
 test rax, rax
 jne .Lx67_6
 mov qword ptr [rbp + 7408], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx67_2
.Lx67_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx67_2
.Lx67_1:
 call rt_faildescr@PLT
.Lx67_2:
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 cmp eax, 99
 je xchain0_n33_β
 jmp xchain0_n43_α
 xchain0_n42_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 7416]
 jmp qword ptr [rsp]
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n43_α:
 mov qword ptr [rbp + 6976], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 6984], rax
 jmp xchain0_n44_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n44_α:
 mov qword ptr [rbp + 6688], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 6696], rax
 jmp xchain0_n45_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "green"
# IR_VAR_REF
 xchain0_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain0_n46_α
# IR_VAR_REF
 xchain0_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 jmp xchain0_n47_α
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10272]
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 jmp xchain0_n48_α
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 jmp xchain0_n49_α
 xchain0_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6976] -> [zr+6864]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6864], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6872], rax
# marshal arg1 = producer-box slot [zr+6688] -> [zr+6880]
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [rbp + 6880], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 6888], rax
# marshal arg2 = producer-box slot [zr+6720] -> [zr+6896]
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 6896], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 6904], rax
# marshal arg3 = producer-box slot [zr+6752] -> [zr+6912]
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 6920], rax
# marshal arg4 = producer-box slot [zr+6784] -> [zr+6928]
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 6936], rax
# marshal arg5 = producer-box slot [zr+6816] -> [zr+6944]
 mov rax, qword ptr [rbp + 6816]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 6824]
 mov qword ptr [rbp + 6952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6864]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n50_α:
 mov qword ptr [rbp + 7296], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 7304], rax
 jmp xchain0_n51_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n51_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain0_n52_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "ivory"
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain0_n53_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 jmp xchain0_n54_α
# IR_VAR_REF
 xchain0_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10336]
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain0_n55_α
# IR_VAR_REF
 xchain0_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10352]
 mov qword ptr [rbp + 7136], rax
 mov qword ptr [rbp + 7144], rdx
 jmp xchain0_n56_α
 xchain0_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7296] -> [zr+7184]
 mov rax, qword ptr [rbp + 7296]
 mov qword ptr [rbp + 7184], rax
 mov rax, qword ptr [rbp + 7304]
 mov qword ptr [rbp + 7192], rax
# marshal arg1 = producer-box slot [zr+7008] -> [zr+7200]
 mov rax, qword ptr [rbp + 7008]
 mov qword ptr [rbp + 7200], rax
 mov rax, qword ptr [rbp + 7016]
 mov qword ptr [rbp + 7208], rax
# marshal arg2 = producer-box slot [zr+7040] -> [zr+7216]
 mov rax, qword ptr [rbp + 7040]
 mov qword ptr [rbp + 7216], rax
 mov rax, qword ptr [rbp + 7048]
 mov qword ptr [rbp + 7224], rax
# marshal arg3 = producer-box slot [zr+7072] -> [zr+7232]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7232], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7240], rax
# marshal arg4 = producer-box slot [zr+7104] -> [zr+7248]
 mov rax, qword ptr [rbp + 7104]
 mov qword ptr [rbp + 7248], rax
 mov rax, qword ptr [rbp + 7112]
 mov qword ptr [rbp + 7256], rax
# marshal arg5 = producer-box slot [zr+7136] -> [zr+7264]
 mov rax, qword ptr [rbp + 7136]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7144]
 mov qword ptr [rbp + 7272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7184]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7168], rax
 mov qword ptr [rbp + 7176], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain0_n58_α
 xchain0_n58_α:
 mov qword ptr [rbp + 6656], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6848]
 mov rdx, qword ptr [rbp + 6856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7168]
 mov rdx, qword ptr [rbp + 7176]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 7328]
 mov rdx, qword ptr [rbp + 7336]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx93_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx93_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx93_3]
 lea rdx, [rip + .Lx93_4]
 jmp rax
.Lx93_3:
 mov qword ptr [rbp + 6664], rsp
 mov rax, qword ptr [rbp + 6656]
 test rax, rax
 jne .Lx93_5
 mov qword ptr [rbp + 6656], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx93_2
.Lx93_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx93_2
.Lx93_4:
 mov rax, qword ptr [rbp + 6656]
 test rax, rax
 jne .Lx93_6
 mov qword ptr [rbp + 6656], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx93_2
.Lx93_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx93_2
.Lx93_1:
 call rt_faildescr@PLT
.Lx93_2:
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 cmp eax, 99
 je xchain0_n42_β
 jmp xchain0_n59_α
 xchain0_n58_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6664]
 jmp qword ptr [rsp]
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "right_of/3"
# IR_LIT_STRING
 xchain0_n59_α:
 mov qword ptr [rbp + 6528], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 6536], rax
 jmp xchain0_n60_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10192]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain0_n61_α
# IR_VAR_REF
 xchain0_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10208]
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 jmp xchain0_n62_α
# IR_LIT_STRING
 xchain0_n62_α:
 mov qword ptr [rbp + 6304], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 6312], rax
 jmp xchain0_n63_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "snails"
# IR_VAR_REF
 xchain0_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10224]
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain0_n64_α
# IR_LIT_STRING
 xchain0_n64_α:
 mov qword ptr [rbp + 6368], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 6376], rax
 jmp xchain0_n65_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "winstons"
 xchain0_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6528] -> [zr+6416]
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 6416], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 6424], rax
# marshal arg1 = producer-box slot [zr+6240] -> [zr+6432]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6440], rax
# marshal arg2 = producer-box slot [zr+6272] -> [zr+6448]
 mov rax, qword ptr [rbp + 6272]
 mov qword ptr [rbp + 6448], rax
 mov rax, qword ptr [rbp + 6280]
 mov qword ptr [rbp + 6456], rax
# marshal arg3 = producer-box slot [zr+6304] -> [zr+6464]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6472], rax
# marshal arg4 = producer-box slot [zr+6336] -> [zr+6480]
 mov rax, qword ptr [rbp + 6336]
 mov qword ptr [rbp + 6480], rax
 mov rax, qword ptr [rbp + 6344]
 mov qword ptr [rbp + 6488], rax
# marshal arg5 = producer-box slot [zr+6368] -> [zr+6496]
 mov rax, qword ptr [rbp + 6368]
 mov qword ptr [rbp + 6496], rax
 mov rax, qword ptr [rbp + 6376]
 mov qword ptr [rbp + 6504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6416]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain0_n67_α
 xchain0_n67_α:
 mov qword ptr [rbp + 6208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 6400]
 mov rdx, qword ptr [rbp + 6408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 6560]
 mov rdx, qword ptr [rbp + 6568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx107_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx107_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx107_3]
 lea rdx, [rip + .Lx107_4]
 jmp rax
.Lx107_3:
 mov qword ptr [rbp + 6216], rsp
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx107_5
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx107_2
.Lx107_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx107_2
.Lx107_4:
 mov rax, qword ptr [rbp + 6208]
 test rax, rax
 jne .Lx107_6
 mov qword ptr [rbp + 6208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx107_2
.Lx107_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx107_2
.Lx107_1:
 call rt_faildescr@PLT
.Lx107_2:
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 cmp eax, 99
 je xchain0_n58_β
 jmp xchain0_n68_α
 xchain0_n67_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 6216]
 jmp qword ptr [rsp]
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n68_α:
 mov qword ptr [rbp + 6096], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 6104], rax
 jmp xchain0_n69_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n69_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain0_n70_α
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "yellow"
# IR_VAR_REF
 xchain0_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10144]
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 jmp xchain0_n71_α
# IR_VAR_REF
 xchain0_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10160]
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 jmp xchain0_n72_α
# IR_VAR_REF
 xchain0_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10176]
 mov qword ptr [rbp + 5904], rax
 mov qword ptr [rbp + 5912], rdx
 jmp xchain0_n73_α
# IR_LIT_STRING
 xchain0_n73_α:
 mov qword ptr [rbp + 5936], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rbp + 5944], rax
 jmp xchain0_n74_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "kools"
 xchain0_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6096] -> [zr+5984]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 5984], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 5992], rax
# marshal arg1 = producer-box slot [zr+5808] -> [zr+6000]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 6000], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 6008], rax
# marshal arg2 = producer-box slot [zr+5840] -> [zr+6016]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 6024], rax
# marshal arg3 = producer-box slot [zr+5872] -> [zr+6032]
 mov rax, qword ptr [rbp + 5872]
 mov qword ptr [rbp + 6032], rax
 mov rax, qword ptr [rbp + 5880]
 mov qword ptr [rbp + 6040], rax
# marshal arg4 = producer-box slot [zr+5904] -> [zr+6048]
 mov rax, qword ptr [rbp + 5904]
 mov qword ptr [rbp + 6048], rax
 mov rax, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 6056], rax
# marshal arg5 = producer-box slot [zr+5936] -> [zr+6064]
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 6072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5984]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 6128], rax
 mov qword ptr [rbp + 6136], rdx
 jmp xchain0_n76_α
 xchain0_n76_α:
 mov qword ptr [rbp + 5776], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5968]
 mov rdx, qword ptr [rbp + 5976]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 6128]
 mov rdx, qword ptr [rbp + 6136]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx121_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx121_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx121_3]
 lea rdx, [rip + .Lx121_4]
 jmp rax
.Lx121_3:
 mov qword ptr [rbp + 5784], rsp
 mov rax, qword ptr [rbp + 5776]
 test rax, rax
 jne .Lx121_5
 mov qword ptr [rbp + 5776], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx121_2
.Lx121_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx121_2
.Lx121_4:
 mov rax, qword ptr [rbp + 5776]
 test rax, rax
 jne .Lx121_6
 mov qword ptr [rbp + 5776], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx121_2
.Lx121_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx121_2
.Lx121_1:
 call rt_faildescr@PLT
.Lx121_2:
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 cmp eax, 99
 je xchain0_n67_β
 jmp xchain0_n77_α
 xchain0_n76_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 5784]
 jmp qword ptr [rsp]
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "my_member/2"
# IR_VAR_REF
 xchain0_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 jmp xchain0_n78_α
# IR_LIT_STRING
 xchain0_n78_α:
 mov qword ptr [rbp + 5696], 1
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain0_n79_α
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n79_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10128]
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain0_n80_α
# IR_LIT_STRING
 xchain0_n80_α:
 mov qword ptr [rbp + 5552], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain0_n81_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10112]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain0_n82_α
# IR_LIT_STRING
 xchain0_n82_α:
 mov qword ptr [rbp + 5408], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain0_n83_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "."
# IR_LIT_STRING
 xchain0_n83_α:
 mov qword ptr [rbp + 5296], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 5304], rax
 jmp xchain0_n84_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10048]
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 jmp xchain0_n85_α
# IR_VAR_REF
 xchain0_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10064]
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain0_n86_α
# IR_VAR_REF
 xchain0_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10080]
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 jmp xchain0_n87_α
# IR_LIT_STRING
 xchain0_n87_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain0_n88_α
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "milk"
# IR_VAR_REF
 xchain0_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10096]
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 jmp xchain0_n89_α
 xchain0_n89_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5296] -> [zr+5184]
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 5192], rax
# marshal arg1 = producer-box slot [zr+5008] -> [zr+5200]
 mov rax, qword ptr [rbp + 5008]
 mov qword ptr [rbp + 5200], rax
 mov rax, qword ptr [rbp + 5016]
 mov qword ptr [rbp + 5208], rax
# marshal arg2 = producer-box slot [zr+5040] -> [zr+5216]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 5216], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 5224], rax
# marshal arg3 = producer-box slot [zr+5072] -> [zr+5232]
 mov rax, qword ptr [rbp + 5072]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5080]
 mov qword ptr [rbp + 5240], rax
# marshal arg4 = producer-box slot [zr+5104] -> [zr+5248]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5256], rax
# marshal arg5 = producer-box slot [zr+5136] -> [zr+5264]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5264], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5184]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 cmp eax, 99
 je proc_zebra$2F1_ω
 jmp xchain0_n90_α
 xchain0_n89_β:
 jmp proc_zebra$2F1_ω
# IR_LIT_STRING
 xchain0_n90_α:
 mov qword ptr [rbp + 4976], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 4984], rax
 jmp xchain0_n91_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10032]
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain0_n92_α
# IR_LIT_STRING
 xchain0_n92_α:
 mov qword ptr [rbp + 4832], 1
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain0_n93_α
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10016]
 mov qword ptr [rbp + 4720], rax
 mov qword ptr [rbp + 4728], rdx
 jmp xchain0_n94_α
# IR_LIT_STRING
 xchain0_n94_α:
 mov qword ptr [rbp + 4688], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 4696], rax
 jmp xchain0_n95_α
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "[]"
 xchain0_n95_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4832] -> [zr+4768]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4776], rax
# marshal arg1 = producer-box slot [zr+4720] -> [zr+4784]
 mov rax, qword ptr [rbp + 4720]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4728]
 mov qword ptr [rbp + 4792], rax
# marshal arg2 = producer-box slot [zr+4688] -> [zr+4800]
 mov rax, qword ptr [rbp + 4688]
 mov qword ptr [rbp + 4800], rax
 mov rax, qword ptr [rbp + 4696]
 mov qword ptr [rbp + 4808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je proc_zebra$2F1_ω
 jmp xchain0_n96_α
 xchain0_n95_β:
 jmp proc_zebra$2F1_ω
 xchain0_n96_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4976] -> [zr+4912]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 4920], rax
# marshal arg1 = producer-box slot [zr+4864] -> [zr+4928]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 4928], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 4936], rax
# marshal arg2 = producer-box slot [zr+4752] -> [zr+4944]
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 4952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4912]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 cmp eax, 99
 je proc_zebra$2F1_ω
 jmp xchain0_n97_α
 xchain0_n96_β:
 jmp proc_zebra$2F1_ω
 xchain0_n97_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5408] -> [zr+5344]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5352], rax
# marshal arg1 = producer-box slot [zr+5168] -> [zr+5360]
 mov rax, qword ptr [rbp + 5168]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5176]
 mov qword ptr [rbp + 5368], rax
# marshal arg2 = producer-box slot [zr+4896] -> [zr+5376]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 5384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5344]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je proc_zebra$2F1_ω
 jmp xchain0_n98_α
 xchain0_n97_β:
 jmp proc_zebra$2F1_ω
 xchain0_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5552] -> [zr+5488]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5496], rax
# marshal arg1 = producer-box slot [zr+5440] -> [zr+5504]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5512], rax
# marshal arg2 = producer-box slot [zr+5328] -> [zr+5520]
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 5528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je proc_zebra$2F1_ω
 jmp xchain0_n99_α
 xchain0_n98_β:
 jmp proc_zebra$2F1_ω
 xchain0_n99_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5632]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5640], rax
# marshal arg1 = producer-box slot [zr+5584] -> [zr+5648]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5656], rax
# marshal arg2 = producer-box slot [zr+5472] -> [zr+5664]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n100_α
 xchain0_n99_β:
 jmp xchain0_n5_α
 xchain0_n100_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4656] -> [zr+4624]
 mov rax, qword ptr [rbp + 4656]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 4632], rax
# marshal arg1 = producer-box slot [zr+5616] -> [zr+4640]
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 4648], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4624]
 lea r8, [rbp + 4624]
.Lx154_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx154_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx154_41
 cmp esi, 1
 jne .Lx154_55
 mov r8, rax
 jmp .Lx154_40
.Lx154_55:
 cmp esi, 2
 jne .Lx154_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx154_41
 mov r8, rax
 jmp .Lx154_40
.Lx154_56:
 cmp eax, 13
 jne .Lx154_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx154_41
 cmp rax, r8
 je .Lx154_41
 mov r8, rax
 jmp .Lx154_40
.Lx154_41:
 lea r9, [rbp + 4640]
.Lx154_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx154_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx154_43
 cmp esi, 1
 jne .Lx154_57
 mov r9, rax
 jmp .Lx154_42
.Lx154_57:
 cmp esi, 2
 jne .Lx154_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx154_43
 mov r9, rax
 jmp .Lx154_42
.Lx154_58:
 cmp eax, 13
 jne .Lx154_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx154_43
 cmp rax, r9
 je .Lx154_43
 mov r9, rax
 jmp .Lx154_42
.Lx154_43:
 cmp r8, r9
 je .Lx154_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx154_44
 cmp eax, 99
 je .Lx154_44
 cmp eax, 13
 jne .Lx154_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx154_44
 jmp .Lx154_45
.Lx154_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx154_53
 cmp eax, 99
 je .Lx154_53
 cmp eax, 13
 jne .Lx154_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx154_53
 jmp .Lx154_46
.Lx154_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx154_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx154_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx154_51
.Lx154_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx154_47
 cmp eax, 99
 je .Lx154_47
 cmp eax, 13
 jne .Lx154_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx154_47
 jmp .Lx154_48
.Lx154_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx154_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx154_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx154_51
.Lx154_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx154_49
 cmp edx, 14
 je .Lx154_53
 jmp .Lx154_52
.Lx154_49:
 cmp edx, 14
 je .Lx154_52
 cmp ecx, 7
 je .Lx154_53
 cmp edx, 7
 je .Lx154_53
 cmp ecx, 6
 jne .Lx154_50
 cmp edx, 6
 jne .Lx154_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx154_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx154_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx154_51
 jmp .Lx154_52
.Lx154_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx154_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx154_53
.Lx154_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx154_54
.Lx154_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx154_54
.Lx154_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx154_54:
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n101_α
 xchain0_n100_β:
 jmp xchain0_n76_β
# IR_VAR_REF
 xchain0_n101_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 jmp xchain0_n102_α
# IR_LIT_STRING
 xchain0_n102_α:
 mov qword ptr [rbp + 4544], 1
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [rbp + 4552], rax
 jmp xchain0_n103_α
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n103_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9936]
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain0_n104_α
# IR_LIT_STRING
 xchain0_n104_α:
 mov qword ptr [rbp + 4288], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain0_n105_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "norwegian"
# IR_VAR_REF
 xchain0_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9952]
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 jmp xchain0_n106_α
# IR_VAR_REF
 xchain0_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9968]
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 jmp xchain0_n107_α
# IR_VAR_REF
 xchain0_n107_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9984]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 jmp xchain0_n108_α
 xchain0_n108_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4544] -> [zr+4432]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4432], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4440], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4448]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4456], rax
# marshal arg2 = producer-box slot [zr+4288] -> [zr+4464]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4472], rax
# marshal arg3 = producer-box slot [zr+4320] -> [zr+4480]
 mov rax, qword ptr [rbp + 4320]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4328]
 mov qword ptr [rbp + 4488], rax
# marshal arg4 = producer-box slot [zr+4352] -> [zr+4496]
 mov rax, qword ptr [rbp + 4352]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4360]
 mov qword ptr [rbp + 4504], rax
# marshal arg5 = producer-box slot [zr+4384] -> [zr+4512]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4432]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n109_α
 xchain0_n108_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10000]
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 jmp xchain0_n110_α
 xchain0_n110_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4160] -> [zr+4208]
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 4216], rax
# marshal arg1 = producer-box slot [zr+4416] -> [zr+4224]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4232], rax
# marshal arg2 = producer-box slot [zr+4576] -> [zr+4240]
 mov rax, qword ptr [rbp + 4576]
 mov qword ptr [rbp + 4240], rax
 mov rax, qword ptr [rbp + 4584]
 mov qword ptr [rbp + 4248], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 4208]
 lea r8, [rbp + 4208]
.Lx170_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx170_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx170_61
 cmp esi, 1
 jne .Lx170_62
 mov r8, rax
 jmp .Lx170_60
.Lx170_62:
 cmp esi, 2
 jne .Lx170_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx170_61
 mov r8, rax
 jmp .Lx170_60
.Lx170_63:
 cmp eax, 13
 jne .Lx170_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx170_61
 cmp rax, r8
 je .Lx170_61
 mov r8, rax
 jmp .Lx170_60
.Lx170_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx170_72
 cmp eax, 99
 je .Lx170_72
 cmp eax, 13
 jne .Lx170_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx170_72
 jmp .Lx170_74
.Lx170_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx170_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx170_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx170_73
 lea r9, [rbp + 4224]
.Lx170_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx170_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx170_65
 cmp esi, 1
 jne .Lx170_66
 mov r9, rax
 jmp .Lx170_64
.Lx170_66:
 cmp esi, 2
 jne .Lx170_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx170_65
 mov r9, rax
 jmp .Lx170_64
.Lx170_67:
 cmp eax, 13
 jne .Lx170_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx170_65
 cmp rax, r9
 je .Lx170_65
 mov r9, rax
 jmp .Lx170_64
.Lx170_65:
 lea rcx, [rbp + 4240]
.Lx170_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx170_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx170_69
 cmp esi, 1
 jne .Lx170_70
 mov rcx, rax
 jmp .Lx170_68
.Lx170_70:
 cmp esi, 2
 jne .Lx170_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx170_69
 mov rcx, rax
 jmp .Lx170_68
.Lx170_71:
 cmp eax, 13
 jne .Lx170_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx170_69
 cmp rax, rcx
 je .Lx170_69
 mov rcx, rax
 jmp .Lx170_68
.Lx170_69:
 cmp r9, rcx
 je .Lx170_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx170_75
 cmp eax, 99
 je .Lx170_75
 cmp eax, 13
 jne .Lx170_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx170_75
 jmp .Lx170_72
.Lx170_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx170_76
 cmp eax, 99
 je .Lx170_76
 cmp eax, 13
 jne .Lx170_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx170_76
 jmp .Lx170_72
.Lx170_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx170_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx170_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx170_77
.Lx170_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx170_77
.Lx170_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx170_77:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n111_α
 xchain0_n110_β:
 jmp xchain0_n76_β
# IR_LIT_STRING
 xchain0_n111_α:
 mov qword ptr [rbp + 3776], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 3784], rax
 jmp xchain0_n112_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n112_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9808]
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp xchain0_n113_α
# IR_VAR_REF
 xchain0_n113_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9824]
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain0_n114_α
# IR_VAR_REF
 xchain0_n114_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9840]
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain0_n115_α
# IR_VAR_REF
 xchain0_n115_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9856]
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain0_n116_α
# IR_LIT_STRING
 xchain0_n116_α:
 mov qword ptr [rbp + 3616], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 3624], rax
 jmp xchain0_n117_α
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "chesterfields"
 xchain0_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3776] -> [zr+3664]
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 3672], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3680]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3688], rax
# marshal arg2 = producer-box slot [zr+3520] -> [zr+3696]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3696], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3704], rax
# marshal arg3 = producer-box slot [zr+3552] -> [zr+3712]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3720], rax
# marshal arg4 = producer-box slot [zr+3584] -> [zr+3728]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3736], rax
# marshal arg5 = producer-box slot [zr+3616] -> [zr+3744]
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3664]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n118_α
 xchain0_n117_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n118_α:
 mov qword ptr [rbp + 4096], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 4104], rax
 jmp xchain0_n119_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9872]
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain0_n120_α
# IR_VAR_REF
 xchain0_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9888]
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 jmp xchain0_n121_α
# IR_LIT_STRING
 xchain0_n121_α:
 mov qword ptr [rbp + 3872], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain0_n122_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "fox"
# IR_VAR_REF
 xchain0_n122_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9904]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain0_n123_α
# IR_VAR_REF
 xchain0_n123_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9920]
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain0_n124_α
 xchain0_n124_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4096] -> [zr+3984]
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 3992], rax
# marshal arg1 = producer-box slot [zr+3808] -> [zr+4000]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 4008], rax
# marshal arg2 = producer-box slot [zr+3840] -> [zr+4016]
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 4024], rax
# marshal arg3 = producer-box slot [zr+3872] -> [zr+4032]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 4040], rax
# marshal arg4 = producer-box slot [zr+3904] -> [zr+4048]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 4056], rax
# marshal arg5 = producer-box slot [zr+3936] -> [zr+4064]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 4072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3984]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n125_α
 xchain0_n124_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n125_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain0_n126_α
 xchain0_n126_α:
 mov qword ptr [rbp + 3456], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3648]
 mov rdx, qword ptr [rbp + 3656]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4128]
 mov rdx, qword ptr [rbp + 4136]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx196_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx196_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx196_3]
 lea rdx, [rip + .Lx196_4]
 jmp rax
.Lx196_3:
 mov qword ptr [rbp + 3464], rsp
 mov rax, qword ptr [rbp + 3456]
 test rax, rax
 jne .Lx196_5
 mov qword ptr [rbp + 3456], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx196_2
.Lx196_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx196_2
.Lx196_4:
 mov rax, qword ptr [rbp + 3456]
 test rax, rax
 jne .Lx196_6
 mov qword ptr [rbp + 3456], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx196_2
.Lx196_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx196_2
.Lx196_1:
 call rt_faildescr@PLT
.Lx196_2:
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n127_α
 xchain0_n126_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3464]
 jmp qword ptr [rsp]
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "next_to/3"
# IR_LIT_STRING
 xchain0_n127_α:
 mov qword ptr [rbp + 3008], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain0_n128_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9680]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain0_n129_α
# IR_VAR_REF
 xchain0_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9696]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain0_n130_α
# IR_VAR_REF
 xchain0_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9712]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain0_n131_α
# IR_VAR_REF
 xchain0_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9728]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain0_n132_α
# IR_LIT_STRING
 xchain0_n132_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain0_n133_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "kools"
 xchain0_n133_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3008] -> [zr+2896]
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2904], rax
# marshal arg1 = producer-box slot [zr+2720] -> [zr+2912]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2920], rax
# marshal arg2 = producer-box slot [zr+2752] -> [zr+2928]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2936], rax
# marshal arg3 = producer-box slot [zr+2784] -> [zr+2944]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2952], rax
# marshal arg4 = producer-box slot [zr+2816] -> [zr+2960]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2968], rax
# marshal arg5 = producer-box slot [zr+2848] -> [zr+2976]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2896]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n134_α
 xchain0_n133_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n134_α:
 mov qword ptr [rbp + 3328], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 3336], rax
 jmp xchain0_n135_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9744]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain0_n136_α
# IR_VAR_REF
 xchain0_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9760]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp xchain0_n137_α
# IR_LIT_STRING
 xchain0_n137_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain0_n138_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "horse"
# IR_VAR_REF
 xchain0_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9776]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain0_n139_α
# IR_VAR_REF
 xchain0_n139_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9792]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain0_n140_α
 xchain0_n140_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3216]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3224], rax
# marshal arg1 = producer-box slot [zr+3040] -> [zr+3232]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3240], rax
# marshal arg2 = producer-box slot [zr+3072] -> [zr+3248]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3256], rax
# marshal arg3 = producer-box slot [zr+3104] -> [zr+3264]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3272], rax
# marshal arg4 = producer-box slot [zr+3136] -> [zr+3280]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3288], rax
# marshal arg5 = producer-box slot [zr+3168] -> [zr+3296]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3216]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n141_α
 xchain0_n140_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain0_n142_α
 xchain0_n142_α:
 mov qword ptr [rbp + 2688], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3200]
 mov rdx, qword ptr [rbp + 3208]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3360]
 mov rdx, qword ptr [rbp + 3368]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx222_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx222_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx222_3]
 lea rdx, [rip + .Lx222_4]
 jmp rax
.Lx222_3:
 mov qword ptr [rbp + 2696], rsp
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx222_5
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx222_2
.Lx222_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx222_2
.Lx222_4:
 mov rax, qword ptr [rbp + 2688]
 test rax, rax
 jne .Lx222_6
 mov qword ptr [rbp + 2688], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx222_2
.Lx222_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx222_2
.Lx222_1:
 call rt_faildescr@PLT
.Lx222_2:
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain0_n126_β
 jmp xchain0_n143_α
 xchain0_n142_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2696]
 jmp qword ptr [rsp]
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "next_to/3"
# IR_LIT_STRING
 xchain0_n143_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain0_n144_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n144_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9632]
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain0_n145_α
# IR_VAR_REF
 xchain0_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9648]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain0_n146_α
# IR_VAR_REF
 xchain0_n146_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9664]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain0_n147_α
# IR_LIT_STRING
 xchain0_n147_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain0_n148_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "orange_juice"
# IR_LIT_STRING
 xchain0_n148_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain0_n149_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "lucky_strikes"
 xchain0_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2448]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2456], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2464]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2472], rax
# marshal arg2 = producer-box slot [zr+2304] -> [zr+2480]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2488], rax
# marshal arg3 = producer-box slot [zr+2336] -> [zr+2496]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2504], rax
# marshal arg4 = producer-box slot [zr+2368] -> [zr+2512]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2520], rax
# marshal arg5 = producer-box slot [zr+2400] -> [zr+2528]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2448]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n150_α
 xchain0_n149_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n150_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain0_n151_α
 xchain0_n151_α:
 mov qword ptr [rbp + 2240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2592]
 mov rdx, qword ptr [rbp + 2600]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx236_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx236_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx236_3]
 lea rdx, [rip + .Lx236_4]
 jmp rax
.Lx236_3:
 mov qword ptr [rbp + 2248], rsp
 mov rax, qword ptr [rbp + 2240]
 test rax, rax
 jne .Lx236_5
 mov qword ptr [rbp + 2240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx236_2
.Lx236_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx236_2
.Lx236_4:
 mov rax, qword ptr [rbp + 2240]
 test rax, rax
 jne .Lx236_6
 mov qword ptr [rbp + 2240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx236_2
.Lx236_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx236_2
.Lx236_1:
 call rt_faildescr@PLT
.Lx236_2:
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain0_n142_β
 jmp xchain0_n152_α
 xchain0_n151_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2248]
 jmp qword ptr [rsp]
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n152_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain0_n153_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9584]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain0_n154_α
# IR_LIT_STRING
 xchain0_n154_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain0_n155_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "japanese"
# IR_VAR_REF
 xchain0_n155_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9600]
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain0_n156_α
# IR_VAR_REF
 xchain0_n156_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9616]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain0_n157_α
# IR_LIT_STRING
 xchain0_n157_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain0_n158_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "parliaments"
 xchain0_n158_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2016]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2024], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+2032]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 2040], rax
# marshal arg2 = producer-box slot [zr+1872] -> [zr+2048]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 2056], rax
# marshal arg3 = producer-box slot [zr+1904] -> [zr+2064]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2072], rax
# marshal arg4 = producer-box slot [zr+1936] -> [zr+2080]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2088], rax
# marshal arg5 = producer-box slot [zr+1968] -> [zr+2096]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n159_α
 xchain0_n158_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain0_n160_α
 xchain0_n160_α:
 mov qword ptr [rbp + 1808], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx250_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx250_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx250_3]
 lea rdx, [rip + .Lx250_4]
 jmp rax
.Lx250_3:
 mov qword ptr [rbp + 1816], rsp
 mov rax, qword ptr [rbp + 1808]
 test rax, rax
 jne .Lx250_5
 mov qword ptr [rbp + 1808], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx250_2
.Lx250_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx250_2
.Lx250_4:
 mov rax, qword ptr [rbp + 1808]
 test rax, rax
 jne .Lx250_6
 mov qword ptr [rbp + 1808], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx250_2
.Lx250_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx250_2
.Lx250_1:
 call rt_faildescr@PLT
.Lx250_2:
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain0_n151_β
 jmp xchain0_n161_α
 xchain0_n160_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1816]
 jmp qword ptr [rsp]
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n161_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain0_n162_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n162_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9456]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain0_n163_α
# IR_LIT_STRING
 xchain0_n163_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain0_n164_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "norwegian"
# IR_VAR_REF
 xchain0_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9472]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n165_α
# IR_VAR_REF
 xchain0_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9488]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n166_α
# IR_VAR_REF
 xchain0_n166_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9504]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n167_α
 xchain0_n167_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1264]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1280]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1296]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1304], rax
# marshal arg3 = producer-box slot [zr+1152] -> [zr+1312]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1320], rax
# marshal arg4 = producer-box slot [zr+1184] -> [zr+1328]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1336], rax
# marshal arg5 = producer-box slot [zr+1216] -> [zr+1344]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n168_α
 xchain0_n167_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n168_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain0_n169_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n169_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain0_n170_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "blue"
# IR_VAR_REF
 xchain0_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9520]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n171_α
# IR_VAR_REF
 xchain0_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9536]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain0_n172_α
# IR_VAR_REF
 xchain0_n172_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9552]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain0_n173_α
# IR_VAR_REF
 xchain0_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9568]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain0_n174_α
 xchain0_n174_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1584]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1600]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1608], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1616]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1624], rax
# marshal arg3 = producer-box slot [zr+1472] -> [zr+1632]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1640], rax
# marshal arg4 = producer-box slot [zr+1504] -> [zr+1648]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1656], rax
# marshal arg5 = producer-box slot [zr+1536] -> [zr+1664]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n175_α
 xchain0_n174_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n175_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain0_n176_α
 xchain0_n176_α:
 mov qword ptr [rbp + 1056], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1568]
 mov rdx, qword ptr [rbp + 1576]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx276_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx276_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx276_3]
 lea rdx, [rip + .Lx276_4]
 jmp rax
.Lx276_3:
 mov qword ptr [rbp + 1064], rsp
 mov rax, qword ptr [rbp + 1056]
 test rax, rax
 jne .Lx276_5
 mov qword ptr [rbp + 1056], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx276_2
.Lx276_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx276_2
.Lx276_4:
 mov rax, qword ptr [rbp + 1056]
 test rax, rax
 jne .Lx276_6
 mov qword ptr [rbp + 1056], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx276_2
.Lx276_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx276_2
.Lx276_1:
 call rt_faildescr@PLT
.Lx276_2:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain0_n160_β
 jmp xchain0_n177_α
 xchain0_n176_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1064]
 jmp qword ptr [rsp]
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "next_to/3"
# IR_LIT_STRING
 xchain0_n177_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain0_n178_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n178_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9392]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n179_α
# IR_VAR_REF
 xchain0_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9408]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain0_n180_α
# IR_LIT_STRING
 xchain0_n180_α:
 mov qword ptr [rbp + 704], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain0_n181_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "zebra"
# IR_VAR_REF
 xchain0_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9424]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n182_α
# IR_VAR_REF
 xchain0_n182_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9440]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n183_α
 xchain0_n183_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+816]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+832]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 840], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+848]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 856], rax
# marshal arg3 = producer-box slot [zr+704] -> [zr+864]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 872], rax
# marshal arg4 = producer-box slot [zr+736] -> [zr+880]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 888], rax
# marshal arg5 = producer-box slot [zr+768] -> [zr+896]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n184_α
 xchain0_n183_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n184_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n185_α
 xchain0_n185_α:
 mov qword ptr [rbp + 608], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx291_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx291_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx291_3]
 lea rdx, [rip + .Lx291_4]
 jmp rax
.Lx291_3:
 mov qword ptr [rbp + 616], rsp
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx291_5
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx291_2
.Lx291_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx291_2
.Lx291_4:
 mov rax, qword ptr [rbp + 608]
 test rax, rax
 jne .Lx291_6
 mov qword ptr [rbp + 608], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx291_2
.Lx291_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx291_2
.Lx291_1:
 call rt_faildescr@PLT
.Lx291_2:
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain0_n176_β
 jmp xchain0_n186_α
 xchain0_n185_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 616]
 jmp qword ptr [rsp]
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "my_member/2"
# IR_LIT_STRING
 xchain0_n186_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n187_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n187_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9312]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n188_α
# IR_VAR_REF
 xchain0_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n189_α
# IR_VAR_REF
 xchain0_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9344]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n190_α
# IR_LIT_STRING
 xchain0_n190_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n191_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "water"
# IR_VAR_REF
 xchain0_n191_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9360]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n192_α
 xchain0_n192_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+384]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+400]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 408], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+416]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 424], rax
# marshal arg3 = producer-box slot [zr+272] -> [zr+432]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 440], rax
# marshal arg4 = producer-box slot [zr+304] -> [zr+448]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 456], rax
# marshal arg5 = producer-box slot [zr+336] -> [zr+464]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n193_α
 xchain0_n192_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n193_α:
 mov rax, 4294967305
 lea rdx, [rbp + 9376]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n194_α
 xchain0_n194_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx306_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx306_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx306_3]
 lea rdx, [rip + .Lx306_4]
 jmp rax
.Lx306_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx306_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx306_2
.Lx306_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx306_2
.Lx306_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx306_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx306_2
.Lx306_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx306_2
.Lx306_1:
 call rt_faildescr@PLT
.Lx306_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain0_n185_β
 jmp xchain0_n195_α
 xchain0_n194_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "my_member/2"
# IR_SUSPEND yield+resume
 xchain0_n195_α:
 lea rax, [rip + xchain0_n195_β]
 mov qword ptr [rbp + 9280], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_zebra$2F1_γ
 xchain0_n195_β:
 jmp xchain0_n194_β
proc_zebra$2F1_res:
add rsp, 8
pop rbp
proc_zebra$2F1_β:
jmp qword ptr [rbp + 9280]
proc_zebra$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_zebra$2F1_res]
push rax
mov rax, [rbp + 10568]
mov rbp, [rbp + 10584]
jmp rax
proc_zebra$2F1_ω:
mov rax, [rbp + 10576]
lea rsp, [rbp + 10592]
mov rbp, [rbp + 10584]
jmp rax
  .globl proc_right_of$2F3_α
proc_right_of$2F3_α:
#=======================================================================================================================
    .global proc_right_of$2F3_α
    .global proc_right_of$2F3_β
    .global proc_right_of$2F3_γ
    .global proc_right_of$2F3_ω
  sub rsp, 1536
  mov [rsp + 1512], rcx
  mov [rsp + 1520], rdx
  mov [rsp + 1528], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1432], rsp
  mov rdi, rsp
  mov esi, 1408
  mov edx, 1504
  call rt_jmp_frame_lexprep2@PLT
proc_right_of$2F3_α_body:
lea rax, [rip + xchain309_n29_β]
mov qword ptr [rbp + 1408], rax
 xchain309_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_right_of$2F3_ω
 jmp xchain309_n1_α
 xchain309_n0_β:
 jmp proc_right_of$2F3_ω
# IR_VAR_REF
 xchain309_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain309_n2_α
# IR_VAR_REF
 xchain309_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain309_n3_α
 xchain309_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1312]
 lea r8, [rbp + 1312]
.Lx315_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx315_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx315_41
 cmp esi, 1
 jne .Lx315_55
 mov r8, rax
 jmp .Lx315_40
.Lx315_55:
 cmp esi, 2
 jne .Lx315_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx315_41
 mov r8, rax
 jmp .Lx315_40
.Lx315_56:
 cmp eax, 13
 jne .Lx315_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx315_41
 cmp rax, r8
 je .Lx315_41
 mov r8, rax
 jmp .Lx315_40
.Lx315_41:
 lea r9, [rbp + 1328]
.Lx315_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx315_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx315_43
 cmp esi, 1
 jne .Lx315_57
 mov r9, rax
 jmp .Lx315_42
.Lx315_57:
 cmp esi, 2
 jne .Lx315_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx315_43
 mov r9, rax
 jmp .Lx315_42
.Lx315_58:
 cmp eax, 13
 jne .Lx315_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx315_43
 cmp rax, r9
 je .Lx315_43
 mov r9, rax
 jmp .Lx315_42
.Lx315_43:
 cmp r8, r9
 je .Lx315_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx315_44
 cmp eax, 99
 je .Lx315_44
 cmp eax, 13
 jne .Lx315_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx315_44
 jmp .Lx315_45
.Lx315_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx315_53
 cmp eax, 99
 je .Lx315_53
 cmp eax, 13
 jne .Lx315_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx315_53
 jmp .Lx315_46
.Lx315_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx315_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx315_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx315_51
.Lx315_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx315_47
 cmp eax, 99
 je .Lx315_47
 cmp eax, 13
 jne .Lx315_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx315_47
 jmp .Lx315_48
.Lx315_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx315_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx315_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx315_51
.Lx315_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx315_49
 cmp edx, 14
 je .Lx315_53
 jmp .Lx315_52
.Lx315_49:
 cmp edx, 14
 je .Lx315_52
 cmp ecx, 7
 je .Lx315_53
 cmp edx, 7
 je .Lx315_53
 cmp ecx, 6
 jne .Lx315_50
 cmp edx, 6
 jne .Lx315_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx315_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx315_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx315_51
 jmp .Lx315_52
.Lx315_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx315_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx315_53
.Lx315_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx315_54
.Lx315_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx315_54
.Lx315_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx315_54:
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain309_n5_α
 jmp xchain309_n4_α
 xchain309_n3_β:
 jmp xchain309_n5_α
# IR_VAR_REF
 xchain309_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain309_n6_α
 xchain309_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+752]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_right_of$2F3_ω
 jmp xchain309_n7_α
 xchain309_n5_β:
 jmp proc_right_of$2F3_ω
# IR_VAR_REF
 xchain309_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain309_n8_α
# IR_VAR_REF
 xchain309_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain309_n9_α
 xchain309_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1200]
 lea r8, [rbp + 1200]
.Lx323_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx323_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx323_41
 cmp esi, 1
 jne .Lx323_55
 mov r8, rax
 jmp .Lx323_40
.Lx323_55:
 cmp esi, 2
 jne .Lx323_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx323_41
 mov r8, rax
 jmp .Lx323_40
.Lx323_56:
 cmp eax, 13
 jne .Lx323_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx323_41
 cmp rax, r8
 je .Lx323_41
 mov r8, rax
 jmp .Lx323_40
.Lx323_41:
 lea r9, [rbp + 1216]
.Lx323_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx323_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx323_43
 cmp esi, 1
 jne .Lx323_57
 mov r9, rax
 jmp .Lx323_42
.Lx323_57:
 cmp esi, 2
 jne .Lx323_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx323_43
 mov r9, rax
 jmp .Lx323_42
.Lx323_58:
 cmp eax, 13
 jne .Lx323_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx323_43
 cmp rax, r9
 je .Lx323_43
 mov r9, rax
 jmp .Lx323_42
.Lx323_43:
 cmp r8, r9
 je .Lx323_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx323_44
 cmp eax, 99
 je .Lx323_44
 cmp eax, 13
 jne .Lx323_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx323_44
 jmp .Lx323_45
.Lx323_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx323_53
 cmp eax, 99
 je .Lx323_53
 cmp eax, 13
 jne .Lx323_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx323_53
 jmp .Lx323_46
.Lx323_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx323_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx323_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx323_51
.Lx323_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx323_47
 cmp eax, 99
 je .Lx323_47
 cmp eax, 13
 jne .Lx323_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx323_47
 jmp .Lx323_48
.Lx323_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx323_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx323_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx323_51
.Lx323_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx323_49
 cmp edx, 14
 je .Lx323_53
 jmp .Lx323_52
.Lx323_49:
 cmp edx, 14
 je .Lx323_52
 cmp ecx, 7
 je .Lx323_53
 cmp edx, 7
 je .Lx323_53
 cmp ecx, 6
 jne .Lx323_50
 cmp edx, 6
 jne .Lx323_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx323_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx323_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx323_51
 jmp .Lx323_52
.Lx323_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx323_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx323_53
.Lx323_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx323_54
.Lx323_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx323_54
.Lx323_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx323_54:
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain309_n5_α
 jmp xchain309_n10_α
 xchain309_n8_β:
 jmp xchain309_n5_α
# IR_VAR_REF
 xchain309_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain309_n11_α
# IR_VAR_REF
 xchain309_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain309_n12_α
 xchain309_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 640]
 lea r8, [rbp + 640]
.Lx328_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx328_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx328_41
 cmp esi, 1
 jne .Lx328_55
 mov r8, rax
 jmp .Lx328_40
.Lx328_55:
 cmp esi, 2
 jne .Lx328_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx328_41
 mov r8, rax
 jmp .Lx328_40
.Lx328_56:
 cmp eax, 13
 jne .Lx328_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx328_41
 cmp rax, r8
 je .Lx328_41
 mov r8, rax
 jmp .Lx328_40
.Lx328_41:
 lea r9, [rbp + 656]
.Lx328_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx328_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx328_43
 cmp esi, 1
 jne .Lx328_57
 mov r9, rax
 jmp .Lx328_42
.Lx328_57:
 cmp esi, 2
 jne .Lx328_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx328_43
 mov r9, rax
 jmp .Lx328_42
.Lx328_58:
 cmp eax, 13
 jne .Lx328_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx328_43
 cmp rax, r9
 je .Lx328_43
 mov r9, rax
 jmp .Lx328_42
.Lx328_43:
 cmp r8, r9
 je .Lx328_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx328_44
 cmp eax, 99
 je .Lx328_44
 cmp eax, 13
 jne .Lx328_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx328_44
 jmp .Lx328_45
.Lx328_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx328_53
 cmp eax, 99
 je .Lx328_53
 cmp eax, 13
 jne .Lx328_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx328_53
 jmp .Lx328_46
.Lx328_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx328_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx328_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx328_51
.Lx328_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx328_47
 cmp eax, 99
 je .Lx328_47
 cmp eax, 13
 jne .Lx328_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx328_47
 jmp .Lx328_48
.Lx328_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx328_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx328_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx328_51
.Lx328_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx328_49
 cmp edx, 14
 je .Lx328_53
 jmp .Lx328_52
.Lx328_49:
 cmp edx, 14
 je .Lx328_52
 cmp ecx, 7
 je .Lx328_53
 cmp edx, 7
 je .Lx328_53
 cmp ecx, 6
 jne .Lx328_50
 cmp edx, 6
 jne .Lx328_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx328_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx328_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx328_51
 jmp .Lx328_52
.Lx328_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx328_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx328_53
.Lx328_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx328_54
.Lx328_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx328_54
.Lx328_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx328_54:
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain309_n14_α
 jmp xchain309_n13_α
 xchain309_n11_β:
 jmp xchain309_n14_α
# IR_LIT_STRING
 xchain309_n12_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain309_n15_α
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "."
# IR_VAR_REF
 xchain309_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain309_n16_α
 xchain309_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_right_of$2F3_ω
 jmp proc_right_of$2F3_ω
 xchain309_n14_β:
 jmp proc_right_of$2F3_ω
# IR_VAR_REF
 xchain309_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain309_n17_α
# IR_VAR_REF
 xchain309_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain309_n18_α
# IR_LIT_STRING
 xchain309_n17_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain309_n19_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "."
 xchain309_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 528]
 lea r8, [rbp + 528]
.Lx338_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx338_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx338_41
 cmp esi, 1
 jne .Lx338_55
 mov r8, rax
 jmp .Lx338_40
.Lx338_55:
 cmp esi, 2
 jne .Lx338_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx338_41
 mov r8, rax
 jmp .Lx338_40
.Lx338_56:
 cmp eax, 13
 jne .Lx338_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx338_41
 cmp rax, r8
 je .Lx338_41
 mov r8, rax
 jmp .Lx338_40
.Lx338_41:
 lea r9, [rbp + 544]
.Lx338_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx338_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx338_43
 cmp esi, 1
 jne .Lx338_57
 mov r9, rax
 jmp .Lx338_42
.Lx338_57:
 cmp esi, 2
 jne .Lx338_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx338_43
 mov r9, rax
 jmp .Lx338_42
.Lx338_58:
 cmp eax, 13
 jne .Lx338_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx338_43
 cmp rax, r9
 je .Lx338_43
 mov r9, rax
 jmp .Lx338_42
.Lx338_43:
 cmp r8, r9
 je .Lx338_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx338_44
 cmp eax, 99
 je .Lx338_44
 cmp eax, 13
 jne .Lx338_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx338_44
 jmp .Lx338_45
.Lx338_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx338_53
 cmp eax, 99
 je .Lx338_53
 cmp eax, 13
 jne .Lx338_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx338_53
 jmp .Lx338_46
.Lx338_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx338_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx338_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx338_51
.Lx338_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx338_47
 cmp eax, 99
 je .Lx338_47
 cmp eax, 13
 jne .Lx338_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx338_47
 jmp .Lx338_48
.Lx338_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx338_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx338_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx338_51
.Lx338_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx338_49
 cmp edx, 14
 je .Lx338_53
 jmp .Lx338_52
.Lx338_49:
 cmp edx, 14
 je .Lx338_52
 cmp ecx, 7
 je .Lx338_53
 cmp edx, 7
 je .Lx338_53
 cmp ecx, 6
 jne .Lx338_50
 cmp edx, 6
 jne .Lx338_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx338_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx338_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx338_51
 jmp .Lx338_52
.Lx338_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx338_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx338_53
.Lx338_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx338_54
.Lx338_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx338_54
.Lx338_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx338_54:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain309_n14_α
 jmp xchain309_n20_α
 xchain309_n18_β:
 jmp xchain309_n14_α
# IR_VAR_REF
 xchain309_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain309_n21_α
# IR_VAR_REF
 xchain309_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain309_n22_α
# IR_VAR_REF
 xchain309_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1488]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain309_n23_α
# IR_VAR_REF
 xchain309_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1488]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain309_n24_α
 xchain309_n23_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je proc_right_of$2F3_ω
 jmp xchain309_n25_α
 xchain309_n23_β:
 jmp proc_right_of$2F3_ω
# IR_VAR_REF
 xchain309_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1472]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain309_n26_α
 xchain309_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1104]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1112], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+1120]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain309_n5_α
 jmp xchain309_n27_α
 xchain309_n25_β:
 jmp xchain309_n5_α
 xchain309_n26_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 400]
 lea r8, [rbp + 400]
.Lx351_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx351_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx351_61
 cmp esi, 1
 jne .Lx351_62
 mov r8, rax
 jmp .Lx351_60
.Lx351_62:
 cmp esi, 2
 jne .Lx351_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx351_61
 mov r8, rax
 jmp .Lx351_60
.Lx351_63:
 cmp eax, 13
 jne .Lx351_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx351_61
 cmp rax, r8
 je .Lx351_61
 mov r8, rax
 jmp .Lx351_60
.Lx351_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx351_72
 cmp eax, 99
 je .Lx351_72
 cmp eax, 13
 jne .Lx351_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx351_72
 jmp .Lx351_74
.Lx351_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx351_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx351_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx351_73
 lea r9, [rbp + 416]
.Lx351_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx351_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx351_65
 cmp esi, 1
 jne .Lx351_66
 mov r9, rax
 jmp .Lx351_64
.Lx351_66:
 cmp esi, 2
 jne .Lx351_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx351_65
 mov r9, rax
 jmp .Lx351_64
.Lx351_67:
 cmp eax, 13
 jne .Lx351_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx351_65
 cmp rax, r9
 je .Lx351_65
 mov r9, rax
 jmp .Lx351_64
.Lx351_65:
 lea rcx, [rbp + 432]
.Lx351_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx351_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx351_69
 cmp esi, 1
 jne .Lx351_70
 mov rcx, rax
 jmp .Lx351_68
.Lx351_70:
 cmp esi, 2
 jne .Lx351_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx351_69
 mov rcx, rax
 jmp .Lx351_68
.Lx351_71:
 cmp eax, 13
 jne .Lx351_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx351_69
 cmp rax, rcx
 je .Lx351_69
 mov rcx, rax
 jmp .Lx351_68
.Lx351_69:
 cmp r9, rcx
 je .Lx351_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx351_75
 cmp eax, 99
 je .Lx351_75
 cmp eax, 13
 jne .Lx351_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx351_75
 jmp .Lx351_72
.Lx351_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx351_76
 cmp eax, 99
 je .Lx351_76
 cmp eax, 13
 jne .Lx351_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx351_76
 jmp .Lx351_72
.Lx351_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx351_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx351_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx351_77
.Lx351_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx351_77
.Lx351_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx351_77:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain309_n14_α
 jmp xchain309_n28_α
 xchain309_n26_β:
 jmp xchain309_n14_α
 xchain309_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+816]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 824], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 800]
 lea r8, [rbp + 800]
.Lx352_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx352_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx352_41
 cmp esi, 1
 jne .Lx352_55
 mov r8, rax
 jmp .Lx352_40
.Lx352_55:
 cmp esi, 2
 jne .Lx352_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx352_41
 mov r8, rax
 jmp .Lx352_40
.Lx352_56:
 cmp eax, 13
 jne .Lx352_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx352_41
 cmp rax, r8
 je .Lx352_41
 mov r8, rax
 jmp .Lx352_40
.Lx352_41:
 lea r9, [rbp + 816]
.Lx352_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx352_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx352_43
 cmp esi, 1
 jne .Lx352_57
 mov r9, rax
 jmp .Lx352_42
.Lx352_57:
 cmp esi, 2
 jne .Lx352_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx352_43
 mov r9, rax
 jmp .Lx352_42
.Lx352_58:
 cmp eax, 13
 jne .Lx352_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx352_43
 cmp rax, r9
 je .Lx352_43
 mov r9, rax
 jmp .Lx352_42
.Lx352_43:
 cmp r8, r9
 je .Lx352_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx352_44
 cmp eax, 99
 je .Lx352_44
 cmp eax, 13
 jne .Lx352_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx352_44
 jmp .Lx352_45
.Lx352_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx352_53
 cmp eax, 99
 je .Lx352_53
 cmp eax, 13
 jne .Lx352_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx352_53
 jmp .Lx352_46
.Lx352_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx352_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx352_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx352_51
.Lx352_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx352_47
 cmp eax, 99
 je .Lx352_47
 cmp eax, 13
 jne .Lx352_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx352_47
 jmp .Lx352_48
.Lx352_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx352_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx352_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx352_51
.Lx352_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx352_49
 cmp edx, 14
 je .Lx352_53
 jmp .Lx352_52
.Lx352_49:
 cmp edx, 14
 je .Lx352_52
 cmp ecx, 7
 je .Lx352_53
 cmp edx, 7
 je .Lx352_53
 cmp ecx, 6
 jne .Lx352_50
 cmp edx, 6
 jne .Lx352_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx352_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx352_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx352_51
 jmp .Lx352_52
.Lx352_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx352_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx352_53
.Lx352_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx352_54
.Lx352_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx352_54
.Lx352_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx352_54:
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain309_n5_α
 jmp xchain309_n29_α
 xchain309_n27_β:
 jmp xchain309_n5_α
# IR_VAR_REF
 xchain309_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain309_n30_α
# IR_SUSPEND yield+resume
 xchain309_n29_α:
 lea rax, [rip + xchain309_n29_β]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_right_of$2F3_γ
 xchain309_n29_β:
 jmp xchain309_n5_α
# IR_VAR_REF
 xchain309_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain309_n31_α
# IR_VAR_REF
 xchain309_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1472]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain309_n32_α
 xchain309_n32_α:
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
 mov rdi, qword ptr [rip + .Lx362_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx362_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx362_3]
 lea rdx, [rip + .Lx362_4]
 jmp rax
.Lx362_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx362_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx362_2
.Lx362_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx362_2
.Lx362_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx362_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx362_2
.Lx362_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx362_2
.Lx362_1:
 call rt_faildescr@PLT
.Lx362_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain309_n14_α
 jmp xchain309_n33_α
 xchain309_n32_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "right_of/3"
# IR_SUSPEND yield+resume
 xchain309_n33_α:
 lea rax, [rip + xchain309_n33_β]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_right_of$2F3_γ
 xchain309_n33_β:
 jmp xchain309_n32_β
proc_right_of$2F3_res:
add rsp, 8
pop rbp
proc_right_of$2F3_β:
jmp qword ptr [rbp + 1408]
proc_right_of$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_right_of$2F3_res]
push rax
mov rax, [rbp + 1512]
mov rbp, [rbp + 1528]
jmp rax
proc_right_of$2F3_ω:
mov rax, [rbp + 1520]
lea rsp, [rbp + 1536]
mov rbp, [rbp + 1528]
jmp rax
  .globl proc_next_to$2F3_α
proc_next_to$2F3_α:
#=======================================================================================================================
    .global proc_next_to$2F3_α
    .global proc_next_to$2F3_β
    .global proc_next_to$2F3_γ
    .global proc_next_to$2F3_ω
  sub rsp, 2208
  mov [rsp + 2184], rcx
  mov [rsp + 2192], rdx
  mov [rsp + 2200], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2104], rsp
  mov rdi, rsp
  mov esi, 2080
  mov edx, 2176
  call rt_jmp_frame_lexprep2@PLT
proc_next_to$2F3_α_body:
lea rax, [rip + xchain365_n37_β]
mov qword ptr [rbp + 2080], rax
 xchain365_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_next_to$2F3_ω
 jmp xchain365_n1_α
 xchain365_n0_β:
 jmp proc_next_to$2F3_ω
# IR_VAR_REF
 xchain365_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain365_n2_α
# IR_VAR_REF
 xchain365_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain365_n3_α
 xchain365_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1984]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1984]
 lea r8, [rbp + 1984]
.Lx371_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx371_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx371_41
 cmp esi, 1
 jne .Lx371_55
 mov r8, rax
 jmp .Lx371_40
.Lx371_55:
 cmp esi, 2
 jne .Lx371_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx371_41
 mov r8, rax
 jmp .Lx371_40
.Lx371_56:
 cmp eax, 13
 jne .Lx371_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx371_41
 cmp rax, r8
 je .Lx371_41
 mov r8, rax
 jmp .Lx371_40
.Lx371_41:
 lea r9, [rbp + 2000]
.Lx371_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx371_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx371_43
 cmp esi, 1
 jne .Lx371_57
 mov r9, rax
 jmp .Lx371_42
.Lx371_57:
 cmp esi, 2
 jne .Lx371_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx371_43
 mov r9, rax
 jmp .Lx371_42
.Lx371_58:
 cmp eax, 13
 jne .Lx371_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx371_43
 cmp rax, r9
 je .Lx371_43
 mov r9, rax
 jmp .Lx371_42
.Lx371_43:
 cmp r8, r9
 je .Lx371_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx371_44
 cmp eax, 99
 je .Lx371_44
 cmp eax, 13
 jne .Lx371_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx371_44
 jmp .Lx371_45
.Lx371_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx371_53
 cmp eax, 99
 je .Lx371_53
 cmp eax, 13
 jne .Lx371_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx371_53
 jmp .Lx371_46
.Lx371_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx371_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx371_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx371_51
.Lx371_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx371_47
 cmp eax, 99
 je .Lx371_47
 cmp eax, 13
 jne .Lx371_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx371_47
 jmp .Lx371_48
.Lx371_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx371_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx371_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx371_51
.Lx371_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx371_49
 cmp edx, 14
 je .Lx371_53
 jmp .Lx371_52
.Lx371_49:
 cmp edx, 14
 je .Lx371_52
 cmp ecx, 7
 je .Lx371_53
 cmp edx, 7
 je .Lx371_53
 cmp ecx, 6
 jne .Lx371_50
 cmp edx, 6
 jne .Lx371_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx371_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx371_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx371_51
 jmp .Lx371_52
.Lx371_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx371_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx371_53
.Lx371_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx371_54
.Lx371_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx371_54
.Lx371_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx371_54:
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain365_n5_α
 jmp xchain365_n4_α
 xchain365_n3_β:
 jmp xchain365_n5_α
# IR_VAR_REF
 xchain365_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain365_n6_α
 xchain365_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1424]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_next_to$2F3_ω
 jmp xchain365_n7_α
 xchain365_n5_β:
 jmp proc_next_to$2F3_ω
# IR_VAR_REF
 xchain365_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain365_n8_α
# IR_VAR_REF
 xchain365_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain365_n9_α
 xchain365_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1872]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1896], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1872]
 lea r8, [rbp + 1872]
.Lx379_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx379_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx379_41
 cmp esi, 1
 jne .Lx379_55
 mov r8, rax
 jmp .Lx379_40
.Lx379_55:
 cmp esi, 2
 jne .Lx379_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx379_41
 mov r8, rax
 jmp .Lx379_40
.Lx379_56:
 cmp eax, 13
 jne .Lx379_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx379_41
 cmp rax, r8
 je .Lx379_41
 mov r8, rax
 jmp .Lx379_40
.Lx379_41:
 lea r9, [rbp + 1888]
.Lx379_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx379_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx379_43
 cmp esi, 1
 jne .Lx379_57
 mov r9, rax
 jmp .Lx379_42
.Lx379_57:
 cmp esi, 2
 jne .Lx379_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx379_43
 mov r9, rax
 jmp .Lx379_42
.Lx379_58:
 cmp eax, 13
 jne .Lx379_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx379_43
 cmp rax, r9
 je .Lx379_43
 mov r9, rax
 jmp .Lx379_42
.Lx379_43:
 cmp r8, r9
 je .Lx379_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx379_44
 cmp eax, 99
 je .Lx379_44
 cmp eax, 13
 jne .Lx379_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx379_44
 jmp .Lx379_45
.Lx379_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx379_53
 cmp eax, 99
 je .Lx379_53
 cmp eax, 13
 jne .Lx379_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx379_53
 jmp .Lx379_46
.Lx379_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx379_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx379_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx379_51
.Lx379_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx379_47
 cmp eax, 99
 je .Lx379_47
 cmp eax, 13
 jne .Lx379_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx379_47
 jmp .Lx379_48
.Lx379_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx379_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx379_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx379_51
.Lx379_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx379_49
 cmp edx, 14
 je .Lx379_53
 jmp .Lx379_52
.Lx379_49:
 cmp edx, 14
 je .Lx379_52
 cmp ecx, 7
 je .Lx379_53
 cmp edx, 7
 je .Lx379_53
 cmp ecx, 6
 jne .Lx379_50
 cmp edx, 6
 jne .Lx379_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx379_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx379_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx379_51
 jmp .Lx379_52
.Lx379_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx379_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx379_53
.Lx379_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx379_54
.Lx379_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx379_54
.Lx379_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx379_54:
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain365_n5_α
 jmp xchain365_n10_α
 xchain365_n8_β:
 jmp xchain365_n5_α
# IR_VAR_REF
 xchain365_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain365_n11_α
# IR_VAR_REF
 xchain365_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain365_n12_α
 xchain365_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1312]
 lea r8, [rbp + 1312]
.Lx384_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx384_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx384_41
 cmp esi, 1
 jne .Lx384_55
 mov r8, rax
 jmp .Lx384_40
.Lx384_55:
 cmp esi, 2
 jne .Lx384_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx384_41
 mov r8, rax
 jmp .Lx384_40
.Lx384_56:
 cmp eax, 13
 jne .Lx384_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx384_41
 cmp rax, r8
 je .Lx384_41
 mov r8, rax
 jmp .Lx384_40
.Lx384_41:
 lea r9, [rbp + 1328]
.Lx384_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx384_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx384_43
 cmp esi, 1
 jne .Lx384_57
 mov r9, rax
 jmp .Lx384_42
.Lx384_57:
 cmp esi, 2
 jne .Lx384_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx384_43
 mov r9, rax
 jmp .Lx384_42
.Lx384_58:
 cmp eax, 13
 jne .Lx384_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx384_43
 cmp rax, r9
 je .Lx384_43
 mov r9, rax
 jmp .Lx384_42
.Lx384_43:
 cmp r8, r9
 je .Lx384_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx384_44
 cmp eax, 99
 je .Lx384_44
 cmp eax, 13
 jne .Lx384_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx384_44
 jmp .Lx384_45
.Lx384_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx384_53
 cmp eax, 99
 je .Lx384_53
 cmp eax, 13
 jne .Lx384_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx384_53
 jmp .Lx384_46
.Lx384_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx384_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx384_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx384_51
.Lx384_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx384_47
 cmp eax, 99
 je .Lx384_47
 cmp eax, 13
 jne .Lx384_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx384_47
 jmp .Lx384_48
.Lx384_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx384_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx384_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx384_51
.Lx384_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx384_49
 cmp edx, 14
 je .Lx384_53
 jmp .Lx384_52
.Lx384_49:
 cmp edx, 14
 je .Lx384_52
 cmp ecx, 7
 je .Lx384_53
 cmp edx, 7
 je .Lx384_53
 cmp ecx, 6
 jne .Lx384_50
 cmp edx, 6
 jne .Lx384_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx384_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx384_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx384_51
 jmp .Lx384_52
.Lx384_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx384_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx384_53
.Lx384_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx384_54
.Lx384_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx384_54
.Lx384_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx384_54:
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain365_n14_α
 jmp xchain365_n13_α
 xchain365_n11_β:
 jmp xchain365_n14_α
# IR_LIT_STRING
 xchain365_n12_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain365_n15_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "."
# IR_VAR_REF
 xchain365_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain365_n16_α
 xchain365_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+752]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_next_to$2F3_ω
 jmp xchain365_n17_α
 xchain365_n14_β:
 jmp proc_next_to$2F3_ω
# IR_VAR_REF
 xchain365_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain365_n18_α
# IR_VAR_REF
 xchain365_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain365_n19_α
# IR_VAR_REF
 xchain365_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain365_n20_α
# IR_LIT_STRING
 xchain365_n18_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain365_n21_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "."
 xchain365_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1200]
 lea r8, [rbp + 1200]
.Lx396_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx396_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx396_41
 cmp esi, 1
 jne .Lx396_55
 mov r8, rax
 jmp .Lx396_40
.Lx396_55:
 cmp esi, 2
 jne .Lx396_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx396_41
 mov r8, rax
 jmp .Lx396_40
.Lx396_56:
 cmp eax, 13
 jne .Lx396_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx396_41
 cmp rax, r8
 je .Lx396_41
 mov r8, rax
 jmp .Lx396_40
.Lx396_41:
 lea r9, [rbp + 1216]
.Lx396_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx396_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx396_43
 cmp esi, 1
 jne .Lx396_57
 mov r9, rax
 jmp .Lx396_42
.Lx396_57:
 cmp esi, 2
 jne .Lx396_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx396_43
 mov r9, rax
 jmp .Lx396_42
.Lx396_58:
 cmp eax, 13
 jne .Lx396_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx396_43
 cmp rax, r9
 je .Lx396_43
 mov r9, rax
 jmp .Lx396_42
.Lx396_43:
 cmp r8, r9
 je .Lx396_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx396_44
 cmp eax, 99
 je .Lx396_44
 cmp eax, 13
 jne .Lx396_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx396_44
 jmp .Lx396_45
.Lx396_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx396_53
 cmp eax, 99
 je .Lx396_53
 cmp eax, 13
 jne .Lx396_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx396_53
 jmp .Lx396_46
.Lx396_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx396_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx396_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx396_51
.Lx396_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx396_47
 cmp eax, 99
 je .Lx396_47
 cmp eax, 13
 jne .Lx396_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx396_47
 jmp .Lx396_48
.Lx396_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx396_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx396_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx396_51
.Lx396_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx396_49
 cmp edx, 14
 je .Lx396_53
 jmp .Lx396_52
.Lx396_49:
 cmp edx, 14
 je .Lx396_52
 cmp ecx, 7
 je .Lx396_53
 cmp edx, 7
 je .Lx396_53
 cmp ecx, 6
 jne .Lx396_50
 cmp edx, 6
 jne .Lx396_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx396_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx396_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx396_51
 jmp .Lx396_52
.Lx396_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx396_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx396_53
.Lx396_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx396_54
.Lx396_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx396_54
.Lx396_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx396_54:
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain365_n14_α
 jmp xchain365_n22_α
 xchain365_n19_β:
 jmp xchain365_n14_α
# IR_VAR_REF
 xchain365_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain365_n23_α
# IR_VAR_REF
 xchain365_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain365_n24_α
# IR_VAR_REF
 xchain365_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain365_n25_α
 xchain365_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 640]
 lea r8, [rbp + 640]
.Lx403_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx403_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx403_41
 cmp esi, 1
 jne .Lx403_55
 mov r8, rax
 jmp .Lx403_40
.Lx403_55:
 cmp esi, 2
 jne .Lx403_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx403_41
 mov r8, rax
 jmp .Lx403_40
.Lx403_56:
 cmp eax, 13
 jne .Lx403_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx403_41
 cmp rax, r8
 je .Lx403_41
 mov r8, rax
 jmp .Lx403_40
.Lx403_41:
 lea r9, [rbp + 656]
.Lx403_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx403_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx403_43
 cmp esi, 1
 jne .Lx403_57
 mov r9, rax
 jmp .Lx403_42
.Lx403_57:
 cmp esi, 2
 jne .Lx403_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx403_43
 mov r9, rax
 jmp .Lx403_42
.Lx403_58:
 cmp eax, 13
 jne .Lx403_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx403_43
 cmp rax, r9
 je .Lx403_43
 mov r9, rax
 jmp .Lx403_42
.Lx403_43:
 cmp r8, r9
 je .Lx403_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx403_44
 cmp eax, 99
 je .Lx403_44
 cmp eax, 13
 jne .Lx403_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx403_44
 jmp .Lx403_45
.Lx403_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx403_53
 cmp eax, 99
 je .Lx403_53
 cmp eax, 13
 jne .Lx403_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx403_53
 jmp .Lx403_46
.Lx403_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx403_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx403_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx403_51
.Lx403_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx403_47
 cmp eax, 99
 je .Lx403_47
 cmp eax, 13
 jne .Lx403_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx403_47
 jmp .Lx403_48
.Lx403_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx403_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx403_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx403_51
.Lx403_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx403_49
 cmp edx, 14
 je .Lx403_53
 jmp .Lx403_52
.Lx403_49:
 cmp edx, 14
 je .Lx403_52
 cmp ecx, 7
 je .Lx403_53
 cmp edx, 7
 je .Lx403_53
 cmp ecx, 6
 jne .Lx403_50
 cmp edx, 6
 jne .Lx403_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx403_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx403_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx403_51
 jmp .Lx403_52
.Lx403_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx403_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx403_53
.Lx403_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx403_54
.Lx403_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx403_54
.Lx403_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx403_54:
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain365_n27_α
 jmp xchain365_n26_α
 xchain365_n23_β:
 jmp xchain365_n27_α
# IR_VAR_REF
 xchain365_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain365_n28_α
# IR_LIT_STRING
 xchain365_n25_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain365_n29_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "."
# IR_VAR_REF
 xchain365_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain365_n30_α
 xchain365_n27_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_next_to$2F3_ω
 jmp proc_next_to$2F3_ω
 xchain365_n27_β:
 jmp proc_next_to$2F3_ω
 xchain365_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1616]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1632]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1640], rax
# marshal arg2 = producer-box slot [zr+1536] -> [zr+1648]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je proc_next_to$2F3_ω
 jmp xchain365_n31_α
 xchain365_n28_β:
 jmp proc_next_to$2F3_ω
# IR_VAR_REF
 xchain365_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain365_n32_α
# IR_VAR_REF
 xchain365_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain365_n33_α
 xchain365_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1776]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1784], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1792]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain365_n5_α
 jmp xchain365_n34_α
 xchain365_n31_β:
 jmp xchain365_n5_α
# IR_LIT_STRING
 xchain365_n32_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx416_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain365_n35_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "."
 xchain365_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 528]
 lea r8, [rbp + 528]
.Lx417_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx417_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx417_41
 cmp esi, 1
 jne .Lx417_55
 mov r8, rax
 jmp .Lx417_40
.Lx417_55:
 cmp esi, 2
 jne .Lx417_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx417_41
 mov r8, rax
 jmp .Lx417_40
.Lx417_56:
 cmp eax, 13
 jne .Lx417_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx417_41
 cmp rax, r8
 je .Lx417_41
 mov r8, rax
 jmp .Lx417_40
.Lx417_41:
 lea r9, [rbp + 544]
.Lx417_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx417_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx417_43
 cmp esi, 1
 jne .Lx417_57
 mov r9, rax
 jmp .Lx417_42
.Lx417_57:
 cmp esi, 2
 jne .Lx417_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx417_43
 mov r9, rax
 jmp .Lx417_42
.Lx417_58:
 cmp eax, 13
 jne .Lx417_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx417_43
 cmp rax, r9
 je .Lx417_43
 mov r9, rax
 jmp .Lx417_42
.Lx417_43:
 cmp r8, r9
 je .Lx417_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx417_44
 cmp eax, 99
 je .Lx417_44
 cmp eax, 13
 jne .Lx417_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx417_44
 jmp .Lx417_45
.Lx417_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx417_53
 cmp eax, 99
 je .Lx417_53
 cmp eax, 13
 jne .Lx417_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx417_53
 jmp .Lx417_46
.Lx417_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx417_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx417_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx417_51
.Lx417_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx417_47
 cmp eax, 99
 je .Lx417_47
 cmp eax, 13
 jne .Lx417_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx417_47
 jmp .Lx417_48
.Lx417_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx417_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx417_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx417_51
.Lx417_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx417_49
 cmp edx, 14
 je .Lx417_53
 jmp .Lx417_52
.Lx417_49:
 cmp edx, 14
 je .Lx417_52
 cmp ecx, 7
 je .Lx417_53
 cmp edx, 7
 je .Lx417_53
 cmp ecx, 6
 jne .Lx417_50
 cmp edx, 6
 jne .Lx417_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx417_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx417_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx417_51
 jmp .Lx417_52
.Lx417_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx417_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx417_53
.Lx417_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx417_54
.Lx417_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx417_54
.Lx417_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx417_54:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain365_n27_α
 jmp xchain365_n36_α
 xchain365_n33_β:
 jmp xchain365_n27_α
 xchain365_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1488]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1496], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1472]
 lea r8, [rbp + 1472]
.Lx418_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx418_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx418_41
 cmp esi, 1
 jne .Lx418_55
 mov r8, rax
 jmp .Lx418_40
.Lx418_55:
 cmp esi, 2
 jne .Lx418_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx418_41
 mov r8, rax
 jmp .Lx418_40
.Lx418_56:
 cmp eax, 13
 jne .Lx418_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx418_41
 cmp rax, r8
 je .Lx418_41
 mov r8, rax
 jmp .Lx418_40
.Lx418_41:
 lea r9, [rbp + 1488]
.Lx418_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx418_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx418_43
 cmp esi, 1
 jne .Lx418_57
 mov r9, rax
 jmp .Lx418_42
.Lx418_57:
 cmp esi, 2
 jne .Lx418_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx418_43
 mov r9, rax
 jmp .Lx418_42
.Lx418_58:
 cmp eax, 13
 jne .Lx418_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx418_43
 cmp rax, r9
 je .Lx418_43
 mov r9, rax
 jmp .Lx418_42
.Lx418_43:
 cmp r8, r9
 je .Lx418_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx418_44
 cmp eax, 99
 je .Lx418_44
 cmp eax, 13
 jne .Lx418_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx418_44
 jmp .Lx418_45
.Lx418_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx418_53
 cmp eax, 99
 je .Lx418_53
 cmp eax, 13
 jne .Lx418_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx418_53
 jmp .Lx418_46
.Lx418_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx418_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx418_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx418_51
.Lx418_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx418_47
 cmp eax, 99
 je .Lx418_47
 cmp eax, 13
 jne .Lx418_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx418_47
 jmp .Lx418_48
.Lx418_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx418_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx418_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx418_51
.Lx418_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx418_49
 cmp edx, 14
 je .Lx418_53
 jmp .Lx418_52
.Lx418_49:
 cmp edx, 14
 je .Lx418_52
 cmp ecx, 7
 je .Lx418_53
 cmp edx, 7
 je .Lx418_53
 cmp ecx, 6
 jne .Lx418_50
 cmp edx, 6
 jne .Lx418_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx418_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx418_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx418_51
 jmp .Lx418_52
.Lx418_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx418_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx418_53
.Lx418_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx418_54
.Lx418_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx418_54
.Lx418_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx418_54:
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain365_n5_α
 jmp xchain365_n37_α
 xchain365_n34_β:
 jmp xchain365_n5_α
# IR_VAR_REF
 xchain365_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain365_n38_α
# IR_VAR_REF
 xchain365_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain365_n39_α
# IR_SUSPEND yield+resume
 xchain365_n37_α:
 lea rax, [rip + xchain365_n37_β]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_next_to$2F3_γ
 xchain365_n37_β:
 jmp xchain365_n5_α
# IR_VAR_REF
 xchain365_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain365_n40_α
# IR_VAR_REF
 xchain365_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2160]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain365_n41_α
 xchain365_n40_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je proc_next_to$2F3_ω
 jmp xchain365_n42_α
 xchain365_n40_β:
 jmp proc_next_to$2F3_ω
# IR_VAR_REF
 xchain365_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain365_n43_α
 xchain365_n42_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1104]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1112], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+1120]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain365_n14_α
 jmp xchain365_n44_α
 xchain365_n42_β:
 jmp xchain365_n14_α
 xchain365_n43_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 400]
 lea r8, [rbp + 400]
.Lx433_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx433_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx433_61
 cmp esi, 1
 jne .Lx433_62
 mov r8, rax
 jmp .Lx433_60
.Lx433_62:
 cmp esi, 2
 jne .Lx433_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx433_61
 mov r8, rax
 jmp .Lx433_60
.Lx433_63:
 cmp eax, 13
 jne .Lx433_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx433_61
 cmp rax, r8
 je .Lx433_61
 mov r8, rax
 jmp .Lx433_60
.Lx433_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx433_72
 cmp eax, 99
 je .Lx433_72
 cmp eax, 13
 jne .Lx433_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx433_72
 jmp .Lx433_74
.Lx433_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx433_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx433_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx433_73
 lea r9, [rbp + 416]
.Lx433_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx433_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx433_65
 cmp esi, 1
 jne .Lx433_66
 mov r9, rax
 jmp .Lx433_64
.Lx433_66:
 cmp esi, 2
 jne .Lx433_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx433_65
 mov r9, rax
 jmp .Lx433_64
.Lx433_67:
 cmp eax, 13
 jne .Lx433_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx433_65
 cmp rax, r9
 je .Lx433_65
 mov r9, rax
 jmp .Lx433_64
.Lx433_65:
 lea rcx, [rbp + 432]
.Lx433_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx433_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx433_69
 cmp esi, 1
 jne .Lx433_70
 mov rcx, rax
 jmp .Lx433_68
.Lx433_70:
 cmp esi, 2
 jne .Lx433_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx433_69
 mov rcx, rax
 jmp .Lx433_68
.Lx433_71:
 cmp eax, 13
 jne .Lx433_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx433_69
 cmp rax, rcx
 je .Lx433_69
 mov rcx, rax
 jmp .Lx433_68
.Lx433_69:
 cmp r9, rcx
 je .Lx433_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx433_75
 cmp eax, 99
 je .Lx433_75
 cmp eax, 13
 jne .Lx433_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx433_75
 jmp .Lx433_72
.Lx433_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx433_76
 cmp eax, 99
 je .Lx433_76
 cmp eax, 13
 jne .Lx433_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx433_76
 jmp .Lx433_72
.Lx433_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx433_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx433_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx433_77
.Lx433_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx433_77
.Lx433_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx433_77:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain365_n27_α
 jmp xchain365_n45_α
 xchain365_n43_β:
 jmp xchain365_n27_α
 xchain365_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+816]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 824], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 800]
 lea r8, [rbp + 800]
.Lx434_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx434_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx434_41
 cmp esi, 1
 jne .Lx434_55
 mov r8, rax
 jmp .Lx434_40
.Lx434_55:
 cmp esi, 2
 jne .Lx434_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx434_41
 mov r8, rax
 jmp .Lx434_40
.Lx434_56:
 cmp eax, 13
 jne .Lx434_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx434_41
 cmp rax, r8
 je .Lx434_41
 mov r8, rax
 jmp .Lx434_40
.Lx434_41:
 lea r9, [rbp + 816]
.Lx434_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx434_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx434_43
 cmp esi, 1
 jne .Lx434_57
 mov r9, rax
 jmp .Lx434_42
.Lx434_57:
 cmp esi, 2
 jne .Lx434_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx434_43
 mov r9, rax
 jmp .Lx434_42
.Lx434_58:
 cmp eax, 13
 jne .Lx434_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx434_43
 cmp rax, r9
 je .Lx434_43
 mov r9, rax
 jmp .Lx434_42
.Lx434_43:
 cmp r8, r9
 je .Lx434_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx434_44
 cmp eax, 99
 je .Lx434_44
 cmp eax, 13
 jne .Lx434_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx434_44
 jmp .Lx434_45
.Lx434_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx434_53
 cmp eax, 99
 je .Lx434_53
 cmp eax, 13
 jne .Lx434_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx434_53
 jmp .Lx434_46
.Lx434_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx434_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx434_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx434_51
.Lx434_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx434_47
 cmp eax, 99
 je .Lx434_47
 cmp eax, 13
 jne .Lx434_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx434_47
 jmp .Lx434_48
.Lx434_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx434_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx434_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx434_51
.Lx434_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx434_49
 cmp edx, 14
 je .Lx434_53
 jmp .Lx434_52
.Lx434_49:
 cmp edx, 14
 je .Lx434_52
 cmp ecx, 7
 je .Lx434_53
 cmp edx, 7
 je .Lx434_53
 cmp ecx, 6
 jne .Lx434_50
 cmp edx, 6
 jne .Lx434_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx434_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx434_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx434_51
 jmp .Lx434_52
.Lx434_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx434_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx434_53
.Lx434_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx434_54
.Lx434_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx434_54
.Lx434_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx434_54:
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain365_n14_α
 jmp xchain365_n46_α
 xchain365_n44_β:
 jmp xchain365_n14_α
# IR_VAR_REF
 xchain365_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2112]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain365_n47_α
# IR_SUSPEND yield+resume
 xchain365_n46_α:
 lea rax, [rip + xchain365_n46_β]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_next_to$2F3_γ
 xchain365_n46_β:
 jmp xchain365_n14_α
# IR_VAR_REF
 xchain365_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2128]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain365_n48_α
# IR_VAR_REF
 xchain365_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2144]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain365_n49_α
 xchain365_n49_α:
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
 mov rdi, qword ptr [rip + .Lx444_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx444_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx444_3]
 lea rdx, [rip + .Lx444_4]
 jmp rax
.Lx444_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx444_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx444_2
.Lx444_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx444_2
.Lx444_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx444_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx444_2
.Lx444_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx444_2
.Lx444_1:
 call rt_faildescr@PLT
.Lx444_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain365_n27_α
 jmp xchain365_n50_α
 xchain365_n49_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "next_to/3"
# IR_SUSPEND yield+resume
 xchain365_n50_α:
 lea rax, [rip + xchain365_n50_β]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_next_to$2F3_γ
 xchain365_n50_β:
 jmp xchain365_n49_β
proc_next_to$2F3_res:
add rsp, 8
pop rbp
proc_next_to$2F3_β:
jmp qword ptr [rbp + 2080]
proc_next_to$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_next_to$2F3_res]
push rax
mov rax, [rbp + 2184]
mov rbp, [rbp + 2200]
jmp rax
proc_next_to$2F3_ω:
mov rax, [rbp + 2192]
lea rsp, [rbp + 2208]
mov rbp, [rbp + 2200]
jmp rax
  .globl proc_my_member$2F2_α
proc_my_member$2F2_α:
#=======================================================================================================================
    .global proc_my_member$2F2_α
    .global proc_my_member$2F2_β
    .global proc_my_member$2F2_γ
    .global proc_my_member$2F2_ω
  sub rsp, 992
  mov [rsp + 968], rcx
  mov [rsp + 976], rdx
  mov [rsp + 984], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 904], rsp
  mov rdi, rsp
  mov esi, 880
  mov edx, 960
  call rt_jmp_frame_lexprep2@PLT
proc_my_member$2F2_α_body:
lea rax, [rip + xchain447_n12_β]
mov qword ptr [rbp + 880], rax
 xchain447_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_my_member$2F2_ω
 jmp xchain447_n1_α
 xchain447_n0_β:
 jmp proc_my_member$2F2_ω
# IR_VAR_REF
 xchain447_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain447_n2_α
# IR_VAR_REF
 xchain447_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain447_n3_α
 xchain447_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 784]
 lea r8, [rbp + 784]
.Lx453_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx453_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx453_41
 cmp esi, 1
 jne .Lx453_55
 mov r8, rax
 jmp .Lx453_40
.Lx453_55:
 cmp esi, 2
 jne .Lx453_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx453_41
 mov r8, rax
 jmp .Lx453_40
.Lx453_56:
 cmp eax, 13
 jne .Lx453_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx453_41
 cmp rax, r8
 je .Lx453_41
 mov r8, rax
 jmp .Lx453_40
.Lx453_41:
 lea r9, [rbp + 800]
.Lx453_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx453_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx453_43
 cmp esi, 1
 jne .Lx453_57
 mov r9, rax
 jmp .Lx453_42
.Lx453_57:
 cmp esi, 2
 jne .Lx453_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx453_43
 mov r9, rax
 jmp .Lx453_42
.Lx453_58:
 cmp eax, 13
 jne .Lx453_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx453_43
 cmp rax, r9
 je .Lx453_43
 mov r9, rax
 jmp .Lx453_42
.Lx453_43:
 cmp r8, r9
 je .Lx453_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx453_44
 cmp eax, 99
 je .Lx453_44
 cmp eax, 13
 jne .Lx453_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx453_44
 jmp .Lx453_45
.Lx453_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx453_53
 cmp eax, 99
 je .Lx453_53
 cmp eax, 13
 jne .Lx453_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx453_53
 jmp .Lx453_46
.Lx453_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx453_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx453_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx453_51
.Lx453_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx453_47
 cmp eax, 99
 je .Lx453_47
 cmp eax, 13
 jne .Lx453_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx453_47
 jmp .Lx453_48
.Lx453_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx453_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx453_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx453_51
.Lx453_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx453_49
 cmp edx, 14
 je .Lx453_53
 jmp .Lx453_52
.Lx453_49:
 cmp edx, 14
 je .Lx453_52
 cmp ecx, 7
 je .Lx453_53
 cmp edx, 7
 je .Lx453_53
 cmp ecx, 6
 jne .Lx453_50
 cmp edx, 6
 jne .Lx453_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx453_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx453_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx453_51
 jmp .Lx453_52
.Lx453_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx453_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx453_53
.Lx453_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx453_54
.Lx453_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx453_54
.Lx453_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx453_54:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n4_α
 xchain447_n3_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain447_n6_α
 xchain447_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+576]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_my_member$2F2_ω
 jmp xchain447_n7_α
 xchain447_n5_β:
 jmp proc_my_member$2F2_ω
# IR_VAR_REF
 xchain447_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain447_n8_α
# IR_VAR_REF
 xchain447_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain447_n9_α
# IR_VAR_REF
 xchain447_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain447_n10_α
# IR_VAR_REF
 xchain447_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain447_n11_α
 xchain447_n10_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+656]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 656]
 lea r8, [rbp + 656]
.Lx465_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx465_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx465_61
 cmp esi, 1
 jne .Lx465_62
 mov r8, rax
 jmp .Lx465_60
.Lx465_62:
 cmp esi, 2
 jne .Lx465_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx465_61
 mov r8, rax
 jmp .Lx465_60
.Lx465_63:
 cmp eax, 13
 jne .Lx465_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx465_61
 cmp rax, r8
 je .Lx465_61
 mov r8, rax
 jmp .Lx465_60
.Lx465_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx465_72
 cmp eax, 99
 je .Lx465_72
 cmp eax, 13
 jne .Lx465_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx465_72
 jmp .Lx465_74
.Lx465_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx465_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx465_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx465_73
 lea r9, [rbp + 672]
.Lx465_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx465_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx465_65
 cmp esi, 1
 jne .Lx465_66
 mov r9, rax
 jmp .Lx465_64
.Lx465_66:
 cmp esi, 2
 jne .Lx465_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx465_65
 mov r9, rax
 jmp .Lx465_64
.Lx465_67:
 cmp eax, 13
 jne .Lx465_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx465_65
 cmp rax, r9
 je .Lx465_65
 mov r9, rax
 jmp .Lx465_64
.Lx465_65:
 lea rcx, [rbp + 688]
.Lx465_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx465_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx465_69
 cmp esi, 1
 jne .Lx465_70
 mov rcx, rax
 jmp .Lx465_68
.Lx465_70:
 cmp esi, 2
 jne .Lx465_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx465_69
 mov rcx, rax
 jmp .Lx465_68
.Lx465_71:
 cmp eax, 13
 jne .Lx465_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx465_69
 cmp rax, rcx
 je .Lx465_69
 mov rcx, rax
 jmp .Lx465_68
.Lx465_69:
 cmp r9, rcx
 je .Lx465_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx465_75
 cmp eax, 99
 je .Lx465_75
 cmp eax, 13
 jne .Lx465_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx465_75
 jmp .Lx465_72
.Lx465_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx465_76
 cmp eax, 99
 je .Lx465_76
 cmp eax, 13
 jne .Lx465_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx465_76
 jmp .Lx465_72
.Lx465_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx465_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx465_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx465_77
.Lx465_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx465_77
.Lx465_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx465_77:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain447_n5_α
 jmp xchain447_n12_α
 xchain447_n10_β:
 jmp xchain447_n5_α
 xchain447_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 464]
 lea r8, [rbp + 464]
.Lx466_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx466_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx466_41
 cmp esi, 1
 jne .Lx466_55
 mov r8, rax
 jmp .Lx466_40
.Lx466_55:
 cmp esi, 2
 jne .Lx466_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx466_41
 mov r8, rax
 jmp .Lx466_40
.Lx466_56:
 cmp eax, 13
 jne .Lx466_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx466_41
 cmp rax, r8
 je .Lx466_41
 mov r8, rax
 jmp .Lx466_40
.Lx466_41:
 lea r9, [rbp + 480]
.Lx466_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx466_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx466_43
 cmp esi, 1
 jne .Lx466_57
 mov r9, rax
 jmp .Lx466_42
.Lx466_57:
 cmp esi, 2
 jne .Lx466_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx466_43
 mov r9, rax
 jmp .Lx466_42
.Lx466_58:
 cmp eax, 13
 jne .Lx466_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx466_43
 cmp rax, r9
 je .Lx466_43
 mov r9, rax
 jmp .Lx466_42
.Lx466_43:
 cmp r8, r9
 je .Lx466_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx466_44
 cmp eax, 99
 je .Lx466_44
 cmp eax, 13
 jne .Lx466_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx466_44
 jmp .Lx466_45
.Lx466_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx466_53
 cmp eax, 99
 je .Lx466_53
 cmp eax, 13
 jne .Lx466_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx466_53
 jmp .Lx466_46
.Lx466_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx466_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx466_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx466_51
.Lx466_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx466_47
 cmp eax, 99
 je .Lx466_47
 cmp eax, 13
 jne .Lx466_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx466_47
 jmp .Lx466_48
.Lx466_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx466_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx466_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx466_51
.Lx466_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx466_49
 cmp edx, 14
 je .Lx466_53
 jmp .Lx466_52
.Lx466_49:
 cmp edx, 14
 je .Lx466_52
 cmp ecx, 7
 je .Lx466_53
 cmp edx, 7
 je .Lx466_53
 cmp ecx, 6
 jne .Lx466_50
 cmp edx, 6
 jne .Lx466_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx466_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx466_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx466_51
 jmp .Lx466_52
.Lx466_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx466_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx466_53
.Lx466_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx466_54
.Lx466_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx466_54
.Lx466_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx466_54:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain447_n14_α
 jmp xchain447_n13_α
 xchain447_n11_β:
 jmp xchain447_n14_α
# IR_SUSPEND yield+resume
 xchain447_n12_α:
 lea rax, [rip + xchain447_n12_β]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_member$2F2_γ
 xchain447_n12_β:
 jmp xchain447_n5_α
# IR_VAR_REF
 xchain447_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain447_n15_α
 xchain447_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_my_member$2F2_ω
 jmp proc_my_member$2F2_ω
 xchain447_n14_β:
 jmp proc_my_member$2F2_ω
# IR_VAR_REF
 xchain447_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain447_n16_α
# IR_VAR_REF
 xchain447_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain447_n17_α
 xchain447_n17_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-SINK-2 inline $unify_lst READ-mode fast path: bound './2 subject + both-unbound-distinct H,T -> double bind; rt_pl_dop_unify_lst is the slow-path oracle (unmodified args)
 lea rdi, [rbp + 336]
 lea r8, [rbp + 336]
.Lx476_60:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx476_63
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx476_61
 cmp esi, 1
 jne .Lx476_62
 mov r8, rax
 jmp .Lx476_60
.Lx476_62:
 cmp esi, 2
 jne .Lx476_61
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx476_61
 mov r8, rax
 jmp .Lx476_60
.Lx476_63:
 cmp eax, 13
 jne .Lx476_61
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx476_61
 cmp rax, r8
 je .Lx476_61
 mov r8, rax
 jmp .Lx476_60
.Lx476_61:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx476_72
 cmp eax, 99
 je .Lx476_72
 cmp eax, 13
 jne .Lx476_74
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx476_72
 jmp .Lx476_74
.Lx476_74:
 mov ecx, dword ptr [r8 + 0]
 cmp ecx, 14
 jne .Lx476_73
 lea r10, [rip + g_plw_dot_sl]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 je .Lx476_72
 mov edx, dword ptr [r8 + 4]
 cmp eax, edx
 jne .Lx476_73
 lea r9, [rbp + 352]
.Lx476_64:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx476_67
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx476_65
 cmp esi, 1
 jne .Lx476_66
 mov r9, rax
 jmp .Lx476_64
.Lx476_66:
 cmp esi, 2
 jne .Lx476_65
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx476_65
 mov r9, rax
 jmp .Lx476_64
.Lx476_67:
 cmp eax, 13
 jne .Lx476_65
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx476_65
 cmp rax, r9
 je .Lx476_65
 mov r9, rax
 jmp .Lx476_64
.Lx476_65:
 lea rcx, [rbp + 368]
.Lx476_68:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 9
 jne .Lx476_71
 mov esi, dword ptr [rcx + 4]
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx476_69
 cmp esi, 1
 jne .Lx476_70
 mov rcx, rax
 jmp .Lx476_68
.Lx476_70:
 cmp esi, 2
 jne .Lx476_69
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx476_69
 mov rcx, rax
 jmp .Lx476_68
.Lx476_71:
 cmp eax, 13
 jne .Lx476_69
 mov rax, qword ptr [rcx + 8]
 test rax, rax
 je .Lx476_69
 cmp rax, rcx
 je .Lx476_69
 mov rcx, rax
 jmp .Lx476_68
.Lx476_69:
 cmp r9, rcx
 je .Lx476_72
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx476_75
 cmp eax, 99
 je .Lx476_75
 cmp eax, 13
 jne .Lx476_72
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx476_75
 jmp .Lx476_72
.Lx476_75:
 mov eax, dword ptr [rcx + 0]
 cmp eax, 0
 je .Lx476_76
 cmp eax, 99
 je .Lx476_76
 cmp eax, 13
 jne .Lx476_72
 mov rax, qword ptr [rcx + 8]
 cmp rax, rcx
 je .Lx476_76
 jmp .Lx476_72
.Lx476_76:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx476_72
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 48
 cmp rsi, rax
 ja .Lx476_72
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov qword ptr [r11 + 24], rcx
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [r11 + 32], rax
 mov rax, qword ptr [rcx + 8]
 mov qword ptr [r11 + 40], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 2
 mov dword ptr [r10 + 32], eax
 mov r10, qword ptr [r8 + 8]
 mov rax, qword ptr [r10 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r10 + 8]
 mov qword ptr [r9 + 8], rax
 mov rax, qword ptr [r10 + 16]
 mov qword ptr [rcx + 0], rax
 mov rax, qword ptr [r10 + 24]
 mov qword ptr [rcx + 8], rax
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx476_77
.Lx476_73:
 mov eax, 99
 mov edx, 0
 jmp .Lx476_77
.Lx476_72:
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
.Lx476_77:
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain447_n14_α
 jmp xchain447_n18_α
 xchain447_n17_β:
 jmp xchain447_n14_α
# IR_VAR_REF
 xchain447_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 912]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain447_n19_α
# IR_VAR_REF
 xchain447_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain447_n20_α
 xchain447_n20_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx482_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx482_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx482_3]
 lea rdx, [rip + .Lx482_4]
 jmp rax
.Lx482_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx482_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx482_2
.Lx482_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx482_2
.Lx482_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx482_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx482_2
.Lx482_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx482_2
.Lx482_1:
 call rt_faildescr@PLT
.Lx482_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain447_n14_α
 jmp xchain447_n21_α
 xchain447_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "my_member/2"
# IR_SUSPEND yield+resume
 xchain447_n21_α:
 lea rax, [rip + xchain447_n21_β]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_member$2F2_γ
 xchain447_n21_β:
 jmp xchain447_n20_β
proc_my_member$2F2_res:
add rsp, 8
pop rbp
proc_my_member$2F2_β:
jmp qword ptr [rbp + 880]
proc_my_member$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_my_member$2F2_res]
push rax
mov rax, [rbp + 968]
mov rbp, [rbp + 984]
jmp rax
proc_my_member$2F2_ω:
mov rax, [rbp + 976]
lea rsp, [rbp + 992]
mov rbp, [rbp + 984]
jmp rax
  .globl proc_houses$2F1_α
proc_houses$2F1_α:
#=======================================================================================================================
    .global proc_houses$2F1_α
    .global proc_houses$2F1_β
    .global proc_houses$2F1_γ
    .global proc_houses$2F1_ω
  sub rsp, 2848
  mov [rsp + 2824], rcx
  mov [rsp + 2832], rdx
  mov [rsp + 2840], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2408], rsp
  mov rdi, rsp
  mov esi, 2400
  mov edx, 2816
  call rt_jmp_frame_lexprep2@PLT
proc_houses$2F1_α_body:
 xchain485_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n1_α
 xchain485_n0_β:
 jmp proc_houses$2F1_ω
# IR_VAR_REF
 xchain485_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain485_n2_α
# IR_LIT_STRING
 xchain485_n2_α:
 mov qword ptr [rbp + 2368], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain485_n3_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "."
# IR_LIT_STRING
 xchain485_n3_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain485_n4_α
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "house"
# IR_VAR_REF
 xchain485_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2736]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain485_n5_α
# IR_VAR_REF
 xchain485_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2752]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain485_n6_α
# IR_VAR_REF
 xchain485_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2768]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain485_n7_α
# IR_VAR_REF
 xchain485_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2784]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain485_n8_α
# IR_VAR_REF
 xchain485_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2800]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain485_n9_α
 xchain485_n9_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2144]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+2160]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2168], rax
# marshal arg2 = producer-box slot [zr+2000] -> [zr+2176]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 2184], rax
# marshal arg3 = producer-box slot [zr+2032] -> [zr+2192]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 2200], rax
# marshal arg4 = producer-box slot [zr+2064] -> [zr+2208]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2216], rax
# marshal arg5 = producer-box slot [zr+2096] -> [zr+2224]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n10_α
 xchain485_n9_β:
 jmp proc_houses$2F1_ω
# IR_LIT_STRING
 xchain485_n10_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx502_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain485_n11_α
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "."
# IR_LIT_STRING
 xchain485_n11_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx503_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain485_n12_α
.Lx503_0:
 .quad .Lx503_0_s
.Lx503_0_s:
 .string "house"
# IR_VAR_REF
 xchain485_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain485_n13_α
# IR_VAR_REF
 xchain485_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain485_n14_α
# IR_VAR_REF
 xchain485_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain485_n15_α
# IR_VAR_REF
 xchain485_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2704]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain485_n16_α
# IR_VAR_REF
 xchain485_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2720]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain485_n17_α
 xchain485_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1712]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1728]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1736], rax
# marshal arg2 = producer-box slot [zr+1568] -> [zr+1744]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1752], rax
# marshal arg3 = producer-box slot [zr+1600] -> [zr+1760]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1768], rax
# marshal arg4 = producer-box slot [zr+1632] -> [zr+1776]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1784], rax
# marshal arg5 = producer-box slot [zr+1664] -> [zr+1792]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1712]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n18_α
 xchain485_n17_β:
 jmp proc_houses$2F1_ω
# IR_LIT_STRING
 xchain485_n18_α:
 mov qword ptr [rbp + 1504], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [rbp + 1512], rax
 jmp xchain485_n19_α
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "."
# IR_LIT_STRING
 xchain485_n19_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain485_n20_α
.Lx516_0:
 .quad .Lx516_0_s
.Lx516_0_s:
 .string "house"
# IR_VAR_REF
 xchain485_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2576]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain485_n21_α
# IR_VAR_REF
 xchain485_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2592]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain485_n22_α
# IR_VAR_REF
 xchain485_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2608]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain485_n23_α
# IR_VAR_REF
 xchain485_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2624]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain485_n24_α
# IR_VAR_REF
 xchain485_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2640]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain485_n25_α
 xchain485_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1280]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1296]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1304], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+1312]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1320], rax
# marshal arg3 = producer-box slot [zr+1168] -> [zr+1328]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1336], rax
# marshal arg4 = producer-box slot [zr+1200] -> [zr+1344]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1352], rax
# marshal arg5 = producer-box slot [zr+1232] -> [zr+1360]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n26_α
 xchain485_n25_β:
 jmp proc_houses$2F1_ω
# IR_LIT_STRING
 xchain485_n26_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain485_n27_α
.Lx528_0:
 .quad .Lx528_0_s
.Lx528_0_s:
 .string "."
# IR_LIT_STRING
 xchain485_n27_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain485_n28_α
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "house"
# IR_VAR_REF
 xchain485_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2496]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain485_n29_α
# IR_VAR_REF
 xchain485_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2512]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain485_n30_α
# IR_VAR_REF
 xchain485_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2528]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain485_n31_α
# IR_VAR_REF
 xchain485_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2544]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain485_n32_α
# IR_VAR_REF
 xchain485_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2560]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain485_n33_α
 xchain485_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+848]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+864]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+880]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 888], rax
# marshal arg3 = producer-box slot [zr+736] -> [zr+896]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 904], rax
# marshal arg4 = producer-box slot [zr+768] -> [zr+912]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 920], rax
# marshal arg5 = producer-box slot [zr+800] -> [zr+928]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n34_α
 xchain485_n33_β:
 jmp proc_houses$2F1_ω
# IR_LIT_STRING
 xchain485_n34_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain485_n35_α
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "."
# IR_LIT_STRING
 xchain485_n35_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain485_n36_α
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "house"
# IR_VAR_REF
 xchain485_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2416]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain485_n37_α
# IR_VAR_REF
 xchain485_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2432]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain485_n38_α
# IR_VAR_REF
 xchain485_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2448]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain485_n39_α
# IR_VAR_REF
 xchain485_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain485_n40_α
# IR_VAR_REF
 xchain485_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain485_n41_α
 xchain485_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+416]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+432]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+448]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 456], rax
# marshal arg3 = producer-box slot [zr+304] -> [zr+464]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 472], rax
# marshal arg4 = producer-box slot [zr+336] -> [zr+480]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 488], rax
# marshal arg5 = producer-box slot [zr+368] -> [zr+496]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 6
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n42_α
 xchain485_n41_β:
 jmp proc_houses$2F1_ω
# IR_LIT_STRING
 xchain485_n42_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain485_n43_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "[]"
 xchain485_n43_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+592]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+608]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n44_α
 xchain485_n43_β:
 jmp proc_houses$2F1_ω
 xchain485_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+1024]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1032], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+1040]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n45_α
 xchain485_n44_β:
 jmp proc_houses$2F1_ω
 xchain485_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1440]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1448], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1456]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1464], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1472]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n46_α
 xchain485_n45_β:
 jmp proc_houses$2F1_ω
 xchain485_n46_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1872]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1888]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+1424] -> [zr+1904]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp xchain485_n47_α
 xchain485_n46_β:
 jmp proc_houses$2F1_ω
 xchain485_n47_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2304]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2320]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2328], rax
# marshal arg2 = producer-box slot [zr+1856] -> [zr+2336]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je xchain485_n49_α
 jmp xchain485_n48_α
 xchain485_n47_β:
 jmp xchain485_n49_α
 xchain485_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+160]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 168], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 144]
 lea r8, [rbp + 144]
.Lx560_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx560_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx560_41
 cmp esi, 1
 jne .Lx560_55
 mov r8, rax
 jmp .Lx560_40
.Lx560_55:
 cmp esi, 2
 jne .Lx560_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx560_41
 mov r8, rax
 jmp .Lx560_40
.Lx560_56:
 cmp eax, 13
 jne .Lx560_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx560_41
 cmp rax, r8
 je .Lx560_41
 mov r8, rax
 jmp .Lx560_40
.Lx560_41:
 lea r9, [rbp + 160]
.Lx560_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx560_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx560_43
 cmp esi, 1
 jne .Lx560_57
 mov r9, rax
 jmp .Lx560_42
.Lx560_57:
 cmp esi, 2
 jne .Lx560_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx560_43
 mov r9, rax
 jmp .Lx560_42
.Lx560_58:
 cmp eax, 13
 jne .Lx560_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx560_43
 cmp rax, r9
 je .Lx560_43
 mov r9, rax
 jmp .Lx560_42
.Lx560_43:
 cmp r8, r9
 je .Lx560_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx560_44
 cmp eax, 99
 je .Lx560_44
 cmp eax, 13
 jne .Lx560_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx560_44
 jmp .Lx560_45
.Lx560_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx560_53
 cmp eax, 99
 je .Lx560_53
 cmp eax, 13
 jne .Lx560_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx560_53
 jmp .Lx560_46
.Lx560_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx560_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx560_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx560_51
.Lx560_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx560_47
 cmp eax, 99
 je .Lx560_47
 cmp eax, 13
 jne .Lx560_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx560_47
 jmp .Lx560_48
.Lx560_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx560_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx560_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx560_51
.Lx560_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx560_49
 cmp edx, 14
 je .Lx560_53
 jmp .Lx560_52
.Lx560_49:
 cmp edx, 14
 je .Lx560_52
 cmp ecx, 7
 je .Lx560_53
 cmp edx, 7
 je .Lx560_53
 cmp ecx, 6
 jne .Lx560_50
 cmp edx, 6
 jne .Lx560_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx560_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx560_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx560_51
 jmp .Lx560_52
.Lx560_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx560_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx560_53
.Lx560_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx560_54
.Lx560_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx560_54
.Lx560_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx560_54:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain485_n49_α
 jmp xchain485_n50_α
 xchain485_n48_β:
 jmp xchain485_n49_α
 xchain485_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_houses$2F1_ω
 jmp proc_houses$2F1_ω
 xchain485_n49_β:
 jmp proc_houses$2F1_ω
# IR_MOVE_LABEL
 xchain485_n50_α:
 lea rax, [rip + xchain485_n49_α]
 mov qword ptr [rbp + 48], rax
 jmp proc_houses$2F1_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain485_n51_α:
 jmp qword ptr [rbp + 48]
 xchain485_n51_β:
 jmp proc_houses$2F1_ω
proc_houses$2F1_res:
add rsp, 8
pop rbp
proc_houses$2F1_β:
jmp xchain485_n51_α
proc_houses$2F1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2824]
lea rsp, [rbp + 2848]
mov rbp, [rbp + 2840]
jmp rax
proc_houses$2F1_ω:
mov rax, [rbp + 2832]
lea rsp, [rbp + 2848]
mov rbp, [rbp + 2840]
jmp rax
proc_houses$2F1_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 2864
 mov qword ptr [rsp + 2856], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 2816], r11
 lea rax, [rip + .Lx566_2]
 mov qword ptr [rbp + 2824], rax
 lea rax, [rip + .Lx566_3]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2408], rbp
 mov qword ptr [rbp + 16], rsi
 mov rdi, rbp
 mov esi, 2400
 mov edx, 2816
 mov ecx, 1
 mov r8d, 1
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_houses$2F1_α_body
.Lx566_2:
 mov rdx, qword ptr [rsp + -2864]
 mov rcx, rsp
 add rcx, -2848
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx566_3:
 mov rdi, qword ptr [rsp + -2864]
 mov rsi, rsp
 add rsi, -2848
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "zebra/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_zebra$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 10560
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "right_of/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_right_of$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "next_to/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_next_to$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_my_member$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 960
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "houses/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_houses$2F1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_houses$2F1_dcα]
  call rt_proc_set_dcfn@PLT
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
  mov qword ptr [rsp + 344], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain567_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain567_n1_α
 xchain567_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain567_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain567_n2_α
 xchain567_n2_α:
 mov qword ptr [rbp + 272], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx572_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx572_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx572_3]
 lea rdx, [rip + .Lx572_4]
 jmp rax
.Lx572_3:
 mov qword ptr [rbp + 280], rsp
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx572_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx572_2
.Lx572_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx572_2
.Lx572_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx572_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx572_2
.Lx572_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx572_2
.Lx572_1:
 call rt_faildescr@PLT
.Lx572_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain567_n4_α
 jmp xchain567_n3_α
 xchain567_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 280]
 jmp qword ptr [rsp]
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "zebra/1"
# IR_VAR
 xchain567_n3_α:
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 216], rax
 jmp xchain567_n5_α
 xchain567_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain567_n4_β:
 jmp main_ω
 xchain567_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn577: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn577]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain567_n2_β
 jmp xchain567_n6_α
 xchain567_n5_β:
 jmp xchain567_n2_β
# IR_LIT_STRING
 xchain567_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain567_n7_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string ""
 xchain567_n7_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn580: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn580]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain567_n2_β
 jmp xchain567_n8_α
 xchain567_n7_β:
 jmp xchain567_n2_β
# IR_MOVE_LABEL
 xchain567_n8_α:
 lea rax, [rip + xchain567_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain567_n9_α:
 jmp qword ptr [rbp + 32]
 xchain567_n9_β:
 jmp main_ω
main_β:
jmp xchain567_n9_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 344]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 344]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
