                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__inner_α:
proc_LBL__inner_α_body:
#=======================================================================================================================
# inner   stk    = c stk
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # c
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # stk
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_binop_α
n2_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_assign_α
n3_binop_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_β
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # stk
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n6_statement_begin_α
#=======================================================================================================================
#         inner  = .stk                                         :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_lit_string_α
n6_statement_begin_β:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_call_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "stk"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd27:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd27]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx26_240
                        add              rsp, 16
                                                                                        jmp   n11_lit_string_α
.Lx26_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_assign_α
n8_call_β:
                        add              rsp, 16
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # inner
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_call_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd33:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd33]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx32_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n14_save_restore_α
.Lx32_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_save_restore_α
n12_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n14_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n13_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n14_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__inner_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__inner_β:
                                                                                        jmp   proc_LBL__inner_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__inner_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__inner_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__outer_α:
proc_LBL__outer_α_body:
#=======================================================================================================================
# outer   outer  = EVAL('LEN(1) . *inner(' cs ')')              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:
                                                                                        jmp   n39_lit_string_α
n38_statement_begin_β:
                                                                                        jmp   n47_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n40_var_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "LEN(1) . *inner("
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # cs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_binop_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n44_call_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd56:             .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd56]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx55_240
                        add              rsp, 16
                                                                                        jmp   n47_save_restore_α
.Lx55_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_assign_α
n44_call_β:
                        add              rsp, 16
                                                                                        jmp   n47_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # outer
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:
                                                                                        jmp   n47_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n47_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__outer_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__outer_β:
                                                                                        jmp   proc_LBL__outer_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__outer_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__outer_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_inner_α
proc_inner_α:
proc_inner_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n62_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n63_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx67_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx67_1
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "inner"
.Lx67_1:
                                                                                        jmp   proc_inner_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_inner_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_inner_β:
                                                                                        jmp   proc_inner_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_inner_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_inner_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_outer_α
proc_outer_α:
proc_outer_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n68_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n69_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx73_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx73_1
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "outer"
.Lx73_1:
                                                                                        jmp   proc_outer_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_outer_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_outer_β:
                                                                                        jmp   proc_outer_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_outer_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_outer_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__inner"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__inner_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__outer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__outer_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "inner"
.Lstartup_pp2_0:        .string          "c"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_inner_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "outer"
.Lstartup_pp3_0:        .string          "cs"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_outer_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "inner"
.Lgvan1:                .string          "c"
.Lgvan2:                .string          "outer"
.Lgvan3:                .string          "cs"
.Lgvan4:                .string          "stk"
.Lgvan5:                .string          "s"
.Lgvan6:                .string          "pat"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         DEFINE('inner(c)')
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:
                                                                                        jmp   n75_statement_end_α
n74_statement_begin_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                                                                                        jmp   n76_statement_begin_α
#=======================================================================================================================
#         DEFINE('outer(cs)')                                   :(both_end)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_statement_end_α
n76_statement_begin_β:
                                                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:
                                                                                        jmp   n78_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:
                                                                                        jmp   n79_statement_end_α
n78_statement_begin_β:
                                                                                        jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:
                                                                                        jmp   n80_statement_begin_α
#=======================================================================================================================
#         stk    = ''
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:
                                                                                        jmp   n81_lit_string_α
n80_statement_begin_β:
                                                                                        jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_assign_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # stk
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n84_statement_begin_α
#=======================================================================================================================
#         s      = 'AB'
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:
                                                                                        jmp   n85_lit_string_α
n84_statement_begin_β:
                                                                                        jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_assign_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # s
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n88_statement_begin_α
#=======================================================================================================================
#         pat    = outer('c1') outer('c2')
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:
                                                                                        jmp   n89_lit_string_α
n88_statement_begin_β:
                                                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_call_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "c1"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # cs
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # outer
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx175_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx175_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # cs
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx175_6]
                        lea              rdx, [rip + .Lx175_7]
                                                                                        jmp   rax
.Lx175_6:
                        mov              rdi, qword ptr [1879052320]                    # outer
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # cs
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx175_2
.Lx175_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # outer
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # cs
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx175_2
.Lx175_5:
                        add              rsp, 32
.Lx175_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx175_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n96_statement_begin_α
.Lx175_240:
                                                                                        jmp   n91_lit_string_α
n90_call_β:
                                                                                        jmp   n96_statement_begin_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "outer"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n92_call_α
n91_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n96_statement_begin_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "c2"
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # lit_string
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # cs
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # outer
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx178_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx178_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # cs
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx178_6]
                        lea              rdx, [rip + .Lx178_7]
                                                                                        jmp   rax
.Lx178_6:
                        mov              rdi, qword ptr [1879052320]                    # outer
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # cs
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx178_2
.Lx178_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # outer
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # cs
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx178_2
.Lx178_5:
                        add              rsp, 32
.Lx178_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx178_240
                        add              rsp, 16
                                                                                        jmp   n91_lit_string_β
.Lx178_240:
                                                                                        jmp   n93_binop_α
n92_call_β:
                                                                                        jmp   n91_lit_string_β
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "outer"
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # call
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_assign_α
n93_binop_β:
                        add              rsp, 32
                                                                                        jmp   n91_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # pat
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n96_statement_begin_α
#=======================================================================================================================
#         s POS(0) pat RPOS(0)                                  :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_var_α
n96_statement_begin_β:
                                                                                        jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # s
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # pat
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n99_assign_α
n98_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx187_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n100_match_begin_α
n99_assign_β:
                                                                                        jmp   n98_var_β
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n100_match_begin_α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              rdi, qword ptr [rsp + 544]                     # var
                        mov              rsi, qword ptr [rsp + 552]
                        mov              qword ptr [rbp + 592], r13                     # outer_Σ
                        mov              qword ptr [rbp + 600], r14                     # outer_δ
                        mov              qword ptr [rbp + 608], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 616], rax                     # cap_gen
                        mov              qword ptr [rbp + 584], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 560], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 544], 0                       # start_δ
.Lx189_0:
                        mov              r14d, dword ptr [rbp + 544]
                                                                                        jmp   n101_lit_integer_α
n100_match_begin_β:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, r15d
                                                                                        jg    .Lx189_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx189_1
                                                                                        jmp   .Lx189_0
.Lx189_1:
n100_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 560]
                        mov              r13, qword ptr [rbp + 592]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 600]                     # outer_δ
                        mov              r15, qword ptr [rbp + 608]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 616]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 584]                     # old_rbp
                        add              rsp, 528
                                                                                        jmp   n99_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_match_pos_α
.Lx190_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n102_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n100_match_begin_β
                                                                                        jmp   n103_match_defer_α
n102_match_pos_β:
                                                                                        jmp   n100_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n103_match_defer_α:
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx192_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx192_4]
                        lea              rdx, [rip + .Lx192_5]
                                                                                        jmp   rax
.Lx192_4:
                                                                                        jmp   n104_lit_integer_α
.Lx192_5:
                                                                                        jmp   n100_match_begin_β
.Lx192_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx192_2:
                        test             rax, rax
                                                                                        je    .Lx192_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx192_7]
                        lea              rdx, [rip + .Lx192_8]
                                                                                        jmp   rax
.Lx192_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx192_2
.Lx192_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx192_2
.Lx192_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n100_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx192_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n104_lit_integer_α
.Lx192_6:
                        add              rsp, 16
                                                                                        jmp   n100_match_begin_β
n103_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_match_rpos_α
.Lx193_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n105_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n103_match_defer_β
                                                                                        jmp   n106_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n106_match_end_α:
                        mov              r10, r12
.Lx196_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx196_9
                        mov              rsp, qword ptr [rbp + 560]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx196_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx196_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx196_1:
                        test             rax, rax
                                                                                        je    .Lx196_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx196_3]
                        lea              rdx, [rip + .Lx196_4]
                                                                                        jmp   rax
.Lx196_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx196_1
.Lx196_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx196_1
.Lx196_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 592]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 600]                     # outer_δ
                        mov              r15, qword ptr [rbp + 608]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 616]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 584]                     # old_rbp
                                                                                        jmp   n107_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:
                        add              rsp, 592
                                                                                        jmp   n108_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'stk=' stk                                   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α:
                                                                                        jmp   n109_lit_string_α
n108_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n110_var_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "stk="
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # stk
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_binop_α
n110_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n112_assign_α
n111_binop_β:
                        add              rsp, 16
                                                                                        jmp   n110_var_β
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx204_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n113_statement_end_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:
                                                                                        jmp   n115_lit_string_α
n114_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n116_assign_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx210_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n117_statement_end_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n118_goto_α:
                                                                                        jmp   n119_statement_begin_α
n118_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# inner   stk    = c stk
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α:
                                                                                        jmp   n120_var_α
n119_statement_begin_β:
                                                                                        jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # c
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # stk
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n122_binop_α
n121_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n123_assign_α
n122_binop_β:
                        add              rsp, 16
                                                                                        jmp   n121_var_β
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # stk
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n125_statement_begin_α
#=======================================================================================================================
#         inner  = .stk                                         :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α:
                                                                                        jmp   n126_lit_string_α
n125_statement_begin_β:
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n127_call_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "stk"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd226:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd226]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx225_240
                        add              rsp, 16
                                                                                        jmp   n130_lit_string_α
.Lx225_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n128_assign_α
n127_call_β:
                        add              rsp, 16
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # inner
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n129_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n131_call_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd232:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd232]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx231_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n133_save_restore_α
.Lx231_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n132_save_restore_α
n131_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n133_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n132_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n133_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n134_goto_α:
                                                                                        jmp   n135_statement_begin_α
n134_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# outer   outer  = EVAL('LEN(1) . *inner(' cs ')')              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α:
                                                                                        jmp   n136_lit_string_α
n135_statement_begin_β:
                                                                                        jmp   n132_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n137_var_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "LEN(1) . *inner("
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # cs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_binop_α
n137_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n132_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n138_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n139_lit_string_α
n138_binop_β:
                        add              rsp, 16
                                                                                        jmp   n137_var_β
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n140_binop_α
n139_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n138_binop_β
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n141_call_α
n140_binop_β:
                        add              rsp, 16
                                                                                        jmp   n139_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd246:            .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd246]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx245_240
                        add              rsp, 16
                                                                                        jmp   n140_binop_β
.Lx245_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_assign_α
n141_call_β:
                        add              rsp, 16
                                                                                        jmp   n140_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # outer
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n143_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n132_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n144_goto_α:
                                                                                        jmp   n78_statement_begin_α
n144_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_goto_α:
                                                                                        jmp   n108_statement_begin_α
n145_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_goto_α:
                                                                                        jmp   n114_statement_begin_α
n146_goto_β:
                                                                                        jmp   main_ω
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
                        .section         .rodata
.S0:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
