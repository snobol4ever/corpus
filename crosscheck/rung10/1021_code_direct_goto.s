                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__FIN_α
proc_LBL__FIN_α:
proc_LBL__FIN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_lit_string_α
n0_goto_β:
                                                                                        jmp   proc_LBL__FIN_ω
#=======================================================================================================================
# FIN	OUTPUT = 'fin'
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rsp + 208], 1
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx4_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n2_assign_α
.Lx4_0:
                        .quad            .Lx4_0_s
.Lx4_0_s:
                        .string          "fin"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              rdi, qword ptr [rip + .Lx5_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   proc_LBL__FIN_γ
.Lx5_0:
                        .quad            .Lx5_0_s
.Lx5_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__FIN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__FIN_β:
                                                                                        jmp   proc_LBL__FIN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__FIN_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__FIN_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__FIN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__FIN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "S"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "C"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
# 	S = 'X OUTPUT = "in-block " N; N = LT(N,2) N + 1 :S(X)F(FIN)'
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 55
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "X OUTPUT = \"in-block \" N; N = LT(N,2) N + 1 :S(X)F(FIN)"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 16
                                                                                        jmp   n8_lit_integer_α
#=======================================================================================================================
# 	N = 1
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_assign_α
.Lx20_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 16
                                                                                        jmp   n10_var_α
#=======================================================================================================================
# 	C = CODE(S)	:<C>
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_call_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd9:          .string          "CODE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd9]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx23_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n14_goto_deferred_α
.Lx23_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_assign_α
n11_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n14_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n13_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n13_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx26_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx26_1
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "C"
.Lx26_1:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n14_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx28_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx28_1
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "C"
.Lx28_1:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n15_goto_α:
                                                                                        jmp   n16_lit_string_α
n15_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# FIN	OUTPUT = 'fin'
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "fin"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx31_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
