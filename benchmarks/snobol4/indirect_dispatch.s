                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ADD1_α
proc_LBL__ADD1_α:
                        .global          proc_LBL__ADD1_α
                        .global          proc_LBL__ADD1_β
                        .global          proc_LBL__ADD1_γ
                        .global          proc_LBL__ADD1_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__ADD1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__ADD1_ω
#=======================================================================================================================
# ADD1    ADD1 = V + 1                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_binop_α
.Lx8_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx11_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx11_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx11_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
.Lx11_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx11_2
                        add              rsp, 16
                                                                                        jmp   n5_assign_α
.Lx11_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx11_240
                        add              rsp, 32
                                                                                        jmp   n3_op14_α
.Lx11_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_β:
                                                                                        jmp   proc_LBL__ADD1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 488]
                        add              rsp, 512
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD1_ω:
                        mov              rax, [rsp + 496]
                        add              rsp, 512
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD1_α
proc_ADD1_α:
                        .global          proc_ADD1_α
                        .global          proc_ADD1_β
                        .global          proc_ADD1_γ
                        .global          proc_ADD1_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              rdi, rsp
                        mov              ecx, 480
                        xor              eax, eax
                        rep stosb
proc_ADD1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n13_op14_α:
                        mov              rdi, qword ptr [rsp + 488]
                        mov              rsi, qword ptr [rsp + 496]
                        lea              rdx, [rsp + 512]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n14_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n14_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx18_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx18_1
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "ADD1"
.Lx18_1:
                                                                                        jmp   proc_ADD1_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_β:
                                                                                        jmp   proc_ADD1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 488]
                        add              rsp, 512
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD1_ω:
                        mov              rax, [rsp + 496]
                        add              rsp, 512
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ADD1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__ADD1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "ADD1"
.Lstartup_pp1_0:        .string          "V"
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
                        lea              rsi, [rip + proc_ADD1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ADD1"
.Lgvan1:                .string          "V"
.Lgvan2:                .string          "FN"
.Lgvan3:                .string          "X"
.Lgvan4:                .string          "N"
.Lgvan5:                .string          "R"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        mov              r12, qword ptr [1879048192]
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 488
                        mov              rdi, rsp
                        mov              ecx, 488
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rsp + 80], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n24_lit_integer_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n20_goto_α:
                                                                                        jmp   n25_var_α
n20_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_goto_α:
                                                                                        jmp   n26_lit_string_α
n21_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_goto_α:
                                                                                        jmp   n27_var_α
n22_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_goto_α:
                                                                                        jmp   n28_var_α
n23_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n29_call_α
.Lx58_0:
                        .quad            1
#=======================================================================================================================
# ADD1    ADD1 = V + 1                    :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_lit_integer_α
#=======================================================================================================================
#     DEFINE('ADD1(V)')                   :(ADD1END)
#     FN = 'ADD1'
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_assign_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "ADD1"
#=======================================================================================================================
# LOOP    N = LT(N, 500) N + 1           :F(DONE)
#     :(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n33_lit_integer_α
#=======================================================================================================================
# DONE    OUTPUT = R
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn64:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n26_lit_string_α
n29_call_β:
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_binop_α
.Lx65_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n37_op75_α
.Lx69_0:
                        .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx70_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx71_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx71_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx71_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx71_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx71_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx71_2
                        add              rsp, 16
                                                                                        jmp   n38_assign_α
.Lx71_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx71_240
                        add              rsp, 32
                                                                                        jmp   n31_op14_α
.Lx71_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n38_assign_α
#=======================================================================================================================
#     X = 5
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx72_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n37_op75_α:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx74_1
                        cmp              eax, 6
                                                                                        jne   .Lx74_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx74_0
.Lx74_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n40_op75_α
.Lx74_0:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n40_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n31_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op75_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx78_1
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx78_0
.Lx78_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n42_op77_α
.Lx78_0:
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n42_op77_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx79_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_op77_α:
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 256]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n28_var_α
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rsp + 352], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n46_binop_α
.Lx84_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 100
                                                                                        je    .Lx85_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx85_2
.Lx85_1:
                        mov              rax, qword ptr [rsp + 344]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 320], 6
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n47_binop_α
.Lx85_0:
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              r8d, 0
                        lea              r9, [rsp + 320]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n47_binop_α
.Lx85_2:
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n28_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                                                                                        jmp   n47_binop_α
n46_binop_β:
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n48_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n49_var_α
#=======================================================================================================================
#     R = APPLY(FN, X)
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n51_call_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn91:               .string          "APPLY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n27_var_α
                                                                                        jmp   n52_assign_α
n51_call_β:
                                                                                        jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 488
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 488
                        ret
                        .section         .note.GNU-stack,"",@progbits
