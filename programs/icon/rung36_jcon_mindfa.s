  .intel_syntax noprefix
  .text
  .globl proc_getdfa_α
proc_getdfa_α:
#=======================================================================================================================
    .global proc_getdfa_α
    .global proc_getdfa_β
    .global proc_getdfa_γ
    .global proc_getdfa_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_getdfa_α_body:
xchain0_n0_α:
xargsub2_n0_α:
# IR_LIT_S
bb1_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 136], rax
 jmp xicnarg1_done
 xargsub2_n0_β:
 jmp xchain0_n2_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "Enter states (1 character names): "
xicnarg1_done:
bb2_α:
  .section .rodata
  .Lcall2_pname: .string "readset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall2_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n1_α
xchain0_n0_β:
 jmp xchain0_n2_α
xchain0_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 144]
 mov rdx, qword ptr [r12 + 152]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
xargsub7_n0_α:
# IR_LIT_S
bb4_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 184], rax
 jmp xicnarg6_done
 xargsub7_n0_β:
 jmp xchain0_n4_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "Enter input alphabet: "
xicnarg6_done:
bb5_α:
  .section .rodata
  .Lcall5_pname: .string "readset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+176]
 mov rdx, qword ptr [r12+184]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall5_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
bb6_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
xargsub12_n0_α:
# IR_LIT_S
bb7_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 232], rax
 jmp xicnarg11_done
 xargsub12_n0_β:
 jmp xchain0_n6_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "Enter Final states (subset of states): "
xicnarg11_done:
bb8_α:
  .section .rodata
  .Lcall8_pname: .string "readset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall8_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
xchain0_n4_β:
 jmp xchain0_n6_α
xchain0_n5_α:
bb9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
# IR_LIT_S
bb10_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n8_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "What is the start state? "
xchain0_n7_α:
bb11_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+304]
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 312], rax
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "What is the start state? "
.Lx17_1:
  .section .rodata
  .Lrkfn18: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
bb12_α:
# BOX IR_CALL read(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn20: .string "read"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 336]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n10_α
xchain0_n9_α:
bb13_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n10_α
xchain0_n10_α:
bb14_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn23: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
bb15_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n12_α
xchain0_n12_α:
# IR_VAR
bb16_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang25_iter_done
 xbang25_iter_β:
 jmp xchain0_n26_α
xbang25_iter_done:
# IR_LIST_BANG
bb17_α:
 mov qword ptr [r12 + 384], 0
.Lx29_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 384]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 cmp rax, 99
 je xchain0_n26_α
 jmp xchain0_n13_α
 xchain0_n12_β:
 inc qword ptr [r12 + 384]
 jmp .Lx29_0
xchain0_n13_α:
bb18_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n14_β
xchain0_n14_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang31_iter_done
 xbang31_iter_β:
 jmp xchain0_n26_α
xbang31_iter_done:
# IR_LIST_BANG
bb20_α:
 mov qword ptr [r12 + 424], 0
.Lx35_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 424]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp rax, 99
 je xchain0_n26_α
 jmp xchain0_n15_α
 xchain0_n14_β:
 inc qword ptr [r12 + 424]
 jmp .Lx35_0
xchain0_n15_α:
bb21_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n14_β
xchain0_n16_α:
jmp xchain0_n17_α
xchain0_n16_β:
jmp xchain0_n14_β
xchain0_n17_α:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n23_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "enter delta("
xchain0_n18_α:
# IR_VAR
bb23_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp xchain0_n23_α
xchain0_n19_α:
# IR_LIT_S
bb24_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n23_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string ","
xchain0_n20_α:
# IR_VAR
bb25_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n23_α
xchain0_n21_α:
# IR_LIT_S
bb26_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n23_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string ") = "
xchain0_n22_α:
bb27_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 536], rax
 jmp .Lx44_1
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "enter delta("
.Lx44_1:
# marshal arg1 = varslot [r12+96] -> [r12+544]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 552], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+560]
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx44_4]
 mov qword ptr [r12 + 568], rax
 jmp .Lx44_5
.Lx44_4:
 .quad .Lx44_4_s
.Lx44_4_s:
 .string ","
.Lx44_5:
# marshal arg3 = varslot [r12+112] -> [r12+576]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 584], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+592]
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx44_8]
 mov qword ptr [r12 + 600], rax
 jmp .Lx44_9
.Lx44_8:
 .quad .Lx44_8_s
.Lx44_8_s:
 .string ") = "
.Lx44_9:
  .section .rodata
  .Lrkfn45: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 528]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n23_α
xchain0_n23_α:
# IR_VAR
bb28_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n14_β
xchain0_n24_α:
bb29_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 448]
 cmp eax, 4
 jne .Lx50_0
 mov rax, qword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx50_0
 mov rsi, qword ptr [r12 + 456]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx50_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx50_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain0_n25_α
.Lx50_0:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [r12 + 80]
 mov r9, qword ptr [r12 + 88]
 call subscript_set@PLT
 cmp eax, 0
 je xchain0_n14_β
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n14_β
xchain0_n25_α:
jmp xchain0_n14_β
xchain0_n25_β:
jmp xchain0_n14_β
xchain0_n26_α:
# IR_EVERY
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n27_α
xchain0_n27_α:
bb31_α:
# BOX IR_CALL dfa(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+624]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = varslot [r12+32] -> [r12+640]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = varslot [r12+80] -> [r12+656]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 664], rax
# marshal arg3 = varslot [r12+64] -> [r12+672]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 680], rax
# marshal arg4 = varslot [r12+48] -> [r12+688]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn53: .string "dfa"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn53]
 lea rsi, [r12 + 624]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je proc_getdfa_ω
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_getdfa_ω
xchain0_n28_α:
# IR_RETURN
bb32_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_getdfa_γ
proc_getdfa_β:
jmp proc_getdfa_ω
proc_getdfa_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_getdfa_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_readset_α
proc_readset_α:
#=======================================================================================================================
    .global proc_readset_α
    .global proc_readset_β
    .global proc_readset_γ
    .global proc_readset_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_readset_α_body:
xchain55_n0_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain55_n1_α
 xchain55_n0_β:
 jmp xchain55_n2_α
xchain55_n1_α:
bb34_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+64]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn59: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain55_n2_α
 jmp xchain55_n2_α
 xchain55_n1_β:
 jmp xchain55_n2_α
xchain55_n2_α:
bb35_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn61: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn61]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain55_n4_α
 jmp xchain55_n3_α
xchain55_n2_β:
 jmp xchain55_n4_α
xchain55_n3_α:
bb36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain55_n4_α
 xchain55_n3_β:
 jmp xchain55_n4_α
xchain55_n4_α:
bb37_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+128]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = varslot [r12+160] -> [r12+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lbynamefn64: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn64]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain55_n5_α
 jmp xchain55_n5_α
xchain55_n4_β:
 jmp xchain55_n5_α
xchain55_n5_α:
# IR_EVERY
 jmp xchain55_n6_α
 xchain55_n5_β:
 jmp xchain55_n6_α
xchain55_n6_α:
# IR_VAR
bb39_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain55_n7_α
 xchain55_n6_β:
 jmp proc_readset_ω
xchain55_n7_α:
# IR_RETURN
bb40_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_readset_γ
proc_readset_β:
jmp proc_readset_ω
proc_readset_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_readset_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_showdfa_α
proc_showdfa_α:
#=======================================================================================================================
    .global proc_showdfa_α
    .global proc_showdfa_β
    .global proc_showdfa_γ
    .global proc_showdfa_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_showdfa_α_body:
xchain69_n0_α:
# IR_LIT_I
bb41_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain69_n1_α
 xchain69_n0_β:
 jmp xchain69_n32_β
.Lx70_0:
 .quad 1
xchain69_n1_α:
# IR_LIT_I
bb42_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain69_n2_α
 xchain69_n1_β:
 jmp xchain69_n32_β
.Lx71_0:
 .quad 3
xchain69_n2_α:
# IR_TO
bb43_α:
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 128], rax
.Lx73_0:
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain69_n4_α
 mov qword ptr [r12 + 112], 6
 mov qword ptr [r12 + 120], rax
 jmp xchain69_n3_α
 xchain69_n2_β:
 inc qword ptr [r12 + 128]
 jmp .Lx73_0
xchain69_n3_α:
bb44_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn75: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 152]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je xchain69_n2_β
 jmp xchain69_n2_β
 xchain69_n3_β:
 jmp xchain69_n2_β
xchain69_n4_α:
# IR_EVERY
 jmp xchain69_n5_α
 xchain69_n4_β:
 jmp xchain69_n5_α
xchain69_n5_α:
# IR_VAR
bb46_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain69_n6_α
 xchain69_n5_β:
 jmp xchain69_n8_α
xchain69_n6_α:
# IR_LIT_S
bb47_α:
 mov qword ptr [r12 + 152], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 160], rax
 jmp xchain69_n7_α
 xchain69_n6_β:
 jmp xchain69_n8_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string " Deterministic Finite Automaton is:"
xchain69_n7_α:
bb48_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+184]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 192], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+200]
 mov qword ptr [r12 + 200], 1
 mov rax, qword ptr [rip + .Lx80_2]
 mov qword ptr [r12 + 208], rax
 jmp .Lx80_3
.Lx80_2:
 .quad .Lx80_2_s
.Lx80_2_s:
 .string " Deterministic Finite Automaton is:"
.Lx80_3:
  .section .rodata
  .Lrkfn81: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 cmp eax, 99
 je xchain69_n8_α
 jmp xchain69_n8_α
 xchain69_n7_β:
 jmp xchain69_n8_α
xchain69_n8_α:
bb49_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn83: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 232]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je xchain69_n9_α
 jmp xchain69_n9_α
 xchain69_n8_β:
 jmp xchain69_n9_α
xchain69_n9_α:
# IR_LIT_S
bb50_α:
 mov qword ptr [r12 + 232], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 240], rax
 jmp xchain69_n10_α
 xchain69_n9_β:
 jmp xchain69_n11_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "\t(Q,S,delta,q0,F)"
xchain69_n10_α:
bb51_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 232]
 mov rsi, qword ptr [r12 + 240]
 call rt_write_any_nl@PLT
 jmp xchain69_n11_α
xchain69_n10_β:
xchain69_n10_β:
 jmp xchain69_n11_α
xchain69_n11_α:
bb52_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn87: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn87]
 lea rsi, [r12 + 264]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 cmp eax, 99
 je xchain69_n12_α
 jmp xchain69_n12_α
 xchain69_n11_β:
 jmp xchain69_n12_α
xchain69_n12_α:
# IR_LIT_S
bb53_α:
 mov qword ptr [r12 + 264], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 272], rax
 jmp xchain69_n13_α
 xchain69_n12_β:
 jmp xchain69_n14_α
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "where:"
xchain69_n13_α:
bb54_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 264]
 mov rsi, qword ptr [r12 + 272]
 call rt_write_any_nl@PLT
 jmp xchain69_n14_α
xchain69_n13_β:
xchain69_n13_β:
 jmp xchain69_n14_α
xchain69_n14_α:
bb55_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn91: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn91]
 lea rsi, [r12 + 296]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je xchain69_n15_α
 jmp xchain69_n15_α
 xchain69_n14_β:
 jmp xchain69_n15_α
xchain69_n15_α:
xargsub93_n0_α:
# IR_LIT_S
bb56_α:
 mov qword ptr [r12 + 296], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 304], rax
 jmp xicnarg92_done
 xargsub93_n0_β:
 jmp xchain69_n16_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "Q"
xicnarg92_done:
xargsub96_n0_α:
# IR_VAR
bb57_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub96_n1_α
 xargsub96_n0_β:
 jmp xchain69_n16_α
xargsub96_n1_α:
# IR_FIELD_GET
bb58_α:
 mov rdi, qword ptr [rip + .Lx100_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call dat_field_get@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 jmp xicnarg95_done
 xargsub96_n1_β:
 jmp xchain69_n16_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "Q"
xicnarg95_done:
bb59_α:
  .section .rodata
  .Lcall59_pname: .string "writeset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+296]
 mov rdx, qword ptr [r12+304]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+312]
 mov rdx, qword ptr [r12+320]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall59_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 cmp eax, 99
 je xchain69_n16_α
 jmp xchain69_n16_α
xchain69_n15_β:
 jmp xchain69_n16_α
xchain69_n16_α:
xargsub103_n0_α:
# IR_LIT_S
bb60_α:
 mov qword ptr [r12 + 344], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [r12 + 352], rax
 jmp xicnarg102_done
 xargsub103_n0_β:
 jmp xchain69_n17_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "S"
xicnarg102_done:
xargsub106_n0_α:
# IR_VAR
bb61_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub106_n1_α
 xargsub106_n0_β:
 jmp xchain69_n17_α
xargsub106_n1_α:
# IR_FIELD_GET
bb62_α:
 mov rdi, qword ptr [rip + .Lx110_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call dat_field_get@PLT
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp xicnarg105_done
 xargsub106_n1_β:
 jmp xchain69_n17_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "S"
xicnarg105_done:
bb63_α:
  .section .rodata
  .Lcall63_pname: .string "writeset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+344]
 mov rdx, qword ptr [r12+352]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+360]
 mov rdx, qword ptr [r12+368]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall63_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 376], rax
 mov qword ptr [r12 + 384], rdx
 cmp eax, 99
 je xchain69_n17_α
 jmp xchain69_n17_α
xchain69_n16_β:
 jmp xchain69_n17_α
xchain69_n17_α:
xargsub113_n0_α:
# IR_LIT_S
bb64_α:
 mov qword ptr [r12 + 392], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 400], rax
 jmp xicnarg112_done
 xargsub113_n0_β:
 jmp xchain69_n18_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "F"
xicnarg112_done:
xargsub116_n0_α:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub116_n1_α
 xargsub116_n0_β:
 jmp xchain69_n18_α
xargsub116_n1_α:
# IR_FIELD_GET
bb66_α:
 mov rdi, qword ptr [rip + .Lx120_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call dat_field_get@PLT
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 jmp xicnarg115_done
 xargsub116_n1_β:
 jmp xchain69_n18_α
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "F"
xicnarg115_done:
bb67_α:
  .section .rodata
  .Lcall67_pname: .string "writeset"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+392]
 mov rdx, qword ptr [r12+400]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+408]
 mov rdx, qword ptr [r12+416]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall67_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 424], rax
 mov qword ptr [r12 + 432], rdx
 cmp eax, 99
 je xchain69_n18_α
 jmp xchain69_n18_α
xchain69_n17_β:
 jmp xchain69_n18_α
xchain69_n18_α:
# IR_LIT_S
bb68_α:
 mov qword ptr [r12 + 440], 1
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [r12 + 448], rax
 jmp xchain69_n19_α
 xchain69_n18_β:
 jmp xchain69_n22_α
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string "\tStart state is "
xchain69_n19_α:
# IR_VAR
bb69_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain69_n20_α
 xchain69_n19_β:
 jmp xchain69_n22_α
xchain69_n20_α:
# IR_FIELD_GET
bb70_α:
 mov rdi, qword ptr [rip + .Lx126_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call dat_field_get@PLT
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 jmp xchain69_n21_α
 xchain69_n20_β:
 jmp xchain69_n22_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "q0"
xchain69_n21_α:
bb71_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+488]
 mov qword ptr [r12 + 488], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [r12 + 496], rax
 jmp .Lx127_1
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "\tStart state is "
.Lx127_1:
# marshal arg1 = nested producer-box slot [r12+456] -> [r12+504]
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 504], rax
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
  .section .rodata
  .Lrkfn128: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 cmp eax, 99
 je xchain69_n22_α
 jmp xchain69_n22_α
 xchain69_n21_β:
 jmp xchain69_n22_α
xchain69_n22_α:
# IR_LIT_S
bb72_α:
 mov qword ptr [r12 + 520], 1
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [r12 + 528], rax
 jmp xchain69_n23_α
 xchain69_n22_β:
 jmp xchain69_n24_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "\tDelta: "
xchain69_n23_α:
bb73_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 520]
 mov rsi, qword ptr [r12 + 528]
 call rt_write_any_nl@PLT
 jmp xchain69_n24_α
xchain69_n23_β:
xchain69_n23_β:
 jmp xchain69_n24_α
xchain69_n24_α:
# IR_VAR
bb74_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xfget132_obj_done
 xfget132_obj_β:
 jmp xchain69_n26_α
xfget132_obj_done:
# IR_FIELD_GET
bb75_α:
 mov rdi, qword ptr [rip + .Lx135_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call dat_field_get@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 jmp xbang131_iter_done
 xbang131_iter_β:
 jmp xchain69_n26_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "Q"
xbang131_iter_done:
# IR_LIST_BANG
bb76_α:
 mov qword ptr [r12 + 552], 0
.Lx137_0:
 mov rdi, qword ptr [r12 + 536]
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp rax, 99
 je xchain69_n26_α
 jmp xchain69_n25_α
 xchain69_n24_β:
 inc qword ptr [r12 + 552]
 jmp .Lx137_0
xchain69_n25_α:
bb77_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 560]
 mov rdx, qword ptr [r12 + 568]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain69_n27_α
 xchain69_n25_β:
 jmp xchain69_n32_β
xchain69_n26_α:
# IR_EVERY
 jmp xchain69_n28_α
 xchain69_n26_β:
 jmp xchain69_n28_α
xchain69_n27_α:
# IR_LIT_S
bb79_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain69_n29_α
 xchain69_n27_β:
 jmp xchain69_n32_β
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "\td("
xchain69_n28_α:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain69_n30_α
 xchain69_n28_β:
 jmp proc_showdfa_ω
xchain69_n29_α:
# IR_VAR
bb81_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain69_n31_α
 xchain69_n29_β:
 jmp xchain69_n32_β
xchain69_n30_α:
# IR_RETURN
bb82_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_showdfa_γ
xchain69_n31_α:
# IR_LIT_S
bb83_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain69_n32_α
 xchain69_n31_β:
 jmp xchain69_n32_β
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string ","
xchain69_n32_α:
# IR_VAR
bb84_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xfget148_obj_done
 xfget148_obj_β:
 jmp xchain69_n34_α
xfget148_obj_done:
# IR_FIELD_GET
bb85_α:
 mov rdi, qword ptr [rip + .Lx151_0]
 mov rsi, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 call dat_field_get@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xbang147_iter_done
 xbang147_iter_β:
 jmp xchain69_n34_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "S"
xbang147_iter_done:
# IR_LIST_BANG
bb86_α:
 mov qword ptr [r12 + 640], 0
.Lx153_0:
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 640]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
 cmp rax, 99
 je xchain69_n34_α
 jmp xchain69_n33_α
 xchain69_n32_β:
 inc qword ptr [r12 + 640]
 jmp .Lx153_0
xchain69_n33_α:
bb87_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 648]
 mov rdx, qword ptr [r12 + 656]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
 jmp xchain69_n35_α
 xchain69_n33_β:
 jmp xchain69_n32_β
xchain69_n34_α:
# IR_EVERY
 jmp xchain69_n36_α
 xchain69_n34_β:
 jmp xchain69_n36_α
xchain69_n35_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 680], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [r12 + 688], rax
 jmp xchain69_n37_α
 xchain69_n35_β:
 jmp xchain69_n32_β
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string ") = "
xchain69_n36_α:
bb90_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn158: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 712]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 cmp eax, 99
 je xchain69_n24_β
 jmp xchain69_n38_α
 xchain69_n36_β:
 jmp xchain69_n24_β
xchain69_n37_α:
bb91_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+32] -> [r12+728]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 728], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 736], rax
# marshal arg1 = varslot [r12+48] -> [r12+744]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 744], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 752], rax
  .section .rodata
  .Lbynamefn160: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn160]
 lea rsi, [r12 + 728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 712], rax
 mov qword ptr [r12 + 720], rdx
 cmp eax, 99
 je xchain69_n32_β
 jmp xchain69_n39_α
xchain69_n37_β:
 jmp xchain69_n32_β
xchain69_n38_α:
jmp xchain69_n24_β
xchain69_n38_β:
jmp xchain69_n24_β
xchain69_n39_α:
bb92_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+776]
 mov qword ptr [r12 + 776], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 784], rax
 jmp .Lx161_1
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "\td("
.Lx161_1:
# marshal arg1 = varslot [r12+48] -> [r12+792]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 792], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 800], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+808]
 mov qword ptr [r12 + 808], 1
 mov rax, qword ptr [rip + .Lx161_4]
 mov qword ptr [r12 + 816], rax
 jmp .Lx161_5
.Lx161_4:
 .quad .Lx161_4_s
.Lx161_4_s:
 .string ","
.Lx161_5:
# marshal arg3 = nested producer-box slot [r12+664] -> [r12+824]
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 824], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 832], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+840]
 mov qword ptr [r12 + 840], 1
 mov rax, qword ptr [rip + .Lx161_8]
 mov qword ptr [r12 + 848], rax
 jmp .Lx161_9
.Lx161_8:
 .quad .Lx161_8_s
.Lx161_8_s:
 .string ") = "
.Lx161_9:
# marshal arg0 = varslot [r12+32] -> [r12+872]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 872], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 880], rax
# marshal arg1 = varslot [r12+48] -> [r12+888]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 888], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 896], rax
  .section .rodata
  .Lcallfn162: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn162]
 lea rsi, [r12 + 872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 856], rax
 mov qword ptr [r12 + 864], rdx
  .section .rodata
  .Lrkfn163: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 776]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 760], rax
 mov qword ptr [r12 + 768], rdx
 cmp eax, 99
 je xchain69_n32_β
 jmp xchain69_n32_β
 xchain69_n39_β:
 jmp xchain69_n32_β
proc_showdfa_β:
jmp proc_showdfa_ω
proc_showdfa_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_showdfa_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_writeset_α
proc_writeset_α:
#=======================================================================================================================
    .global proc_writeset_α
    .global proc_writeset_β
    .global proc_writeset_γ
    .global proc_writeset_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_writeset_α_body:
xchain164_n0_α:
# IR_LIT_S
bb93_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain164_n1_α
 xchain164_n0_β:
 jmp xchain164_n2_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string ""
xchain164_n1_α:
bb94_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain164_n2_α
 xchain164_n1_β:
 jmp xchain164_n2_α
xchain164_n2_α:
# IR_VAR
bb95_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain164_n3_α
 xchain164_n2_β:
 jmp xchain164_n3_β
xchain164_n3_α:
# IR_VAR
bb96_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang169_iter_done
 xbang169_iter_β:
 jmp xchain164_n7_α
xbang169_iter_done:
# IR_LIST_BANG
bb97_α:
 mov qword ptr [r12 + 96], 0
.Lx173_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 96]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp rax, 99
 je xchain164_n7_α
 jmp xchain164_n4_α
 xchain164_n3_β:
 inc qword ptr [r12 + 96]
 jmp .Lx173_0
xchain164_n4_α:
# IR_LIT_S
bb98_α:
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [r12 + 128], rax
 jmp xchain164_n5_α
 xchain164_n4_β:
 jmp xchain164_n3_β
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string ","
xchain164_n5_α:
bb99_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 104]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 128]
 call str_concat_d@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xchain164_n6_α
 xchain164_n5_β:
 jmp xchain164_n3_β
xchain164_n6_α:
bb100_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 136]
 mov rcx, qword ptr [r12 + 144]
 call str_concat_d@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp xchain164_n8_α
 xchain164_n6_β:
 jmp xchain164_n3_β
xchain164_n7_α:
# IR_EVERY
 jmp xchain164_n9_α
 xchain164_n7_β:
 jmp xchain164_n9_α
xchain164_n8_α:
bb102_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xchain164_n3_β
 xchain164_n8_β:
 jmp xchain164_n3_β
xchain164_n9_α:
# IR_LIT_S
bb103_α:
 mov qword ptr [r12 + 184], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 192], rax
 jmp xchain164_n10_α
 xchain164_n9_β:
 jmp xchain164_n16_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "\t"
xchain164_n10_α:
# IR_VAR
bb104_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain164_n11_α
 xchain164_n10_β:
 jmp xchain164_n16_α
xchain164_n11_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 200], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 208], rax
 jmp xchain164_n12_α
 xchain164_n11_β:
 jmp xchain164_n16_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string " = {"
xchain164_n12_α:
# IR_VAR
bb106_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain164_n13_α
 xchain164_n12_β:
 jmp xchain164_n16_α
xchain164_n13_α:
# IR_LIT_I
bb107_α:
 mov qword ptr [r12 + 216], 6
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 224], rax
 jmp xsec185_i1_done
 xsec185_i1_b:
 jmp xchain164_n16_α
.Lx186_0:
 .quad 1
xsec185_i1_done:
# IR_LIT_I
bb108_α:
 mov qword ptr [r12 + 232], 6
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 240], rax
 jmp xsec185_i2_done
 xsec185_i2_b:
 jmp xchain164_n16_α
.Lx187_0:
 .quad 18446744073709551615
xsec185_i2_done:
# IR_SECTION
bb109_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 216]
 mov rcx, qword ptr [r12 + 224]
 mov r8, qword ptr [r12 + 232]
 mov r9, qword ptr [r12 + 240]
 call subscript_get2@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
 jmp xchain164_n14_α
 xchain164_n13_β:
 jmp xchain164_n16_α
xchain164_n14_α:
# IR_LIT_S
bb110_α:
 mov qword ptr [r12 + 264], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 272], rax
 jmp xchain164_n15_α
 xchain164_n14_β:
 jmp xchain164_n16_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "}"
xchain164_n15_α:
bb111_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+296]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 296], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 304], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+312]
 mov qword ptr [r12 + 312], 1
 mov rax, qword ptr [rip + .Lx190_2]
 mov qword ptr [r12 + 320], rax
 jmp .Lx190_3
.Lx190_2:
 .quad .Lx190_2_s
.Lx190_2_s:
 .string " = {"
.Lx190_3:
# marshal arg2 = varslot [r12+48] -> [r12+328]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 328], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 336], rax
# marshal arg3 = nested producer-box slot [r12+248] -> [r12+344]
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 344], rax
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 352], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+360]
 mov qword ptr [r12 + 360], 1
 mov rax, qword ptr [rip + .Lx190_8]
 mov qword ptr [r12 + 368], rax
 jmp .Lx190_9
.Lx190_8:
 .quad .Lx190_8_s
.Lx190_8_s:
 .string "}"
.Lx190_9:
  .section .rodata
  .Lrkfn191: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 296]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je xchain164_n16_α
 jmp xchain164_n16_α
 xchain164_n15_β:
 jmp xchain164_n16_α
xchain164_n16_α:
# IR_RETURN
bb112_α:
 mov rax, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_writeset_γ
proc_writeset_β:
jmp proc_writeset_ω
proc_writeset_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_writeset_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_minimize_α
proc_minimize_α:
#=======================================================================================================================
    .global proc_minimize_α
    .global proc_minimize_β
    .global proc_minimize_γ
    .global proc_minimize_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_minimize_α_body:
xchain193_n0_α:
bb113_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn195: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain193_n2_α
 jmp xchain193_n1_α
 xchain193_n0_β:
 jmp xchain193_n2_α
xchain193_n1_α:
bb114_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rcx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rcx
 jmp xchain193_n2_α
 xchain193_n1_β:
 jmp xchain193_n2_α
xchain193_n2_α:
bb115_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn198: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn198]
 lea rsi, [r12 + 176]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain193_n4_α
 jmp xchain193_n3_α
 xchain193_n2_β:
 jmp xchain193_n4_α
xchain193_n3_α:
bb116_α:
# IR_ASSIGN_DESCR gva
 mov rax, qword ptr [r12 + 160]
 mov rcx, qword ptr [r12 + 168]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rcx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rcx
 jmp xchain193_n4_α
 xchain193_n3_β:
 jmp xchain193_n4_α
xchain193_n4_α:
# IR_VAR
bb117_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain193_n5_α
 xchain193_n4_β:
 jmp xchain193_n7_α
xchain193_n5_α:
# IR_FIELD_GET
bb118_α:
 mov rdi, qword ptr [rip + .Lx203_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain193_n6_α
 xchain193_n5_β:
 jmp xchain193_n7_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "F"
xchain193_n6_α:
bb119_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain193_n7_α
 xchain193_n6_β:
 jmp xchain193_n7_α
xchain193_n7_α:
xargsub206_n0_α:
# IR_VAR
bb120_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub206_n1_α
 xargsub206_n0_β:
 jmp xchain193_n9_α
xargsub206_n1_α:
# IR_FIELD_GET
bb121_α:
 mov rdi, qword ptr [rip + .Lx210_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xicnarg205_done
 xargsub206_n1_β:
 jmp xchain193_n9_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "Q"
xicnarg205_done:
xargsub212_n0_α:
# IR_VAR
bb122_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub212_n1_α
 xargsub212_n0_β:
 jmp xchain193_n9_α
xargsub212_n1_α:
# IR_FIELD_GET
bb123_α:
 mov rdi, qword ptr [rip + .Lx216_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xicnarg211_done
 xargsub212_n1_β:
 jmp xchain193_n9_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "F"
xicnarg211_done:
bb124_α:
  .section .rodata
  .Lcall124_pname: .string "diff"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+240]
 mov rdx, qword ptr [r12+248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall124_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain193_n9_α
 jmp xchain193_n8_α
xchain193_n7_β:
 jmp xchain193_n9_α
xchain193_n8_α:
bb125_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain193_n9_α
 xchain193_n8_β:
 jmp xchain193_n9_α
xchain193_n9_α:
# IR_VAR
bb126_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang219_iter_done
 xbang219_iter_β:
 jmp xchain193_n16_α
xbang219_iter_done:
# IR_LIST_BANG
bb127_α:
 mov qword ptr [r12 + 288], 0
.Lx223_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 288]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
 cmp rax, 99
 je xchain193_n16_α
 jmp xchain193_n10_α
 xchain193_n9_β:
 inc qword ptr [r12 + 288]
 jmp .Lx223_0
xchain193_n10_α:
bb128_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 jmp xchain193_n11_α
 xchain193_n10_β:
 jmp xchain193_n35_β
xchain193_n11_α:
# IR_VAR
bb129_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xbang225_iter_done
 xbang225_iter_β:
 jmp xchain193_n16_α
xbang225_iter_done:
# IR_LIST_BANG
bb130_α:
 mov qword ptr [r12 + 328], 0
.Lx229_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 328]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp rax, 99
 je xchain193_n16_α
 jmp xchain193_n12_α
 xchain193_n11_β:
 inc qword ptr [r12 + 328]
 jmp .Lx229_0
xchain193_n12_α:
bb131_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain193_n13_α
 xchain193_n12_β:
 jmp xchain193_n35_β
xchain193_n13_α:
jmp xchain193_n14_α
xchain193_n13_β:
jmp xchain193_n35_β
xchain193_n14_α:
# IR_VAR gva
bb132_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain193_n15_α
 xchain193_n14_β:
 jmp xchain193_n11_β
xchain193_n15_α:
bb133_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 352]
 cmp eax, 4
 jne .Lx234_0
 mov rax, qword ptr [r12 + 352]
 cmp eax, 6
 jne .Lx234_0
 mov rsi, qword ptr [r12 + 360]
 mov rcx, qword ptr [r12 + 360]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx234_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx234_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain193_n11_β
.Lx234_0:
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 352]
 mov rcx, qword ptr [r12 + 360]
 mov r8, qword ptr [r12 + 368]
 mov r9, qword ptr [r12 + 376]
 call subscript_set@PLT
 cmp eax, 0
 je xchain193_n11_β
 jmp xchain193_n11_β
 xchain193_n15_β:
 jmp xchain193_n11_β
xchain193_n16_α:
# IR_EVERY
 jmp xchain193_n17_α
 xchain193_n16_β:
 jmp xchain193_n17_α
xchain193_n17_α:
# IR_VAR
bb135_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang236_iter_done
 xbang236_iter_β:
 jmp xchain193_n19_α
xbang236_iter_done:
# IR_LIST_BANG
bb136_α:
 mov qword ptr [r12 + 384], 0
.Lx240_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 384]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 392], rax
 mov qword ptr [r12 + 400], rdx
 cmp rax, 99
 je xchain193_n19_α
 jmp xchain193_n18_α
 xchain193_n17_β:
 inc qword ptr [r12 + 384]
 jmp .Lx240_0
xchain193_n18_α:
bb137_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 392]
 mov rdx, qword ptr [r12 + 400]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 408], rax
 mov qword ptr [r12 + 416], rdx
 jmp xchain193_n20_α
 xchain193_n18_β:
 jmp xchain193_n19_α
xchain193_n19_α:
# IR_VAR
bb138_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xbang242_iter_done
 xbang242_iter_β:
 jmp xchain193_n22_α
xbang242_iter_done:
# IR_LIST_BANG
bb139_α:
 mov qword ptr [r12 + 424], 0
.Lx246_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 424]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp rax, 99
 je xchain193_n22_α
 jmp xchain193_n21_α
 xchain193_n19_β:
 inc qword ptr [r12 + 424]
 jmp .Lx246_0
xchain193_n20_α:
# IR_VAR
bb140_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang247_iter_done
 xbang247_iter_β:
 jmp xchain193_n19_β
xbang247_iter_done:
# IR_LIST_BANG
bb141_α:
 mov qword ptr [r12 + 448], 0
.Lx251_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 448]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 456], rax
 mov qword ptr [r12 + 464], rdx
 cmp rax, 99
 je xchain193_n19_β
 jmp xchain193_n23_α
 xchain193_n20_β:
 inc qword ptr [r12 + 448]
 jmp .Lx251_0
xchain193_n21_α:
bb142_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 472], rax
 mov qword ptr [r12 + 480], rdx
 jmp xchain193_n24_α
 xchain193_n21_β:
 jmp xchain193_n35_β
xchain193_n22_α:
# IR_EVERY
 jmp xchain193_n25_α
 xchain193_n22_β:
 jmp xchain193_n25_α
xchain193_n23_α:
bb144_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 488], rax
 mov qword ptr [r12 + 496], rdx
 jmp xchain193_n26_α
 xchain193_n23_β:
 jmp xchain193_n19_β
xchain193_n24_α:
# IR_VAR
bb145_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xbang255_iter_done
 xbang255_iter_β:
 jmp xchain193_n22_α
xbang255_iter_done:
# IR_LIST_BANG
bb146_α:
 mov qword ptr [r12 + 504], 0
.Lx259_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 504]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp rax, 99
 je xchain193_n22_α
 jmp xchain193_n27_α
 xchain193_n24_β:
 inc qword ptr [r12 + 504]
 jmp .Lx259_0
xchain193_n25_α:
xargsub261_n0_α:
# IR_VAR
bb147_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg260_done
 xargsub261_n0_β:
 jmp proc_minimize_ω
xicnarg260_done:
xargsub265_n0_α:
# IR_VAR gva
bb148_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xicnarg264_done
 xargsub265_n0_β:
 jmp proc_minimize_ω
xicnarg264_done:
bb149_α:
  .section .rodata
  .Lcall149_pname: .string "makemdfa"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+528]
 mov rdx, qword ptr [r12+536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall149_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je proc_minimize_ω
 jmp xchain193_n28_α
xchain193_n25_β:
 jmp proc_minimize_ω
xchain193_n26_α:
xaltg268_a0_start:
jmp xaltg268_a0_succ
xaltg268_a0_beta:
jmp xaltg268_a1_start
xaltg268_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], 1
jmp xchain193_n29_α
xaltg268_a1_start:
jmp xaltg268_a1_succ
xaltg268_a1_beta:
jmp xchain193_n22_α
xaltg268_a1_succ:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
jmp xchain193_n29_α
xchain193_n26_β:
jmp xchain193_n22_α
xchain193_n27_α:
bb150_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
 jmp xchain193_n26_β
 xchain193_n27_β:
 jmp xchain193_n35_β
xchain193_n28_α:
# IR_RETURN
bb151_α:
 mov rax, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_minimize_γ
xchain193_n29_α:
# IR_VAR
bb152_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain193_n30_α
 xchain193_n29_β:
 jmp xchain193_n35_β
xchain193_n30_α:
# IR_VAR
bb153_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain193_n31_α
 xchain193_n30_β:
 jmp xchain193_n35_β
xchain193_n31_α:
bb154_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain193_n26_β
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 608], rax
 jmp xchain193_n32_α
 xchain193_n31_β:
 jmp xchain193_n26_β
xchain193_n32_α:
jmp xchain193_n33_α
xchain193_n32_β:
jmp xchain193_n35_β
xchain193_n33_α:
bb155_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+632]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 632], rax
 mov qword ptr [r12 + 640], rdx
# marshal arg0 = varslot [r12+16] -> [r12+680]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 680], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 688], rax
# marshal arg1 = varslot [r12+64] -> [r12+696]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 696], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 704], rax
  .section .rodata
  .Lcallfn279: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn279]
 lea rsi, [r12 + 680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 664], rax
 mov qword ptr [r12 + 672], rdx
  .section .rodata
  .Lcallfn280: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn280]
 lea rsi, [r12 + 664]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 648], rax
 mov qword ptr [r12 + 656], rdx
  .section .rodata
  .Lbynamefn281: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn281]
 lea rsi, [r12 + 632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 cmp eax, 99
 je xchain193_n35_α
 jmp xchain193_n34_α
xchain193_n33_β:
 jmp xchain193_n35_α
xchain193_n34_α:
# IR_UNOP
bb156_α:
 mov eax, dword ptr [r12 + 616]
 cmp eax, 99
 je xchain193_n35_α
 cmp eax, 0
 je xchain193_n35_α
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 720], rax
 jmp xchain193_n36_α
 xchain193_n34_β:
 jmp xchain193_n35_α
xchain193_n35_α:
# IR_VAR
bb157_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xfget284_obj_done
 xfget284_obj_β:
 jmp xchain193_n38_α
xfget284_obj_done:
# IR_FIELD_GET
bb158_α:
 mov rdi, qword ptr [rip + .Lx287_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 728], rax
 mov qword ptr [r12 + 736], rdx
 jmp xbang283_iter_done
 xbang283_iter_β:
 jmp xchain193_n38_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "S"
xbang283_iter_done:
# IR_LIST_BANG
bb159_α:
 mov qword ptr [r12 + 744], 0
.Lx289_0:
 mov rdi, qword ptr [r12 + 728]
 mov rsi, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp rax, 99
 je xchain193_n38_α
 jmp xchain193_n37_α
 xchain193_n35_β:
 inc qword ptr [r12 + 744]
 jmp .Lx289_0
xchain193_n36_α:
# IR_VAR gva
bb160_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain193_n39_α
 xchain193_n36_β:
 jmp xchain193_n41_α
xchain193_n37_α:
bb161_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain193_n40_α
 xchain193_n37_β:
 jmp xchain193_n35_β
xchain193_n38_α:
# IR_EVERY
 jmp xchain193_n32_α
 xchain193_n38_β:
 jmp xchain193_n32_α
xchain193_n39_α:
bb163_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 600]
 cmp eax, 4
 jne .Lx295_0
 mov rax, qword ptr [r12 + 712]
 cmp eax, 6
 jne .Lx295_0
 mov rsi, qword ptr [r12 + 608]
 mov rcx, qword ptr [r12 + 720]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx295_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx295_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain193_n41_α
.Lx295_0:
 mov rdi, qword ptr [r12 + 600]
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 712]
 mov rcx, qword ptr [r12 + 720]
 mov r8, qword ptr [r12 + 768]
 mov r9, qword ptr [r12 + 776]
 call subscript_set@PLT
 cmp eax, 0
 je xchain193_n41_α
 jmp xchain193_n41_α
 xchain193_n39_β:
 jmp xchain193_n41_α
xchain193_n40_α:
bb164_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+816]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = varslot [r12+64] -> [r12+832]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lbynamefn297: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn297]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain193_n35_β
 jmp xchain193_n42_α
xchain193_n40_β:
 jmp xchain193_n35_β
xchain193_n41_α:
xargsub299_n0_α:
bb165_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+864]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
# marshal arg0 = varslot [r12+64] -> [r12+896]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lcallfn301: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn301]
 lea rsi, [r12 + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
  .section .rodata
  .Lbynamefn302: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn302]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain193_n32_α
 jmp xicnarg298_done
xargsub299_n0_β:
 jmp xchain193_n32_α
xicnarg298_done:
bb166_α:
  .section .rodata
  .Lcall169_pname: .string "marklists"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+848]
 mov rdx, qword ptr [r12+856]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall169_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain193_n32_α
 jmp xchain193_n43_α
xchain193_n41_β:
 jmp xchain193_n32_α
xchain193_n42_α:
bb167_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+16] -> [r12+944]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 952], rax
# marshal arg1 = varslot [r12+80] -> [r12+960]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lbynamefn305: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn305]
 lea rsi, [r12 + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain193_n35_β
 jmp xchain193_n44_α
xchain193_n42_β:
 jmp xchain193_n35_β
xchain193_n43_α:
jmp xchain193_n32_α
xchain193_n43_β:
jmp xchain193_n32_α
xchain193_n44_α:
bb168_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 800]
 mov rsi, qword ptr [r12 + 808]
 mov rdx, qword ptr [r12 + 928]
 mov rcx, qword ptr [r12 + 936]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain193_n35_β
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 984], rax
 jmp xchain193_n45_α
 xchain193_n44_β:
 jmp xchain193_n35_β
xchain193_n45_α:
bb169_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+1024]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = varslot [r12+64] -> [r12+1040]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lcallfn308: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn308]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
  .section .rodata
  .Lrkfn309: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn309]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain193_n47_α
 jmp xchain193_n46_α
 xchain193_n45_β:
 jmp xchain193_n47_α
xchain193_n46_α:
bb170_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 992]
 mov rdx, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain193_n47_α
 xchain193_n46_β:
 jmp xchain193_n47_α
xchain193_n47_α:
# IR_VAR
bb171_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain193_n48_α
 xchain193_n47_β:
 jmp xchain193_n50_α
xchain193_n48_α:
bb172_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+64] -> [r12+1088]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn314: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn314]
 lea rsi, [r12 + 1088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain193_n50_α
 jmp xchain193_n49_α
 xchain193_n48_β:
 jmp xchain193_n50_α
xchain193_n49_α:
bb173_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain193_n50_α
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1112], rax
 jmp xchain193_n51_α
 xchain193_n49_β:
 jmp xchain193_n50_α
xchain193_n50_α:
bb174_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+1136]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
# marshal arg1 = varslot [r12+112] -> [r12+1152]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lbynamefn317: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn317]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain193_n53_α
 jmp xchain193_n52_α
xchain193_n50_β:
 jmp xchain193_n53_α
xchain193_n51_α:
xchain193_n51_β:
jmp xchain193_n35_β
jmp xchain193_n35_β
xchain193_n52_α:
# IR_UNOP
bb175_α:
 mov eax, dword ptr [r12 + 1120]
 cmp eax, 99
 je xchain193_n53_α
 cmp eax, 0
 jne xchain193_n53_α
 mov qword ptr [r12 + 1168], 0
 mov qword ptr [r12 + 1176], 0
 jmp xchain193_n54_α
 xchain193_n52_β:
 jmp xchain193_n53_α
xchain193_n53_α:
bb176_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+1232]
   lea rdi, [rip + .S1]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
# marshal arg1 = varslot [r12+112] -> [r12+1248]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lcallfn320: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn320]
 lea rsi, [r12 + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
# marshal arg0 = varslot [r12+64] -> [r12+1264]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lcallfn321: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn321]
 lea rsi, [r12 + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
  .section .rodata
  .Lbynamefn322: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn322]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain193_n35_β
 jmp xchain193_n55_α
xchain193_n53_β:
 jmp xchain193_n35_β
xchain193_n54_α:
bb177_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn324: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn324]
 lea rsi, [r12 + 1280]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain193_n53_α
 jmp xchain193_n56_α
xchain193_n54_β:
 jmp xchain193_n53_α
xchain193_n55_α:
jmp xchain193_n35_β
xchain193_n55_β:
jmp xchain193_n35_β
xchain193_n56_α:
# [walk_bb_node: kind=5 unhandled]
proc_minimize_β:
jmp proc_minimize_ω
proc_minimize_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_minimize_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_marklists_α
proc_marklists_α:
#=======================================================================================================================
    .global proc_marklists_α
    .global proc_marklists_β
    .global proc_marklists_γ
    .global proc_marklists_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_marklists_α_body:
xchain326_n0_α:
# IR_VAR
bb179_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain326_n1_α
 xchain326_n0_β:
 jmp proc_marklists_ω
xchain326_n1_α:
# IR_UNOP
bb180_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je proc_marklists_ω
 cmp eax, 0
 jne proc_marklists_ω
 mov qword ptr [r12 + 32], 0
 mov qword ptr [r12 + 40], 0
 jmp xchain326_n2_α
 xchain326_n1_β:
 jmp proc_marklists_ω
xchain326_n2_α:
# IR_RETURN
bb181_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_marklists_γ
proc_marklists_β:
jmp proc_marklists_ω
proc_marklists_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_marklists_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_makemdfa_α
proc_makemdfa_α:
#=======================================================================================================================
    .global proc_makemdfa_α
    .global proc_makemdfa_β
    .global proc_makemdfa_γ
    .global proc_makemdfa_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_makemdfa_α_body:
xchain331_n0_α:
bb182_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn333: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 240]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain331_n2_α
 jmp xchain331_n1_α
 xchain331_n0_β:
 jmp xchain331_n2_α
xchain331_n1_α:
bb183_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain331_n2_α
 xchain331_n1_β:
 jmp xchain331_n2_α
xchain331_n2_α:
# IR_LIT_S
bb184_α:
 mov qword ptr [r12 + 256], 1
 mov dword ptr [r12 + 260], -1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain331_n3_α
 xchain331_n2_β:
 jmp xchain331_n4_α
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string ""
xchain331_n3_α:
bb185_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain331_n4_α
 xchain331_n3_β:
 jmp xchain331_n4_α
xchain331_n4_α:
# IR_VAR
bb186_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xfget338_obj_done
 xfget338_obj_β:
 jmp xchain331_n28_α
xfget338_obj_done:
# IR_FIELD_GET
bb187_α:
 mov rdi, qword ptr [rip + .Lx341_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xbang337_iter_done
 xbang337_iter_β:
 jmp xchain331_n28_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "Q"
xbang337_iter_done:
# IR_LIST_BANG
bb188_α:
 mov qword ptr [r12 + 304], 0
.Lx343_0:
 mov rdi, qword ptr [r12 + 288]
 mov rsi, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 312], rax
 mov qword ptr [r12 + 320], rdx
 cmp rax, 99
 je xchain331_n28_α
 jmp xchain331_n5_α
 xchain331_n4_β:
 inc qword ptr [r12 + 304]
 jmp .Lx343_0
xchain331_n5_α:
bb189_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 328], rax
 mov qword ptr [r12 + 336], rdx
 jmp xchain331_n6_α
 xchain331_n5_β:
 jmp xchain331_n46_β
xchain331_n6_α:
# IR_VAR
bb190_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain331_n7_α
 xchain331_n6_β:
 jmp xchain331_n10_α
xchain331_n7_α:
# IR_VAR
bb191_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain331_n8_α
 xchain331_n7_β:
 jmp xchain331_n10_α
xchain331_n8_α:
jmp xbinop349_lhs_done
xbinop349_lhs_done:
jmp xbinop349_rhs_done
xbinop349_rhs_done:
bb192_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain331_n10_α
 mov qword ptr [r12 + 344], rax
 mov qword ptr [r12 + 352], rdx
 jmp xchain331_n9_α
 xchain331_n8_β:
 jmp xchain331_n10_α
xchain331_n9_α:
bb193_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 344]
 mov rdx, qword ptr [r12 + 352]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 360], rax
 mov qword ptr [r12 + 368], rdx
 jmp xchain331_n10_α
 xchain331_n9_β:
 jmp xchain331_n10_α
xchain331_n10_α:
xaltg352_a0_start:
xargsub354_n0_α:
# IR_VAR
bb194_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xicnarg353_done
 xargsub354_n0_β:
 jmp xaltg352_a1_start
xicnarg353_done:
xargsub358_n0_α:
# IR_VAR
bb195_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg357_done
 xargsub358_n0_β:
 jmp xaltg352_a1_start
xicnarg357_done:
bb196_α:
  .section .rodata
  .Lcall202_pname: .string "equiv"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+80]
 mov rdx, qword ptr [r12+88]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall202_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xaltg352_a1_start
 jmp xaltg352_a0_succ
xaltg352_a0_beta:
 jmp xaltg352_a1_start
xaltg352_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], 1
jmp xchain331_n11_α
xaltg352_a1_start:
bb197_α:
# BOX IR_CALL cset(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+80] -> [r12+432]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn364: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn364]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain331_n12_α
 jmp xaltg352_a1_succ
 xaltg352_a1_beta:
 jmp xchain331_n12_α
xaltg352_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 376], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], 1
jmp xchain331_n11_α
xchain331_n10_β:
jmp xchain331_n12_α
xchain331_n11_α:
bb198_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 376]
 mov rdx, qword ptr [r12 + 384]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain331_n12_α
 xchain331_n11_β:
 jmp xchain331_n12_α
xchain331_n12_α:
xargsub369_n0_α:
# IR_VAR
bb199_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub369_n1_α
 xargsub369_n0_β:
 jmp xchain331_n18_α
xargsub369_n1_α:
# IR_FIELD_GET
bb200_α:
 mov rdi, qword ptr [rip + .Lx373_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xicnarg368_done
 xargsub369_n1_β:
 jmp xchain331_n18_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "Q"
xicnarg368_done:
xargsub375_n0_α:
# IR_VAR
bb201_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg374_done
 xargsub375_n0_β:
 jmp xchain331_n18_α
xicnarg374_done:
bb202_α:
  .section .rodata
  .Lcall208_pname: .string "diff"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+464]
 mov rdx, qword ptr [r12+472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall208_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain331_n18_α
 jmp xbang367_iter_done
xbang367_iter_β:
 jmp xchain331_n18_α
xbang367_iter_done:
# IR_LIST_BANG
bb203_α:
 mov qword ptr [r12 + 496], 0
.Lx380_0:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 mov rdx, qword ptr [r12 + 496]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 504], rax
 mov qword ptr [r12 + 512], rdx
 cmp rax, 99
 je xchain331_n18_α
 jmp xchain331_n13_α
 xchain331_n12_β:
 inc qword ptr [r12 + 496]
 jmp .Lx380_0
xchain331_n13_α:
bb204_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], rdx
 jmp xchain331_n14_α
 xchain331_n13_β:
 jmp xchain331_n46_β
xchain331_n14_α:
# IR_VAR
bb205_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain331_n15_α
 xchain331_n14_β:
 jmp xchain331_n46_β
xchain331_n15_α:
# IR_VAR
bb206_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xchain331_n16_α
 xchain331_n15_β:
 jmp xchain331_n46_β
xchain331_n16_α:
bb207_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 112]
 mov rcx, qword ptr [r12 + 120]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain331_n46_β
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 536], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 544], rax
 jmp xchain331_n17_α
 xchain331_n16_β:
 jmp xchain331_n46_β
xchain331_n17_α:
jmp xchain331_n19_α
xchain331_n17_β:
jmp xchain331_n46_β
xchain331_n18_α:
# IR_EVERY
 jmp xchain331_n20_α
 xchain331_n18_β:
 jmp xchain331_n20_α
xchain331_n19_α:
bb209_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = global VAR NV_GET -> [r12+568]
   lea rdi, [rip + .S0]
 call NV_GET_fn@PLT
 mov qword ptr [r12 + 568], rax
 mov qword ptr [r12 + 576], rdx
# marshal arg0 = varslot [r12+80] -> [r12+600]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 608], rax
  .section .rodata
  .Lcallfn389: .string "cset"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn389]
 lea rsi, [r12 + 600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 584], rax
 mov qword ptr [r12 + 592], rdx
  .section .rodata
  .Lbynamefn390: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn390]
 lea rsi, [r12 + 568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 552], rax
 mov qword ptr [r12 + 560], rdx
 cmp eax, 99
 je xchain331_n17_α
 jmp xchain331_n21_α
xchain331_n19_β:
 jmp xchain331_n17_α
xchain331_n20_α:
# IR_VAR
bb210_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain331_n22_α
 xchain331_n20_β:
 jmp xchain331_n4_β
xchain331_n21_α:
# IR_UNOP
bb211_α:
 mov eax, dword ptr [r12 + 552]
 cmp eax, 99
 je xchain331_n17_α
 cmp eax, 0
 jne xchain331_n17_α
 mov qword ptr [r12 + 616], 0
 mov qword ptr [r12 + 624], 0
 jmp xchain331_n23_α
 xchain331_n21_β:
 jmp xchain331_n17_α
xchain331_n22_α:
# IR_VAR
bb212_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xiset394_val_done
 xiset394_val_β:
 jmp xchain331_n4_β
xiset394_val_done:
# IR_VAR
bb213_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xiset394_key_done
 xiset394_key_β:
 jmp xchain331_n4_β
xiset394_key_done:
bb214_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 48]
 cmp eax, 4
 jne .Lx400_0
 mov rax, qword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx400_0
 mov rsi, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx400_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx400_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain331_n24_α
.Lx400_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 mov r8, qword ptr [r12 + 96]
 mov r9, qword ptr [r12 + 104]
 call subscript_set@PLT
 cmp eax, 0
 je xchain331_n4_β
 jmp xchain331_n24_α
 xchain331_n22_β:
 jmp xchain331_n4_β
xchain331_n23_α:
# IR_VAR
bb215_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xchain331_n25_α
 xchain331_n23_β:
 jmp xchain331_n17_α
xchain331_n24_α:
jmp xchain331_n4_β
xchain331_n24_β:
jmp xchain331_n4_β
xchain331_n25_α:
xaltg403_a0_start:
xargsub405_n0_α:
# IR_VAR
bb216_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xicnarg404_done
 xargsub405_n0_β:
 jmp xaltg403_a1_start
xicnarg404_done:
xargsub409_n0_α:
# IR_VAR
bb217_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg408_done
 xargsub409_n0_β:
 jmp xaltg403_a1_start
xicnarg408_done:
bb218_α:
  .section .rodata
  .Lcall225_pname: .string "equiv"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall225_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xaltg403_a1_start
 jmp xaltg403_a0_succ
xaltg403_a0_beta:
 jmp xaltg403_a1_start
xaltg403_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], 1
jmp xchain331_n26_α
xaltg403_a1_start:
# IR_VAR
bb219_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 120], rax
 jmp xaltg403_a1_succ
 xaltg403_a1_beta:
 jmp xchain331_n17_α
xaltg403_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], 1
jmp xchain331_n26_α
xchain331_n25_β:
jmp xchain331_n17_α
xchain331_n26_α:
jmp xbinop417_lhs_done
xbinop417_lhs_done:
jmp xbinop417_rhs_done
xbinop417_rhs_done:
bb220_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 632]
 mov rcx, qword ptr [r12 + 640]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain331_n17_α
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain331_n27_α
 xchain331_n26_β:
 jmp xchain331_n17_α
xchain331_n27_α:
bb221_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain331_n17_α
 xchain331_n27_β:
 jmp xchain331_n17_α
xchain331_n28_α:
# IR_EVERY
 jmp xchain331_n29_α
 xchain331_n28_β:
 jmp xchain331_n29_α
xchain331_n29_α:
bb223_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn422: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn422]
 lea rsi, [r12 + 704]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain331_n31_α
 jmp xchain331_n30_α
xchain331_n29_β:
 jmp xchain331_n31_α
xchain331_n30_α:
bb224_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain331_n31_α
 xchain331_n30_β:
 jmp xchain331_n31_α
xchain331_n31_α:
bb225_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn425: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn425]
 lea rsi, [r12 + 736]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain331_n33_α
 jmp xchain331_n32_α
xchain331_n31_β:
 jmp xchain331_n33_α
xchain331_n32_α:
bb226_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain331_n33_α
 xchain331_n32_β:
 jmp xchain331_n33_α
xchain331_n33_α:
bb227_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn428: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn428]
 lea rsi, [r12 + 784]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain331_n35_α
 jmp xchain331_n34_α
 xchain331_n33_β:
 jmp xchain331_n35_α
xchain331_n34_α:
bb228_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 768]
 mov rdx, qword ptr [r12 + 776]
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain331_n35_α
 xchain331_n34_β:
 jmp xchain331_n35_α
xchain331_n35_α:
xargsub431_n0_α:
# IR_VAR
bb229_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub431_n1_α
 xargsub431_n0_β:
 jmp xchain331_n37_α
xargsub431_n1_α:
# IR_FIELD_GET
bb230_α:
 mov rdi, qword ptr [rip + .Lx435_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xicnarg430_done
 xargsub431_n1_β:
 jmp xchain331_n37_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "q0"
xicnarg430_done:
xargsub437_n0_α:
# IR_VAR
bb231_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg436_done
 xargsub437_n0_β:
 jmp xchain331_n37_α
xicnarg436_done:
bb232_α:
  .section .rodata
  .Lcall239_pname: .string "equiv"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+800]
 mov rdx, qword ptr [r12+808]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall239_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain331_n37_α
 jmp xchain331_n36_α
xchain331_n35_β:
 jmp xchain331_n37_α
xchain331_n36_α:
bb233_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain331_n37_α
 xchain331_n36_β:
 jmp xchain331_n37_α
xchain331_n37_α:
bb234_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+128] -> [r12+864]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = varslot [r12+176] -> [r12+880]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lbynamefn443: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn443]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain331_n38_α
 jmp xchain331_n38_α
xchain331_n37_β:
 jmp xchain331_n38_α
xchain331_n38_α:
bb235_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+144] -> [r12+912]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = varslot [r12+176] -> [r12+928]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lbynamefn445: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn445]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain331_n39_α
 jmp xchain331_n39_α
xchain331_n38_β:
 jmp xchain331_n39_α
xchain331_n39_α:
bb236_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn447: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn447]
 lea rsi, [r12 + 960]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain331_n41_α
 jmp xchain331_n40_α
 xchain331_n39_β:
 jmp xchain331_n41_α
xchain331_n40_α:
bb237_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain331_n41_α
 xchain331_n40_β:
 jmp xchain331_n41_α
xchain331_n41_α:
# IR_VAR
bb238_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 200], rax
 jmp xchain331_n42_α
 xchain331_n41_β:
 jmp xchain331_n43_α
xchain331_n42_α:
bb239_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 896]
 cmp eax, 4
 jne .Lx453_0
 mov rax, qword ptr [r12 + 960]
 cmp eax, 6
 jne .Lx453_0
 mov rsi, qword ptr [r12 + 904]
 mov rcx, qword ptr [r12 + 968]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx453_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx453_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain331_n43_α
.Lx453_0:
 mov rdi, qword ptr [r12 + 896]
 mov rsi, qword ptr [r12 + 904]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 mov r8, qword ptr [r12 + 192]
 mov r9, qword ptr [r12 + 200]
 call subscript_set@PLT
 cmp eax, 0
 je xchain331_n43_α
 jmp xchain331_n43_α
 xchain331_n42_β:
 jmp xchain331_n43_α
xchain331_n43_α:
bb240_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+128] -> [r12+992]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn455: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn455]
 lea rsi, [r12 + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain331_n45_α
 jmp xchain331_n44_α
 xchain331_n43_β:
 jmp xchain331_n45_α
xchain331_n44_α:
bb241_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 976]
 mov rdx, qword ptr [r12 + 984]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain331_n46_α
 xchain331_n44_β:
 jmp xchain331_n45_α
xchain331_n45_α:
xchain331_n45_β:
jmp xchain331_n47_α
jmp xchain331_n47_α
xchain331_n46_α:
# IR_VAR
bb242_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xfget458_obj_done
 xfget458_obj_β:
 jmp xchain331_n49_α
xfget458_obj_done:
# IR_FIELD_GET
bb243_α:
 mov rdi, qword ptr [rip + .Lx461_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xbang457_iter_done
 xbang457_iter_β:
 jmp xchain331_n49_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "S"
xbang457_iter_done:
# IR_LIST_BANG
bb244_α:
 mov qword ptr [r12 + 1040], 0
.Lx463_0:
 mov rdi, qword ptr [r12 + 1024]
 mov rsi, qword ptr [r12 + 1032]
 mov rdx, qword ptr [r12 + 1040]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 1048], rax
 mov qword ptr [r12 + 1056], rdx
 cmp rax, 99
 je xchain331_n49_α
 jmp xchain331_n48_α
 xchain331_n46_β:
 inc qword ptr [r12 + 1040]
 jmp .Lx463_0
xchain331_n47_α:
bb245_α:
# BOX IR_CALL dfa(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+144] -> [r12+1080]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 1080], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 1088], rax
# marshal arg1 = varslot [r12+16] -> [r12+1096]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1096], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1104], rax
# marshal arg2 = varslot [r12+160] -> [r12+1112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 1112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 1120], rax
# marshal arg3 = varslot [r12+176] -> [r12+1128]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 1128], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 1136], rax
# marshal arg0 = varslot [r12+16] -> [r12+1160]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1168], rax
# marshal arg1 = varslot [r12+144] -> [r12+1176]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 1176], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 1184], rax
  .section .rodata
  .Lcallfn465: .string "finalstates"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn465]
 lea rsi, [r12 + 1160]
 mov edx, 2
 call rt_call_named_proc@PLT
 mov qword ptr [r12 + 1144], rax
 mov qword ptr [r12 + 1152], rdx
  .section .rodata
  .Lrkfn466: .string "dfa"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn466]
 lea rsi, [r12 + 1080]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1064], rax
 mov qword ptr [r12 + 1072], rdx
 cmp eax, 99
 je proc_makemdfa_ω
 jmp xchain331_n50_α
 xchain331_n47_β:
 jmp proc_makemdfa_ω
xchain331_n48_α:
bb246_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1048]
 mov rdx, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 mov qword ptr [r12 + 1192], rax
 mov qword ptr [r12 + 1200], rdx
 jmp xchain331_n51_α
 xchain331_n48_β:
 jmp xchain331_n46_β
xchain331_n49_α:
# IR_EVERY
 jmp xchain331_n43_α
 xchain331_n49_β:
 jmp xchain331_n43_α
xchain331_n50_α:
# IR_RETURN
bb248_α:
 mov rax, qword ptr [r12 + 1064]
 mov rdx, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_makemdfa_γ
xchain331_n51_α:
# IR_VAR
bb249_α:
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 168], rax
 jmp xchain331_n52_α
 xchain331_n51_β:
 jmp xchain331_n53_α
xchain331_n52_α:
bb250_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 1008]
 cmp eax, 4
 jne .Lx474_0
 mov rax, qword ptr [r12 + 1192]
 cmp eax, 6
 jne .Lx474_0
 mov rsi, qword ptr [r12 + 1016]
 mov rcx, qword ptr [r12 + 1200]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx474_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx474_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain331_n53_α
.Lx474_0:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 1192]
 mov rcx, qword ptr [r12 + 1200]
 mov r8, qword ptr [r12 + 160]
 mov r9, qword ptr [r12 + 168]
 call subscript_set@PLT
 cmp eax, 0
 je xchain331_n53_α
 jmp xchain331_n53_α
 xchain331_n52_β:
 jmp xchain331_n53_α
xchain331_n53_α:
bb251_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+192] -> [r12+1224]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 1224], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 1232], rax
# marshal arg0 = varslot [r12+160] -> [r12+1256]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 1264], rax
# marshal arg1 = varslot [r12+112] -> [r12+1272]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1272], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1280], rax
  .section .rodata
  .Lcallfn476: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn476]
 lea rsi, [r12 + 1256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1240], rax
 mov qword ptr [r12 + 1248], rdx
  .section .rodata
  .Lbynamefn477: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn477]
 lea rsi, [r12 + 1224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1208], rax
 mov qword ptr [r12 + 1216], rdx
 cmp eax, 99
 je xchain331_n46_β
 jmp xchain331_n54_α
xchain331_n53_β:
 jmp xchain331_n46_β
xchain331_n54_α:
# IR_UNOP
bb252_α:
 mov eax, dword ptr [r12 + 1208]
 cmp eax, 99
 je xchain331_n46_β
 cmp eax, 0
 jne xchain331_n46_β
 mov qword ptr [r12 + 1288], 0
 mov qword ptr [r12 + 1296], 0
 jmp xchain331_n55_α
 xchain331_n54_β:
 jmp xchain331_n46_β
xchain331_n55_α:
# IR_VAR
bb253_α:
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 200], rax
 jmp xchain331_n56_α
 xchain331_n55_β:
 jmp xchain331_n57_α
xchain331_n56_α:
 lea rdi, [rip + .S3]
 call rt_bomb@PLT
 ud2
xchain331_n57_α:
bb255_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+128] -> [r12+1320]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 1320], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 1328], rax
# marshal arg0 = varslot [r12+160] -> [r12+1352]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 1352], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 1360], rax
# marshal arg1 = varslot [r12+112] -> [r12+1368]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1368], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1376], rax
  .section .rodata
  .Lcallfn484: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn484]
 lea rsi, [r12 + 1352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1336], rax
 mov qword ptr [r12 + 1344], rdx
  .section .rodata
  .Lbynamefn485: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn485]
 lea rsi, [r12 + 1320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1304], rax
 mov qword ptr [r12 + 1312], rdx
 cmp eax, 99
 je xchain331_n58_α
 jmp xchain331_n58_α
xchain331_n57_β:
 jmp xchain331_n58_α
xchain331_n58_α:
bb256_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+144] -> [r12+1400]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 1400], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 1408], rax
# marshal arg0 = varslot [r12+160] -> [r12+1432]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 1432], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 1440], rax
# marshal arg1 = varslot [r12+112] -> [r12+1448]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1448], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1456], rax
  .section .rodata
  .Lcallfn487: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn487]
 lea rsi, [r12 + 1432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1416], rax
 mov qword ptr [r12 + 1424], rdx
  .section .rodata
  .Lbynamefn488: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn488]
 lea rsi, [r12 + 1400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1384], rax
 mov qword ptr [r12 + 1392], rdx
 cmp eax, 99
 je xchain331_n46_β
 jmp xchain331_n59_α
xchain331_n58_β:
 jmp xchain331_n46_β
xchain331_n59_α:
jmp xchain331_n60_α
xchain331_n59_β:
jmp xchain331_n46_β
xchain331_n60_α:
jmp xchain331_n46_β
xchain331_n60_β:
jmp xchain331_n46_β
proc_makemdfa_β:
jmp proc_makemdfa_ω
proc_makemdfa_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_makemdfa_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_equiv_α
proc_equiv_α:
#=======================================================================================================================
    .global proc_equiv_α
    .global proc_equiv_β
    .global proc_equiv_γ
    .global proc_equiv_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_equiv_α_body:
xchain489_n0_α:
# IR_VAR
bb257_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang490_iter_done
 xbang490_iter_β:
 jmp xchain489_n9_α
xbang490_iter_done:
# IR_LIST_BANG
bb258_α:
 mov qword ptr [r12 + 64], 0
.Lx494_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 cmp rax, 99
 je xchain489_n9_α
 jmp xchain489_n1_α
 xchain489_n0_β:
 inc qword ptr [r12 + 64]
 jmp .Lx494_0
xchain489_n1_α:
bb259_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 80]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 88], rax
 mov qword ptr [r12 + 96], rdx
 jmp xchain489_n2_α
 xchain489_n1_β:
 jmp xchain489_n0_β
xchain489_n2_α:
# IR_VAR
bb260_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain489_n3_α
 xchain489_n2_β:
 jmp xchain489_n0_β
xchain489_n3_α:
# IR_VAR
bb261_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain489_n4_α
 xchain489_n3_β:
 jmp xchain489_n0_β
xchain489_n4_α:
jmp xbinop500_lhs_done
xbinop500_lhs_done:
jmp xbinop500_rhs_done
xbinop500_rhs_done:
bb262_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 16]
 mov rcx, qword ptr [r12 + 24]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain489_n0_β
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 jmp xchain489_n5_α
 xchain489_n4_β:
 jmp xchain489_n0_β
xchain489_n5_α:
# IR_VAR
bb263_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain489_n6_α
 xchain489_n5_β:
 jmp xchain489_n0_β
xchain489_n6_α:
bb264_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 104]
 mov rsi, qword ptr [r12 + 112]
 mov rdx, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 56]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain489_n0_β
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 128], rax
 jmp xchain489_n7_α
 xchain489_n6_β:
 jmp xchain489_n0_β
xchain489_n7_α:
# IR_VAR
bb265_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain489_n8_α
 xchain489_n7_β:
 jmp proc_equiv_ω
xchain489_n8_α:
# IR_RETURN
bb266_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_equiv_γ
xchain489_n9_α:
# IR_EVERY
 jmp proc_equiv_ω
 xchain489_n9_β:
 jmp proc_equiv_ω
proc_equiv_β:
jmp proc_equiv_ω
proc_equiv_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_equiv_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_equivdelta_α
proc_equivdelta_α:
#=======================================================================================================================
    .global proc_equivdelta_α
    .global proc_equivdelta_β
    .global proc_equivdelta_γ
    .global proc_equivdelta_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_equivdelta_α_body:
xchain509_n0_α:
# IR_VAR
bb268_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang510_iter_done
 xbang510_iter_β:
 jmp xchain509_n2_α
xbang510_iter_done:
# IR_LIST_BANG
bb269_α:
 mov qword ptr [r12 + 112], 0
.Lx514_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 112]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 120], rax
 mov qword ptr [r12 + 128], rdx
 cmp rax, 99
 je xchain509_n2_α
 jmp xchain509_n1_α
 xchain509_n0_β:
 inc qword ptr [r12 + 112]
 jmp .Lx514_0
xchain509_n1_α:
bb270_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 128]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 jmp xchain509_n2_α
 xchain509_n1_β:
 jmp xchain509_n2_α
xchain509_n2_α:
bb271_α:
# BOX IR_CALL [](...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+48] -> [r12+168]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 176], rax
# marshal arg1 = varslot [r12+80] -> [r12+184]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 184], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 192], rax
  .section .rodata
  .Lbynamefn517: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn517]
 lea rsi, [r12 + 168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp eax, 99
 je xchain509_n4_α
 jmp xchain509_n3_α
xchain509_n2_β:
 jmp xchain509_n4_α
xchain509_n3_α:
bb272_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xchain509_n4_α
 xchain509_n3_β:
 jmp xchain509_n4_α
xchain509_n4_α:
xargsub520_n0_α:
# IR_VAR
bb273_α:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 104], rax
 jmp xicnarg519_done
 xargsub520_n0_β:
 jmp proc_equivdelta_ω
xicnarg519_done:
xargsub524_n0_α:
# IR_VAR
bb274_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg523_done
 xargsub524_n0_β:
 jmp proc_equivdelta_ω
xicnarg523_done:
bb275_α:
  .section .rodata
  .Lcall286_pname: .string "equiv"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall286_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je proc_equivdelta_ω
 jmp xchain509_n5_α
xchain509_n4_β:
 jmp proc_equivdelta_ω
xchain509_n5_α:
# IR_RETURN
bb276_α:
 mov rax, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 224]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_equivdelta_γ
proc_equivdelta_β:
jmp proc_equivdelta_ω
proc_equivdelta_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_equivdelta_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_finalstates_α
proc_finalstates_α:
#=======================================================================================================================
    .global proc_finalstates_α
    .global proc_finalstates_β
    .global proc_finalstates_γ
    .global proc_finalstates_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_finalstates_α_body:
xchain529_n0_α:
bb277_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn531: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain529_n2_α
 jmp xchain529_n1_α
 xchain529_n0_β:
 jmp xchain529_n2_α
xchain529_n1_α:
bb278_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain529_n2_α
 xchain529_n1_β:
 jmp xchain529_n2_α
xchain529_n2_α:
# IR_VAR
bb279_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xfget534_obj_done
 xfget534_obj_β:
 jmp xchain529_n6_α
xfget534_obj_done:
# IR_FIELD_GET
bb280_α:
 mov rdi, qword ptr [rip + .Lx537_0]
 mov rsi, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 call dat_field_get@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xbang533_iter_done
 xbang533_iter_β:
 jmp xchain529_n6_α
.Lx537_0:
 .quad .Lx537_0_s
.Lx537_0_s:
 .string "F"
xbang533_iter_done:
# IR_LIST_BANG
bb281_α:
 mov qword ptr [r12 + 144], 0
.Lx539_0:
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp rax, 99
 je xchain529_n6_α
 jmp xchain529_n3_α
 xchain529_n2_β:
 inc qword ptr [r12 + 144]
 jmp .Lx539_0
xchain529_n3_α:
bb282_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xchain529_n4_α
 xchain529_n3_β:
 jmp xchain529_n2_β
xchain529_n4_α:
# IR_VAR
bb283_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain529_n5_α
 xchain529_n4_β:
 jmp xchain529_n2_β
xchain529_n5_α:
bb284_α:
# IR_IDX_SET: base/key/value from [ζ+off]; inline DT_A+int fast path, else subscript_set
 mov rax, qword ptr [r12 + 112]
 cmp eax, 4
 jne .Lx545_0
 mov rax, qword ptr [r12 + 168]
 cmp eax, 6
 jne .Lx545_0
 mov rsi, qword ptr [r12 + 120]
 mov rcx, qword ptr [r12 + 176]
 mov r8, qword ptr [rsi]
 sub ecx, r8d
 js .Lx545_0
 mov r9, qword ptr [rsi + 4]
 sub r9d, r8d
 cmp ecx, r9d
 jg .Lx545_0
 mov r11, qword ptr [rsi + 24]
 movsxd rcx, ecx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add rcx, rcx
 add r11, rcx
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r11 + 0], rax
 mov qword ptr [r11 + 8], rdx
 jmp xchain529_n2_β
.Lx545_0:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 mov rdx, qword ptr [r12 + 168]
 mov rcx, qword ptr [r12 + 176]
 mov r8, qword ptr [r12 + 48]
 mov r9, qword ptr [r12 + 56]
 call subscript_set@PLT
 cmp eax, 0
 je xchain529_n2_β
 jmp xchain529_n2_β
 xchain529_n5_β:
 jmp xchain529_n2_β
xchain529_n6_α:
# IR_EVERY
 jmp xchain529_n7_α
 xchain529_n6_β:
 jmp xchain529_n7_α
xchain529_n7_α:
bb286_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn548: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn548]
 lea rsi, [r12 + 184]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 cmp eax, 99
 je xchain529_n9_α
 jmp xchain529_n8_α
xchain529_n7_β:
 jmp xchain529_n9_α
xchain529_n8_α:
bb287_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xchain529_n9_α
 xchain529_n8_β:
 jmp xchain529_n9_α
xchain529_n9_α:
bb288_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+80] -> [r12+232]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 232], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 240], rax
# marshal arg0 = nested producer-box slot [r12+264] -> [r12+264]
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 272], rax
# marshal arg1 = LIT_I -> [r12+280]
 mov qword ptr [r12 + 280], 6
 movabs rax, 1
 mov qword ptr [r12 + 288], rax
  .section .rodata
  .Lcallfn551: .string "[]"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn551]
 lea rsi, [r12 + 264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 248], rax
 mov qword ptr [r12 + 256], rdx
  .section .rodata
  .Lbynamefn552: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn552]
 lea rsi, [r12 + 232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 216], rax
 mov qword ptr [r12 + 224], rdx
 cmp eax, 99
 je xchain529_n2_β
 jmp xchain529_n10_α
xchain529_n9_β:
 jmp xchain529_n2_β
xchain529_n10_α:
# IR_EVERY
 jmp xchain529_n11_α
 xchain529_n10_β:
 jmp xchain529_n11_α
xchain529_n11_α:
# IR_VAR
bb290_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain529_n12_α
 xchain529_n11_β:
 jmp proc_finalstates_ω
xchain529_n12_α:
# IR_RETURN
bb291_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_finalstates_γ
proc_finalstates_β:
jmp proc_finalstates_ω
proc_finalstates_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_finalstates_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_diff_α
proc_diff_α:
#=======================================================================================================================
    .global proc_diff_α
    .global proc_diff_β
    .global proc_diff_γ
    .global proc_diff_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_diff_α_body:
xchain557_n0_α:
# IR_LIT_S
bb292_α:
 mov qword ptr [r12 + 96], 1
 mov dword ptr [r12 + 100], -1
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain557_n1_α
 xchain557_n0_β:
 jmp xchain557_n2_α
.Lx558_0:
 .quad .Lx558_0_s
.Lx558_0_s:
 .string ""
xchain557_n1_α:
bb293_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain557_n2_α
 xchain557_n1_β:
 jmp xchain557_n2_α
xchain557_n2_α:
# IR_VAR
bb294_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain557_n3_α
 xchain557_n2_β:
 jmp xchain557_n10_β
xchain557_n3_α:
# IR_VAR
bb295_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xbang562_iter_done
 xbang562_iter_β:
 jmp xchain557_n6_α
xbang562_iter_done:
# IR_LIST_BANG
bb296_α:
 mov qword ptr [r12 + 128], 0
.Lx566_0:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 128]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp rax, 99
 je xchain557_n6_α
 jmp xchain557_n4_α
 xchain557_n3_β:
 inc qword ptr [r12 + 128]
 jmp .Lx566_0
xchain557_n4_α:
jmp xbinop567_lhs_done
xbinop567_lhs_done:
jmp xbinop567_rhs_done
xbinop567_rhs_done:
bb297_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 136]
 mov rcx, qword ptr [r12 + 144]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain557_n10_β
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 jmp xchain557_n5_α
 xchain557_n4_β:
 jmp xchain557_n10_β
xchain557_n5_α:
bb298_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 152]
 mov rdx, qword ptr [r12 + 160]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 jmp xchain557_n3_β
 xchain557_n5_β:
 jmp xchain557_n10_β
xchain557_n6_α:
# IR_EVERY
 jmp xchain557_n7_α
 xchain557_n6_β:
 jmp xchain557_n7_α
xchain557_n7_α:
# IR_LIT_S
bb300_α:
 mov qword ptr [r12 + 184], 1
 mov dword ptr [r12 + 188], -1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [r12 + 192], rax
 jmp xchain557_n8_α
 xchain557_n7_β:
 jmp xchain557_n9_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string ""
xchain557_n8_α:
bb301_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 192]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 200], rax
 mov qword ptr [r12 + 208], rdx
 jmp xchain557_n9_α
 xchain557_n8_β:
 jmp xchain557_n9_α
xchain557_n9_α:
# IR_VAR
bb302_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xchain557_n10_α
 xchain557_n9_β:
 jmp xchain557_n10_β
xchain557_n10_α:
# IR_VAR
bb303_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xbang575_iter_done
 xbang575_iter_β:
 jmp xchain557_n13_α
xbang575_iter_done:
# IR_LIST_BANG
bb304_α:
 mov qword ptr [r12 + 216], 0
.Lx579_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 216]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp rax, 99
 je xchain557_n13_α
 jmp xchain557_n11_α
 xchain557_n10_β:
 inc qword ptr [r12 + 216]
 jmp .Lx579_0
xchain557_n11_α:
jmp xbinop580_lhs_done
xbinop580_lhs_done:
jmp xbinop580_rhs_done
xbinop580_rhs_done:
bb305_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 224]
 mov rcx, qword ptr [r12 + 232]
 mov r8d, 19
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain557_n10_β
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain557_n12_α
 xchain557_n11_β:
 jmp xchain557_n10_β
xchain557_n12_α:
bb306_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain557_n10_β
 xchain557_n12_β:
 jmp xchain557_n10_β
xchain557_n13_α:
# IR_EVERY
 jmp xchain557_n14_α
 xchain557_n13_β:
 jmp xchain557_n14_α
xchain557_n14_α:
bb308_α:
# BOX IR_CALL MAKELIST(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn585: .string "MAKELIST"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn585]
 lea rsi, [r12 + 272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain557_n16_α
 jmp xchain557_n15_α
xchain557_n14_β:
 jmp xchain557_n16_α
xchain557_n15_α:
bb309_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain557_n16_α
 xchain557_n15_β:
 jmp xchain557_n16_α
xchain557_n16_α:
bb310_α:
# BOX IR_CALL put(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = varslot [r12+80] -> [r12+320]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = varslot [r12+352] -> [r12+336]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lbynamefn588: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn588]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain557_n10_β
 jmp xchain557_n17_α
xchain557_n16_β:
 jmp xchain557_n10_β
xchain557_n17_α:
# IR_EVERY
 jmp xchain557_n18_α
 xchain557_n17_β:
 jmp xchain557_n18_α
xchain557_n18_α:
# IR_VAR
bb312_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain557_n19_α
 xchain557_n18_β:
 jmp xchain557_n22_α
xchain557_n19_α:
# IR_UNOP
bb313_α:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 call rt_size_d@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain557_n20_α
 xchain557_n19_β:
 jmp xchain557_n22_α
xchain557_n20_α:
# IR_LIT_I
bb314_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain557_n21_α
 xchain557_n20_β:
 jmp xchain557_n22_α
.Lx593_0:
 .quad 0
xchain557_n21_α:
bb315_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 376]
 mov rcx, qword ptr [r12 + 392]
 cmp rax, rcx
 jne xchain557_n22_α
 mov rcx, qword ptr [r12 + 384]
 mov qword ptr [r12 + 400], rcx
 mov rcx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 408], rcx
 jmp proc_diff_ω
 xchain557_n21_β:
 jmp xchain557_n22_α
xchain557_n22_α:
# IR_VAR
bb316_α:
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 88], rax
 jmp xchain557_n23_α
 xchain557_n22_β:
 jmp proc_diff_ω
xchain557_n23_α:
# IR_RETURN
bb317_α:
 mov rax, qword ptr [r12 + 80]
 mov rdx, qword ptr [r12 + 88]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_diff_γ
proc_diff_β:
jmp proc_diff_ω
proc_diff_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_diff_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lclassspec0: .string "dfa(Q,S,d,q0,F)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "getdfa"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_getdfa_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "readset"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_readset_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "showdfa"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_showdfa_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "writeset"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_writeset_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname4: .string "minimize"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_minimize_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname5: .string "marklists"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_marklists_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname6: .string "makemdfa"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_makemdfa_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname7: .string "equiv"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_equiv_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname8: .string "equivdelta"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_equivdelta_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname9: .string "finalstates"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_finalstates_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname10: .string "diff"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_diff_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "distab"
  .Lgvan1: .string "dlists"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .section .bss
  .align 16
__gva: .space 32, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 2
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
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
  lea r10, [rip + Δ]
main_α_body:
xchain598_n0_α:
bb318_α:
  .section .rodata
  .Lcall330_pname: .string "getdfa"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall330_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain598_n2_α
 jmp xchain598_n1_α
xchain598_n0_β:
 jmp xchain598_n2_α
xchain598_n1_α:
bb319_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain598_n2_α
 xchain598_n1_β:
 jmp xchain598_n2_α
xchain598_n2_α:
# IR_LIT_I
bb320_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain598_n3_α
 xchain598_n2_β:
 jmp xchain598_n4_β
.Lx601_0:
 .quad 1
xchain598_n3_α:
# IR_LIT_I
bb321_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain598_n4_α
 xchain598_n3_β:
 jmp xchain598_n4_β
.Lx602_0:
 .quad 10
xchain598_n4_α:
# IR_TO
bb322_α:
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 96], rax
.Lx604_0:
 mov rax, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 72]
 cmp rax, rcx
 jg xchain598_n6_α
 mov qword ptr [r12 + 80], 6
 mov qword ptr [r12 + 88], rax
 jmp xchain598_n5_α
 xchain598_n4_β:
 inc qword ptr [r12 + 96]
 jmp .Lx604_0
xchain598_n5_α:
xargsub606_n0_α:
# IR_LIT_S
bb323_α:
 mov qword ptr [r12 + 104], 1
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [r12 + 112], rax
 jmp xicnarg605_done
 xargsub606_n0_β:
 jmp xchain598_n4_β
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "Reduced"
xicnarg605_done:
xargsub609_n0_α:
xargsub611_n0_α:
xargsub613_n0_α:
# IR_LIT_S
bb324_α:
 mov qword ptr [r12 + 120], 1
 mov rax, qword ptr [rip + .Lx614_0]
 mov qword ptr [r12 + 128], rax
 jmp xicnarg612_done
 xargsub613_n0_β:
 jmp xchain598_n4_β
.Lx614_0:
 .quad .Lx614_0_s
.Lx614_0_s:
 .string "Original"
xicnarg612_done:
xargsub616_n0_α:
# IR_VAR
bb325_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg615_done
 xargsub616_n0_β:
 jmp xchain598_n4_β
xicnarg615_done:
bb326_α:
  .section .rodata
  .Lcall338_pname: .string "showdfa"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+128]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall338_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je xchain598_n4_β
 jmp xicnarg610_done
xargsub611_n0_β:
 jmp xchain598_n4_β
xicnarg610_done:
bb327_α:
  .section .rodata
  .Lcall339_pname: .string "minimize"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+136]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall339_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 152], rax
 mov qword ptr [r12 + 160], rdx
 cmp eax, 99
 je xchain598_n4_β
 jmp xicnarg608_done
xargsub609_n0_β:
 jmp xchain598_n4_β
xicnarg608_done:
bb328_α:
  .section .rodata
  .Lcall340_pname: .string "showdfa"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+104]
 mov rdx, qword ptr [r12+112]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+152]
 mov rdx, qword ptr [r12+160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall340_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 168], rax
 mov qword ptr [r12 + 176], rdx
 cmp eax, 99
 je xchain598_n4_β
 jmp xchain598_n4_β
xchain598_n5_β:
 jmp xchain598_n4_β
xchain598_n6_α:
# IR_EVERY
 jmp main_ω
 xchain598_n6_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
.section .rodata
.S0: .string "distab"
.S1: .string "dlists"
.S2: .string "bb_repalt_yield: sub-expression value slot not materialised"
.S3: .string "bb_idx_set: needs base/key/value operand slots ([\316\266+off] producers)"
.text
