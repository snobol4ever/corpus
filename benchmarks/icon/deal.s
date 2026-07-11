  .intel_syntax noprefix
  .text
  .globl proc_display_α
proc_display_α:
#=======================================================================================================================
    .global proc_display_α
    .global proc_display_β
    .global proc_display_γ
    .global proc_display_ω
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
 mov qword ptr [r12 + 1568], rax
 pop rsi
proc_display_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [rbx + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
# IR_NULLTEST_VAR
 xchain0_n1_α:
 mov eax, dword ptr [r12 + 1504]
 cmp eax, 99
 je xchain0_n3_α
 mov rdi, qword ptr [r12 + 1504]
 mov rsi, qword ptr [r12 + 1512]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n3_α
 cmp eax, 0
 jne xchain0_n3_α
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1528], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1552], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 1560], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_VAR
 xchain0_n3_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n6_α
# IR_ASSIGN_VAR
 xchain0_n4_α:
 mov rdi, qword ptr [r12 + 1520]
 mov rsi, qword ptr [r12 + 1528]
 mov rdx, qword ptr [r12 + 1552]
 mov rcx, qword ptr [r12 + 1560]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n3_α
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain0_n7_α
 xchain0_n4_β:
 jmp xchain0_n3_α
 xchain0_n5_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx8_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx8_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx8_2
.Lx8_1:
 call rt_faildescr@PLT
.Lx8_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n8_α
 xchain0_n5_β:
 jmp xchain0_n6_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "shuffle"
# IR_MAKE_LIST
 xchain0_n6_α:
 lea rdi, [r12 + 1184]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain0_n9_α
 xchain0_n6_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n19_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "\n"
# IR_ASSIGN gva
 xchain0_n8_α:
 mov rax, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n6_α
 xchain0_n8_β:
 jmp xchain0_n6_α
 xchain0_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n19_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "-"
# IR_VAR
 xchain0_n11_α:
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [r12 + 1488], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n19_α
.Lx17_0:
 .quad 33
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn20: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn20]
 lea rsi, [r12 + 816]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n17_α
 xchain0_n15_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn22: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 1440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain0_n19_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n19_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [r12 + 1056], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n20_α
 xchain0_n16_β:
 jmp xchain0_n14_α
.Lx23_0:
 .quad 0
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n21_α
 xchain0_n17_β:
 jmp xchain0_n22_α
 xchain0_n18_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 mov rdx, qword ptr [r12 + 1424]
 mov rcx, qword ptr [r12 + 1432]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain0_n23_α
 xchain0_n18_β:
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain0_n24_α
 xchain0_n19_β:
 jmp xchain0_n3_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string " "
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain0_n25_α
 xchain0_n20_β:
 jmp xchain0_n14_α
.Lx27_0:
 .quad 3
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n26_α
 xchain0_n21_β:
 jmp xchain0_n22_α
 xchain0_n22_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn31: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 640]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n27_α
 xchain0_n22_β:
 jmp xchain0_n27_α
# IR_ASSIGN gva
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 1392]
 mov rdx, qword ptr [r12 + 1400]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain0_n19_α
 xchain0_n23_β:
 jmp xchain0_n19_α
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [r12 + 1360], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n3_α
.Lx33_0:
 .quad 10
# IR_TO
 xchain0_n25_α:
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1040], rax
.Lx35_0:
 mov rax, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1080]
 cmp rax, rcx
 jg xchain0_n14_α
 mov qword ptr [r12 + 1024], 6
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n29_α
 xchain0_n25_β:
 inc qword ptr [r12 + 1040]
 jmp .Lx35_0
# IR_LIT_INTEGER
 xchain0_n26_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n22_α
.Lx36_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n27_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n67_α
.Lx37_0:
 .quad 1
 xchain0_n28_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1320], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1328]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1336], rax
  .section .rodata
  .Lrkfn39: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 1312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n29_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n25_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n30_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n67_α
.Lx42_0:
 .quad 4
# IR_ASSIGN gva
 xchain0_n32_α:
 mov rax, qword ptr [r12 + 1296]
 mov rdx, qword ptr [r12 + 1304]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n3_α
# IR_COERCE_NUMERIC
 xchain0_n33_α:
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 7
 je .Lx45_1
 cmp eax, 6
 jne .Lx45_0
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 6
 jne .Lx45_0
.Lx45_1:
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
 jmp .Lx45_2
.Lx45_0:
 lea rdi, [r12 + 1024]
 lea rsi, [r12 + 1088]
 lea rdx, [r12 + 1008]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx45_2:
 jmp xchain0_n37_α
 xchain0_n33_β:
 jmp xchain0_n14_α
# IR_DEREF variable -> value
 xchain0_n34_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n22_α
# IR_TO
 xchain0_n35_α:
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 272], rax
.Lx48_0:
 mov rax, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 312]
 cmp rax, rcx
 jg xchain0_n67_α
 mov qword ptr [r12 + 256], 6
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n39_α
 xchain0_n35_β:
 inc qword ptr [r12 + 272]
 jmp .Lx48_0
 xchain0_n36_α:
 jmp xchain0_n40_α
xchain0_n36_β:
 jmp xchain0_n3_α
# IR_COERCE_NUMERIC
 xchain0_n37_α:
 mov eax, dword ptr [r12 + 1088]
 cmp eax, 7
 je .Lx51_1
 cmp eax, 6
 jne .Lx51_0
 mov eax, dword ptr [r12 + 1024]
 cmp eax, 6
 jne .Lx51_0
.Lx51_1:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1000], rax
 jmp .Lx51_2
.Lx51_0:
 lea rdi, [r12 + 1088]
 lea rsi, [r12 + 1024]
 lea rdx, [r12 + 992]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx51_2:
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n14_α
# IR_LIST_BANG
 xchain0_n38_α:
 mov qword ptr [r12 + 720], 0
.Lx53_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 720]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp rax, 99
 je xchain0_n22_α
 jmp xchain0_n42_α
 xchain0_n38_β:
 inc qword ptr [r12 + 720]
 jmp .Lx53_0
 xchain0_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n67_α
# IR_MOVE_LABEL
 xchain0_n40_α:
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
 lea rax, [rip + xchain0_n3_α]
 mov qword ptr [r12 + 1264], rax
 jmp xchain0_n3_α
 xchain0_n40_β:
 jmp xchain0_n3_α
 xchain0_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 100
 je .Lx57_0
 mov eax, dword ptr [r12 + 992]
 cmp eax, 100
 je .Lx57_0
 mov eax, dword ptr [r12 + 1008]
 cmp eax, 6
 jne .Lx57_2
 mov eax, dword ptr [r12 + 992]
 cmp eax, 6
 jne .Lx57_2
.Lx57_1:
 mov rax, qword ptr [r12 + 1016]
 mov rcx, qword ptr [r12 + 1000]
 imul rax, rcx
 mov qword ptr [r12 + 976], 6
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n45_α
.Lx57_0:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1000]
 mov r8d, 2
 lea r9, [r12 + 976]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx57_3
.Lx57_2:
 mov rdi, qword ptr [r12 + 1008]
 mov rsi, qword ptr [r12 + 1016]
 mov rdx, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1000]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n14_α
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
.Lx57_3:
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n14_α
 xchain0_n42_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn59: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n38_β
 xchain0_n42_β:
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n43_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n35_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n44_α:
 jmp qword ptr [r12 + 1264]
 xchain0_n44_β:
 jmp xchain0_n3_α
# IR_LIT_INTEGER
 xchain0_n45_α:
 mov qword ptr [r12 + 1104], 6
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n25_β
.Lx64_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n46_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n35_β
.Lx65_0:
 .quad 4
# IR_COERCE_NUMERIC
 xchain0_n47_α:
 mov eax, dword ptr [r12 + 976]
 cmp eax, 7
 je .Lx67_1
 cmp eax, 6
 jne .Lx67_0
 mov eax, dword ptr [r12 + 1104]
 cmp eax, 6
 jne .Lx67_0
.Lx67_1:
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 968], rax
 jmp .Lx67_2
.Lx67_0:
 lea rdi, [r12 + 976]
 lea rsi, [r12 + 1104]
 lea rdx, [r12 + 960]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx67_2:
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n48_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n35_β
 xchain0_n49_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 960]
 cmp eax, 100
 je .Lx69_0
 mov eax, dword ptr [r12 + 960]
 cmp eax, 6
 jne .Lx69_2
.Lx69_1:
 mov rax, qword ptr [r12 + 968]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 944], 6
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n51_α
.Lx69_0:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 mov r8d, 0
 lea r9, [r12 + 944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx69_3
.Lx69_2:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 1104]
 mov rcx, qword ptr [r12 + 1112]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n14_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
.Lx69_3:
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n52_α
 xchain0_n50_β:
 jmp xchain0_n35_β
# IR_VAR
 xchain0_n51_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n53_α
 xchain0_n51_β:
 jmp xchain0_n25_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n54_α
 xchain0_n52_β:
 jmp xchain0_n35_β
 xchain0_n53_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [r12 + 1120]
 cmp eax, 100
 je .Lx74_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx74_2
 mov eax, dword ptr [r12 + 1120]
 cmp eax, 6
 jne .Lx74_2
.Lx74_1:
 mov rax, qword ptr [r12 + 952]
 mov rcx, qword ptr [r12 + 1128]
 add rax, rcx
 mov qword ptr [r12 + 1136], 6
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n55_α
.Lx74_0:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1128]
 mov r8d, 0
 lea r9, [r12 + 1136]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx74_3
.Lx74_2:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 1120]
 mov rcx, qword ptr [r12 + 1128]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_β
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
.Lx74_3:
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp xchain0_n25_β
# IR_DEREF variable -> value
 xchain0_n54_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n56_α
 xchain0_n54_β:
 jmp xchain0_n35_β
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain0_n55_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8, qword ptr [r12 + 1136]
 mov r9, qword ptr [r12 + 1144]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain0_n25_β
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n57_α
 xchain0_n55_β:
 jmp xchain0_n25_β
# IR_LIT_INTEGER
 xchain0_n56_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n58_α
 xchain0_n56_β:
 jmp xchain0_n35_β
.Lx77_0:
 .quad 20
 xchain0_n57_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx79_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx79_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx79_2
.Lx79_1:
 call rt_faildescr@PLT
.Lx79_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n14_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "show"
 xchain0_n58_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+384]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+400]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn81: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n35_β
 jmp xchain0_n60_α
 xchain0_n58_β:
 jmp xchain0_n35_β
 xchain0_n59_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn83: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n25_β
 xchain0_n59_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n60_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n35_β
# IR_LIT_INTEGER
 xchain0_n61_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n35_β
.Lx86_0:
 .quad 2
# IR_SUBSCRIPT x[i] variable
 xchain0_n62_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n35_β
# IR_VAR
 xchain0_n63_α:
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n35_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n64_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n35_β
# IR_DEREF variable -> value
 xchain0_n65_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n35_β
 xchain0_n66_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+352]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn93: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn93]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n35_β
 jmp xchain0_n35_β
 xchain0_n66_β:
 jmp xchain0_n35_β
 xchain0_n67_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn95: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn95]
 lea rsi, [r12 + 240]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n68_α
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n68_α
# IR_VAR
 xchain0_n68_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n70_α
# IR_VAR_REF
 xchain0_n69_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp xchain0_n70_α
# IR_VAR
 xchain0_n70_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n72_α
 xchain0_n70_β:
 jmp proc_display_ω
# IR_LIT_INTEGER
 xchain0_n71_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx00001_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n73_α
 xchain0_n71_β:
 jmp xchain0_n70_α
.Lx00001_0:
 .quad 3
 xchain0_n72_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn102: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn102]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je proc_display_ω
 jmp proc_display_ω
 xchain0_n72_β:
 jmp proc_display_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n73_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n70_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp xchain0_n70_α
# IR_DEREF variable -> value
 xchain0_n74_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n70_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n70_α
# IR_LIST_BANG
 xchain0_n75_α:
 mov qword ptr [r12 + 144], 0
.Lx00002_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp rax, 99
 je xchain0_n70_α
 jmp xchain0_n76_α
 xchain0_n75_β:
 inc qword ptr [r12 + 144]
 jmp .Lx00002_0
 xchain0_n76_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn108: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn108]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n70_α
 jmp xchain0_n75_β
 xchain0_n76_β:
 jmp xchain0_n70_α
proc_display_β:
jmp proc_display_ω
proc_display_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1568]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_display_ω:
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
  .globl proc_show_α
proc_show_α:
#=======================================================================================================================
    .global proc_show_α
    .global proc_show_β
    .global proc_show_γ
    .global proc_show_ω
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
 mov qword ptr [r12 + 1232], rax
 pop rsi
proc_show_α_body:
# IR_VAR_REF
 xchain00003_n0_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00003_n1_α
 xchain00003_n0_β:
 jmp xchain00003_n3_α
# IR_NULLTEST_VAR
 xchain00003_n1_α:
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 99
 je xchain00003_n3_α
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00003_n3_α
 cmp eax, 0
 jne xchain00003_n3_α
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00003_n2_α
 xchain00003_n1_β:
 jmp xchain00003_n3_α
# IR_LIT_INTEGER
 xchain00003_n2_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00003_n4_α
 xchain00003_n2_β:
 jmp xchain00003_n3_α
.Lx00004_0:
 .quad 1
# IR_LIT_STRING
 xchain00003_n3_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00003_n5_α
 xchain00003_n3_β:
 jmp proc_show_ω
.Lx00005_0:
 .quad .Lx00005_0_s
.Lx00005_0_s:
 .string "S: "
# IR_ASSIGN_VAR
 xchain00003_n4_α:
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00003_n3_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00003_n6_α
 xchain00003_n4_β:
 jmp xchain00003_n3_α
# IR_VAR
 xchain00003_n5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00003_n7_α
 xchain00003_n5_β:
 jmp proc_show_ω
# IR_VAR
 xchain00003_n6_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00003_n8_α
 xchain00003_n6_β:
 jmp xchain00003_n9_α
# IR_VAR
 xchain00003_n7_α:
 mov rax, qword ptr [rbx + 256]
 mov rdx, qword ptr [rbx + 264]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00003_n10_α
 xchain00003_n7_β:
 jmp proc_show_ω
# IR_VAR
 xchain00003_n8_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00003_n11_α
 xchain00003_n8_β:
 jmp xchain00003_n9_α
# IR_VAR
 xchain00003_n9_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00003_n12_α
 xchain00003_n9_β:
 jmp xchain00003_n13_α
 xchain00003_n10_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00006_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00006_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00006_2
.Lx00006_1:
 call rt_faildescr@PLT
.Lx00006_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00003_n14_α
 xchain00003_n10_β:
 jmp proc_show_ω
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "arrange"
# IR_LIT_INTEGER
 xchain00003_n11_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00003_n15_α
 xchain00003_n11_β:
 jmp xchain00003_n9_α
.Lx00007_0:
 .quad 3
# IR_VAR
 xchain00003_n12_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00003_n16_α
 xchain00003_n12_β:
 jmp xchain00003_n13_α
# IR_VAR
 xchain00003_n13_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00003_n17_α
 xchain00003_n13_β:
 jmp xchain00003_n18_α
 xchain00003_n14_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00003_n19_α
 xchain00003_n14_β:
 jmp proc_show_ω
 xchain00003_n15_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn129: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn129]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain00003_n9_α
 jmp xchain00003_n20_α
 xchain00003_n15_β:
 jmp xchain00003_n9_α
 xchain00003_n16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00003_n21_α
 xchain00003_n16_β:
 jmp xchain00003_n13_α
# IR_LIT_INTEGER
 xchain00003_n17_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00003_n22_α
 xchain00003_n17_β:
 jmp xchain00003_n18_α
.Lx00008_0:
 .quad 2
# IR_VAR
 xchain00003_n18_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00003_n23_α
 xchain00003_n18_β:
 jmp xchain00003_n3_α
# IR_LIT_STRING
 xchain00003_n19_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00003_n24_α
 xchain00003_n19_β:
 jmp proc_show_ω
.Lx00009_0:
 .quad .Lx00009_0_s
.Lx00009_0_s:
 .string "H: "
 xchain00003_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00003_n25_α
 xchain00003_n20_β:
 jmp xchain00003_n9_α
# IR_VAR
 xchain00003_n21_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00003_n26_α
 xchain00003_n21_β:
 jmp xchain00003_n13_α
 xchain00003_n22_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn137: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn137]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain00003_n18_α
 jmp xchain00003_n27_α
 xchain00003_n22_β:
 jmp xchain00003_n18_α
# IR_LIT_INTEGER
 xchain00003_n23_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00003_n28_α
 xchain00003_n23_β:
 jmp xchain00003_n3_α
.Lx00010_0:
 .quad 3
# IR_VAR
 xchain00003_n24_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain00003_n29_α
 xchain00003_n24_β:
 jmp proc_show_ω
# IR_ASSIGN gva
 xchain00003_n25_α:
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00003_n9_α
 xchain00003_n25_β:
 jmp xchain00003_n9_α
# IR_LIT_INTEGER
 xchain00003_n26_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx00011_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00003_n30_α
 xchain00003_n26_β:
 jmp xchain00003_n13_α
.Lx00011_0:
 .quad 2
# IR_VAR
 xchain00003_n27_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00003_n31_α
 xchain00003_n27_β:
 jmp xchain00003_n18_α
 xchain00003_n28_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn145: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00003_n3_α
 jmp xchain00003_n32_α
 xchain00003_n28_β:
 jmp xchain00003_n3_α
# IR_VAR
 xchain00003_n29_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00003_n33_α
 xchain00003_n29_β:
 jmp proc_show_ω
 xchain00003_n30_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn148: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain00003_n13_α
 jmp xchain00003_n34_α
 xchain00003_n30_β:
 jmp xchain00003_n13_α
 xchain00003_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call str_concat_d@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00003_n35_α
 xchain00003_n31_β:
 jmp xchain00003_n18_α
# IR_VAR
 xchain00003_n32_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00003_n36_α
 xchain00003_n32_β:
 jmp xchain00003_n3_α
 xchain00003_n33_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00012_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00012_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00012_2
.Lx00012_1:
 call rt_faildescr@PLT
.Lx00012_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00003_n37_α
 xchain00003_n33_β:
 jmp proc_show_ω
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "arrange"
 xchain00003_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 call str_concat_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00003_n38_α
 xchain00003_n34_β:
 jmp xchain00003_n13_α
# IR_VAR
 xchain00003_n35_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00003_n39_α
 xchain00003_n35_β:
 jmp xchain00003_n18_α
 xchain00003_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00003_n40_α
 xchain00003_n36_β:
 jmp xchain00003_n3_α
 xchain00003_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call str_concat_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00003_n41_α
 xchain00003_n37_β:
 jmp proc_show_ω
# IR_ASSIGN gva
 xchain00003_n38_α:
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00003_n13_α
 xchain00003_n38_β:
 jmp xchain00003_n13_α
 xchain00003_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call str_concat_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00003_n42_α
 xchain00003_n39_β:
 jmp xchain00003_n18_α
# IR_ASSIGN gva
 xchain00003_n40_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00003_n43_α
 xchain00003_n40_β:
 jmp xchain00003_n3_α
# IR_LIT_STRING
 xchain00003_n41_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00013_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00003_n44_α
 xchain00003_n41_β:
 jmp proc_show_ω
.Lx00013_0:
 .quad .Lx00013_0_s
.Lx00013_0_s:
 .string "D: "
# IR_ASSIGN gva
 xchain00003_n42_α:
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00003_n18_α
 xchain00003_n42_β:
 jmp xchain00003_n18_α
 xchain00003_n43_α:
 jmp xchain00003_n45_α
xchain00003_n43_β:
 jmp xchain00003_n3_α
# IR_VAR
 xchain00003_n44_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
 jmp xchain00003_n46_α
 xchain00003_n44_β:
 jmp proc_show_ω
# IR_MOVE_LABEL
 xchain00003_n45_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00003_n3_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00003_n3_α
 xchain00003_n45_β:
 jmp xchain00003_n3_α
# IR_VAR
 xchain00003_n46_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00003_n48_α
 xchain00003_n46_β:
 jmp proc_show_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00003_n47_α:
 jmp qword ptr [r12 + 576]
 xchain00003_n47_β:
 jmp xchain00003_n3_α
 xchain00003_n48_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00014_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00014_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00014_2
.Lx00014_1:
 call rt_faildescr@PLT
.Lx00014_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00003_n49_α
 xchain00003_n48_β:
 jmp proc_show_ω
.Lx00014_0:
 .quad .Lx00014_0_s
.Lx00014_0_s:
 .string "arrange"
 xchain00003_n49_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00003_n50_α
 xchain00003_n49_β:
 jmp proc_show_ω
# IR_LIT_STRING
 xchain00003_n50_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00003_n51_α
 xchain00003_n50_β:
 jmp proc_show_ω
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string "C: "
# IR_VAR
 xchain00003_n51_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00003_n52_α
 xchain00003_n51_β:
 jmp proc_show_ω
# IR_VAR
 xchain00003_n52_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00003_n53_α
 xchain00003_n52_β:
 jmp proc_show_ω
 xchain00003_n53_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00016_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00016_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00016_2
.Lx00016_1:
 call rt_faildescr@PLT
.Lx00016_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00003_n54_α
 xchain00003_n53_β:
 jmp proc_show_ω
.Lx00016_0:
 .quad .Lx00016_0_s
.Lx00016_0_s:
 .string "arrange"
 xchain00003_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00003_n55_α
 xchain00003_n54_β:
 jmp proc_show_ω
# IR_MAKE_LIST
 xchain00003_n55_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 56], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 72], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 88], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 104], rax
 lea rdi, [r12 + 48]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00003_n56_α
 xchain00003_n55_β:
 jmp proc_show_ω
# IR_RETURN
 xchain00003_n56_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_show_γ
proc_show_β:
jmp proc_show_ω
proc_show_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1232]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_show_ω:
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
  .globl proc_arrange_α
proc_arrange_α:
#=======================================================================================================================
    .global proc_arrange_α
    .global proc_arrange_β
    .global proc_arrange_γ
    .global proc_arrange_ω
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
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_arrange_α_body:
# IR_VAR
 xchain00017_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00017_n1_α
 xchain00017_n0_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00017_n1_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00017_n2_α
 xchain00017_n1_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00017_n2_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
 jmp xchain00017_n3_α
 xchain00017_n2_β:
 jmp proc_arrange_ω
 xchain00017_n3_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 168], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn190: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00017_n4_α
 xchain00017_n3_β:
 jmp proc_arrange_ω
# IR_LIT_CHARSET
 xchain00017_n4_α:
 mov qword ptr [r12 + 240], 1
 mov dword ptr [r12 + 244], -1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00017_n5_α
 xchain00017_n4_β:
 jmp proc_arrange_ω
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string " "
 xchain00017_n5_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_arrange_ω
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00017_n6_α
 xchain00017_n5_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00017_n6_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00017_n7_α
 xchain00017_n6_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00017_n7_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00017_n8_α
 xchain00017_n7_β:
 jmp proc_arrange_ω
 xchain00017_n8_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+64]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+80]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 88], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+96]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn196: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 64]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00017_n9_α
 xchain00017_n8_β:
 jmp proc_arrange_ω
# IR_RETURN
 xchain00017_n9_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_arrange_γ
proc_arrange_β:
jmp proc_arrange_ω
proc_arrange_γ:
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
proc_arrange_ω:
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
  .globl proc_options_α
proc_options_α:
#=======================================================================================================================
    .global proc_options_α
    .global proc_options_β
    .global proc_options_γ
    .global proc_options_ω
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
 mov qword ptr [r12 + 2384], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00019_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 jmp xchain00019_n1_α
 xchain00019_n0_β:
 jmp xchain00019_n3_α
# IR_NULLTEST_VAR
 xchain00019_n1_α:
 mov eax, dword ptr [r12 + 2288]
 cmp eax, 99
 je xchain00019_n3_α
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00019_n3_α
 cmp eax, 0
 jne xchain00019_n3_α
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2312], rax
 jmp xchain00019_n2_α
 xchain00019_n1_β:
 jmp xchain00019_n3_α
# IR_LIT_CHARSET
 xchain00019_n2_α:
 mov qword ptr [r12 + 2368], 1
 mov dword ptr [r12 + 2372], -1
 mov rax, qword ptr [rip + .Lx00020_0]
 mov qword ptr [r12 + 2376], rax
 jmp xchain00019_n4_α
 xchain00019_n2_β:
 jmp xchain00019_n3_α
.Lx00020_0:
 .quad .Lx00020_0_s
.Lx00020_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00019_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn204: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 2288]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 cmp eax, 99
 je xchain00019_n6_α
 jmp xchain00019_n5_α
 xchain00019_n3_β:
 jmp xchain00019_n6_α
 xchain00019_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2352]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2360], rax
  .section .rodata
  .Lrkfn206: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn206]
 lea rsi, [r12 + 2352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2336], rax
 mov qword ptr [r12 + 2344], rdx
 cmp eax, 99
 je xchain00019_n3_α
 jmp xchain00019_n7_α
 xchain00019_n4_β:
 jmp xchain00019_n3_α
 xchain00019_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2272]
 mov rdx, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain00019_n6_α
 xchain00019_n5_β:
 jmp xchain00019_n6_α
# IR_MAKE_LIST
 xchain00019_n6_α:
 lea rdi, [r12 + 2256]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00019_n8_α
 xchain00019_n6_β:
 jmp xchain00019_n9_α
# IR_ASSIGN_VAR
 xchain00019_n7_α:
 mov rdi, qword ptr [r12 + 2304]
 mov rsi, qword ptr [r12 + 2312]
 mov rdx, qword ptr [r12 + 2336]
 mov rcx, qword ptr [r12 + 2344]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00019_n3_α
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 jmp xchain00019_n3_α
 xchain00019_n7_β:
 jmp xchain00019_n3_α
 xchain00019_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00019_n9_α
 xchain00019_n8_β:
 jmp xchain00019_n9_α
# IR_VAR
 xchain00019_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00019_n10_α
 xchain00019_n9_β:
 jmp xchain00019_n11_α
 xchain00019_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn215: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn215]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00019_n11_α
 jmp xchain00019_n12_α
 xchain00019_n10_β:
 jmp xchain00019_n11_α
# IR_VAR
 xchain00019_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00019_n13_α
 xchain00019_n11_β:
 jmp xchain00019_n14_α
 xchain00019_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00019_n15_α
 xchain00019_n12_β:
 jmp xchain00019_n11_α
# IR_VAR
 xchain00019_n13_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 168], rax
 jmp xchain00019_n16_α
 xchain00019_n13_β:
 jmp xchain00019_n14_α
# IR_VAR
 xchain00019_n14_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 56], rax
 jmp xchain00019_n17_α
 xchain00019_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00019_n15_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2216], rax
 jmp xchain00019_n18_α
 xchain00019_n15_β:
 jmp xchain00019_n9_α
 xchain00019_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn226: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn226]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00019_n14_α
 jmp xchain00019_n19_α
 xchain00019_n16_β:
 jmp xchain00019_n14_α
# IR_RETURN
 xchain00019_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00019_n18_α:
 mov rdi, qword ptr [r12 + 2208]
 mov rsi, qword ptr [r12 + 2216]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00019_n20_α
 xchain00019_n18_β:
 jmp xchain00019_n9_α
 xchain00019_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn231: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn231]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00019_n14_α
 jmp xchain00019_n11_α
 xchain00019_n19_β:
 jmp xchain00019_n14_α
# IR_LIT_STRING
 xchain00019_n20_α:
 mov qword ptr [r12 + 2192], 1
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00019_n21_α
 xchain00019_n20_β:
 jmp xchain00019_n23_α
.Lx00021_0:
 .quad .Lx00021_0_s
.Lx00021_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00019_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00019_n23_α
 mov rdi, qword ptr [rip + .Lx00022_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00019_n23_α
 mov qword ptr [r12 + 2160], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2168], rax
 jmp xchain00019_n22_α
 xchain00019_n21_β:
 jmp xchain00019_n23_α
.Lx00022_0:
 .quad .Lx00022_0_s
.Lx00022_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00019_n22_α:
 mov rax, qword ptr [r12 + 2168]
 cmp rax, 1
 jge .Lx00023_0
 add rax, r15
 add rax, 1
.Lx00023_0:
 cmp rax, 1
 jl xchain00019_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00019_n23_α
 mov qword ptr [r12 + 2144], r14
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
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain00019_n24_α
 xchain00019_n22_β:
 mov r14, qword ptr [r12 + 2144]
 jmp xchain00019_n23_α
# IR_VAR
 xchain00019_n23_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00019_n25_α
 xchain00019_n23_β:
 jmp xchain00019_n26_α
# IR_LIT_INTEGER
 xchain00019_n24_α:
 mov qword ptr [r12 + 2112], 6
 mov rax, qword ptr [rip + .Lx00024_0]
 mov qword ptr [r12 + 2120], rax
 jmp xchain00019_n27_α
 xchain00019_n24_β:
 jmp xchain00019_n29_α
.Lx00024_0:
 .quad 0
# IR_VAR
 xchain00019_n25_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2072], rax
 jmp xchain00019_n28_α
 xchain00019_n25_β:
 jmp xchain00019_n26_α
# IR_GEN_SCAN
 xchain00019_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00019_n9_α
 xchain00019_n26_β:
 jmp xchain00019_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00019_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00025_0
 add rax, r15
 add rax, 1
.Lx00025_0:
 cmp rax, 1
 jl xchain00019_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00019_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00019_n29_α
 mov qword ptr [r12 + 2096], 6
 mov qword ptr [r12 + 2104], rax
 jmp xchain00019_n23_α
 xchain00019_n27_β:
 jmp xchain00019_n29_α
 xchain00019_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2032]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn247: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn247]
 lea rsi, [r12 + 2016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain00019_n26_α
 jmp xchain00019_n30_α
 xchain00019_n28_β:
 jmp xchain00019_n26_α
# KEYWORD_null
 xchain00019_n29_α:
 mov qword ptr [r12 + 2080], 0
 mov qword ptr [r12 + 2088], 0
 jmp xchain00019_n31_α
 xchain00019_n29_β:
 jmp xchain00019_n23_α
# IR_MOVE_LABEL
 xchain00019_n30_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00019_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00019_n32_α
 xchain00019_n30_β:
 jmp xchain00019_n26_α
 xchain00019_n31_α:
 jmp xchain00019_n34_α
xchain00019_n31_β:
 jmp xchain00019_n23_α
# IR_GEN_SCAN
 xchain00019_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00019_n9_α
 xchain00019_n32_β:
 jmp xchain00019_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00019_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00019_n33_β:
 jmp xchain00019_n26_α
# IR_LIT_STRING
 xchain00019_n34_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain00019_n35_α
 xchain00019_n34_β:
 jmp xchain00019_n37_α
.Lx00026_0:
 .quad .Lx00026_0_s
.Lx00026_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00019_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00019_n37_α
 mov rdi, qword ptr [rip + .Lx00027_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00019_n37_α
 mov qword ptr [r12 + 1952], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1960], rax
 jmp xchain00019_n36_α
 xchain00019_n35_β:
 jmp xchain00019_n37_α
.Lx00027_0:
 .quad .Lx00027_0_s
.Lx00027_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00019_n36_α:
 mov rax, qword ptr [r12 + 1960]
 cmp rax, 1
 jge .Lx00028_0
 add rax, r15
 add rax, 1
.Lx00028_0:
 cmp rax, 1
 jl xchain00019_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00019_n37_α
 mov qword ptr [r12 + 1936], r14
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
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain00019_n38_α
 xchain00019_n36_β:
 mov r14, qword ptr [r12 + 1936]
 jmp xchain00019_n37_α
# IR_LIT_INTEGER
 xchain00019_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00019_n39_α
 xchain00019_n37_β:
 jmp xchain00019_n45_α
.Lx00029_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00019_n38_α:
 mov qword ptr [r12 + 1904], 6
 mov rax, qword ptr [rip + .Lx00030_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain00019_n40_α
 xchain00019_n38_β:
 jmp xchain00019_n37_α
.Lx00030_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00019_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00019_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00019_n45_α
 mov qword ptr [r12 + 368], r14
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
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00019_n41_α
 xchain00019_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00019_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00019_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00031_0
 add rax, r15
 add rax, 1
.Lx00031_0:
 cmp rax, 1
 jl xchain00019_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00019_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00019_n37_α
 mov qword ptr [r12 + 1888], 6
 mov qword ptr [r12 + 1896], rax
 jmp xchain00019_n43_α
 xchain00019_n40_β:
 jmp xchain00019_n37_α
 xchain00019_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00019_n44_α
 xchain00019_n41_β:
 jmp xchain00019_n45_α
 xchain00019_n42_α:
 jmp xchain00019_n45_α
xchain00019_n42_β:
 jmp xchain00019_n45_α
 xchain00019_n43_α:
 jmp xchain00019_n11_α
xchain00019_n43_β:
 jmp xchain00019_n37_α
# IR_VAR
 xchain00019_n44_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00019_n47_α
 xchain00019_n44_β:
 jmp xchain00019_n48_α
 xchain00019_n45_α:
 jmp xchain00019_n49_α
xchain00019_n45_β:
 jmp xchain00019_n26_α
 xchain00019_n46_α:
 jmp xchain00019_n11_α
xchain00019_n46_β:
 jmp xchain00019_n11_α
# IR_VAR
 xchain00019_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00019_n50_α
 xchain00019_n47_β:
 jmp xchain00019_n48_α
# IR_LIT_STRING
 xchain00019_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00032_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00019_n51_α
 xchain00019_n48_β:
 jmp xchain00019_n37_α
.Lx00032_0:
 .quad .Lx00032_0_s
.Lx00032_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL
 xchain00019_n49_α:
 lea rax, [rip + xchain00019_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00019_n32_α
 xchain00019_n49_β:
 jmp xchain00019_n26_α
 xchain00019_n50_α:
# BOX CALL_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1784], rax
 mov qword ptr [r12 + 1792], 0
.Lx00033_60:
  .section .rodata
  .Lbynamegenfn195: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn195]
 lea rsi, [r12 + 1760]
 mov edx, 2
 lea rcx, [r12 + 1792]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain00019_n48_α
 jmp xchain00019_n53_α
 xchain00019_n50_β:
 jmp .Lx00033_60
# IR_VAR
 xchain00019_n51_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00019_n54_α
 xchain00019_n51_β:
 jmp xchain00019_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00019_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00019_n52_β:
 jmp xchain00019_n37_α
# IR_LIT_INTEGER
 xchain00019_n53_α:
 mov qword ptr [r12 + 1840], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain00019_n55_α
 xchain00019_n53_β:
 jmp xchain00019_n50_β
.Lx00034_0:
 .quad 1
 xchain00019_n54_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn286: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn286]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00019_n37_α
 jmp xchain00019_n56_α
 xchain00019_n54_β:
 jmp xchain00019_n37_α
# IR_COERCE_NUMERIC
 xchain00019_n55_α:
 mov eax, dword ptr [r12 + 1744]
 cmp eax, 7
 je .Lx00035_1
 cmp eax, 6
 jne .Lx00035_0
 mov eax, dword ptr [r12 + 1840]
 cmp eax, 6
 jne .Lx00035_0
.Lx00035_1:
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1736], rax
 jmp .Lx00035_2
.Lx00035_0:
 lea rdi, [r12 + 1744]
 lea rsi, [r12 + 1840]
 lea rdx, [r12 + 1728]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00035_2:
 jmp xchain00019_n57_α
 xchain00019_n55_β:
 jmp xchain00019_n48_α
# IR_MOVE_LABEL
 xchain00019_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00019_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00019_n37_α
 xchain00019_n56_β:
 jmp xchain00019_n37_α
 xchain00019_n57_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00036_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00036_2
.Lx00036_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00019_n58_α
.Lx00036_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1840]
 mov rcx, qword ptr [r12 + 1848]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00036_3
.Lx00036_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1840]
 mov rcx, qword ptr [r12 + 1848]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00019_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00036_3:
 jmp xchain00019_n58_α
 xchain00019_n57_β:
 jmp xchain00019_n48_α
 xchain00019_n58_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00019_n59_α
 xchain00019_n58_β:
 jmp xchain00019_n48_α
# IR_VAR_REF
 xchain00019_n59_α:
 lea rdi, [r12 + 2400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00019_n60_α
 xchain00019_n59_β:
 jmp xchain00019_n37_α
# IR_VAR
 xchain00019_n60_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 456], rax
 jmp xchain00019_n61_α
 xchain00019_n60_β:
 jmp xchain00019_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00019_n61_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00019_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00019_n62_α
 xchain00019_n61_β:
 jmp xchain00019_n37_α
# IR_LIT_CHARSET
 xchain00019_n62_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00037_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00019_n63_α
 xchain00019_n62_β:
 jmp xchain00019_n66_α
.Lx00037_0:
 .quad .Lx00037_0_s
.Lx00037_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00019_n63_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00019_n64_α
 xchain00019_n63_β:
 jmp xchain00019_n66_α
# IR_VAR
 xchain00019_n64_α:
 mov rax, qword ptr [r12 + 2512]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2520]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00019_n65_α
 xchain00019_n64_β:
 jmp xchain00019_n66_α
# IR_SUBSCRIPT x[i] variable
 xchain00019_n65_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00019_n66_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00019_n67_α
 xchain00019_n65_β:
 jmp xchain00019_n66_α
# IR_LIT_INTEGER
 xchain00019_n66_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00019_n68_α
 xchain00019_n66_β:
 jmp xchain00019_n37_α
.Lx00038_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00019_n67_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00019_n66_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00019_n69_α
 xchain00019_n67_β:
 jmp xchain00019_n66_α
# IR_MOVE_LABEL
 xchain00019_n68_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00019_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00019_n70_α
 xchain00019_n68_β:
 jmp xchain00019_n37_α
 xchain00019_n69_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00019_n72_α
 xchain00019_n69_β:
 jmp xchain00019_n66_α
# IR_ASSIGN_VAR
 xchain00019_n70_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00019_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00019_n73_α
 xchain00019_n70_β:
 jmp xchain00019_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00019_n71_α:
 jmp qword ptr [r12 + 512]
 xchain00019_n71_β:
 jmp xchain00019_n37_α
 xchain00019_n72_α:
# BOX CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lbynamefn217: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn217]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00019_n66_α
 jmp xchain00019_n74_α
 xchain00019_n72_β:
 jmp xchain00019_n66_α
# IR_MOVE_LABEL
 xchain00019_n73_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00019_n71_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00019_n37_α
 xchain00019_n73_β:
 jmp xchain00019_n37_α
# IR_LIT_STRING
 xchain00019_n74_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00019_n75_α
 xchain00019_n74_β:
 jmp xchain00019_n78_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00019_n75_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00019_n76_α
 xchain00019_n75_β:
 jmp xchain00019_n78_α
.Lx00040_0:
 .quad 0
# IR_SCAN_TAB
 xchain00019_n76_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00041_0
 add rax, r15
 add rax, 1
.Lx00041_0:
 cmp rax, 1
 jl xchain00019_n78_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00019_n78_α
 mov qword ptr [r12 + 1424], r14
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
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00019_n77_α
 xchain00019_n76_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00019_n78_α
 xchain00019_n77_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00019_n78_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00019_n79_α
 xchain00019_n77_β:
 jmp xchain00019_n78_α
# IR_VAR
 xchain00019_n78_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00019_n80_α
 xchain00019_n78_β:
 jmp xchain00019_n81_α
# IR_MOVE_LABEL
 xchain00019_n79_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00019_n78_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00019_n82_α
 xchain00019_n79_β:
 jmp xchain00019_n86_α
 xchain00019_n80_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn325: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn325]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00019_n81_α
 jmp xchain00019_n84_α
 xchain00019_n80_β:
 jmp xchain00019_n81_α
# IR_LIT_STRING
 xchain00019_n81_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00042_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00019_n85_α
 xchain00019_n81_β:
 jmp xchain00019_n86_α
.Lx00042_0:
 .quad .Lx00042_0_s
.Lx00042_0_s:
 .string "No parameter following -"
 xchain00019_n82_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00019_n86_α
 xchain00019_n82_β:
 jmp xchain00019_n86_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00019_n83_α:
 jmp qword ptr [r12 + 1232]
 xchain00019_n83_β:
 jmp xchain00019_n86_α
# IR_MOVE_LABEL
 xchain00019_n84_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00019_n81_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00019_n82_α
 xchain00019_n84_β:
 jmp xchain00019_n86_α
# IR_VAR
 xchain00019_n85_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00019_n87_α
 xchain00019_n85_β:
 jmp xchain00019_n86_α
# IR_VAR
 xchain00019_n86_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 552], rax
 jmp xchain00019_n88_α
 xchain00019_n86_β:
 jmp xchain00019_n37_α
 xchain00019_n87_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn337: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn337]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00019_n86_α
 jmp xchain00019_n89_α
 xchain00019_n87_β:
 jmp xchain00019_n86_α
# IR_LIT_STRING
 xchain00019_n88_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00043_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00019_n90_α
 xchain00019_n88_β:
 jmp xchain00019_n37_α
.Lx00043_0:
 .quad .Lx00043_0_s
.Lx00043_0_s:
 .string ":"
# IR_MOVE_LABEL
 xchain00019_n89_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00019_n86_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00019_n82_α
 xchain00019_n89_β:
 jmp xchain00019_n86_α
 xchain00019_n90_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1168]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1184]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn342: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn342]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00019_n92_α
 jmp xchain00019_n91_α
 xchain00019_n90_β:
 jmp xchain00019_n92_α
# IR_VAR
 xchain00019_n91_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00019_n93_α
 xchain00019_n91_β:
 jmp xchain00019_n37_α
# IR_LIT_STRING
 xchain00019_n92_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00019_n94_α
 xchain00019_n92_β:
 jmp xchain00019_n37_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "+"
 xchain00019_n93_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00019_n95_α
 xchain00019_n93_β:
 jmp xchain00019_n37_α
 xchain00019_n94_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1072]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+1088]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn348: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn348]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00019_n97_α
 jmp xchain00019_n96_α
 xchain00019_n94_β:
 jmp xchain00019_n97_α
# IR_VAR
 xchain00019_n95_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 536], rax
 jmp xchain00019_n98_α
 xchain00019_n95_β:
 jmp xchain00019_n37_α
# IR_VAR
 xchain00019_n96_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00019_n99_α
 xchain00019_n96_β:
 jmp xchain00019_n00001_α
# IR_LIT_STRING
 xchain00019_n97_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00045_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00019_n00046_α
 xchain00019_n97_β:
 jmp xchain00019_n37_α
.Lx00045_0:
 .quad .Lx00045_0_s
.Lx00045_0_s:
 .string "."
 xchain00019_n98_α:
 jmp xchain00019_n00047_α
xchain00019_n98_β:
 jmp xchain00019_n37_α
 xchain00019_n99_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn356: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn356]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00019_n00001_α
 jmp xchain00019_n00048_α
 xchain00019_n99_β:
 jmp xchain00019_n00001_α
# IR_LIT_STRING
 xchain00019_n00001_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00019_n00050_α
 xchain00019_n00001_β:
 jmp xchain00019_n37_α
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string "-"
 xchain00019_n00046_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+800]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+816]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn359: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn359]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00019_n37_α
 jmp xchain00019_n00051_α
 xchain00019_n00046_β:
 jmp xchain00019_n37_α
# IR_MOVE_LABEL
 xchain00019_n00047_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00019_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00019_n70_α
 xchain00019_n00047_β:
 jmp xchain00019_n37_α
# IR_MOVE_LABEL
 xchain00019_n00048_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00019_n00001_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00019_n00052_α
 xchain00019_n00048_β:
 jmp xchain00019_n37_α
# IR_VAR
 xchain00019_n00050_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 968], rax
 jmp xchain00019_n00053_α
 xchain00019_n00050_β:
 jmp xchain00019_n37_α
# IR_VAR
 xchain00019_n00051_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 760], rax
 jmp xchain00019_n00054_α
 xchain00019_n00051_β:
 jmp xchain00019_n00003_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00019_n00002_α:
 jmp qword ptr [r12 + 864]
 xchain00019_n00002_β:
 jmp xchain00019_n37_α
# IR_LIT_STRING
 xchain00019_n00053_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00055_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00019_n00056_α
 xchain00019_n00053_β:
 jmp xchain00019_n37_α
.Lx00055_0:
 .quad .Lx00055_0_s
.Lx00055_0_s:
 .string " needs numeric parameter"
 xchain00019_n00054_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn372: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn372]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00019_n00003_α
 jmp xchain00019_n00057_α
 xchain00019_n00054_β:
 jmp xchain00019_n00003_α
# IR_LIT_STRING
 xchain00019_n00003_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00058_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00019_n00004_α
 xchain00019_n00003_β:
 jmp xchain00019_n37_α
.Lx00058_0:
 .quad .Lx00058_0_s
.Lx00058_0_s:
 .string "-"
 xchain00019_n00052_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00019_n95_α
 xchain00019_n00052_β:
 jmp xchain00019_n37_α
 xchain00019_n00056_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn376: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn376]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00019_n37_α
 jmp xchain00019_n00005_α
 xchain00019_n00056_β:
 jmp xchain00019_n37_α
# IR_MOVE_LABEL
 xchain00019_n00057_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00019_n00003_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00019_n00059_α
 xchain00019_n00057_β:
 jmp xchain00019_n37_α
# IR_VAR
 xchain00019_n00004_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 696], rax
 jmp xchain00019_n00060_α
 xchain00019_n00004_β:
 jmp xchain00019_n37_α
# IR_MOVE_LABEL
 xchain00019_n00005_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00019_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00019_n00052_α
 xchain00019_n00005_β:
 jmp xchain00019_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00019_n00061_α:
 jmp qword ptr [r12 + 592]
 xchain00019_n00061_β:
 jmp xchain00019_n37_α
# IR_LIT_STRING
 xchain00019_n00060_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00062_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00019_n00063_α
 xchain00019_n00060_β:
 jmp xchain00019_n37_α
.Lx00062_0:
 .quad .Lx00062_0_s
.Lx00062_0_s:
 .string " needs numeric parameter"
 xchain00019_n00059_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00019_n95_α
 xchain00019_n00059_β:
 jmp xchain00019_n37_α
 xchain00019_n00063_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn388: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00019_n37_α
 jmp xchain00019_n00064_α
 xchain00019_n00063_β:
 jmp xchain00019_n37_α
# IR_MOVE_LABEL
 xchain00019_n00064_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00019_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00019_n00059_α
 xchain00019_n00064_β:
 jmp xchain00019_n37_α
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2384]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_options_ω:
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
  .globl proc_Init___α
proc_Init___α:
#=======================================================================================================================
    .global proc_Init___α
    .global proc_Init___β
    .global proc_Init___γ
    .global proc_Init___ω
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
proc_Init___α_body:
# IR_VAR
 xchain00065_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00065_n1_α
 xchain00065_n0_β:
 jmp xchain00065_n2_α
# IR_ASSIGN gva
 xchain00065_n1_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00065_n2_α
 xchain00065_n1_β:
 jmp xchain00065_n2_α
 xchain00065_n2_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00066_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00066_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00066_2
.Lx00066_1:
 call rt_faildescr@PLT
.Lx00066_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00065_n3_α
 jmp xchain00065_n3_α
 xchain00065_n2_β:
 jmp xchain00065_n3_α
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "Signature__"
 xchain00065_n3_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00067_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00067_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00067_2
.Lx00067_1:
 call rt_faildescr@PLT
.Lx00067_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00065_n4_α
 jmp xchain00065_n4_α
 xchain00065_n3_β:
 jmp xchain00065_n4_α
.Lx00067_0:
 .quad .Lx00067_0_s
.Lx00067_0_s:
 .string "Regions__"
 xchain00065_n4_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00068_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00068_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00068_2
.Lx00068_1:
 call rt_faildescr@PLT
.Lx00068_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00065_n5_α
 jmp xchain00065_n5_α
 xchain00065_n4_β:
 jmp xchain00065_n5_α
.Lx00068_0:
 .quad .Lx00068_0_s
.Lx00068_0_s:
 .string "Time__"
# IR_LIT_STRING
 xchain00065_n5_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00069_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00065_n6_α
 xchain00065_n5_β:
 jmp xchain00065_n8_α
.Lx00069_0:
 .quad .Lx00069_0_s
.Lx00069_0_s:
 .string "OUTPUT"
 xchain00065_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn403: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn403]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00065_n8_α
 jmp xchain00065_n7_α
 xchain00065_n6_β:
 jmp xchain00065_n8_α
# IR_LIT_STRING
 xchain00065_n7_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00065_n9_α
 xchain00065_n7_β:
 jmp xchain00065_n12_α
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00065_n8_α:
 mov rdi, qword ptr [rip + .Lx00071_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00065_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00065_n10_α
 xchain00065_n8_β:
 jmp xchain00065_n11_α
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string "write"
 xchain00065_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn407: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00065_n12_α
 jmp xchain00065_n12_α
 xchain00065_n9_β:
 jmp xchain00065_n12_α
# IR_ASSIGN gva
 xchain00065_n10_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00065_n11_α
 xchain00065_n10_β:
 jmp xchain00065_n11_α
# IR_VAR
 xchain00065_n11_α:
 mov rdi, qword ptr [rip + .Lx00072_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00065_n14_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00065_n13_α
 xchain00065_n11_β:
 jmp xchain00065_n14_α
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string "writes"
# IR_RETURN
 xchain00065_n12_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00065_n13_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00065_n14_α
 xchain00065_n13_β:
 jmp xchain00065_n14_α
# IR_LIT_INTEGER
 xchain00065_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00073_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00065_n15_α
 xchain00065_n14_β:
 jmp xchain00065_n17_α
.Lx00073_0:
 .quad 1
# IR_ASSIGN global
 xchain00065_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00074_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00065_n16_α
 xchain00065_n15_β:
 jmp xchain00065_n17_α
.Lx00074_0:
 .quad .Lx00074_0_s
.Lx00074_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00065_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00075_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00065_n17_α
 xchain00065_n16_β:
 jmp xchain00065_n17_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "write"
# IR_RETURN
 xchain00065_n17_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
proc_Init___β:
jmp proc_Init___ω
proc_Init___γ:
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
proc_Init___ω:
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
  .globl proc_Term___α
proc_Term___α:
#=======================================================================================================================
    .global proc_Term___α
    .global proc_Term___β
    .global proc_Term___γ
    .global proc_Term___ω
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
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_Term___α_body:
# IR_LIT_STRING
 xchain00076_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00077_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00076_n1_α
 xchain00076_n0_β:
 jmp xchain00076_n3_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "OUTPUT"
 xchain00076_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn419: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn419]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00076_n3_α
 jmp xchain00076_n2_α
 xchain00076_n1_β:
 jmp xchain00076_n3_α
# IR_VAR
 xchain00076_n2_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00076_n4_α
 xchain00076_n2_β:
 jmp xchain00076_n5_α
# KEYWORD_null
 xchain00076_n3_α:
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00076_n6_α
 xchain00076_n3_β:
 jmp xchain00076_n2_α
# IR_LIT_STRING
 xchain00076_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00078_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00076_n7_α
 xchain00076_n4_β:
 jmp xchain00076_n5_α
.Lx00078_0:
 .quad .Lx00078_0_s
.Lx00078_0_s:
 .string " elapsed time = "
 xchain00076_n5_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00079_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00079_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00079_2
.Lx00079_1:
 call rt_faildescr@PLT
.Lx00079_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00076_n8_α
 jmp xchain00076_n8_α
 xchain00076_n5_β:
 jmp xchain00076_n8_α
.Lx00079_0:
 .quad .Lx00079_0_s
.Lx00079_0_s:
 .string "Regions__"
# IR_VAR
 xchain00076_n6_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00076_n9_α
 xchain00076_n6_β:
 jmp xchain00076_n10_α
 xchain00076_n7_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00080_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00080_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00080_2
.Lx00080_1:
 call rt_faildescr@PLT
.Lx00080_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00076_n5_α
 jmp xchain00076_n11_α
 xchain00076_n7_β:
 jmp xchain00076_n5_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "Time__"
 xchain00076_n8_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00081_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00081_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00081_2
.Lx00081_1:
 call rt_faildescr@PLT
.Lx00081_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00076_n12_α
 jmp xchain00076_n12_α
 xchain00076_n8_β:
 jmp xchain00076_n12_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "Storage__"
# IR_ASSIGN global
 xchain00076_n9_α:
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rdi, qword ptr [rip + .Lx00082_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00076_n10_α
 xchain00076_n9_β:
 jmp xchain00076_n10_α
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "write"
# IR_VAR
 xchain00076_n10_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00076_n13_α
 xchain00076_n10_β:
 jmp xchain00076_n2_α
 xchain00076_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
# marshal arg2 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn433: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn433]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00076_n5_α
 jmp xchain00076_n5_α
 xchain00076_n11_β:
 jmp xchain00076_n5_α
 xchain00076_n12_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00083_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00083_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00083_2
.Lx00083_1:
 call rt_faildescr@PLT
.Lx00083_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00076_n14_α
 jmp xchain00076_n14_α
 xchain00076_n12_β:
 jmp xchain00076_n14_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "Collections__"
# IR_ASSIGN global
 xchain00076_n13_α:
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov rdi, qword ptr [rip + .Lx00084_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00076_n15_α
 xchain00076_n13_β:
 jmp xchain00076_n2_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "writes"
# IR_RETURN
 xchain00076_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00076_n15_α:
 jmp xchain00076_n16_α
xchain00076_n15_β:
 jmp xchain00076_n2_α
# IR_MOVE_LABEL
 xchain00076_n16_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00076_n2_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00076_n2_α
 xchain00076_n16_β:
 jmp xchain00076_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00076_n17_α:
 jmp qword ptr [r12 + 192]
 xchain00076_n17_β:
 jmp xchain00076_n2_α
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Term___ω:
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
  .globl proc_Collections___α
proc_Collections___α:
#=======================================================================================================================
    .global proc_Collections___α
    .global proc_Collections___β
    .global proc_Collections___γ
    .global proc_Collections___ω
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
 mov qword ptr [r12 + 784], rax
 pop rsi
proc_Collections___α_body:
# IR_VAR_REF
 xchain00085_n0_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00085_n1_α
 xchain00085_n0_β:
 jmp xchain00085_n3_α
# IR_NULLTEST_VAR
 xchain00085_n1_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 99
 je xchain00085_n3_α
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00085_n3_α
 cmp eax, 0
 jne xchain00085_n3_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xchain00085_n2_α
 xchain00085_n1_β:
 jmp xchain00085_n3_α
# IR_LIT_INTEGER
 xchain00085_n2_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00085_n4_α
 xchain00085_n2_β:
 jmp xchain00085_n3_α
.Lx00086_0:
 .quad 1
# IR_MAKE_LIST
 xchain00085_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00085_n5_α
 xchain00085_n3_β:
 jmp xchain00085_n7_α
# IR_ASSIGN_VAR
 xchain00085_n4_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00085_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00085_n6_α
 xchain00085_n4_β:
 jmp xchain00085_n3_α
 xchain00085_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00085_n7_α
 xchain00085_n5_β:
 jmp xchain00085_n7_α
# IR_LIT_STRING
 xchain00085_n6_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00087_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00085_n8_α
 xchain00085_n6_β:
 jmp xchain00085_n3_α
.Lx00087_0:
 .quad .Lx00087_0_s
.Lx00087_0_s:
 .string "total"
# IR_VAR
 xchain00085_n7_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 456], rax
 jmp xchain00085_n9_α
 xchain00085_n7_β:
 jmp xchain00085_n10_α
# IR_LIT_STRING
 xchain00085_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00085_n11_α
 xchain00085_n8_β:
 jmp xchain00085_n3_α
.Lx00088_0:
 .quad .Lx00088_0_s
.Lx00088_0_s:
 .string "static"
# KEYWORD_gen
 xchain00085_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00089_1:
 mov rdi, qword ptr [rip + .Lx00089_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00085_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00085_n12_α
 xchain00085_n9_β:
 jmp .Lx00089_1
.Lx00089_0:
 .quad .Lx00089_0_s
.Lx00089_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00085_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00085_n13_α
 xchain00085_n10_β:
 jmp xchain00085_n15_α
.Lx00090_0:
 .quad .Lx00090_0_s
.Lx00090_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00085_n11_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00085_n14_α
 xchain00085_n11_β:
 jmp xchain00085_n3_α
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "string"
 xchain00085_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn460: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn460]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00085_n10_α
 jmp xchain00085_n9_β
 xchain00085_n12_β:
 jmp xchain00085_n10_α
 xchain00085_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn462: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn462]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00085_n15_α
 jmp xchain00085_n15_α
 xchain00085_n13_β:
 jmp xchain00085_n15_α
# IR_LIT_STRING
 xchain00085_n14_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00085_n16_α
 xchain00085_n14_β:
 jmp xchain00085_n3_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00085_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00093_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00085_n17_α
 xchain00085_n15_β:
 jmp xchain00085_n20_α
.Lx00093_0:
 .quad 1
# IR_MAKE_LIST
 xchain00085_n16_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 lea rdi, [r12 + 592]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00085_n18_α
 xchain00085_n16_β:
 jmp xchain00085_n3_α
# IR_VAR
 xchain00085_n17_α:
 mov rax, qword ptr [rbx + 288]
 mov rdx, qword ptr [rbx + 296]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00085_n19_α
 xchain00085_n17_β:
 jmp xchain00085_n20_α
# IR_ASSIGN gva
 xchain00085_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00085_n21_α
 xchain00085_n18_β:
 jmp xchain00085_n3_α
# IR_UNOP
 xchain00085_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00085_n22_α
 xchain00085_n19_β:
 jmp xchain00085_n20_α
# IR_RETURN
 xchain00085_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL
 xchain00085_n21_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00085_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00085_n3_α
 xchain00085_n21_β:
 jmp xchain00085_n3_α
# IR_TO
 xchain00085_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00094_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00085_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00085_n24_α
 xchain00085_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00094_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00085_n23_α:
 jmp qword ptr [r12 + 544]
 xchain00085_n23_β:
 jmp xchain00085_n3_α
 xchain00085_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00085_n25_α
 xchain00085_n24_β:
 jmp xchain00085_n20_α
# IR_VAR_REF
 xchain00085_n25_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00085_n26_α
 xchain00085_n25_β:
 jmp xchain00085_n22_β
# IR_VAR
 xchain00085_n26_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 184], rax
 jmp xchain00085_n27_α
 xchain00085_n26_β:
 jmp xchain00085_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00085_n27_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00085_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00085_n28_α
 xchain00085_n27_β:
 jmp xchain00085_n22_β
# IR_DEREF variable -> value
 xchain00085_n28_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00085_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00085_n29_α
 xchain00085_n28_β:
 jmp xchain00085_n22_β
# IR_VAR_REF
 xchain00085_n29_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00085_n30_α
 xchain00085_n29_β:
 jmp xchain00085_n22_β
# IR_VAR
 xchain00085_n30_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 296], rax
 jmp xchain00085_n31_α
 xchain00085_n30_β:
 jmp xchain00085_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00085_n31_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00085_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00085_n32_α
 xchain00085_n31_β:
 jmp xchain00085_n22_β
# IR_DEREF variable -> value
 xchain00085_n32_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00085_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00085_n33_α
 xchain00085_n32_β:
 jmp xchain00085_n22_β
# IR_LIT_INTEGER
 xchain00085_n33_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00085_n34_α
 xchain00085_n33_β:
 jmp xchain00085_n22_β
.Lx00095_0:
 .quad 8
 xchain00085_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn492: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn492]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00085_n22_β
 jmp xchain00085_n35_α
 xchain00085_n34_β:
 jmp xchain00085_n22_β
 xchain00085_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn494: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn494]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00085_n22_β
 jmp xchain00085_n22_β
 xchain00085_n35_β:
 jmp xchain00085_n22_β
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Collections___ω:
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
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
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
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Regions___α_body:
# IR_VAR_REF
 xchain00096_n0_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00096_n1_α
 xchain00096_n0_β:
 jmp xchain00096_n3_α
# IR_NULLTEST_VAR
 xchain00096_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00096_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00096_n3_α
 cmp eax, 0
 jne xchain00096_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00096_n2_α
 xchain00096_n1_β:
 jmp xchain00096_n3_α
# IR_LIT_INTEGER
 xchain00096_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00097_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00096_n4_α
 xchain00096_n2_β:
 jmp xchain00096_n3_α
.Lx00097_0:
 .quad 1
# IR_MAKE_LIST
 xchain00096_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00096_n5_α
 xchain00096_n3_β:
 jmp xchain00096_n7_α
# IR_ASSIGN_VAR
 xchain00096_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00096_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00096_n6_α
 xchain00096_n4_β:
 jmp xchain00096_n3_α
 xchain00096_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00096_n7_α
 xchain00096_n5_β:
 jmp xchain00096_n7_α
# IR_LIT_STRING
 xchain00096_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00096_n8_α
 xchain00096_n6_β:
 jmp xchain00096_n3_α
.Lx00098_0:
 .quad .Lx00098_0_s
.Lx00098_0_s:
 .string "static"
# IR_VAR
 xchain00096_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00096_n9_α
 xchain00096_n7_β:
 jmp xchain00096_n10_α
# IR_LIT_STRING
 xchain00096_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00096_n11_α
 xchain00096_n8_β:
 jmp xchain00096_n3_α
.Lx00099_0:
 .quad .Lx00099_0_s
.Lx00099_0_s:
 .string "string"
# KEYWORD_gen
 xchain00096_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00100_1:
 mov rdi, qword ptr [rip + .Lx00100_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00096_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00096_n12_α
 xchain00096_n9_β:
 jmp .Lx00100_1
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00096_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00101_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00096_n13_α
 xchain00096_n10_β:
 jmp xchain00096_n15_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00096_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00102_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00096_n14_α
 xchain00096_n11_β:
 jmp xchain00096_n3_α
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "block"
 xchain00096_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn512: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn512]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00096_n10_α
 jmp xchain00096_n9_β
 xchain00096_n12_β:
 jmp xchain00096_n10_α
 xchain00096_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn514: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn514]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00096_n15_α
 jmp xchain00096_n15_α
 xchain00096_n13_β:
 jmp xchain00096_n15_α
# IR_MAKE_LIST
 xchain00096_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00096_n16_α
 xchain00096_n14_β:
 jmp xchain00096_n3_α
# IR_LIT_INTEGER
 xchain00096_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00103_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00096_n17_α
 xchain00096_n15_β:
 jmp xchain00096_n20_α
.Lx00103_0:
 .quad 1
# IR_ASSIGN gva
 xchain00096_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 320], rax
 mov qword ptr [rbx + 328], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00096_n18_α
 xchain00096_n16_β:
 jmp xchain00096_n3_α
# IR_VAR
 xchain00096_n17_α:
 mov rax, qword ptr [rbx + 320]
 mov rdx, qword ptr [rbx + 328]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00096_n19_α
 xchain00096_n17_β:
 jmp xchain00096_n20_α
# IR_MOVE_LABEL
 xchain00096_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00096_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00096_n3_α
 xchain00096_n18_β:
 jmp xchain00096_n3_α
# IR_UNOP
 xchain00096_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00096_n22_α
 xchain00096_n19_β:
 jmp xchain00096_n20_α
# IR_RETURN
 xchain00096_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00096_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00096_n21_β:
 jmp xchain00096_n3_α
# IR_TO
 xchain00096_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00104_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00096_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00096_n23_α
 xchain00096_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00104_0
 xchain00096_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00096_n24_α
 xchain00096_n23_β:
 jmp xchain00096_n20_α
# IR_VAR_REF
 xchain00096_n24_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00096_n25_α
 xchain00096_n24_β:
 jmp xchain00096_n22_β
# IR_VAR
 xchain00096_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00096_n26_α
 xchain00096_n25_β:
 jmp xchain00096_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00096_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00096_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00096_n27_α
 xchain00096_n26_β:
 jmp xchain00096_n22_β
# IR_DEREF variable -> value
 xchain00096_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00096_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00096_n28_α
 xchain00096_n27_β:
 jmp xchain00096_n22_β
# IR_VAR_REF
 xchain00096_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00096_n29_α
 xchain00096_n28_β:
 jmp xchain00096_n22_β
# IR_VAR
 xchain00096_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00096_n30_α
 xchain00096_n29_β:
 jmp xchain00096_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00096_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00096_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00096_n31_α
 xchain00096_n30_β:
 jmp xchain00096_n22_β
# IR_DEREF variable -> value
 xchain00096_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00096_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00096_n32_α
 xchain00096_n31_β:
 jmp xchain00096_n22_β
# IR_LIT_INTEGER
 xchain00096_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00096_n33_α
 xchain00096_n32_β:
 jmp xchain00096_n22_β
.Lx00105_0:
 .quad 8
 xchain00096_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn543: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn543]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00096_n22_β
 jmp xchain00096_n34_α
 xchain00096_n33_β:
 jmp xchain00096_n22_β
 xchain00096_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn545: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn545]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00096_n22_β
 jmp xchain00096_n22_β
 xchain00096_n34_β:
 jmp xchain00096_n22_β
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Regions___ω:
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
  .globl proc_Signature___α
proc_Signature___α:
#=======================================================================================================================
    .global proc_Signature___α
    .global proc_Signature___β
    .global proc_Signature___γ
    .global proc_Signature___ω
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_Signature___α_body:
# KEYWORD_read
 xchain00106_n0_α:
 mov rdi, qword ptr [rip + .Lx00107_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00106_n1_α
 xchain00106_n0_β:
 jmp xchain00106_n2_α
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "&version"
 xchain00106_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn549: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn549]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00106_n2_α
 jmp xchain00106_n2_α
 xchain00106_n1_β:
 jmp xchain00106_n2_α
# KEYWORD_read
 xchain00106_n2_α:
 mov rdi, qword ptr [rip + .Lx00108_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00106_n3_α
 xchain00106_n2_β:
 jmp xchain00106_n4_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "&host"
 xchain00106_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn552: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn552]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00106_n4_α
 jmp xchain00106_n4_α
 xchain00106_n3_β:
 jmp xchain00106_n4_α
# KEYWORD_gen
 xchain00106_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00109_1:
 mov rdi, qword ptr [rip + .Lx00109_0]
 mov rsi, qword ptr [r12 + 64]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00106_n6_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain00106_n5_α
 xchain00106_n4_β:
 jmp .Lx00109_1
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "&features"
 xchain00106_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn555: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn555]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00106_n6_α
 jmp xchain00106_n4_β
 xchain00106_n5_β:
 jmp xchain00106_n6_α
# IR_RETURN
 xchain00106_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Signature___γ
proc_Signature___β:
jmp proc_Signature___ω
proc_Signature___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Signature___ω:
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
  .globl proc_Storage___α
proc_Storage___α:
#=======================================================================================================================
    .global proc_Storage___α
    .global proc_Storage___β
    .global proc_Storage___γ
    .global proc_Storage___ω
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
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Storage___α_body:
# IR_VAR_REF
 xchain00110_n0_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00110_n1_α
 xchain00110_n0_β:
 jmp xchain00110_n3_α
# IR_NULLTEST_VAR
 xchain00110_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00110_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00110_n3_α
 cmp eax, 0
 jne xchain00110_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00110_n2_α
 xchain00110_n1_β:
 jmp xchain00110_n3_α
# IR_LIT_INTEGER
 xchain00110_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00111_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00110_n4_α
 xchain00110_n2_β:
 jmp xchain00110_n3_α
.Lx00111_0:
 .quad 1
# IR_MAKE_LIST
 xchain00110_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00110_n5_α
 xchain00110_n3_β:
 jmp xchain00110_n7_α
# IR_ASSIGN_VAR
 xchain00110_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00110_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00110_n6_α
 xchain00110_n4_β:
 jmp xchain00110_n3_α
 xchain00110_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00110_n7_α
 xchain00110_n5_β:
 jmp xchain00110_n7_α
# IR_LIT_STRING
 xchain00110_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00110_n8_α
 xchain00110_n6_β:
 jmp xchain00110_n3_α
.Lx00112_0:
 .quad .Lx00112_0_s
.Lx00112_0_s:
 .string "static"
# IR_VAR
 xchain00110_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00110_n9_α
 xchain00110_n7_β:
 jmp xchain00110_n10_α
# IR_LIT_STRING
 xchain00110_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00113_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00110_n11_α
 xchain00110_n8_β:
 jmp xchain00110_n3_α
.Lx00113_0:
 .quad .Lx00113_0_s
.Lx00113_0_s:
 .string "string"
# KEYWORD_gen
 xchain00110_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00114_1:
 mov rdi, qword ptr [rip + .Lx00114_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00110_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00110_n12_α
 xchain00110_n9_β:
 jmp .Lx00114_1
.Lx00114_0:
 .quad .Lx00114_0_s
.Lx00114_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00110_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00115_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00110_n13_α
 xchain00110_n10_β:
 jmp xchain00110_n15_α
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00110_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00116_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00110_n14_α
 xchain00110_n11_β:
 jmp xchain00110_n3_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "block"
 xchain00110_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn574: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn574]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00110_n10_α
 jmp xchain00110_n9_β
 xchain00110_n12_β:
 jmp xchain00110_n10_α
 xchain00110_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn576: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn576]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00110_n15_α
 jmp xchain00110_n15_α
 xchain00110_n13_β:
 jmp xchain00110_n15_α
# IR_MAKE_LIST
 xchain00110_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00110_n16_α
 xchain00110_n14_β:
 jmp xchain00110_n3_α
# IR_LIT_INTEGER
 xchain00110_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00117_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00110_n17_α
 xchain00110_n15_β:
 jmp xchain00110_n20_α
.Lx00117_0:
 .quad 1
# IR_ASSIGN gva
 xchain00110_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 352], rax
 mov qword ptr [rbx + 360], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00110_n18_α
 xchain00110_n16_β:
 jmp xchain00110_n3_α
# IR_VAR
 xchain00110_n17_α:
 mov rax, qword ptr [rbx + 352]
 mov rdx, qword ptr [rbx + 360]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00110_n19_α
 xchain00110_n17_β:
 jmp xchain00110_n20_α
# IR_MOVE_LABEL
 xchain00110_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00110_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00110_n3_α
 xchain00110_n18_β:
 jmp xchain00110_n3_α
# IR_UNOP
 xchain00110_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00110_n22_α
 xchain00110_n19_β:
 jmp xchain00110_n20_α
# IR_RETURN
 xchain00110_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00110_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00110_n21_β:
 jmp xchain00110_n3_α
# IR_TO
 xchain00110_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00118_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00110_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00110_n23_α
 xchain00110_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00118_0
 xchain00110_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00110_n24_α
 xchain00110_n23_β:
 jmp xchain00110_n20_α
# IR_VAR_REF
 xchain00110_n24_α:
 lea rdi, [rbx + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00110_n25_α
 xchain00110_n24_β:
 jmp xchain00110_n22_β
# IR_VAR
 xchain00110_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00110_n26_α
 xchain00110_n25_β:
 jmp xchain00110_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00110_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00110_n27_α
 xchain00110_n26_β:
 jmp xchain00110_n22_β
# IR_DEREF variable -> value
 xchain00110_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00110_n28_α
 xchain00110_n27_β:
 jmp xchain00110_n22_β
# IR_VAR_REF
 xchain00110_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00110_n29_α
 xchain00110_n28_β:
 jmp xchain00110_n22_β
# IR_VAR
 xchain00110_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00110_n30_α
 xchain00110_n29_β:
 jmp xchain00110_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00110_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00110_n31_α
 xchain00110_n30_β:
 jmp xchain00110_n22_β
# IR_DEREF variable -> value
 xchain00110_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00110_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00110_n32_α
 xchain00110_n31_β:
 jmp xchain00110_n22_β
# IR_LIT_INTEGER
 xchain00110_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00119_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00110_n33_α
 xchain00110_n32_β:
 jmp xchain00110_n22_β
.Lx00119_0:
 .quad 8
 xchain00110_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn605: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn605]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00110_n22_β
 jmp xchain00110_n34_α
 xchain00110_n33_β:
 jmp xchain00110_n22_β
 xchain00110_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn607: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn607]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00110_n22_β
 jmp xchain00110_n22_β
 xchain00110_n34_β:
 jmp xchain00110_n22_β
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Storage___ω:
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
  .globl proc_Time___α
proc_Time___α:
#=======================================================================================================================
    .global proc_Time___α
    .global proc_Time___β
    .global proc_Time___γ
    .global proc_Time___ω
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
proc_Time___α_body:
# IR_VAR_REF
 xchain00120_n0_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00120_n1_α
 xchain00120_n0_β:
 jmp xchain00120_n3_α
# IR_NULLTEST_VAR
 xchain00120_n1_α:
 mov eax, dword ptr [r12 + 192]
 cmp eax, 99
 je xchain00120_n3_α
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n3_α
 cmp eax, 0
 jne xchain00120_n3_α
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 216], rax
 jmp xchain00120_n2_α
 xchain00120_n1_β:
 jmp xchain00120_n3_α
# IR_LIT_INTEGER
 xchain00120_n2_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00120_n4_α
 xchain00120_n2_β:
 jmp xchain00120_n3_α
.Lx00121_0:
 .quad 1
# KEYWORD_read
 xchain00120_n3_α:
 mov rdi, qword ptr [rip + .Lx00122_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00120_n5_α
 xchain00120_n3_β:
 jmp proc_Time___ω
.Lx00122_0:
 .quad .Lx00122_0_s
.Lx00122_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00120_n4_α:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00120_n3_α
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00120_n6_α
 xchain00120_n4_β:
 jmp xchain00120_n3_α
# IR_VAR
 xchain00120_n5_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00120_n7_α
 xchain00120_n5_β:
 jmp proc_Time___ω
# KEYWORD_read
 xchain00120_n6_α:
 mov rdi, qword ptr [rip + .Lx00123_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00120_n8_α
 xchain00120_n6_β:
 jmp xchain00120_n3_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "&time"
# IR_COERCE_NUMERIC
 xchain00120_n7_α:
 mov eax, dword ptr [r12 + 64]
 cmp eax, 7
 je .Lx00124_1
 cmp eax, 6
 jne .Lx00124_0
 mov eax, dword ptr [r12 + 96]
 cmp eax, 6
 jne .Lx00124_0
.Lx00124_1:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 56], rax
 jmp .Lx00124_2
.Lx00124_0:
 lea rdi, [r12 + 64]
 lea rsi, [r12 + 96]
 lea rdx, [r12 + 48]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00124_2:
 jmp xchain00120_n9_α
 xchain00120_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00120_n8_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [rbx + 384], rax
 mov qword ptr [rbx + 392], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00120_n10_α
 xchain00120_n8_β:
 jmp xchain00120_n3_α
# IR_COERCE_NUMERIC
 xchain00120_n9_α:
 mov eax, dword ptr [r12 + 96]
 cmp eax, 7
 je .Lx00125_1
 cmp eax, 6
 jne .Lx00125_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00125_0
.Lx00125_1:
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 40], rax
 jmp .Lx00125_2
.Lx00125_0:
 lea rdi, [r12 + 96]
 lea rsi, [r12 + 64]
 lea rdx, [r12 + 32]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00125_2:
 jmp xchain00120_n11_α
 xchain00120_n9_β:
 jmp proc_Time___ω
# IR_MOVE_LABEL
 xchain00120_n10_α:
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 120], rax
 lea rax, [rip + xchain00120_n3_α]
 mov qword ptr [r12 + 128], rax
 jmp xchain00120_n3_α
 xchain00120_n10_β:
 jmp xchain00120_n3_α
 xchain00120_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 48]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [r12 + 48]
 cmp eax, 6
 jne .Lx00126_2
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00126_2
.Lx00126_1:
 mov rax, qword ptr [r12 + 56]
 mov rcx, qword ptr [r12 + 40]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00120_n13_α
.Lx00126_0:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00126_3
.Lx00126_2:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00126_3:
 jmp xchain00120_n13_α
 xchain00120_n11_β:
 jmp proc_Time___ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00120_n12_α:
 jmp qword ptr [r12 + 128]
 xchain00120_n12_β:
 jmp xchain00120_n3_α
# IR_RETURN
 xchain00120_n13_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
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
proc_Time___ω:
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
  .globl proc_shuffle_α
proc_shuffle_α:
#=======================================================================================================================
    .global proc_shuffle_α
    .global proc_shuffle_β
    .global proc_shuffle_γ
    .global proc_shuffle_ω
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
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_shuffle_α_body:
# IR_VAR
 xchain00127_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00127_n1_α
 xchain00127_n0_β:
 jmp xchain00127_n2_α
 xchain00127_n1_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+176]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn632: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn632]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00127_n2_α
 jmp xchain00127_n3_α
 xchain00127_n1_β:
 jmp xchain00127_n2_α
# IR_VAR_REF
 xchain00127_n2_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00127_n4_α
 xchain00127_n2_β:
 jmp xchain00127_n8_α
 xchain00127_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00127_n2_α
 xchain00127_n3_β:
 jmp xchain00127_n2_α
# IR_LIST_BANG
 xchain00127_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00128_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 64]
 call rt_list_bang_var_at@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp rax, 99
 je xchain00127_n8_α
 jmp xchain00127_n5_α
 xchain00127_n4_β:
 inc qword ptr [r12 + 64]
 jmp .Lx00128_0
# IR_VAR_REF
 xchain00127_n5_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00127_n6_α
 xchain00127_n5_β:
 jmp xchain00127_n8_α
# IR_RANDOM
 xchain00127_n6_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00127_n8_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00127_n7_α
 xchain00127_n6_β:
 jmp xchain00127_n8_α
# IR_SWAP_VAR x:=:y through variables (canonical swap, oasgn.r:265)
 xchain00127_n7_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call rt_swap_var@PLT
 cmp eax, 99
 je xchain00127_n8_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00127_n4_β
 xchain00127_n7_β:
 jmp xchain00127_n8_α
# IR_VAR
 xchain00127_n8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 40], rax
 jmp xchain00127_n9_α
 xchain00127_n8_β:
 jmp proc_shuffle_ω
# IR_RETURN
 xchain00127_n9_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_shuffle_γ
proc_shuffle_β:
jmp proc_shuffle_ω
proc_shuffle_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_shuffle_ω:
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
  .Lstartup_pname0: .string "display"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_display_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1616
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "show"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_show_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1248
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "arrange"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_arrange_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "options"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_options_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2528
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname4: .string "Init__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_Init___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname5: .string "Term__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_Term___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname6: .string "Collections__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_Collections___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname7: .string "Regions__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_Regions___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname8: .string "Signature__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_Signature___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname9: .string "Storage__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_Storage___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname10: .string "Time__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_Time___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 272
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname11: .string "shuffle"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_shuffle_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "deck"
  .Lgvan1: .string "deckimage"
  .Lgvan2: .string "handsize"
  .Lgvan3: .string "suitsize"
  .Lgvan4: .string "denom"
  .Lgvan5: .string "rank"
  .Lgvan6: .string "blanker"
  .Lgvan7: .string "Save__"
  .Lgvan8: .string "Saves__"
  .Lgvan9: .string "Name__"
  .Lgvan10: .string "display__STATIC__bar"
  .Lgvan11: .string "display__STATIC__offset"
  .Lgvan12: .string "display__INITFLAG__0"
  .Lgvan13: .string "show__STATIC__clubmap"
  .Lgvan14: .string "show__STATIC__diamondmap"
  .Lgvan15: .string "show__STATIC__heartmap"
  .Lgvan16: .string "show__STATIC__spademap"
  .Lgvan17: .string "show__INITFLAG__0"
  .Lgvan18: .string "Collections____STATIC__labels"
  .Lgvan19: .string "Collections____INITFLAG__0"
  .Lgvan20: .string "Regions____STATIC__labels"
  .Lgvan21: .string "Regions____INITFLAG__0"
  .Lgvan22: .string "Storage____STATIC__labels"
  .Lgvan23: .string "Storage____INITFLAG__0"
  .Lgvan24: .string "Time____STATIC__lasttime"
  .Lgvan25: .string "Time____INITFLAG__0"
  .align 8
__gva_names:
  .quad .Lgvan0
  .quad .Lgvan1
  .quad .Lgvan2
  .quad .Lgvan3
  .quad .Lgvan4
  .quad .Lgvan5
  .quad .Lgvan6
  .quad .Lgvan7
  .quad .Lgvan8
  .quad .Lgvan9
  .quad .Lgvan10
  .quad .Lgvan11
  .quad .Lgvan12
  .quad .Lgvan13
  .quad .Lgvan14
  .quad .Lgvan15
  .quad .Lgvan16
  .quad .Lgvan17
  .quad .Lgvan18
  .quad .Lgvan19
  .quad .Lgvan20
  .quad .Lgvan21
  .quad .Lgvan22
  .quad .Lgvan23
  .quad .Lgvan24
  .quad .Lgvan25
  .section .bss
  .align 16
__gva: .space 416, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 26
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  mov rdi, qword ptr [rbp - 16]
  add rdi, 8
  mov esi, dword ptr [rbp - 8]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
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
 mov qword ptr [r12 + 928], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00129_n0_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx00130_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain00129_n1_α
 xchain00129_n0_β:
 jmp xchain00129_n2_α
.Lx00130_0:
 .quad .Lx00130_0_s
.Lx00130_0_s:
 .string "deal"
 xchain00129_n1_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00131_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00131_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00131_2
.Lx00131_1:
 call rt_faildescr@PLT
.Lx00131_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00129_n2_α
 jmp xchain00129_n2_α
 xchain00129_n1_β:
 jmp xchain00129_n2_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string "Init__"
# IR_LIT_CHARSET
 xchain00129_n2_α:
 mov qword ptr [r12 + 864], 1
 mov dword ptr [r12 + 868], -1
 mov rax, qword ptr [rip + .Lx00132_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain00129_n3_α
 xchain00129_n2_β:
 jmp xchain00129_n5_α
.Lx00132_0:
 .quad .Lx00132_0_s
.Lx00132_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00129_n3_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+848]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn651: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn651]
 lea rsi, [r12 + 848]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain00129_n5_α
 jmp xchain00129_n4_α
 xchain00129_n3_β:
 jmp xchain00129_n5_α
# IR_ASSIGN gva
 xchain00129_n4_α:
 mov rax, qword ptr [r12 + 832]
 mov rdx, qword ptr [r12 + 840]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00129_n6_α
 xchain00129_n4_β:
 jmp xchain00129_n5_α
# IR_VAR
 xchain00129_n5_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00129_n7_α
 xchain00129_n5_β:
 jmp xchain00129_n8_α
# IR_ASSIGN gva
 xchain00129_n6_α:
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00129_n5_α
 xchain00129_n6_β:
 jmp xchain00129_n5_α
# IR_UNOP
 xchain00129_n7_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_size_d@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00129_n9_α
 xchain00129_n7_β:
 jmp xchain00129_n8_α
# IR_LIT_STRING
 xchain00129_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00129_n10_α
 xchain00129_n8_β:
 jmp xchain00129_n12_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "AKQJT98765432"
# IR_LIT_INTEGER
 xchain00129_n9_α:
 mov qword ptr [r12 + 784], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain00129_n11_α
 xchain00129_n9_β:
 jmp xchain00129_n8_α
.Lx00134_0:
 .quad 4
# IR_ASSIGN gva
 xchain00129_n10_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00129_n12_α
 xchain00129_n10_β:
 jmp xchain00129_n12_α
# IR_COERCE_NUMERIC
 xchain00129_n11_α:
 mov eax, dword ptr [r12 + 752]
 cmp eax, 7
 je .Lx00135_1
 cmp eax, 6
 jne .Lx00135_0
 mov eax, dword ptr [r12 + 784]
 cmp eax, 6
 jne .Lx00135_0
.Lx00135_1:
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
 jmp .Lx00135_2
.Lx00135_0:
 lea rdi, [r12 + 752]
 lea rsi, [r12 + 784]
 lea rdx, [r12 + 736]
 mov rcx, 0
 call rt_coerce_num2_d@PLT
.Lx00135_2:
 jmp xchain00129_n13_α
 xchain00129_n11_β:
 jmp xchain00129_n8_α
# IR_LIT_STRING
 xchain00129_n12_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00129_n14_α
 xchain00129_n12_β:
 jmp xchain00129_n17_α
.Lx00136_0:
 .quad .Lx00136_0_s
.Lx00136_0_s:
 .string " "
 xchain00129_n13_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00137_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00137_2
.Lx00137_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, 4
 cqo
 idiv rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00129_n15_α
.Lx00137_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 3
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00137_3
.Lx00137_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 784]
 mov rcx, qword ptr [r12 + 792]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00129_n8_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx00137_3:
 jmp xchain00129_n15_α
 xchain00129_n13_β:
 jmp xchain00129_n8_α
# IR_VAR
 xchain00129_n14_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00129_n16_α
 xchain00129_n14_β:
 jmp xchain00129_n17_α
# IR_ASSIGN gva
 xchain00129_n15_α:
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00129_n18_α
 xchain00129_n15_β:
 jmp xchain00129_n8_α
 xchain00129_n16_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn666: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn666]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00129_n17_α
 jmp xchain00129_n19_α
 xchain00129_n16_β:
 jmp xchain00129_n17_α
# IR_LIT_CHARSET
 xchain00129_n17_α:
 mov qword ptr [r12 + 496], 1
 mov dword ptr [r12 + 500], -1
 mov rax, qword ptr [rip + .Lx00138_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00129_n20_α
 xchain00129_n17_β:
 jmp xchain00129_n23_α
.Lx00138_0:
 .quad .Lx00138_0_s
.Lx00138_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_ASSIGN gva
 xchain00129_n18_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00129_n8_α
 xchain00129_n18_β:
 jmp xchain00129_n8_α
# IR_ASSIGN gva
 xchain00129_n19_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00129_n17_α
 xchain00129_n19_β:
 jmp xchain00129_n17_α
# IR_LIT_INTEGER
 xchain00129_n20_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00139_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00129_n21_α
 xchain00129_n20_β:
 jmp xchain00129_n23_α
.Lx00139_0:
 .quad 1
# IR_VAR
 xchain00129_n21_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00129_n22_α
 xchain00129_n21_β:
 jmp xchain00129_n23_α
 xchain00129_n22_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00140_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00140_2
.Lx00140_1:
 mov rax, 1
 mov rcx, qword ptr [r12 + 536]
 add rax, rcx
 mov qword ptr [r12 + 544], 6
 mov qword ptr [r12 + 552], rax
 jmp xchain00129_n24_α
.Lx00140_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 lea r9, [r12 + 544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00140_3
.Lx00140_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00129_n23_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
.Lx00140_3:
 jmp xchain00129_n24_α
 xchain00129_n22_β:
 jmp xchain00129_n23_α
# IR_VAR
 xchain00129_n23_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
 jmp xchain00129_n25_α
 xchain00129_n23_β:
 jmp xchain00129_n26_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00129_n24_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [r12 + 544]
 mov r9, qword ptr [r12 + 552]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00129_n23_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00129_n27_α
 xchain00129_n24_β:
 jmp xchain00129_n23_α
# IR_LIT_STRING
 xchain00129_n25_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00141_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00129_n28_α
 xchain00129_n25_β:
 jmp xchain00129_n26_α
.Lx00141_0:
 .quad .Lx00141_0_s
.Lx00141_0_s:
 .string "h+s+"
# IR_VAR_REF
 xchain00129_n26_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00129_n29_α
 xchain00129_n26_β:
 jmp xchain00129_n33_α
# IR_ASSIGN gva
 xchain00129_n27_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00129_n23_α
 xchain00129_n27_β:
 jmp xchain00129_n23_α
 xchain00129_n28_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov edi, 0
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx00142_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00142_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00142_2
.Lx00142_1:
 call rt_faildescr@PLT
.Lx00142_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00129_n26_α
 jmp xchain00129_n30_α
 xchain00129_n28_β:
 jmp xchain00129_n26_α
.Lx00142_0:
 .quad .Lx00142_0_s
.Lx00142_0_s:
 .string "options"
# IR_LIT_STRING
 xchain00129_n29_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00143_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00129_n31_α
 xchain00129_n29_β:
 jmp xchain00129_n33_α
.Lx00143_0:
 .quad .Lx00143_0_s
.Lx00143_0_s:
 .string "h"
 xchain00129_n30_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00129_n26_α
 xchain00129_n30_β:
 jmp xchain00129_n26_α
# IR_SUBSCRIPT x[i] variable
 xchain00129_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00129_n33_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00129_n32_α
 xchain00129_n31_β:
 jmp xchain00129_n33_α
# IR_DEREF variable -> value
 xchain00129_n32_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00129_n33_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00129_n34_α
 xchain00129_n32_β:
 jmp xchain00129_n33_α
# IR_LIT_INTEGER
 xchain00129_n33_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00144_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00129_n35_α
 xchain00129_n33_β:
 jmp xchain00129_n38_α
.Lx00144_0:
 .quad 1
# IR_UNOP
 xchain00129_n34_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00129_n33_α
 cmp eax, 0
 je xchain00129_n33_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
 jmp xchain00129_n36_α
 xchain00129_n34_β:
 jmp xchain00129_n33_α
# IR_MOVE_LABEL
 xchain00129_n35_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00129_n38_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00129_n37_α
 xchain00129_n35_β:
 jmp xchain00129_n38_α
# IR_MOVE_LABEL
 xchain00129_n36_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00129_n33_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00129_n37_α
 xchain00129_n36_β:
 jmp xchain00129_n38_α
 xchain00129_n37_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00129_n38_α
 xchain00129_n37_β:
 jmp xchain00129_n38_α
# IR_VAR_REF
 xchain00129_n38_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00129_n40_α
 xchain00129_n38_β:
 jmp xchain00129_n43_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00129_n39_α:
 jmp qword ptr [r12 + 256]
 xchain00129_n39_β:
 jmp xchain00129_n38_α
# IR_LIT_STRING
 xchain00129_n40_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00145_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00129_n41_α
 xchain00129_n40_β:
 jmp xchain00129_n43_α
.Lx00145_0:
 .quad .Lx00145_0_s
.Lx00145_0_s:
 .string "s"
# IR_SUBSCRIPT x[i] variable
 xchain00129_n41_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00129_n43_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00129_n42_α
 xchain00129_n41_β:
 jmp xchain00129_n43_α
# IR_DEREF variable -> value
 xchain00129_n42_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00129_n43_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00129_n44_α
 xchain00129_n42_β:
 jmp xchain00129_n43_α
# IR_LIT_INTEGER
 xchain00129_n43_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00146_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00129_n45_α
 xchain00129_n43_β:
 jmp xchain00129_n48_α
.Lx00146_0:
 .quad 1
# IR_UNOP
 xchain00129_n44_α:
 mov eax, dword ptr [r12 + 208]
 cmp eax, 99
 je xchain00129_n43_α
 cmp eax, 0
 je xchain00129_n43_α
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 152], rax
 jmp xchain00129_n46_α
 xchain00129_n44_β:
 jmp xchain00129_n43_α
# IR_VAR
 xchain00129_n45_α:
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 104], rax
 jmp xchain00129_n47_α
 xchain00129_n45_β:
 jmp xchain00129_n48_α
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
 xchain00129_n46_α:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00129_n43_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00129_n43_α
 xchain00129_n46_β:
 jmp xchain00129_n43_α
# IR_TO
 xchain00129_n47_α:
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 64], rax
.Lx00147_0:
 mov rax, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00129_n48_α
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00129_n49_α
 xchain00129_n47_β:
 inc qword ptr [r12 + 64]
 jmp .Lx00147_0
 xchain00129_n48_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00148_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00148_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00148_2
.Lx00148_1:
 call rt_faildescr@PLT
.Lx00148_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain00129_n48_β:
 jmp main_ω
.Lx00148_0:
 .quad .Lx00148_0_s
.Lx00148_0_s:
 .string "Term__"
 xchain00129_n49_α:
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [rip + .Lx00149_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx00149_1
 sub rsp, rax
 mov rdi, rsp
 mov rsi, rax
 call rt_frame_prep@PLT
 mov rdi, rsp
 xor esi, esi
 call rax
 mov rdi, rax
 mov rsi, rdx
 call rt_proc_call_epilogue@PLT
 jmp .Lx00149_2
.Lx00149_1:
 call rt_faildescr@PLT
.Lx00149_2:
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00129_n47_β
 jmp xchain00129_n47_β
 xchain00129_n49_β:
 jmp xchain00129_n47_β
.Lx00149_0:
 .quad .Lx00149_0_s
.Lx00149_0_s:
 .string "display"
main_β:
jmp main_ω
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
 mov rdi, qword ptr [r12 + 928]
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
