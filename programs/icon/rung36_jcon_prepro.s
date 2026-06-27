  .intel_syntax noprefix
  .text
  .globl proc_precheck_α
proc_precheck_α:
#=======================================================================================================================
    .global proc_precheck_α
    .global proc_precheck_β
    .global proc_precheck_γ
    .global proc_precheck_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_precheck_α_body:
xchain0_n0_α:
# IR_VAR
bb1_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n4_α
xchain0_n1_α:
# IR_KEYWORD_read
bb2_α:
 mov rdi, qword ptr [rip + .Lx3_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n4_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "&features"
xchain0_n2_α:
bb3_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain0_n4_α
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 88], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n4_α
xchain0_n3_α:
# IR_VAR
bb4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp proc_precheck_ω
xchain0_n4_α:
# IR_VAR
bb5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp proc_precheck_ω
xchain0_n5_α:
# IR_UNOP
bb6_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je proc_precheck_ω
 cmp eax, 0
 jne proc_precheck_ω
 mov qword ptr [r12 + 96], 0
 mov qword ptr [r12 + 104], 0
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_precheck_ω
xchain0_n6_α:
# IR_UNOP
bb7_α:
 mov eax, dword ptr [r12 + 16]
 cmp eax, 99
 je proc_precheck_ω
 cmp eax, 0
 je proc_precheck_ω
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_precheck_ω
xchain0_n7_α:
# IR_LIT_S
bb8_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_precheck_ω
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "error: no predefined symbol for "
xchain0_n8_α:
# IR_LIT_S
bb9_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_precheck_ω
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "error: unexpected predefined symbol for "
xchain0_n9_α:
# IR_VAR
bb10_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp proc_precheck_ω
xchain0_n10_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp proc_precheck_ω
xchain0_n11_α:
bb12_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+176]
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 184], rax
 jmp .Lx17_1
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "error: no predefined symbol for "
.Lx17_1:
# marshal arg1 = varslot [r12+32] -> [r12+192]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn18: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je proc_precheck_ω
 jmp proc_precheck_γ
 xchain0_n11_β:
 jmp proc_precheck_ω
xchain0_n12_α:
bb13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [r12 + 232], rax
 jmp .Lx19_1
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "error: unexpected predefined symbol for "
.Lx19_1:
# marshal arg1 = varslot [r12+32] -> [r12+240]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn20: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je proc_precheck_ω
 jmp proc_precheck_γ
 xchain0_n12_β:
 jmp proc_precheck_ω
proc_precheck_β:
jmp proc_precheck_ω
proc_precheck_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_precheck_ω:
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
  .Lstartup_pname0: .string "precheck"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_precheck_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
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
xchain21_n0_α:
# IR_LIT_S
bb14_α:
 mov qword ptr [r12 + 0], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 8], rax
 jmp xchain21_n1_α
 xchain21_n0_β:
 jmp xchain21_n11_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "abc,def,ghi,xx,yy: "
xchain21_n1_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain21_n2_α:
# IR_LIT_S
bb16_α:
 mov qword ptr [r12 + 16], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 24], rax
 jmp xchain21_n3_α
 xchain21_n2_β:
 jmp xchain21_n11_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string " "
xchain21_n3_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain21_n4_α:
# IR_LIT_S
bb18_α:
 mov qword ptr [r12 + 32], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain21_n5_α
 xchain21_n4_β:
 jmp xchain21_n11_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string " "
xchain21_n5_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain21_n6_α:
# IR_LIT_S
bb20_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 56], rax
 jmp xchain21_n7_α
 xchain21_n6_β:
 jmp xchain21_n11_α
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string " "
xchain21_n7_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain21_n8_α:
# IR_LIT_S
bb22_α:
 mov qword ptr [r12 + 64], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain21_n9_α
 xchain21_n8_β:
 jmp xchain21_n11_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string " "
xchain21_n9_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain21_n10_α:
bb24_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+96]
 mov qword ptr [r12 + 96], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 104], rax
 jmp .Lx37_1
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "abc,def,ghi,xx,yy: "
.Lx37_1:
# marshal arg1 = varslot [r12+256] -> [r12+112]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 120], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+128]
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx37_4]
 mov qword ptr [r12 + 136], rax
 jmp .Lx37_5
.Lx37_4:
 .quad .Lx37_4_s
.Lx37_4_s:
 .string " "
.Lx37_5:
# marshal arg3 = varslot [r12+272] -> [r12+144]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 152], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+160]
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx37_8]
 mov qword ptr [r12 + 168], rax
 jmp .Lx37_9
.Lx37_8:
 .quad .Lx37_8_s
.Lx37_8_s:
 .string " "
.Lx37_9:
# marshal arg5 = varslot [r12+288] -> [r12+176]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 184], rax
# marshal arg6 = LIT_S (string REG-RO sealed in-band) -> [r12+192]
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx37_12]
 mov qword ptr [r12 + 200], rax
 jmp .Lx37_13
.Lx37_12:
 .quad .Lx37_12_s
.Lx37_12_s:
 .string " "
.Lx37_13:
# marshal arg7 = varslot [r12+304] -> [r12+208]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 216], rax
# marshal arg8 = LIT_S (string REG-RO sealed in-band) -> [r12+224]
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx37_16]
 mov qword ptr [r12 + 232], rax
 jmp .Lx37_17
.Lx37_16:
 .quad .Lx37_16_s
.Lx37_16_s:
 .string " "
.Lx37_17:
# marshal arg9 = varslot [r12+320] -> [r12+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn38: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 96]
 mov edx, 10
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain21_n11_α
 jmp xchain21_n11_α
 xchain21_n10_β:
 jmp xchain21_n11_α
xchain21_n11_α:
# IR_LIT_S
bb25_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain21_n12_α
 xchain21_n11_β:
 jmp xchain21_n14_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "xyzzy: "
xchain21_n12_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xchain21_n13_α:
bb27_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+368]
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 376], rax
 jmp .Lx42_1
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "xyzzy: "
.Lx42_1:
# marshal arg1 = varslot [r12+400] -> [r12+384]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn43: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn43]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain21_n14_α
 jmp xchain21_n14_α
 xchain21_n13_β:
 jmp xchain21_n14_α
xchain21_n14_α:
# IR_LIT_S
bb28_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain21_n15_α
 xchain21_n14_β:
 jmp xchain21_n25_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "abc,def,ghi,xx,yy: "
xchain21_n15_α:
# IR_VAR
bb29_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 264], rax
 jmp xchain21_n16_α
 xchain21_n15_β:
 jmp xchain21_n25_α
xchain21_n16_α:
# IR_LIT_S
bb30_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain21_n17_α
 xchain21_n16_β:
 jmp xchain21_n25_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string " "
xchain21_n17_α:
# IR_VAR
bb31_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 280], rax
 jmp xchain21_n18_α
 xchain21_n17_β:
 jmp xchain21_n25_α
xchain21_n18_α:
# IR_LIT_S
bb32_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain21_n19_α
 xchain21_n18_β:
 jmp xchain21_n25_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string " "
xchain21_n19_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 296], rax
 jmp xchain21_n20_α
 xchain21_n19_β:
 jmp xchain21_n25_α
xchain21_n20_α:
# IR_LIT_S
bb34_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain21_n21_α
 xchain21_n20_β:
 jmp xchain21_n25_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string " "
xchain21_n21_α:
# IR_VAR
bb35_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 312], rax
 jmp xchain21_n22_α
 xchain21_n21_β:
 jmp xchain21_n25_α
xchain21_n22_α:
# IR_LIT_S
bb36_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain21_n23_α
 xchain21_n22_β:
 jmp xchain21_n25_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string " "
xchain21_n23_α:
# IR_VAR
bb37_α:
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 328], rax
 jmp xchain21_n24_α
 xchain21_n23_β:
 jmp xchain21_n25_α
xchain21_n24_α:
bb38_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_S (string REG-RO sealed in-band) -> [r12+512]
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 520], rax
 jmp .Lx59_1
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "abc,def,ghi,xx,yy: "
.Lx59_1:
# marshal arg1 = varslot [r12+256] -> [r12+528]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = LIT_S (string REG-RO sealed in-band) -> [r12+544]
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx59_4]
 mov qword ptr [r12 + 552], rax
 jmp .Lx59_5
.Lx59_4:
 .quad .Lx59_4_s
.Lx59_4_s:
 .string " "
.Lx59_5:
# marshal arg3 = varslot [r12+272] -> [r12+560]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 568], rax
# marshal arg4 = LIT_S (string REG-RO sealed in-band) -> [r12+576]
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx59_8]
 mov qword ptr [r12 + 584], rax
 jmp .Lx59_9
.Lx59_8:
 .quad .Lx59_8_s
.Lx59_8_s:
 .string " "
.Lx59_9:
# marshal arg5 = varslot [r12+288] -> [r12+592]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 600], rax
# marshal arg6 = LIT_S (string REG-RO sealed in-band) -> [r12+608]
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx59_12]
 mov qword ptr [r12 + 616], rax
 jmp .Lx59_13
.Lx59_12:
 .quad .Lx59_12_s
.Lx59_12_s:
 .string " "
.Lx59_13:
# marshal arg7 = varslot [r12+304] -> [r12+624]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 632], rax
# marshal arg8 = LIT_S (string REG-RO sealed in-band) -> [r12+640]
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx59_16]
 mov qword ptr [r12 + 648], rax
 jmp .Lx59_17
.Lx59_16:
 .quad .Lx59_16_s
.Lx59_16_s:
 .string " "
.Lx59_17:
# marshal arg9 = varslot [r12+320] -> [r12+656]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn60: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn60]
 lea rsi, [r12 + 512]
 mov edx, 10
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain21_n25_α
 jmp xchain21_n25_α
 xchain21_n24_β:
 jmp xchain21_n25_α
xchain21_n25_α:
xargsub62_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg61_done:
xargsub66_n0_α:
# IR_LIT_S
bb40_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 680], rax
 jmp xicnarg65_done
 xargsub66_n0_β:
 jmp xchain21_n26_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "Amiga"
xicnarg65_done:
bb41_α:
  .section .rodata
  .Lcall41_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+672]
 mov rdx, qword ptr [r12+680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall41_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain21_n26_α
 jmp xchain21_n26_α
xchain21_n25_β:
 jmp xchain21_n26_α
xchain21_n26_α:
xargsub70_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg69_done:
xargsub74_n0_α:
# IR_LIT_S
bb43_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 712], rax
 jmp xicnarg73_done
 xargsub74_n0_β:
 jmp xchain21_n27_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "Acorn Archimedes"
xicnarg73_done:
bb44_α:
  .section .rodata
  .Lcall44_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+704]
 mov rdx, qword ptr [r12+712]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall44_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain21_n27_α
 jmp xchain21_n27_α
xchain21_n26_β:
 jmp xchain21_n27_α
xchain21_n27_α:
xargsub78_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg77_done:
xargsub82_n0_α:
# IR_LIT_S
bb46_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 744], rax
 jmp xicnarg81_done
 xargsub82_n0_β:
 jmp xchain21_n28_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "Atari ST"
xicnarg81_done:
bb47_α:
  .section .rodata
  .Lcall47_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+736]
 mov rdx, qword ptr [r12+744]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall47_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain21_n28_α
 jmp xchain21_n28_α
xchain21_n27_β:
 jmp xchain21_n28_α
xchain21_n28_α:
xargsub86_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg85_done:
xargsub90_n0_α:
# IR_LIT_S
bb49_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 776], rax
 jmp xicnarg89_done
 xargsub90_n0_β:
 jmp xchain21_n29_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "CMS"
xicnarg89_done:
bb50_α:
  .section .rodata
  .Lcall50_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+768]
 mov rdx, qword ptr [r12+776]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall50_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain21_n29_α
 jmp xchain21_n29_α
xchain21_n28_β:
 jmp xchain21_n29_α
xchain21_n29_α:
xargsub94_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg93_done:
xargsub98_n0_α:
# IR_LIT_S
bb52_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 808], rax
 jmp xicnarg97_done
 xargsub98_n0_β:
 jmp xchain21_n30_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "Macintosh"
xicnarg97_done:
bb53_α:
  .section .rodata
  .Lcall53_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+800]
 mov rdx, qword ptr [r12+808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall53_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain21_n30_α
 jmp xchain21_n30_α
xchain21_n29_β:
 jmp xchain21_n30_α
xchain21_n30_α:
xargsub102_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg101_done:
xargsub106_n0_α:
# IR_LIT_S
bb55_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 840], rax
 jmp xicnarg105_done
 xargsub106_n0_β:
 jmp xchain21_n31_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "MS-DOS/386"
xicnarg105_done:
bb56_α:
  .section .rodata
  .Lcall56_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+832]
 mov rdx, qword ptr [r12+840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall56_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain21_n31_α
 jmp xchain21_n31_α
xchain21_n30_β:
 jmp xchain21_n31_α
xchain21_n31_α:
xargsub110_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg109_done:
xargsub114_n0_α:
# IR_LIT_S
bb58_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [r12 + 872], rax
 jmp xicnarg113_done
 xargsub114_n0_β:
 jmp xchain21_n32_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "MS-DOS"
xicnarg113_done:
bb59_α:
  .section .rodata
  .Lcall59_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+864]
 mov rdx, qword ptr [r12+872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall59_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain21_n32_α
 jmp xchain21_n32_α
xchain21_n31_β:
 jmp xchain21_n32_α
xchain21_n32_α:
xargsub118_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg117_done:
xargsub122_n0_α:
# IR_LIT_S
bb61_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx123_0]
 mov qword ptr [r12 + 904], rax
 jmp xicnarg121_done
 xargsub122_n0_β:
 jmp xchain21_n33_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string "MVS"
xicnarg121_done:
bb62_α:
  .section .rodata
  .Lcall62_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+896]
 mov rdx, qword ptr [r12+904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall62_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain21_n33_α
 jmp xchain21_n33_α
xchain21_n32_β:
 jmp xchain21_n33_α
xchain21_n33_α:
xargsub126_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg125_done:
xargsub130_n0_α:
# IR_LIT_S
bb64_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [r12 + 936], rax
 jmp xicnarg129_done
 xargsub130_n0_β:
 jmp xchain21_n34_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "OS/2"
xicnarg129_done:
bb65_α:
  .section .rodata
  .Lcall65_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+928]
 mov rdx, qword ptr [r12+936]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall65_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je xchain21_n34_α
 jmp xchain21_n34_α
xchain21_n33_β:
 jmp xchain21_n34_α
xchain21_n34_α:
xargsub134_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg133_done:
xargsub138_n0_α:
# IR_LIT_S
bb67_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 968], rax
 jmp xicnarg137_done
 xargsub138_n0_β:
 jmp xchain21_n35_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "PORT"
xicnarg137_done:
bb68_α:
  .section .rodata
  .Lcall68_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+960]
 mov rdx, qword ptr [r12+968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall68_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain21_n35_α
 jmp xchain21_n35_α
xchain21_n34_β:
 jmp xchain21_n35_α
xchain21_n35_α:
xargsub142_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg141_done:
xargsub146_n0_α:
# IR_LIT_S
bb70_α:
 mov qword ptr [r12 + 992], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [r12 + 1000], rax
 jmp xicnarg145_done
 xargsub146_n0_β:
 jmp xchain21_n36_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "UNIX"
xicnarg145_done:
bb71_α:
  .section .rodata
  .Lcall71_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+992]
 mov rdx, qword ptr [r12+100]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall71_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain21_n36_α
 jmp xchain21_n36_α
xchain21_n35_β:
 jmp xchain21_n36_α
xchain21_n36_α:
xargsub150_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg149_done:
xargsub154_n0_α:
# IR_LIT_S
bb73_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 1032], rax
 jmp xicnarg153_done
 xargsub154_n0_β:
 jmp xchain21_n37_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "VMS"
xicnarg153_done:
bb74_α:
  .section .rodata
  .Lcall74_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+102]
 mov rdx, qword ptr [r12+103]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall74_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain21_n37_α
 jmp xchain21_n37_α
xchain21_n36_β:
 jmp xchain21_n37_α
xchain21_n37_α:
xargsub158_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg157_done:
xargsub162_n0_α:
# IR_LIT_S
bb76_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [r12 + 1064], rax
 jmp xicnarg161_done
 xargsub162_n0_β:
 jmp xchain21_n38_α
.Lx163_0:
 .quad .Lx163_0_s
.Lx163_0_s:
 .string "compiled"
xicnarg161_done:
bb77_α:
  .section .rodata
  .Lcall77_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+105]
 mov rdx, qword ptr [r12+106]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain21_n38_α
 jmp xchain21_n38_α
xchain21_n37_β:
 jmp xchain21_n38_α
xchain21_n38_α:
xargsub166_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg165_done:
xargsub170_n0_α:
# IR_LIT_S
bb79_α:
 mov qword ptr [r12 + 1088], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 1096], rax
 jmp xicnarg169_done
 xargsub170_n0_β:
 jmp xchain21_n39_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "interpreted"
xicnarg169_done:
bb80_α:
  .section .rodata
  .Lcall80_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+108]
 mov rdx, qword ptr [r12+109]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall80_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain21_n39_α
 jmp xchain21_n39_α
xchain21_n38_β:
 jmp xchain21_n39_α
xchain21_n39_α:
xargsub174_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg173_done:
xargsub178_n0_α:
# IR_LIT_S
bb82_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 1128], rax
 jmp xicnarg177_done
 xargsub178_n0_β:
 jmp xchain21_n40_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "Java"
xicnarg177_done:
bb83_α:
  .section .rodata
  .Lcall83_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+112]
 mov rdx, qword ptr [r12+112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall83_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain21_n40_α
 jmp xchain21_n40_α
xchain21_n39_β:
 jmp xchain21_n40_α
xchain21_n40_α:
xargsub182_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg181_done:
xargsub186_n0_α:
# IR_LIT_S
bb85_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 1160], rax
 jmp xicnarg185_done
 xargsub186_n0_β:
 jmp xchain21_n41_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "ASCII"
xicnarg185_done:
xargsub189_n0_α:
# IR_LIT_I
bb86_α:
 mov qword ptr [r12 + 1168], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [r12 + 1176], rax
 jmp xicnarg188_done
 xargsub189_n0_β:
 jmp xchain21_n41_α
.Lx190_0:
 .quad 1
xicnarg188_done:
bb87_α:
  .section .rodata
  .Lcall87_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+115]
 mov rdx, qword ptr [r12+116]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12+116]
 mov rdx, qword ptr [r12+117]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall87_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain21_n41_α
 jmp xchain21_n41_α
xchain21_n40_β:
 jmp xchain21_n41_α
xchain21_n41_α:
xargsub193_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg192_done:
xargsub197_n0_α:
# IR_LIT_S
bb89_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [r12 + 1208], rax
 jmp xicnarg196_done
 xargsub197_n0_β:
 jmp xchain21_n42_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "EBCDIC"
xicnarg196_done:
xargsub200_n0_α:
# IR_LIT_I
bb90_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [r12 + 1224], rax
 jmp xicnarg199_done
 xargsub200_n0_β:
 jmp xchain21_n42_α
.Lx201_0:
 .quad 1
xicnarg199_done:
bb91_α:
  .section .rodata
  .Lcall91_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12+121]
 mov rdx, qword ptr [r12+122]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall91_pname]
 mov esi, 3
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain21_n42_α
 jmp xchain21_n42_α
xchain21_n41_β:
 jmp xchain21_n42_α
xchain21_n42_α:
xargsub204_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg203_done:
xargsub208_n0_α:
# IR_LIT_S
bb93_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [r12 + 1256], rax
 jmp xicnarg207_done
 xargsub208_n0_β:
 jmp xchain21_n43_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "calling to Icon"
xicnarg207_done:
bb94_α:
  .section .rodata
  .Lcall94_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+124]
 mov rdx, qword ptr [r12+125]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall94_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain21_n43_α
 jmp xchain21_n43_α
xchain21_n42_β:
 jmp xchain21_n43_α
xchain21_n43_α:
xargsub212_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg211_done:
xargsub216_n0_α:
# IR_LIT_S
bb96_α:
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [r12 + 1288], rax
 jmp xicnarg215_done
 xargsub216_n0_β:
 jmp xchain21_n44_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "co-expressions"
xicnarg215_done:
bb97_α:
  .section .rodata
  .Lcall97_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+128]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall97_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain21_n44_α
 jmp xchain21_n44_α
xchain21_n43_β:
 jmp xchain21_n44_α
xchain21_n44_α:
xargsub220_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg219_done:
xargsub224_n0_α:
# IR_LIT_S
bb99_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [r12 + 1320], rax
 jmp xicnarg223_done
 xargsub224_n0_β:
 jmp xchain21_n45_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "direct execution"
xicnarg223_done:
bb100_α:
  .section .rodata
  .Lcall100_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+131]
 mov rdx, qword ptr [r12+132]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall100_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain21_n45_α
 jmp xchain21_n45_α
xchain21_n44_β:
 jmp xchain21_n45_α
xchain21_n45_α:
xargsub228_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg227_done:
xargsub232_n0_α:
# IR_LIT_S
bb102_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [r12 + 1352], rax
 jmp xicnarg231_done
 xargsub232_n0_β:
 jmp xchain21_n46_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "event monitoring"
xicnarg231_done:
bb103_α:
  .section .rodata
  .Lcall103_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+134]
 mov rdx, qword ptr [r12+135]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall103_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain21_n46_α
 jmp xchain21_n46_α
xchain21_n45_β:
 jmp xchain21_n46_α
xchain21_n46_α:
xargsub236_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg235_done:
xargsub240_n0_α:
# IR_LIT_S
bb105_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 1384], rax
 jmp xicnarg239_done
 xargsub240_n0_β:
 jmp xchain21_n47_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "executable images"
xicnarg239_done:
bb106_α:
  .section .rodata
  .Lcall106_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+137]
 mov rdx, qword ptr [r12+138]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall106_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain21_n47_α
 jmp xchain21_n47_α
xchain21_n46_β:
 jmp xchain21_n47_α
xchain21_n47_α:
xargsub244_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg243_done:
xargsub248_n0_α:
# IR_LIT_S
bb108_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 1416], rax
 jmp xicnarg247_done
 xargsub248_n0_β:
 jmp xchain21_n48_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "external functions"
xicnarg247_done:
bb109_α:
  .section .rodata
  .Lcall109_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+140]
 mov rdx, qword ptr [r12+141]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall109_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain21_n48_α
 jmp xchain21_n48_α
xchain21_n47_β:
 jmp xchain21_n48_α
xchain21_n48_α:
xargsub252_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg251_done:
xargsub256_n0_α:
# IR_LIT_S
bb111_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 1448], rax
 jmp xicnarg255_done
 xargsub256_n0_β:
 jmp xchain21_n49_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "keyboard functions"
xicnarg255_done:
bb112_α:
  .section .rodata
  .Lcall112_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+144]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall112_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain21_n49_α
 jmp xchain21_n49_α
xchain21_n48_β:
 jmp xchain21_n49_α
xchain21_n49_α:
xargsub260_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg259_done:
xargsub264_n0_α:
# IR_LIT_S
bb114_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [r12 + 1480], rax
 jmp xicnarg263_done
 xargsub264_n0_β:
 jmp xchain21_n50_α
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "large integers"
xicnarg263_done:
bb115_α:
  .section .rodata
  .Lcall115_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+147]
 mov rdx, qword ptr [r12+148]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall115_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain21_n50_α
 jmp xchain21_n50_α
xchain21_n49_β:
 jmp xchain21_n50_α
xchain21_n50_α:
xargsub268_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg267_done:
xargsub272_n0_α:
# IR_LIT_S
bb117_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [r12 + 1512], rax
 jmp xicnarg271_done
 xargsub272_n0_β:
 jmp xchain21_n51_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "memory monitoring"
xicnarg271_done:
bb118_α:
  .section .rodata
  .Lcall118_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+150]
 mov rdx, qword ptr [r12+151]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall118_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain21_n51_α
 jmp xchain21_n51_α
xchain21_n50_β:
 jmp xchain21_n51_α
xchain21_n51_α:
xargsub276_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg275_done:
xargsub280_n0_α:
# IR_LIT_S
bb120_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [r12 + 1544], rax
 jmp xicnarg279_done
 xargsub280_n0_β:
 jmp xchain21_n52_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "multiple programs"
xicnarg279_done:
bb121_α:
  .section .rodata
  .Lcall121_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+153]
 mov rdx, qword ptr [r12+154]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall121_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain21_n52_α
 jmp xchain21_n52_α
xchain21_n51_β:
 jmp xchain21_n52_α
xchain21_n52_α:
xargsub284_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg283_done:
xargsub288_n0_α:
# IR_LIT_S
bb123_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [r12 + 1576], rax
 jmp xicnarg287_done
 xargsub288_n0_β:
 jmp xchain21_n53_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "multiple regions"
xicnarg287_done:
bb124_α:
  .section .rodata
  .Lcall124_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+156]
 mov rdx, qword ptr [r12+157]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall124_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain21_n53_α
 jmp xchain21_n53_α
xchain21_n52_β:
 jmp xchain21_n53_α
xchain21_n53_α:
xargsub292_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg291_done:
xargsub296_n0_α:
# IR_LIT_S
bb126_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [r12 + 1608], rax
 jmp xicnarg295_done
 xargsub296_n0_β:
 jmp xchain21_n54_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "pipes"
xicnarg295_done:
bb127_α:
  .section .rodata
  .Lcall127_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall127_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain21_n54_α
 jmp xchain21_n54_α
xchain21_n53_β:
 jmp xchain21_n54_α
xchain21_n54_α:
xargsub300_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg299_done:
xargsub304_n0_α:
# IR_LIT_S
bb129_α:
 mov qword ptr [r12 + 1632], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [r12 + 1640], rax
 jmp xicnarg303_done
 xargsub304_n0_β:
 jmp xchain21_n55_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "record I/O"
xicnarg303_done:
bb130_α:
  .section .rodata
  .Lcall130_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+163]
 mov rdx, qword ptr [r12+164]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall130_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain21_n55_α
 jmp xchain21_n55_α
xchain21_n54_β:
 jmp xchain21_n55_α
xchain21_n55_α:
xargsub308_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg307_done:
xargsub312_n0_α:
# IR_LIT_S
bb132_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [r12 + 1672], rax
 jmp xicnarg311_done
 xargsub312_n0_β:
 jmp xchain21_n56_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "string invocation"
xicnarg311_done:
bb133_α:
  .section .rodata
  .Lcall133_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+166]
 mov rdx, qword ptr [r12+167]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall133_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain21_n56_α
 jmp xchain21_n56_α
xchain21_n55_β:
 jmp xchain21_n56_α
xchain21_n56_α:
xargsub316_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg315_done:
xargsub320_n0_α:
# IR_LIT_S
bb135_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [r12 + 1704], rax
 jmp xicnarg319_done
 xargsub320_n0_β:
 jmp xchain21_n57_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "system function"
xicnarg319_done:
bb136_α:
  .section .rodata
  .Lcall136_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+169]
 mov rdx, qword ptr [r12+170]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall136_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je xchain21_n57_α
 jmp xchain21_n57_α
xchain21_n56_β:
 jmp xchain21_n57_α
xchain21_n57_α:
xargsub324_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg323_done:
xargsub328_n0_α:
# IR_LIT_S
bb138_α:
 mov qword ptr [r12 + 1728], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [r12 + 1736], rax
 jmp xicnarg327_done
 xargsub328_n0_β:
 jmp xchain21_n58_α
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "visualization support"
xicnarg327_done:
bb139_α:
  .section .rodata
  .Lcall139_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+172]
 mov rdx, qword ptr [r12+173]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall139_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain21_n58_α
 jmp xchain21_n58_α
xchain21_n57_β:
 jmp xchain21_n58_α
xchain21_n58_α:
xargsub332_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg331_done:
xargsub336_n0_α:
# IR_LIT_S
bb141_α:
 mov qword ptr [r12 + 1760], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [r12 + 1768], rax
 jmp xicnarg335_done
 xargsub336_n0_β:
 jmp xchain21_n59_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "window functions"
xicnarg335_done:
bb142_α:
  .section .rodata
  .Lcall142_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+176]
 mov rdx, qword ptr [r12+176]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall142_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain21_n59_α
 jmp xchain21_n59_α
xchain21_n58_β:
 jmp xchain21_n59_α
xchain21_n59_α:
xargsub340_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg339_done:
xargsub344_n0_α:
# IR_LIT_S
bb144_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [r12 + 1800], rax
 jmp xicnarg343_done
 xargsub344_n0_β:
 jmp xchain21_n60_α
.Lx345_0:
 .quad .Lx345_0_s
.Lx345_0_s:
 .string "X Windows"
xicnarg343_done:
bb145_α:
  .section .rodata
  .Lcall145_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+179]
 mov rdx, qword ptr [r12+180]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall145_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je xchain21_n60_α
 jmp xchain21_n60_α
xchain21_n59_β:
 jmp xchain21_n60_α
xchain21_n60_α:
xargsub348_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg347_done:
xargsub352_n0_α:
# IR_LIT_S
bb147_α:
 mov qword ptr [r12 + 1824], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [r12 + 1832], rax
 jmp xicnarg351_done
 xargsub352_n0_β:
 jmp xchain21_n61_α
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "Presentation Manager"
xicnarg351_done:
bb148_α:
  .section .rodata
  .Lcall148_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+182]
 mov rdx, qword ptr [r12+183]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall148_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain21_n61_α
 jmp xchain21_n61_α
xchain21_n60_β:
 jmp xchain21_n61_α
xchain21_n61_α:
xargsub356_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg355_done:
xargsub360_n0_α:
# IR_LIT_S
bb150_α:
 mov qword ptr [r12 + 1856], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [r12 + 1864], rax
 jmp xicnarg359_done
 xargsub360_n0_β:
 jmp xchain21_n62_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "Archimedes extensions"
xicnarg359_done:
bb151_α:
  .section .rodata
  .Lcall151_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+185]
 mov rdx, qword ptr [r12+186]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall151_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain21_n62_α
 jmp xchain21_n62_α
xchain21_n61_β:
 jmp xchain21_n62_α
xchain21_n62_α:
xargsub364_n0_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xicnarg363_done:
xargsub368_n0_α:
# IR_LIT_S
bb153_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [r12 + 1896], rax
 jmp xicnarg367_done
 xargsub368_n0_β:
 jmp xchain21_n63_α
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "MS-DOS extensions"
xicnarg367_done:
bb154_α:
  .section .rodata
  .Lcall154_pname: .string "precheck"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+188]
 mov rdx, qword ptr [r12+189]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall154_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain21_n63_α
 jmp xchain21_n63_α
xchain21_n62_β:
 jmp xchain21_n63_α
xchain21_n63_α:
# IR_LIT_S
bb155_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain21_n64_α
 xchain21_n63_β:
 jmp main_ω
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "done"
xchain21_n64_α:
bb156_α:
# BOX IR_CALL write(op) [GZ-7 flat-chain slot -> rt_write_any_nl]
 mov rdi, qword ptr [r12 + 1920]
 mov rsi, qword ptr [r12 + 1928]
 call rt_write_any_nl@PLT
 jmp main_γ
xchain21_n64_β:
xchain21_n64_β:
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
.S0: .string "bb_var: unhandled arm (no flat-chain mode or missing slot)"
.text
