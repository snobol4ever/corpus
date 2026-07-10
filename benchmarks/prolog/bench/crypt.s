  .intel_syntax noprefix
  .text
  .globl proc_mult$3_α
proc_mult$3_α:
#=======================================================================================================================
    .global proc_mult$3_α
    .global proc_mult$3_β
    .global proc_mult$3_γ
    .global proc_mult$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_mult$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_mult$3_α_body:
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
 je proc_mult$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_mult$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [r12 + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_mult$3_ω
 jmp proc_mult$3_ω
 xchain0_n5_β:
 jmp proc_mult$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
 xchain0_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n5_α
 xchain0_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [r12 + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
.Lx27_0:
 .quad 0
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n5_α
 xchain0_n15_α:
  .section .rodata
  .Lcall16_pname: .string "mult/4"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall16_pname]
 mov esi, 4
 lea rdx, [r12 + 224]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n16_α
xchain0_n15_β:
 lea rdi, [r12 + 224]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n16_α:
 lea rax, [rip + xchain0_n15_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_mult$3_γ
 xchain0_n16_β:
 jmp proc_mult$3_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n17_α:
 jmp qword ptr [r12 + 80]
 xchain0_n17_β:
 jmp proc_mult$3_ω
proc_mult$3_β:
jmp xchain0_n17_α
proc_mult$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_mult$3_ω:
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
  .globl proc_mult$4_α
proc_mult$4_α:
#=======================================================================================================================
    .global proc_mult$4_α
    .global proc_mult$4_β
    .global proc_mult$4_γ
    .global proc_mult$4_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_mult$4_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2160], rax
 pop rsi
proc_mult$4_α_body:
 xchain35_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn37: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain35_n1_α
 xchain35_n0_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain35_n2_α
 xchain35_n1_β:
 jmp xchain35_n7_α
# IR_LIT_STRING
 xchain35_n2_α:
 mov qword ptr [r12 + 2144], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [r12 + 2152], rax
 jmp xchain35_n3_α
 xchain35_n2_β:
 jmp proc_mult$4_ω
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "."
# IR_VAR_REF
 xchain35_n3_α:
 lea rdi, [r12 + 2224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain35_n4_α
 xchain35_n3_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n4_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain35_n5_α
 xchain35_n4_β:
 jmp proc_mult$4_ω
 xchain35_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2096]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2096], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2104], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2112]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2120], rax
# marshal arg2 = producer-box slot [zr+2048] -> [zr+2128]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lrkfn46: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 2096]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n6_α
 xchain35_n5_β:
 jmp xchain35_n7_α
 xchain35_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+2000]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lrkfn48: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n8_α
 xchain35_n6_β:
 jmp xchain35_n7_α
 xchain35_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+976]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 984], rax
  .section .rodata
  .Lrkfn50: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 976]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain35_n9_α
 xchain35_n7_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain35_n10_α
 xchain35_n8_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain35_n11_α
 xchain35_n9_β:
 jmp xchain35_n16_α
# IR_VAR_REF
 xchain35_n10_α:
 lea rdi, [r12 + 2240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain35_n12_α
 xchain35_n10_β:
 jmp xchain35_n7_α
# IR_LIT_STRING
 xchain35_n11_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain35_n13_α
 xchain35_n11_β:
 jmp xchain35_n16_α
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "[]"
 xchain35_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1920]
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1928], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1936]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
  .section .rodata
  .Lrkfn59: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 1920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n14_α
 xchain35_n12_β:
 jmp xchain35_n7_α
 xchain35_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn61: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n15_α
 xchain35_n13_β:
 jmp xchain35_n16_α
# IR_VAR_REF
 xchain35_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain35_n17_α
 xchain35_n14_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n15_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain35_n18_α
 xchain35_n15_β:
 jmp xchain35_n16_α
 xchain35_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn67: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp proc_mult$4_ω
 xchain35_n16_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n17_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain35_n19_α
 xchain35_n17_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n18_α:
 lea rdi, [r12 + 2224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain35_n20_α
 xchain35_n18_β:
 jmp xchain35_n16_α
 xchain35_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1840]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1848], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1856]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1864], rax
  .section .rodata
  .Lrkfn73: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 1840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n21_α
 xchain35_n19_β:
 jmp xchain35_n7_α
 xchain35_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn75: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n22_α
 xchain35_n20_β:
 jmp xchain35_n16_α
# IR_VAR_REF
 xchain35_n21_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain35_n23_α
 xchain35_n21_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain35_n24_α
 xchain35_n22_β:
 jmp xchain35_n16_α
# IR_LIT_STRING
 xchain35_n23_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain35_n25_α
 xchain35_n23_β:
 jmp proc_mult$4_ω
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "."
# IR_VAR_REF
 xchain35_n24_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain35_n26_α
 xchain35_n24_β:
 jmp xchain35_n16_α
# IR_VAR_REF
 xchain35_n25_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain35_n27_α
 xchain35_n25_β:
 jmp proc_mult$4_ω
 xchain35_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn86: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n28_α
 xchain35_n26_β:
 jmp xchain35_n16_α
# IR_VAR_REF
 xchain35_n27_α:
 lea rdi, [r12 + 2272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain35_n29_α
 xchain35_n27_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n28_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain35_n30_α
 xchain35_n28_β:
 jmp xchain35_n16_α
 xchain35_n29_α:
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
# marshal arg2 = producer-box slot [zr+1712] -> [zr+1792]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lrkfn92: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 1760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n31_α
 xchain35_n29_β:
 jmp xchain35_n7_α
# IR_LIT_STRING
 xchain35_n30_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain35_n32_α
 xchain35_n30_β:
 jmp proc_mult$4_ω
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "."
 xchain35_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1664]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lrkfn95: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn95]
 lea rsi, [r12 + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n33_α
 xchain35_n31_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n32_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain35_n34_α
 xchain35_n32_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n33_α:
 lea rdi, [r12 + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain35_n35_α
 xchain35_n33_β:
 jmp xchain35_n7_α
# IR_LIT_STRING
 xchain35_n34_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain35_n36_α
 xchain35_n34_β:
 jmp proc_mult$4_ω
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "."
# IR_VAR
 xchain35_n35_α:
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 1608], rax
 jmp xchain35_n37_α
 xchain35_n35_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n36_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain35_n38_α
 xchain35_n36_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain35_n37_α:
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 1624], rax
 jmp xchain35_n39_α
 xchain35_n37_β:
 jmp proc_mult$4_ω
# IR_LIT_STRING
 xchain35_n38_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain35_n40_α
 xchain35_n38_β:
 jmp proc_mult$4_ω
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "[]"
 xchain35_n39_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn109: .string "$ax_mul"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn109]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n41_α
 xchain35_n39_β:
 jmp xchain35_n7_α
 xchain35_n40_α:
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
  .Lrkfn111: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 560]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je proc_mult$4_ω
 jmp xchain35_n42_α
 xchain35_n40_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain35_n41_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 1640], rax
 jmp xchain35_n43_α
 xchain35_n41_β:
 jmp proc_mult$4_ω
 xchain35_n42_α:
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
# marshal arg2 = producer-box slot [zr+544] -> [zr+688]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn115: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n44_α
 xchain35_n42_β:
 jmp xchain35_n16_α
 xchain35_n43_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1536]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lrkfn117: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn117]
 lea rsi, [r12 + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n45_α
 xchain35_n43_β:
 jmp xchain35_n7_α
 xchain35_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+480]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn119: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn119]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n46_α
 xchain35_n44_β:
 jmp xchain35_n16_α
 xchain35_n45_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn121: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 1456]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n47_α
 xchain35_n45_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n46_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain35_n48_α
 xchain35_n46_β:
 jmp xchain35_n16_α
# IR_VAR_REF
 xchain35_n47_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain35_n49_α
 xchain35_n47_β:
 jmp xchain35_n7_α
# IR_VAR
 xchain35_n48_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 424], rax
 jmp xchain35_n50_α
 xchain35_n48_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain35_n49_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 1416], rax
 jmp xchain35_n51_α
 xchain35_n49_β:
 jmp proc_mult$4_ω
# IR_LIT_INTEGER
 xchain35_n50_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain35_n52_α
 xchain35_n50_β:
 jmp proc_mult$4_ω
.Lx130_0:
 .quad 10
# IR_LIT_INTEGER
 xchain35_n51_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain35_n53_α
 xchain35_n51_β:
 jmp proc_mult$4_ω
.Lx131_0:
 .quad 10
 xchain35_n52_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn133: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn133]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n54_α
 xchain35_n52_β:
 jmp xchain35_n16_α
 xchain35_n53_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn135: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn135]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n55_α
 xchain35_n53_β:
 jmp xchain35_n7_α
 xchain35_n54_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn137: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn137]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n56_α
 xchain35_n54_β:
 jmp xchain35_n16_α
 xchain35_n55_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn139: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn139]
 lea rsi, [r12 + 1312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n57_α
 xchain35_n55_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n56_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain35_n58_α
 xchain35_n56_β:
 jmp xchain35_n16_α
# IR_VAR_REF
 xchain35_n57_α:
 lea rdi, [r12 + 2256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain35_n59_α
 xchain35_n57_β:
 jmp xchain35_n7_α
# IR_VAR
 xchain35_n58_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 280], rax
 jmp xchain35_n60_α
 xchain35_n58_β:
 jmp proc_mult$4_ω
# IR_VAR
 xchain35_n59_α:
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 1272], rax
 jmp xchain35_n61_α
 xchain35_n59_β:
 jmp proc_mult$4_ω
# IR_LIT_INTEGER
 xchain35_n60_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain35_n62_α
 xchain35_n60_β:
 jmp proc_mult$4_ω
.Lx148_0:
 .quad 10
# IR_LIT_INTEGER
 xchain35_n61_α:
 mov qword ptr [r12 + 1280], 6
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 1288], rax
 jmp xchain35_n63_α
 xchain35_n61_β:
 jmp proc_mult$4_ω
.Lx149_0:
 .quad 10
 xchain35_n62_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn151: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n64_α
 xchain35_n62_β:
 jmp xchain35_n16_α
 xchain35_n63_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1240], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1248]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lrkfn153: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn153]
 lea rsi, [r12 + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n65_α
 xchain35_n63_β:
 jmp xchain35_n7_α
 xchain35_n64_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn155: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn155]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain35_n16_α
 jmp xchain35_n66_α
 xchain35_n64_β:
 jmp xchain35_n16_α
 xchain35_n65_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1168]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn157: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn157]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n67_α
 xchain35_n65_β:
 jmp xchain35_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain35_n66_α:
 lea rax, [rip + xchain35_n16_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_mult$4_γ
 xchain35_n66_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n67_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain35_n69_α
 xchain35_n67_β:
 jmp xchain35_n7_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain35_n68_α:
 jmp qword ptr [r12 + 96]
 xchain35_n68_β:
 jmp proc_mult$4_ω
# IR_VAR_REF
 xchain35_n69_α:
 lea rdi, [r12 + 2240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain35_n70_α
 xchain35_n69_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n70_α:
 lea rdi, [r12 + 2256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain35_n71_α
 xchain35_n70_β:
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n71_α:
 lea rdi, [r12 + 2272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain35_n72_α
 xchain35_n71_β:
 jmp xchain35_n7_α
 xchain35_n72_α:
  .section .rodata
  .Lcall91_pname: .string "mult/4"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 1136]
 mov rdx, qword ptr [r12 + 1144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall91_pname]
 mov esi, 4
 lea rdx, [r12 + 1072]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n73_α
xchain35_n72_β:
 lea rdi, [r12 + 1072]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain35_n7_α
 jmp xchain35_n73_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain35_n73_α:
 lea rax, [rip + xchain35_n72_β]
 mov qword ptr [r12 + 96], rax
 jmp proc_mult$4_γ
 xchain35_n73_β:
 jmp proc_mult$4_ω
proc_mult$4_β:
jmp xchain35_n68_α
proc_mult$4_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2160]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_mult$4_ω:
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
  .globl proc_odd$1_α
proc_odd$1_α:
#=======================================================================================================================
    .global proc_odd$1_α
    .global proc_odd$1_β
    .global proc_odd$1_γ
    .global proc_odd$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_odd$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 640], rax
 pop rsi
proc_odd$1_α_body:
 xchain173_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn175: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn175]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain173_n1_α
 xchain173_n0_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain173_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain173_n2_α
 xchain173_n1_β:
 jmp xchain173_n5_α
# IR_LIT_INTEGER
 xchain173_n2_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain173_n3_α
 xchain173_n2_β:
 jmp xchain173_n5_α
.Lx178_0:
 .quad 1
 xchain173_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn180: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn180]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain173_n5_α
 jmp xchain173_n4_α
 xchain173_n3_β:
 jmp xchain173_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain173_n4_α:
 lea rax, [rip + xchain173_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_odd$1_γ
 xchain173_n4_β:
 jmp proc_odd$1_ω
 xchain173_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+544]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn184: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn184]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain173_n7_α
 xchain173_n5_β:
 jmp proc_odd$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain173_n6_α:
 jmp qword ptr [r12 + 48]
 xchain173_n6_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain173_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain173_n8_α
 xchain173_n7_β:
 jmp xchain173_n11_α
# IR_LIT_INTEGER
 xchain173_n8_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain173_n9_α
 xchain173_n8_β:
 jmp xchain173_n11_α
.Lx189_0:
 .quad 3
 xchain173_n9_α:
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
  .Lrkfn191: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain173_n11_α
 jmp xchain173_n10_α
 xchain173_n9_β:
 jmp xchain173_n11_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain173_n10_α:
 lea rax, [rip + xchain173_n11_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_odd$1_γ
 xchain173_n10_β:
 jmp proc_odd$1_ω
 xchain173_n11_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn195: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain173_n12_α
 xchain173_n11_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain173_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain173_n13_α
 xchain173_n12_β:
 jmp xchain173_n16_α
# IR_LIT_INTEGER
 xchain173_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain173_n14_α
 xchain173_n13_β:
 jmp xchain173_n16_α
.Lx198_0:
 .quad 5
 xchain173_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn200: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn200]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain173_n16_α
 jmp xchain173_n15_α
 xchain173_n14_β:
 jmp xchain173_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain173_n15_α:
 lea rax, [rip + xchain173_n16_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_odd$1_γ
 xchain173_n15_β:
 jmp proc_odd$1_ω
 xchain173_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+320]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn204: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain173_n17_α
 xchain173_n16_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain173_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain173_n18_α
 xchain173_n17_β:
 jmp xchain173_n21_α
# IR_LIT_INTEGER
 xchain173_n18_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain173_n19_α
 xchain173_n18_β:
 jmp xchain173_n21_α
.Lx207_0:
 .quad 7
 xchain173_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn209: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn209]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain173_n21_α
 jmp xchain173_n20_α
 xchain173_n19_β:
 jmp xchain173_n21_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain173_n20_α:
 lea rax, [rip + xchain173_n21_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_odd$1_γ
 xchain173_n20_β:
 jmp proc_odd$1_ω
 xchain173_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+208]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn213: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn213]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp xchain173_n22_α
 xchain173_n21_β:
 jmp proc_odd$1_ω
# IR_VAR_REF
 xchain173_n22_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain173_n23_α
 xchain173_n22_β:
 jmp xchain173_n26_α
# IR_LIT_INTEGER
 xchain173_n23_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain173_n24_α
 xchain173_n23_β:
 jmp xchain173_n26_α
.Lx216_0:
 .quad 9
 xchain173_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn218: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain173_n26_α
 jmp xchain173_n25_α
 xchain173_n24_β:
 jmp xchain173_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain173_n25_α:
 lea rax, [rip + xchain173_n26_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_odd$1_γ
 xchain173_n25_β:
 jmp proc_odd$1_ω
 xchain173_n26_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn222: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_odd$1_ω
 jmp proc_odd$1_ω
 xchain173_n26_β:
 jmp proc_odd$1_ω
proc_odd$1_β:
jmp xchain173_n6_α
proc_odd$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 640]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_odd$1_ω:
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
  .globl proc_sum$3_α
proc_sum$3_α:
#=======================================================================================================================
    .global proc_sum$3_α
    .global proc_sum$3_β
    .global proc_sum$3_γ
    .global proc_sum$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_sum$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 544], rax
 pop rsi
proc_sum$3_α_body:
 xchain223_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn225: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn225]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_sum$3_ω
 jmp xchain223_n1_α
 xchain223_n0_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain223_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain223_n2_α
 xchain223_n1_β:
 jmp xchain223_n5_α
# IR_VAR_REF
 xchain223_n2_α:
 lea rdi, [r12 + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain223_n3_α
 xchain223_n2_β:
 jmp xchain223_n5_α
 xchain223_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn231: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn231]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain223_n5_α
 jmp xchain223_n4_α
 xchain223_n3_β:
 jmp xchain223_n5_α
# IR_VAR_REF
 xchain223_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain223_n6_α
 xchain223_n4_β:
 jmp xchain223_n5_α
 xchain223_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn235: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn235]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_sum$3_ω
 jmp proc_sum$3_ω
 xchain223_n5_β:
 jmp proc_sum$3_ω
# IR_VAR_REF
 xchain223_n6_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain223_n7_α
 xchain223_n6_β:
 jmp xchain223_n5_α
 xchain223_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn239: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn239]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain223_n5_α
 jmp xchain223_n8_α
 xchain223_n7_β:
 jmp xchain223_n5_α
# IR_VAR_REF
 xchain223_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain223_n9_α
 xchain223_n8_β:
 jmp xchain223_n5_α
# IR_VAR_REF
 xchain223_n9_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain223_n10_α
 xchain223_n9_β:
 jmp xchain223_n5_α
 xchain223_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn245: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn245]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain223_n5_α
 jmp xchain223_n11_α
 xchain223_n10_β:
 jmp xchain223_n5_α
# IR_VAR_REF
 xchain223_n11_α:
 lea rdi, [r12 + 560]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain223_n12_α
 xchain223_n11_β:
 jmp xchain223_n5_α
# IR_VAR_REF
 xchain223_n12_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain223_n13_α
 xchain223_n12_β:
 jmp xchain223_n5_α
# IR_LIT_INTEGER
 xchain223_n13_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain223_n14_α
 xchain223_n13_β:
 jmp xchain223_n5_α
.Lx250_0:
 .quad 0
# IR_VAR_REF
 xchain223_n14_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain223_n15_α
 xchain223_n14_β:
 jmp xchain223_n5_α
 xchain223_n15_α:
  .section .rodata
  .Lcall135_pname: .string "sum/4"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall135_pname]
 mov esi, 4
 lea rdx, [r12 + 224]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain223_n5_α
 jmp xchain223_n16_α
xchain223_n15_β:
 lea rdi, [r12 + 224]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain223_n5_α
 jmp xchain223_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain223_n16_α:
 lea rax, [rip + xchain223_n15_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_sum$3_γ
 xchain223_n16_β:
 jmp proc_sum$3_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain223_n17_α:
 jmp qword ptr [r12 + 80]
 xchain223_n17_β:
 jmp proc_sum$3_ω
proc_sum$3_β:
jmp xchain223_n17_α
proc_sum$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 544]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_sum$3_ω:
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
  .globl proc_sum$4_α
proc_sum$4_α:
#=======================================================================================================================
    .global proc_sum$4_α
    .global proc_sum$4_β
    .global proc_sum$4_γ
    .global proc_sum$4_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_sum$4_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2224], rax
 pop rsi
proc_sum$4_α_body:
 xchain258_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn260: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn260]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain258_n1_α
 xchain258_n0_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain258_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain258_n2_α
 xchain258_n1_β:
 jmp xchain258_n7_α
# IR_LIT_STRING
 xchain258_n2_α:
 mov qword ptr [r12 + 2208], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [r12 + 2216], rax
 jmp xchain258_n3_α
 xchain258_n2_β:
 jmp proc_sum$4_ω
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "."
# IR_VAR_REF
 xchain258_n3_α:
 lea rdi, [r12 + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain258_n4_α
 xchain258_n3_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain258_n4_α:
 lea rdi, [r12 + 2272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain258_n5_α
 xchain258_n4_β:
 jmp proc_sum$4_ω
 xchain258_n5_α:
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
  .Lrkfn269: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn269]
 lea rsi, [r12 + 2160]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je xchain258_n7_α
 jmp xchain258_n6_α
 xchain258_n5_β:
 jmp xchain258_n7_α
 xchain258_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2064]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2072], rax
# marshal arg1 = producer-box slot [zr+2144] -> [zr+2080]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2088], rax
  .section .rodata
  .Lrkfn271: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 cmp eax, 99
 je xchain258_n7_α
 jmp xchain258_n8_α
 xchain258_n6_β:
 jmp xchain258_n7_α
 xchain258_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+944]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn273: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn273]
 lea rsi, [r12 + 944]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain258_n9_α
 xchain258_n7_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain258_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain258_n10_α
 xchain258_n8_β:
 jmp xchain258_n7_α
# IR_VAR_REF
 xchain258_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain258_n11_α
 xchain258_n9_β:
 jmp xchain258_n16_α
# IR_LIT_STRING
 xchain258_n10_α:
 mov qword ptr [r12 + 2032], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [r12 + 2040], rax
 jmp xchain258_n12_α
 xchain258_n10_β:
 jmp proc_sum$4_ω
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "."
# IR_LIT_STRING
 xchain258_n11_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain258_n13_α
 xchain258_n11_β:
 jmp xchain258_n16_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "[]"
# IR_VAR_REF
 xchain258_n12_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain258_n14_α
 xchain258_n12_β:
 jmp proc_sum$4_ω
 xchain258_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn283: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn283]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain258_n16_α
 jmp xchain258_n15_α
 xchain258_n13_β:
 jmp xchain258_n16_α
# IR_VAR_REF
 xchain258_n14_α:
 lea rdi, [r12 + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 jmp xchain258_n17_α
 xchain258_n14_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain258_n15_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain258_n18_α
 xchain258_n15_β:
 jmp xchain258_n16_α
 xchain258_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+592]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn289: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn289]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp xchain258_n19_α
 xchain258_n16_β:
 jmp proc_sum$4_ω
 xchain258_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+1984]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1992], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+2000]
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 2008], rax
# marshal arg2 = producer-box slot [zr+1936] -> [zr+2016]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lrkfn291: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn291]
 lea rsi, [r12 + 1984]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 cmp eax, 99
 je xchain258_n7_α
 jmp xchain258_n20_α
 xchain258_n17_β:
 jmp xchain258_n7_α
# IR_VAR_REF
 xchain258_n18_α:
 lea rdi, [r12 + 2256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain258_n21_α
 xchain258_n18_β:
 jmp xchain258_n16_α
# IR_VAR_REF
 xchain258_n19_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain258_n22_α
 xchain258_n19_β:
 jmp xchain258_n29_α
 xchain258_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1888]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1896], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1912], rax
  .section .rodata
  .Lrkfn297: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 1888]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain258_n7_α
 jmp xchain258_n23_α
 xchain258_n20_β:
 jmp xchain258_n7_α
 xchain258_n21_α:
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
  .Lrkfn299: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn299]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain258_n16_α
 jmp xchain258_n24_α
 xchain258_n21_β:
 jmp xchain258_n16_α
# IR_LIT_STRING
 xchain258_n22_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain258_n25_α
 xchain258_n22_β:
 jmp xchain258_n29_α
.Lx300_0:
 .quad .Lx300_0_s
.Lx300_0_s:
 .string "[]"
# IR_VAR_REF
 xchain258_n23_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain258_n26_α
 xchain258_n23_β:
 jmp xchain258_n7_α
# IR_VAR_REF
 xchain258_n24_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain258_n27_α
 xchain258_n24_β:
 jmp xchain258_n16_α
 xchain258_n25_α:
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
  .Lrkfn306: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn306]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n28_α
 xchain258_n25_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n26_α:
 lea rdi, [r12 + 2240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain258_n30_α
 xchain258_n26_β:
 jmp xchain258_n7_α
# IR_LIT_INTEGER
 xchain258_n27_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain258_n31_α
 xchain258_n27_β:
 jmp xchain258_n16_α
.Lx309_0:
 .quad 0
# IR_VAR_REF
 xchain258_n28_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain258_n32_α
 xchain258_n28_β:
 jmp xchain258_n29_α
 xchain258_n29_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn313: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn313]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_sum$4_ω
 jmp proc_sum$4_ω
 xchain258_n29_β:
 jmp proc_sum$4_ω
 xchain258_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1808]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1824]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn315: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn315]
 lea rsi, [r12 + 1808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 cmp eax, 99
 je xchain258_n7_α
 jmp xchain258_n33_α
 xchain258_n30_β:
 jmp xchain258_n7_α
 xchain258_n31_α:
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
  .Lrkfn317: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn317]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain258_n16_α
 jmp xchain258_n34_α
 xchain258_n31_β:
 jmp xchain258_n16_α
# IR_LIT_STRING
 xchain258_n32_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain258_n35_α
 xchain258_n32_β:
 jmp xchain258_n29_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "[]"
# IR_VAR_REF
 xchain258_n33_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain258_n36_α
 xchain258_n33_β:
 jmp xchain258_n7_α
# IR_VAR_REF
 xchain258_n34_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain258_n37_α
 xchain258_n34_β:
 jmp xchain258_n16_α
 xchain258_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn324: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn324]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n38_α
 xchain258_n35_β:
 jmp xchain258_n29_α
# IR_LIT_STRING
 xchain258_n36_α:
 mov qword ptr [r12 + 1776], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [r12 + 1784], rax
 jmp xchain258_n39_α
 xchain258_n36_β:
 jmp proc_sum$4_ω
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "."
# IR_VAR_REF
 xchain258_n37_α:
 lea rdi, [r12 + 2256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain258_n40_α
 xchain258_n37_β:
 jmp xchain258_n16_α
# IR_VAR_REF
 xchain258_n38_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain258_n41_α
 xchain258_n38_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n39_α:
 lea rdi, [r12 + 2352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain258_n42_α
 xchain258_n39_β:
 jmp proc_sum$4_ω
 xchain258_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn333: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain258_n16_α
 jmp xchain258_n43_α
 xchain258_n40_β:
 jmp xchain258_n16_α
# IR_VAR_REF
 xchain258_n41_α:
 lea rdi, [r12 + 2240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain258_n44_α
 xchain258_n41_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n42_α:
 lea rdi, [r12 + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain258_n45_α
 xchain258_n42_β:
 jmp proc_sum$4_ω
 xchain258_n43_α:
# IR_CUT
 jmp xchain258_n46_α
 xchain258_n43_β:
 jmp xchain258_n16_α
 xchain258_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn340: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn340]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n47_α
 xchain258_n44_β:
 jmp xchain258_n29_α
 xchain258_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1736], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1744]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1752], rax
# marshal arg2 = producer-box slot [zr+1680] -> [zr+1760]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1768], rax
  .section .rodata
  .Lrkfn342: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn342]
 lea rsi, [r12 + 1728]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je xchain258_n7_α
 jmp xchain258_n48_α
 xchain258_n45_β:
 jmp xchain258_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain258_n46_α:
 lea rax, [rip + xchain258_n16_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_sum$4_γ
 xchain258_n46_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain258_n47_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain258_n50_α
 xchain258_n47_β:
 jmp xchain258_n29_α
 xchain258_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn348: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn348]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain258_n7_α
 jmp xchain258_n51_α
 xchain258_n48_β:
 jmp xchain258_n7_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain258_n49_α:
 jmp qword ptr [r12 + 96]
 xchain258_n49_β:
 jmp proc_sum$4_ω
# IR_LIT_STRING
 xchain258_n50_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain258_n52_α
 xchain258_n50_β:
 jmp proc_sum$4_ω
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
 .string "."
 xchain258_n51_α:
# IR_CUT
 jmp xchain258_n53_α
 xchain258_n51_β:
 jmp xchain258_n7_α
# IR_VAR_REF
 xchain258_n52_α:
 lea rdi, [r12 + 2240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain258_n54_α
 xchain258_n52_β:
 jmp proc_sum$4_ω
# IR_VAR_REF
 xchain258_n53_α:
 lea rdi, [r12 + 2336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain258_n55_α
 xchain258_n53_β:
 jmp xchain258_n29_α
# IR_LIT_STRING
 xchain258_n54_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain258_n56_α
 xchain258_n54_β:
 jmp proc_sum$4_ω
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "[]"
# IR_VAR
 xchain258_n55_α:
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 1576], rax
 jmp xchain258_n57_α
 xchain258_n55_β:
 jmp proc_sum$4_ω
 xchain258_n56_α:
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
  .Lrkfn361: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn361]
 lea rsi, [r12 + 272]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n58_α
 xchain258_n56_β:
 jmp xchain258_n29_α
# IR_VAR
 xchain258_n57_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 1592], rax
 jmp xchain258_n59_α
 xchain258_n57_β:
 jmp proc_sum$4_ω
 xchain258_n58_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn365: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn365]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n60_α
 xchain258_n58_β:
 jmp xchain258_n29_α
 xchain258_n59_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1536]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1544], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1552]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1560], rax
  .section .rodata
  .Lrkfn367: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n61_α
 xchain258_n59_β:
 jmp xchain258_n29_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain258_n60_α:
 lea rax, [rip + xchain258_n29_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_sum$4_γ
 xchain258_n60_β:
 jmp proc_sum$4_ω
# IR_VAR
 xchain258_n61_α:
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 1608], rax
 jmp xchain258_n62_α
 xchain258_n61_β:
 jmp proc_sum$4_ω
 xchain258_n62_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1504]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lrkfn373: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn373]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n63_α
 xchain258_n62_β:
 jmp xchain258_n29_α
 xchain258_n63_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1432], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
  .section .rodata
  .Lrkfn375: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn375]
 lea rsi, [r12 + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n64_α
 xchain258_n63_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n64_α:
 lea rdi, [r12 + 2352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain258_n65_α
 xchain258_n64_β:
 jmp xchain258_n29_α
# IR_VAR
 xchain258_n65_α:
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 1384], rax
 jmp xchain258_n66_α
 xchain258_n65_β:
 jmp proc_sum$4_ω
# IR_LIT_INTEGER
 xchain258_n66_α:
 mov qword ptr [r12 + 1392], 6
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain258_n67_α
 xchain258_n66_β:
 jmp proc_sum$4_ω
.Lx380_0:
 .quad 10
 xchain258_n67_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1344]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1360]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn382: .string "$ax_mod"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn382]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n68_α
 xchain258_n67_β:
 jmp xchain258_n29_α
 xchain258_n68_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn384: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn384]
 lea rsi, [r12 + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n69_α
 xchain258_n68_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n69_α:
 lea rdi, [r12 + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain258_n70_α
 xchain258_n69_β:
 jmp xchain258_n29_α
# IR_VAR
 xchain258_n70_α:
 mov rax, qword ptr [r12 + 2336]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 2344]
 mov qword ptr [r12 + 1240], rax
 jmp xchain258_n71_α
 xchain258_n70_β:
 jmp proc_sum$4_ω
# IR_LIT_INTEGER
 xchain258_n71_α:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx389_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain258_n72_α
 xchain258_n71_β:
 jmp proc_sum$4_ω
.Lx389_0:
 .quad 10
 xchain258_n72_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn391: .string "$ax_idiv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn391]
 lea rsi, [r12 + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n73_α
 xchain258_n72_β:
 jmp xchain258_n29_α
 xchain258_n73_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn393: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n74_α
 xchain258_n73_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n74_α:
 lea rdi, [r12 + 2272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain258_n75_α
 xchain258_n74_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n75_α:
 lea rdi, [r12 + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain258_n76_α
 xchain258_n75_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n76_α:
 lea rdi, [r12 + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain258_n77_α
 xchain258_n76_β:
 jmp xchain258_n29_α
# IR_VAR_REF
 xchain258_n77_α:
 lea rdi, [r12 + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain258_n78_α
 xchain258_n77_β:
 jmp xchain258_n29_α
 xchain258_n78_α:
  .section .rodata
  .Lcall216_pname: .string "sum/4"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1088]
 mov rdx, qword ptr [r12 + 1096]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 1104]
 mov rdx, qword ptr [r12 + 1112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall216_pname]
 mov esi, 4
 lea rdx, [r12 + 1040]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n79_α
xchain258_n78_β:
 lea rdi, [r12 + 1040]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain258_n29_α
 jmp xchain258_n79_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain258_n79_α:
 lea rax, [rip + xchain258_n78_β]
 mov qword ptr [r12 + 96], rax
 jmp proc_sum$4_γ
 xchain258_n79_β:
 jmp proc_sum$4_ω
proc_sum$4_β:
jmp xchain258_n49_α
proc_sum$4_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_sum$4_ω:
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
  .globl proc_even$1_α
proc_even$1_α:
#=======================================================================================================================
    .global proc_even$1_α
    .global proc_even$1_β
    .global proc_even$1_γ
    .global proc_even$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_even$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 640], rax
 pop rsi
proc_even$1_α_body:
 xchain405_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn407: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain405_n1_α
 xchain405_n0_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain405_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain405_n2_α
 xchain405_n1_β:
 jmp xchain405_n5_α
# IR_LIT_INTEGER
 xchain405_n2_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain405_n3_α
 xchain405_n2_β:
 jmp xchain405_n5_α
.Lx410_0:
 .quad 0
 xchain405_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn412: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn412]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain405_n5_α
 jmp xchain405_n4_α
 xchain405_n3_β:
 jmp xchain405_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain405_n4_α:
 lea rax, [rip + xchain405_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_even$1_γ
 xchain405_n4_β:
 jmp proc_even$1_ω
 xchain405_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+544]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn416: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn416]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain405_n7_α
 xchain405_n5_β:
 jmp proc_even$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain405_n6_α:
 jmp qword ptr [r12 + 48]
 xchain405_n6_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain405_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain405_n8_α
 xchain405_n7_β:
 jmp xchain405_n11_α
# IR_LIT_INTEGER
 xchain405_n8_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain405_n9_α
 xchain405_n8_β:
 jmp xchain405_n11_α
.Lx421_0:
 .quad 2
 xchain405_n9_α:
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
  .Lrkfn423: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn423]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain405_n11_α
 jmp xchain405_n10_α
 xchain405_n9_β:
 jmp xchain405_n11_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain405_n10_α:
 lea rax, [rip + xchain405_n11_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_even$1_γ
 xchain405_n10_β:
 jmp proc_even$1_ω
 xchain405_n11_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn427: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn427]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain405_n12_α
 xchain405_n11_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain405_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain405_n13_α
 xchain405_n12_β:
 jmp xchain405_n16_α
# IR_LIT_INTEGER
 xchain405_n13_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain405_n14_α
 xchain405_n13_β:
 jmp xchain405_n16_α
.Lx430_0:
 .quad 4
 xchain405_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn432: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn432]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain405_n16_α
 jmp xchain405_n15_α
 xchain405_n14_β:
 jmp xchain405_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain405_n15_α:
 lea rax, [rip + xchain405_n16_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_even$1_γ
 xchain405_n15_β:
 jmp proc_even$1_ω
 xchain405_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+320]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn436: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn436]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain405_n17_α
 xchain405_n16_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain405_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain405_n18_α
 xchain405_n17_β:
 jmp xchain405_n21_α
# IR_LIT_INTEGER
 xchain405_n18_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain405_n19_α
 xchain405_n18_β:
 jmp xchain405_n21_α
.Lx439_0:
 .quad 6
 xchain405_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn441: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn441]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain405_n21_α
 jmp xchain405_n20_α
 xchain405_n19_β:
 jmp xchain405_n21_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain405_n20_α:
 lea rax, [rip + xchain405_n21_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_even$1_γ
 xchain405_n20_β:
 jmp proc_even$1_ω
 xchain405_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+208]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn445: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn445]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp xchain405_n22_α
 xchain405_n21_β:
 jmp proc_even$1_ω
# IR_VAR_REF
 xchain405_n22_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain405_n23_α
 xchain405_n22_β:
 jmp xchain405_n26_α
# IR_LIT_INTEGER
 xchain405_n23_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx448_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain405_n24_α
 xchain405_n23_β:
 jmp xchain405_n26_α
.Lx448_0:
 .quad 8
 xchain405_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn450: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn450]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain405_n26_α
 jmp xchain405_n25_α
 xchain405_n24_β:
 jmp xchain405_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain405_n25_α:
 lea rax, [rip + xchain405_n26_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_even$1_γ
 xchain405_n25_β:
 jmp proc_even$1_ω
 xchain405_n26_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn454: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn454]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_even$1_ω
 jmp proc_even$1_ω
 xchain405_n26_β:
 jmp proc_even$1_ω
proc_even$1_β:
jmp xchain405_n6_α
proc_even$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 640]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_even$1_ω:
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
  .globl proc_top$16_α
proc_top$16_α:
#=======================================================================================================================
    .global proc_top$16_α
    .global proc_top$16_β
    .global proc_top$16_γ
    .global proc_top$16_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_top$16_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 5632], rax
 pop rsi
proc_top$16_α_body:
 xchain455_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn457: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn457]
 lea rsi, [r12 + 320]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n1_α
 xchain455_n0_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain455_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5600], rax
 mov qword ptr [r12 + 5608], rdx
 jmp xchain455_n2_α
 xchain455_n1_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n2_α:
 lea rdi, [r12 + 5856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5616], rax
 mov qword ptr [r12 + 5624], rdx
 jmp xchain455_n3_α
 xchain455_n2_β:
 jmp xchain455_n5_α
 xchain455_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5568]
 mov rax, qword ptr [r12 + 5600]
 mov qword ptr [r12 + 5568], rax
 mov rax, qword ptr [r12 + 5608]
 mov qword ptr [r12 + 5576], rax
# marshal arg1 = producer-box slot [zr+5616] -> [zr+5584]
 mov rax, qword ptr [r12 + 5616]
 mov qword ptr [r12 + 5584], rax
 mov rax, qword ptr [r12 + 5624]
 mov qword ptr [r12 + 5592], rax
  .section .rodata
  .Lrkfn463: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn463]
 lea rsi, [r12 + 5568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n4_α
 xchain455_n3_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 jmp xchain455_n6_α
 xchain455_n4_β:
 jmp xchain455_n5_α
 xchain455_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+336]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn467: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn467]
 lea rsi, [r12 + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp proc_top$16_ω
 xchain455_n5_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain455_n6_α:
 lea rdi, [r12 + 5872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5536], rax
 mov qword ptr [r12 + 5544], rdx
 jmp xchain455_n7_α
 xchain455_n6_β:
 jmp xchain455_n5_α
 xchain455_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5520] -> [zr+5488]
 mov rax, qword ptr [r12 + 5520]
 mov qword ptr [r12 + 5488], rax
 mov rax, qword ptr [r12 + 5528]
 mov qword ptr [r12 + 5496], rax
# marshal arg1 = producer-box slot [zr+5536] -> [zr+5504]
 mov rax, qword ptr [r12 + 5536]
 mov qword ptr [r12 + 5504], rax
 mov rax, qword ptr [r12 + 5544]
 mov qword ptr [r12 + 5512], rax
  .section .rodata
  .Lrkfn471: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn471]
 lea rsi, [r12 + 5488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5472], rax
 mov qword ptr [r12 + 5480], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n8_α
 xchain455_n7_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5440], rax
 mov qword ptr [r12 + 5448], rdx
 jmp xchain455_n9_α
 xchain455_n8_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n9_α:
 lea rdi, [r12 + 5888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 jmp xchain455_n10_α
 xchain455_n9_β:
 jmp xchain455_n5_α
 xchain455_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5440] -> [zr+5408]
 mov rax, qword ptr [r12 + 5440]
 mov qword ptr [r12 + 5408], rax
 mov rax, qword ptr [r12 + 5448]
 mov qword ptr [r12 + 5416], rax
# marshal arg1 = producer-box slot [zr+5456] -> [zr+5424]
 mov rax, qword ptr [r12 + 5456]
 mov qword ptr [r12 + 5424], rax
 mov rax, qword ptr [r12 + 5464]
 mov qword ptr [r12 + 5432], rax
  .section .rodata
  .Lrkfn477: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn477]
 lea rsi, [r12 + 5408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5392], rax
 mov qword ptr [r12 + 5400], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n11_α
 xchain455_n10_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n11_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5360], rax
 mov qword ptr [r12 + 5368], rdx
 jmp xchain455_n12_α
 xchain455_n11_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n12_α:
 lea rdi, [r12 + 5904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5376], rax
 mov qword ptr [r12 + 5384], rdx
 jmp xchain455_n13_α
 xchain455_n12_β:
 jmp xchain455_n5_α
 xchain455_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5360] -> [zr+5328]
 mov rax, qword ptr [r12 + 5360]
 mov qword ptr [r12 + 5328], rax
 mov rax, qword ptr [r12 + 5368]
 mov qword ptr [r12 + 5336], rax
# marshal arg1 = producer-box slot [zr+5376] -> [zr+5344]
 mov rax, qword ptr [r12 + 5376]
 mov qword ptr [r12 + 5344], rax
 mov rax, qword ptr [r12 + 5384]
 mov qword ptr [r12 + 5352], rax
  .section .rodata
  .Lrkfn483: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn483]
 lea rsi, [r12 + 5328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n14_α
 xchain455_n13_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n14_α:
 lea rdi, [r12 + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5280], rax
 mov qword ptr [r12 + 5288], rdx
 jmp xchain455_n15_α
 xchain455_n14_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n15_α:
 lea rdi, [r12 + 5936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 jmp xchain455_n16_α
 xchain455_n15_β:
 jmp xchain455_n5_α
 xchain455_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5248]
 mov rax, qword ptr [r12 + 5280]
 mov qword ptr [r12 + 5248], rax
 mov rax, qword ptr [r12 + 5288]
 mov qword ptr [r12 + 5256], rax
# marshal arg1 = producer-box slot [zr+5296] -> [zr+5264]
 mov rax, qword ptr [r12 + 5296]
 mov qword ptr [r12 + 5264], rax
 mov rax, qword ptr [r12 + 5304]
 mov qword ptr [r12 + 5272], rax
  .section .rodata
  .Lrkfn489: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn489]
 lea rsi, [r12 + 5248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5232], rax
 mov qword ptr [r12 + 5240], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n17_α
 xchain455_n16_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n17_α:
 lea rdi, [r12 + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 jmp xchain455_n18_α
 xchain455_n17_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n18_α:
 lea rdi, [r12 + 5728]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5216], rax
 mov qword ptr [r12 + 5224], rdx
 jmp xchain455_n19_α
 xchain455_n18_β:
 jmp xchain455_n5_α
 xchain455_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5200] -> [zr+5168]
 mov rax, qword ptr [r12 + 5200]
 mov qword ptr [r12 + 5168], rax
 mov rax, qword ptr [r12 + 5208]
 mov qword ptr [r12 + 5176], rax
# marshal arg1 = producer-box slot [zr+5216] -> [zr+5184]
 mov rax, qword ptr [r12 + 5216]
 mov qword ptr [r12 + 5184], rax
 mov rax, qword ptr [r12 + 5224]
 mov qword ptr [r12 + 5192], rax
  .section .rodata
  .Lrkfn495: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn495]
 lea rsi, [r12 + 5168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5152], rax
 mov qword ptr [r12 + 5160], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n20_α
 xchain455_n19_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n20_α:
 lea rdi, [r12 + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 jmp xchain455_n21_α
 xchain455_n20_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n21_α:
 lea rdi, [r12 + 5744]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5136], rax
 mov qword ptr [r12 + 5144], rdx
 jmp xchain455_n22_α
 xchain455_n21_β:
 jmp xchain455_n5_α
 xchain455_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5120] -> [zr+5088]
 mov rax, qword ptr [r12 + 5120]
 mov qword ptr [r12 + 5088], rax
 mov rax, qword ptr [r12 + 5128]
 mov qword ptr [r12 + 5096], rax
# marshal arg1 = producer-box slot [zr+5136] -> [zr+5104]
 mov rax, qword ptr [r12 + 5136]
 mov qword ptr [r12 + 5104], rax
 mov rax, qword ptr [r12 + 5144]
 mov qword ptr [r12 + 5112], rax
  .section .rodata
  .Lrkfn501: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn501]
 lea rsi, [r12 + 5088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n23_α
 xchain455_n22_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n23_α:
 lea rdi, [r12 + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5040], rax
 mov qword ptr [r12 + 5048], rdx
 jmp xchain455_n24_α
 xchain455_n23_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n24_α:
 lea rdi, [r12 + 5760]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5056], rax
 mov qword ptr [r12 + 5064], rdx
 jmp xchain455_n25_α
 xchain455_n24_β:
 jmp xchain455_n5_α
 xchain455_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+5008]
 mov rax, qword ptr [r12 + 5040]
 mov qword ptr [r12 + 5008], rax
 mov rax, qword ptr [r12 + 5048]
 mov qword ptr [r12 + 5016], rax
# marshal arg1 = producer-box slot [zr+5056] -> [zr+5024]
 mov rax, qword ptr [r12 + 5056]
 mov qword ptr [r12 + 5024], rax
 mov rax, qword ptr [r12 + 5064]
 mov qword ptr [r12 + 5032], rax
  .section .rodata
  .Lrkfn507: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 5008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n26_α
 xchain455_n25_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n26_α:
 lea rdi, [r12 + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4960], rax
 mov qword ptr [r12 + 4968], rdx
 jmp xchain455_n27_α
 xchain455_n26_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n27_α:
 lea rdi, [r12 + 5776]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4976], rax
 mov qword ptr [r12 + 4984], rdx
 jmp xchain455_n28_α
 xchain455_n27_β:
 jmp xchain455_n5_α
 xchain455_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4960] -> [zr+4928]
 mov rax, qword ptr [r12 + 4960]
 mov qword ptr [r12 + 4928], rax
 mov rax, qword ptr [r12 + 4968]
 mov qword ptr [r12 + 4936], rax
# marshal arg1 = producer-box slot [zr+4976] -> [zr+4944]
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 4952], rax
  .section .rodata
  .Lrkfn513: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 4928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4912], rax
 mov qword ptr [r12 + 4920], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n29_α
 xchain455_n28_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n29_α:
 lea rdi, [r12 + 160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4880], rax
 mov qword ptr [r12 + 4888], rdx
 jmp xchain455_n30_α
 xchain455_n29_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n30_α:
 lea rdi, [r12 + 5792]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 jmp xchain455_n31_α
 xchain455_n30_β:
 jmp xchain455_n5_α
 xchain455_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4880] -> [zr+4848]
 mov rax, qword ptr [r12 + 4880]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4888]
 mov qword ptr [r12 + 4856], rax
# marshal arg1 = producer-box slot [zr+4896] -> [zr+4864]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 4864], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 4872], rax
  .section .rodata
  .Lrkfn519: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn519]
 lea rsi, [r12 + 4848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4832], rax
 mov qword ptr [r12 + 4840], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n32_α
 xchain455_n31_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n32_α:
 lea rdi, [r12 + 176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 jmp xchain455_n33_α
 xchain455_n32_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n33_α:
 lea rdi, [r12 + 5808]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4816], rax
 mov qword ptr [r12 + 4824], rdx
 jmp xchain455_n34_α
 xchain455_n33_β:
 jmp xchain455_n5_α
 xchain455_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4800] -> [zr+4768]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4768], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4776], rax
# marshal arg1 = producer-box slot [zr+4816] -> [zr+4784]
 mov rax, qword ptr [r12 + 4816]
 mov qword ptr [r12 + 4784], rax
 mov rax, qword ptr [r12 + 4824]
 mov qword ptr [r12 + 4792], rax
  .section .rodata
  .Lrkfn525: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn525]
 lea rsi, [r12 + 4768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n35_α
 xchain455_n34_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n35_α:
 lea rdi, [r12 + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4720], rax
 mov qword ptr [r12 + 4728], rdx
 jmp xchain455_n36_α
 xchain455_n35_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n36_α:
 lea rdi, [r12 + 5824]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4736], rax
 mov qword ptr [r12 + 4744], rdx
 jmp xchain455_n37_α
 xchain455_n36_β:
 jmp xchain455_n5_α
 xchain455_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4720] -> [zr+4688]
 mov rax, qword ptr [r12 + 4720]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4728]
 mov qword ptr [r12 + 4696], rax
# marshal arg1 = producer-box slot [zr+4736] -> [zr+4704]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4704], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4712], rax
  .section .rodata
  .Lrkfn531: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 4688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n38_α
 xchain455_n37_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n38_α:
 lea rdi, [r12 + 208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain455_n39_α
 xchain455_n38_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n39_α:
 lea rdi, [r12 + 5712]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain455_n40_α
 xchain455_n39_β:
 jmp xchain455_n5_α
 xchain455_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4608]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4608], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4616], rax
# marshal arg1 = producer-box slot [zr+4656] -> [zr+4624]
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4624], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4632], rax
  .section .rodata
  .Lrkfn537: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn537]
 lea rsi, [r12 + 4608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4592], rax
 mov qword ptr [r12 + 4600], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n41_α
 xchain455_n40_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n41_α:
 lea rdi, [r12 + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain455_n42_α
 xchain455_n41_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n42_α:
 lea rdi, [r12 + 5696]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 jmp xchain455_n43_α
 xchain455_n42_β:
 jmp xchain455_n5_α
 xchain455_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4560] -> [zr+4528]
 mov rax, qword ptr [r12 + 4560]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4568]
 mov qword ptr [r12 + 4536], rax
# marshal arg1 = producer-box slot [zr+4576] -> [zr+4544]
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 4544], rax
 mov rax, qword ptr [r12 + 4584]
 mov qword ptr [r12 + 4552], rax
  .section .rodata
  .Lrkfn543: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn543]
 lea rsi, [r12 + 4528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n44_α
 xchain455_n43_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n44_α:
 lea rdi, [r12 + 240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4480], rax
 mov qword ptr [r12 + 4488], rdx
 jmp xchain455_n45_α
 xchain455_n44_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n45_α:
 lea rdi, [r12 + 5680]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4496], rax
 mov qword ptr [r12 + 4504], rdx
 jmp xchain455_n46_α
 xchain455_n45_β:
 jmp xchain455_n5_α
 xchain455_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4480] -> [zr+4448]
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4456], rax
# marshal arg1 = producer-box slot [zr+4496] -> [zr+4464]
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 4472], rax
  .section .rodata
  .Lrkfn549: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn549]
 lea rsi, [r12 + 4448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n47_α
 xchain455_n46_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n47_α:
 lea rdi, [r12 + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4400], rax
 mov qword ptr [r12 + 4408], rdx
 jmp xchain455_n48_α
 xchain455_n47_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n48_α:
 lea rdi, [r12 + 5664]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain455_n49_α
 xchain455_n48_β:
 jmp xchain455_n5_α
 xchain455_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4400] -> [zr+4368]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4376], rax
# marshal arg1 = producer-box slot [zr+4416] -> [zr+4384]
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4384], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4392], rax
  .section .rodata
  .Lrkfn555: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn555]
 lea rsi, [r12 + 4368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4352], rax
 mov qword ptr [r12 + 4360], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n50_α
 xchain455_n49_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n50_α:
 lea rdi, [r12 + 5856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4336], rax
 mov qword ptr [r12 + 4344], rdx
 jmp xchain455_n51_α
 xchain455_n50_β:
 jmp xchain455_n5_α
 xchain455_n51_α:
  .section .rodata
  .Lcall296_pname: .string "odd/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4336]
 mov rdx, qword ptr [r12 + 4344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall296_pname]
 mov esi, 1
 lea rdx, [r12 + 4320]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n52_α
xchain455_n51_β:
 lea rdi, [r12 + 4320]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4288], rax
 mov qword ptr [r12 + 4296], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n52_α
# IR_VAR_REF
 xchain455_n52_α:
 lea rdi, [r12 + 5872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4272], rax
 mov qword ptr [r12 + 4280], rdx
 jmp xchain455_n53_α
 xchain455_n52_β:
 jmp xchain455_n5_α
 xchain455_n53_α:
  .section .rodata
  .Lcall298_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4272]
 mov rdx, qword ptr [r12 + 4280]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall298_pname]
 mov esi, 1
 lea rdx, [r12 + 4256]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain455_n51_β
 jmp xchain455_n54_α
xchain455_n53_β:
 lea rdi, [r12 + 4256]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je xchain455_n51_β
 jmp xchain455_n54_α
# IR_VAR_REF
 xchain455_n54_α:
 lea rdi, [r12 + 5888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain455_n55_α
 xchain455_n54_β:
 jmp xchain455_n5_α
 xchain455_n55_α:
  .section .rodata
  .Lcall300_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4208]
 mov rdx, qword ptr [r12 + 4216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall300_pname]
 mov esi, 1
 lea rdx, [r12 + 4192]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 cmp eax, 99
 je xchain455_n53_β
 jmp xchain455_n56_α
xchain455_n55_β:
 lea rdi, [r12 + 4192]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4160], rax
 mov qword ptr [r12 + 4168], rdx
 cmp eax, 99
 je xchain455_n53_β
 jmp xchain455_n56_α
# IR_VAR_REF
 xchain455_n56_α:
 lea rdi, [r12 + 5936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4144], rax
 mov qword ptr [r12 + 4152], rdx
 jmp xchain455_n57_α
 xchain455_n56_β:
 jmp xchain455_n5_α
 xchain455_n57_α:
  .section .rodata
  .Lcall302_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 4144]
 mov rdx, qword ptr [r12 + 4152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall302_pname]
 mov esi, 1
 lea rdx, [r12 + 4128]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 cmp eax, 99
 je xchain455_n55_β
 jmp xchain455_n58_α
xchain455_n57_β:
 lea rdi, [r12 + 4128]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 4096], rax
 mov qword ptr [r12 + 4104], rdx
 cmp eax, 99
 je xchain455_n55_β
 jmp xchain455_n58_α
# IR_LIT_STRING
 xchain455_n58_α:
 mov qword ptr [r12 + 3664], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [r12 + 3672], rax
 jmp xchain455_n59_α
 xchain455_n58_β:
 jmp proc_top$16_ω
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n59_α:
 lea rdi, [r12 + 5888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain455_n60_α
 xchain455_n59_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n60_α:
 mov qword ptr [r12 + 3568], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [r12 + 3576], rax
 jmp xchain455_n61_α
 xchain455_n60_β:
 jmp proc_top$16_ω
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n61_α:
 lea rdi, [r12 + 5872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3488], rax
 mov qword ptr [r12 + 3496], rdx
 jmp xchain455_n62_α
 xchain455_n61_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n62_α:
 mov qword ptr [r12 + 3472], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [r12 + 3480], rax
 jmp xchain455_n63_α
 xchain455_n62_β:
 jmp proc_top$16_ω
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n63_α:
 lea rdi, [r12 + 5856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 jmp xchain455_n64_α
 xchain455_n63_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n64_α:
 mov qword ptr [r12 + 3376], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [r12 + 3384], rax
 jmp xchain455_n65_α
 xchain455_n64_β:
 jmp proc_top$16_ω
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "[]"
 xchain455_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3472] -> [zr+3424]
 mov rax, qword ptr [r12 + 3472]
 mov qword ptr [r12 + 3424], rax
 mov rax, qword ptr [r12 + 3480]
 mov qword ptr [r12 + 3432], rax
# marshal arg1 = producer-box slot [zr+3392] -> [zr+3440]
 mov rax, qword ptr [r12 + 3392]
 mov qword ptr [r12 + 3440], rax
 mov rax, qword ptr [r12 + 3400]
 mov qword ptr [r12 + 3448], rax
# marshal arg2 = producer-box slot [zr+3376] -> [zr+3456]
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3456], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3464], rax
  .section .rodata
  .Lrkfn579: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn579]
 lea rsi, [r12 + 3424]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3408], rax
 mov qword ptr [r12 + 3416], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n66_α
 xchain455_n65_β:
 jmp proc_top$16_ω
 xchain455_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3568] -> [zr+3520]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3528], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3536]
 mov rax, qword ptr [r12 + 3488]
 mov qword ptr [r12 + 3536], rax
 mov rax, qword ptr [r12 + 3496]
 mov qword ptr [r12 + 3544], rax
# marshal arg2 = producer-box slot [zr+3408] -> [zr+3552]
 mov rax, qword ptr [r12 + 3408]
 mov qword ptr [r12 + 3552], rax
 mov rax, qword ptr [r12 + 3416]
 mov qword ptr [r12 + 3560], rax
  .section .rodata
  .Lrkfn581: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn581]
 lea rsi, [r12 + 3520]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n67_α
 xchain455_n66_β:
 jmp proc_top$16_ω
 xchain455_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3664] -> [zr+3616]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3624], rax
# marshal arg1 = producer-box slot [zr+3584] -> [zr+3632]
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3640], rax
# marshal arg2 = producer-box slot [zr+3504] -> [zr+3648]
 mov rax, qword ptr [r12 + 3504]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3512]
 mov qword ptr [r12 + 3656], rax
  .section .rodata
  .Lrkfn583: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn583]
 lea rsi, [r12 + 3616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n68_α
 xchain455_n67_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n68_α:
 lea rdi, [r12 + 5936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain455_n69_α
 xchain455_n68_β:
 jmp xchain455_n5_α
# IR_LIT_STRING
 xchain455_n69_α:
 mov qword ptr [r12 + 4080], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [r12 + 4088], rax
 jmp xchain455_n70_α
 xchain455_n69_β:
 jmp proc_top$16_ω
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n70_α:
 lea rdi, [r12 + 5776]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 jmp xchain455_n71_α
 xchain455_n70_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n71_α:
 mov qword ptr [r12 + 3984], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [r12 + 3992], rax
 jmp xchain455_n72_α
 xchain455_n71_β:
 jmp proc_top$16_ω
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n72_α:
 lea rdi, [r12 + 5760]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain455_n73_α
 xchain455_n72_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n73_α:
 mov qword ptr [r12 + 3888], 1
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain455_n74_α
 xchain455_n73_β:
 jmp proc_top$16_ω
.Lx592_0:
 .quad .Lx592_0_s
.Lx592_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n74_α:
 lea rdi, [r12 + 5744]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3808], rax
 mov qword ptr [r12 + 3816], rdx
 jmp xchain455_n75_α
 xchain455_n74_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n75_α:
 mov qword ptr [r12 + 3792], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [r12 + 3800], rax
 jmp xchain455_n76_α
 xchain455_n75_β:
 jmp proc_top$16_ω
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n76_α:
 lea rdi, [r12 + 5728]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 jmp xchain455_n77_α
 xchain455_n76_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain455_n77_α:
 lea rdi, [r12 + 5920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 jmp xchain455_n78_α
 xchain455_n77_β:
 jmp proc_top$16_ω
 xchain455_n78_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3744]
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 3744], rax
 mov rax, qword ptr [r12 + 3800]
 mov qword ptr [r12 + 3752], rax
# marshal arg1 = producer-box slot [zr+3712] -> [zr+3760]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3768], rax
# marshal arg2 = producer-box slot [zr+3696] -> [zr+3776]
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3784], rax
  .section .rodata
  .Lrkfn601: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn601]
 lea rsi, [r12 + 3744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n79_α
 xchain455_n78_β:
 jmp proc_top$16_ω
 xchain455_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3888] -> [zr+3840]
 mov rax, qword ptr [r12 + 3888]
 mov qword ptr [r12 + 3840], rax
 mov rax, qword ptr [r12 + 3896]
 mov qword ptr [r12 + 3848], rax
# marshal arg1 = producer-box slot [zr+3808] -> [zr+3856]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3864], rax
# marshal arg2 = producer-box slot [zr+3728] -> [zr+3872]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3880], rax
  .section .rodata
  .Lrkfn603: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn603]
 lea rsi, [r12 + 3840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n80_α
 xchain455_n79_β:
 jmp proc_top$16_ω
 xchain455_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3984] -> [zr+3936]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 3944], rax
# marshal arg1 = producer-box slot [zr+3904] -> [zr+3952]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3960], rax
# marshal arg2 = producer-box slot [zr+3824] -> [zr+3968]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3976], rax
  .section .rodata
  .Lrkfn605: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn605]
 lea rsi, [r12 + 3936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n81_α
 xchain455_n80_β:
 jmp proc_top$16_ω
 xchain455_n81_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4080] -> [zr+4032]
 mov rax, qword ptr [r12 + 4080]
 mov qword ptr [r12 + 4032], rax
 mov rax, qword ptr [r12 + 4088]
 mov qword ptr [r12 + 4040], rax
# marshal arg1 = producer-box slot [zr+4000] -> [zr+4048]
 mov rax, qword ptr [r12 + 4000]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 4008]
 mov qword ptr [r12 + 4056], rax
# marshal arg2 = producer-box slot [zr+3920] -> [zr+4064]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 4072], rax
  .section .rodata
  .Lrkfn607: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn607]
 lea rsi, [r12 + 4032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4016], rax
 mov qword ptr [r12 + 4024], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n82_α
 xchain455_n81_β:
 jmp xchain455_n5_α
 xchain455_n82_α:
  .section .rodata
  .Lcall327_pname: .string "mult/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3600]
 mov rdx, qword ptr [r12 + 3608]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3680]
 mov rdx, qword ptr [r12 + 3688]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 4016]
 mov rdx, qword ptr [r12 + 4024]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall327_pname]
 mov esi, 3
 lea rdx, [r12 + 3360]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 cmp eax, 99
 je xchain455_n57_β
 jmp xchain455_n83_α
xchain455_n82_β:
 lea rdi, [r12 + 3360]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 cmp eax, 99
 je xchain455_n57_β
 jmp xchain455_n83_α
# IR_VAR_REF
 xchain455_n83_α:
 lea rdi, [r12 + 5728]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain455_n84_α
 xchain455_n83_β:
 jmp xchain455_n5_α
 xchain455_n84_α:
  .section .rodata
  .Lcall329_pname: .string "lefteven/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3280]
 mov rdx, qword ptr [r12 + 3288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall329_pname]
 mov esi, 1
 lea rdx, [r12 + 3264]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 cmp eax, 99
 je xchain455_n82_β
 jmp xchain455_n85_α
xchain455_n84_β:
 lea rdi, [r12 + 3264]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3232], rax
 mov qword ptr [r12 + 3240], rdx
 cmp eax, 99
 je xchain455_n82_β
 jmp xchain455_n85_α
# IR_VAR_REF
 xchain455_n85_α:
 lea rdi, [r12 + 5744]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3216], rax
 mov qword ptr [r12 + 3224], rdx
 jmp xchain455_n86_α
 xchain455_n85_β:
 jmp xchain455_n5_α
 xchain455_n86_α:
  .section .rodata
  .Lcall331_pname: .string "odd/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3216]
 mov rdx, qword ptr [r12 + 3224]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall331_pname]
 mov esi, 1
 lea rdx, [r12 + 3200]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain455_n84_β
 jmp xchain455_n87_α
xchain455_n86_β:
 lea rdi, [r12 + 3200]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain455_n84_β
 jmp xchain455_n87_α
# IR_VAR_REF
 xchain455_n87_α:
 lea rdi, [r12 + 5760]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain455_n88_α
 xchain455_n87_β:
 jmp xchain455_n5_α
 xchain455_n88_α:
  .section .rodata
  .Lcall333_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3152]
 mov rdx, qword ptr [r12 + 3160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall333_pname]
 mov esi, 1
 lea rdx, [r12 + 3136]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 cmp eax, 99
 je xchain455_n86_β
 jmp xchain455_n89_α
xchain455_n88_β:
 lea rdi, [r12 + 3136]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 cmp eax, 99
 je xchain455_n86_β
 jmp xchain455_n89_α
# IR_VAR_REF
 xchain455_n89_α:
 lea rdi, [r12 + 5776]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3088], rax
 mov qword ptr [r12 + 3096], rdx
 jmp xchain455_n90_α
 xchain455_n89_β:
 jmp xchain455_n5_α
 xchain455_n90_α:
  .section .rodata
  .Lcall335_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3088]
 mov rdx, qword ptr [r12 + 3096]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall335_pname]
 mov esi, 1
 lea rdx, [r12 + 3072]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 cmp eax, 99
 je xchain455_n88_β
 jmp xchain455_n91_α
xchain455_n90_β:
 lea rdi, [r12 + 3072]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 cmp eax, 99
 je xchain455_n88_β
 jmp xchain455_n91_α
# IR_VAR_REF
 xchain455_n91_α:
 lea rdi, [r12 + 5920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3024], rax
 mov qword ptr [r12 + 3032], rdx
 jmp xchain455_n92_α
 xchain455_n91_β:
 jmp xchain455_n5_α
 xchain455_n92_α:
  .section .rodata
  .Lcall337_pname: .string "zero/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3024]
 mov rdx, qword ptr [r12 + 3032]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall337_pname]
 mov esi, 1
 lea rdx, [r12 + 3008]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain455_n90_β
 jmp xchain455_n93_α
xchain455_n92_β:
 lea rdi, [r12 + 3008]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain455_n90_β
 jmp xchain455_n93_α
# IR_VAR_REF
 xchain455_n93_α:
 lea rdi, [r12 + 5904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 jmp xchain455_n94_α
 xchain455_n93_β:
 jmp xchain455_n5_α
 xchain455_n94_α:
  .section .rodata
  .Lcall339_pname: .string "lefteven/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2960]
 mov rdx, qword ptr [r12 + 2968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall339_pname]
 mov esi, 1
 lea rdx, [r12 + 2944]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 cmp eax, 99
 je xchain455_n92_β
 jmp xchain455_n95_α
xchain455_n94_β:
 lea rdi, [r12 + 2944]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 cmp eax, 99
 je xchain455_n92_β
 jmp xchain455_n95_α
# IR_LIT_STRING
 xchain455_n95_α:
 mov qword ptr [r12 + 2576], 1
 mov rax, qword ptr [rip + .Lx627_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain455_n96_α
 xchain455_n95_β:
 jmp proc_top$16_ω
.Lx627_0:
 .quad .Lx627_0_s
.Lx627_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n96_α:
 lea rdi, [r12 + 5888]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 jmp xchain455_n97_α
 xchain455_n96_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n97_α:
 mov qword ptr [r12 + 2480], 1
 mov rax, qword ptr [rip + .Lx630_0]
 mov qword ptr [r12 + 2488], rax
 jmp xchain455_n98_α
 xchain455_n97_β:
 jmp proc_top$16_ω
.Lx630_0:
 .quad .Lx630_0_s
.Lx630_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n98_α:
 lea rdi, [r12 + 5872]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain455_n99_α
 xchain455_n98_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n99_α:
 mov qword ptr [r12 + 2384], 1
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain455_n100_α
 xchain455_n99_β:
 jmp proc_top$16_ω
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n100_α:
 lea rdi, [r12 + 5856]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain455_n101_α
 xchain455_n100_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n101_α:
 mov qword ptr [r12 + 2288], 1
 mov rax, qword ptr [rip + .Lx636_0]
 mov qword ptr [r12 + 2296], rax
 jmp xchain455_n102_α
 xchain455_n101_β:
 jmp proc_top$16_ω
.Lx636_0:
 .quad .Lx636_0_s
.Lx636_0_s:
 .string "[]"
 xchain455_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2336]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2344], rax
# marshal arg1 = producer-box slot [zr+2304] -> [zr+2352]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2360], rax
# marshal arg2 = producer-box slot [zr+2288] -> [zr+2368]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2368], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2376], rax
  .section .rodata
  .Lrkfn638: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn638]
 lea rsi, [r12 + 2336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n103_α
 xchain455_n102_β:
 jmp proc_top$16_ω
 xchain455_n103_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2432]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2440], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2448]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2456], rax
# marshal arg2 = producer-box slot [zr+2320] -> [zr+2464]
 mov rax, qword ptr [r12 + 2320]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2328]
 mov qword ptr [r12 + 2472], rax
  .section .rodata
  .Lrkfn640: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn640]
 lea rsi, [r12 + 2432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n104_α
 xchain455_n103_β:
 jmp proc_top$16_ω
 xchain455_n104_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2528]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2536], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2544]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2552], rax
# marshal arg2 = producer-box slot [zr+2416] -> [zr+2560]
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2568], rax
  .section .rodata
  .Lrkfn642: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn642]
 lea rsi, [r12 + 2528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n105_α
 xchain455_n104_β:
 jmp xchain455_n5_α
# IR_VAR_REF
 xchain455_n105_α:
 lea rdi, [r12 + 5904]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 jmp xchain455_n106_α
 xchain455_n105_β:
 jmp xchain455_n5_α
# IR_LIT_STRING
 xchain455_n106_α:
 mov qword ptr [r12 + 2896], 1
 mov rax, qword ptr [rip + .Lx645_0]
 mov qword ptr [r12 + 2904], rax
 jmp xchain455_n107_α
 xchain455_n106_β:
 jmp proc_top$16_ω
.Lx645_0:
 .quad .Lx645_0_s
.Lx645_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n107_α:
 lea rdi, [r12 + 5824]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain455_n108_α
 xchain455_n107_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n108_α:
 mov qword ptr [r12 + 2800], 1
 mov rax, qword ptr [rip + .Lx648_0]
 mov qword ptr [r12 + 2808], rax
 jmp xchain455_n109_α
 xchain455_n108_β:
 jmp proc_top$16_ω
.Lx648_0:
 .quad .Lx648_0_s
.Lx648_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n109_α:
 lea rdi, [r12 + 5808]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 jmp xchain455_n110_α
 xchain455_n109_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n110_α:
 mov qword ptr [r12 + 2704], 1
 mov rax, qword ptr [rip + .Lx651_0]
 mov qword ptr [r12 + 2712], rax
 jmp xchain455_n111_α
 xchain455_n110_β:
 jmp proc_top$16_ω
.Lx651_0:
 .quad .Lx651_0_s
.Lx651_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n111_α:
 lea rdi, [r12 + 5792]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 jmp xchain455_n112_α
 xchain455_n111_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain455_n112_α:
 lea rdi, [r12 + 5840]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2608], rax
 mov qword ptr [r12 + 2616], rdx
 jmp xchain455_n113_α
 xchain455_n112_β:
 jmp proc_top$16_ω
 xchain455_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2664], rax
# marshal arg1 = producer-box slot [zr+2624] -> [zr+2672]
 mov rax, qword ptr [r12 + 2624]
 mov qword ptr [r12 + 2672], rax
 mov rax, qword ptr [r12 + 2632]
 mov qword ptr [r12 + 2680], rax
# marshal arg2 = producer-box slot [zr+2608] -> [zr+2688]
 mov rax, qword ptr [r12 + 2608]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2616]
 mov qword ptr [r12 + 2696], rax
  .section .rodata
  .Lrkfn657: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn657]
 lea rsi, [r12 + 2656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2640], rax
 mov qword ptr [r12 + 2648], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n114_α
 xchain455_n113_β:
 jmp proc_top$16_ω
 xchain455_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2752]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2760], rax
# marshal arg1 = producer-box slot [zr+2720] -> [zr+2768]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2776], rax
# marshal arg2 = producer-box slot [zr+2640] -> [zr+2784]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2792], rax
  .section .rodata
  .Lrkfn659: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn659]
 lea rsi, [r12 + 2752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2736], rax
 mov qword ptr [r12 + 2744], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n115_α
 xchain455_n114_β:
 jmp proc_top$16_ω
 xchain455_n115_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2848]
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 2856], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2864]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2872], rax
# marshal arg2 = producer-box slot [zr+2736] -> [zr+2880]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2888], rax
  .section .rodata
  .Lrkfn661: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn661]
 lea rsi, [r12 + 2848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n116_α
 xchain455_n115_β:
 jmp xchain455_n5_α
 xchain455_n116_α:
  .section .rodata
  .Lcall361_pname: .string "mult/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2512]
 mov rdx, qword ptr [r12 + 2520]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2592]
 mov rdx, qword ptr [r12 + 2600]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2832]
 mov rdx, qword ptr [r12 + 2840]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall361_pname]
 mov esi, 3
 lea rdx, [r12 + 2272]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain455_n94_β
 jmp xchain455_n117_α
xchain455_n116_β:
 lea rdi, [r12 + 2272]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je xchain455_n94_β
 jmp xchain455_n117_α
# IR_VAR_REF
 xchain455_n117_α:
 lea rdi, [r12 + 5792]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain455_n118_α
 xchain455_n117_β:
 jmp xchain455_n5_α
 xchain455_n118_α:
  .section .rodata
  .Lcall363_pname: .string "lefteven/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall363_pname]
 mov esi, 1
 lea rdx, [r12 + 2176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je xchain455_n116_β
 jmp xchain455_n119_α
xchain455_n118_β:
 lea rdi, [r12 + 2176]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 cmp eax, 99
 je xchain455_n116_β
 jmp xchain455_n119_α
# IR_VAR_REF
 xchain455_n119_α:
 lea rdi, [r12 + 5808]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain455_n120_α
 xchain455_n119_β:
 jmp xchain455_n5_α
 xchain455_n120_α:
  .section .rodata
  .Lcall365_pname: .string "odd/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall365_pname]
 mov esi, 1
 lea rdx, [r12 + 2112]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 cmp eax, 99
 je xchain455_n118_β
 jmp xchain455_n121_α
xchain455_n120_β:
 lea rdi, [r12 + 2112]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 cmp eax, 99
 je xchain455_n118_β
 jmp xchain455_n121_α
# IR_VAR_REF
 xchain455_n121_α:
 lea rdi, [r12 + 5824]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain455_n122_α
 xchain455_n121_β:
 jmp xchain455_n5_α
 xchain455_n122_α:
  .section .rodata
  .Lcall367_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2064]
 mov rdx, qword ptr [r12 + 2072]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall367_pname]
 mov esi, 1
 lea rdx, [r12 + 2048]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain455_n120_β
 jmp xchain455_n123_α
xchain455_n122_β:
 lea rdi, [r12 + 2048]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain455_n120_β
 jmp xchain455_n123_α
# IR_VAR_REF
 xchain455_n123_α:
 lea rdi, [r12 + 5840]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain455_n124_α
 xchain455_n123_β:
 jmp xchain455_n5_α
 xchain455_n124_α:
  .section .rodata
  .Lcall369_pname: .string "zero/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2000]
 mov rdx, qword ptr [r12 + 2008]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall369_pname]
 mov esi, 1
 lea rdx, [r12 + 1984]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain455_n122_β
 jmp xchain455_n125_α
xchain455_n124_β:
 lea rdi, [r12 + 1984]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain455_n122_β
 jmp xchain455_n125_α
# IR_LIT_STRING
 xchain455_n125_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx675_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain455_n126_α
 xchain455_n125_β:
 jmp proc_top$16_ω
.Lx675_0:
 .quad .Lx675_0_s
.Lx675_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n126_α:
 lea rdi, [r12 + 5776]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain455_n127_α
 xchain455_n126_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n127_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx678_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain455_n128_α
 xchain455_n127_β:
 jmp proc_top$16_ω
.Lx678_0:
 .quad .Lx678_0_s
.Lx678_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n128_α:
 lea rdi, [r12 + 5760]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain455_n129_α
 xchain455_n128_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n129_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx681_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain455_n130_α
 xchain455_n129_β:
 jmp proc_top$16_ω
.Lx681_0:
 .quad .Lx681_0_s
.Lx681_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n130_α:
 lea rdi, [r12 + 5744]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain455_n131_α
 xchain455_n130_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n131_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx684_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain455_n132_α
 xchain455_n131_β:
 jmp proc_top$16_ω
.Lx684_0:
 .quad .Lx684_0_s
.Lx684_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n132_α:
 lea rdi, [r12 + 5728]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain455_n133_α
 xchain455_n132_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n133_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx687_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain455_n134_α
 xchain455_n133_β:
 jmp proc_top$16_ω
.Lx687_0:
 .quad .Lx687_0_s
.Lx687_0_s:
 .string "[]"
 xchain455_n134_α:
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
# marshal arg2 = producer-box slot [zr+752] -> [zr+832]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn689: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn689]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n135_α
 xchain455_n134_β:
 jmp proc_top$16_ω
 xchain455_n135_α:
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
  .Lrkfn691: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn691]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n136_α
 xchain455_n135_β:
 jmp proc_top$16_ω
 xchain455_n136_α:
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
  .Lrkfn693: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn693]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n137_α
 xchain455_n136_β:
 jmp proc_top$16_ω
 xchain455_n137_α:
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
  .Lrkfn695: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn695]
 lea rsi, [r12 + 1088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n138_α
 xchain455_n137_β:
 jmp xchain455_n5_α
# IR_LIT_STRING
 xchain455_n138_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx696_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain455_n139_α
 xchain455_n138_β:
 jmp proc_top$16_ω
.Lx696_0:
 .quad .Lx696_0_s
.Lx696_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain455_n139_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx697_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain455_n140_α
 xchain455_n139_β:
 jmp proc_top$16_ω
.Lx697_0:
 .quad 0
# IR_LIT_STRING
 xchain455_n140_α:
 mov qword ptr [r12 + 1440], 1
 mov rax, qword ptr [rip + .Lx698_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain455_n141_α
 xchain455_n140_β:
 jmp proc_top$16_ω
.Lx698_0:
 .quad .Lx698_0_s
.Lx698_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n141_α:
 lea rdi, [r12 + 5824]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain455_n142_α
 xchain455_n141_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n142_α:
 mov qword ptr [r12 + 1344], 1
 mov rax, qword ptr [rip + .Lx701_0]
 mov qword ptr [r12 + 1352], rax
 jmp xchain455_n143_α
 xchain455_n142_β:
 jmp proc_top$16_ω
.Lx701_0:
 .quad .Lx701_0_s
.Lx701_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n143_α:
 lea rdi, [r12 + 5808]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain455_n144_α
 xchain455_n143_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n144_α:
 mov qword ptr [r12 + 1248], 1
 mov rax, qword ptr [rip + .Lx704_0]
 mov qword ptr [r12 + 1256], rax
 jmp xchain455_n145_α
 xchain455_n144_β:
 jmp proc_top$16_ω
.Lx704_0:
 .quad .Lx704_0_s
.Lx704_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n145_α:
 lea rdi, [r12 + 5792]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain455_n146_α
 xchain455_n145_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n146_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx707_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain455_n147_α
 xchain455_n146_β:
 jmp proc_top$16_ω
.Lx707_0:
 .quad .Lx707_0_s
.Lx707_0_s:
 .string "[]"
 xchain455_n147_α:
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
  .Lrkfn709: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn709]
 lea rsi, [r12 + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n148_α
 xchain455_n147_β:
 jmp proc_top$16_ω
 xchain455_n148_α:
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
  .Lrkfn711: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn711]
 lea rsi, [r12 + 1296]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n149_α
 xchain455_n148_β:
 jmp proc_top$16_ω
 xchain455_n149_α:
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
  .Lrkfn713: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn713]
 lea rsi, [r12 + 1392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n150_α
 xchain455_n149_β:
 jmp proc_top$16_ω
 xchain455_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1504]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1512], rax
# marshal arg2 = producer-box slot [zr+1376] -> [zr+1520]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn715: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn715]
 lea rsi, [r12 + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n151_α
 xchain455_n150_β:
 jmp xchain455_n5_α
# IR_LIT_STRING
 xchain455_n151_α:
 mov qword ptr [r12 + 1936], 1
 mov rax, qword ptr [rip + .Lx716_0]
 mov qword ptr [r12 + 1944], rax
 jmp xchain455_n152_α
 xchain455_n151_β:
 jmp proc_top$16_ω
.Lx716_0:
 .quad .Lx716_0_s
.Lx716_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n152_α:
 lea rdi, [r12 + 5664]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 jmp xchain455_n153_α
 xchain455_n152_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n153_α:
 mov qword ptr [r12 + 1840], 1
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [r12 + 1848], rax
 jmp xchain455_n154_α
 xchain455_n153_β:
 jmp proc_top$16_ω
.Lx719_0:
 .quad .Lx719_0_s
.Lx719_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n154_α:
 lea rdi, [r12 + 5680]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain455_n155_α
 xchain455_n154_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n155_α:
 mov qword ptr [r12 + 1744], 1
 mov rax, qword ptr [rip + .Lx722_0]
 mov qword ptr [r12 + 1752], rax
 jmp xchain455_n156_α
 xchain455_n155_β:
 jmp proc_top$16_ω
.Lx722_0:
 .quad .Lx722_0_s
.Lx722_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n156_α:
 lea rdi, [r12 + 5696]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain455_n157_α
 xchain455_n156_β:
 jmp proc_top$16_ω
# IR_LIT_STRING
 xchain455_n157_α:
 mov qword ptr [r12 + 1648], 1
 mov rax, qword ptr [rip + .Lx725_0]
 mov qword ptr [r12 + 1656], rax
 jmp xchain455_n158_α
 xchain455_n157_β:
 jmp proc_top$16_ω
.Lx725_0:
 .quad .Lx725_0_s
.Lx725_0_s:
 .string "."
# IR_VAR_REF
 xchain455_n158_α:
 lea rdi, [r12 + 5712]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain455_n159_α
 xchain455_n158_β:
 jmp proc_top$16_ω
# IR_VAR_REF
 xchain455_n159_α:
 lea rdi, [r12 + 5648]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain455_n160_α
 xchain455_n159_β:
 jmp proc_top$16_ω
 xchain455_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1616]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1624], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1632]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn731: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn731]
 lea rsi, [r12 + 1600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n161_α
 xchain455_n160_β:
 jmp proc_top$16_ω
 xchain455_n161_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1704], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1712]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1720], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1728]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1736], rax
  .section .rodata
  .Lrkfn733: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn733]
 lea rsi, [r12 + 1696]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n162_α
 xchain455_n161_β:
 jmp proc_top$16_ω
 xchain455_n162_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1800], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1808]
 mov rax, qword ptr [r12 + 1760]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1768]
 mov qword ptr [r12 + 1816], rax
# marshal arg2 = producer-box slot [zr+1680] -> [zr+1824]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn735: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn735]
 lea rsi, [r12 + 1792]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je proc_top$16_ω
 jmp xchain455_n163_α
 xchain455_n162_β:
 jmp proc_top$16_ω
 xchain455_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [r12 + 1936]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1944]
 mov qword ptr [r12 + 1896], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1904]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1912], rax
# marshal arg2 = producer-box slot [zr+1776] -> [zr+1920]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1928], rax
  .section .rodata
  .Lrkfn737: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn737]
 lea rsi, [r12 + 1888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n164_α
 xchain455_n163_β:
 jmp xchain455_n5_α
 xchain455_n164_α:
  .section .rodata
  .Lcall409_pname: .string "sum/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1072]
 mov rdx, qword ptr [r12 + 1080]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1472]
 mov rdx, qword ptr [r12 + 1480]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1872]
 mov rdx, qword ptr [r12 + 1880]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall409_pname]
 mov esi, 3
 lea rdx, [r12 + 736]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain455_n124_β
 jmp xchain455_n165_α
xchain455_n164_β:
 lea rdi, [r12 + 736]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain455_n124_β
 jmp xchain455_n165_α
# IR_VAR_REF
 xchain455_n165_α:
 lea rdi, [r12 + 5712]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain455_n166_α
 xchain455_n165_β:
 jmp xchain455_n5_α
 xchain455_n166_α:
  .section .rodata
  .Lcall411_pname: .string "odd/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall411_pname]
 mov esi, 1
 lea rdx, [r12 + 640]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain455_n164_β
 jmp xchain455_n167_α
xchain455_n166_β:
 lea rdi, [r12 + 640]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain455_n164_β
 jmp xchain455_n167_α
# IR_VAR_REF
 xchain455_n167_α:
 lea rdi, [r12 + 5696]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain455_n168_α
 xchain455_n167_β:
 jmp xchain455_n5_α
 xchain455_n168_α:
  .section .rodata
  .Lcall413_pname: .string "odd/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall413_pname]
 mov esi, 1
 lea rdx, [r12 + 576]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain455_n166_β
 jmp xchain455_n169_α
xchain455_n168_β:
 lea rdi, [r12 + 576]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain455_n166_β
 jmp xchain455_n169_α
# IR_VAR_REF
 xchain455_n169_α:
 lea rdi, [r12 + 5680]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain455_n170_α
 xchain455_n169_β:
 jmp xchain455_n5_α
 xchain455_n170_α:
  .section .rodata
  .Lcall415_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall415_pname]
 mov esi, 1
 lea rdx, [r12 + 512]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain455_n168_β
 jmp xchain455_n171_α
xchain455_n170_β:
 lea rdi, [r12 + 512]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain455_n168_β
 jmp xchain455_n171_α
# IR_VAR_REF
 xchain455_n171_α:
 lea rdi, [r12 + 5664]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain455_n172_α
 xchain455_n171_β:
 jmp xchain455_n5_α
 xchain455_n172_α:
  .section .rodata
  .Lcall417_pname: .string "even/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 464]
 mov rdx, qword ptr [r12 + 472]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall417_pname]
 mov esi, 1
 lea rdx, [r12 + 448]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain455_n170_β
 jmp xchain455_n173_α
xchain455_n172_β:
 lea rdi, [r12 + 448]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain455_n170_β
 jmp xchain455_n173_α
# IR_VAR_REF
 xchain455_n173_α:
 lea rdi, [r12 + 5648]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain455_n174_α
 xchain455_n173_β:
 jmp xchain455_n5_α
 xchain455_n174_α:
  .section .rodata
  .Lcall419_pname: .string "zero/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall419_pname]
 mov esi, 1
 lea rdx, [r12 + 384]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain455_n172_β
 jmp xchain455_n175_α
xchain455_n174_β:
 lea rdi, [r12 + 384]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain455_n172_β
 jmp xchain455_n175_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n175_α:
 lea rax, [rip + xchain455_n174_β]
 mov qword ptr [r12 + 288], rax
 jmp proc_top$16_γ
 xchain455_n175_β:
 jmp proc_top$16_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain455_n176_α:
 jmp qword ptr [r12 + 288]
 xchain455_n176_β:
 jmp proc_top$16_ω
proc_top$16_β:
jmp xchain455_n176_α
proc_top$16_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 5632]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_top$16_ω:
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
  .globl proc_lefteven$1_α
proc_lefteven$1_α:
#=======================================================================================================================
    .global proc_lefteven$1_α
    .global proc_lefteven$1_β
    .global proc_lefteven$1_γ
    .global proc_lefteven$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_lefteven$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 528], rax
 pop rsi
proc_lefteven$1_α_body:
 xchain758_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn760: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn760]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain758_n1_α
 xchain758_n0_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain758_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain758_n2_α
 xchain758_n1_β:
 jmp xchain758_n5_α
# IR_LIT_INTEGER
 xchain758_n2_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx763_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain758_n3_α
 xchain758_n2_β:
 jmp xchain758_n5_α
.Lx763_0:
 .quad 2
 xchain758_n3_α:
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
  .Lrkfn765: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn765]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain758_n5_α
 jmp xchain758_n4_α
 xchain758_n3_β:
 jmp xchain758_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain758_n4_α:
 lea rax, [rip + xchain758_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_lefteven$1_γ
 xchain758_n4_β:
 jmp proc_lefteven$1_ω
 xchain758_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn769: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn769]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain758_n7_α
 xchain758_n5_β:
 jmp proc_lefteven$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain758_n6_α:
 jmp qword ptr [r12 + 48]
 xchain758_n6_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain758_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain758_n8_α
 xchain758_n7_β:
 jmp xchain758_n11_α
# IR_LIT_INTEGER
 xchain758_n8_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx774_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain758_n9_α
 xchain758_n8_β:
 jmp xchain758_n11_α
.Lx774_0:
 .quad 4
 xchain758_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn776: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn776]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain758_n11_α
 jmp xchain758_n10_α
 xchain758_n9_β:
 jmp xchain758_n11_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain758_n10_α:
 lea rax, [rip + xchain758_n11_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_lefteven$1_γ
 xchain758_n10_β:
 jmp proc_lefteven$1_ω
 xchain758_n11_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+320]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn780: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn780]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain758_n12_α
 xchain758_n11_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain758_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain758_n13_α
 xchain758_n12_β:
 jmp xchain758_n16_α
# IR_LIT_INTEGER
 xchain758_n13_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx783_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain758_n14_α
 xchain758_n13_β:
 jmp xchain758_n16_α
.Lx783_0:
 .quad 6
 xchain758_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn785: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn785]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain758_n16_α
 jmp xchain758_n15_α
 xchain758_n14_β:
 jmp xchain758_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain758_n15_α:
 lea rax, [rip + xchain758_n16_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_lefteven$1_γ
 xchain758_n15_β:
 jmp proc_lefteven$1_ω
 xchain758_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+208]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn789: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn789]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp xchain758_n17_α
 xchain758_n16_β:
 jmp proc_lefteven$1_ω
# IR_VAR_REF
 xchain758_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain758_n18_α
 xchain758_n17_β:
 jmp xchain758_n21_α
# IR_LIT_INTEGER
 xchain758_n18_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx792_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain758_n19_α
 xchain758_n18_β:
 jmp xchain758_n21_α
.Lx792_0:
 .quad 8
 xchain758_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn794: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn794]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain758_n21_α
 jmp xchain758_n20_α
 xchain758_n19_β:
 jmp xchain758_n21_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain758_n20_α:
 lea rax, [rip + xchain758_n21_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_lefteven$1_γ
 xchain758_n20_β:
 jmp proc_lefteven$1_ω
 xchain758_n21_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn798: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn798]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_lefteven$1_ω
 jmp proc_lefteven$1_ω
 xchain758_n21_β:
 jmp proc_lefteven$1_ω
proc_lefteven$1_β:
jmp xchain758_n6_α
proc_lefteven$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 528]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_lefteven$1_ω:
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
  .globl proc_zero$1_α
proc_zero$1_α:
#=======================================================================================================================
    .global proc_zero$1_α
    .global proc_zero$1_β
    .global proc_zero$1_γ
    .global proc_zero$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_zero$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 464], rax
 pop rsi
proc_zero$1_α_body:
 xchain799_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn801: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn801]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain799_n1_α
 xchain799_n0_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain799_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain799_n2_α
 xchain799_n1_β:
 jmp xchain799_n5_α
# IR_LIT_STRING
 xchain799_n2_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx804_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain799_n3_α
 xchain799_n2_β:
 jmp xchain799_n5_α
.Lx804_0:
 .quad .Lx804_0_s
.Lx804_0_s:
 .string "[]"
 xchain799_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn806: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn806]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain799_n5_α
 jmp xchain799_n4_α
 xchain799_n3_β:
 jmp xchain799_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain799_n4_α:
 lea rax, [rip + xchain799_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_zero$1_γ
 xchain799_n4_β:
 jmp proc_zero$1_ω
 xchain799_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+368]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn810: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn810]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp xchain799_n7_α
 xchain799_n5_β:
 jmp proc_zero$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain799_n6_α:
 jmp qword ptr [r12 + 48]
 xchain799_n6_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain799_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain799_n8_α
 xchain799_n7_β:
 jmp xchain799_n13_α
# IR_LIT_STRING
 xchain799_n8_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx815_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain799_n9_α
 xchain799_n8_β:
 jmp proc_zero$1_ω
.Lx815_0:
 .quad .Lx815_0_s
.Lx815_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain799_n9_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx816_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain799_n10_α
 xchain799_n9_β:
 jmp proc_zero$1_ω
.Lx816_0:
 .quad 0
# IR_VAR_REF
 xchain799_n10_α:
 lea rdi, [r12 + 480]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain799_n11_α
 xchain799_n10_β:
 jmp proc_zero$1_ω
 xchain799_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+304]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 312], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+320]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn820: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn820]
 lea rsi, [r12 + 288]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain799_n13_α
 jmp xchain799_n12_α
 xchain799_n11_β:
 jmp xchain799_n13_α
 xchain799_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn822: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn822]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain799_n13_α
 jmp xchain799_n14_α
 xchain799_n12_β:
 jmp xchain799_n13_α
 xchain799_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn824: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn824]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_zero$1_ω
 jmp proc_zero$1_ω
 xchain799_n13_β:
 jmp proc_zero$1_ω
# IR_VAR_REF
 xchain799_n14_α:
 lea rdi, [r12 + 480]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain799_n15_α
 xchain799_n14_β:
 jmp xchain799_n13_α
 xchain799_n15_α:
  .section .rodata
  .Lcall459_pname: .string "zero/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall459_pname]
 mov esi, 1
 lea rdx, [r12 + 144]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain799_n13_α
 jmp xchain799_n16_α
xchain799_n15_β:
 lea rdi, [r12 + 144]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain799_n13_α
 jmp xchain799_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain799_n16_α:
 lea rax, [rip + xchain799_n15_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_zero$1_γ
 xchain799_n16_β:
 jmp proc_zero$1_ω
proc_zero$1_β:
jmp xchain799_n6_α
proc_zero$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 464]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_zero$1_ω:
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
  .Lstartup_pname0: .string "mult/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_mult$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 608
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "mult/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_mult$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2304
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "odd/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_odd$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 656
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "sum/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_sum$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 608
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname4: .string "sum/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_sum$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2400
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname5: .string "even/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_even$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 656
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname6: .string "top/16"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_top$16_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 16
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 5952
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname7: .string "lefteven/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_lefteven$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 544
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname8: .string "zero/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_zero$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 496
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
 mov qword ptr [r12 + 2272], rax
 pop rsi
main_α_body:
 xchain830_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn832: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn832]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n1_α
 xchain830_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain830_n1_α:
 lea rdi, [r12 + 2528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain830_n2_α
 xchain830_n1_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n2_α:
 lea rdi, [r12 + 2512]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 jmp xchain830_n3_α
 xchain830_n2_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n3_α:
 lea rdi, [r12 + 2496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain830_n4_α
 xchain830_n3_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n4_α:
 lea rdi, [r12 + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain830_n5_α
 xchain830_n4_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n5_α:
 lea rdi, [r12 + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2080], rax
 mov qword ptr [r12 + 2088], rdx
 jmp xchain830_n6_α
 xchain830_n5_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n6_α:
 lea rdi, [r12 + 2448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 jmp xchain830_n7_α
 xchain830_n6_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n7_α:
 lea rdi, [r12 + 2432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain830_n8_α
 xchain830_n7_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n8_α:
 lea rdi, [r12 + 2416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2128], rax
 mov qword ptr [r12 + 2136], rdx
 jmp xchain830_n9_α
 xchain830_n8_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n9_α:
 lea rdi, [r12 + 2400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain830_n10_α
 xchain830_n9_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n10_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain830_n11_α
 xchain830_n10_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n11_α:
 lea rdi, [r12 + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 jmp xchain830_n12_α
 xchain830_n11_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n12_α:
 lea rdi, [r12 + 2352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 jmp xchain830_n13_α
 xchain830_n12_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n13_α:
 lea rdi, [r12 + 2336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain830_n14_α
 xchain830_n13_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n14_α:
 lea rdi, [r12 + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain830_n15_α
 xchain830_n14_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n15_α:
 lea rdi, [r12 + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain830_n16_α
 xchain830_n15_β:
 jmp xchain830_n19_α
# IR_VAR_REF
 xchain830_n16_α:
 lea rdi, [r12 + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 jmp xchain830_n17_α
 xchain830_n16_β:
 jmp xchain830_n19_α
 xchain830_n17_α:
  .section .rodata
  .Lcall478_pname: .string "top/16"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2016]
 mov rdx, qword ptr [r12 + 2024]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2032]
 mov rdx, qword ptr [r12 + 2040]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2048]
 mov rdx, qword ptr [r12 + 2056]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 2064]
 mov rdx, qword ptr [r12 + 2072]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [r12 + 2080]
 mov rdx, qword ptr [r12 + 2088]
 call rt_arg_stage@PLT
 mov edi, 5
 mov rsi, qword ptr [r12 + 2096]
 mov rdx, qword ptr [r12 + 2104]
 call rt_arg_stage@PLT
 mov edi, 6
 mov rsi, qword ptr [r12 + 2112]
 mov rdx, qword ptr [r12 + 2120]
 call rt_arg_stage@PLT
 mov edi, 7
 mov rsi, qword ptr [r12 + 2128]
 mov rdx, qword ptr [r12 + 2136]
 call rt_arg_stage@PLT
 mov edi, 8
 mov rsi, qword ptr [r12 + 2144]
 mov rdx, qword ptr [r12 + 2152]
 call rt_arg_stage@PLT
 mov edi, 9
 mov rsi, qword ptr [r12 + 2160]
 mov rdx, qword ptr [r12 + 2168]
 call rt_arg_stage@PLT
 mov edi, 10
 mov rsi, qword ptr [r12 + 2176]
 mov rdx, qword ptr [r12 + 2184]
 call rt_arg_stage@PLT
 mov edi, 11
 mov rsi, qword ptr [r12 + 2192]
 mov rdx, qword ptr [r12 + 2200]
 call rt_arg_stage@PLT
 mov edi, 12
 mov rsi, qword ptr [r12 + 2208]
 mov rdx, qword ptr [r12 + 2216]
 call rt_arg_stage@PLT
 mov edi, 13
 mov rsi, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 call rt_arg_stage@PLT
 mov edi, 14
 mov rsi, qword ptr [r12 + 2240]
 mov rdx, qword ptr [r12 + 2248]
 call rt_arg_stage@PLT
 mov edi, 15
 mov rsi, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall478_pname]
 mov esi, 16
 lea rdx, [r12 + 2000]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain830_n19_α
 jmp xchain830_n18_α
xchain830_n17_β:
 lea rdi, [r12 + 2000]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain830_n19_α
 jmp xchain830_n18_α
# IR_LIT_STRING
 xchain830_n18_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx866_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain830_n20_α
 xchain830_n18_β:
 jmp main_ω
.Lx866_0:
 .quad .Lx866_0_s
.Lx866_0_s:
 .string "."
 xchain830_n19_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn868: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn868]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain830_n19_β:
 jmp main_ω
# IR_VAR_REF
 xchain830_n20_α:
 lea rdi, [r12 + 2528]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain830_n21_α
 xchain830_n20_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n21_α:
 mov qword ptr [r12 + 1616], 1
 mov rax, qword ptr [rip + .Lx871_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain830_n22_α
 xchain830_n21_β:
 jmp main_ω
.Lx871_0:
 .quad .Lx871_0_s
.Lx871_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n22_α:
 lea rdi, [r12 + 2512]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain830_n23_α
 xchain830_n22_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n23_α:
 mov qword ptr [r12 + 1520], 1
 mov rax, qword ptr [rip + .Lx874_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain830_n24_α
 xchain830_n23_β:
 jmp main_ω
.Lx874_0:
 .quad .Lx874_0_s
.Lx874_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n24_α:
 lea rdi, [r12 + 2496]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain830_n25_α
 xchain830_n24_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n25_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx877_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain830_n26_α
 xchain830_n25_β:
 jmp main_ω
.Lx877_0:
 .quad .Lx877_0_s
.Lx877_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n26_α:
 lea rdi, [r12 + 2480]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain830_n27_α
 xchain830_n26_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n27_α:
 mov qword ptr [r12 + 1328], 1
 mov rax, qword ptr [rip + .Lx880_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain830_n28_α
 xchain830_n27_β:
 jmp main_ω
.Lx880_0:
 .quad .Lx880_0_s
.Lx880_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n28_α:
 lea rdi, [r12 + 2464]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain830_n29_α
 xchain830_n28_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n29_α:
 mov qword ptr [r12 + 1232], 1
 mov rax, qword ptr [rip + .Lx883_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain830_n30_α
 xchain830_n29_β:
 jmp main_ω
.Lx883_0:
 .quad .Lx883_0_s
.Lx883_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n30_α:
 lea rdi, [r12 + 2448]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain830_n31_α
 xchain830_n30_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n31_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx886_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain830_n32_α
 xchain830_n31_β:
 jmp main_ω
.Lx886_0:
 .quad .Lx886_0_s
.Lx886_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n32_α:
 lea rdi, [r12 + 2432]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain830_n33_α
 xchain830_n32_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n33_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx889_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain830_n34_α
 xchain830_n33_β:
 jmp main_ω
.Lx889_0:
 .quad .Lx889_0_s
.Lx889_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n34_α:
 lea rdi, [r12 + 2416]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain830_n35_α
 xchain830_n34_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n35_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx892_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain830_n36_α
 xchain830_n35_β:
 jmp main_ω
.Lx892_0:
 .quad .Lx892_0_s
.Lx892_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n36_α:
 lea rdi, [r12 + 2400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain830_n37_α
 xchain830_n36_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n37_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx895_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain830_n38_α
 xchain830_n37_β:
 jmp main_ω
.Lx895_0:
 .quad .Lx895_0_s
.Lx895_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n38_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain830_n39_α
 xchain830_n38_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n39_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx898_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain830_n40_α
 xchain830_n39_β:
 jmp main_ω
.Lx898_0:
 .quad .Lx898_0_s
.Lx898_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n40_α:
 lea rdi, [r12 + 2368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain830_n41_α
 xchain830_n40_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n41_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx901_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain830_n42_α
 xchain830_n41_β:
 jmp main_ω
.Lx901_0:
 .quad .Lx901_0_s
.Lx901_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n42_α:
 lea rdi, [r12 + 2352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain830_n43_α
 xchain830_n42_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n43_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx904_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain830_n44_α
 xchain830_n43_β:
 jmp main_ω
.Lx904_0:
 .quad .Lx904_0_s
.Lx904_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n44_α:
 lea rdi, [r12 + 2336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain830_n45_α
 xchain830_n44_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n45_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx907_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain830_n46_α
 xchain830_n45_β:
 jmp main_ω
.Lx907_0:
 .quad .Lx907_0_s
.Lx907_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n46_α:
 lea rdi, [r12 + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain830_n47_α
 xchain830_n46_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n47_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx910_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain830_n48_α
 xchain830_n47_β:
 jmp main_ω
.Lx910_0:
 .quad .Lx910_0_s
.Lx910_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n48_α:
 lea rdi, [r12 + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain830_n49_α
 xchain830_n48_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n49_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx913_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain830_n50_α
 xchain830_n49_β:
 jmp main_ω
.Lx913_0:
 .quad .Lx913_0_s
.Lx913_0_s:
 .string "."
# IR_VAR_REF
 xchain830_n50_α:
 lea rdi, [r12 + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain830_n51_α
 xchain830_n50_β:
 jmp main_ω
# IR_LIT_STRING
 xchain830_n51_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx916_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain830_n52_α
 xchain830_n51_β:
 jmp main_ω
.Lx916_0:
 .quad .Lx916_0_s
.Lx916_0_s:
 .string "[]"
 xchain830_n52_α:
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
  .Lrkfn918: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn918]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n53_α
 xchain830_n52_β:
 jmp main_ω
 xchain830_n53_α:
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
  .Lrkfn920: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn920]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n54_α
 xchain830_n53_β:
 jmp main_ω
 xchain830_n54_α:
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
  .Lrkfn922: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn922]
 lea rsi, [r12 + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n55_α
 xchain830_n54_β:
 jmp main_ω
 xchain830_n55_α:
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
  .Lrkfn924: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn924]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n56_α
 xchain830_n55_β:
 jmp main_ω
 xchain830_n56_α:
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
  .Lrkfn926: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn926]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n57_α
 xchain830_n56_β:
 jmp main_ω
 xchain830_n57_α:
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
  .Lrkfn928: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn928]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n58_α
 xchain830_n57_β:
 jmp main_ω
 xchain830_n58_α:
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
  .Lrkfn930: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn930]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n59_α
 xchain830_n58_β:
 jmp main_ω
 xchain830_n59_α:
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
  .Lrkfn932: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn932]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n60_α
 xchain830_n59_β:
 jmp main_ω
 xchain830_n60_α:
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
  .Lrkfn934: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn934]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n61_α
 xchain830_n60_β:
 jmp main_ω
 xchain830_n61_α:
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
  .Lrkfn936: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn936]
 lea rsi, [r12 + 1088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n62_α
 xchain830_n61_β:
 jmp main_ω
 xchain830_n62_α:
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
  .Lrkfn938: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn938]
 lea rsi, [r12 + 1184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n63_α
 xchain830_n62_β:
 jmp main_ω
 xchain830_n63_α:
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
  .Lrkfn940: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn940]
 lea rsi, [r12 + 1280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n64_α
 xchain830_n63_β:
 jmp main_ω
 xchain830_n64_α:
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
  .Lrkfn942: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn942]
 lea rsi, [r12 + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n65_α
 xchain830_n64_β:
 jmp main_ω
 xchain830_n65_α:
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
  .Lrkfn944: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn944]
 lea rsi, [r12 + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n66_α
 xchain830_n65_β:
 jmp main_ω
 xchain830_n66_α:
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
  .Lrkfn946: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn946]
 lea rsi, [r12 + 1568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je main_ω
 jmp xchain830_n67_α
 xchain830_n66_β:
 jmp main_ω
 xchain830_n67_α:
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
  .Lrkfn948: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn948]
 lea rsi, [r12 + 1664]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 cmp eax, 99
 je xchain830_n19_α
 jmp xchain830_n68_α
 xchain830_n67_β:
 jmp xchain830_n19_α
 xchain830_n68_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+160]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn950: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn950]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain830_n17_β
 jmp xchain830_n69_α
 xchain830_n68_β:
 jmp xchain830_n17_β
# IR_LIT_STRING
 xchain830_n69_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx951_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain830_n70_α
 xchain830_n69_β:
 jmp xchain830_n19_α
.Lx951_0:
 .quad .Lx951_0_s
.Lx951_0_s:
 .string ""
 xchain830_n70_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn953: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn953]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain830_n17_β
 jmp xchain830_n71_α
 xchain830_n70_β:
 jmp xchain830_n17_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain830_n71_α:
 lea rax, [rip + xchain830_n17_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain830_n71_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain830_n72_α:
 jmp qword ptr [r12 + 32]
 xchain830_n72_β:
 jmp main_ω
main_β:
jmp xchain830_n72_α
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
 mov rdi, qword ptr [r12 + 2272]
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
