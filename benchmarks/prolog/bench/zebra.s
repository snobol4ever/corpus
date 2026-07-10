  .intel_syntax noprefix
  .text
  .globl proc_zebra$1_α
proc_zebra$1_α:
#=======================================================================================================================
    .global proc_zebra$1_α
    .global proc_zebra$1_β
    .global proc_zebra$1_γ
    .global proc_zebra$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_zebra$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 6304], rax
 pop rsi
proc_zebra$1_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6272], rax
 mov qword ptr [r12 + 6280], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6288], rax
 mov qword ptr [r12 + 6296], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6272] -> [zr+6240]
 mov rax, qword ptr [r12 + 6272]
 mov qword ptr [r12 + 6240], rax
 mov rax, qword ptr [r12 + 6280]
 mov qword ptr [r12 + 6248], rax
# marshal arg1 = producer-box slot [zr+6288] -> [zr+6256]
 mov rax, qword ptr [r12 + 6288]
 mov qword ptr [r12 + 6256], rax
 mov rax, qword ptr [r12 + 6296]
 mov qword ptr [r12 + 6264], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 6240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6224], rax
 mov qword ptr [r12 + 6232], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp proc_zebra$1_ω
 xchain0_n5_β:
 jmp proc_zebra$1_ω
 xchain0_n6_α:
  .section .rodata
  .Lcall7_pname: .string "houses/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6208]
 mov rdx, qword ptr [r12 + 6216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall7_pname]
 mov esi, 1
 lea rdx, [r12 + 6192]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n7_α
xchain0_n6_β:
 lea rdi, [r12 + 6192]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 6160], rax
 mov qword ptr [r12 + 6168], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 6128], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [r12 + 6136], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_zebra$1_ω
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [r12 + 5936], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 5944], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_zebra$1_ω
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "red"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [r12 + 5952], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 5960], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_zebra$1_ω
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "english"
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [r12 + 7520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5968], rax
 mov qword ptr [r12 + 5976], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [r12 + 7536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [r12 + 7552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_zebra$1_ω
 xchain0_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6128] -> [zr+6032]
 mov rax, qword ptr [r12 + 6128]
 mov qword ptr [r12 + 6032], rax
 mov rax, qword ptr [r12 + 6136]
 mov qword ptr [r12 + 6040], rax
# marshal arg1 = producer-box slot [zr+5936] -> [zr+6048]
 mov rax, qword ptr [r12 + 5936]
 mov qword ptr [r12 + 6048], rax
 mov rax, qword ptr [r12 + 5944]
 mov qword ptr [r12 + 6056], rax
# marshal arg2 = producer-box slot [zr+5952] -> [zr+6064]
 mov rax, qword ptr [r12 + 5952]
 mov qword ptr [r12 + 6064], rax
 mov rax, qword ptr [r12 + 5960]
 mov qword ptr [r12 + 6072], rax
# marshal arg3 = producer-box slot [zr+5968] -> [zr+6080]
 mov rax, qword ptr [r12 + 5968]
 mov qword ptr [r12 + 6080], rax
 mov rax, qword ptr [r12 + 5976]
 mov qword ptr [r12 + 6088], rax
# marshal arg4 = producer-box slot [zr+5984] -> [zr+6096]
 mov rax, qword ptr [r12 + 5984]
 mov qword ptr [r12 + 6096], rax
 mov rax, qword ptr [r12 + 5992]
 mov qword ptr [r12 + 6104], rax
# marshal arg5 = producer-box slot [zr+6000] -> [zr+6112]
 mov rax, qword ptr [r12 + 6000]
 mov qword ptr [r12 + 6112], rax
 mov rax, qword ptr [r12 + 6008]
 mov qword ptr [r12 + 6120], rax
  .section .rodata
  .Lrkfn24: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 6032]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n5_α
 xchain0_n15_α:
  .section .rodata
  .Lcall16_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 6016]
 mov rdx, qword ptr [r12 + 6024]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 6144]
 mov rdx, qword ptr [r12 + 6152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall16_pname]
 mov esi, 2
 lea rdx, [r12 + 5920]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5872], rax
 mov qword ptr [r12 + 5880], rdx
 cmp eax, 99
 je xchain0_n6_β
 jmp xchain0_n16_α
xchain0_n15_β:
 lea rdi, [r12 + 5920]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 5872], rax
 mov qword ptr [r12 + 5880], rdx
 cmp eax, 99
 je xchain0_n6_β
 jmp xchain0_n16_α
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [r12 + 5840], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [r12 + 5848], rax
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_zebra$1_ω
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [r12 + 7472]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5648], rax
 mov qword ptr [r12 + 5656], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [r12 + 5664], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 5672], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_zebra$1_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "spanish"
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [r12 + 5680], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 5688], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_zebra$1_ω
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "dog"
# IR_VAR_REF
 xchain0_n20_α:
 lea rdi, [r12 + 7488]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [r12 + 7504]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_zebra$1_ω
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5840] -> [zr+5744]
 mov rax, qword ptr [r12 + 5840]
 mov qword ptr [r12 + 5744], rax
 mov rax, qword ptr [r12 + 5848]
 mov qword ptr [r12 + 5752], rax
# marshal arg1 = producer-box slot [zr+5648] -> [zr+5760]
 mov rax, qword ptr [r12 + 5648]
 mov qword ptr [r12 + 5760], rax
 mov rax, qword ptr [r12 + 5656]
 mov qword ptr [r12 + 5768], rax
# marshal arg2 = producer-box slot [zr+5664] -> [zr+5776]
 mov rax, qword ptr [r12 + 5664]
 mov qword ptr [r12 + 5776], rax
 mov rax, qword ptr [r12 + 5672]
 mov qword ptr [r12 + 5784], rax
# marshal arg3 = producer-box slot [zr+5680] -> [zr+5792]
 mov rax, qword ptr [r12 + 5680]
 mov qword ptr [r12 + 5792], rax
 mov rax, qword ptr [r12 + 5688]
 mov qword ptr [r12 + 5800], rax
# marshal arg4 = producer-box slot [zr+5696] -> [zr+5808]
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5808], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5816], rax
# marshal arg5 = producer-box slot [zr+5712] -> [zr+5824]
 mov rax, qword ptr [r12 + 5712]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 5720]
 mov qword ptr [r12 + 5832], rax
  .section .rodata
  .Lrkfn38: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 5744]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5728], rax
 mov qword ptr [r12 + 5736], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n23_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5856], rax
 mov qword ptr [r12 + 5864], rdx
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n5_α
 xchain0_n24_α:
  .section .rodata
  .Lcall25_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5728]
 mov rdx, qword ptr [r12 + 5736]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5856]
 mov rdx, qword ptr [r12 + 5864]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall25_pname]
 mov esi, 2
 lea rdx, [r12 + 5632]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5584], rax
 mov qword ptr [r12 + 5592], rdx
 cmp eax, 99
 je xchain0_n15_β
 jmp xchain0_n25_α
xchain0_n24_β:
 lea rdi, [r12 + 5632]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 5584], rax
 mov qword ptr [r12 + 5592], rdx
 cmp eax, 99
 je xchain0_n15_β
 jmp xchain0_n25_α
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [r12 + 5552], 1
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [r12 + 5560], rax
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_zebra$1_ω
.Lx42_0:
 .quad .Lx42_0_s
.Lx42_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [r12 + 5360], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 5368], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_zebra$1_ω
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "green"
# IR_VAR_REF
 xchain0_n27_α:
 lea rdi, [r12 + 7424]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n28_α:
 lea rdi, [r12 + 7440]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n29_α:
 mov qword ptr [r12 + 5408], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 5416], rax
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp proc_zebra$1_ω
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "coffee"
# IR_VAR_REF
 xchain0_n30_α:
 lea rdi, [r12 + 7456]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp proc_zebra$1_ω
 xchain0_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5552] -> [zr+5456]
 mov rax, qword ptr [r12 + 5552]
 mov qword ptr [r12 + 5456], rax
 mov rax, qword ptr [r12 + 5560]
 mov qword ptr [r12 + 5464], rax
# marshal arg1 = producer-box slot [zr+5360] -> [zr+5472]
 mov rax, qword ptr [r12 + 5360]
 mov qword ptr [r12 + 5472], rax
 mov rax, qword ptr [r12 + 5368]
 mov qword ptr [r12 + 5480], rax
# marshal arg2 = producer-box slot [zr+5376] -> [zr+5488]
 mov rax, qword ptr [r12 + 5376]
 mov qword ptr [r12 + 5488], rax
 mov rax, qword ptr [r12 + 5384]
 mov qword ptr [r12 + 5496], rax
# marshal arg3 = producer-box slot [zr+5392] -> [zr+5504]
 mov rax, qword ptr [r12 + 5392]
 mov qword ptr [r12 + 5504], rax
 mov rax, qword ptr [r12 + 5400]
 mov qword ptr [r12 + 5512], rax
# marshal arg4 = producer-box slot [zr+5408] -> [zr+5520]
 mov rax, qword ptr [r12 + 5408]
 mov qword ptr [r12 + 5520], rax
 mov rax, qword ptr [r12 + 5416]
 mov qword ptr [r12 + 5528], rax
# marshal arg5 = producer-box slot [zr+5424] -> [zr+5536]
 mov rax, qword ptr [r12 + 5424]
 mov qword ptr [r12 + 5536], rax
 mov rax, qword ptr [r12 + 5432]
 mov qword ptr [r12 + 5544], rax
  .section .rodata
  .Lrkfn52: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 5456]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5440], rax
 mov qword ptr [r12 + 5448], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n32_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5568], rax
 mov qword ptr [r12 + 5576], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n5_α
 xchain0_n33_α:
  .section .rodata
  .Lcall34_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5440]
 mov rdx, qword ptr [r12 + 5448]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5568]
 mov rdx, qword ptr [r12 + 5576]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall34_pname]
 mov esi, 2
 lea rdx, [r12 + 5344]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 cmp eax, 99
 je xchain0_n24_β
 jmp xchain0_n34_α
xchain0_n33_β:
 lea rdi, [r12 + 5344]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 cmp eax, 99
 je xchain0_n24_β
 jmp xchain0_n34_α
# IR_LIT_STRING
 xchain0_n34_α:
 mov qword ptr [r12 + 5264], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [r12 + 5272], rax
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp proc_zebra$1_ω
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n35_α:
 lea rdi, [r12 + 7376]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n36_α:
 mov qword ptr [r12 + 5088], 1
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 5096], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp proc_zebra$1_ω
.Lx59_0:
 .quad .Lx59_0_s
.Lx59_0_s:
 .string "ukrainian"
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [r12 + 7392]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5104], rax
 mov qword ptr [r12 + 5112], rdx
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n38_α:
 mov qword ptr [r12 + 5120], 1
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 5128], rax
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp proc_zebra$1_ω
.Lx62_0:
 .quad .Lx62_0_s
.Lx62_0_s:
 .string "tea"
# IR_VAR_REF
 xchain0_n39_α:
 lea rdi, [r12 + 7408]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5136], rax
 mov qword ptr [r12 + 5144], rdx
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp proc_zebra$1_ω
 xchain0_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5264] -> [zr+5168]
 mov rax, qword ptr [r12 + 5264]
 mov qword ptr [r12 + 5168], rax
 mov rax, qword ptr [r12 + 5272]
 mov qword ptr [r12 + 5176], rax
# marshal arg1 = producer-box slot [zr+5072] -> [zr+5184]
 mov rax, qword ptr [r12 + 5072]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 5080]
 mov qword ptr [r12 + 5192], rax
# marshal arg2 = producer-box slot [zr+5088] -> [zr+5200]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5200], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5208], rax
# marshal arg3 = producer-box slot [zr+5104] -> [zr+5216]
 mov rax, qword ptr [r12 + 5104]
 mov qword ptr [r12 + 5216], rax
 mov rax, qword ptr [r12 + 5112]
 mov qword ptr [r12 + 5224], rax
# marshal arg4 = producer-box slot [zr+5120] -> [zr+5232]
 mov rax, qword ptr [r12 + 5120]
 mov qword ptr [r12 + 5232], rax
 mov rax, qword ptr [r12 + 5128]
 mov qword ptr [r12 + 5240], rax
# marshal arg5 = producer-box slot [zr+5136] -> [zr+5248]
 mov rax, qword ptr [r12 + 5136]
 mov qword ptr [r12 + 5248], rax
 mov rax, qword ptr [r12 + 5144]
 mov qword ptr [r12 + 5256], rax
  .section .rodata
  .Lrkfn66: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 5168]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5152], rax
 mov qword ptr [r12 + 5160], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n41_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n5_α
 xchain0_n42_α:
  .section .rodata
  .Lcall43_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 5152]
 mov rdx, qword ptr [r12 + 5160]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 5280]
 mov rdx, qword ptr [r12 + 5288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall43_pname]
 mov esi, 2
 lea rdx, [r12 + 5056]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 cmp eax, 99
 je xchain0_n33_β
 jmp xchain0_n43_α
xchain0_n42_β:
 lea rdi, [r12 + 5056]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 cmp eax, 99
 je xchain0_n33_β
 jmp xchain0_n43_α
# IR_LIT_STRING
 xchain0_n43_α:
 mov qword ptr [r12 + 4768], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 4776], rax
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp proc_zebra$1_ω
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n44_α:
 mov qword ptr [r12 + 4576], 1
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 4584], rax
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp proc_zebra$1_ω
.Lx71_0:
 .quad .Lx71_0_s
.Lx71_0_s:
 .string "green"
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [r12 + 7248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n46_α:
 lea rdi, [r12 + 7264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n47_α:
 lea rdi, [r12 + 7280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n48_α:
 lea rdi, [r12 + 7296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp proc_zebra$1_ω
 xchain0_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4768] -> [zr+4672]
 mov rax, qword ptr [r12 + 4768]
 mov qword ptr [r12 + 4672], rax
 mov rax, qword ptr [r12 + 4776]
 mov qword ptr [r12 + 4680], rax
# marshal arg1 = producer-box slot [zr+4576] -> [zr+4688]
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4584]
 mov qword ptr [r12 + 4696], rax
# marshal arg2 = producer-box slot [zr+4592] -> [zr+4704]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4704], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4712], rax
# marshal arg3 = producer-box slot [zr+4608] -> [zr+4720]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4728], rax
# marshal arg4 = producer-box slot [zr+4624] -> [zr+4736]
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4736], rax
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4744], rax
# marshal arg5 = producer-box slot [zr+4640] -> [zr+4752]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4760], rax
  .section .rodata
  .Lrkfn81: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 4672]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n50_α:
 mov qword ptr [r12 + 4976], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [r12 + 4984], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp proc_zebra$1_ω
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n51_α:
 mov qword ptr [r12 + 4784], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 4792], rax
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp proc_zebra$1_ω
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "ivory"
# IR_VAR_REF
 xchain0_n52_α:
 lea rdi, [r12 + 7312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n53_α:
 lea rdi, [r12 + 7328]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n54_α:
 lea rdi, [r12 + 7344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n55_α:
 lea rdi, [r12 + 7360]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4848], rax
 mov qword ptr [r12 + 4856], rdx
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp proc_zebra$1_ω
 xchain0_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4976] -> [zr+4880]
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 4888], rax
# marshal arg1 = producer-box slot [zr+4784] -> [zr+4896]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4896], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4904], rax
# marshal arg2 = producer-box slot [zr+4800] -> [zr+4912]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4912], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4920], rax
# marshal arg3 = producer-box slot [zr+4816] -> [zr+4928]
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4928], rax
 mov rax, qword ptr [r12 + 4824]
 mov qword ptr [r12 + 4936], rax
# marshal arg4 = producer-box slot [zr+4832] -> [zr+4944]
 mov rax, qword ptr [r12 + 4832]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4840]
 mov qword ptr [r12 + 4952], rax
# marshal arg5 = producer-box slot [zr+4848] -> [zr+4960]
 mov rax, qword ptr [r12 + 4848]
 mov qword ptr [r12 + 4960], rax
 mov rax, qword ptr [r12 + 4856]
 mov qword ptr [r12 + 4968], rax
  .section .rodata
  .Lrkfn93: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn93]
 lea rsi, [r12 + 4880]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n57_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n5_α
 xchain0_n58_α:
  .section .rodata
  .Lcall59_pname: .string "right_of/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4656]
 mov rdx, qword ptr [r12 + 4664]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4864]
 mov rdx, qword ptr [r12 + 4872]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4992]
 mov rdx, qword ptr [r12 + 5000]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall59_pname]
 mov esi, 3
 lea rdx, [r12 + 4560]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 cmp eax, 99
 je xchain0_n42_β
 jmp xchain0_n59_α
xchain0_n58_β:
 lea rdi, [r12 + 4560]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 cmp eax, 99
 je xchain0_n42_β
 jmp xchain0_n59_α
# IR_LIT_STRING
 xchain0_n59_α:
 mov qword ptr [r12 + 4464], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 4472], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp proc_zebra$1_ω
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n60_α:
 lea rdi, [r12 + 7200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n61_α:
 lea rdi, [r12 + 7216]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n62_α:
 mov qword ptr [r12 + 4304], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 4312], rax
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp proc_zebra$1_ω
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "snails"
# IR_VAR_REF
 xchain0_n63_α:
 lea rdi, [r12 + 7232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n64_α:
 mov qword ptr [r12 + 4336], 1
 mov rax, qword ptr [rip + .Lx105_0]
 mov qword ptr [r12 + 4344], rax
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp proc_zebra$1_ω
.Lx105_0:
 .quad .Lx105_0_s
.Lx105_0_s:
 .string "winstons"
 xchain0_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4464] -> [zr+4368]
 mov rax, qword ptr [r12 + 4464]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4472]
 mov qword ptr [r12 + 4376], rax
# marshal arg1 = producer-box slot [zr+4272] -> [zr+4384]
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 4392], rax
# marshal arg2 = producer-box slot [zr+4288] -> [zr+4400]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4400], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4408], rax
# marshal arg3 = producer-box slot [zr+4304] -> [zr+4416]
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4416], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4424], rax
# marshal arg4 = producer-box slot [zr+4320] -> [zr+4432]
 mov rax, qword ptr [r12 + 4320]
 mov qword ptr [r12 + 4432], rax
 mov rax, qword ptr [r12 + 4328]
 mov qword ptr [r12 + 4440], rax
# marshal arg5 = producer-box slot [zr+4336] -> [zr+4448]
 mov rax, qword ptr [r12 + 4336]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4344]
 mov qword ptr [r12 + 4456], rax
  .section .rodata
  .Lrkfn107: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn107]
 lea rsi, [r12 + 4368]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n66_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n5_α
 xchain0_n67_α:
  .section .rodata
  .Lcall68_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4352]
 mov rdx, qword ptr [r12 + 4360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4480]
 mov rdx, qword ptr [r12 + 4488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall68_pname]
 mov esi, 2
 lea rdx, [r12 + 4256]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 cmp eax, 99
 je xchain0_n58_β
 jmp xchain0_n68_α
xchain0_n67_β:
 lea rdi, [r12 + 4256]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 cmp eax, 99
 je xchain0_n58_β
 jmp xchain0_n68_α
# IR_LIT_STRING
 xchain0_n68_α:
 mov qword ptr [r12 + 4176], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [r12 + 4184], rax
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp proc_zebra$1_ω
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n69_α:
 mov qword ptr [r12 + 3984], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [r12 + 3992], rax
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp proc_zebra$1_ω
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "yellow"
# IR_VAR_REF
 xchain0_n70_α:
 lea rdi, [r12 + 7152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n71_α:
 lea rdi, [r12 + 7168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n72_α:
 lea rdi, [r12 + 7184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 jmp xchain0_n73_α
 xchain0_n72_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n73_α:
 mov qword ptr [r12 + 4048], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [r12 + 4056], rax
 jmp xchain0_n74_α
 xchain0_n73_β:
 jmp proc_zebra$1_ω
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "kools"
 xchain0_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4080]
 mov rax, qword ptr [r12 + 4176]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4184]
 mov qword ptr [r12 + 4088], rax
# marshal arg1 = producer-box slot [zr+3984] -> [zr+4096]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 4096], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 4104], rax
# marshal arg2 = producer-box slot [zr+4000] -> [zr+4112]
 mov rax, qword ptr [r12 + 4000]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4008]
 mov qword ptr [r12 + 4120], rax
# marshal arg3 = producer-box slot [zr+4016] -> [zr+4128]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 4128], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 4136], rax
# marshal arg4 = producer-box slot [zr+4032] -> [zr+4144]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4152], rax
# marshal arg5 = producer-box slot [zr+4048] -> [zr+4160]
 mov rax, qword ptr [r12 + 4048]
 mov qword ptr [r12 + 4160], rax
 mov rax, qword ptr [r12 + 4056]
 mov qword ptr [r12 + 4168], rax
  .section .rodata
  .Lrkfn121: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 4080]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n75_α
 xchain0_n74_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n75_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain0_n76_α
 xchain0_n75_β:
 jmp xchain0_n5_α
 xchain0_n76_α:
  .section .rodata
  .Lcall77_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4064]
 mov rdx, qword ptr [r12 + 4072]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 4192]
 mov rdx, qword ptr [r12 + 4200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 2
 lea rdx, [r12 + 3968]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 cmp eax, 99
 je xchain0_n67_β
 jmp xchain0_n77_α
xchain0_n76_β:
 lea rdi, [r12 + 3968]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 cmp eax, 99
 je xchain0_n67_β
 jmp xchain0_n77_α
# IR_VAR_REF
 xchain0_n77_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 jmp xchain0_n78_α
 xchain0_n77_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n78_α:
 mov qword ptr [r12 + 3904], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [r12 + 3912], rax
 jmp xchain0_n79_α
 xchain0_n78_β:
 jmp proc_zebra$1_ω
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n79_α:
 lea rdi, [r12 + 7136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain0_n80_α
 xchain0_n79_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n80_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp proc_zebra$1_ω
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n81_α:
 lea rdi, [r12 + 7120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain0_n82_α
 xchain0_n81_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n82_α:
 mov qword ptr [r12 + 3712], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [r12 + 3720], rax
 jmp xchain0_n83_α
 xchain0_n82_β:
 jmp proc_zebra$1_ω
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "."
# IR_LIT_STRING
 xchain0_n83_α:
 mov qword ptr [r12 + 3632], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 3640], rax
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp proc_zebra$1_ω
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n84_α:
 lea rdi, [r12 + 7056]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain0_n85_α
 xchain0_n84_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n85_α:
 lea rdi, [r12 + 7072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain0_n86_α
 xchain0_n85_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n86_α:
 lea rdi, [r12 + 7088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3472], rax
 mov qword ptr [r12 + 3480], rdx
 jmp xchain0_n87_α
 xchain0_n86_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n87_α:
 mov qword ptr [r12 + 3488], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 3496], rax
 jmp xchain0_n88_α
 xchain0_n87_β:
 jmp proc_zebra$1_ω
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "milk"
# IR_VAR_REF
 xchain0_n88_α:
 lea rdi, [r12 + 7104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain0_n89_α
 xchain0_n88_β:
 jmp proc_zebra$1_ω
 xchain0_n89_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3536]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3536], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3544], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3552]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3552], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3560], rax
# marshal arg2 = producer-box slot [zr+3456] -> [zr+3568]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3576], rax
# marshal arg3 = producer-box slot [zr+3472] -> [zr+3584]
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 3592], rax
# marshal arg4 = producer-box slot [zr+3488] -> [zr+3600]
 mov rax, qword ptr [r12 + 3488]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 3608], rax
# marshal arg5 = producer-box slot [zr+3504] -> [zr+3616]
 mov rax, qword ptr [r12 + 3504]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3512]
 mov qword ptr [r12 + 3624], rax
  .section .rodata
  .Lrkfn145: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn145]
 lea rsi, [r12 + 3536]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n90_α
 xchain0_n89_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n90_α:
 mov qword ptr [r12 + 3424], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 3432], rax
 jmp xchain0_n91_α
 xchain0_n90_β:
 jmp proc_zebra$1_ω
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n91_α:
 lea rdi, [r12 + 7040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3344], rax
 mov qword ptr [r12 + 3352], rdx
 jmp xchain0_n92_α
 xchain0_n91_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n92_α:
 mov qword ptr [r12 + 3328], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 3336], rax
 jmp xchain0_n93_α
 xchain0_n92_β:
 jmp proc_zebra$1_ω
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n93_α:
 lea rdi, [r12 + 7024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain0_n94_α
 xchain0_n93_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n94_α:
 mov qword ptr [r12 + 3232], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 3240], rax
 jmp xchain0_n95_α
 xchain0_n94_β:
 jmp proc_zebra$1_ω
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "[]"
 xchain0_n95_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3280]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3280], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3288], rax
# marshal arg1 = producer-box slot [zr+3248] -> [zr+3296]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3304], rax
# marshal arg2 = producer-box slot [zr+3232] -> [zr+3312]
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn154: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn154]
 lea rsi, [r12 + 3280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n96_α
 xchain0_n95_β:
 jmp proc_zebra$1_ω
 xchain0_n96_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3424] -> [zr+3376]
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 3384], rax
# marshal arg1 = producer-box slot [zr+3344] -> [zr+3392]
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 3400], rax
# marshal arg2 = producer-box slot [zr+3264] -> [zr+3408]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3416], rax
  .section .rodata
  .Lrkfn156: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 3376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n97_α
 xchain0_n96_β:
 jmp proc_zebra$1_ω
 xchain0_n97_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3712] -> [zr+3664]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3672], rax
# marshal arg1 = producer-box slot [zr+3520] -> [zr+3680]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3680], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3688], rax
# marshal arg2 = producer-box slot [zr+3360] -> [zr+3696]
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3704], rax
  .section .rodata
  .Lrkfn158: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 3664]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n98_α
 xchain0_n97_β:
 jmp proc_zebra$1_ω
 xchain0_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3808] -> [zr+3760]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3768], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3776]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3784], rax
# marshal arg2 = producer-box slot [zr+3648] -> [zr+3792]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3800], rax
  .section .rodata
  .Lrkfn160: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 3760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n99_α
 xchain0_n98_β:
 jmp proc_zebra$1_ω
 xchain0_n99_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3856]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3864], rax
# marshal arg1 = producer-box slot [zr+3824] -> [zr+3872]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3880], rax
# marshal arg2 = producer-box slot [zr+3744] -> [zr+3888]
 mov rax, qword ptr [r12 + 3744]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn162: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn162]
 lea rsi, [r12 + 3856]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n100_α
 xchain0_n99_β:
 jmp xchain0_n5_α
 xchain0_n100_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3216] -> [zr+3184]
 mov rax, qword ptr [r12 + 3216]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3224]
 mov qword ptr [r12 + 3192], rax
# marshal arg1 = producer-box slot [zr+3840] -> [zr+3200]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3208], rax
  .section .rodata
  .Lrkfn164: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn164]
 lea rsi, [r12 + 3184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n101_α
 xchain0_n100_β:
 jmp xchain0_n76_β
# IR_VAR_REF
 xchain0_n101_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2848], rax
 mov qword ptr [r12 + 2856], rdx
 jmp xchain0_n102_α
 xchain0_n101_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n102_α:
 mov qword ptr [r12 + 3152], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [r12 + 3160], rax
 jmp xchain0_n103_α
 xchain0_n102_β:
 jmp proc_zebra$1_ω
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "."
# IR_LIT_STRING
 xchain0_n103_α:
 mov qword ptr [r12 + 3072], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 3080], rax
 jmp xchain0_n104_α
 xchain0_n103_β:
 jmp proc_zebra$1_ω
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n104_α:
 lea rdi, [r12 + 6960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 jmp xchain0_n105_α
 xchain0_n104_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n105_α:
 mov qword ptr [r12 + 2896], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 2904], rax
 jmp xchain0_n106_α
 xchain0_n105_β:
 jmp proc_zebra$1_ω
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "norwegian"
# IR_VAR_REF
 xchain0_n106_α:
 lea rdi, [r12 + 6976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 jmp xchain0_n107_α
 xchain0_n106_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n107_α:
 lea rdi, [r12 + 6992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2928], rax
 mov qword ptr [r12 + 2936], rdx
 jmp xchain0_n108_α
 xchain0_n107_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n108_α:
 lea rdi, [r12 + 7008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2944], rax
 mov qword ptr [r12 + 2952], rdx
 jmp xchain0_n109_α
 xchain0_n108_β:
 jmp proc_zebra$1_ω
 xchain0_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+2976]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 2984], rax
# marshal arg1 = producer-box slot [zr+2880] -> [zr+2992]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 3000], rax
# marshal arg2 = producer-box slot [zr+2896] -> [zr+3008]
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 3016], rax
# marshal arg3 = producer-box slot [zr+2912] -> [zr+3024]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 3032], rax
# marshal arg4 = producer-box slot [zr+2928] -> [zr+3040]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 3048], rax
# marshal arg5 = producer-box slot [zr+2944] -> [zr+3056]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 3056], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 3064], rax
  .section .rodata
  .Lrkfn179: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 2976]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 cmp eax, 99
 je proc_zebra$1_ω
 jmp xchain0_n110_α
 xchain0_n109_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n110_α:
 lea rdi, [r12 + 6944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 jmp xchain0_n111_α
 xchain0_n110_β:
 jmp proc_zebra$1_ω
 xchain0_n111_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3152] -> [zr+3104]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3112], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+3120]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 3128], rax
# marshal arg2 = producer-box slot [zr+2864] -> [zr+3136]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 3136], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 3144], rax
  .section .rodata
  .Lrkfn183: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 3104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n112_α
 xchain0_n111_β:
 jmp xchain0_n5_α
 xchain0_n112_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2848] -> [zr+2816]
 mov rax, qword ptr [r12 + 2848]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 2856]
 mov qword ptr [r12 + 2824], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+2832]
 mov rax, qword ptr [r12 + 3088]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 3096]
 mov qword ptr [r12 + 2840], rax
  .section .rodata
  .Lrkfn185: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 2816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n113_α
 xchain0_n112_β:
 jmp xchain0_n76_β
# IR_LIT_STRING
 xchain0_n113_α:
 mov qword ptr [r12 + 2560], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain0_n114_α
 xchain0_n113_β:
 jmp proc_zebra$1_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n114_α:
 lea rdi, [r12 + 6816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain0_n115_α
 xchain0_n114_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n115_α:
 lea rdi, [r12 + 6832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain0_n116_α
 xchain0_n115_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n116_α:
 lea rdi, [r12 + 6848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain0_n117_α
 xchain0_n116_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n117_α:
 lea rdi, [r12 + 6864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain0_n118_α
 xchain0_n117_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n118_α:
 mov qword ptr [r12 + 2432], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [r12 + 2440], rax
 jmp xchain0_n119_α
 xchain0_n118_β:
 jmp proc_zebra$1_ω
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "chesterfields"
 xchain0_n119_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2464]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2472], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2480]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2480], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2488], rax
# marshal arg2 = producer-box slot [zr+2384] -> [zr+2496]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2504], rax
# marshal arg3 = producer-box slot [zr+2400] -> [zr+2512]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2520], rax
# marshal arg4 = producer-box slot [zr+2416] -> [zr+2528]
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2536], rax
# marshal arg5 = producer-box slot [zr+2432] -> [zr+2544]
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn197: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn197]
 lea rsi, [r12 + 2464]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n120_α
 xchain0_n119_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n120_α:
 mov qword ptr [r12 + 2768], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [r12 + 2776], rax
 jmp xchain0_n121_α
 xchain0_n120_β:
 jmp proc_zebra$1_ω
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n121_α:
 lea rdi, [r12 + 6880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 jmp xchain0_n122_α
 xchain0_n121_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n122_α:
 lea rdi, [r12 + 6896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 jmp xchain0_n123_α
 xchain0_n122_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n123_α:
 mov qword ptr [r12 + 2608], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [r12 + 2616], rax
 jmp xchain0_n124_α
 xchain0_n123_β:
 jmp proc_zebra$1_ω
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "fox"
# IR_VAR_REF
 xchain0_n124_α:
 lea rdi, [r12 + 6912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain0_n125_α
 xchain0_n124_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n125_α:
 lea rdi, [r12 + 6928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 jmp xchain0_n126_α
 xchain0_n125_β:
 jmp proc_zebra$1_ω
 xchain0_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2768] -> [zr+2672]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2680], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2688]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2696], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2704]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2712], rax
# marshal arg3 = producer-box slot [zr+2608] -> [zr+2720]
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2728], rax
# marshal arg4 = producer-box slot [zr+2624] -> [zr+2736]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2744], rax
# marshal arg5 = producer-box slot [zr+2640] -> [zr+2752]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2760], rax
  .section .rodata
  .Lrkfn209: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn209]
 lea rsi, [r12 + 2672]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2656], rax
 mov qword ptr [r12 + 2664], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n127_α
 xchain0_n126_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n127_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 jmp xchain0_n128_α
 xchain0_n127_β:
 jmp xchain0_n5_α
 xchain0_n128_α:
  .section .rodata
  .Lcall129_pname: .string "next_to/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2448]
 mov rdx, qword ptr [r12 + 2456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2656]
 mov rdx, qword ptr [r12 + 2664]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2784]
 mov rdx, qword ptr [r12 + 2792]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall129_pname]
 mov esi, 3
 lea rdx, [r12 + 2352]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n129_α
xchain0_n128_β:
 lea rdi, [r12 + 2352]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 cmp eax, 99
 je xchain0_n76_β
 jmp xchain0_n129_α
# IR_LIT_STRING
 xchain0_n129_α:
 mov qword ptr [r12 + 2048], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [r12 + 2056], rax
 jmp xchain0_n130_α
 xchain0_n129_β:
 jmp proc_zebra$1_ω
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n130_α:
 lea rdi, [r12 + 6688]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain0_n131_α
 xchain0_n130_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n131_α:
 lea rdi, [r12 + 6704]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain0_n132_α
 xchain0_n131_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n132_α:
 lea rdi, [r12 + 6720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain0_n133_α
 xchain0_n132_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n133_α:
 lea rdi, [r12 + 6736]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain0_n134_α
 xchain0_n133_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n134_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain0_n135_α
 xchain0_n134_β:
 jmp proc_zebra$1_ω
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "kools"
 xchain0_n135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+1952]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1968]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1976], rax
# marshal arg2 = producer-box slot [zr+1872] -> [zr+1984]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1992], rax
# marshal arg3 = producer-box slot [zr+1888] -> [zr+2000]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 2008], rax
# marshal arg4 = producer-box slot [zr+1904] -> [zr+2016]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 2024], rax
# marshal arg5 = producer-box slot [zr+1920] -> [zr+2032]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn224: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn224]
 lea rsi, [r12 + 1952]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n136_α
 xchain0_n135_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n136_α:
 mov qword ptr [r12 + 2256], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [r12 + 2264], rax
 jmp xchain0_n137_α
 xchain0_n136_β:
 jmp proc_zebra$1_ω
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n137_α:
 lea rdi, [r12 + 6752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain0_n138_α
 xchain0_n137_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n138_α:
 lea rdi, [r12 + 6768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain0_n139_α
 xchain0_n138_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n139_α:
 mov qword ptr [r12 + 2096], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain0_n140_α
 xchain0_n139_β:
 jmp proc_zebra$1_ω
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "horse"
# IR_VAR_REF
 xchain0_n140_α:
 lea rdi, [r12 + 6784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain0_n141_α
 xchain0_n140_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n141_α:
 lea rdi, [r12 + 6800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain0_n142_α
 xchain0_n141_β:
 jmp proc_zebra$1_ω
 xchain0_n142_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2160]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2168], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2176]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2176], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2184], rax
# marshal arg2 = producer-box slot [zr+2080] -> [zr+2192]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2200], rax
# marshal arg3 = producer-box slot [zr+2096] -> [zr+2208]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2216], rax
# marshal arg4 = producer-box slot [zr+2112] -> [zr+2224]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2232], rax
# marshal arg5 = producer-box slot [zr+2128] -> [zr+2240]
 mov rax, qword ptr [r12 + 2128]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2136]
 mov qword ptr [r12 + 2248], rax
  .section .rodata
  .Lrkfn236: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 2160]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n143_α
 xchain0_n142_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n143_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain0_n144_α
 xchain0_n143_β:
 jmp xchain0_n5_α
 xchain0_n144_α:
  .section .rodata
  .Lcall145_pname: .string "next_to/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1936]
 mov rdx, qword ptr [r12 + 1944]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2272]
 mov rdx, qword ptr [r12 + 2280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall145_pname]
 mov esi, 3
 lea rdx, [r12 + 1840]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain0_n128_β
 jmp xchain0_n145_α
xchain0_n144_β:
 lea rdi, [r12 + 1840]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain0_n128_β
 jmp xchain0_n145_α
# IR_LIT_STRING
 xchain0_n145_α:
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain0_n146_α
 xchain0_n145_β:
 jmp proc_zebra$1_ω
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n146_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain0_n147_α
 xchain0_n146_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n147_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain0_n148_α
 xchain0_n147_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n148_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain0_n149_α
 xchain0_n148_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n149_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain0_n150_α
 xchain0_n149_β:
 jmp proc_zebra$1_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "orange_juice"
# IR_LIT_STRING
 xchain0_n150_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain0_n151_α
 xchain0_n150_β:
 jmp proc_zebra$1_ω
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "lucky_strikes"
 xchain0_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1648]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1656], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1664]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1672], rax
# marshal arg2 = producer-box slot [zr+1568] -> [zr+1680]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1688], rax
# marshal arg3 = producer-box slot [zr+1584] -> [zr+1696]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1704], rax
# marshal arg4 = producer-box slot [zr+1600] -> [zr+1712]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1720], rax
# marshal arg5 = producer-box slot [zr+1616] -> [zr+1728]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1736], rax
  .section .rodata
  .Lrkfn250: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn250]
 lea rsi, [r12 + 1648]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n152_α
 xchain0_n151_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n152_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain0_n153_α
 xchain0_n152_β:
 jmp xchain0_n5_α
 xchain0_n153_α:
  .section .rodata
  .Lcall154_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1632]
 mov rdx, qword ptr [r12 + 1640]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall154_pname]
 mov esi, 2
 lea rdx, [r12 + 1536]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain0_n144_β
 jmp xchain0_n154_α
xchain0_n153_β:
 lea rdi, [r12 + 1536]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain0_n144_β
 jmp xchain0_n154_α
# IR_LIT_STRING
 xchain0_n154_α:
 mov qword ptr [r12 + 1456], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain0_n155_α
 xchain0_n154_β:
 jmp proc_zebra$1_ω
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n155_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain0_n156_α
 xchain0_n155_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n156_α:
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 1288], rax
 jmp xchain0_n157_α
 xchain0_n156_β:
 jmp proc_zebra$1_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "japanese"
# IR_VAR_REF
 xchain0_n157_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain0_n158_α
 xchain0_n157_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n158_α:
 lea rdi, [r12 + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain0_n159_α
 xchain0_n158_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n159_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain0_n160_α
 xchain0_n159_β:
 jmp proc_zebra$1_ω
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "parliaments"
 xchain0_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1360]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1376]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1384], rax
# marshal arg2 = producer-box slot [zr+1280] -> [zr+1392]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1400], rax
# marshal arg3 = producer-box slot [zr+1296] -> [zr+1408]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1416], rax
# marshal arg4 = producer-box slot [zr+1312] -> [zr+1424]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1432], rax
# marshal arg5 = producer-box slot [zr+1328] -> [zr+1440]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1448], rax
  .section .rodata
  .Lrkfn264: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn264]
 lea rsi, [r12 + 1360]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n161_α
 xchain0_n160_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n161_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain0_n162_α
 xchain0_n161_β:
 jmp xchain0_n5_α
 xchain0_n162_α:
  .section .rodata
  .Lcall163_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall163_pname]
 mov esi, 2
 lea rdx, [r12 + 1248]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain0_n153_β
 jmp xchain0_n163_α
xchain0_n162_β:
 lea rdi, [r12 + 1248]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain0_n153_β
 jmp xchain0_n163_α
# IR_LIT_STRING
 xchain0_n163_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n164_α
 xchain0_n163_β:
 jmp proc_zebra$1_ω
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n164_α:
 lea rdi, [r12 + 6464]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n165_α
 xchain0_n164_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n165_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n166_α
 xchain0_n165_β:
 jmp proc_zebra$1_ω
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "norwegian"
# IR_VAR_REF
 xchain0_n166_α:
 lea rdi, [r12 + 6480]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n167_α
 xchain0_n166_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n167_α:
 lea rdi, [r12 + 6496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n168_α
 xchain0_n167_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n168_α:
 lea rdi, [r12 + 6512]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n169_α
 xchain0_n168_β:
 jmp proc_zebra$1_ω
 xchain0_n169_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+864]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+880]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 888], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+896]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 904], rax
# marshal arg3 = producer-box slot [zr+800] -> [zr+912]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 920], rax
# marshal arg4 = producer-box slot [zr+816] -> [zr+928]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 936], rax
# marshal arg5 = producer-box slot [zr+832] -> [zr+944]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn279: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 864]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n170_α
 xchain0_n169_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n170_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain0_n171_α
 xchain0_n170_β:
 jmp proc_zebra$1_ω
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "house"
# IR_LIT_STRING
 xchain0_n171_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n172_α
 xchain0_n171_β:
 jmp proc_zebra$1_ω
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "blue"
# IR_VAR_REF
 xchain0_n172_α:
 lea rdi, [r12 + 6528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n173_α
 xchain0_n172_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n173_α:
 lea rdi, [r12 + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n174_α
 xchain0_n173_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n174_α:
 lea rdi, [r12 + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n175_α
 xchain0_n174_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n175_α:
 lea rdi, [r12 + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n176_α
 xchain0_n175_β:
 jmp proc_zebra$1_ω
 xchain0_n176_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1072]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1088]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1096], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1104]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 1112], rax
# marshal arg3 = producer-box slot [zr+1008] -> [zr+1120]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 1128], rax
# marshal arg4 = producer-box slot [zr+1024] -> [zr+1136]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1144], rax
# marshal arg5 = producer-box slot [zr+1040] -> [zr+1152]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn291: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn291]
 lea rsi, [r12 + 1072]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n177_α
 xchain0_n176_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n177_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n178_α
 xchain0_n177_β:
 jmp xchain0_n5_α
 xchain0_n178_α:
  .section .rodata
  .Lcall179_pname: .string "next_to/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall179_pname]
 mov esi, 3
 lea rdx, [r12 + 752]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n162_β
 jmp xchain0_n179_α
xchain0_n178_β:
 lea rdi, [r12 + 752]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n162_β
 jmp xchain0_n179_α
# IR_LIT_STRING
 xchain0_n179_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain0_n180_α
 xchain0_n179_β:
 jmp proc_zebra$1_ω
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n180_α:
 lea rdi, [r12 + 6400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n181_α
 xchain0_n180_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n181_α:
 lea rdi, [r12 + 6416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n182_α
 xchain0_n181_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n182_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n183_α
 xchain0_n182_β:
 jmp proc_zebra$1_ω
.Lx300_0:
 .quad .Lx300_0_s
.Lx300_0_s:
 .string "zebra"
# IR_VAR_REF
 xchain0_n183_α:
 lea rdi, [r12 + 6432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n184_α
 xchain0_n183_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n184_α:
 lea rdi, [r12 + 6448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n185_α
 xchain0_n184_β:
 jmp proc_zebra$1_ω
 xchain0_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+560]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+576]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 584], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+592]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 600], rax
# marshal arg3 = producer-box slot [zr+496] -> [zr+608]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 616], rax
# marshal arg4 = producer-box slot [zr+512] -> [zr+624]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 632], rax
# marshal arg5 = producer-box slot [zr+528] -> [zr+640]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn306: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn306]
 lea rsi, [r12 + 560]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n186_α
 xchain0_n185_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n186_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n187_α
 xchain0_n186_β:
 jmp xchain0_n5_α
 xchain0_n187_α:
  .section .rodata
  .Lcall188_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall188_pname]
 mov esi, 2
 lea rdx, [r12 + 448]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain0_n178_β
 jmp xchain0_n188_α
xchain0_n187_β:
 lea rdi, [r12 + 448]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain0_n178_β
 jmp xchain0_n188_α
# IR_LIT_STRING
 xchain0_n188_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain0_n189_α
 xchain0_n188_β:
 jmp proc_zebra$1_ω
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "house"
# IR_VAR_REF
 xchain0_n189_α:
 lea rdi, [r12 + 6320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n190_α
 xchain0_n189_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n190_α:
 lea rdi, [r12 + 6336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n191_α
 xchain0_n190_β:
 jmp proc_zebra$1_ω
# IR_VAR_REF
 xchain0_n191_α:
 lea rdi, [r12 + 6352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n192_α
 xchain0_n191_β:
 jmp proc_zebra$1_ω
# IR_LIT_STRING
 xchain0_n192_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n193_α
 xchain0_n192_β:
 jmp proc_zebra$1_ω
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "water"
# IR_VAR_REF
 xchain0_n193_α:
 lea rdi, [r12 + 6368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n194_α
 xchain0_n193_β:
 jmp proc_zebra$1_ω
 xchain0_n194_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+272]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+288]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 296], rax
# marshal arg2 = producer-box slot [zr+192] -> [zr+304]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 312], rax
# marshal arg3 = producer-box slot [zr+208] -> [zr+320]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 328], rax
# marshal arg4 = producer-box slot [zr+224] -> [zr+336]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 344], rax
# marshal arg5 = producer-box slot [zr+240] -> [zr+352]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn321: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn321]
 lea rsi, [r12 + 272]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n195_α
 xchain0_n194_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n195_α:
 lea rdi, [r12 + 6384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n196_α
 xchain0_n195_β:
 jmp xchain0_n5_α
 xchain0_n196_α:
  .section .rodata
  .Lcall197_pname: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall197_pname]
 mov esi, 2
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n187_β
 jmp xchain0_n197_α
xchain0_n196_β:
 lea rdi, [r12 + 160]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n187_β
 jmp xchain0_n197_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n197_α:
 lea rax, [rip + xchain0_n196_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_zebra$1_γ
 xchain0_n197_β:
 jmp proc_zebra$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n198_α:
 jmp qword ptr [r12 + 48]
 xchain0_n198_β:
 jmp proc_zebra$1_ω
proc_zebra$1_β:
jmp xchain0_n198_α
proc_zebra$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 6304]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_zebra$1_ω:
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
  .globl proc_right_of$3_α
proc_right_of$3_α:
#=======================================================================================================================
    .global proc_right_of$3_α
    .global proc_right_of$3_β
    .global proc_right_of$3_γ
    .global proc_right_of$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_right_of$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1072], rax
 pop rsi
proc_right_of$3_α_body:
 xchain329_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn331: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp xchain329_n1_α
 xchain329_n0_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain329_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain329_n2_α
 xchain329_n1_β:
 jmp xchain329_n5_α
# IR_VAR_REF
 xchain329_n2_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain329_n3_α
 xchain329_n2_β:
 jmp xchain329_n5_α
 xchain329_n3_α:
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
  .Lrkfn337: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn337]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain329_n5_α
 jmp xchain329_n4_α
 xchain329_n3_β:
 jmp xchain329_n5_α
# IR_VAR_REF
 xchain329_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain329_n6_α
 xchain329_n4_β:
 jmp xchain329_n5_α
 xchain329_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+624]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn341: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn341]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp xchain329_n7_α
 xchain329_n5_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain329_n6_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain329_n8_α
 xchain329_n6_β:
 jmp xchain329_n5_α
# IR_VAR_REF
 xchain329_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain329_n9_α
 xchain329_n7_β:
 jmp xchain329_n14_α
 xchain329_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn347: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn347]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain329_n5_α
 jmp xchain329_n10_α
 xchain329_n8_β:
 jmp xchain329_n5_α
# IR_VAR_REF
 xchain329_n9_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain329_n11_α
 xchain329_n9_β:
 jmp xchain329_n14_α
# IR_VAR_REF
 xchain329_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain329_n12_α
 xchain329_n10_β:
 jmp xchain329_n5_α
 xchain329_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn353: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn353]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain329_n14_α
 jmp xchain329_n13_α
 xchain329_n11_β:
 jmp xchain329_n14_α
# IR_LIT_STRING
 xchain329_n12_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain329_n15_α
 xchain329_n12_β:
 jmp proc_right_of$3_ω
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "."
# IR_VAR_REF
 xchain329_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain329_n16_α
 xchain329_n13_β:
 jmp xchain329_n14_α
 xchain329_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn358: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn358]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp proc_right_of$3_ω
 xchain329_n14_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain329_n15_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain329_n17_α
 xchain329_n15_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain329_n16_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain329_n18_α
 xchain329_n16_β:
 jmp xchain329_n14_α
# IR_LIT_STRING
 xchain329_n17_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain329_n19_α
 xchain329_n17_β:
 jmp proc_right_of$3_ω
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "."
 xchain329_n18_α:
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
  .Lrkfn365: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn365]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain329_n14_α
 jmp xchain329_n20_α
 xchain329_n18_β:
 jmp xchain329_n14_α
# IR_VAR_REF
 xchain329_n19_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain329_n21_α
 xchain329_n19_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain329_n20_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain329_n22_α
 xchain329_n20_β:
 jmp xchain329_n14_α
# IR_VAR_REF
 xchain329_n21_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain329_n23_α
 xchain329_n21_β:
 jmp proc_right_of$3_ω
# IR_LIT_STRING
 xchain329_n22_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain329_n24_α
 xchain329_n22_β:
 jmp proc_right_of$3_ω
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "."
 xchain329_n23_α:
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
# marshal arg2 = producer-box slot [zr+704] -> [zr+784]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn374: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je proc_right_of$3_ω
 jmp xchain329_n25_α
 xchain329_n23_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain329_n24_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain329_n26_α
 xchain329_n24_β:
 jmp proc_right_of$3_ω
 xchain329_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+864]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 872], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+880]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn378: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn378]
 lea rsi, [r12 + 848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain329_n5_α
 jmp xchain329_n27_α
 xchain329_n25_β:
 jmp xchain329_n5_α
# IR_VAR_REF
 xchain329_n26_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain329_n28_α
 xchain329_n26_β:
 jmp proc_right_of$3_ω
 xchain329_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+672]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn382: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn382]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain329_n5_α
 jmp xchain329_n29_α
 xchain329_n27_β:
 jmp xchain329_n5_α
 xchain329_n28_α:
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
  .Lrkfn384: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn384]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain329_n14_α
 jmp xchain329_n30_α
 xchain329_n28_β:
 jmp xchain329_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain329_n29_α:
 lea rax, [rip + xchain329_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_right_of$3_γ
 xchain329_n29_β:
 jmp proc_right_of$3_ω
 xchain329_n30_α:
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
  .Lrkfn388: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain329_n14_α
 jmp xchain329_n32_α
 xchain329_n30_β:
 jmp xchain329_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain329_n31_α:
 jmp qword ptr [r12 + 80]
 xchain329_n31_β:
 jmp proc_right_of$3_ω
# IR_VAR_REF
 xchain329_n32_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain329_n33_α
 xchain329_n32_β:
 jmp xchain329_n14_α
# IR_VAR_REF
 xchain329_n33_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain329_n34_α
 xchain329_n33_β:
 jmp xchain329_n14_α
# IR_VAR_REF
 xchain329_n34_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain329_n35_α
 xchain329_n34_β:
 jmp xchain329_n14_α
 xchain329_n35_α:
  .section .rodata
  .Lcall235_pname: .string "right_of/3"
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
   lea rdi, [rip + .Lcall235_pname]
 mov esi, 3
 lea rdx, [r12 + 208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain329_n14_α
 jmp xchain329_n36_α
xchain329_n35_β:
 lea rdi, [r12 + 208]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain329_n14_α
 jmp xchain329_n36_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain329_n36_α:
 lea rax, [rip + xchain329_n35_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_right_of$3_γ
 xchain329_n36_β:
 jmp proc_right_of$3_ω
proc_right_of$3_β:
jmp xchain329_n31_α
proc_right_of$3_γ:
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
proc_right_of$3_ω:
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
  .globl proc_next_to$3_α
proc_next_to$3_α:
#=======================================================================================================================
    .global proc_next_to$3_α
    .global proc_next_to$3_β
    .global proc_next_to$3_γ
    .global proc_next_to$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_next_to$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1536], rax
 pop rsi
proc_next_to$3_α_body:
 xchain400_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn402: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn402]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain400_n1_α
 xchain400_n0_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 jmp xchain400_n2_α
 xchain400_n1_β:
 jmp xchain400_n5_α
# IR_VAR_REF
 xchain400_n2_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 jmp xchain400_n3_α
 xchain400_n2_β:
 jmp xchain400_n5_α
 xchain400_n3_α:
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
  .Lrkfn408: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn408]
 lea rsi, [r12 + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je xchain400_n5_α
 jmp xchain400_n4_α
 xchain400_n3_β:
 jmp xchain400_n5_α
# IR_VAR_REF
 xchain400_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 jmp xchain400_n6_α
 xchain400_n4_β:
 jmp xchain400_n5_α
 xchain400_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1088]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn412: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn412]
 lea rsi, [r12 + 1088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain400_n7_α
 xchain400_n5_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n6_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain400_n8_α
 xchain400_n6_β:
 jmp xchain400_n5_α
# IR_VAR_REF
 xchain400_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain400_n9_α
 xchain400_n7_β:
 jmp xchain400_n14_α
 xchain400_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn418: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn418]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain400_n5_α
 jmp xchain400_n10_α
 xchain400_n8_β:
 jmp xchain400_n5_α
# IR_VAR_REF
 xchain400_n9_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain400_n11_α
 xchain400_n9_β:
 jmp xchain400_n14_α
# IR_VAR_REF
 xchain400_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain400_n12_α
 xchain400_n10_β:
 jmp xchain400_n5_α
 xchain400_n11_α:
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
  .Lrkfn424: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn424]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain400_n14_α
 jmp xchain400_n13_α
 xchain400_n11_β:
 jmp xchain400_n14_α
# IR_LIT_STRING
 xchain400_n12_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx425_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain400_n15_α
 xchain400_n12_β:
 jmp proc_next_to$3_ω
.Lx425_0:
 .quad .Lx425_0_s
.Lx425_0_s:
 .string "."
# IR_VAR_REF
 xchain400_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain400_n16_α
 xchain400_n13_β:
 jmp xchain400_n14_α
 xchain400_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+624]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn429: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn429]
 lea rsi, [r12 + 624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain400_n17_α
 xchain400_n14_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n15_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain400_n18_α
 xchain400_n15_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n16_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain400_n19_α
 xchain400_n16_β:
 jmp xchain400_n14_α
# IR_VAR_REF
 xchain400_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain400_n20_α
 xchain400_n17_β:
 jmp xchain400_n27_α
# IR_LIT_STRING
 xchain400_n18_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain400_n21_α
 xchain400_n18_β:
 jmp proc_next_to$3_ω
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "."
 xchain400_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn438: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn438]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain400_n14_α
 jmp xchain400_n22_α
 xchain400_n19_β:
 jmp xchain400_n14_α
# IR_VAR_REF
 xchain400_n20_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain400_n23_α
 xchain400_n20_β:
 jmp xchain400_n27_α
# IR_VAR_REF
 xchain400_n21_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain400_n24_α
 xchain400_n21_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain400_n25_α
 xchain400_n22_β:
 jmp xchain400_n14_α
 xchain400_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn446: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn446]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain400_n27_α
 jmp xchain400_n26_α
 xchain400_n23_β:
 jmp xchain400_n27_α
# IR_VAR_REF
 xchain400_n24_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain400_n28_α
 xchain400_n24_β:
 jmp proc_next_to$3_ω
# IR_LIT_STRING
 xchain400_n25_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx449_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain400_n29_α
 xchain400_n25_β:
 jmp proc_next_to$3_ω
.Lx449_0:
 .quad .Lx449_0_s
.Lx449_0_s:
 .string "."
# IR_VAR_REF
 xchain400_n26_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain400_n30_α
 xchain400_n26_β:
 jmp xchain400_n27_α
 xchain400_n27_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn453: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn453]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp proc_next_to$3_ω
 xchain400_n27_β:
 jmp proc_next_to$3_ω
 xchain400_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1232]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1240], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1248]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lrkfn455: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn455]
 lea rsi, [r12 + 1216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain400_n31_α
 xchain400_n28_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n29_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain400_n32_α
 xchain400_n29_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n30_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain400_n33_α
 xchain400_n30_β:
 jmp xchain400_n27_α
 xchain400_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1320], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1328]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1336], rax
# marshal arg2 = producer-box slot [zr+1200] -> [zr+1344]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn461: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn461]
 lea rsi, [r12 + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain400_n5_α
 jmp xchain400_n34_α
 xchain400_n31_β:
 jmp xchain400_n5_α
# IR_LIT_STRING
 xchain400_n32_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain400_n35_α
 xchain400_n32_β:
 jmp proc_next_to$3_ω
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "."
 xchain400_n33_α:
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
  .Lrkfn464: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn464]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain400_n27_α
 jmp xchain400_n36_α
 xchain400_n33_β:
 jmp xchain400_n27_α
 xchain400_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1136]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn466: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn466]
 lea rsi, [r12 + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 cmp eax, 99
 je xchain400_n5_α
 jmp xchain400_n37_α
 xchain400_n34_β:
 jmp xchain400_n5_α
# IR_VAR_REF
 xchain400_n35_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain400_n38_α
 xchain400_n35_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n36_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain400_n39_α
 xchain400_n36_β:
 jmp xchain400_n27_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain400_n37_α:
 lea rax, [rip + xchain400_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_next_to$3_γ
 xchain400_n37_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n38_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain400_n41_α
 xchain400_n38_β:
 jmp proc_next_to$3_ω
# IR_LIT_STRING
 xchain400_n39_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain400_n42_α
 xchain400_n39_β:
 jmp proc_next_to$3_ω
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "."
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain400_n40_α:
 jmp qword ptr [r12 + 80]
 xchain400_n40_β:
 jmp proc_next_to$3_ω
 xchain400_n41_α:
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
# marshal arg2 = producer-box slot [zr+704] -> [zr+784]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn479: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn479]
 lea rsi, [r12 + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je proc_next_to$3_ω
 jmp xchain400_n43_α
 xchain400_n41_β:
 jmp proc_next_to$3_ω
# IR_VAR_REF
 xchain400_n42_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain400_n44_α
 xchain400_n42_β:
 jmp proc_next_to$3_ω
 xchain400_n43_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+864]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 872], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+880]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn483: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn483]
 lea rsi, [r12 + 848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain400_n14_α
 jmp xchain400_n45_α
 xchain400_n43_β:
 jmp xchain400_n14_α
# IR_VAR_REF
 xchain400_n44_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain400_n46_α
 xchain400_n44_β:
 jmp proc_next_to$3_ω
 xchain400_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+672]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn487: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn487]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain400_n14_α
 jmp xchain400_n47_α
 xchain400_n45_β:
 jmp xchain400_n14_α
 xchain400_n46_α:
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
  .Lrkfn489: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn489]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain400_n27_α
 jmp xchain400_n48_α
 xchain400_n46_β:
 jmp xchain400_n27_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain400_n47_α:
 lea rax, [rip + xchain400_n14_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_next_to$3_γ
 xchain400_n47_β:
 jmp proc_next_to$3_ω
 xchain400_n48_α:
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
  .Lrkfn493: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn493]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain400_n27_α
 jmp xchain400_n49_α
 xchain400_n48_β:
 jmp xchain400_n27_α
# IR_VAR_REF
 xchain400_n49_α:
 lea rdi, [r12 + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain400_n50_α
 xchain400_n49_β:
 jmp xchain400_n27_α
# IR_VAR_REF
 xchain400_n50_α:
 lea rdi, [r12 + 1568]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain400_n51_α
 xchain400_n50_β:
 jmp xchain400_n27_α
# IR_VAR_REF
 xchain400_n51_α:
 lea rdi, [r12 + 1584]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain400_n52_α
 xchain400_n51_β:
 jmp xchain400_n27_α
 xchain400_n52_α:
  .section .rodata
  .Lcall289_pname: .string "next_to/3"
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
   lea rdi, [rip + .Lcall289_pname]
 mov esi, 3
 lea rdx, [r12 + 208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain400_n27_α
 jmp xchain400_n53_α
xchain400_n52_β:
 lea rdi, [r12 + 208]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain400_n27_α
 jmp xchain400_n53_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain400_n53_α:
 lea rax, [rip + xchain400_n52_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_next_to$3_γ
 xchain400_n53_β:
 jmp proc_next_to$3_ω
proc_next_to$3_β:
jmp xchain400_n40_α
proc_next_to$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1536]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_next_to$3_ω:
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
  .globl proc_my_member$2_α
proc_my_member$2_α:
#=======================================================================================================================
    .global proc_my_member$2_α
    .global proc_my_member$2_β
    .global proc_my_member$2_γ
    .global proc_my_member$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_my_member$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 768], rax
 pop rsi
proc_my_member$2_α_body:
 xchain503_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn505: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn505]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_my_member$2_ω
 jmp xchain503_n1_α
 xchain503_n0_β:
 jmp proc_my_member$2_ω
# IR_VAR_REF
 xchain503_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain503_n2_α
 xchain503_n1_β:
 jmp xchain503_n5_α
# IR_VAR_REF
 xchain503_n2_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain503_n3_α
 xchain503_n2_β:
 jmp xchain503_n5_α
 xchain503_n3_α:
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
  .Lrkfn511: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn511]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain503_n5_α
 jmp xchain503_n4_α
 xchain503_n3_β:
 jmp xchain503_n5_α
# IR_VAR_REF
 xchain503_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain503_n6_α
 xchain503_n4_β:
 jmp xchain503_n5_α
 xchain503_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+496]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn515: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn515]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_my_member$2_ω
 jmp xchain503_n7_α
 xchain503_n5_β:
 jmp proc_my_member$2_ω
# IR_LIT_STRING
 xchain503_n6_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain503_n8_α
 xchain503_n6_β:
 jmp proc_my_member$2_ω
.Lx516_0:
 .quad .Lx516_0_s
.Lx516_0_s:
 .string "."
# IR_VAR_REF
 xchain503_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain503_n9_α
 xchain503_n7_β:
 jmp xchain503_n14_α
# IR_VAR_REF
 xchain503_n8_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain503_n10_α
 xchain503_n8_β:
 jmp proc_my_member$2_ω
# IR_VAR_REF
 xchain503_n9_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain503_n11_α
 xchain503_n9_β:
 jmp xchain503_n14_α
# IR_VAR_REF
 xchain503_n10_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain503_n12_α
 xchain503_n10_β:
 jmp proc_my_member$2_ω
 xchain503_n11_α:
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
  .Lrkfn526: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn526]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain503_n14_α
 jmp xchain503_n13_α
 xchain503_n11_β:
 jmp xchain503_n14_α
 xchain503_n12_α:
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
  .Lrkfn528: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn528]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain503_n5_α
 jmp xchain503_n15_α
 xchain503_n12_β:
 jmp xchain503_n5_α
# IR_VAR_REF
 xchain503_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain503_n16_α
 xchain503_n13_β:
 jmp xchain503_n14_α
 xchain503_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn532: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn532]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_my_member$2_ω
 jmp proc_my_member$2_ω
 xchain503_n14_β:
 jmp proc_my_member$2_ω
 xchain503_n15_α:
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
  .Lrkfn534: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn534]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain503_n5_α
 jmp xchain503_n17_α
 xchain503_n15_β:
 jmp xchain503_n5_α
# IR_LIT_STRING
 xchain503_n16_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx535_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain503_n18_α
 xchain503_n16_β:
 jmp proc_my_member$2_ω
.Lx535_0:
 .quad .Lx535_0_s
.Lx535_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain503_n17_α:
 lea rax, [rip + xchain503_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_my_member$2_γ
 xchain503_n17_β:
 jmp proc_my_member$2_ω
# IR_VAR_REF
 xchain503_n18_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain503_n20_α
 xchain503_n18_β:
 jmp proc_my_member$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain503_n19_α:
 jmp qword ptr [r12 + 64]
 xchain503_n19_β:
 jmp proc_my_member$2_ω
# IR_VAR_REF
 xchain503_n20_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain503_n21_α
 xchain503_n20_β:
 jmp proc_my_member$2_ω
 xchain503_n21_α:
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
  .Lrkfn545: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn545]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain503_n14_α
 jmp xchain503_n22_α
 xchain503_n21_β:
 jmp xchain503_n14_α
 xchain503_n22_α:
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
  .Lrkfn547: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn547]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain503_n14_α
 jmp xchain503_n23_α
 xchain503_n22_β:
 jmp xchain503_n14_α
# IR_VAR_REF
 xchain503_n23_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain503_n24_α
 xchain503_n23_β:
 jmp xchain503_n14_α
# IR_VAR_REF
 xchain503_n24_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain503_n25_α
 xchain503_n24_β:
 jmp xchain503_n14_α
 xchain503_n25_α:
  .section .rodata
  .Lcall316_pname: .string "my_member/2"
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
   lea rdi, [rip + .Lcall316_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain503_n14_α
 jmp xchain503_n26_α
xchain503_n25_β:
 lea rdi, [r12 + 176]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain503_n14_α
 jmp xchain503_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain503_n26_α:
 lea rax, [rip + xchain503_n25_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_my_member$2_γ
 xchain503_n26_β:
 jmp proc_my_member$2_ω
proc_my_member$2_β:
jmp xchain503_n19_α
proc_my_member$2_γ:
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
proc_my_member$2_ω:
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
  .globl proc_houses$1_α
proc_houses$1_α:
#=======================================================================================================================
    .global proc_houses$1_α
    .global proc_houses$1_β
    .global proc_houses$1_γ
    .global proc_houses$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_houses$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1632], rax
 pop rsi
proc_houses$1_α_body:
 xchain555_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn557: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn557]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n1_α
 xchain555_n0_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain555_n2_α
 xchain555_n1_β:
 jmp xchain555_n49_α
# IR_LIT_STRING
 xchain555_n2_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain555_n3_α
 xchain555_n2_β:
 jmp proc_houses$1_ω
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "."
# IR_LIT_STRING
 xchain555_n3_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain555_n4_α
 xchain555_n3_β:
 jmp proc_houses$1_ω
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "house"
# IR_VAR_REF
 xchain555_n4_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain555_n5_α
 xchain555_n4_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n5_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain555_n6_α
 xchain555_n5_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n6_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain555_n7_α
 xchain555_n6_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n7_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain555_n8_α
 xchain555_n7_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n8_α:
 lea rdi, [r12 + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain555_n9_α
 xchain555_n8_β:
 jmp proc_houses$1_ω
 xchain555_n9_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1440]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1448], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1456]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1464], rax
# marshal arg2 = producer-box slot [zr+1360] -> [zr+1472]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1480], rax
# marshal arg3 = producer-box slot [zr+1376] -> [zr+1488]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1496], rax
# marshal arg4 = producer-box slot [zr+1392] -> [zr+1504]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1512], rax
# marshal arg5 = producer-box slot [zr+1408] -> [zr+1520]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn573: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn573]
 lea rsi, [r12 + 1440]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n10_α
 xchain555_n9_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain555_n10_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain555_n11_α
 xchain555_n10_β:
 jmp proc_houses$1_ω
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "."
# IR_LIT_STRING
 xchain555_n11_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain555_n12_α
 xchain555_n11_β:
 jmp proc_houses$1_ω
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "house"
# IR_VAR_REF
 xchain555_n12_α:
 lea rdi, [r12 + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain555_n13_α
 xchain555_n12_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n13_α:
 lea rdi, [r12 + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain555_n14_α
 xchain555_n13_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n14_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain555_n15_α
 xchain555_n14_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n15_α:
 lea rdi, [r12 + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain555_n16_α
 xchain555_n15_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n16_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain555_n17_α
 xchain555_n16_β:
 jmp proc_houses$1_ω
 xchain555_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1152]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1168]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1176], rax
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1184]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1192], rax
# marshal arg3 = producer-box slot [zr+1088] -> [zr+1200]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1208], rax
# marshal arg4 = producer-box slot [zr+1104] -> [zr+1216]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1224], rax
# marshal arg5 = producer-box slot [zr+1120] -> [zr+1232]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn587: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn587]
 lea rsi, [r12 + 1152]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n18_α
 xchain555_n17_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain555_n18_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain555_n19_α
 xchain555_n18_β:
 jmp proc_houses$1_ω
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "."
# IR_LIT_STRING
 xchain555_n19_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain555_n20_α
 xchain555_n19_β:
 jmp proc_houses$1_ω
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "house"
# IR_VAR_REF
 xchain555_n20_α:
 lea rdi, [r12 + 1808]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain555_n21_α
 xchain555_n20_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n21_α:
 lea rdi, [r12 + 1824]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain555_n22_α
 xchain555_n21_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n22_α:
 lea rdi, [r12 + 1840]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain555_n23_α
 xchain555_n22_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n23_α:
 lea rdi, [r12 + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain555_n24_α
 xchain555_n23_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n24_α:
 lea rdi, [r12 + 1872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain555_n25_α
 xchain555_n24_β:
 jmp proc_houses$1_ω
 xchain555_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+864]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+880]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 888], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+896]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 904], rax
# marshal arg3 = producer-box slot [zr+800] -> [zr+912]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 920], rax
# marshal arg4 = producer-box slot [zr+816] -> [zr+928]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 936], rax
# marshal arg5 = producer-box slot [zr+832] -> [zr+944]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn601: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn601]
 lea rsi, [r12 + 864]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n26_α
 xchain555_n25_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain555_n26_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx602_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain555_n27_α
 xchain555_n26_β:
 jmp proc_houses$1_ω
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "."
# IR_LIT_STRING
 xchain555_n27_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain555_n28_α
 xchain555_n27_β:
 jmp proc_houses$1_ω
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string "house"
# IR_VAR_REF
 xchain555_n28_α:
 lea rdi, [r12 + 1728]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain555_n29_α
 xchain555_n28_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n29_α:
 lea rdi, [r12 + 1744]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain555_n30_α
 xchain555_n29_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n30_α:
 lea rdi, [r12 + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain555_n31_α
 xchain555_n30_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n31_α:
 lea rdi, [r12 + 1776]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain555_n32_α
 xchain555_n31_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n32_α:
 lea rdi, [r12 + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain555_n33_α
 xchain555_n32_β:
 jmp proc_houses$1_ω
 xchain555_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+576]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+592]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 600], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+608]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 616], rax
# marshal arg3 = producer-box slot [zr+512] -> [zr+624]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 632], rax
# marshal arg4 = producer-box slot [zr+528] -> [zr+640]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 648], rax
# marshal arg5 = producer-box slot [zr+544] -> [zr+656]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn615: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn615]
 lea rsi, [r12 + 576]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n34_α
 xchain555_n33_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain555_n34_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain555_n35_α
 xchain555_n34_β:
 jmp proc_houses$1_ω
.Lx616_0:
 .quad .Lx616_0_s
.Lx616_0_s:
 .string "."
# IR_LIT_STRING
 xchain555_n35_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain555_n36_α
 xchain555_n35_β:
 jmp proc_houses$1_ω
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "house"
# IR_VAR_REF
 xchain555_n36_α:
 lea rdi, [r12 + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain555_n37_α
 xchain555_n36_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n37_α:
 lea rdi, [r12 + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain555_n38_α
 xchain555_n37_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n38_α:
 lea rdi, [r12 + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain555_n39_α
 xchain555_n38_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n39_α:
 lea rdi, [r12 + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain555_n40_α
 xchain555_n39_β:
 jmp proc_houses$1_ω
# IR_VAR_REF
 xchain555_n40_α:
 lea rdi, [r12 + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain555_n41_α
 xchain555_n40_β:
 jmp proc_houses$1_ω
 xchain555_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+288]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+304]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 312], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+320]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 328], rax
# marshal arg3 = producer-box slot [zr+224] -> [zr+336]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 344], rax
# marshal arg4 = producer-box slot [zr+240] -> [zr+352]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 360], rax
# marshal arg5 = producer-box slot [zr+256] -> [zr+368]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn629: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn629]
 lea rsi, [r12 + 288]
 mov edx, 6
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n42_α
 xchain555_n41_β:
 jmp proc_houses$1_ω
# IR_LIT_STRING
 xchain555_n42_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain555_n43_α
 xchain555_n42_β:
 jmp proc_houses$1_ω
.Lx630_0:
 .quad .Lx630_0_s
.Lx630_0_s:
 .string "[]"
 xchain555_n43_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+432]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 440], rax
# marshal arg2 = producer-box slot [zr+176] -> [zr+448]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn632: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn632]
 lea rsi, [r12 + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n44_α
 xchain555_n43_β:
 jmp proc_houses$1_ω
 xchain555_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+720]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+736]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn634: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn634]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n45_α
 xchain555_n44_β:
 jmp proc_houses$1_ω
 xchain555_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+1008]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 1016], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+1024]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn636: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn636]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n46_α
 xchain555_n45_β:
 jmp proc_houses$1_ω
 xchain555_n46_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1296]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1304], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+1312]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn638: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn638]
 lea rsi, [r12 + 1280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp xchain555_n47_α
 xchain555_n46_β:
 jmp proc_houses$1_ω
 xchain555_n47_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1584]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1592], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1600]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1608], rax
  .section .rodata
  .Lrkfn640: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn640]
 lea rsi, [r12 + 1568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain555_n49_α
 jmp xchain555_n48_α
 xchain555_n47_β:
 jmp xchain555_n49_α
 xchain555_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+144]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn642: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn642]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain555_n49_α
 jmp xchain555_n50_α
 xchain555_n48_β:
 jmp xchain555_n49_α
 xchain555_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn644: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn644]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_houses$1_ω
 jmp proc_houses$1_ω
 xchain555_n49_β:
 jmp proc_houses$1_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain555_n50_α:
 lea rax, [rip + xchain555_n49_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_houses$1_γ
 xchain555_n50_β:
 jmp proc_houses$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain555_n51_α:
 jmp qword ptr [r12 + 48]
 xchain555_n51_β:
 jmp proc_houses$1_ω
proc_houses$1_β:
jmp xchain555_n51_α
proc_houses$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1632]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_houses$1_ω:
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
  .Lstartup_pname0: .string "zebra/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_zebra$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 7568
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "right_of/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_right_of$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1152
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "next_to/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_next_to$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1616
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "my_member/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_my_member$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname4: .string "houses/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_houses$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2048
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
 mov qword ptr [r12 + 256], rax
 pop rsi
main_α_body:
 xchain649_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn651: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn651]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain649_n1_α
 xchain649_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain649_n1_α:
 lea rdi, [r12 + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain649_n2_α
 xchain649_n1_β:
 jmp xchain649_n4_α
 xchain649_n2_α:
  .section .rodata
  .Lcall372_pname: .string "zebra/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall372_pname]
 mov esi, 1
 lea rdx, [r12 + 224]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain649_n4_α
 jmp xchain649_n3_α
xchain649_n2_β:
 lea rdi, [r12 + 224]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain649_n4_α
 jmp xchain649_n3_α
# IR_VAR
 xchain649_n3_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 184], rax
 jmp xchain649_n5_α
 xchain649_n3_β:
 jmp xchain649_n4_α
 xchain649_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn658: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn658]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain649_n4_β:
 jmp main_ω
 xchain649_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn660: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn660]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain649_n2_β
 jmp xchain649_n6_α
 xchain649_n5_β:
 jmp xchain649_n2_β
# IR_LIT_STRING
 xchain649_n6_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx661_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain649_n7_α
 xchain649_n6_β:
 jmp xchain649_n4_α
.Lx661_0:
 .quad .Lx661_0_s
.Lx661_0_s:
 .string ""
 xchain649_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn663: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn663]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain649_n2_β
 jmp xchain649_n8_α
 xchain649_n7_β:
 jmp xchain649_n2_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain649_n8_α:
 lea rax, [rip + xchain649_n2_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain649_n8_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain649_n9_α:
 jmp qword ptr [r12 + 32]
 xchain649_n9_β:
 jmp main_ω
main_β:
jmp xchain649_n9_α
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
