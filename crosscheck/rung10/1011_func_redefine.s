                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__myfunc2_α
proc_LBL__myfunc2_α:
proc_LBL__myfunc2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__myfunc2_ω
#=======================================================================================================================
# myfunc2 myfunc = NE(myfunc, 1) myfunc * myfunc(myfunc - 1) :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 352], rax                     # myfunc
                        mov              qword ptr [rsp + 360], rdx                     # myfunc
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 336], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 344], rax                     # lit_integer
                                                                                        jmp   n3_coerce_numeric_α
.Lx17_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx19_1
                        cmp              eax, 6
                                                                                        jne   .Lx19_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx19_0
.Lx19_1:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx19_0:
                        lea              rdi, [rsp + 352]                               # self
                        lea              rsi, [rsp + 336]                               # other
                        lea              rdx, [rsp + 320]                               # out
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 7
                                                                                        je    .Lx21_1
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
.Lx21_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n5_cmp_test_α
.Lx21_0:
                        lea              rdi, [rsp + 336]                               # self
                        lea              rsi, [rsp + 352]                               # other
                        lea              rdx, [rsp + 304]                               # out
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        lea              rdi, [rsp + 320]                               # a
                        lea              rsi, [rsp + 304]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    n14_save_restore_α
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 384], rax                     # myfunc
                        mov              qword ptr [rsp + 392], rdx                     # myfunc
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 464], rax                     # myfunc
                        mov              qword ptr [rsp + 472], rdx                     # myfunc
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 480], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 488], rax                     # lit_integer
                                                                                        jmp   n9_binop_α
.Lx26_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx27_0
                        mov              rax, qword ptr [rsp + 472]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 448], 6
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n10_call_α
.Lx27_0:
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n14_save_restore_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n10_call_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx29_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx29_5
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx29_6]
                        lea              rdx, [rip + .Lx29_7]
                                                                                        jmp   rax
.Lx29_6:
                        mov              rdi, qword ptr [1879052288]                    # myfunc
                        mov              rsi, qword ptr [1879052296]                    # myfunc
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx29_20
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx29_21
.Lx29_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 448]                     # v
                        mov              rdx, qword ptr [rsp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx29_21:
                        mov              rdi, qword ptr [rip + .Lx29_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx29_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx29_3]
                        lea              rdx, [rip + .Lx29_4]
                                                                                        jmp   rax
.Lx29_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_1:
                        call             rt_faildescr@PLT
.Lx29_2:
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n14_save_restore_α
                                                                                        jmp   n11_binop_α
n10_call_β:
                                                                                        jmp   n14_save_restore_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx30_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx30_0
                        mov              rax, qword ptr [rsp + 392]
                        mov              rcx, qword ptr [rsp + 408]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 368], 6
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n12_binop_α
.Lx30_0:
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n14_save_restore_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n12_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              rdi, qword ptr [rsp + 288]                     # a
                        mov              rsi, qword ptr [rsp + 296]                     # a
                        mov              rdx, qword ptr [rsp + 368]                     # b
                        mov              rcx, qword ptr [rsp + 376]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n13_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              qword ptr [1879052296], rdx                    # myfunc
                                                                                        jmp   n14_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n14_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_β:
                                                                                        jmp   proc_LBL__myfunc2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__myfunc2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_myfunc_α
proc_myfunc_α:
proc_myfunc_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n36_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx40_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx40_1
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "myfunc2"
.Lx40_1:
                                                                                        jmp   proc_myfunc_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_β:
                                                                                        jmp   proc_myfunc_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_myfunc_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__myfunc2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__myfunc2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 656
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "myfunc"
.Lstartup_pp1_0:        .string          "myfunc"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_myfunc_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "myfunc"
.Lgvan1:                .string          "n"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
#         DEFINE('myfunc(n)')                            :(myfunc_end)
#         NE(myfunc(3), 6)           :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 168], rax                     # lit_integer
                                                                                        jmp   n42_call_α
.Lx88_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx90_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx90_5
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx90_6]
                        lea              rdx, [rip + .Lx90_7]
                                                                                        jmp   rax
.Lx90_6:
                        mov              rdi, qword ptr [1879052288]                    # myfunc
                        mov              rsi, qword ptr [1879052296]                    # myfunc
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx90_2
.Lx90_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx90_2
.Lx90_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx90_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx90_21
.Lx90_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 160]                     # v
                        mov              rdx, qword ptr [rsp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx90_21:
                        mov              rdi, qword ptr [rip + .Lx90_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx90_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx90_3]
                        lea              rdx, [rip + .Lx90_4]
                                                                                        jmp   rax
.Lx90_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx90_2
.Lx90_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx90_2
.Lx90_1:
                        call             rt_faildescr@PLT
.Lx90_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx90_240
                        add              rsp, 176
                                                                                        jmp   n49_lit_string_α
.Lx90_240:
                                                                                        jmp   n43_lit_integer_α
n42_call_β:
                                                                                        jmp   n49_lit_string_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6                        # lit_integer
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 104], rax                     # lit_integer
                                                                                        jmp   n44_coerce_numeric_α
.Lx91_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 7
                                                                                        je    .Lx93_1
                        cmp              eax, 6
                                                                                        jne   .Lx93_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx93_0
.Lx93_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n45_coerce_numeric_α
.Lx93_0:
                        lea              rdi, [rsp + 112]                               # self
                        lea              rsi, [rsp + 96]                                # other
                        lea              rdx, [rsp + 80]                                # out
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n45_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx95_1
                        cmp              eax, 6
                                                                                        jne   .Lx95_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx95_0
.Lx95_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n46_cmp_test_α
.Lx95_0:
                        lea              rdi, [rsp + 96]                                # self
                        lea              rsi, [rsp + 112]                               # other
                        lea              rdx, [rsp + 64]                                # out
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n46_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n46_cmp_test_α:
                        lea              rdi, [rsp + 80]                                # a
                        lea              rsi, [rsp + 64]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx97_240
                        add              rsp, 176
                                                                                        jmp   n49_lit_string_α
.Lx97_240:
                        add              rsp, 176
                                                                                        jmp   n47_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1011/001: first definition myfunc(3)=6' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 43                        # lit_string
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n48_assign_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "FAIL 1011/001: first definition myfunc(3)=6"
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx99_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(DEFINE('myfunc(myfunc)', 'myfunc2'))                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 0                         # lit_string
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n50_call_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd102:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd102]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx101_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n53_lit_integer_α
.Lx101_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 32
                                                                                        jmp   n51_lit_string_α
n50_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n53_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1011/002: define returns function name' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 43                        # lit_string
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n52_assign_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "FAIL 1011/002: define returns function name"
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx104_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# e002    :(myfunc2_end)
#         NE(myfunc(4), 24)          :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        sub              rsp, 608
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 600], rax                     # lit_integer
                                                                                        jmp   n54_call_α
.Lx105_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx107_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx107_5
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx107_6]
                        lea              rdx, [rip + .Lx107_7]
                                                                                        jmp   rax
.Lx107_6:
                        mov              rdi, qword ptr [1879052288]                    # myfunc
                        mov              rsi, qword ptr [1879052296]                    # myfunc
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx107_2
.Lx107_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx107_2
.Lx107_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx107_20
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx107_21
.Lx107_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 592]                     # v
                        mov              rdx, qword ptr [rsp + 600]                     # v
                        call             rt_arg_stage@PLT
.Lx107_21:
                        mov              rdi, qword ptr [rip + .Lx107_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx107_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx107_3]
                        lea              rdx, [rip + .Lx107_4]
                                                                                        jmp   rax
.Lx107_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx107_2
.Lx107_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx107_2
.Lx107_1:
                        call             rt_faildescr@PLT
.Lx107_2:
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx107_240
                        add              rsp, 608
                                                                                        jmp   n61_lit_string_α
.Lx107_240:
                                                                                        jmp   n55_lit_integer_α
n54_call_β:
                                                                                        jmp   n61_lit_string_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rsp + 528], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 536], rax                     # lit_integer
                                                                                        jmp   n56_coerce_numeric_α
.Lx108_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 7
                                                                                        je    .Lx110_1
                        cmp              eax, 6
                                                                                        jne   .Lx110_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 6
                                                                                        jne   .Lx110_0
.Lx110_1:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n57_coerce_numeric_α
.Lx110_0:
                        lea              rdi, [rsp + 544]                               # self
                        lea              rsi, [rsp + 528]                               # other
                        lea              rdx, [rsp + 512]                               # out
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n57_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 7
                                                                                        je    .Lx112_1
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
.Lx112_1:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n58_cmp_test_α
.Lx112_0:
                        lea              rdi, [rsp + 528]                               # self
                        lea              rsi, [rsp + 544]                               # other
                        lea              rdx, [rsp + 496]                               # out
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n58_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n58_cmp_test_α:
                        lea              rdi, [rsp + 512]                               # a
                        lea              rsi, [rsp + 496]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx114_240
                        add              rsp, 608
                                                                                        jmp   n61_lit_string_α
.Lx114_240:
                        add              rsp, 608
                                                                                        jmp   n59_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1011/003: redefined myfunc(4)=24'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 37                        # lit_string
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n60_assign_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "FAIL 1011/003: redefined myfunc(4)=24"
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx116_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1011_func_redefine (3/3)'
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 29                        # lit_string
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n62_assign_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "PASS 1011_func_redefine (3/3)"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx118_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:
                                                                                        jmp   n64_var_α
n63_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# myfunc  myfunc = n * 2                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 0], rax                       # n
                        mov              qword ptr [rsp + 8], rdx                       # n
                                                                                        jmp   n65_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n66_binop_α
.Lx121_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx122_240
                        add              rsp, 16
                                                                                        jmp   n68_save_restore_α
.Lx122_240:
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n67_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # binop
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              qword ptr [1879052296], rdx                    # myfunc
                                                                                        jmp   n68_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n68_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_α:
                                                                                        jmp   n41_lit_integer_α
n69_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:
                                                                                        jmp   n49_lit_string_α
n70_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_goto_α:
                                                                                        jmp   n53_lit_integer_α
n71_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_goto_α:
                                                                                        jmp   n73_var_α
n72_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# myfunc2 myfunc = NE(myfunc, 1) myfunc * myfunc(myfunc - 1) :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 352], rax                     # myfunc
                        mov              qword ptr [rsp + 360], rdx                     # myfunc
                                                                                        jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rsp + 336], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 344], rax                     # lit_integer
                                                                                        jmp   n75_coerce_numeric_α
.Lx131_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx133_1
                        cmp              eax, 6
                                                                                        jne   .Lx133_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx133_0
.Lx133_1:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n76_coerce_numeric_α
.Lx133_0:
                        lea              rdi, [rsp + 352]                               # self
                        lea              rsi, [rsp + 336]                               # other
                        lea              rdx, [rsp + 320]                               # out
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n76_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 7
                                                                                        je    .Lx135_1
                        cmp              eax, 6
                                                                                        jne   .Lx135_0
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx135_0
.Lx135_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n77_cmp_test_α
.Lx135_0:
                        lea              rdi, [rsp + 336]                               # self
                        lea              rsi, [rsp + 352]                               # other
                        lea              rdx, [rsp + 304]                               # out
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n77_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n77_cmp_test_α:
                        lea              rdi, [rsp + 320]                               # a
                        lea              rsi, [rsp + 304]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx137_240
                        add              rsp, 496
                                                                                        jmp   n68_save_restore_α
.Lx137_240:
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                                                                                        jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 384], rax                     # myfunc
                        mov              qword ptr [rsp + 392], rdx                     # myfunc
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              rdx, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 464], rax                     # myfunc
                        mov              qword ptr [rsp + 472], rdx                     # myfunc
                                                                                        jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rsp + 480], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 488], rax                     # lit_integer
                                                                                        jmp   n81_binop_α
.Lx140_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx141_0
                        mov              rax, qword ptr [rsp + 472]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 448], 6
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n82_call_α
.Lx141_0:
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx141_240
                        add              rsp, 496
                                                                                        jmp   n68_save_restore_α
.Lx141_240:
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n82_call_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # myfunc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]                    # myfunc
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx143_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx143_5
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx143_6]
                        lea              rdx, [rip + .Lx143_7]
                                                                                        jmp   rax
.Lx143_6:
                        mov              rdi, qword ptr [1879052288]                    # myfunc
                        mov              rsi, qword ptr [1879052296]                    # myfunc
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx143_2
.Lx143_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # myfunc
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx143_2
.Lx143_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_20
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx143_21
.Lx143_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 448]                     # v
                        mov              rdx, qword ptr [rsp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx143_21:
                        mov              rdi, qword ptr [rip + .Lx143_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx143_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx143_3]
                        lea              rdx, [rip + .Lx143_4]
                                                                                        jmp   rax
.Lx143_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx143_2
.Lx143_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx143_2
.Lx143_1:
                        call             rt_faildescr@PLT
.Lx143_2:
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx143_240
                        add              rsp, 496
                                                                                        jmp   n68_save_restore_α
.Lx143_240:
                                                                                        jmp   n83_binop_α
n82_call_β:
                                                                                        jmp   n68_save_restore_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "myfunc"
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
                        mov              rax, qword ptr [rsp + 392]
                        mov              rcx, qword ptr [rsp + 408]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 368], 6
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n84_binop_α
.Lx144_0:
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx144_240
                        add              rsp, 496
                                                                                        jmp   n68_save_restore_α
.Lx144_240:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n84_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:
                        mov              rdi, qword ptr [rsp + 288]                     # a
                        mov              rsi, qword ptr [rsp + 296]                     # a
                        mov              rdx, qword ptr [rsp + 368]                     # b
                        mov              rcx, qword ptr [rsp + 376]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n85_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [1879052288], rax                    # myfunc
                        mov              qword ptr [1879052296], rdx                    # myfunc
                        add              rsp, 496
                                                                                        jmp   n68_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n86_goto_α:
                                                                                        jmp   n53_lit_integer_α
n86_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_goto_α:
                                                                                        jmp   n61_lit_string_α
n87_goto_β:
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
                        .section         .note.GNU-stack,"",@progbits
